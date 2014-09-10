;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Oct 28 02:55:48 2010
;--------------------------------------------------------
	.module USBStandardRequests
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ZERO_PACKET
	.globl _ONES_PACKET
	.globl _SPIEN
	.globl _TXBMT
	.globl _NSSMD0
	.globl _NSSMD1
	.globl _RXOVRN
	.globl _MODF
	.globl _WCOL
	.globl _SPIF
	.globl _AD0CM0
	.globl _AD0CM1
	.globl _AD0CM2
	.globl _AD0WINT
	.globl _AD0BUSY
	.globl _AD0INT
	.globl _AD0TM
	.globl _AD0EN
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _T2XCLK
	.globl _TR2
	.globl _T2SPLIT
	.globl _T2SOF
	.globl _TF2LEN
	.globl _TF2L
	.globl _TF2H
	.globl _SI
	.globl _ACK
	.globl _ARBLOST
	.globl _ACKRQ
	.globl _STO
	.globl _STA
	.globl _TXMODE
	.globl _MASTER
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS0
	.globl _PT2
	.globl _PSPI0
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _ESPI0
	.globl _EA
	.globl _RI0
	.globl _TI0
	.globl _RB80
	.globl _TB80
	.globl _REN0
	.globl _MCE0
	.globl _S0MODE
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _VDM0CN
	.globl _PCA0CPH4
	.globl _PCA0CPL4
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _P3MDIN
	.globl _P2MDIN
	.globl _P1MDIN
	.globl _P0MDIN
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPH3
	.globl _PCA0CPL3
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _IT01CF
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _USB0XCN
	.globl _P2SKIP
	.globl _P1SKIP
	.globl _P0SKIP
	.globl _REF0CN
	.globl _PSW
	.globl _TMR2H
	.globl _TMR2L
	.globl _TMR2RLH
	.globl _TMR2RLL
	.globl _REG0CN
	.globl _TMR2CN
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0DAT
	.globl _SMB0CF
	.globl _SMB0CN
	.globl _ADC0H
	.globl _ADC0L
	.globl _ADC0CF
	.globl _AMX0P
	.globl _AMX0N
	.globl _CLKMUL
	.globl _IP
	.globl _FLKEY
	.globl _FLSCL
	.globl _OSCICL
	.globl _OSCICN
	.globl _OSCXCN
	.globl _P3
	.globl _EMI0CN
	.globl _CLKSEL
	.globl _IE
	.globl _P3MDOUT
	.globl _P2MDOUT
	.globl _P1MDOUT
	.globl _P0MDOUT
	.globl _SPI0DAT
	.globl _SPIDAT
	.globl _SPI0CKR
	.globl _SPICKR
	.globl _SPI0CFG
	.globl _SPICFG
	.globl _P2
	.globl _CPT0MX
	.globl _CPT1MX
	.globl _CPT0MD
	.globl _CPT1MD
	.globl _CPT0CN
	.globl _CPT1CN
	.globl _SBUF0
	.globl _SCON0
	.globl _USB0DAT
	.globl _USB0ADR
	.globl _TMR3H
	.globl _TMR3L
	.globl _TMR3RLH
	.globl _TMR3RLL
	.globl _TMR3CN
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _Get_Status
	.globl _Clear_Feature
	.globl _Set_Feature
	.globl _Set_Address
	.globl _Get_Descriptor
	.globl _Get_Configuration
	.globl _Set_Configuration
	.globl _Get_Interface
	.globl _Set_Interface
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P0$0$0==.
_P0::
	.ds 1
G$SP$0$0==.
_SP::
	.ds 1
G$DPL$0$0==.
_DPL::
	.ds 1
G$DPH$0$0==.
_DPH::
	.ds 1
G$PCON$0$0==.
_PCON::
	.ds 1
G$TCON$0$0==.
_TCON::
	.ds 1
G$TMOD$0$0==.
_TMOD::
	.ds 1
G$TL0$0$0==.
_TL0::
	.ds 1
G$TL1$0$0==.
_TL1::
	.ds 1
G$TH0$0$0==.
_TH0::
	.ds 1
G$TH1$0$0==.
_TH1::
	.ds 1
G$CKCON$0$0==.
_CKCON::
	.ds 1
G$PSCTL$0$0==.
_PSCTL::
	.ds 1
G$P1$0$0==.
_P1::
	.ds 1
G$TMR3CN$0$0==.
_TMR3CN::
	.ds 1
G$TMR3RLL$0$0==.
_TMR3RLL::
	.ds 1
G$TMR3RLH$0$0==.
_TMR3RLH::
	.ds 1
G$TMR3L$0$0==.
_TMR3L::
	.ds 1
G$TMR3H$0$0==.
_TMR3H::
	.ds 1
G$USB0ADR$0$0==.
_USB0ADR::
	.ds 1
G$USB0DAT$0$0==.
_USB0DAT::
	.ds 1
G$SCON0$0$0==.
_SCON0::
	.ds 1
G$SBUF0$0$0==.
_SBUF0::
	.ds 1
G$CPT1CN$0$0==.
_CPT1CN::
	.ds 1
G$CPT0CN$0$0==.
_CPT0CN::
	.ds 1
G$CPT1MD$0$0==.
_CPT1MD::
	.ds 1
G$CPT0MD$0$0==.
_CPT0MD::
	.ds 1
G$CPT1MX$0$0==.
_CPT1MX::
	.ds 1
G$CPT0MX$0$0==.
_CPT0MX::
	.ds 1
G$P2$0$0==.
_P2::
	.ds 1
G$SPICFG$0$0==.
_SPICFG::
	.ds 1
G$SPI0CFG$0$0==.
_SPI0CFG::
	.ds 1
G$SPICKR$0$0==.
_SPICKR::
	.ds 1
G$SPI0CKR$0$0==.
_SPI0CKR::
	.ds 1
G$SPIDAT$0$0==.
_SPIDAT::
	.ds 1
G$SPI0DAT$0$0==.
_SPI0DAT::
	.ds 1
G$P0MDOUT$0$0==.
_P0MDOUT::
	.ds 1
G$P1MDOUT$0$0==.
_P1MDOUT::
	.ds 1
G$P2MDOUT$0$0==.
_P2MDOUT::
	.ds 1
G$P3MDOUT$0$0==.
_P3MDOUT::
	.ds 1
G$IE$0$0==.
_IE::
	.ds 1
G$CLKSEL$0$0==.
_CLKSEL::
	.ds 1
G$EMI0CN$0$0==.
_EMI0CN::
	.ds 1
G$P3$0$0==.
_P3::
	.ds 1
G$OSCXCN$0$0==.
_OSCXCN::
	.ds 1
G$OSCICN$0$0==.
_OSCICN::
	.ds 1
G$OSCICL$0$0==.
_OSCICL::
	.ds 1
G$FLSCL$0$0==.
_FLSCL::
	.ds 1
G$FLKEY$0$0==.
_FLKEY::
	.ds 1
G$IP$0$0==.
_IP::
	.ds 1
G$CLKMUL$0$0==.
_CLKMUL::
	.ds 1
G$AMX0N$0$0==.
_AMX0N::
	.ds 1
G$AMX0P$0$0==.
_AMX0P::
	.ds 1
G$ADC0CF$0$0==.
_ADC0CF::
	.ds 1
G$ADC0L$0$0==.
_ADC0L::
	.ds 1
G$ADC0H$0$0==.
_ADC0H::
	.ds 1
G$SMB0CN$0$0==.
_SMB0CN::
	.ds 1
G$SMB0CF$0$0==.
_SMB0CF::
	.ds 1
G$SMB0DAT$0$0==.
_SMB0DAT::
	.ds 1
G$ADC0GTL$0$0==.
_ADC0GTL::
	.ds 1
G$ADC0GTH$0$0==.
_ADC0GTH::
	.ds 1
G$ADC0LTL$0$0==.
_ADC0LTL::
	.ds 1
G$ADC0LTH$0$0==.
_ADC0LTH::
	.ds 1
G$TMR2CN$0$0==.
_TMR2CN::
	.ds 1
G$REG0CN$0$0==.
_REG0CN::
	.ds 1
G$TMR2RLL$0$0==.
_TMR2RLL::
	.ds 1
G$TMR2RLH$0$0==.
_TMR2RLH::
	.ds 1
G$TMR2L$0$0==.
_TMR2L::
	.ds 1
G$TMR2H$0$0==.
_TMR2H::
	.ds 1
G$PSW$0$0==.
_PSW::
	.ds 1
G$REF0CN$0$0==.
_REF0CN::
	.ds 1
G$P0SKIP$0$0==.
_P0SKIP::
	.ds 1
G$P1SKIP$0$0==.
_P1SKIP::
	.ds 1
G$P2SKIP$0$0==.
_P2SKIP::
	.ds 1
G$USB0XCN$0$0==.
_USB0XCN::
	.ds 1
G$PCA0CN$0$0==.
_PCA0CN::
	.ds 1
G$PCA0MD$0$0==.
_PCA0MD::
	.ds 1
G$PCA0CPM0$0$0==.
_PCA0CPM0::
	.ds 1
G$PCA0CPM1$0$0==.
_PCA0CPM1::
	.ds 1
G$PCA0CPM2$0$0==.
_PCA0CPM2::
	.ds 1
G$PCA0CPM3$0$0==.
_PCA0CPM3::
	.ds 1
G$PCA0CPM4$0$0==.
_PCA0CPM4::
	.ds 1
G$ACC$0$0==.
_ACC::
	.ds 1
G$XBR0$0$0==.
_XBR0::
	.ds 1
G$XBR1$0$0==.
_XBR1::
	.ds 1
