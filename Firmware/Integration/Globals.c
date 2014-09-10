//-----------------------------------------------------------------------------
// Globals.c
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// Globals.c contains the variable definitions used by the  
// other source files.
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


//-----------------------------------------------------------------------------
// Global Variables
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

// Delay variable used in a few places
U16 delay = 0;



//-----------------------------------------------------------------------------
// Extern Global Variables
//-----------------------------------------------------------------------------
//extern U8 dacWrite;
//extern U8 adcWrite;
//extern U8 bytesWritten;
//extern U8 adcHigh;
//extern U8 adcLow;
//extern U16 delay;
