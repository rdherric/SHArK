//-----------------------------------------------------------------------------
// Interrupts.c
//-----------------------------------------------------------------------------
//
// Program Description:
//
// Header file for usb firmware. Includes main function implementations
// for the hardware operation.
//
// FID:            32X000010
// Target:         C8051F32x
// Tool chain:     Keil C51 7.50 / Keil EVAL C51
//                 Silicon Laboratories IDE version 2.6

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
#include "compiler_defs.h"
#include "C8051F320_defs.h"
#include "Main.h"
#include "USB_Registers.h"
#include "USB_Request.h"
#include "USB_Structs.h"
#include "USB_Utilities.h"
#include "Interrupts.h"


//-----------------------------------------------------------------------------
// Extern Global Variables
//-----------------------------------------------------------------------------
extern DEVICE_STATUS  gDeviceStatus;
extern EP0_COMMAND    gEp0Command;
extern EP_STATUS      gEp0Status;
extern EP_STATUS      gEp1InStatus;
extern EP_STATUS      gEp2OutStatus;


//-----------------------------------------------------------------------------
// Local Global Variables
//-----------------------------------------------------------------------------
data BYTE	M_State;        //Current Machine State


//-----------------------------------------------------------------------------
// Interrupt Service Routines
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// USB_ISR
//-----------------------------------------------------------------------------
//
//
// This is the top level USB ISR. All endpoint interrupt/request
// handlers are called from this function.
//
// Handler routines for any configured interrupts should be
// added in the appropriate endpoint handler call slots.
//
//-----------------------------------------------------------------------------
void USB_ISR() interrupt 8
{
	//Declare local variables
	BYTE bCommonInt = 0;
	BYTE bInInt = 0;
	BYTE bOutInt = 0;

	//Read interrupt registers
	UREAD_BYTE(CMINT, bCommonInt);
	UREAD_BYTE(IN1INT, bInInt);
	UREAD_BYTE(OUT1INT, bOutInt);

	//If the interrupt is to reset, call the 
	//USBReset function
	if ((bCommonInt & rbRSTINT) > 0)
	{
		//Call reset function
		USBReset();

		//Set the State on the device
		M_State = ST_WAIT_DEV;
	}

	//If the interrupt is for Endpoint 0,
	//call the EP 0 function
	if ((bInInt & rbEP0) > 0)
	{
		//Call Endpoint0 function
		Endpoint0();
	}

	// Endpoint1 IN
	if ((bInInt & rbIN1) > 0)
	{
		//Call the Endpoint1 function
		Endpoint1();
	}

	// Endpoint2 OUT
	if ((bOutInt & rbOUT2) > 0)
	{
		//Call the Endpoint2 function
		Endpoint2();
	}

	//Set the status of the Device

}



//-----------------------------------------------------------------------------
// USB Operation Functions
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Endpoint1
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// Reads the values from the FIFO to get the operation
// code and parameters and performs the operation. 
//-----------------------------------------------------------------------------
void Endpoint1()
{
	//Declare local variables
	BYTE bEP = 0x01;		//Endpoint 1 local variable
	UINT uNumBytes = 1;		//Number of bytes to read
	BYTE bOp = 0x00;		//Operation to perform

	//Read the operation code from the FIFO
	FIFORead(bEP, uNumBytes, &bOp);

	//Switch on the operation code
	switch (bOp)
	{
		case OP_SET_VOLTAGE:
			SetVoltage();
			break;

		case OP_SET_LASER:
			SetLaser();
			break;

		case OP_PULSE_MOTOR:
			PulseMotor();
			break;
	}
}


//-----------------------------------------------------------------------------
// SetVoltage
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// Reads the voltage from the FIFO and sets the value
// on the DAC. 
//-----------------------------------------------------------------------------
void SetVoltage()
{
	//Declare local variables
	BYTE bEP = 0x01;		//Endpoint 1 local variable
	UINT uNumBytes = 4;		//Number of bytes to read
	BYTE pData[4];			//Voltage to read

	//Read the voltage from the FIFO
	FIFORead(bEP, uNumBytes, pData);

	//Set the voltage on the DAC
}


//-----------------------------------------------------------------------------
// SetLaser
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// Reads the boolean from the FIFO and sets the value
// on the Laser bit. 
//-----------------------------------------------------------------------------
void SetLaser()
{
	//Declare local variables
	BYTE bEP = 0x01;		//Endpoint 1 local variable
	UINT uNumBytes = 1;		//Number of bytes to read
	BYTE bState = 0x00;		//State of the Laser to read

	//Read the state from the FIFO
	FIFORead(bEP, uNumBytes, &bState);

	//Set the bit for the Laser
	UWRITE_BYTE(bLaser, bState);
}


