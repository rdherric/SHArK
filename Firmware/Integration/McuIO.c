//-----------------------------------------------------------------------------
// McuIO.c
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// McuIO.c contains the functionality required to communicate
// with the MCU chip for the base operations.
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
#include "McuIO.h"
#include "Registers.h"
#include "SpiIO.h"


//-----------------------------------------------------------------------------
// Extern Global Variables
//-----------------------------------------------------------------------------
extern U16 delay;


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
