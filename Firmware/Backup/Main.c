//-----------------------------------------------------------------------------
// Main.c
//-----------------------------------------------------------------------------
//
// Program Description:
//
// Source file for USB firmware. Includes the main code for
// running the hardware.
//
// FID:            32X000011
// Target:         C8051F32x
// Tool chain:     Keil C51 7.50 / Keil EVAL C51
//                 Silicon Laboratories IDE version 2.6

//-----------------------------------------------------------------------------
// Includes
//-----------------------------------------------------------------------------
#include "compiler_defs.h"
#include "C8051F320_defs.h"
#include "USB_Registers.h"
#include "USB_Structs.h"
#include "Main.h"

//-----------------------------------------------------------------------------
// Global Variables
//-----------------------------------------------------------------------------
DEVICE_STATUS	gDeviceStatus;
EP_STATUS		gEp0Status;
EP0_COMMAND		gEp0Command;
EP_STATUS		gEp1InStatus;
EP_STATUS		gEp2OutStatus;



//main is the primary function in the firmware.  It
//initializes all of the functionality and then sits
//and waits for interrupts.
void main(void)
{
	//Diable the Watchdog timer
	PCA0MD &= ~0x40;

	//Initialize the ports
	InitPorts();

	//Initialize the oscillator
	InitSysClk();

	//Initialize USB0 
	InitUSB0();

	//Setup the VDD Monitor so that the firmware
	//isn't erased on a brownout
	InitVDDMonitor();

	//Enable the Global Interrupts
	EA = 1;

	//Enable USB0
	EnableUSB0();

	//Sit and wait for interrupts
	while (1);
}



//InitPorts initializes the ports on the MCU
//and gets them ready for use.
void InitPorts()
{
    //      Ports

	//	Configuring the Port registers.
	//	1.  Select the input mode (analog or digital) for all Port pins, 
	//		using the Port Input Mode register (PnMDIN)
	//	2.  Select the output mode (open-drain or push-pull) for all 
	//		Port pins, using the Port Output Mode register (PnMDOUT).
	//	3.  Select any pins to be skipped by the I/O Crossbar using 
	//		the Port Skip registers (PnSKIP).
	//	4.  Assign Port pins to desired peripherals (XBR0, XBR1).
	//	5.  Enable the Crossbar (XBARE = ‘1’).

    //            Port 0

    P0MDIN = 0xff;                //  No port 0 pins used as A/D
    P0MDOUT = 0xfb;				//	0 - open drain pin : 1 - push/pull
    P0SKIP = 0x07;                //  Last 3 bits are ipi
    
    //            Port 1
    
    P1MDIN = 0x7f;                //  port 1.7 pin used as A/D
    P1MDOUT = 0x7e;				//	0 - open drain pin : 1 - push/pull
    P1SKIP = 0x7f;                //  0 - skipped by Xbar : 1 - Not skipped
    
    //            Port 2
    
    P2MDIN = 0xff;                //  No port 2 pins used as A/D
    P2MDOUT = 0xcb;				  //  0 - open drain pin : 1 - push/pull
    P2SKIP = 0xff;                //  
    
    //            Port 3
    
    P2MDIN = 0x01;                //  Port 3.1 pin not used as A/D
    P2MDOUT = 0xca;
    P2SKIP = 0xff;                //  Last 3 bits are i2c
    
    //            General Port Initialization

    XBR0 = 0x07;                  //  Enable all serial ports
    XBR1 = 0x40;                  //  Weak pullups, XBARE enabled
}



//InitSysClk initializes the System Clock and 
//gets it ready for use.
void InitSysClk()
{
	//Variable declarations
	unsigned char delay = 100;

	//Configure the internal oscillator
	//for its maximum frequency
	OSCICN |= 0x03;

	//Select internal oscillator as input
	//to Clock Multiplier
	CLKMUL = 0x00;

	//Enable the Clock Multiplier
	CLKMUL |= 0x80;

	//Delay for a few us while the Clock
	//gets set up...
	while (delay--);

	//Initialize the Clock Multiplier
	CLKMUL |= 0xC0;

	//Wait for the multiplier to lock
	while(!(CLKMUL & 0x20));

	//Select the USB Clock
	CLKSEL |= USB_4X_CLOCK;

	//Select SYSCLK as Clock Multiplier / 2
	CLKSEL |= SYS_4X_DIV_2;
}



//InitUSB0 initializes the USB communication 
//through Endpoint 0 so that the hardware can 
//be enumerated
void InitUSB0()
{
	//Ansynchronous reset
	UWRITE_BYTE(POWER, 0x08);

	//Enable Endpoint 0 Interrupt
	UWRITE_BYTE(IN1IE, 0x0F);
	UWRITE_BYTE(OUT1IE, 0x0F);

	//Enable the Reset Interrupt
	UWRITE_BYTE(CMIE, 0x04);

	//Enable the transceiver
	USB0XCN = 0xC0;

	//Set the device speed
	USB0XCN |= FULL_SPEED;

	//Enable clock recovery -- single-step
	//mode disabled
	UWRITE_BYTE(CLKREC, 0x80);
	                          
	//Enable USB0 interrupts
	EIE1 |= 0x02;
}



//InitVDDMonitor initializes the VDD monitor so that
//the firmware doesn't get erased if a brownout 
//occurs.  
void InitVDDMonitor()
{
	RSTSRC |= 0x02;
}



//EnableUSB0 enables the USB communication through
//Endpoint 0 to allow the hardware to be enumerated.
void EnableUSB0()
{
	//Enable USB0 by clearing the USB
	//Inhibit bit -- suspend mode is 
	//disabled
	UWRITE_BYTE(POWER, 0x00);
}