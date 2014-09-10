//-----------------------------------------------------------------------------
// Main.c
//-----------------------------------------------------------------------------
//
// Program Description:
//
// Main code file for the SHArK Firmware.  Does the work that should be 
// performed for basic potentiostat operation of the hardware.
//
// Target:         C8051F32x
// Tool chain:     Keil C51 7.50 / Keil EVAL C51
//                 Silicon Laboratories IDE version 2.6
// Project Name:   SHArK

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------

#include <c8051f320.h>
#include "USBRegister.h"
#include "Main.h"
#include "USBDescriptor.h"

//-----------------------------------------------------------------------------
// Globals
//-----------------------------------------------------------------------------

idata BYTE Out_Packet[64];             // Last packet received from host
idata BYTE In_Packet[64];              // Next packet to sent to host
int Writing_to_DAC = 0;				   // Boolean: still need to write >=1 byte via SPI
int Writing_to_ADC = 0;				   // Boolean: still need to write >=1 byte via SPI
int SPI_DAC_Bytes = 0;				   // No. of bytes to/from DAC: 0-3
int SPI_ADC_Bytes = 0;				   // No. of bytes to/from ADC: 0-2
int latest_ADC_HighByte;				// High ADC measurement byte
int latest_ADC_LowByte;					// Low ADC measurement byte

//-----------------------------------------------------------------------------
// Main Routine
//-----------------------------------------------------------------------------
void main(void)
{
   PCA0MD &= ~0x40;                    // Disable Watchdog timer

   Sysclk_Init();                      // Initialize oscillator
   Port_Init();                        // Initialize crossbar and GPIO
   SPI_Init();						   // Initialize the Chip interface
   DAC_Init();						   // Initialize the DAC
   ADC_Init();						   // Initialize the ADC
   Usb0_Init();                        // Initialize USB0

   while (1) ;
}


//-----------------------------------------------------------------------------
// Initialization Subroutines
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Sysclk_Init
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// Initialize the system clock and USB clock
//
//-----------------------------------------------------------------------------
void Sysclk_Init(void)
{
	//Variable declarations
	unsigned char delay = 100;

	//Configure the internal oscillator
	//for its maximum frequency
	OSCICN = 0x83;

	//Select internal oscillator as input
	//to Clock Multiplier
	CLKMUL = 0x00;

	//Enable the Clock Multiplier
	CLKMUL |= 0x80;

	//Delay for a few us while the Clock
	//gets set up...
	while (delay--);

	//Initialize the Clock Multiplier
	CLKMUL |= 0xC0;

	//Wait for the multiplier to lock
	while ((CLKMUL & MULRDY) != MULRDY) ;

	//Set the USB and SYS clocks
	CLKSEL = 0x02;		// USB clock = 4*(Int Osc)
						// Sys clock = 4*(Int Osc)/2

	//Enable missing clock detector -- required
	//for USB
	RSTSRC = 0x04;
}


