//-----------------------------------------------------------------------------
// UsbIO.h
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// UsbIO.h contains the definitions used to input and output
// data from the USB port.
//
// Target:         C8051F32x
// Tool chain:     Keil compiler
// Command Line:   None
//
// Release 1.0 / Not Released
//    -Initial Revision

#ifndef USBIO_H
#define USBIO_H

//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void InitUSB0(void);
void UsbReset(void);
void HandleControl(void);
void HandleSetup(void);
void HandleTransmit(U8 controlReg);
void HandleReceive(U8 controlReg);
void HandleIn1(void);
void HandleOut2(void);
void GetStatus(void);
void SetEndpointStatus(U8 status);
void SetAddress(void);
void GetDescriptor(void);
void GetConfiguration(void);
void SetConfiguration(void);
void GetInterface(void);
void SetInterface(void);
void ForceStall(void);
void IndicateDataReady(void);
void ReadFromFIFO(U8 addr, U16 numBytes, U8* pData);
void WriteToFIFO(U8 addr, U16 numBytes, U8* pData);
void WriteUSBControlByte(U8 ctlAddr, U8 input);
U8 ReadUSBControlByte(U8 ctlAddr);

//-----------------------------------------------------------------------------
// Defines for the USB Communication
//-----------------------------------------------------------------------------

// Standard Descriptor Types
#define  DSC_DEVICE          0x01      // Device Descriptor
#define  DSC_CONFIG          0x02      // Configuration Descriptor
#define  DSC_STRING          0x03      // String Descriptor
#define  DSC_INTERFACE       0x04      // Interface Descriptor
#define  DSC_ENDPOINT        0x05      // Endpoint Descriptor

// Standard Request Codes
#define  GET_STATUS          0x00      // Code for Get Status
#define  CLEAR_FEATURE       0x01      // Code for Clear Feature
#define  SET_FEATURE         0x03      // Code for Set Feature
#define  SET_ADDRESS         0x05      // Code for Set Address
#define  GET_DESCRIPTOR      0x06      // Code for Get Descriptor
#define  SET_DESCRIPTOR      0x07      // Code for Set Descriptor(not used)
#define  GET_CONFIGURATION   0x08      // Code for Get Configuration
#define  SET_CONFIGURATION   0x09      // Code for Set Configuration
#define  GET_INTERFACE       0x0A      // Code for Get Interface
#define  SET_INTERFACE       0x0B      // Code for Set Interface
#define  SYNCH_FRAME         0x0C      // Code for Synch Frame(not used)

// Define device states
#define  DEV_ATTACHED        0x00      // Device is in Attached State
#define  DEV_POWERED         0x01      // Device is in Powered State
#define  DEV_DEFAULT         0x02      // Device is in Default State
#define  DEV_ADDRESS         0x03      // Device is in Addressed State
#define  DEV_CONFIGURED      0x04      // Device is in Configured State
#define  DEV_SUSPENDED       0x05      // Device is in Suspended State

// Define bmRequestType bitmaps
#define  IN_DEVICE           0x00      // Request made to device,
#define  OUT_DEVICE          0x80      // Request made to device,
#define  IN_INTERFACE        0x01      // Request made to interface,
#define  OUT_INTERFACE       0x81      // Request made to interface,
#define  IN_ENDPOINT         0x02      // Request made to endpoint,
#define  OUT_ENDPOINT        0x82      // Request made to endpoint,

// Define wIndex bitmaps
#define  IN_EP1              0x81      // Index values used by Set and Clear
#define  OUT_EP1             0x01      // commands for Endpoint_Halt
#define  IN_EP2              0x82
#define  OUT_EP2             0x02

// Define wValue bitmaps for Standard Feature Selectors
#define  DEVICE_REMOTE_WAKEUP 0x01     // Remote wakeup feature(not used)
#define  ENDPOINT_HALT        0x00     // Endpoint_Halt feature selector

// Define Endpoint States
#define  EP_IDLE             0x00      // This signifies Endpoint Idle State
#define  EP_TX               0x01      // Endpoint Transmit State
#define  EP_RX               0x02      // Endpoint Receive State
#define  EP_HALT             0x03      // Endpoint Halt State (return stalls)

// Endpoint Stall (send procedural stall next status phase)
#define  EP_STALL            0x04

// Endpoint Address (change FADDR during next status phase)
#define  EP_ADDRESS          0x05

#endif // USBIO_H