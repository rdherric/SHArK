//-----------------------------------------------------------------------------
// SpiIO.h
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// ChipIO.h contains the definitions used to input and output
// data from the SPI slave chips.
//
// Target:         C8051F32x
// Tool chain:     Keil compiler
// Command Line:   None
//
// Release 1.0 / Not Released
//    -Initial Revision

#ifndef SPIIO_H
#define SPIIO_H

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void InitSPI(void);
void InitDAC(void);
void InitADC(void);
void SetSPI0CFG(U8 config);
void ResetByteCounter(void);
void WriteByteToSPI(U8 input, U8 byteCount);
void WriteDataToDAC(U8 byte1, U8 byte2, U8 byte3);
void WriteDataToADC(U8 byte1, U8 byte2);

#endif // SPIIO_H