G$IT01CF$0$0==.
_IT01CF::
	.ds 1
G$EIE1$0$0==.
_EIE1::
	.ds 1
G$EIE2$0$0==.
_EIE2::
	.ds 1
G$ADC0CN$0$0==.
_ADC0CN::
	.ds 1
G$PCA0CPL1$0$0==.
_PCA0CPL1::
	.ds 1
G$PCA0CPH1$0$0==.
_PCA0CPH1::
	.ds 1
G$PCA0CPL2$0$0==.
_PCA0CPL2::
	.ds 1
G$PCA0CPH2$0$0==.
_PCA0CPH2::
	.ds 1
G$PCA0CPL3$0$0==.
_PCA0CPL3::
	.ds 1
G$PCA0CPH3$0$0==.
_PCA0CPH3::
	.ds 1
G$RSTSRC$0$0==.
_RSTSRC::
	.ds 1
G$B$0$0==.
_B::
	.ds 1
G$P0MDIN$0$0==.
_P0MDIN::
	.ds 1
G$P1MDIN$0$0==.
_P1MDIN::
	.ds 1
G$P2MDIN$0$0==.
_P2MDIN::
	.ds 1
G$P3MDIN$0$0==.
_P3MDIN::
	.ds 1
G$EIP1$0$0==.
_EIP1::
	.ds 1
G$EIP2$0$0==.
_EIP2::
	.ds 1
G$SPI0CN$0$0==.
_SPI0CN::
	.ds 1
G$PCA0L$0$0==.
_PCA0L::
	.ds 1
G$PCA0H$0$0==.
_PCA0H::
	.ds 1
G$PCA0CPL0$0$0==.
_PCA0CPL0::
	.ds 1
G$PCA0CPH0$0$0==.
_PCA0CPH0::
	.ds 1
G$PCA0CPL4$0$0==.
_PCA0CPL4::
	.ds 1
G$PCA0CPH4$0$0==.
_PCA0CPH4::
	.ds 1
G$VDM0CN$0$0==.
_VDM0CN::
	.ds 1
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
G$TF1$0$0==.
_TF1::
	.ds 1
G$TR1$0$0==.
_TR1::
	.ds 1
G$TF0$0$0==.
_TF0::
	.ds 1
G$TR0$0$0==.
_TR0::
	.ds 1
G$IE1$0$0==.
_IE1::
	.ds 1
G$IT1$0$0==.
_IT1::
	.ds 1
G$IE0$0$0==.
_IE0::
	.ds 1
G$IT0$0$0==.
_IT0::
	.ds 1
G$S0MODE$0$0==.
_S0MODE::
	.ds 1
G$MCE0$0$0==.
_MCE0::
	.ds 1
G$REN0$0$0==.
_REN0::
	.ds 1
G$TB80$0$0==.
_TB80::
	.ds 1
G$RB80$0$0==.
_RB80::
	.ds 1
G$TI0$0$0==.
_TI0::
	.ds 1
G$RI0$0$0==.
_RI0::
	.ds 1
G$EA$0$0==.
_EA::
	.ds 1
G$ESPI0$0$0==.
_ESPI0::
	.ds 1
G$ET2$0$0==.
_ET2::
	.ds 1
G$ES0$0$0==.
_ES0::
	.ds 1
G$ET1$0$0==.
_ET1::
	.ds 1
G$EX1$0$0==.
_EX1::
	.ds 1
G$ET0$0$0==.
_ET0::
	.ds 1
G$EX0$0$0==.
_EX0::
	.ds 1
G$PSPI0$0$0==.
_PSPI0::
	.ds 1
G$PT2$0$0==.
_PT2::
	.ds 1
G$PS0$0$0==.
_PS0::
	.ds 1
G$PT1$0$0==.
_PT1::
	.ds 1
G$PX1$0$0==.
_PX1::
	.ds 1
G$PT0$0$0==.
_PT0::
	.ds 1
G$PX0$0$0==.
_PX0::
	.ds 1
G$MASTER$0$0==.
_MASTER::
	.ds 1
G$TXMODE$0$0==.
_TXMODE::
	.ds 1
G$STA$0$0==.
_STA::
	.ds 1
G$STO$0$0==.
_STO::
	.ds 1
G$ACKRQ$0$0==.
_ACKRQ::
	.ds 1
G$ARBLOST$0$0==.
_ARBLOST::
	.ds 1
G$ACK$0$0==.
_ACK::
	.ds 1
G$SI$0$0==.
_SI::
	.ds 1
G$TF2H$0$0==.
_TF2H::
	.ds 1
G$TF2L$0$0==.
_TF2L::
	.ds 1
G$TF2LEN$0$0==.
_TF2LEN::
	.ds 1
G$T2SOF$0$0==.
_T2SOF::
	.ds 1
G$T2SPLIT$0$0==.
_T2SPLIT::
	.ds 1
G$TR2$0$0==.
_TR2::
	.ds 1
G$T2XCLK$0$0==.
_T2XCLK::
	.ds 1
G$CY$0$0==.
_CY::
	.ds 1
G$AC$0$0==.
_AC::
	.ds 1
G$F0$0$0==.
_F0::
	.ds 1
G$RS1$0$0==.
_RS1::
	.ds 1
G$RS0$0$0==.
_RS0::
	.ds 1
G$OV$0$0==.
_OV::
	.ds 1
G$F1$0$0==.
_F1::
	.ds 1
G$P$0$0==.
_P::
	.ds 1
G$CF$0$0==.
_CF::
	.ds 1
G$CR$0$0==.
_CR::
	.ds 1
G$CCF4$0$0==.
_CCF4::
	.ds 1
G$CCF3$0$0==.
_CCF3::
	.ds 1
G$CCF2$0$0==.
_CCF2::
	.ds 1
G$CCF1$0$0==.
_CCF1::
	.ds 1
G$CCF0$0$0==.
_CCF0::
	.ds 1
G$AD0EN$0$0==.
_AD0EN::
	.ds 1
G$AD0TM$0$0==.
_AD0TM::
	.ds 1
G$AD0INT$0$0==.
_AD0INT::
	.ds 1
G$AD0BUSY$0$0==.
_AD0BUSY::
	.ds 1
G$AD0WINT$0$0==.
_AD0WINT::
	.ds 1
G$AD0CM2$0$0==.
_AD0CM2::
	.ds 1
G$AD0CM1$0$0==.
_AD0CM1::
	.ds 1
G$AD0CM0$0$0==.
_AD0CM0::
	.ds 1
G$SPIF$0$0==.
_SPIF::
	.ds 1
G$WCOL$0$0==.
_WCOL::
	.ds 1
G$MODF$0$0==.
_MODF::
	.ds 1
G$RXOVRN$0$0==.
_RXOVRN::
	.ds 1
G$NSSMD1$0$0==.
_NSSMD1::
	.ds 1
G$NSSMD0$0$0==.
_NSSMD0::
	.ds 1
G$TXBMT$0$0==.
_TXBMT::
	.ds 1
