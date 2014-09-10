//-----------------------------------------------------------------------------
// SpiIO.h
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// ChipIO.c contains the functions used to input and output
// data from the SPI slave chips.
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
#include "SpiIO.h"
#include "Registers.h"


//-----------------------------------------------------------------------------
// Extern Global Variables
//-----------------------------------------------------------------------------
extern U8 dacWrite;
extern U8 adcWrite;
extern U8 bytesWritten;
extern U16 delay;


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

	// Delay for 12 ms for the ADC to turn on
	delay = 0;
	while (delay < 1000)
		{ delay++; }

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
	SPI0CKR = 0x05;				// 0x00 = 0000 0101

	// Enable SPI interrupts, SFR IE, bit 6
	ESPI0 = 1;
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
}
