//-----------------------------------------------------------------------------
// UsbIO.c
//-----------------------------------------------------------------------------
// Copyright (C) RDH2 Science, LLC
// http://www.rdh2.com
//
// UsbIO.c contains the functions required to communicate
// via the USB port.
//
// Target:         C8051F32x
// Tool chain:     Keil compiler
// Command Line:   None
//
// Release 1.0 / Not Released
//    -Initial Revision

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
#include <compiler_defs.h>
#include <C8051F320_defs.h>
#include "Main.h"
#include "UsbIO.h"
#include "UsbDescriptors.h"
#include "Registers.h"
#include "SpiIO.h"


//-----------------------------------------------------------------------------
// Externs
//-----------------------------------------------------------------------------
// Device Descriptor definitions from USBDescriptor.c
extern device_descriptor DeviceDesc;            
extern configuration_descriptor ConfigDesc;
extern interface_descriptor InterfaceDesc;
extern endpoint_descriptor Endpoint1Desc;
extern endpoint_descriptor Endpoint2Desc;
extern U8* StringDescTable[];

// ADC definitions from Globals.c
extern U8 adcHigh;
extern U8 adcLow;

// Device status and I/O definitions
setup_buffer Setup;
U16 DataSize;
U16 DataSent;
U8* DataPtr;
U8 EpStatus[3] = { EP_IDLE, EP_IDLE, EP_IDLE };
U8 USBState;
U16 CurrentValue = 0;

// These are response packets used for communication with host
code U8 ONES_PACKET[2] = {0x01, 0x00};        
code U8 ZERO_PACKET[2] = {0x00, 0x00};        


//-----------------------------------------------------------------------------
// HandleControl
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
// 
// Handles a USB Control Packet.
//
//-----------------------------------------------------------------------------
void HandleControl(void)
{
	// Local variables 
	U8 controlReg;

	// Set the index to EP0 and read the control
	WriteUSBControlByte(INDEX, 0);
	controlReg = ReadUSBControlByte(E0CSR);

	// If this is an address set command, handle it
	if (EpStatus[0] == EP_ADDRESS)
	{
		WriteUSBControlByte(FADDR, LOBYTE(Setup.wValue));
		EpStatus[0] = EP_IDLE;
	}

	// If the last packet was a stall, set the 
	// stall bit and return EP0 to IDLE
	if (controlReg & rbSTSTL)
	{
		WriteUSBControlByte(E0CSR, 0);
		EpStatus[0] = EP_IDLE;
		return;
	}

	// If the last Setup transaction was ended prematurely,
	// set the serviced Setup End bit and return EP0 to IDLE
	if (controlReg & rbSUEND)
	{
		WriteUSBControlByte(E0CSR, rbDATAEND);
		WriteUSBControlByte(E0CSR, rbSSUEND);
		EpStatus[0] = EP_IDLE;
	}

	// If EP0 is in IDLE, get the Setup packet off 
	// of the FIFO and do what needs to be done
	if (EpStatus[0] == EP_IDLE && (controlReg & rbOPRDY) > 0)
	{
		HandleSetup();
	}

	// Handle a transmit if necessary
	if (EpStatus[0] == EP_TX && !(controlReg & rbINPRDY))
	{
		HandleTransmit(controlReg);
	}

	// Handle a recieve if necessary
	if (EpStatus[0] == EP_RX && (controlReg & rbOPRDY) > 0)
	{
		HandleReceive(controlReg);
	}
}


