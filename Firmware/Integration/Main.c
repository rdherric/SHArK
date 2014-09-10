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
#include "McuIO.h"
#include "SpiIO.h"
#include "UsbIO.h"
#include "Registers.h"


//-----------------------------------------------------------------------------
// Extern Global Variables
//-----------------------------------------------------------------------------
extern U8 dacWrite;
extern U8 adcWrite;
extern U8 bytesWritten;
extern U8 adcHigh;
extern U8 adcLow;
extern U16 delay;


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

	//Enable the USB port
	InitUSB0();

	// Enable output, close relay K601
	OUTPUTEN = 1;

	// Loop doing nothing waiting for interrupts
	while (1) { NOP(); }
}