G$SPIEN$0$0==.
_SPIEN::
	.ds 1
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
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$44$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:44: sfr P0       = 0x80;                   // Port0
	mov	_P0,#0x80
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$45$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:45: sfr SP       = 0x81;                   // Stack pointer
	mov	_SP,#0x81
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$46$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:46: sfr DPL      = 0x82;                   // Data pointer - Low byte
	mov	_DPL,#0x82
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$47$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:47: sfr DPH      = 0x83;                   // Data pointer - High byte
	mov	_DPH,#0x83
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$48$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:48: sfr PCON     = 0x87;                   // Power control register
	mov	_PCON,#0x87
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$49$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:49: sfr TCON     = 0x88;                   // Timer control register
	mov	_TCON,#0x88
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$50$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:50: sfr TMOD     = 0x89;                   // Timer mode register
	mov	_TMOD,#0x89
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$51$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:51: sfr TL0      = 0x8A;                   // Timer0 - Low byte
	mov	_TL0,#0x8A
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$52$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:52: sfr TL1      = 0x8B;                   // Timer1 - Low byte
	mov	_TL1,#0x8B
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$53$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:53: sfr TH0      = 0x8C;                   // Timer0 - High byte
	mov	_TH0,#0x8C
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$54$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:54: sfr TH1      = 0x8D;                   // Timer1 - High byte
	mov	_TH1,#0x8D
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$55$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:55: sfr CKCON    = 0x8E;                   // Clock control register
	mov	_CKCON,#0x8E
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$56$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:56: sfr PSCTL    = 0x8F;                   // Program store r/w control
	mov	_PSCTL,#0x8F
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$57$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:57: sfr P1       = 0x90;                   // Port1
	mov	_P1,#0x90
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$58$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:58: sfr TMR3CN   = 0x91;                   // Timer3 control register
	mov	_TMR3CN,#0x91
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$59$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:59: sfr TMR3RLL  = 0x92;                   // Timer3 reload register - Low byte
	mov	_TMR3RLL,#0x92
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$60$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:60: sfr TMR3RLH  = 0x93;                   // Timer3 reload register - High byte
	mov	_TMR3RLH,#0x93
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$61$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:61: sfr TMR3L    = 0x94;                   // Timer3 - Low byte
	mov	_TMR3L,#0x94
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$62$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:62: sfr TMR3H    = 0x95;                   // Timer3 - High byte
	mov	_TMR3H,#0x95
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$63$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:63: sfr USB0ADR  = 0x96;                   // USB0 address port
	mov	_USB0ADR,#0x96
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$64$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:64: sfr USB0DAT  = 0x97;                   // USB0 data port
	mov	_USB0DAT,#0x97
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$65$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:65: sfr SCON0    = 0x98;                   // UART0 control register
	mov	_SCON0,#0x98
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$66$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:66: sfr SBUF0    = 0x99;                   // UART0 data buffer register
	mov	_SBUF0,#0x99
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$67$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:67: sfr CPT1CN   = 0x9A;                   // Comparator1 control register
	mov	_CPT1CN,#0x9A
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$68$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:68: sfr CPT0CN   = 0x9B;                   // Comparator0 control register
	mov	_CPT0CN,#0x9B
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$69$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:69: sfr CPT1MD   = 0x9C;                   // Comparator1 mode selection register
	mov	_CPT1MD,#0x9C
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$70$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:70: sfr CPT0MD   = 0x9D;                   // Comparator0 mode selection register
	mov	_CPT0MD,#0x9D
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$71$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:71: sfr CPT1MX   = 0x9E;                   // Comparator1 mux selection register
	mov	_CPT1MX,#0x9E
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$72$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:72: sfr CPT0MX   = 0x9F;                   // Comparator0 mux selection register
	mov	_CPT0MX,#0x9F
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$73$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:73: sfr P2       = 0xA0;                   // Port2
	mov	_P2,#0xA0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$74$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:74: sfr SPICFG   = 0xA1;                   // SPI0 configuration register
	mov	_SPICFG,#0xA1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$75$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:75: sfr SPI0CFG  = 0xA1;                   // SPI0 configuration register
	mov	_SPI0CFG,#0xA1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$76$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:76: sfr SPICKR   = 0xA2;                   // SPI0 clock configuration register
	mov	_SPICKR,#0xA2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$77$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:77: sfr SPI0CKR  = 0xA2;                   // SPI0 clock configuration register
	mov	_SPI0CKR,#0xA2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$78$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:78: sfr SPIDAT   = 0xA3;                   // SPI0 data register
	mov	_SPIDAT,#0xA3
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$79$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:79: sfr SPI0DAT  = 0xA3;                   // SPI0 data register
	mov	_SPI0DAT,#0xA3
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$80$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:80: sfr P0MDOUT  = 0xA4;                   // Port0 output mode register
	mov	_P0MDOUT,#0xA4
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$81$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:81: sfr P1MDOUT  = 0xA5;                   // Port1 output mode register
	mov	_P1MDOUT,#0xA5
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$82$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:82: sfr P2MDOUT  = 0xA6;                   // Port2 output mode register
	mov	_P2MDOUT,#0xA6
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$83$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:83: sfr P3MDOUT  = 0xA7;                   // Port3 output mode register
	mov	_P3MDOUT,#0xA7
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$84$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:84: sfr IE       = 0xA8;                   // Interrupt enable
	mov	_IE,#0xA8
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$85$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:85: sfr CLKSEL   = 0xA9;                   // Clock source select
	mov	_CLKSEL,#0xA9
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$86$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:86: sfr EMI0CN   = 0xAA;                   // External Memory Interface Control
	mov	_EMI0CN,#0xAA
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$87$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:87: sfr P3       = 0xB0;                   // Port3
	mov	_P3,#0xB0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$88$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:88: sfr OSCXCN   = 0xB1;                   // External oscillator control
	mov	_OSCXCN,#0xB1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$89$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:89: sfr OSCICN   = 0xB2;                   // Internal oscillator control
	mov	_OSCICN,#0xB2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$90$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:90: sfr OSCICL   = 0xB3;                   // Internal oscillator calibration
	mov	_OSCICL,#0xB3
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$91$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:91: sfr FLSCL    = 0xB6;                   // Flash scale register
	mov	_FLSCL,#0xB6
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$92$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:92: sfr FLKEY    = 0xB7;                   // Flash lock & key register
	mov	_FLKEY,#0xB7
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$93$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:93: sfr IP       = 0xB8;                   // Interrupt priority
	mov	_IP,#0xB8
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$94$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:94: sfr CLKMUL   = 0xB9;                   // Clock multiplier control register
	mov	_CLKMUL,#0xB9
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$95$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:95: sfr AMX0N    = 0xBA;                   // ADC0 mux negative channel selection
	mov	_AMX0N,#0xBA
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$96$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:96: sfr AMX0P    = 0xBB;                   // ADC0 mux positive channel selection
	mov	_AMX0P,#0xBB
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$97$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:97: sfr ADC0CF   = 0xBC;                   // ADC0 configuration
	mov	_ADC0CF,#0xBC
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$98$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:98: sfr ADC0L    = 0xBD;                   // ADC0 data low
	mov	_ADC0L,#0xBD
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$99$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:99: sfr ADC0H    = 0xBE;                   // ADC0 data high
	mov	_ADC0H,#0xBE
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$100$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:100: sfr SMB0CN   = 0xC0;                   // SMBus control
	mov	_SMB0CN,#0xC0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$101$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:101: sfr SMB0CF   = 0xC1;                   // SMBus configuration
	mov	_SMB0CF,#0xC1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$102$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:102: sfr SMB0DAT  = 0xC2;                   // SMBus data
	mov	_SMB0DAT,#0xC2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$103$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:103: sfr ADC0GTL  = 0xC3;                   // ADC0 greater-than data low register
	mov	_ADC0GTL,#0xC3
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$104$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:104: sfr ADC0GTH  = 0xC4;                   // ADC0 greater-than data high register
	mov	_ADC0GTH,#0xC4
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$105$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:105: sfr ADC0LTL  = 0xC5;                   // ADC0 less-than data low register
	mov	_ADC0LTL,#0xC5
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$106$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:106: sfr ADC0LTH  = 0xC6;                   // ADC0 less-than data high register
	mov	_ADC0LTH,#0xC6
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$107$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:107: sfr TMR2CN   = 0xC8;                   // Timer2 control register
	mov	_TMR2CN,#0xC8
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$108$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:108: sfr REG0CN   = 0xC9;                   // Regulator control register
	mov	_REG0CN,#0xC9
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$109$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:109: sfr TMR2RLL  = 0xCA;                   // Timer2 reload register - Low byte
	mov	_TMR2RLL,#0xCA
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$110$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:110: sfr TMR2RLH  = 0xCB;                   // Timer2 reload register - High byte
	mov	_TMR2RLH,#0xCB
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$111$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:111: sfr TMR2L    = 0xCC;                   // Timer2 - Low byte
	mov	_TMR2L,#0xCC
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$112$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:112: sfr TMR2H    = 0xCD;                   // Timer2 - High byte
	mov	_TMR2H,#0xCD
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$113$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:113: sfr PSW      = 0xD0;                   // Program Status Word
	mov	_PSW,#0xD0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$114$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:114: sfr REF0CN   = 0xD1;                   // Voltage reference control register
	mov	_REF0CN,#0xD1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$115$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:115: sfr P0SKIP   = 0xD4;                   // Port0 crossbar skip register
	mov	_P0SKIP,#0xD4
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$116$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:116: sfr P1SKIP   = 0xD5;                   // Port1 crossbar skip register
	mov	_P1SKIP,#0xD5
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$117$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:117: sfr P2SKIP   = 0xD6;                   // Port2 crossbar skip register
	mov	_P2SKIP,#0xD6
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$118$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:118: sfr USB0XCN  = 0xD7;                   // USB0 tranceiver control register
	mov	_USB0XCN,#0xD7
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$119$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:119: sfr PCA0CN   = 0xD8;                   // PCA0 control register
	mov	_PCA0CN,#0xD8
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$120$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:120: sfr PCA0MD   = 0xD9;                   // PCA0 mode register
	mov	_PCA0MD,#0xD9
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$121$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:121: sfr PCA0CPM0 = 0xDA;                   // Capture/compare module0 mode
	mov	_PCA0CPM0,#0xDA
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$122$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:122: sfr PCA0CPM1 = 0xDB;                   // Capture/compare module1 mode
	mov	_PCA0CPM1,#0xDB
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$123$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:123: sfr PCA0CPM2 = 0xDC;                   // Capture/compare module2 mode
	mov	_PCA0CPM2,#0xDC
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$124$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:124: sfr PCA0CPM3 = 0xDD;                   // Capture/compare module3 mode
	mov	_PCA0CPM3,#0xDD
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$125$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:125: sfr PCA0CPM4 = 0xDE;                   // Capture/compare module4 mode
	mov	_PCA0CPM4,#0xDE
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$126$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:126: sfr ACC      = 0xE0;                   // Accumulator
	mov	_ACC,#0xE0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$127$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:127: sfr XBR0     = 0xE1;                   // Port I/O crossbar register 0
	mov	_XBR0,#0xE1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$128$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:128: sfr XBR1     = 0xE2;                   // Port I/O crossbar register 1
	mov	_XBR1,#0xE2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$129$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:129: sfr IT01CF   = 0xE4;                   // Int0/int1 configuration register
	mov	_IT01CF,#0xE4
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$130$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:130: sfr EIE1     = 0xE6;                   // Extended interrupt enable 1
	mov	_EIE1,#0xE6
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$131$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:131: sfr EIE2     = 0xE7;                   // Extended interrupt enable 2
	mov	_EIE2,#0xE7
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$132$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:132: sfr ADC0CN   = 0xE8;                   // ADC0 control register
	mov	_ADC0CN,#0xE8
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$133$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:133: sfr PCA0CPL1 = 0xE9;                   // Capture/compare module1 - Low byte
	mov	_PCA0CPL1,#0xE9
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$134$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:134: sfr PCA0CPH1 = 0xEA;                   // Capture/compare module1 - High byte
	mov	_PCA0CPH1,#0xEA
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$135$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:135: sfr PCA0CPL2 = 0xEB;                   // Capture/compare module2 - Low byte
	mov	_PCA0CPL2,#0xEB
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$136$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:136: sfr PCA0CPH2 = 0xEC;                   // Capture/compare module2 - High byte
	mov	_PCA0CPH2,#0xEC
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$137$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:137: sfr PCA0CPL3 = 0xED;                   // Capture/compare module3 - Low byte
	mov	_PCA0CPL3,#0xED
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$138$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:138: sfr PCA0CPH3 = 0xEE;                   // Capture/compare module3 - High byte
	mov	_PCA0CPH3,#0xEE
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$139$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:139: sfr RSTSRC   = 0xEF;                   // Reset source register
	mov	_RSTSRC,#0xEF
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$140$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:140: sfr B        = 0xF0;                   // B register
	mov	_B,#0xF0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$141$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:141: sfr P0MDIN   = 0xF1;                   // Port0 input mode register
	mov	_P0MDIN,#0xF1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$142$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:142: sfr P1MDIN   = 0xF2;                   // Port1 input mode register
	mov	_P1MDIN,#0xF2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$143$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:143: sfr P2MDIN   = 0xF3;                   // Port2 input mode register
	mov	_P2MDIN,#0xF3
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$144$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:144: sfr P3MDIN   = 0xF4;                   // Port3 input mode register
	mov	_P3MDIN,#0xF4
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$145$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:145: sfr EIP1     = 0xF6;                   // Extended interrupt priority 1
	mov	_EIP1,#0xF6
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$146$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:146: sfr EIP2     = 0xF7;                   // Extended interrupt priority 2
	mov	_EIP2,#0xF7
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$147$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:147: sfr SPI0CN   = 0xF8;                   // SPI0 control register
	mov	_SPI0CN,#0xF8
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$148$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:148: sfr PCA0L    = 0xF9;                   // PCA0 counter/timer - Low byte
	mov	_PCA0L,#0xF9
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$149$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:149: sfr PCA0H    = 0xFA;                   // PCA0 counter/timer - High byte
	mov	_PCA0H,#0xFA
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$150$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:150: sfr PCA0CPL0 = 0xFB;                   // Capture/compare module0 - Low byte
	mov	_PCA0CPL0,#0xFB
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$151$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:151: sfr PCA0CPH0 = 0xFC;                   // Capture/compare module0 - High byte
	mov	_PCA0CPH0,#0xFC
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$152$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:152: sfr PCA0CPL4 = 0xFD;                   // Capture/compare module4 - Low byte
	mov	_PCA0CPL4,#0xFD
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$153$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:153: sfr PCA0CPH4 = 0xFE;                   // Capture/compare module4 - High byte
	mov	_PCA0CPH4,#0xFE
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$154$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:154: sfr VDM0CN   = 0xFF;                   // Vdd monitor control
	mov	_VDM0CN,#0xFF
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$161$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:161: sbit TF1     = 0x8F;                   // Timer1 overflow flag
	setb	_TF1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$162$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:162: sbit TR1     = 0x8E;                   // Timer1 on/off control
	setb	_TR1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$163$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:163: sbit TF0     = 0x8D;                   // Timer0 overflow flag
	setb	_TF0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$164$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:164: sbit TR0     = 0x8C;                   // Timer0 on/off control
	setb	_TR0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$165$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:165: sbit IE1     = 0x8B;                   // Ext interrupt 1 edge flag
	setb	_IE1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$166$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:166: sbit IT1     = 0x8A;                   // Ext interrupt 1 type
	setb	_IT1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$167$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:167: sbit IE0     = 0x89;                   // Ext interrupt 0 edge flag
	setb	_IE0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$168$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:168: sbit IT0     = 0x88;                   // Ext interrupt 0 type
	setb	_IT0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$171$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:171: sbit S0MODE  = 0x9F;                   // Serial mode control bit 0
	setb	_S0MODE
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$173$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:173: sbit MCE0    = 0x9D;                   // Multiprocessor communication enable
	setb	_MCE0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$174$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:174: sbit REN0    = 0x9C;                   // Receive enable
	setb	_REN0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$175$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:175: sbit TB80    = 0x9B;                   // Transmit bit 8
	setb	_TB80
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$176$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:176: sbit RB80    = 0x9A;                   // Receive bit 8
	setb	_RB80
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$177$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:177: sbit TI0     = 0x99;                   // Transmit interrupt flag
	setb	_TI0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$178$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:178: sbit RI0     = 0x98;                   // Receive interrupt flag
	setb	_RI0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$181$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:181: sbit EA      = 0xAF;                   // Global interrupt enable
	setb	_EA
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$182$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:182: sbit ESPI0   = 0xAE;                   // SPI0 interrupt enable
	setb	_ESPI0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$183$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:183: sbit ET2     = 0xAD;                   // Timer2 interrupt enable
	setb	_ET2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$184$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:184: sbit ES0     = 0xAC;                   // UART0 interrupt enable
	setb	_ES0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$185$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:185: sbit ET1     = 0xAB;                   // Timer1 interrupt enable
	setb	_ET1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$186$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:186: sbit EX1     = 0xAA;                   // External interrupt 1 enable
	setb	_EX1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$187$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:187: sbit ET0     = 0xA9;                   // Timer0 interrupt enable
	setb	_ET0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$188$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:188: sbit EX0     = 0xA8;                   // External interrupt 0 enable
	setb	_EX0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$192$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:192: sbit PSPI0   = 0xBE;                   // SPI0 interrupt priority
	setb	_PSPI0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$193$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:193: sbit PT2     = 0xBD;                   // Timer2 priority
	setb	_PT2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$194$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:194: sbit PS0     = 0xBC;                   // UART0 priority
	setb	_PS0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$195$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:195: sbit PT1     = 0xBB;                   // Timer1 priority
	setb	_PT1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$196$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:196: sbit PX1     = 0xBA;                   // External interrupt 1 priority
	setb	_PX1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$197$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:197: sbit PT0     = 0xB9;                   // Timer0 priority
	setb	_PT0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$198$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:198: sbit PX0     = 0xB8;                   // External interrupt 0 priority
	setb	_PX0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$201$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:201: sbit MASTER  = 0xC7;                   // Master/slave indicator
	setb	_MASTER
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$202$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:202: sbit TXMODE  = 0xC6;                   // Transmit mode indicator
	setb	_TXMODE
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$203$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:203: sbit STA     = 0xC5;                   // Start flag
	setb	_STA
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$204$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:204: sbit STO     = 0xC4;                   // Stop flag
	setb	_STO
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$205$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:205: sbit ACKRQ   = 0xC3;                   // Acknowledge request
	setb	_ACKRQ
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$206$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:206: sbit ARBLOST = 0xC2;                   // Arbitration lost indicator
	setb	_ARBLOST
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$207$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:207: sbit ACK     = 0xC1;                   // Acknowledge flag
	setb	_ACK
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$208$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:208: sbit SI      = 0xC0;                   // SMBus interrupt flag
	setb	_SI
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$211$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:211: sbit TF2H    = 0xCF;                   // Timer2 high byte overflow flag
	setb	_TF2H
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$212$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:212: sbit TF2L    = 0xCE;                   // Timer2 low byte overflow flag
	setb	_TF2L
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$213$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:213: sbit TF2LEN  = 0xCD;                   // Timer2 low byte interrupt enable
	setb	_TF2LEN
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$214$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:214: sbit T2SOF   = 0xCC;                   // Timer2 start-of-frame capture enable
	setb	_T2SOF
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$215$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:215: sbit T2SPLIT = 0xCB;                   // Timer2 split mode enable
	setb	_T2SPLIT
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$216$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:216: sbit TR2     = 0xCA;                   // Timer2 on/off control
	setb	_TR2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$218$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:218: sbit T2XCLK  = 0xC8;                   // Timer2 external clock select
	setb	_T2XCLK
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$221$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:221: sbit CY      = 0xD7;                   // Carry flag
	setb	_CY
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$222$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:222: sbit AC      = 0xD6;                   // Auxiliary carry flag
	setb	_AC
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$223$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:223: sbit F0      = 0xD5;                   // User flag 0
	setb	_F0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$224$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:224: sbit RS1     = 0xD4;                   // Register bank select 1
	setb	_RS1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$225$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:225: sbit RS0     = 0xD3;                   // Register bank select 0
	setb	_RS0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$226$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:226: sbit OV      = 0xD2;                   // Overflow flag
	setb	_OV
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$227$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:227: sbit F1      = 0xD1;                   // User flag 1
	setb	_F1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$228$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:228: sbit P       = 0xD0;                   // Accumulator parity flag
	setb	_P
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$231$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:231: sbit CF      = 0xDF;                   // PCA0 counter overflow flag
	setb	_CF
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$232$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:232: sbit CR      = 0xDE;                   // PCA0 counter run control
	setb	_CR
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$234$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:234: sbit CCF4    = 0xDC;                   // PCA0 module4 capture/compare flag
	setb	_CCF4
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$235$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:235: sbit CCF3    = 0xDB;                   // PCA0 module3 capture/compare flag
	setb	_CCF3
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$236$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:236: sbit CCF2    = 0xDA;                   // PCA0 module2 capture/compare flag
	setb	_CCF2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$237$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:237: sbit CCF1    = 0xD9;                   // PCA0 module1 capture/compare flag
	setb	_CCF1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$238$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:238: sbit CCF0    = 0xD8;                   // PCA0 module0 capture/compare flag
	setb	_CCF0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$241$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:241: sbit AD0EN   = 0xEF;                   // ADC0 enable
	setb	_AD0EN
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$242$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:242: sbit AD0TM   = 0xEE;                   // ADC0 track mode
	setb	_AD0TM
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$243$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:243: sbit AD0INT  = 0xED;                   // ADC0 converision complete interrupt flag
	setb	_AD0INT
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$244$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:244: sbit AD0BUSY = 0xEC;                   // ADC0 busy flag
	setb	_AD0BUSY
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$245$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:245: sbit AD0WINT = 0xEB;                   // ADC0 window compare interrupt flag
	setb	_AD0WINT
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$246$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:246: sbit AD0CM2  = 0xEA;                   // ADC0 conversion mode select 2
	setb	_AD0CM2
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$247$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:247: sbit AD0CM1  = 0xE9;                   // ADC0 conversion mode select 1
	setb	_AD0CM1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$248$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:248: sbit AD0CM0  = 0xE8;                   // ADC0 conversion mode select 0
	setb	_AD0CM0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$251$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:251: sbit SPIF    = 0xFF;                   // SPI0 interrupt flag
	setb	_SPIF
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$252$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:252: sbit WCOL    = 0xFE;                   // SPI0 write collision flag
	setb	_WCOL
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$253$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:253: sbit MODF    = 0xFD;                   // SPI0 mode fault flag
	setb	_MODF
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$254$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:254: sbit RXOVRN  = 0xFC;                   // SPI0 rx overrun flag
	setb	_RXOVRN
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$255$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:255: sbit NSSMD1  = 0xFB;                   // SPI0 slave select mode 1
	setb	_NSSMD1
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$256$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:256: sbit NSSMD0  = 0xFA;                   // SPI0 slave select mode 0
	setb	_NSSMD0
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$257$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:257: sbit TXBMT   = 0xF9;                   // SPI0 transmit buffer empty
	setb	_TXBMT
	G$Set_Interface$0$0 ==.
	C$c8051F320.h$258$3$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:258: sbit SPIEN   = 0xF8;                   // SPI0 SPI enable
	setb	_SPIEN
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Status'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Get_Status$0$0 ==.
	C$USBStandardRequests.c$69$0$0 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:69: void Get_Status(void)                  