//-----------------------------------------------------------------------------
// HandleSetup
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
// 
// Handles a USB Setup packet and performs the appropriate
// operation.
//
//-----------------------------------------------------------------------------
void HandleSetup(void)
{
	// Get the Setup packet off the FIFO
	ReadFromFIFO(FIFO_EP0, 8, (U8*)&Setup);

	// Swap the bytes for endian
	Setup.wValue = SWAPBYTES(Setup.wValue);
	Setup.wIndex = SWAPBYTES(Setup.wIndex);
	Setup.wLength = SWAPBYTES(Setup.wLength);

	// Call the function to handle each kind of
	// standard request
	switch (Setup.bRequest)
	{
		case GET_STATUS:
			GetStatus();
			break;

		case CLEAR_FEATURE:
			SetEndpointStatus(EP_IDLE);
			break;

		case SET_FEATURE:
			SetEndpointStatus(EP_HALT);
			break;

		case SET_ADDRESS:
			SetAddress();
			break;

		case GET_DESCRIPTOR:
			GetDescriptor();
			break;

		case GET_CONFIGURATION:
			GetConfiguration();
			break;

		case SET_CONFIGURATION:
			SetConfiguration();
			break;

		case GET_INTERFACE:
			GetInterface();
			break;

		case SET_INTERFACE:
			SetInterface();
			break;

		default:
			// Send stall to host if invalid request
			ForceStall();
			break;
	}
}


//-----------------------------------------------------------------------------
// HandleTransmit
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : U8 controlReg
// 
// Handles a USB Endpoint 0 transmit operation.
//
//-----------------------------------------------------------------------------
void HandleTransmit(U8 controlReg)
{
	// Check to see if Setup End or Out Packet received, if so do not put
	// any new data on FIFO
	if ((!(controlReg & rbSUEND)) || (!(controlReg & rbOPRDY)))
	{
		// Add In Packet ready flag to E0CSR bitmask
		controlReg = rbINPRDY;
		if (DataSize >= EP0_PACKET_SIZE)
        {
			// Break Data into multiple packets if larger than Max Packet
		   WriteToFIFO(FIFO_EP0, EP0_PACKET_SIZE, DataPtr);

		   // Advance data pointer
		   DataPtr += EP0_PACKET_SIZE;

		   // Decrement data size
		   DataSize -= EP0_PACKET_SIZE;

		   // Increment data sent counter
		   DataSent += EP0_PACKET_SIZE;
		}
		else
		{
		   // If data is less than Max Packet size or zero
		   WriteToFIFO(FIFO_EP0, DataSize, DataPtr);

		   // Add Data End bit to bitmask
		   controlReg |= rbDATAEND;

		   // Return EP 0 to idle state
		   EpStatus[0] = EP_IDLE;
		}

		// This case exists when the host requests an even multiple of
		// your endpoint zero max packet size, and you need to exit
		// transmit mode without sending a zero length packet
		if (DataSent == Setup.wLength)
        {
			controlReg |= rbDATAEND;
			EpStatus[0] = EP_IDLE;
		}

		// Write mask to E0CSR
		WriteUSBControlByte(E0CSR, controlReg);
	}
}


//-----------------------------------------------------------------------------
// HandleReceive
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
// 
// Handles a USB Endpoint 0 recieve operation.
//
//-----------------------------------------------------------------------------
void HandleReceive(U8 controlReg)
{
	// Verify that a packet was received
	if (controlReg & rbOPRDY)
	{
		// Add the bitmask for reading
		controlReg = rbSOPRDY;

		// If the packet is larger than the packet size that
		// can be held, break it up
		if (DataSize >= EP0_PACKET_SIZE)
		{
			ReadFromFIFO(FIFO_EP0, EP0_PACKET_SIZE, DataPtr);

			// Advance data pointer
			DataPtr += EP0_PACKET_SIZE;

			// Decrement data size
			DataSize -= EP0_PACKET_SIZE;

			// Increment data sent counter
			DataSent += EP0_PACKET_SIZE;
		}
		else
		{
			// Read the bytes from the FIFO
			ReadFromFIFO(FIFO_EP0, DataSize, DataPtr);

			// Signal the end of the data
			controlReg |= rbDATAEND;
			EpStatus[0] = EP_IDLE;
		}

		// This case exists when the host requests an even multiple of
		// your endpoint zero max packet size, and you need to exit
		// transmit mode without sending a zero length packet
		if (DataSent == Setup.wLength)
		{
			controlReg |= rbDATAEND;
			EpStatus[0] = EP_IDLE;
		}

		// Write the status bit if necessary
		if (EpStatus[0] != EP_STALL) 
		{
			WriteUSBControlByte(E0CSR, controlReg);
		}
	}
}