//-----------------------------------------------------------------------------
// PORT_Init
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
void Port_Init (void)
{
	// Set all port pins as NOT analog inputs.
	P0MDIN = 0xFF;
	P1MDIN = 0xFF;
	P2MDIN = 0xFF;
	P3MDIN = 0xFF;

	// Select push/pull for all port pins
	P0MDOUT = 0xFF;
	P1MDOUT = 0xFF;
	P2MDOUT = 0xFF;
	P3MDOUT = 0xFF;

	// Select pins to be skipped by port crossbar
	P0SKIP = 0x00;
	P1SKIP = 0x00;
	P2SKIP = 0x00;
//	P0SKIP = 0xF8;				// Don't skip the 3 wires for SPI
//	P1SKIP = 0xFF;
//	P2SKIP = 0xFF;

	// Assign port pins to peripherals using the port crossbar (p. 131)
	XBR0 = 0x02;				// Only SPI selected, automatically assigned:
								// SCK  --> P0.0
								// MISO --> P0.1
								// MOSI --> P0.2
	XBR1 = 0x40;				// Enable crossbar and weak pull-ups


	// Initialize the potentiostat state
	// 1. the SPI Not Chip Select ports to high (P1.4, P2.1, P2.6)
	// 2. the stepper motor Not Enable to high (P0.5)
	// 3. the stepper motors "step" ports to low (P0.4, P0.7)
	// 4. the laser power low (P1.2)
	// 5. the Calibration signal to low (P1.7)
	// 6. the current direction signal Positive to high (P2.0)
	// 7. the Output Enable to low (P2.3)
	// 8. the Not RAM Hold to high (P2.7)
//	P0 = 0x20;					// 0x20 = 0010 0000b
//	P1 = 0x10;					// 0x10 = 0001 0000b
//	P2 = 0xC3;					// 0xC3 = 1100 0011b
	POLL_WRITE_BYTE(bNotADCCS, 1);
	POLL_WRITE_BYTE(bNotDACCS, 1);
	POLL_WRITE_BYTE(bNotRAMCS, 1);
	POLL_WRITE_BYTE(bNotRAMHold, 1);
	POLL_WRITE_BYTE(bMtrDrvrEn, 1);			// Enable/disable (0/1) stepper motor driver
											// A 0 causes current from +12 V to flow!
	POLL_WRITE_BYTE(bMtr1Dir, 0);
	POLL_WRITE_BYTE(bMtr2Dir, 0);
	POLL_WRITE_BYTE(bMtr1Step, 0);
	POLL_WRITE_BYTE(bMtr2Step, 0);
	POLL_WRITE_BYTE(bLaser, 0);					// Disable laswer power
	POLL_WRITE_BYTE(bOutputEnable, 0);			// Disable the output until we're ready
	POLL_WRITE_BYTE(bPos, 1);					// Positive voltage and current
	POLL_WRITE_BYTE(bCal, 0);					// Not in calibration state
}


//-----------------------------------------------------------------------------
// SPI_Init
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// Initialize SPI.  The initialization sets parameters to talk to the DAC
// (AD5754), so some things are changed later to talk to the ADC and RAM.
//
//-----------------------------------------------------------------------------
void SPI_Init (void)
{
	// Set all SPI chip selects to Not Selected or 1
	POLL_WRITE_BYTE(bNotDACCS, 1);
	POLL_WRITE_BYTE(bNotADCCS, 1);
	POLL_WRITE_BYTE(bNotRAMCS, 1);

	// SPI configuration register: SPI0CFG
	//  7 SPIBSY	R
	//  6 MSTEN		R/W
	//  5 CKPHA		R/W
	//  4 CKPOL		R/W
	//  3 SLVSEL	R
	//  2 NSSIN		R
	//  1 SRMT		R
	//  0 RXBMT		R
	SPI0CFG = 0x50;				// 0x60 = 0101 0000

	// SPI control register: SPI0CN
	//  7 SPIF		R/W
	//  6 WCOL		R/W
	//  5 MODF		R/W
	//  4 RXOVRN	R/W
	//  3 NSSMD1	R/W
	//  2 NSSMD0	R/W
	//  1 TXBMT		R
	//  0 SPIEN		R/W
	SPI0CN = 0x01;				// 0x01 = 0000 0001

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
	SPI0CKR = 0x05;				// 0x00 = 0000 0101

	// Enable SPI interrupts, SFR IE, bit 6
	ESPI0 = 1;
}


