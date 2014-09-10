//-----------------------------------------------------------------------------
// Main.h
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// Main.h contains the definitions used by the Main.c
// file.
//
// Target:         C8051F32x
// Tool chain:     Keil compiler
// Command Line:   None
//
// Release 1.0 / Not Released
//    -Initial Revision

#ifndef MAIN_H

// Bit masking macros
#define HIBYTE(x) ((U8)((x >> 8) & 0xFF))
#define LOBYTE(x) ((U8)x)
#define SWAPBYTES(x) ((U16)(((U16)LOBYTE(x)) << 8) | HIBYTE(x))
#define ASSEMBLEBYTES(x, y) ((U16)(((U16)x) << 8) | y)

#define MAIN_H

#endif // MAIN_H