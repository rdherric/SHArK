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


//-----------------------------------------------------------------------------
// Global CONSTANTS
//-----------------------------------------------------------------------------
#define MULRDY 0x20

// Define names for bits in special function registers.
// If these change, update PORT_Init() also.
SBIT(M2DIR, SFR_P0, 3);					// Motor 2 direction
SBIT(M2STEP, SFR_P0, 4);				// Motor 2 step (on rising edge)
SBIT(NDRIVEREN, SFR_P0,5);				// Not stepper motor driver enable
SBIT(M1DIR, SFR_P1, 6);					// Motor 1 direction
SBIT(M1STEP, SFR_P0, 7);				// Motor 1 step (on rising edge)
SBIT(INTTL, SFR_P1, 0);					// Input TTL signal
SBIT(OUTTTL, SFR_P1, 1);				// Output TTL signal (120 Hz, 38 pulses)
SBIT(LASER, SFR_P1, 2);					// Laser power on
SBIT(NDACCS, SFR_P1, 4);				// Not CS for DAC SPI
SBIT(CAL, SFR_P1, 7);					// Calibration on
SBIT(POS, SFR_P2, 0);					// Positive current
SBIT(NADCCS, SFR_P2, 1);				// Not CS for ADC SPI
SBIT(OUTPUTEN, SFR_P2, 3);				// Potentiostat output current enable
SBIT(NRAMCS, SFR_P2, 6);				// Not CS for RAM SPI
SBIT(NRAMHOLD, SFR_P2, 7);				// Not hold for RAM
SBIT(ERRORPIN, SFR_P2, 2);				// Error pin high when there's an error


//-----------------------------------------------------------------------------
// Function PROTOTYPES
//-----------------------------------------------------------------------------
void InitSYSCLK(void);
void InitPORT(void);
void InitSPI(void);
void InitDAC(void);
void InitADC(void);
void SetSPI0CFG(U8 config);
void ResetByteCounter(void);
void WriteByteToSPI(U8 input, U8 byteCount);
void WriteDataToDAC(U8 byte1, U8 byte2, U8 byte3);
void WriteDataToADC(U8 byte1, U8 byte2);


//-----------------------------------------------------------------------------
// Interrupt PROTOTYPES
//-----------------------------------------------------------------------------
INTERRUPT_PROTO(SPI_ISR, INTERRUPT_SPI0);


