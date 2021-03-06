//-----------------------------------------------------------------------------
// Main.h
//-----------------------------------------------------------------------------
//
// Program Description:
//
// Main header file for USB firmware. Includes function prototypes,
// standard constants, and configuration constants.
//
// Target:         C8051F32x
// Tool chain:     Keil C51 7.50 / Keil EVAL C51
//                 Silicon Laboratories IDE version 2.6
// Project Name:   SHArK
//

#ifndef  MAIN_H
#define  MAIN_H

//#define _USB_LOW_SPEED_                    // Change this comment to
                                             // make Full/Low speed

//-----------------------------------------------------------------------------
// Global Constants
//-----------------------------------------------------------------------------
// Special Function Register masks
#define MULRDY	0x20		// Clock multiplier read, SFR is CLKMUL

// Define Endpoint Packet Sizes
#ifdef _USB_LOW_SPEED_
#define  EP0_PACKET_SIZE         0x08        // This value can be 8,16,32,64
                                             // depending on device speed
#else
#define  EP0_PACKET_SIZE         0x40
#endif // _USB_LOW_SPEED_ 

// Can range 0 - 1024 depending on data and transfer type
#define  EP1_PACKET_SIZE         0x0040

// IMPORTANT- this should be Little-Endian version of EP1_PACKET_SIZE
#define  EP1_PACKET_SIZE_LE      0x4000

// Can range 0 - 1024 depending on data and transfer type
#define  EP2_PACKET_SIZE         0x0040

// IMPORTANT- this should be Little-Endian version of EP2_PACKET_SIZE
#define  EP2_PACKET_SIZE_LE      0x4000

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


// Operation Codes
#define OP_SET_VOLTAGE	0x00
#define OP_GET_CURRENT	0x01
#define OP_SET_LASER	0x02
#define OP_PULSE_MOTOR	0x03

// Motor codes
#define MOTOR_X			0x00
#define MOTOR_Y			0x01

// Direction codes
#define DIR_FWD			0x00
#define DIR_REV			0x01


//  Port bit definitions
//      Port 0 :   Address - 0x80
#define bMtr1Step 0x87 			//  bit 7 -
#define bMtr1Dir 0x86			//  bit 6 -
#define bMtrDrvrEn 0x85			//  bit 5 -
#define bMtr2Step 0x84			//  bit 4 -
#define bMtr2Dir 0x83			//  bit 3 -
#define bMosi 0x82				//  bit 2 -
#define bMiso 0x81				//  bit 1 -
#define bSck 0x80				//  bit 0 -

//      Port 1 :   Address - 0x90
#define bCal 0x97				// Bit 7 - 
#define bNC2 0x96 				// Bit 6 - 
#define bNC1 0x95 				// Bit 5 - 
#define bNotDACCS 0x94 			// Bit 4
#define bNC0 0x93 				// Bit 3 - 
#define bLaser 0x92 			// Bit 2 - 
#define bOut_TTL 0x91 			// Bit 1 - 
#define bIn_TTL 0x90 			// Bit 0 - 

//      Port 2 :   Address - 0xa0
#define bNotRAMHold 0xa7 		// Bit 7 - 
#define bNotRAMCS 0xa6 			// Bit 6 - 
#define bGreenLED 0xa5 			// Bit 5 - Green LED
#define bRedLED 0xa4 			// Bit 4 - Red LED
#define bOutputEnable 0xa3 		// Bit 3 - 
#define bError 0xa2 			// Bit 2 - 
#define bNotADCCS 0xa1 			// Bit 1 - 
#define bPos 0xa0 				// Bit 0 - 

//      Port 3 :   Address - 0xb0
#define bGND 0xb7 				// Bit 7 - 
#define bDp1 0xb6 				// Bit 6 - 
#define bDn1 0xb5 				// Bit 5 - 
#define bVDD 0xb4 				// Bit 4
#define bRegIn 0xb3 			// Bit 3 - 
#define bVBUS 0xb2 				// Bit 2 - 
#define bC2CK 0xb1 				// Bit 1 - 
#define bC2D 0xb0 				// Bit 0 - 


//-----------------------------------------------------------------------------
// Global Prototypes
//-----------------------------------------------------------------------------

// USB Routines
void Usb_Resume(void);                 // This routine resumes USB operation
void Usb_Reset(void);                  // Called after USB bus reset
void Handle_Setup(void);               // Handle setup packet on Endpoint 0
void Handle_In1(void);                 // Handle in packet on Endpoint 1
void Handle_Out2(void);                // Handle out packet on Endpoint 2
void Usb_Suspend(void);                // This routine called when suspend
                                       // signalling on bus

// Standard Requests
// These are called for each specific standard request
void Get_Status(void);
void Clear_Feature(void);
void Set_Feature(void);
void Set_Address(void);
void Get_Descriptor(void);
void Get_Configuration(void);
void Set_Configuration(void);
void Get_Interface(void);
void Set_Interface(void);

// Initialization Routines
void Sysclk_Init(void);                // Initialize the system clock
void Port_Init(void);                  // Configure ports
void SPI_Init(void);				   // Initialize the SPI chip
void DAC_Init(void);				   // Initialize the DAC chip
void ADC_Init(void);				   // Initialize the ADC chip
void Usb0_Init(void);                  // Configure USB for Full/Low speed
                                       // conversion low-power mode
// Other Routines
void Usb_ISR(void);        			   // Determines type of USB interrupt
void SPI_ISR(void);		 		       // Determines type of SPI interrupt
void Force_Stall(void);                // Forces procedural stall on Endpoint 0
void Endpoint1();					   // Main function for Endpoint 1
void SetVoltage();					   // Sets the voltage on the DAC
void SetLaser();					   // Turns the laser on or off
void PulseMotor();					   // Pulses a Motor
void Endpoint2();					   // Main function for Endpoint 2
void ReadCurrent();					   // Reads the current from the ADC

// Used for multiple byte reads of Endpoint fifos
void Fifo_Read (BYTE, unsigned int, BYTE *);
// Used for multiple byte writes of Endpoint fifos
void Fifo_Write (BYTE, unsigned int, BYTE *);

#endif // MAIN_H