//-----------------------------------------------------------------------------
// HandleIn1
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
// 
// Handles a USB Endpoint 1 in packet and performs the 
// appropriate operation.
//
//-----------------------------------------------------------------------------
void HandleIn1(void)
{
	// The only thing that occurs on Endpoint 1
	// is the voltage set.  Send the data to the 
	// function.
	U16 voltageFlag = (U16) DataPtr;
	WriteDataToDAC(0x00, HIBYTE(voltageFlag), LOBYTE(voltageFlag));
}


//-----------------------------------------------------------------------------
// HandleOut2
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
// 
// Handles a USB Endpoint 2 out packet and performs the
// appropriate operation.
//
//-----------------------------------------------------------------------------
void HandleOut2(void)
{
	// The only thing that occurs on Endpoint 2
	// is the current read.  Get the data and 
	// set the value in the DataPtr.
	WriteDataToADC(0xFF, 0xFF);
	CurrentValue = ASSEMBLEBYTES(adcHigh, adcLow);

	// Set the value to be sent out the USB
	DataPtr = &CurrentValue;
	DataSize = 2;

	// Show that data is ready
	IndicateDataReady();
}


//-----------------------------------------------------------------------------
// InitUSB0
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
// 
// Initializes the USB0 port on the MCU so that USB communication
// can occur.
//
//-----------------------------------------------------------------------------
void InitUSB0(void)
{
	// Force Asynchronous USB Reset
	WriteUSBControlByte(POWER, 0x08);

	// Enable Endpoint 0-2 in interrupts
	WriteUSBControlByte(IN1IE, 0x07);

	// Enable Endpoint 0-2 out interrupts
	WriteUSBControlByte(OUT1IE, 0x07);

	// Enable Reset,Resume,Suspend interrupts
	WriteUSBControlByte(CMIE, 0x00);

	// Enable transceiver; select full speed
	USB0XCN = 0xE0;                     

	// Enable clock recovery, single-step mode
	WriteUSBControlByte(CLKREC, 0x89);

	// Enable USB0 Interrupts
	EIE1 |= 0x02;                       

	// Enable USB0 by clearing the USB Inhibit bit
	// and enable suspend detection
	WriteUSBControlByte(POWER, 0x01);
}


//-----------------------------------------------------------------------------
// UsbReset
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
// 
// Resets USB operation.
//
//-----------------------------------------------------------------------------
void UsbReset(void)
{
	// Clear USB inhibit bit to enable USB
	// and suspend detection
	WriteUSBControlByte(POWER, 0x01);
}


