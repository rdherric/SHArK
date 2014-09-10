//-----------------------------------------------------------------------------
// Registers.h
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// Registers.h contains the register definitions used by the 
// other source files.
//
// Target:         C8051F32x
// Tool chain:     Keil compiler
// Command Line:   None
//
// Release 1.0 / Not Released
//    -Initial Revision

#ifndef REGISTERS_H
#define REGISTERS_H


//-----------------------------------------------------------------------------
// RDH2 Potentiostat Board Registers
//-----------------------------------------------------------------------------
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
// USB Port Registers
//-----------------------------------------------------------------------------
#define  BASE     0x00
#define  FADDR    BASE
#define  POWER    BASE + 0x01
#define  IN1INT   BASE + 0x02
#define  OUT1INT  BASE + 0x04
#define  CMINT    BASE + 0x06
#define  IN1IE    BASE + 0x07
#define  OUT1IE   BASE + 0x09
#define  CMIE     BASE + 0x0B
#define  FRAMEL   BASE + 0x0C
#define  FRAMEH   BASE + 0x0D
#define  INDEX    BASE + 0x0E
#define  CLKREC   BASE + 0x0F
#define  E0CSR    BASE + 0x11
#define  EINCSR1  BASE + 0x11
#define  EINCSR2  BASE + 0x12
#define  EOUTCSR1 BASE + 0x14
#define  EOUTCSR2 BASE + 0x15
#define  E0CNT    BASE + 0x16
#define  EOUTCNTL BASE + 0x16
#define  EOUTCNTH BASE + 0x17
#define  FIFO_EP0 BASE + 0x20
#define  FIFO_EP1 BASE + 0x21
#define  FIFO_EP2 BASE + 0x22
#define  FIFO_EP3 BASE + 0x23

// POWER
#define  rbISOUD        0x80
#define  rbSPEED        0x40
#define  rbUSBRST       0x08
#define  rbRESUME       0x04
#define  rbSUSMD        0x02
#define  rbSUSEN        0x01

// IN1INT
#define  rbIN3          0x08
#define  rbIN2          0x04
#define  rbIN1          0x02
#define  rbEP0          0x01

// OUT1INT
#define  rbOUT3         0x08
#define  rbOUT2         0x04
#define  rbOUT1         0x02

// CMINT
#define  rbSOF          0x08
#define  rbRSTINT       0x04
#define  rbRSUINT       0x02
#define  rbSUSINT       0x01

// IN1IE
#define  rbIN3E         0x08
#define  rbIN2E         0x04
#define  rbIN1E         0x02
#define  rbEP0E         0x01

// OUT1IE
#define  rbOUT3E        0x08
#define  rbOUT2E        0x04
#define  rbOUT1E        0x02

// CMIE
#define  rbSOFE         0x08
#define  rbRSTINTE      0x04
#define  rbRSUINTE      0x02
#define  rbSUSINTE      0x01

// E0CSR
#define  rbSSUEND       0x80
#define  rbSOPRDY       0x40
#define  rbSDSTL        0x20
#define  rbSUEND        0x10
#define  rbDATAEND      0x08
#define  rbSTSTL        0x04
#define  rbINPRDY       0x02
#define  rbOPRDY        0x01

// EINCSR1
#define  rbInCLRDT      0x40
#define  rbInSTSTL      0x20
#define  rbInSDSTL      0x10
#define  rbInFLUSH      0x08
#define  rbInUNDRUN     0x04
#define  rbInFIFONE     0x02
#define  rbInINPRDY     0x01

// EINCSR2
#define  rbInDBIEN      0x80
#define  rbInISO        0x40
#define  rbInDIRSEL     0x20
#define  rbInFCDT       0x08
#define  rbInSPLIT      0x04

// EOUTCSR1
#define  rbOutCLRDT     0x80
#define  rbOutSTSTL     0x40
#define  rbOutSDSTL     0x20
#define  rbOutFLUSH     0x10
#define  rbOutDATERR    0x08
#define  rbOutOVRUN     0x04
#define  rbOutFIFOFUL   0x02
#define  rbOutOPRDY     0x01

// EOUTCSR2
#define  rbOutDBOEN     0x80
#define  rbOutISO       0x40

#endif // REGISTERS_H