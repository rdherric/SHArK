//-----------------------------------------------------------------------------
// USB_Configuration.h
//-----------------------------------------------------------------------------
//
// Program Description:
//
// Header file for usb firmware. Includes device configuration details.
// Constants defined in this file should be modified when changes are
// made to the firmware, including changes to endpoints, interfaces,
// packet sizes, or feature selections (remote wakeup, suspend, etc.).
//
// FID:            32X000010
// Target:         C8051F32x
// Tool chain:     Keil C51 7.50 / Keil EVAL C51
//                 Silicon Laboratories IDE version 2.6

#ifndef  USB_CONFIGURATION_H
#define  USB_CONFIGURATION_H

//-----------------------------------------------------------------------------
// Global Constants
//-----------------------------------------------------------------------------



//-----------------------------------------------------------------------------
// Device Details
//-----------------------------------------------------------------------------

#define NUM_CFG 1                         // Total number of defined
                                          // configurations

#define MAX_IF_DSC 1                      // Maximum number of interface
                                          // descriptors for any defined
                                          // configuration

#define MAX_IF 1                          // Maximum number of interfaces
                                          // for any defined configuration

#define CFG1_IF_DSC 1                     // Total number of interface
                                          // descriptors for configuration1

#define CFG1_EP_DSC 2                     // Total number of endpoint
                                          // descriptors for configuration1

#define REMOTE_WAKEUP_SUPPORT OFF         // This should be "ON" if the
                                          // device is capable of remote
                                          // wakeup (this does not mean that
                                          // remote wakeup is enabled)
                                          // Otherwise "OFF"

#define SELF_POWERED_SUPPORT ON           // This should be "ON" if the
                                          // device is self-powered;
                                          // "OFF" if the device
                                          // is bus-powered.

#define SUSPEND_ENABLE OFF                // This should be "ON" if the
                                          // device should respond to suspend
                                          // signaling on the bus.
                                          // Otherwise "OFF"

#define ISO_UPDATE_ENABLE OFF             // This should be "ON" if the ISO
                                          // Update feature should be turned
                                          // on for all ISO endpoints. It
                                          // should be "OFF" if the ISO
                                          // update feature should not be
                                          // enabled, or if no ISO endpoints
                                          // will be configured

// Endpoint buffer / packet sizes
// These constants should match the desired maximum packet size for each
// endpoint. Note that the size must not exceed the size of the FIFO
// allocated to the target endpoint. This size will depend on the configuration
// of the endpoint FIFO (split mode and double buffer options), as described
// in the device datasheet.

#define EP0_MAXP       64                 // Endpoint0 maximum packet size

#define EP1_IN_MAXP    64                 // Endpoint1 IN maximum packet size
#define EP1_OUT_MAXP   64                 // Endpoint1 OUT maximum packet size

#define EP2_IN_MAXP    64                 // Endpoint1 IN maximum packet size
#define EP2_OUT_MAXP   64                 // Endpoint1 OUT maximum packet size

#endif   //USB_CONFIGURATION_H
