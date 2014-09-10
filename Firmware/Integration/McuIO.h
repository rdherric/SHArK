//-----------------------------------------------------------------------------
// McuIO.h
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// McuIO.h contains the definitions used by the other source
// files to communicate with the base MCU chip.
//
// Target:         C8051F32x
// Tool chain:     Keil compiler
// Command Line:   None
//
// Release 1.0 / Not Released
//    -Initial Revision

#ifndef MCUCONFIG_H
#define MCUCONFIG_H

//-----------------------------------------------------------------------------
// Global CONSTANTS
//-----------------------------------------------------------------------------
#define MULRDY 0x20


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void InitSYSCLK(void);
void InitPORT(void);

#endif // MCUCONFIG_H