//-----------------------------------------------------------------------------
// PulseMotor
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// Reads the motor bit and direction bit from the FIFO 
// and pulses the motor driver. 
//-----------------------------------------------------------------------------
void PulseMotor()
{
	//Declare local variables
	BYTE bEP = 0x01;			//Endpoint 1 local variable
	UINT uNumBytes = 1;			//Number of bytes to read
	BYTE bMotor = MOTOR_X;		//Motor bit to read
	BYTE bDir = DIR_FWD;		//Direction bit to read
	BYTE bMtrStep = bMtr1Step;	//Motor to step
	BYTE bMtrDir = bMtr1Dir;	//Direction to step
	UINT uDelay = 12500;		//Delay counter

	//Read the Motor code from the FIFO
	FIFORead(bEP, uNumBytes, &bMotor);

	//Read the Direction code from the FIFO
	FIFORead(bEP, uNumBytes, &bDir);

	//Setup the Motor register
	if (bMotor == MOTOR_Y)
	{
		bMtrStep = bMtr2Step;
		bMtrDir = bMtr2Dir;
	}

	//Enable the Motor driver
	UWRITE_BYTE(bMtrDrvrEn, 0x01);

	//Set the Direction bit
	UWRITE_BYTE(bMtrDir, bDir);

	//Set the motor bit to high
	UWRITE_BYTE(bMtrStep, 0x01);

	//Wait 500 us
	while (uDelay--);
	
	//Set the motor bit to low
	UWRITE_BYTE(bMtrStep, 0x00);
}



//-----------------------------------------------------------------------------
// Endpoint2
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// Reads the value from the FIFO to get the OP_READ_CURRENT
// operation code and returns the current value.
//-----------------------------------------------------------------------------
void Endpoint2()
{
	//Declare local variables
	BYTE bEP = 0x02;		//Endpoint 2 local variable
	UINT uNumBytes = 1;		//Number of bytes to read
	BYTE bOp = 0x00;		//Operation to perform

	//Read the operation code from the FIFO
	FIFORead(bEP, uNumBytes, &bOp);

	//If the operation code is OP_GET_CURRENT,
	//get the current and write it to the FIFO
	if (bOp == OP_GET_CURRENT)
		ReadCurrent();
}


//-----------------------------------------------------------------------------
// ReadCurrent
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// Reads the value from the FIFO to get the OP_GET_CURRENT
// operation code and returns the current value.
//-----------------------------------------------------------------------------
void ReadCurrent()
{
	//Declare local variables
	BYTE bEP = 0x02;		//Endpoint 2 local variable
	UINT uNumBytes = 4;		//Number of bytes to write
	BYTE pData[4];			//Data to write to FIFO

	//Get the data from the ADC

	//Write the data to the FIFO
	FIFOWrite(bEP, uNumBytes, pData);
}


//-----------------------------------------------------------------------------
// Support Functions
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// USBReset
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
// - Initialize the global Device Status structure (all zeros)
// - Resets all endpoints
//-----------------------------------------------------------------------------
void USBReset ()
{
   BYTE i, bPower = 0;
   BYTE * pDevStatus;

  // Reset device status structure to all zeros (undefined)
   pDevStatus = (BYTE *)&gDeviceStatus;
   for (i=0;i<sizeof(DEVICE_STATUS);i++)
   {
      *pDevStatus++ = 0x00;
   }

   // Set device state to default
   gDeviceStatus.bDevState = DEV_DEFAULT;

   // REMOTE_WAKEUP_SUPPORT and SELF_POWERED_SUPPORT
   // defined in file "usb_desc.h"
   gDeviceStatus.bRemoteWakeupSupport = REMOTE_WAKEUP_SUPPORT;
   gDeviceStatus.bSelfPoweredStatus = SELF_POWERED_SUPPORT;

   // Reset all endpoints

   // Reset Endpoint0
   gEp0Status.bEpState = EP_IDLE;         // Reset Endpoint0 state
   gEp0Status.bEp = 0;                    // Set endpoint number
   gEp0Status.uMaxP = EP0_MAXP;           // Set maximum packet size

   // Reset Endpoint1 IN
   gEp1InStatus.bEpState = EP_HALTED;     // Reset state
   gEp1InStatus.uNumBytes = 0;            // Reset byte counter

   // Reset Endpoint2 OUT
   gEp2OutStatus.bEpState = EP_HALTED;    // Reset state
   gEp2OutStatus.uNumBytes = 0;           // Reset byte counter

   // Get Suspend enable/disable status. If enabled, prepare temporary
   // variable bPower.
   if (SUSPEND_ENABLE)
   {
      bPower = 0x01;                      // Set bit0 (Suspend Enable)
   }

   // Get ISO Update enable/disable status. If enabled, prepare temporary
   // variable bPower.
   if (ISO_UPDATE_ENABLE)
   {
      bPower |= 0x80;                     // Set bit7 (ISO Update Enable)
   }

   UWRITE_BYTE(POWER, bPower);
}



