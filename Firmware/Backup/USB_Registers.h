//-----------------------------------------------------------------------------
// USB_Registers.h
//-----------------------------------------------------------------------------
//
// Program Description:
//
// Header file for USB firmware. Includes all USB core register
// addresses, register access macros, and register bit masks.
//
// FID:            32X000016
// Target:         C8051F32x
// Tool chain:     Keil C51 7.50 / Keil EVAL C51
//                 Silicon Laboratories IDE version 2.6

#ifndef  USB_REGISTERS_H
#define  USB_REGISTERS_H

//-----------------------------------------------------------------------------
// Global Constants
//-----------------------------------------------------------------------------

//  Port bit definitions
//      Port 0 :   Address - 0x80
__sbit __at (0x87) bMtr1Step      	;     //  bit 7 -
__sbit __at (0x86) bMtr1Dir 		;     //  bit 6 -
__sbit __at (0x85) bMtrDrvrEn 		;     //  bit 5 -
__sbit __at (0x84) bMtr2Step 		;     //  bit 4 -
__sbit __at (0x83) bMtr2Dir 		;     //  bit 3 -
__sbit __at (0x82) bMosi 			;     //  bit 2 -
__sbit __at (0x81) bMiso 			;     //  bit 1 -
__sbit __at (0x80) bSck 			;     //  bit 0 -

//      Port 1 :   Address - 0x90
__sbit __at (0x97) bCal      		;     // Bit 7 - 
__sbit __at (0x96) bNC2      		;     // Bit 6 - 
__sbit __at (0x95) bNC1      		;     // Bit 5 - 
__sbit __at (0x94) bNotDACCs      	;     // Bit 4
__sbit __at (0x93) bNC0      		;     // Bit 3 - 
__sbit __at (0x92) bLaser      		;     // Bit 2 - 
__sbit __at (0x91) bOut_TTL      	;     // Bit 1 - 
__sbit __at (0x90) bIn_TTL      	;     // Bit 0 - 

//      Port 2 :   Address - 0xa0
__sbit __at (0xa7) bNotRAMHold    	;     // Bit 7 - 
__sbit __at (0xa6) bNotRAMCS      	;     // Bit 6 - 
__sbit __at (0xa5) bGreenLED       	;     // Bit 5 - Green LED
__sbit __at (0xa4) bRedLED       	;     // Bit 4 - Red LED
__sbit __at (0xa3) bOutputEnable  	;     // Bit 3 - 
__sbit __at (0xa2) bNC3      		;     // Bit 2 - 
__sbit __at (0xa1) bNotADCCs      	;     // Bit 1 - 
__sbit __at (0xa0) bPos      		;     // Bit 0 - 

//      Port 3 :   Address - 0xb0
__sbit __at (0xb7) bGND      		;     // Bit 7 - 
__sbit __at (0xb6) bDp1      		;     // Bit 6 - 
__sbit __at (0xb5) bDn1      		;     // Bit 5 - 
__sbit __at (0xb4) bVDD      		;     // Bit 4
__sbit __at (0xb3) bRegIn      		;     // Bit 3 - 
__sbit __at (0xb2) bVBUS      		;     // Bit 2 - 
__sbit __at (0xb1) bC2CK      		;     // Bit 1 - 
__sbit __at (0xb0) bC2D      		;     // Bit 0 - 


// USB Core Registers
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
#define  EINCSRL  BASE + 0x11
#define  EINCSRH  BASE + 0x12
#define  EOUTCSRL BASE + 0x14
#define  EOUTCSRH BASE + 0x15
#define  E0CNT    BASE + 0x16
#define  EOUTCNTL BASE + 0x16
#define  EOUTCNTH BASE + 0x17
#define  FIFO_EP0 BASE + 0x20
#define  FIF0_EP1 BASE + 0x21
#define  FIF0_EP2 BASE + 0x22
#define  FIFO_EP3 BASE + 0x23

// USB Core Register Bits

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

// EINCSRL
#define  rbInCLRDT      0x40
#define  rbInSTSTL      0x20
#define  rbInSDSTL      0x10
#define  rbInFLUSH      0x08
#define  rbInUNDRUN     0x04
#define  rbInFIFONE     0x02
#define  rbInINPRDY     0x01

// EINCSRH
#define  rbInDBIEN      0x80
#define  rbInISO        0x40
#define  rbInDIRSEL     0x20
#define  rbInFCDT       0x08
#define  rbInSPLIT      0x04

// EOUTCSRL
#define  rbOutCLRDT     0x80
#define  rbOutSTSTL     0x40
#define  rbOutSDSTL     0x20
#define  rbOutFLUSH     0x10
#define  rbOutDATERR    0x08 
#define  rbOutOVRUN     0x04
#define  rbOutFIFOFUL   0x02
#define  rbOutOPRDY     0x01

// EOUTCSRH
#define  rbOutDBOEN     0x80
#define  rbOutISO       0x40

//-----------------------------------------------------------------------------
// Macros
//-----------------------------------------------------------------------------

// Register read/write macros
#define UREAD_BYTE(addr,target){  USB0ADR = (0x80 | addr); \
                                  while(USB0ADR & 0x80);   \
								  target = USB0DAT; }


#define UWRITE_BYTE(addr,data){   USB0ADR = addr; \
                                  USB0DAT = data; \
								  while(USB0ADR & 0x80); }


#endif  //USB_REGISTERS_H
