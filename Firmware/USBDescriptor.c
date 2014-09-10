//-----------------------------------------------------------------------------
// USBDescriptor.c
//-----------------------------------------------------------------------------
//
// Program Description:
//
// Source file for USB firmware. Includes descriptor data.
//
// Target:         C8051F32x
// Tool chain:     Keil C51 7.50 / Keil EVAL C51
//                 Silicon Laboratories IDE version 2.6
// Project Name:   SHArK

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
#include <compiler_defs.h>
#include "USBRegister.h"
#include "USBDescriptor.h"


//-----------------------------------------------------------------------------
// Descriptor Declarations
//-----------------------------------------------------------------------------
const device_descriptor DeviceDesc =
{
   18,                  // bLength
   0x01,                // bDescriptorType
   { 0x1001 },          // bcdUSB
   0x00,                // bDeviceClass
   0x00,                // bDeviceSubClass
   0x00,                // bDeviceProtocol
   EP0_PACKET_SIZE,     // bMaxPacketSize0
   { 0x4E22 },          // idVendor
   { 0x0001 },          // idProduct
   { 0x0000 },          // bcdDevice
   0x01,                // iManufacturer
   0x02,                // iProduct
   0x00,                // iSerialNumber
   0x01                 // bNumConfigurations
}; //end of DeviceDesc


const configuration_descriptor ConfigDesc =
{
   0x09,                // Length
   0x02,                // Type
   { 0x2000 },          // Totallength
   0x01,                // NumInterfaces
   0x01,                // bConfigurationValue
   0x00,                // iConfiguration
   0x80,                // bmAttributes
   0x0F                 // MaxPower
}; //end of ConfigDesc


const interface_descriptor InterfaceDesc =
{
   0x09,                // bLength
   0x04,                // bDescriptorType
   0x00,                // bInterfaceNumber
   0x00,                // bAlternateSetting
   0x02,                // bNumEndpoints
   0x00,                // bInterfaceClass
   0x00,                // bInterfaceSubClass
   0x00,                // bInterfaceProcotol
   0x00                 // iInterface
}; //end of InterfaceDesc


const endpoint_descriptor Endpoint1Desc =
{
   0x07,                // bLength
   0x05,                // bDescriptorType
   0x81,                // bEndpointAddress
   0x02,                // bmAttributes (Bulk)
   { EP1_PACKET_SIZE_LE },  // MaxPacketSize (LITTLE ENDIAN)
   10                   // bInterval
}; //end of Endpoint1Desc


const endpoint_descriptor Endpoint2Desc =
{
   0x07,                // bLength
   0x05,                // bDescriptorType
   0x02,                // bEndpointAddress
   0x02,                // bmAttributes (Bulk)
   { EP2_PACKET_SIZE_LE },  // MaxPacketSize (LITTLE ENDIAN)
   10                   // bInterval
}; //end of Endpoint2Desc


//-----------------------------------------------------------------------------
// String Declarations
//-----------------------------------------------------------------------------
#define STR0LEN 4

code const BYTE String0Desc[STR0LEN] =
{
   STR0LEN, 0x03, 0x09, 0x04
}; //end of String0Desc


#define STR1LEN sizeof("RDH2 Science, LLC") * 2

code const BYTE String1Desc[STR1LEN] =
{
   STR1LEN, 0x03,
   'R', 0,
   'D', 0,
   'H', 0,
   '2', 0,
   ' ', 0,
   'S', 0,
   'c', 0,
   'i', 0,
   'e', 0,
   'n', 0,
   'c', 0,
   'e', 0,
   ',', 0,
   ' ', 0,
   'L', 0,
   'L', 0,
   'C', 0
  }; //end of String1Desc


#define STR2LEN sizeof("SHArK Driver Board") * 2

code const BYTE String2Desc[STR2LEN] =
{
   STR2LEN, 0x03,
   'S', 0,
   'H', 0,
   'A', 0,
   'r', 0,
   'K', 0,
   ' ', 0,
   'D', 0,
   'r', 0,
   'i', 0,
   'v', 0,
   'e', 0,
   'r', 0,
   ' ', 0,
   'B', 0,
   'o', 0,
   'a', 0,
   'r', 0,
   'd', 0
}; //end of String2Desc


U8* const StringDescTable[] =
{
   String0Desc,
   String1Desc,
   String2Desc
};
