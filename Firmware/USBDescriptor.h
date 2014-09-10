//-----------------------------------------------------------------------------
// USBDescriptor.h
//-----------------------------------------------------------------------------
//
// Header file for USB firmware.  Defines standard descriptor structures.
//
// Target:         C8051F32x
// Tool chain:     Keil C51 7.50 / Keil EVAL C51
//                 Silicon Laboratories IDE version 2.6
// Project Name:   SHArK

//-----------------------------------------------------------------------------
// Global Definitions
//-----------------------------------------------------------------------------

//------------------------------------------
// Standard Device Descriptor Type Defintion
//------------------------------------------
typedef code struct
{
	U8 bLength;					// Size of this Descriptor in Bytes
	U8 bDescriptorType;			// Descriptor Type (=1)
	U16 bcdUSB;					// USB Spec Release Number in BCD
	U8 bDeviceClass;			// Device Class Code
	U8 bDeviceSubClass;			// Device Subclass Code
	U8 bDeviceProtocol;			// Device Protocol Code
	U8 bMaxPacketSize0;			// Maximum Packet Size for EP0
	U16 idVendor;				// Vendor ID
	U16 idProduct;				// Product ID
	U16 bcdDevice;				// Device Release Number in BCD
	U8 iManufacturer;			// Index of String Desc for Manufacturer
	U8 iProduct;				// Index of String Desc for Product
	U8 iSerialNumber;			// Index of String Desc for SerNo
	U8 bNumConfigurations;		// Number of possible Configurations
} device_descriptor;


//--------------------------------------------------
// Standard Configuration Descriptor Type Definition
//--------------------------------------------------
typedef code struct
{
	U8 bLength;					// Size of this Descriptor in Bytes
	U8 bDescriptorType;			// Descriptor Type (=2)
	U16 wTotalLength;			// Total Length of Data for this Conf
	U8 bNumInterfaces;			// # of Interfaces supported by Conf
	U8 bConfigurationValue;		// Designator Value for *this* Conf
	U8 iConfiguration;			// Index of String Desc for this Conf
	U8 bmAttributes;			// Configuration Characteristics
	U8 bMaxPower;				// Max. Power Consumption in Conf (*2mA)
} configuration_descriptor;


//----------------------------------------------
// Standard Interface Descriptor Type Definition
//----------------------------------------------
typedef code struct
{
	U8 bLength;					// Size of this Descriptor in Bytes
	U8 bDescriptorType;			// Descriptor Type (=4)
	U8 bInterfaceNumber;		// Number of *this* Interface (0..)
	U8 bAlternateSetting;		// Alternative for this Interface
	U8 bNumEndpoints;			// No of EPs used by this IF (excl. EP0)
	U8 bInterfaceClass;			// Interface Class Code
	U8 bInterfaceSubClass;		// Interface Subclass Code
	U8 bInterfaceProtocol;		// Interface Protocol Code
	U8 iInterface;				// Index of String Desc for Interface
} interface_descriptor;


//---------------------------------------------
// Standard Endpoint Descriptor Type Definition
//---------------------------------------------
typedef code struct
{
	U8 bLength;					// Size of this Descriptor in Bytes
	U8 bDescriptorType;			// Descriptor Type (=5)
	U8 bEndpointAddress;		// Endpoint Address (Number + Direction)
	U8 bmAttributes;			// Endpoint Attributes (Transfer Type)
	U16 wMaxPacketSize;			// Max. Endpoint Packet Size
	U8 bInterval;				// Polling Interval (Interrupt) ms
} endpoint_descriptor;


//-----------------------------
// Setup Packet Type Definition
//-----------------------------
typedef struct
{
   U8 bmRequestType;			// Request recipient, type, direction
   U8 bRequest;					// Specific standard request number
   U16 wValue;					// varies according to request
   U16 wIndex;					// varies according to request
   U16 wLength;					// Number of bytes to transfer
} setup_buffer;