;	-----------------------------------------
;	 function Get_Status
;	-----------------------------------------
_Get_Status:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$USBStandardRequests.c$72$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:72: if (Setup.wValue.c[MSB] || Setup.wValue.c[LSB] ||
	mov	a,(_Setup + 0x0002)
	jnz	00101$
	mov	a,(_Setup + 0x0003)
	jnz	00101$
	C$USBStandardRequests.c$76$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:76: Setup.wLength.c[MSB]    || (Setup.wLength.c[LSB] != 2))                                               
	mov	a,(_Setup + 0x0006)
	jnz	00101$
	mov	a,#0x02
	cjne	a,(_Setup + 0x0007),00162$
	sjmp	00102$
00162$:
00101$:
	C$USBStandardRequests.c$78$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:78: Force_Stall();
	lcall	_Force_Stall
00102$:
	C$USBStandardRequests.c$82$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:82: switch(Setup.bmRequestType)                  
	mov	r2,_Setup
	cjne	r2,#0x80,00163$
	sjmp	00106$
00163$:
	cjne	r2,#0x81,00164$
	sjmp	00111$
00164$:
	cjne	r2,#0x82,00165$
	sjmp	00117$
00165$:
	ljmp	00134$
	C$USBStandardRequests.c$85$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:85: case OUT_DEVICE:                          
