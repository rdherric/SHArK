//-----------------------------------------------------------------------------
// Main.c
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// Main.c contains the functionality required to run
// the RDH2 Potentiostat.  This is only very basic 
// functionality, without the timer and other operations.
//
// Target:         C8051F32x
// Tool chain:     Keil compiler
// Command Line:   None
//
// Release 1.0 / Not Released
//    -Initial Revision

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
#include <compiler_defs.h>
#include <C8051F320_defs.h>
#include "Main.h"


//-----------------------------------------------------------------------------
// Global Variables for the Main function
//-----------------------------------------------------------------------------
// Boolean to determine DAC is being written to in ISR
U8 dacWrite = 0;

// Boolean to determine ADC is being written to in ISR
U8 adcWrite = 0;

// Counter for bytes output through SPI
U8 bytesWritten = 0;

// High ADC measurement byte
U8 adcHigh = 0;

// Low ADC measurement byte
U8 adcLow = 0;

// DAC reply byte to be read, just thrown away
U8 dacByte = 0;

// Delay variable used in a few places
U32 delay = 0;


//-----------------------------------------------------------------------------
// MAIN Routine
//-----------------------------------------------------------------------------
void main (void)
{
	// Disable watchdog timer
	PCA0MD &= ~0x40;

	// Initialize system clock to 24 MHz
	// and USB clock to 48 MHz
	InitSYSCLK();
									
	// Initialize crossbar and GPIO
	InitPORT();					

	// Enable global interrupts
	EA = 1;							

	//Setup the SPI peripheral and the DAC / ADC chips
	InitSPI();
	InitDAC();
	InitADC();

	// Enable output, close relay K601
	OUTPUTEN = 1;

	// Set DAC output voltage (testing)
	//   -0.1V = 0xFEB8
	//	 -0.2V = 0xFD71
	WriteDataToDAC(0x00, 0x00, 0x00);
	WriteDataToDAC(0x00, 0xFE, 0xB8);
	//WriteDataToDAC(0x00, 0xFD, 0x71);

	// Read from ADC to the global variables
	//WriteDataToADC(0xA0, 0x00);
	//WriteDataToADC(0xA0, 0x00);
	WriteDataToADC(0xFF, 0xFF);
	WriteDataToADC(0xFF, 0xFF);

	// Delay for 12 ms (or many ms, anyhow) for the ADC to turn on
	delay = 0;
	while (delay < 100000)
		{ delay++; }

	// Read from ADC to the global variables
	//WriteDataToADC(0xA0, 0x00);
	//WriteDataToADC(0xA0, 0x00);
	WriteDataToADC(0xFF, 0xFF);
	WriteDataToADC(0xFF, 0xFF);


	while (1) { NOP(); }
}


//-----------------------------------------------------------------------------
// SPI_ISR
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// The Interrupt Service Routine (ISR) is used when the SPI has
// transmitted a byte to a slave device.  The interrupt is called
// when something associated with the SPI has occurred.
//
//-----------------------------------------------------------------------------
INTERRUPT(SPI_ISR, INTERRUPT_SPI0)
{
	// Interrupt flag, 4 possibilities (p. 199)
	//	0x80 = TX complete, receive byte ready to readk
	//	0x40 = write collision, when SPI0DAT is written prior to last TX
	//	0x20 = mode fault, NSS is pulled low during multi-master mode
	//	0x10 = RX overrun, received a byte before last one was read (slave mode)

	// Determine what caused the interrupt by checking
	// the SPI0CN flags:
	// TX complete, byte ready to read
	if ((SPI0CN & 0x80) == 0x80)		
	{
		// Clear the interrupt flag
		SPIF = 0;

		// If the ADC is being addressed, save the 
		// data in SPI0DAT to the global variables
		if (adcWrite > 0)
		{
			if (bytesWritten == 0)
			{
				adcHigh = SPI0DAT;
			}
			else if (bytesWritten == 1)
			{
				adcLow = SPI0DAT;
			}

			// Increment the global variable so that the
			// next byte can be transmitted
			bytesWritten++;
		}

		// If the DAC is being addressed, just increment
		// the global variable so that the next byte can
		// be transmitted
		else if (dacWrite > 0)
		{
			bytesWritten++;
			dacByte = SPI0DAT;
		}

		// Otherwise, an error occurred, so set the
		// ERRORPIN value to high
		else
		{
			ERRORPIN = 1;
		}
	}

	// Clear other flags if they occurred:
	// Write collision
	if ((SPI0CN & 0x40) == 0x40)
	{
		WCOL = 0;
	}

	// Mode fault
	if ((SPI0CN & 0x20) == 0x20)
	{
		MODF = 0;
	}

	// Receive overrun
	if ((SPI0CN & 0x10) == 0x10)
	{
		RXOVRN = 0;
	}
}