//-----------------------------------------------------------------------------
// GetStatus
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// This routine returns a two byte status packet to the host
//
//-----------------------------------------------------------------------------
void GetStatus()
{
	// Check the data currently configured and send a stall 
	// indicating invalid request if necessary 
	if ((HIBYTE(Setup.wValue) || LOBYTE(Setup.wValue) || 
		 HIBYTE(Setup.wLength) || (LOBYTE(Setup.wLength) != 2)) || // Input not valid
		(USBState != DEV_CONFIGURED))
	{
		ForceStall();
	}

	// Switch on the RequestType to determine if the
	// recipient is the device, interface, or endpoint
	switch(Setup.bmRequestType)                  
	{
		case OUT_DEVICE:
		case OUT_INTERFACE:
			// Device: send 0x00, indicating bus power and no
			// remote wake-up supported
			// Interface: status packet always zero
			DataPtr = &ZERO_PACKET;
			DataSize = 2;
			break;

		case OUT_ENDPOINT:                        
			// Handle case if request is directed to EP 1
			if ((LOBYTE(Setup.wIndex) == IN_EP1 && EpStatus[1] == EP_HALT) ||
				(LOBYTE(Setup.wIndex) == IN_EP2 && EpStatus[2] == EP_HALT))
			{
				// Endpoint halted, send halted packet
				DataPtr = &ONES_PACKET;
				DataSize = 2;
			}
			else
			{
				// Endpoint active, send active packet
				DataPtr = &ZERO_PACKET;
				DataSize = 2;
			}
			break;

		default:
			ForceStall();
			break;
	}

	// Set serviced Setup Packet, Endpoint 0 in transmit mode, 
	// and reset DataSent counter
	if (EpStatus[0] != EP_STALL)
	{
		WriteUSBControlByte(E0CSR, rbSOPRDY);        
		EpStatus[0] = EP_TX;                     
		DataSent = 0;
	}
}


//-----------------------------------------------------------------------------
// SetEndpointStatus
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// This routine can clear Halt Endpoint features on endpoint 1 and 2.
//
//-----------------------------------------------------------------------------
void SetEndpointStatus(U8 status)
{
	// Local variables
	U8 endpoint;
	U8 address;
	U8 input;

	// Set the values written below
	if (LOBYTE(Setup.wIndex) == IN_EP1)
	{
		// Set Endpoint values
		endpoint = 1;
		address = EINCSR1;

		// Set the inputs based on the status
		if (status == EP_IDLE)
		{
			input = rbInCLRDT;
		}
		else
		{
			input = rbInSDSTL;
		}
	}
	else
	{
		// Set Endpoint values
		endpoint = 2;
		address = EOUTCSR1;

		// Set the input based on the status
		if (status == EP_IDLE)
		{
			input = rbOutCLRDT;
		}
		else
		{
			input = rbOutSDSTL;
		}
	}

	// Write the data to the USB bytes
    WriteUSBControlByte(INDEX, endpoint);
    WriteUSBControlByte(address, input);
    EpStatus[endpoint] = status;

	// Reset the index to 0 and set Serviced Out
	// ready to indicate transaction is over
	WriteUSBControlByte(INDEX, 0);
	IndicateDataReady();
}


//-----------------------------------------------------------------------------
// SetAddress
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// Set new function address
//
//-----------------------------------------------------------------------------
void SetAddress()                          
{
	// Set endpoint zero to update address next status phase
	EpStatus[0] = EP_ADDRESS;

	// Set the USBState based on the value of the Setup
	// packet.  If the address is 0x00, just set to default
	// device state.
	if (LOBYTE(Setup.wValue) != 0)
	{
		USBState = DEV_ADDRESS;
	}
	else
	{
		USBState = DEV_DEFAULT;
	}

	// Show that data is ready
	IndicateDataReady();
}


//-----------------------------------------------------------------------------
// GetDescriptor
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// This routine sets the data pointer and size to correct 
// descriptor and sets the endpoint status to transmit
//
//-----------------------------------------------------------------------------
void GetDescriptor()                       
{
	// Determine which type of descriptor was requested 
	// and set data ptr and size accordingly
	switch(HIBYTE(Setup.wValue))
	{
		case DSC_DEVICE:
			DataPtr = (U8*)&DeviceDesc;
			DataSize = DeviceDesc.bLength;
			break;

		case DSC_CONFIG:
			DataPtr = (U8*)&ConfigDesc;
			DataSize = ConfigDesc.wTotalLength;
			break;

		case DSC_STRING:
			DataPtr = StringDescTable[LOBYTE(Setup.wValue)];
			DataSize = *DataPtr;
			break;

		case DSC_INTERFACE:
			DataPtr = (U8*)&InterfaceDesc;
			DataSize = InterfaceDesc.bLength;
			break;

		case DSC_ENDPOINT:
			if (LOBYTE(Setup.wValue) == IN_EP1)
			{
			   DataPtr = (U8*)&Endpoint1Desc;
			   DataSize = Endpoint1Desc.bLength;
			}
			else
			{
			   DataPtr = (U8*)&Endpoint2Desc;
			   DataSize = Endpoint2Desc.bLength;
			}
			break;

		default:
			// Send Stall if unsupported request
			ForceStall();
			break;
	}

	// If the data packet can't support the size of the
	// data being sent back, truncate it
	if ((LOBYTE(Setup.wLength) < DataSize) && (HIBYTE(Setup.wLength) == 0))
	{
		DataSize = LOBYTE(Setup.wLength);
	}

   // Indicate data ready, set transmit, and reset counter
	if (EpStatus[0] != EP_STALL)
	{
		WriteUSBControlByte(E0CSR, rbSOPRDY);
		EpStatus[0] = EP_TX;
		DataSent = 0;
	}
}