00106$:
	C$USBStandardRequests.c$86$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:86: if (Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])
	mov	a,(_Setup + 0x0004)
	jnz	00107$
	mov	a,(_Setup + 0x0005)
	jz	00108$
00107$:
	C$USBStandardRequests.c$89$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:89: Force_Stall();             
	lcall	_Force_Stall
	ljmp	00135$
00108$:
	C$USBStandardRequests.c$95$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:95: DataPtr = (BYTE*)&ZERO_PACKET;      
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$96$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:96: DataSize = 2;                       
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	C$USBStandardRequests.c$98$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:98: break;
	ljmp	00135$
	C$USBStandardRequests.c$101$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:101: case OUT_INTERFACE:                       
00111$:
	C$USBStandardRequests.c$103$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:103: if ((USB_State != DEV_CONFIGURED) ||
	mov	a,#0x04
	cjne	a,_USB_State,00112$
	C$USBStandardRequests.c$104$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:104: Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])                                                
	mov	a,(_Setup + 0x0004)
	jnz	00112$
	mov	a,(_Setup + 0x0005)
	jz	00113$
00112$:
	C$USBStandardRequests.c$107$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:107: Force_Stall();                      
	lcall	_Force_Stall
	ljmp	00135$
00113$:
	C$USBStandardRequests.c$112$3$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:112: DataPtr = (BYTE*)&ZERO_PACKET;      
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$113$3$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:113: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	C$USBStandardRequests.c$115$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:115: break;
	ljmp	00135$
	C$USBStandardRequests.c$118$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:118: case OUT_ENDPOINT:                        
00117$:
	C$USBStandardRequests.c$120$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:120: if ((USB_State != DEV_CONFIGURED) || Setup.wIndex.c[MSB])                   
	mov	a,#0x04
	cjne	a,_USB_State,00130$
	mov	a,(_Setup + 0x0004)
	jz	00131$
00130$:
	C$USBStandardRequests.c$122$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:122: Force_Stall();              // otherwise return stall to host
	lcall	_Force_Stall
	sjmp	00135$
00131$:
	C$USBStandardRequests.c$127$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:127: if (Setup.wIndex.c[LSB] == IN_EP1)  
	mov	a,#0x81
	cjne	a,(_Setup + 0x0005),00128$
	C$USBStandardRequests.c$129$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:129: if (Ep_Status[1] == EP_HALT)
	mov	a,#0x03
	cjne	a,(_Ep_Status + 0x0001),00119$
	C$USBStandardRequests.c$132$5$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:132: DataPtr = (BYTE*)&ONES_PACKET;
	mov	_DataPtr,#_ONES_PACKET
	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$133$5$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:133: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	sjmp	00135$
00119$:
	C$USBStandardRequests.c$138$5$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:138: DataPtr = (BYTE*)&ZERO_PACKET;
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$139$5$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:139: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	sjmp	00135$
00128$:
	C$USBStandardRequests.c$146$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:146: if (Setup.wIndex.c[LSB] == OUT_EP2)
	mov	a,#0x02
	cjne	a,(_Setup + 0x0005),00125$
	C$USBStandardRequests.c$149$5$14 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:149: if (Ep_Status[2] == EP_HALT)
	mov	a,#0x03
	cjne	a,(_Ep_Status + 0x0002),00122$
	C$USBStandardRequests.c$151$6$15 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:151: DataPtr = (BYTE*)&ONES_PACKET;
	mov	_DataPtr,#_ONES_PACKET
	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$152$6$15 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:152: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	sjmp	00135$
00122$:
	C$USBStandardRequests.c$156$6$16 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:156: DataPtr = (BYTE*)&ZERO_PACKET;
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$157$6$16 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:157: DataSize = 2;
	mov	_DataSize,#0x02
	clr	a
	mov	(_DataSize + 1),a
	sjmp	00135$
00125$:
	C$USBStandardRequests.c$162$5$17 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:162: Force_Stall();       // Send stall if unexpected data
	lcall	_Force_Stall
	C$USBStandardRequests.c$166$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:166: break;
	C$USBStandardRequests.c$168$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:168: default:
	sjmp	00135$
00134$:
	C$USBStandardRequests.c$169$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:169: Force_Stall();
	lcall	_Force_Stall
	C$USBStandardRequests.c$171$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:171: }
00135$:
	C$USBStandardRequests.c$172$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:172: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_Ep_Status,00183$
	ret
00183$:
	C$USBStandardRequests.c$176$2$18 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:176: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);        
00136$:
	mov	a,_USB0ADR
	jb	acc.7,00136$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$USBStandardRequests.c$177$2$18 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:177: Ep_Status[0] = EP_TX;                     
	mov	_Ep_Status,#0x01
	C$USBStandardRequests.c$178$2$18 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:178: DataSent = 0;
	clr	a
	mov	_DataSent,a
	mov	(_DataSent + 1),a
	C$USBStandardRequests.c$180$2$1 ==.
	XG$Get_Status$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Clear_Feature'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Clear_Feature$0$0 ==.
	C$USBStandardRequests.c$193$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:193: void Clear_Feature()                            
;	-----------------------------------------
;	 function Clear_Feature
;	-----------------------------------------
_Clear_Feature:
	C$USBStandardRequests.c$196$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:196: if ((USB_State != DEV_CONFIGURED)          ||// Send procedural stall if device isn't configured
	mov	a,#0x04
	cjne	a,_USB_State,00122$
	C$USBStandardRequests.c$197$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:197: (Setup.bmRequestType == IN_DEVICE)         ||// or request is made to host(remote wakeup not supported)
	mov	a,_Setup
	mov	r2,a
	jz	00122$
	C$USBStandardRequests.c$198$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:198: (Setup.bmRequestType == IN_INTERFACE)      ||// or request is made to interface
	cjne	r2,#0x01,00165$
	sjmp	00122$
00165$:
	C$USBStandardRequests.c$199$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:199: Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||// or msbs of value or index set to non-zero value
	mov	a,(_Setup + 0x0002)
	jnz	00122$
	mov	a,(_Setup + 0x0004)
	jnz	00122$
	C$USBStandardRequests.c$200$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:200: Setup.wLength.c[MSB] || Setup.wLength.c[LSB])// or data length set to non-zero.
	mov	a,(_Setup + 0x0006)
	jnz	00122$
	mov	a,(_Setup + 0x0007)
	jz	00123$
00122$:
	C$USBStandardRequests.c$202$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:202: Force_Stall();
	lcall	_Force_Stall
	sjmp	00131$