//-----------------------------------------------------------------------------
// InitDAC
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// Initialize DAC.  Assumes SPI_Init was just called and CKPOL and CKPHA are set
// correctly.
//
//-----------------------------------------------------------------------------
void InitDAC(void)
{
	////
	//// SELECT OUTPUT RANGE
	////
	// 3 bytes to send
	//	23 = R/W = 0 for write
	//	22 = Not used = 0 must be zero
	//	21-19 = Reg2-Reg0 = 001
	//	18-16 = A2-A0 = DAC address, A = 000, B = 001, C = 010, D = 011
	//	15-03 = Don't care
	//	02-00 = 100 for +/- 10 V
	// DAC A: send 0000 1000 0000 0000 0000 0100
	WriteDataToDAC(0x08, 0x00, 0x04);

	////
	//// CONTROL REGISTER
	////
	// 3 bytes to send
	//	23 = R/W = 0 for write
	//	22 = Not used = 0 must be zero
	//	21-19 = Reg2-Reg0 = 011
	//	18-16 = A2-A0 = command, = 001 for various enables/disables
	//	15-04 = Don't care
	//	03 = thermal shutdown enable = 1 for enable
	//	02 = current clamp enable = 1 for enable
	//	01 = clear select = 1 for full range
	//	00 = serial data out disable = 0 for enable
	// DAC A: send 0001 1001 0000 0000 0000 1110
	WriteDataToDAC(0x19, 0x00, 0x0E);

	////
	//// POWER CONTROL REGISTER
	////
	// 3 bytes to send
	//	23 = R/W = 0 for write
	//	22 = Not used = 0 must be zero
	//	21-19 = Reg2-Reg0 = 010
	//	18-16 = A2-A0 = unused?, = 000 (Table 26, p. 26)
	//	15-11 = Don't care
	//	10-07 = Overcurrent alert (read only) for DACs A-D, respectively
	//	06 = reserved bit, 0
	//	05 = thermal shutdown alert (read only)
	//	04 = reserved bit, 0
	//	03-00 = power up for DACs D-A, respectively. 1 for normal operating
	//			mode. 0 for power-down mode.  MCU sets to 0 if clamp disabled
	//			and overcurrent detected.
	// DAC A: send 0001 0000 0000 0000 0000 1111
	WriteDataToDAC(0x10, 0x00, 0x0F);
}


//-----------------------------------------------------------------------------
// InitADC
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// Initialize ADC.  Must reset the SPI timing, clock polarization, and clock
// phase.
//
//-----------------------------------------------------------------------------
void InitADC(void)
{
	////
	//// Write configuration to ADC
	////
	// 2 bytes to send
	//	15 = EN1 = 1 to write data
	//	14 = EN2 = 0 to write data
	//	13 = SPD = 1 for 1 kHz conversion rate (0 would be for 250 Hz)
	//	12 = SLP = 0 for NAP, SLEEP disabled (12 ms to wake from SLEEP)
	//	11-00 = Don't care
	// ADC: send 1010 0000 0000 0000
	WriteDataToADC(0xA0, 0x00);

	// Delay for 12 ms (or many ms, anyhow) for the ADC to turn on
	delay = 0;
	while (delay < 100000)
		{ delay++; }
}


//-----------------------------------------------------------------------------
// WriteDataToDAC
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   char byte1
//				 char byte2
//				 char byte3
//
// Sets up the DAC for communication and sends three
// bytes to it.
//
//-----------------------------------------------------------------------------
void WriteDataToDAC(U8 byte1, U8 byte2, U8 byte3)
{
	// Configure the SPI for DAC communication
	SetSPI0CFG(0x50);
	 
	// Select the DAC for SPI communication
	NDACCS = 0;

	//Set the flags for DAC communication
	dacWrite = 1;

	// Send the bytes to the SPI
	ResetByteCounter();
	WriteByteToSPI(byte1, 1);
	WriteByteToSPI(byte2, 2);
	WriteByteToSPI(byte3, 3);

	//Reset the flags for DAC communication
	dacWrite = 0;

	// Deselect the DAC for SPI communication
	NDACCS = 1;
}


