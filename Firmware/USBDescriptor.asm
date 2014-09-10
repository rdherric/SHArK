;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Oct 28 02:55:48 2010
;--------------------------------------------------------
	.module USBDescriptor
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _StringDescTable
	.globl _String2Desc
	.globl _String1Desc
	.globl _String0Desc
	.globl _Endpoint2Desc
	.globl _Endpoint1Desc
	.globl _InterfaceDesc
	.globl _ConfigDesc
	.globl _DeviceDesc
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$DeviceDesc$0$0 == .
_DeviceDesc:
	.db #0x12
	.db #0x01
	.byte #0x01,#0x10
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x40
	.byte #0x22,#0x4E
	.byte #0x01,#0x00
	.byte #0x00,#0x00
	.db #0x01
	.db #0x02
	.db #0x00
	.db #0x01
G$ConfigDesc$0$0 == .
_ConfigDesc:
	.db #0x09
	.db #0x02
	.byte #0x00,#0x20
	.db #0x01
	.db #0x01
	.db #0x00
	.db #0x80
	.db #0x0F
G$InterfaceDesc$0$0 == .
_InterfaceDesc:
	.db #0x09
	.db #0x04
	.db #0x00
	.db #0x00
	.db #0x02
	.db #0x00
	.db #0x00
	.db #0x00
	.db #0x00
G$Endpoint1Desc$0$0 == .
_Endpoint1Desc:
	.db #0x07
	.db #0x05
	.db #0x81
	.db #0x02
	.byte #0x00,#0x40
	.db #0x0A
G$Endpoint2Desc$0$0 == .
_Endpoint2Desc:
	.db #0x07
	.db #0x05
	.db #0x02
	.db #0x02
	.byte #0x00,#0x40
	.db #0x0A
G$String0Desc$0$0 == .
_String0Desc:
	.db #0x04
	.db #0x03
	.db #0x09
	.db #0x04
G$String1Desc$0$0 == .
_String1Desc:
	.db #0x24
	.db #0x03
	.db #0x52
	.db #0x00
	.db #0x44
	.db #0x00
	.db #0x48
	.db #0x00
	.db #0x32
	.db #0x00
	.db #0x20
	.db #0x00
	.db #0x53
	.db #0x00
	.db #0x63
	.db #0x00
	.db #0x69
	.db #0x00
	.db #0x65
	.db #0x00
	.db #0x6E
	.db #0x00
	.db #0x63
	.db #0x00
	.db #0x65
	.db #0x00
	.db #0x2C
	.db #0x00
	.db #0x20
	.db #0x00
	.db #0x4C
	.db #0x00
	.db #0x4C
	.db #0x00
	.db #0x43
	.db #0x00
G$String2Desc$0$0 == .
_String2Desc:
	.db #0x26
	.db #0x03
	.db #0x53
	.db #0x00
	.db #0x48
	.db #0x00
	.db #0x41
	.db #0x00
	.db #0x72
	.db #0x00
	.db #0x4B
	.db #0x00
	.db #0x20
	.db #0x00
	.db #0x44
	.db #0x00
	.db #0x72
	.db #0x00
	.db #0x69
	.db #0x00
	.db #0x76
	.db #0x00
	.db #0x65
	.db #0x00
	.db #0x72
	.db #0x00
	.db #0x20
	.db #0x00
	.db #0x42
	.db #0x00
	.db #0x6F
	.db #0x00
	.db #0x61
	.db #0x00
	.db #0x72
	.db #0x00
	.db #0x64
	.db #0x00
G$StringDescTable$0$0 == .
_StringDescTable:
	.byte _String0Desc,(_String0Desc >> 8),#0x80
	.byte _String1Desc,(_String1Desc >> 8),#0x80
	.byte _String2Desc,(_String2Desc >> 8),#0x80
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