00123$:
	C$USBStandardRequests.c$207$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:207: if ((Setup.bmRequestType == IN_ENDPOINT)&&// Verify that packet was directed at an endpoint
	mov	a,#0x02
	cjne	a,_Setup,00117$
	C$USBStandardRequests.c$208$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:208: (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// the feature selected was HALT_ENDPOINT
	mov	a,(_Setup + 0x0003)
	jnz	00117$
	C$USBStandardRequests.c$209$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:209: ((Setup.wIndex.c[LSB] == IN_EP1) ||       // and that the request was directed at EP 1 in
	mov	a,#0x81
	cjne	a,(_Setup + 0x0005),00173$
	sjmp	00116$
00173$:
	C$USBStandardRequests.c$210$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:210: (Setup.wIndex.c[LSB] == OUT_EP2)))        // or EP 2 out
	mov	a,#0x02
	cjne	a,(_Setup + 0x0005),00117$
00116$:
	C$USBStandardRequests.c$212$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:212: if (Setup.wIndex.c[LSB] == IN_EP1)
	mov	a,#0x81
	cjne	a,(_Setup + 0x0005),00107$
	C$USBStandardRequests.c$214$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:214: POLL_WRITE_BYTE (INDEX, 1);         // Clear feature endpoint 1 halt
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
	C$USBStandardRequests.c$215$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:215: POLL_WRITE_BYTE (EINCSR1, rbInCLRDT);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$USBStandardRequests.c$216$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:216: Ep_Status[1] = EP_IDLE;             // Set endpoint 1 status back to idle
	mov	(_Ep_Status + 0x0001),#0x00
	C$USBStandardRequests.c$220$4$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:220: POLL_WRITE_BYTE (INDEX, 2);         // Clear feature endpoint 2 halt
	sjmp	00131$
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x02
	C$USBStandardRequests.c$221$4$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:221: POLL_WRITE_BYTE (EOUTCSR1, rbOutCLRDT);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x80
	C$USBStandardRequests.c$222$4$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:222: Ep_Status[2] = EP_IDLE;             // Set endpoint 2 status back to idle
	mov	(_Ep_Status + 0x0002),#0x00
	sjmp	00131$
00117$:
	C$USBStandardRequests.c$227$3$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:227: Force_Stall();                         // Send procedural stall
	lcall	_Force_Stall
	C$USBStandardRequests.c$230$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:230: POLL_WRITE_BYTE(INDEX, 0);                   // Reset Index to 0
00131$:
	mov	a,_USB0ADR
	jb	acc.7,00131$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	C$USBStandardRequests.c$231$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:231: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_Ep_Status,00183$
	ret
00183$:
	C$USBStandardRequests.c$233$2$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:233: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
00134$:
	mov	a,_USB0ADR
	jb	acc.7,00134$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	C$USBStandardRequests.c$237$3$1 ==.
	XG$Clear_Feature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Feature'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Set_Feature$0$0 ==.
	C$USBStandardRequests.c$250$3$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:250: void Set_Feature(void)                          
;	-----------------------------------------
;	 function Set_Feature
;	-----------------------------------------
_Set_Feature:
	C$USBStandardRequests.c$253$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:253: if ((USB_State != DEV_CONFIGURED)          ||// Make sure device is configured, setup data
	mov	a,#0x04
	cjne	a,_USB_State,00122$
	C$USBStandardRequests.c$254$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:254: (Setup.bmRequestType == IN_DEVICE)         ||// is all valid and that request is directed at
	mov	a,_Setup
	mov	r2,a
	jz	00122$
	C$USBStandardRequests.c$255$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:255: (Setup.bmRequestType == IN_INTERFACE)      ||// an endpoint
	cjne	r2,#0x01,00165$
	sjmp	00122$
00165$:
	C$USBStandardRequests.c$256$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:256: Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||
	mov	a,(_Setup + 0x0002)
	jnz	00122$
	mov	a,(_Setup + 0x0004)
	jnz	00122$
	C$USBStandardRequests.c$257$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:257: Setup.wLength.c[MSB] || Setup.wLength.c[LSB])
	mov	a,(_Setup + 0x0006)
	jnz	00122$
	mov	a,(_Setup + 0x0007)
	jz	00123$
00122$:
	C$USBStandardRequests.c$259$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:259: Force_Stall();                            // Otherwise send stall to host
	lcall	_Force_Stall
	sjmp	00131$
00123$:
	C$USBStandardRequests.c$264$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:264: if ((Setup.bmRequestType == IN_ENDPOINT)&&// Make sure endpoint exists and that halt
	mov	a,#0x02
	cjne	a,_Setup,00117$
	C$USBStandardRequests.c$265$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:265: (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// endpoint feature is selected
	mov	a,(_Setup + 0x0003)
	jnz	00117$
	C$USBStandardRequests.c$266$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:266: ((Setup.wIndex.c[LSB] == IN_EP1)        ||
	mov	a,#0x81
	cjne	a,(_Setup + 0x0005),00173$
	sjmp	00116$
00173$:
	C$USBStandardRequests.c$267$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:267: (Setup.wIndex.c[LSB] == OUT_EP2)))
	mov	a,#0x02
	cjne	a,(_Setup + 0x0005),00117$
00116$:
	C$USBStandardRequests.c$269$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:269: if (Setup.wIndex.c[LSB] == IN_EP1)
	mov	a,#0x81
	cjne	a,(_Setup + 0x0005),00107$
	C$USBStandardRequests.c$271$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:271: POLL_WRITE_BYTE (INDEX, 1);         // Set feature endpoint 1 halt
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
	C$USBStandardRequests.c$272$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:272: POLL_WRITE_BYTE (EINCSR1, rbInSDSTL);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
	C$USBStandardRequests.c$273$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:273: Ep_Status[1] = EP_HALT;
	mov	(_Ep_Status + 0x0001),#0x03
	C$USBStandardRequests.c$277$4$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:277: POLL_WRITE_BYTE (INDEX, 2);         // Set feature Ep2 halt
	sjmp	00131$
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x02
	C$USBStandardRequests.c$278$4$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:278: POLL_WRITE_BYTE (EOUTCSR1, rbOutSDSTL);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x20
	C$USBStandardRequests.c$279$4$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:279: Ep_Status[2] = EP_HALT;
	mov	(_Ep_Status + 0x0002),#0x03
	sjmp	00131$
00117$:
	C$USBStandardRequests.c$284$3$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:284: Force_Stall();                         // Send procedural stall
	lcall	_Force_Stall
	C$USBStandardRequests.c$287$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:287: POLL_WRITE_BYTE(INDEX, 0);
00131$:
	mov	a,_USB0ADR
	jb	acc.7,00131$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	C$USBStandardRequests.c$288$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:288: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_Ep_Status,00183$
	ret
00183$:
	C$USBStandardRequests.c$290$2$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:290: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
00134$:
	mov	a,_USB0ADR
	jb	acc.7,00134$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	C$USBStandardRequests.c$293$3$1 ==.
	XG$Set_Feature$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Address'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Set_Address$0$0 ==.
	C$USBStandardRequests.c$306$3$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:306: void Set_Address(void)                          
;	-----------------------------------------
;	 function Set_Address
;	-----------------------------------------
_Set_Address:
	C$USBStandardRequests.c$308$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:308: if ((Setup.bmRequestType != IN_DEVICE)     ||// Request must be directed to device
	mov	a,_Setup
	jnz	00101$
	C$USBStandardRequests.c$309$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:309: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// with index and length set to zero.
	mov	a,(_Setup + 0x0004)
	jnz	00101$
	mov	a,(_Setup + 0x0005)
	jnz	00101$
	C$USBStandardRequests.c$310$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:310: Setup.wLength.c[MSB] || Setup.wLength.c[LSB]||
	mov	a,(_Setup + 0x0006)
	jnz	00101$
	mov	a,(_Setup + 0x0007)
	jnz	00101$
	C$USBStandardRequests.c$311$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:311: Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] & 0x80))
	mov	a,(_Setup + 0x0002)
	jnz	00101$
	mov	a,(_Setup + 0x0003)
	jnb	acc.7,00102$
00101$:
	C$USBStandardRequests.c$313$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:313: Force_Stall();                             // Send stall if setup data invalid
	lcall	_Force_Stall
00102$:
	C$USBStandardRequests.c$316$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:316: Ep_Status[0] = EP_ADDRESS;                   // Set endpoint zero to update address next status phase
	mov	_Ep_Status,#0x05
	C$USBStandardRequests.c$317$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:317: if (Setup.wValue.c[LSB] != 0)
	mov	a,(_Setup + 0x0003)
	jz	00110$
	C$USBStandardRequests.c$319$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:319: USB_State = DEV_ADDRESS;                  // Indicate that device state is now address
	mov	_USB_State,#0x03
	sjmp	00111$
00110$:
	C$USBStandardRequests.c$323$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:323: USB_State = DEV_DEFAULT;                  // If new address was 0x00, return device to default
	mov	_USB_State,#0x02
00111$:
	C$USBStandardRequests.c$325$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:325: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_Ep_Status,00136$
	ret
00136$:
	C$USBStandardRequests.c$327$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:327: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
00112$:
	mov	a,_USB0ADR
	jb	acc.7,00112$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	C$USBStandardRequests.c$330$3$1 ==.
	XG$Set_Address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Descriptor'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Get_Descriptor$0$0 ==.
	C$USBStandardRequests.c$344$3$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:344: void Get_Descriptor(void)                       
;	-----------------------------------------
;	 function Get_Descriptor
;	-----------------------------------------
_Get_Descriptor:
	C$USBStandardRequests.c$347$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:347: switch(Setup.wValue.c[MSB])                  // Determine which type of descriptor
	mov	a,(_Setup + 0x0002)
	mov	r2,a
	add	a,#0xff - 0x05
	jnc	00142$
	ljmp	00113$
