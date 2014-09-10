//-----------------------------------------------------------------------------
// Interrupts.h
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

//  Machine States
#define ST_WAIT_DEV 0x01    // Wait for application to open a device instance
#define ST_IDLE_DEV 0x02    // Device is open, wait for Setup Message from host
#define ST_ERROR    0x80    // Error state

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


//-----------------------------------------------------------------------------
// Function Prototypes
//-----------------------------------------------------------------------------
void USBReset();
void Endpoint0();
void Endpoint1();
void SetVoltage();
void SetLaser();
void PulseMotor();
void Endpoint2();
void ReadCurrent();