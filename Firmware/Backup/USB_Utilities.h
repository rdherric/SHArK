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

//-----------------------------------------------------------------------------
// Function prototypes
//-----------------------------------------------------------------------------
BYTE HaltEndpoint (UINT uEp);
BYTE EnableEndpoint (UINT uEp);
BYTE GetEpStatus (UINT uEp);
BYTE SetConfiguration(BYTE SelectConfig);
BYTE SetInterface(PIF_STATUS pIfStatus);
void FIFORead (BYTE bEp, UINT uNumBytes, BYTE * pData);
void FIFOWrite (BYTE bEp, UINT uNumBytes, BYTE * pData);