00142$:
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#00143$
	jmp	@a+dptr
00143$:
	ljmp	00113$
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	C$USBStandardRequests.c$349$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:349: case DSC_DEVICE:                          // size accordingly
00101$:
	C$USBStandardRequests.c$350$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:350: DataPtr = (BYTE*) &DeviceDesc;
	mov	_DataPtr,#_DeviceDesc
	mov	(_DataPtr + 1),#(_DeviceDesc >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$351$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:351: DataSize = DeviceDesc.bLength;
	mov	dptr,#_DeviceDesc
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
	C$USBStandardRequests.c$352$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:352: break;
	ljmp	00114$
	C$USBStandardRequests.c$354$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:354: case DSC_CONFIG:
00102$:
	C$USBStandardRequests.c$355$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:355: DataPtr = (BYTE*) &ConfigDesc;
	mov	_DataPtr,#_ConfigDesc
	mov	(_DataPtr + 1),#(_ConfigDesc >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$358$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:358: DataSize = ConfigDesc.wTotalLength.c[MSB] + 256*ConfigDesc.wTotalLength.c[LSB];
	mov	dptr,#(_ConfigDesc + 0x0002)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#(_ConfigDesc + 0x0003)
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r4
	add	a,r2
	mov	_DataSize,a
	mov	a,r5
	addc	a,r3
	mov	(_DataSize + 1),a
	C$USBStandardRequests.c$359$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:359: break;
	ljmp	00114$
	C$USBStandardRequests.c$361$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:361: case DSC_STRING:
00103$:
	C$USBStandardRequests.c$362$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:362: DataPtr = StringDescTable[Setup.wValue.c[LSB]];
	mov	a,(_Setup + 0x0003)
	mov	b,#0x03
	mul	ab
	add	a,#_StringDescTable
	mov	r0,a
	mov	_DataPtr,@r0
	inc	r0
	mov	(_DataPtr + 1),@r0
	inc	r0
	mov	(_DataPtr + 2),@r0
	C$USBStandardRequests.c$364$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:364: DataSize = *DataPtr;
	mov	r2,_DataPtr
	mov	r3,(_DataPtr + 1)
	mov	r4,(_DataPtr + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
	C$USBStandardRequests.c$365$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:365: break;
	C$USBStandardRequests.c$367$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:367: case DSC_INTERFACE:
	sjmp	00114$
00104$:
	C$USBStandardRequests.c$368$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:368: DataPtr = (BYTE*) &InterfaceDesc;
	mov	_DataPtr,#_InterfaceDesc
	mov	(_DataPtr + 1),#(_InterfaceDesc >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$369$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:369: DataSize = InterfaceDesc.bLength;
	mov	dptr,#_InterfaceDesc
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
	C$USBStandardRequests.c$370$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:370: break;
	C$USBStandardRequests.c$372$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:372: case DSC_ENDPOINT:
	sjmp	00114$
00105$:
	C$USBStandardRequests.c$373$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:373: if ((Setup.wValue.c[LSB] == IN_EP1) ||
	mov	a,#0x81
	cjne	a,(_Setup + 0x0003),00144$
	sjmp	00109$
00144$:
	C$USBStandardRequests.c$374$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:374: (Setup.wValue.c[LSB] == OUT_EP2))
	mov	a,#0x02
	cjne	a,(_Setup + 0x0003),00110$
00109$:
	C$USBStandardRequests.c$376$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:376: if (Setup.wValue.c[LSB] == IN_EP1)
	mov	a,#0x81
	cjne	a,(_Setup + 0x0003),00107$
	C$USBStandardRequests.c$378$4$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:378: DataPtr = (BYTE*) &Endpoint1Desc;
	mov	_DataPtr,#_Endpoint1Desc
	mov	(_DataPtr + 1),#(_Endpoint1Desc >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$379$4$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:379: DataSize = Endpoint1Desc.bLength;
	mov	dptr,#_Endpoint1Desc
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
	sjmp	00114$
00107$:
	C$USBStandardRequests.c$383$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:383: DataPtr = (BYTE*) &Endpoint2Desc;
	mov	_DataPtr,#_Endpoint2Desc
	mov	(_DataPtr + 1),#(_Endpoint2Desc >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$384$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:384: DataSize = Endpoint2Desc.bLength;
	mov	dptr,#_Endpoint2Desc
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	_DataSize,r2
	mov	(_DataSize + 1),#0x00
	sjmp	00114$
00110$:
	C$USBStandardRequests.c$389$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:389: Force_Stall();
	lcall	_Force_Stall
	C$USBStandardRequests.c$391$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:391: break;
	C$USBStandardRequests.c$393$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:393: default:
	sjmp	00114$
00113$:
	C$USBStandardRequests.c$394$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:394: Force_Stall();                         // Send Stall if unsupported request
	lcall	_Force_Stall
	C$USBStandardRequests.c$396$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:396: }
00114$:
	C$USBStandardRequests.c$398$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:398: if (Setup.wValue.c[MSB] == DSC_DEVICE ||     // Verify that the requested descriptor is
	mov	a,#0x01
	cjne	a,(_Setup + 0x0002),00149$
	sjmp	00118$
00149$:
	C$USBStandardRequests.c$399$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:399: Setup.wValue.c[MSB] == DSC_CONFIG     ||     // valid
	mov	a,#0x02
	cjne	a,(_Setup + 0x0002),00150$
	sjmp	00118$
00150$:
	C$USBStandardRequests.c$400$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:400: Setup.wValue.c[MSB] == DSC_STRING     ||
	mov	a,#0x03
	cjne	a,(_Setup + 0x0002),00151$
	sjmp	00118$
00151$:
	C$USBStandardRequests.c$401$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:401: Setup.wValue.c[MSB] == DSC_INTERFACE  ||
	mov	a,#0x04
	cjne	a,(_Setup + 0x0002),00152$
	sjmp	00118$
00152$:
	C$USBStandardRequests.c$402$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:402: Setup.wValue.c[MSB] == DSC_ENDPOINT)
	mov	a,#0x05
	cjne	a,(_Setup + 0x0002),00119$
00118$:
	C$USBStandardRequests.c$404$2$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:404: if ((Setup.wLength.c[LSB] < DataSize) &&
	mov	r2,(_Setup + 0x0007)
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,_DataSize
	mov	a,r3
	subb	a,(_DataSize + 1)
	jnc	00119$
	C$USBStandardRequests.c$405$2$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:405: (Setup.wLength.c[MSB] == 0))
	mov	a,(_Setup + 0x0006)
	jnz	00119$
	C$USBStandardRequests.c$407$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:407: DataSize = Setup.wLength.i;       // Send only requested amount of data
	mov	_DataSize,(_Setup + 0x0006)
	mov	(_DataSize + 1),((_Setup + 0x0006) + 1)
00119$:
	C$USBStandardRequests.c$410$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:410: if (Ep_Status[0] != EP_STALL)                // Make sure endpoint not in stall mode
	mov	a,#0x04
	cjne	a,_Ep_Status,00157$
	ret
00157$:
	C$USBStandardRequests.c$412$2$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:412: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);          // Service Setup Packet
00124$:
	mov	a,_USB0ADR
	jb	acc.7,00124$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$USBStandardRequests.c$413$2$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:413: Ep_Status[0] = EP_TX;                      // Put endpoint in transmit mode
	mov	_Ep_Status,#0x01
	C$USBStandardRequests.c$414$2$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:414: DataSent = 0;                              // Reset Data Sent counter
	clr	a
	mov	_DataSent,a
	mov	(_DataSent + 1),a
	C$USBStandardRequests.c$416$2$1 ==.
	XG$Get_Descriptor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Configuration'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Get_Configuration$0$0 ==.
	C$USBStandardRequests.c$429$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:429: void Get_Configuration(void)                   
;	-----------------------------------------
;	 function Get_Configuration
;	-----------------------------------------
_Get_Configuration:
	C$USBStandardRequests.c$431$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:431: if ((Setup.bmRequestType != OUT_DEVICE)    ||// This request must be directed to the device
	mov	a,#0x80
	cjne	a,_Setup,00105$
	C$USBStandardRequests.c$432$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:432: Setup.wValue.c[MSB]  || Setup.wValue.c[LSB]||// with value word set to zero
	mov	a,(_Setup + 0x0002)
	jnz	00105$
	mov	a,(_Setup + 0x0003)
	jnz	00105$
	C$USBStandardRequests.c$433$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:433: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// and index set to zero
	mov	a,(_Setup + 0x0004)
	jnz	00105$
	mov	a,(_Setup + 0x0005)
	jnz	00105$
	C$USBStandardRequests.c$434$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:434: Setup.wLength.c[MSB] || (Setup.wLength.c[LSB] != 1))// and setup length set to one
	mov	a,(_Setup + 0x0006)
	jnz	00105$
	mov	a,#0x01
	cjne	a,(_Setup + 0x0007),00138$
	sjmp	00106$
00138$:
00105$:
	C$USBStandardRequests.c$436$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:436: Force_Stall();                            // Otherwise send a stall to host
	lcall	_Force_Stall
	sjmp	00107$
00106$:
	C$USBStandardRequests.c$441$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:441: if (USB_State == DEV_CONFIGURED)          // If the device is configured, then return value 0x01
	mov	a,#0x04
	cjne	a,_USB_State,00102$
	C$USBStandardRequests.c$443$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:443: DataPtr = (BYTE*)&ONES_PACKET;
	mov	_DataPtr,#_ONES_PACKET
	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$444$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:444: DataSize = 1;
	mov	_DataSize,#0x01
	clr	a
	mov	(_DataSize + 1),a