//-----------------------------------------------------------------------------
// GetConfiguration
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// This routine returns current configuration value
//
//-----------------------------------------------------------------------------
void GetConfiguration()                   
{
	// If the device is configured, then return value 0x01
	// since this firmware only supports one configuration
	if (USBState == DEV_CONFIGURED)          
	{
		DataPtr = &ONES_PACKET;
		DataSize = 1;
	}

	// If the device is in address state, it is not
	// configured, so return 0x00
	if (USBState == DEV_ADDRESS)
	{
		DataPtr = &ZERO_PACKET;
		DataSize = 1;
	}

	// If EP0 is not stalled, transmit data
	if (EpStatus[0] != EP_STALL)
	{
		IndicateDataReady();
		EpStatus[0] = EP_TX;

		// Reset the data sent counter
		DataSent = 0;
	}
}


//-----------------------------------------------------------------------------
// SetConfiguration
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// This routine allows host to change current device configuration value
//
//-----------------------------------------------------------------------------
void SetConfiguration()                   
{
	// Any positive configuration request
	// results in configuration being set to 1
	if (LOBYTE(Setup.wValue) > 0)
	{
		// Set the state to configured
		USBState = DEV_CONFIGURED;

		// Set endpoint status to idle (enabled)
		EpStatus[1] = EP_IDLE;
		EpStatus[2] = EP_IDLE;

		// Set DIRSEL to indicate Endpoint 1 is IN
		WriteUSBControlByte(INDEX, 1);
		WriteUSBControlByte(EINCSR2, rbInDIRSEL);

		// Put first data packet on FIFO
		HandleIn1();

		// Set index back to endpoint 0
		WriteUSBControlByte(INDEX, 0);
	}
	else
	{
		USBState = DEV_ADDRESS;               // Unconfigures device by setting state to
		EpStatus[1] = EP_HALT;                // address, and changing endpoint 1 and 2
		EpStatus[2] = EP_HALT;                // status to halt
	}

	// Show that data is ready
	IndicateDataReady();
}


//-----------------------------------------------------------------------------
// GetInterface
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// This routine returns 0x00, since only one interface is supported by 
// this firmware
//
//-----------------------------------------------------------------------------
void GetInterface()
{
	// Return 0x00 to host                                           
	DataPtr = &ZERO_PACKET;
	DataSize = 1;

	// If EP0 is not stalled, transmit data
	if (EpStatus[0] != EP_STALL)
	{
		IndicateDataReady();
		EpStatus[0] = EP_TX;

		// Reset the data sent counter
		DataSent = 0;
	}
}


//-----------------------------------------------------------------------------
// SetInterface
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// This routine allows host to change current device configuration value
//
//-----------------------------------------------------------------------------
void SetInterface()
{
	// Show that data is ready
	IndicateDataReady();
}