//-----------------------------------------------------------------------------
// DAC_Init
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// Initialize DAC.  Assumes SPI_Init was just called and CKPOL and CKPHA are set
// correctly.
//
//-----------------------------------------------------------------------------
void DAC_Init (void)
{
	//Show that the DAC is being used
	Writing_to_DAC = 1;

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
	POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
	SPI0DAT = 0x08;					// 0x08 = 0000 1000
	while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
	SPI0DAT = 0x00;					// 0x00 = 0000 0000
	while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
	SPI0DAT = 0x04;					// 0x04 = 0000 0100
	while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
	SPI_DAC_Bytes -= 3;				// Reset byte TX counter
	POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication

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
	POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
	SPI0DAT = 0x19;					// 0x19 = 0001 1001
	while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
	SPI0DAT = 0x00;					// 0x00 = 0000 0000
	while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
	SPI0DAT = 0x0E;					// 0x0E = 0000 1110
	while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
	SPI_DAC_Bytes -= 3;				// Reset byte TX counter
	POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication

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
	// DAC A: send 0001 0000 0000 0000 0000 1000
	POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
	SPI0DAT = 0x10;					// 0x10 = 0001 0000
	while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
	SPI0DAT = 0x00;					// 0x00 = 0000 0000
	while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
	SPI0DAT = 0x01;					// 0x0F = 0000 0001
	while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
	SPI_DAC_Bytes -= 3;				// Reset byte TX counter
	POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication

	//Reset the DAC boolean
	Writing_to_DAC = 0;
}


//-----------------------------------------------------------------------------
// ADC_Init
//-----------------------------------------------------------------------------
//
// Return Value: none
// Parameters:   none
//
// Initialize ADC.  Must reset the SPI timing, clock polarization, and clock
// phase.
//
//-----------------------------------------------------------------------------
void ADC_Init (void)
{
	//Show that the ADC is being used
	Writing_to_ADC = 1;

	////
	//// Set SPI configuration
	////

	// SPI configuration register: SPI0CFG
	//  7 SPIBSY	R
	//  6 MSTEN		R/W
	//  5 CKPHA		R/W
	//  4 CKPOL		R/W
	//  3 SLVSEL	R
	//  2 NSSIN		R
	//  1 SRMT		R
	//  0 RXBMT		R
	SPI0CFG = 0x40;				// 0x60 = 0100 0000

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
	SPI0CKR = 0x05;				// 0x00 = 0000 0101

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
	POLL_WRITE_BYTE(bNotADCCS, 0);	// Select the DAC for SPI communication
	SPI0DAT = 0xA0;					// 0xA0 = 1010 0000
	while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
	SPI0DAT = 0x00;					// 0x00 = 0000 0000
	while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
	POLL_WRITE_BYTE(bNotADCCS, 1);	// Deselect the DAC for SPI communication

	//Shut off writing to ADC
	Writing_to_ADC = 0;
}


//-----------------------------------------------------------------------------
// Usb0_Init
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
// 
// - Initialize USB0
// - Enable USB0 interrupts
// - Enable USB0 transceiver
// - Enable USB0 with suspend detection
//-----------------------------------------------------------------------------
void Usb0_Init(void)
{
   BYTE Count;

   // Set initial values of In_Packet and Out_Packet to zero
   // Initialized here so that WDT doesn't kick in first
   for (Count = 0; Count < 64; Count++)
   {
      Out_Packet[Count] = 0;
      In_Packet[Count] = 0;
   }

   POLL_WRITE_BYTE(POWER,  0x08);      // Force Asynchronous USB Reset
   POLL_WRITE_BYTE(IN1IE,  0x07);      // Enable Endpoint 0-2 in interrupts
   POLL_WRITE_BYTE(OUT1IE, 0x07);      // Enable Endpoint 0-2 out interrupts
   POLL_WRITE_BYTE(CMIE,   0x07);      // Enable Reset,Resume,Suspend interrupts
#ifdef _USB_LOW_SPEED_
   USB0XCN = 0xC0;                     // Enable transceiver; select low speed
   POLL_WRITE_BYTE(CLKREC, 0xA0);      // Enable clock recovery; single-step mode
                                       // disabled; low speed mode enabled
#else
   USB0XCN = 0xE0;                     // Enable transceiver; select full speed
   POLL_WRITE_BYTE(CLKREC, 0x80);      // Enable clock recovery, single-step mode
                                       // disabled
#endif // _USB_LOW_SPEED_

   EIE1 |= 0x02;                       // Enable USB0 Interrupts
   EA = 1;                             // Global Interrupt enable
                                       // Enable USB0 by clearing the USB 
                                       // Inhibit bit
   POLL_WRITE_BYTE(POWER,  0x01);      // and enable suspend detection
}