00102$:
	C$USBStandardRequests.c$446$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:446: if (USB_State == DEV_ADDRESS)             // If the device is in address state, it is not
	mov	a,#0x03
	cjne	a,_USB_State,00107$
	C$USBStandardRequests.c$448$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:448: DataPtr = (BYTE*)&ZERO_PACKET;
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$449$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:449: DataSize = 1;
	mov	_DataSize,#0x01
	clr	a
	mov	(_DataSize + 1),a
00107$:
	C$USBStandardRequests.c$452$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:452: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_Ep_Status,00143$
	ret
00143$:
	C$USBStandardRequests.c$454$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:454: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Out Packet bit
00114$:
	mov	a,_USB0ADR
	jb	acc.7,00114$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$USBStandardRequests.c$455$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:455: Ep_Status[0] = EP_TX;                     // Put endpoint into transmit mode
	mov	_Ep_Status,#0x01
	C$USBStandardRequests.c$456$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:456: DataSent = 0;                             // Reset Data Sent counter to zero
	clr	a
	mov	_DataSent,a
	mov	(_DataSent + 1),a
	C$USBStandardRequests.c$458$2$1 ==.
	XG$Get_Configuration$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Configuration'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Set_Configuration$0$0 ==.
	C$USBStandardRequests.c$471$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:471: void Set_Configuration(void)                   
;	-----------------------------------------
;	 function Set_Configuration
;	-----------------------------------------
_Set_Configuration:
	C$USBStandardRequests.c$474$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:474: if ((USB_State == DEV_DEFAULT)             ||// Device must be addressed before configured
	mov	a,#0x02
	cjne	a,_USB_State,00146$
	sjmp	00113$
00146$:
	C$USBStandardRequests.c$475$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:475: (Setup.bmRequestType != IN_DEVICE)         ||// and request recipient must be the device
	mov	a,_Setup
	jnz	00113$
	C$USBStandardRequests.c$476$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:476: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// the index and length words must be zero
	mov	a,(_Setup + 0x0004)
	jnz	00113$
	mov	a,(_Setup + 0x0005)
	jnz	00113$
	C$USBStandardRequests.c$477$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:477: Setup.wLength.c[MSB] || Setup.wLength.c[LSB] ||
	mov	a,(_Setup + 0x0006)
	jnz	00113$
	mov	a,(_Setup + 0x0007)
	jnz	00113$
	C$USBStandardRequests.c$478$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:478: Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] > 1))// This software only supports config = 0,1
	mov	a,(_Setup + 0x0002)
	jnz	00113$
	mov	a,(_Setup + 0x0003)
	add	a,#0xff - 0x01
	jnc	00114$
00113$:
	C$USBStandardRequests.c$480$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:480: Force_Stall();                            // Send stall if setup data is invalid
	lcall	_Force_Stall
	sjmp	00115$
00114$:
	C$USBStandardRequests.c$485$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:485: if (Setup.wValue.c[LSB] > 0)              // Any positive configuration request
	mov	a,(_Setup + 0x0003)
	jz	00111$
	C$USBStandardRequests.c$487$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:487: USB_State = DEV_CONFIGURED;
	mov	_USB_State,#0x04
	C$USBStandardRequests.c$488$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:488: Ep_Status[1] = EP_IDLE;                // Set endpoint status to idle (enabled)
	mov	(_Ep_Status + 0x0001),#0x00
	C$USBStandardRequests.c$489$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:489: Ep_Status[2] = EP_IDLE;
	mov	(_Ep_Status + 0x0002),#0x00
	C$USBStandardRequests.c$490$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:490: POLL_WRITE_BYTE(INDEX, 1);             // Change index to endpoint 1
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
	C$USBStandardRequests.c$491$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:491: POLL_WRITE_BYTE(EINCSR2, rbInDIRSEL);  // Set DIRSEL to indicate endpoint 1 is IN
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0x20
	C$USBStandardRequests.c$492$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:492: Handle_In1();                          // Put first data packet on fifo
	lcall	_Handle_In1
	C$USBStandardRequests.c$493$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:493: POLL_WRITE_BYTE(INDEX, 0);             // Set index back to endpoint 0
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	sjmp	00115$
00111$:
	C$USBStandardRequests.c$497$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:497: USB_State = DEV_ADDRESS;               // Unconfigures device by setting state to
	mov	_USB_State,#0x03
	C$USBStandardRequests.c$498$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:498: Ep_Status[1] = EP_HALT;                // address, and changing endpoint 1 and 2
	mov	(_Ep_Status + 0x0001),#0x03
	C$USBStandardRequests.c$499$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:499: Ep_Status[2] = EP_HALT;                // status to halt
	mov	(_Ep_Status + 0x0002),#0x03
00115$:
	C$USBStandardRequests.c$502$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:502: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_Ep_Status,00158$
	ret
00158$:
	C$USBStandardRequests.c$504$2$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:504: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
00123$:
	mov	a,_USB0ADR
	jb	acc.7,00123$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	C$USBStandardRequests.c$507$3$1 ==.
	XG$Set_Configuration$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Get_Interface'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Get_Interface$0$0 ==.
	C$USBStandardRequests.c$521$3$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:521: void Get_Interface(void)                        
;	-----------------------------------------
;	 function Get_Interface
;	-----------------------------------------
_Get_Interface:
	C$USBStandardRequests.c$524$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:524: if ((USB_State != DEV_CONFIGURED)      ||    // If device is not configured
	mov	a,#0x04
	cjne	a,_USB_State,00101$
	C$USBStandardRequests.c$525$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:525: (Setup.bmRequestType != OUT_INTERFACE) ||    // or recipient is not an interface
	mov	a,#0x81
	cjne	a,_Setup,00101$
	C$USBStandardRequests.c$526$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:526: Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||// or non-zero value or index fields
	mov	a,(_Setup + 0x0002)
	jnz	00101$
	mov	a,(_Setup + 0x0003)
	jnz	00101$
	C$USBStandardRequests.c$527$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:527: Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB] ||// or data length not equal to one
	mov	a,(_Setup + 0x0004)
	jnz	00101$
	mov	a,(_Setup + 0x0005)
	jnz	00101$
	C$USBStandardRequests.c$528$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:528: Setup.wLength.c[MSB] ||(Setup.wLength.c[LSB] != 1))
	mov	a,(_Setup + 0x0006)
	jnz	00101$
	mov	a,#0x01
	cjne	a,(_Setup + 0x0007),00136$
	sjmp	00102$
00136$:
00101$:
	C$USBStandardRequests.c$530$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:530: Force_Stall();                            // Then return stall due to invalid request
	lcall	_Force_Stall
	sjmp	00103$
00102$:
	C$USBStandardRequests.c$535$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:535: DataPtr = (BYTE*)&ZERO_PACKET;            // Otherwise, return 0x00 to host
	mov	_DataPtr,#_ZERO_PACKET
	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
	mov	(_DataPtr + 2),#0x80
	C$USBStandardRequests.c$536$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:536: DataSize = 1;
	mov	_DataSize,#0x01
	clr	a
	mov	(_DataSize + 1),a
00103$:
	C$USBStandardRequests.c$538$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:538: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_Ep_Status,00137$
	ret
00137$:
	C$USBStandardRequests.c$540$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:540: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Setup packet, put endpoint in transmit
00111$:
	mov	a,_USB0ADR
	jb	acc.7,00111$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
	C$USBStandardRequests.c$541$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:541: Ep_Status[0] = EP_TX;                     // mode and reset Data sent counter
	mov	_Ep_Status,#0x01
	C$USBStandardRequests.c$542$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:542: DataSent = 0;
	clr	a
	mov	_DataSent,a
	mov	(_DataSent + 1),a
	C$USBStandardRequests.c$544$2$1 ==.
	XG$Get_Interface$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Set_Interface'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Set_Interface$0$0 ==.
	C$USBStandardRequests.c$557$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:557: void Set_Interface(void)
;	-----------------------------------------
;	 function Set_Interface
;	-----------------------------------------
_Set_Interface:
	C$USBStandardRequests.c$562$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:562: if ((Setup.bmRequestType != IN_INTERFACE)  ||
	mov	a,#0x01
	cjne	a,_Setup,00101$
	C$USBStandardRequests.c$563$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:563: Setup.wLength.c[MSB] ||Setup.wLength.c[LSB]|| 
	mov	a,(_Setup + 0x0006)
	jnz	00101$
	mov	a,(_Setup + 0x0007)
	jnz	00101$
	C$USBStandardRequests.c$564$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:564: Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||
	mov	a,(_Setup + 0x0002)
	jnz	00101$
	mov	a,(_Setup + 0x0003)
	jnz	00101$
	C$USBStandardRequests.c$565$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:565: Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB])
	mov	a,(_Setup + 0x0004)
	jnz	00101$
	mov	a,(_Setup + 0x0005)
	jz	00102$
00101$:
	C$USBStandardRequests.c$568$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:568: Force_Stall();                            
	lcall	_Force_Stall
00102$:
	C$USBStandardRequests.c$570$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:570: if (Ep_Status[0] != EP_STALL)
	mov	a,#0x04
	cjne	a,_Ep_Status,00132$
	ret
00132$:
	C$USBStandardRequests.c$573$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:573: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));                                             
00109$:
	mov	a,_USB0ADR
	jb	acc.7,00109$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x48
	C$USBStandardRequests.c$575$3$1 ==.
	XG$Set_Interface$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$ONES_PACKET$0$0 == .
_ONES_PACKET:
	.db #0x01
	.db #0x00
G$ZERO_PACKET$0$0 == .
_ZERO_PACKET:
	.db #0x00
	.db #0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
