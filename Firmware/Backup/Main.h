//-----------------------------------------------------------------------------
// Main.h
//-----------------------------------------------------------------------------
//
// Program Description:
//
// Header file for usb firmware. Includes main function declarations
// for the hardware operation.
//
// FID:            32X000010
// Target:         C8051F32x
// Tool chain:     Keil C51 7.50 / Keil EVAL C51
//                 Silicon Laboratories IDE version 2.6

#ifndef  MAIN_H
#define  MAIN_H

//-----------------------------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------------------------
void InitPorts();
void InitSysClk();
void InitUSB0();
void InitVDDMonitor();
void EnableUSB0();


// Define standard constants
#define TRUE   1
#define FALSE  0
#define ON     1
#define OFF    0


// USB clock selections (SFR CLKSEL)
#define USB_4X_CLOCK       0
#define USB_INT_OSC_DIV_2  0x10
#define USB_EXT_OSC        0x20
#define USB_EXT_OSC_DIV_2  0x30
#define USB_EXT_OSC_DIV_3  0x40
#define USB_EXT_OSC_DIV_4  0x50


// System clock selections (SFR CLKSEL)
#define SYS_INT_OSC        0
#define SYS_EXT_OSC        0x01
#define SYS_4X_DIV_2       0x02


// USB device speed settings
#define FULL_SPEED         0x20
#define LOW_SPEED          0x00


// Define device states
#define  DEV_DEFAULT       0
#define  DEV_ADDRESS       1
#define  DEV_CONFIG        2


// Define endpoint status values
#define  EP_IDLE           0
#define  EP_TX             1
#define  EP_ERROR          2
#define  EP_HALTED         3
#define  EP_RX             4


// Endpoint addresses
#define  EP1_IN            0x81
#define  EP1_OUT           0x01
#define  EP2_IN            0x82
#define  EP2_OUT           0x02
#define  EP3_IN            0x83
#define  EP3_OUT           0x03

#endif // MAIN_H