//-----------------------------------------------------------------------------
// WriteDataToADC
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   U8 byte1
//				 U8 byte2
//
// Sets up the ADC for communication and sends two
// bytes to it.
//
//-----------------------------------------------------------------------------
void WriteDataToADC(U8 byte1, U8 byte2)
{
	// Configure the SPI for ADC communication
	SetSPI0CFG(0x40);

	// Select the ADC for SPI communication
	NADCCS = 0;

	//Set the flag for ADC communication
	adcWrite = 1;

	//Send the bytes to the ADC
	ResetByteCounter();
	WriteByteToSPI(byte1, 1);
	WriteByteToSPI(byte2, 2);

	//Reset the ADC communication flags
	adcWrite = 0;

	// Deselect the ADC for SPI communication
	NADCCS = 1;
}


//-----------------------------------------------------------------------------
// ResetByteCounter
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// Centralizes the reset of the bytesWritten counter.
// 
//-----------------------------------------------------------------------------
void ResetByteCounter(void)
{
	// Reset the BytesWritten global variable
	bytesWritten = 0;
}


//-----------------------------------------------------------------------------
// WriteByteToSPI
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   byte input
//
// Writes a byte to the SPI0DAT register and waits for
// the interrupt to return.
// 
//-----------------------------------------------------------------------------
void WriteByteToSPI(U8 input, U8 byteCount)
{
	//Write the byte and wait for the interrupt
	SPI0DAT = input;
	while (bytesWritten != byteCount) { NOP(); }
}


//-----------------------------------------------------------------------------
// SetSPI0CFG
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   byte config
//
// Sets up the CFG part of the SPI, including disabling
// and re-enabling the SPI.
// 
//-----------------------------------------------------------------------------
void SetSPI0CFG(U8 config)
{
	// Turn off the SPI to configure it
	SPI0CN = 0x00;

	// Set the clock polarity and phase for the DAC
	//  7 SPIBSY	R
	//  6 MSTEN		R/W
	//  5 CKPHA		R/W
	//  4 CKPOL		R/W
	//  3 SLVSEL	R
	//  2 NSSIN		R
	//  1 SRMT		R
	//  0 RXBMT		R
	SPI0CFG = config;

	// Turn the SPI back on now that it is configured
	//  7 SPIF		R/W
	//  6 WCOL		R/W
	//  5 MODF		R/W
	//  4 RXOVRN	R/W
	//  3 NSSMD1	R/W
	//  2 NSSMD0	R/W
	//  1 TXBMT		R
	//  0 SPIEN		R/W
	SPI0CN = 0x01;					
}


//-----------------------------------------------------------------------------
// InitSYSCLK
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// This routine initializes the system clock to 24 MHz and the USB clock to
// 48 MHz (USB 2.0 requirement).  The 4x clock multiplier is employed, so
// the USB clock is 12 MHz * 4 = 48 MHz.  The system clock is set to the 4x
// oscillator divided by 2, 12 MHz * 4 / 2 = 24 MHz.  Also enables missing
// clock detector reset (required for this setup).
//
// This setup was verified by blinking an LED using the 16-bit TIMER2 and a
// loop that ran 10 times.  TIMER2 was run from the system clock / 12.
// Blink Period =  10 * 2^16 / (24 MHz / (2*12)) = 0.655 s
// (Factor of 2 for two cycles per blink period.)
//
//-----------------------------------------------------------------------------
void InitSYSCLK(void)
{
	// Configure internal oscillator
	OSCICN = 0x83;

	// Set up clock multiplier to allow for a 48 MHz USB clock:
	// Reset clock multiplier
	CLKMUL = 0x00;

	// Enable multiplier
	CLKMUL |= 0x80;

	// Delay for >5us (12MHz * 20ps = 240 clock cycles)
	delay = 0;
	while (delay < 300) 
		{ delay++; }

	// Initialize multiplier
	CLKMUL |= 0xC0;

	// Poll for multiplier ready
	while ((CLKMUL & MULRDY) != MULRDY) { NOP(); }

	// USB clock = 4*(Int Osc)
	// Sys clock = 4*(Int Osc)/2
	CLKSEL = 0x02;
						
	// Enable missing clock detector, required for USB
	RSTSRC = 0x04;
}