//-----------------------------------------------------------------------------
// Endpoint0
//-----------------------------------------------------------------------------
//
// Return Value : None
// Parameters   : None
//
//-----------------------------------------------------------------------------
void Endpoint0()
{
   BYTE bTemp = 0;
   BYTE bCsr1, uTxBytes;

   UWRITE_BYTE(INDEX, 0);                 // Target ep0
   UREAD_BYTE(E0CSR, bCsr1);

   // Handle Setup End
   if (bCsr1 & rbSUEND)                   // Check for setup end
   {                                      // Indicate setup end serviced
      UWRITE_BYTE(E0CSR, rbSSUEND);
      gEp0Status.bEpState = EP_IDLE;      // ep0 state to idle
      M_State = ST_IDLE_DEV;              // ported from usb_file.c
   }

   // Handle sent stall
   if (bCsr1 & rbSTSTL)                   // If last state requested a stall
   {                                      // Clear Sent Stall bit (STSTL)
      UWRITE_BYTE(E0CSR, 0);
      gEp0Status.bEpState = EP_IDLE;      // ep0 state to idle
      M_State = ST_IDLE_DEV;              // ported from usb_file.c
   }

   // Handle incoming packet
   if (bCsr1 & rbOPRDY)
   {
      // Read the 8-byte command from Endpoint0 FIFO
      FIFORead(0, 8, (BYTE*)&gEp0Command);

      // Byte-swap the wIndex field
      bTemp = gEp0Command.wIndex.c[1];
      gEp0Command.wIndex.c[1] = gEp0Command.wIndex.c[0];
      gEp0Command.wIndex.c[0] = bTemp;

      // Byte-swap the wValue field
      bTemp = gEp0Command.wValue.c[1];
      gEp0Command.wValue.c[1] = gEp0Command.wValue.c[0];
      gEp0Command.wValue.c[0] = bTemp;

      // Byte-swap the wLength field
      bTemp = gEp0Command.wLength.c[1];
      gEp0Command.wLength.c[1] = gEp0Command.wLength.c[0];
      gEp0Command.wLength.c[0] = bTemp;

      // Decode received command
      switch (gEp0Command.bmRequestType & CMD_MASK_COMMON)
      {
         case  CMD_STD_DEV_OUT:           // Standard device requests
            // Decode standard OUT request
            switch (gEp0Command.bRequest)
            {
               case SET_ADDRESS:
                  SetAddressRequest();
                  break;
               case SET_FEATURE:
                  SetFeatureRequest();
                  break;
               case CLEAR_FEATURE:
                  ClearFeatureRequest();
                  break;
               case SET_CONFIGURATION:
                  SetConfigurationRequest();
                  break;
               case SET_INTERFACE:
                  SetInterfaceRequest();
                  break;
               // All other OUT requests not supported
               case SET_DESCRIPTOR:
               default:
                  gEp0Status.bEpState = EP_ERROR;
                  break;
            }
            break;

         // Decode standard IN request
         case CMD_STD_DEV_IN:
            switch (gEp0Command.bRequest)
            {
               case GET_STATUS:
                  GetStatusRequest();
                  break;
               case GET_DESCRIPTOR:
                  GetDescriptorRequest();
                  break;
               case GET_CONFIGURATION:
                  GetConfigurationRequest();
                  break;
               case GET_INTERFACE:
                  GetInterfaceRequest();
                  break;
               // All other IN requests not supported
               case SYNCH_FRAME:
               default:
                  gEp0Status.bEpState = EP_ERROR;
                  break;
            }
            break;
         // All other requests not supported
         default:
            gEp0Status.bEpState = EP_ERROR;
      }

      // Write E0CSR according to the result of the serviced out packet
      bTemp = rbSOPRDY;
      if (gEp0Status.bEpState == EP_ERROR)
      {
         bTemp |= rbSDSTL;                // Error condition handled
                                          // with STALL
         gEp0Status.bEpState = EP_IDLE;   // Reset state to idle
      }

      UWRITE_BYTE(E0CSR, bTemp);
   }

   bTemp = 0;                             // Reset temporary variable

   // If state is transmit, call transmit routine
   if (gEp0Status.bEpState == EP_TX)
   {
      // Check the number of bytes ready for transmit
      // If less than the maximum packet size, packet will
      // not be of the maximum size
      if (gEp0Status.uNumBytes <= EP0_MAXP)
      {
         uTxBytes = gEp0Status.uNumBytes;
         gEp0Status.uNumBytes = 0;        // update byte counter
         bTemp |= rbDATAEND;              // This will be the last
                                          // packet for this transfer
         gEp0Status.bEpState = EP_IDLE;   // Reset endpoint state
      }

      // Otherwise, transmit maximum-length packet
      else
      {
         uTxBytes = EP0_MAXP;
         gEp0Status.uNumBytes -= EP0_MAXP;// update byte counter
      }

      // Load FIFO
      FIFOWrite(0, uTxBytes, (BYTE*)gEp0Status.pData);

      // Update data pointer
      gEp0Status.pData = (BYTE*)gEp0Status.pData + uTxBytes;

      // Update Endpoint0 Control/Status register
      bTemp |= rbINPRDY;                  // Always transmit a packet
                                          // when this routine is called
                                          // (may be zero-length)

      UWRITE_BYTE(E0CSR, bTemp);          // Write to Endpoint0 Control/Status
   }
}
