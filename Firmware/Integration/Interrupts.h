//-----------------------------------------------------------------------------
// Interrupts.h
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// Interrupts.h contains the definitions used by the 
// Interrupts.c source file.
//
// Target:         C8051F32x
// Tool chain:     Keil compiler
// Command Line:   None
//
// Release 1.0 / Not Released
//    -Initial Revision

#ifndef INTERRUPTS_H
#define INTERRUPTS_H

//-----------------------------------------------------------------------------
// Interrupt prototypes
//-----------------------------------------------------------------------------
INTERRUPT_PROTO(SPI_ISR, INTERRUPT_SPI0);

#endif // INTERRUPTS_H