//-----------------------------------------------------------------------------
// InitSPI
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// Initialize SPI.  The initialization sets parameters to talk to the DAC
// (AD5754), so some things are changed later to talk to the ADC and RAM.
//
//-----------------------------------------------------------------------------
void InitSPI(void)
{
	// Configure the SPI 
	SetSPI0CFG(0x50);

	// SPI clock rate register: SPI0CKR
	//  7 SCR7		R/W
	//  ...
	//  0 SCR0		R/W
	// The SPI clock is a divided version of SYSCLK = 24 MHz:
	//                SYSCLK
	//  f_SCK = ------------------
	//           2 x (SPI0CKR + 1)
	// So f_SCK = 12 MHz (for the DAC and RAM) is SPI0CKR = 0x00
	// and f_SCK = 2 MHz (for the ADC) is SPI0CKR = 0x05
	SPI0CKR = 0x77;				// 0x05 = 0000 0101
//	SPI0CKR = 0x05;				// 0x05 = 0000 0101

	// Enable SPI interrupts, SFR IE, bit 6
	ESPI0 = 1;
}


//-----------------------------------------------------------------------------
// InitPORT
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// Configure the Crossbar and GPIO ports.
//
// P0.0 - SCK (SPI)
// P0.1 - MISO (SPI)
// P0.2 - MOSI (SPI)
// P0.3 - Motor 2 Direction (Stepper Motor Driver)
// P0.4 - Motor 2 Step (Stepper Motor Driver)
// P0.5 - Not Driver Enable (Stepper Motor Driver)
// P0.6 - Motor 1 Direction (Stepper Motor Driver)
// P0.7 - Motor 1 Step (Stepper Motor Driver)
// P1.0 - In TTL
// P1.1 - Out TTL
// P1.2 - Laser Power On/Off
// P1.3 - N/C
// P1.4 - Not DAC CS (SPI)
// P1.5 - N/C
// P1.6 - N/C
// P1.7 - Calibration (logical)
// P2.0 - Positive Current (logical)
// P2.1 - Not ADC CS (SPI)
// P2.2 - N/C (LED, push-pull, temporary for testing purposes)
// P2.3 - Output Enable
// P2.4 - N/C
// P2.5 - N/C
// P2.6 - Not RAM CS (SPI)
// P2.7 - Not RAM Hold
// P3.0 - N/C
//
//-----------------------------------------------------------------------------
void InitPORT(void)
{
	// Set all port pins as NOT analog inputs.
	P0MDIN = 0xFF;
	P1MDIN = 0xFF;
	P2MDIN = 0xFF;
	P3MDIN = 0xFF;

	// Select push/pull for all port pins
	P0MDOUT = 0xFD;			// 1111 1101
	P1MDOUT = 0xFF;
	P2MDOUT = 0xFF;
	P3MDOUT = 0xFF;

	// Select MISO for Digital In
	P0 = 0x02;				// 0000 0010

	// Select pins to be skipped by port crossbar
	P0SKIP = 0x00;
	P1SKIP = 0x00;
	P2SKIP = 0x00;

	// Assign port pins to peripherals using the port crossbar (p. 131)
	// Only SPI selected, automatically assigned:
	// SCK  --> P0.0
	// MISO --> P0.1
	// MOSI --> P0.2
	XBR0 = 0x02;

	// Enable crossbar and weak pull-ups
	XBR1 = 0x40;

	// Initialize the potentiostat state
	// 1. the SPI Not Chip Select ports to high (P1.4, P2.1, P2.6)
	// 2. the stepper motor Not Enable to high (P0.5)
	// 3. the stepper motors "step" ports to low (P0.4, P0.7)
	// 4. the laser power low (P1.2)
	// 5. the Calibration signal to low (P1.7)
	// 6. the current direction signal Positive to high (P2.0)
	// 7. the Output Enable to low (P2.3)
	// 8. the Not RAM Hold to high (P2.7)
	NADCCS = 1;
	NDACCS = 1;
	NRAMCS = 1;
	NRAMHOLD = 1;
	NDRIVEREN = 1;				// Enable/disable (0/1) stepper motor driver
								// A 0 causes current from +12 V to flow!
	LASER = 0;					// Disable laser power
	OUTPUTEN = 0;				// Disable the output until we're ready
	CAL = 0;					// Not in calibration state
}