//-----------------------------------------------------------------------------
// ForceStall
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// Force a procedural stall to be sent to the host
//
//-----------------------------------------------------------------------------
void ForceStall()
{
   WriteUSBControlByte(INDEX, 0);
   WriteUSBControlByte(E0CSR, rbSDSTL);
   EpStatus[0] = EP_STALL;
}


//-----------------------------------------------------------------------------
// IndicateDataReady
//-----------------------------------------------------------------------------
//
// Return Value:	None
// Parameters: 		None
// 
// Writes a byte to the USB Endpoint 0 to indicate
// that data is ready 
//
//-----------------------------------------------------------------------------
void IndicateDataReady()
{
	if (EpStatus[0] != EP_STALL)
	{
		WriteUSBControlByte(E0CSR, (rbSOPRDY | rbDATAEND));
	}
}


//-----------------------------------------------------------------------------
// ReadFromFIFO
//-----------------------------------------------------------------------------
//
// Return Value:	None
// Parameters: 		U8 addr
//					U16 numBytes
//					U8* pData
// 
// Reads bytes from the USB target FIFO.
//
//-----------------------------------------------------------------------------
void ReadFromFIFO(U8 addr, U16 numBytes, U8* pData)
{
	// Local variables
	int i;

	// If the bytes requested is positive, read it
	if (numBytes > 0)
	{
		// Read numBytes from the selected FIFO
		for(i = 0; i < numBytes; i++)
		{
			// Wait for BUSY to go to 0
			while (USB0ADR & 0x80) { NOP(); }

			// Set the address from which to read
			USB0ADR = addr | 0x80;

			// Wait for BUSY to go to 0
			while (USB0ADR & 0x80) { NOP(); }

			// Copy the data byte
			pData[i] = USB0DAT;
		}

		// Finally, clear the read address
		USB0ADR = 0;
	}
}


//-----------------------------------------------------------------------------
// WriteToFIFO
//-----------------------------------------------------------------------------
//
// Return Value:	None
// Parameters: 		U8 addr
//					U16 numBytes
//					U8* pData
// 
// Writes bytes to the USB target FIFO.
//
//-----------------------------------------------------------------------------
void WriteToFIFO(U8 addr, U16 numBytes, U8* pData)
{
	// Local variables
	int i;

   // If the number of bytes to write is positive, do it
	if (numBytes > 0)
	{
		// Wait for BUSY to go to 0
		while (USB0ADR & 0x80) { NOP(); }

		// Set the address to which to write
		USB0ADR = addr;

		// Write numBytes to the selected FIFO
		for(i = 0; i < numBytes; i++)
		{
			// Write the data
			USB0DAT = pData[i];

			// Wait for BUSY to go to 0
			while (USB0ADR & 0x80) { NOP(); }
		}
	}
}


//-----------------------------------------------------------------------------
// WriteUSBControlByte 
//-----------------------------------------------------------------------------
//
// Return Value:	None
// Parameters: 		U8 ctlAddr
//					U8 input
// 
// Writes a byte to the USB target address..
//
//-----------------------------------------------------------------------------
void WriteUSBControlByte(U8 ctlAddr, U8 input)
{
	// Poll for USB ready
	while(USB0ADR & 0x80) { NOP(); }

	// Set the address of the USB
	USB0ADR = ctlAddr;

	// Set the data in the USB register
	USB0DAT = input;
}


//-----------------------------------------------------------------------------
// ReadUSBControlByte 
//-----------------------------------------------------------------------------
//
// Return Value:	U8 
// Parameters: 		U8 ctlAddr
// 
// Reads a byte from the USB target address..
//
//-----------------------------------------------------------------------------
U8 ReadUSBControlByte(U8 ctlAddr)
{
	// Poll for USB ready
	while(USB0ADR & 0x80) { NOP(); }

	// Set the address of the USB
	USB0ADR = (0x80 | ctlAddr);

	// Poll for USB ready
	while(USB0ADR & 0x80) { NOP(); }

	// Return the data in the USB register
	return USB0DAT;
}
