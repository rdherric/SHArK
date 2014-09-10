;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Oct 28 02:58:57 2010
;--------------------------------------------------------
	.module Interrupts
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Fifo_Write_PARM_3
	.globl _Fifo_Write_PARM_2
	.globl _Fifo_Read_PARM_3
	.globl _Fifo_Read_PARM_2
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
	.globl _Ep_Status
	.globl _DataPtr
	.globl _DataSent
	.globl _DataSize
	.globl _Setup
	.globl _USB_State
	.globl _Usb_ISR
	.globl _SPI_ISR
	.globl _Usb_Reset
	.globl _Handle_Setup
	.globl _Handle_In1
	.globl _Endpoint1
	.globl _SetVoltage
	.globl _SetLaser
	.globl _PulseMotor
	.globl _Handle_Out2
	.globl _Endpoint2
	.globl _ReadCurrent
	.globl _Usb_Suspend
	.globl _Usb_Resume
	.globl _Fifo_Read
	.globl _Fifo_Write
	.globl _Force_Stall
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$USB_State$0$0==.
_USB_State::
	.ds 1
G$Setup$0$0==.
_Setup::
	.ds 8
G$DataSize$0$0==.
_DataSize::
	.ds 2
G$DataSent$0$0==.
_DataSent::
	.ds 2
G$DataPtr$0$0==.
_DataPtr::
	.ds 3
G$Ep_Status$0$0==.
_Ep_Status::
	.ds 3
LEndpoint1$bOp$1$1==.
_Endpoint1_bOp_1_1:
	.ds 1
LSetVoltage$pData$1$1==.
_SetVoltage_pData_1_1:
	.ds 2
LSetLaser$bState$1$1==.
_SetLaser_bState_1_1:
	.ds 1
LPulseMotor$bMotor$1$1==.
_PulseMotor_bMotor_1_1:
	.ds 1
LPulseMotor$bDir$1$1==.
_PulseMotor_bDir_1_1:
	.ds 1
LEndpoint2$bOp$1$1==.
_Endpoint2_bOp_1_1:
	.ds 1
LReadCurrent$pData$1$1==.
_ReadCurrent_pData_1_1:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
LUsb_Resume$k$1$1==.
_Usb_Resume_k_1_1::
	.ds 2
	.area	OSEG    (OVR,DATA)
LFifo_Read$uNumBytes$1$1==.
_Fifo_Read_PARM_2::
	.ds 2
LFifo_Read$pData$1$1==.
_Fifo_Read_PARM_3::
	.ds 3
LFifo_Read$i$1$1==.
_Fifo_Read_i_1_1::
	.ds 2
	.area	OSEG    (OVR,DATA)
LFifo_Write$uNumBytes$1$1==.
_Fifo_Write_PARM_2::
	.ds 2
LFifo_Write$pData$1$1==.
_Fifo_Write_PARM_3::
	.ds 3
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
	G$Force_Stall$0$0 ==.
	C$Interrupts.c$50$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:50: BYTE Ep_Status[3] = {EP_IDLE, EP_IDLE, EP_IDLE};
	mov	_Ep_Status,#0x00
	mov	(_Ep_Status + 0x0001),#0x00
	mov	(_Ep_Status + 0x0002),#0x00
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$44$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:44: sfr P0       = 0x80;                   // Port0
	mov	_P0,#0x80
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$45$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:45: sfr SP       = 0x81;                   // Stack pointer
	mov	_SP,#0x81
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$46$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:46: sfr DPL      = 0x82;                   // Data pointer - Low byte
	mov	_DPL,#0x82
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$47$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:47: sfr DPH      = 0x83;                   // Data pointer - High byte
	mov	_DPH,#0x83
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$48$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:48: sfr PCON     = 0x87;                   // Power control register
	mov	_PCON,#0x87
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$49$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:49: sfr TCON     = 0x88;                   // Timer control register
	mov	_TCON,#0x88
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$50$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:50: sfr TMOD     = 0x89;                   // Timer mode register
	mov	_TMOD,#0x89
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$51$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:51: sfr TL0      = 0x8A;                   // Timer0 - Low byte
	mov	_TL0,#0x8A
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$52$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:52: sfr TL1      = 0x8B;                   // Timer1 - Low byte
	mov	_TL1,#0x8B
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$53$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:53: sfr TH0      = 0x8C;                   // Timer0 - High byte
	mov	_TH0,#0x8C
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$54$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:54: sfr TH1      = 0x8D;                   // Timer1 - High byte
	mov	_TH1,#0x8D
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$55$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:55: sfr CKCON    = 0x8E;                   // Clock control register
	mov	_CKCON,#0x8E
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$56$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:56: sfr PSCTL    = 0x8F;                   // Program store r/w control
	mov	_PSCTL,#0x8F
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$57$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:57: sfr P1       = 0x90;                   // Port1
	mov	_P1,#0x90
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$58$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:58: sfr TMR3CN   = 0x91;                   // Timer3 control register
	mov	_TMR3CN,#0x91
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$59$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:59: sfr TMR3RLL  = 0x92;                   // Timer3 reload register - Low byte
	mov	_TMR3RLL,#0x92
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$60$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:60: sfr TMR3RLH  = 0x93;                   // Timer3 reload register - High byte
	mov	_TMR3RLH,#0x93
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$61$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:61: sfr TMR3L    = 0x94;                   // Timer3 - Low byte
	mov	_TMR3L,#0x94
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$62$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:62: sfr TMR3H    = 0x95;                   // Timer3 - High byte
	mov	_TMR3H,#0x95
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$63$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:63: sfr USB0ADR  = 0x96;                   // USB0 address port
	mov	_USB0ADR,#0x96
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$64$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:64: sfr USB0DAT  = 0x97;                   // USB0 data port
	mov	_USB0DAT,#0x97
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$65$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:65: sfr SCON0    = 0x98;                   // UART0 control register
	mov	_SCON0,#0x98
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$66$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:66: sfr SBUF0    = 0x99;                   // UART0 data buffer register
	mov	_SBUF0,#0x99
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$67$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:67: sfr CPT1CN   = 0x9A;                   // Comparator1 control register
	mov	_CPT1CN,#0x9A
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$68$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:68: sfr CPT0CN   = 0x9B;                   // Comparator0 control register
	mov	_CPT0CN,#0x9B
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$69$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:69: sfr CPT1MD   = 0x9C;                   // Comparator1 mode selection register
	mov	_CPT1MD,#0x9C
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$70$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:70: sfr CPT0MD   = 0x9D;                   // Comparator0 mode selection register
	mov	_CPT0MD,#0x9D
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$71$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:71: sfr CPT1MX   = 0x9E;                   // Comparator1 mux selection register
	mov	_CPT1MX,#0x9E
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$72$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:72: sfr CPT0MX   = 0x9F;                   // Comparator0 mux selection register
	mov	_CPT0MX,#0x9F
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$73$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:73: sfr P2       = 0xA0;                   // Port2
	mov	_P2,#0xA0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$74$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:74: sfr SPICFG   = 0xA1;                   // SPI0 configuration register
	mov	_SPICFG,#0xA1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$75$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:75: sfr SPI0CFG  = 0xA1;                   // SPI0 configuration register
	mov	_SPI0CFG,#0xA1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$76$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:76: sfr SPICKR   = 0xA2;                   // SPI0 clock configuration register
	mov	_SPICKR,#0xA2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$77$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:77: sfr SPI0CKR  = 0xA2;                   // SPI0 clock configuration register
	mov	_SPI0CKR,#0xA2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$78$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:78: sfr SPIDAT   = 0xA3;                   // SPI0 data register
	mov	_SPIDAT,#0xA3
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$79$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:79: sfr SPI0DAT  = 0xA3;                   // SPI0 data register
	mov	_SPI0DAT,#0xA3
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$80$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:80: sfr P0MDOUT  = 0xA4;                   // Port0 output mode register
	mov	_P0MDOUT,#0xA4
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$81$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:81: sfr P1MDOUT  = 0xA5;                   // Port1 output mode register
	mov	_P1MDOUT,#0xA5
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$82$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:82: sfr P2MDOUT  = 0xA6;                   // Port2 output mode register
	mov	_P2MDOUT,#0xA6
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$83$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:83: sfr P3MDOUT  = 0xA7;                   // Port3 output mode register
	mov	_P3MDOUT,#0xA7
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$84$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:84: sfr IE       = 0xA8;                   // Interrupt enable
	mov	_IE,#0xA8
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$85$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:85: sfr CLKSEL   = 0xA9;                   // Clock source select
	mov	_CLKSEL,#0xA9
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$86$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:86: sfr EMI0CN   = 0xAA;                   // External Memory Interface Control
	mov	_EMI0CN,#0xAA
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$87$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:87: sfr P3       = 0xB0;                   // Port3
	mov	_P3,#0xB0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$88$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:88: sfr OSCXCN   = 0xB1;                   // External oscillator control
	mov	_OSCXCN,#0xB1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$89$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:89: sfr OSCICN   = 0xB2;                   // Internal oscillator control
	mov	_OSCICN,#0xB2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$90$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:90: sfr OSCICL   = 0xB3;                   // Internal oscillator calibration
	mov	_OSCICL,#0xB3
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$91$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:91: sfr FLSCL    = 0xB6;                   // Flash scale register
	mov	_FLSCL,#0xB6
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$92$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:92: sfr FLKEY    = 0xB7;                   // Flash lock & key register
	mov	_FLKEY,#0xB7
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$93$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:93: sfr IP       = 0xB8;                   // Interrupt priority
	mov	_IP,#0xB8
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$94$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:94: sfr CLKMUL   = 0xB9;                   // Clock multiplier control register
	mov	_CLKMUL,#0xB9
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$95$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:95: sfr AMX0N    = 0xBA;                   // ADC0 mux negative channel selection
	mov	_AMX0N,#0xBA
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$96$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:96: sfr AMX0P    = 0xBB;                   // ADC0 mux positive channel selection
	mov	_AMX0P,#0xBB
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$97$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:97: sfr ADC0CF   = 0xBC;                   // ADC0 configuration
	mov	_ADC0CF,#0xBC
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$98$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:98: sfr ADC0L    = 0xBD;                   // ADC0 data low
	mov	_ADC0L,#0xBD
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$99$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:99: sfr ADC0H    = 0xBE;                   // ADC0 data high
	mov	_ADC0H,#0xBE
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$100$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:100: sfr SMB0CN   = 0xC0;                   // SMBus control
	mov	_SMB0CN,#0xC0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$101$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:101: sfr SMB0CF   = 0xC1;                   // SMBus configuration
	mov	_SMB0CF,#0xC1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$102$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:102: sfr SMB0DAT  = 0xC2;                   // SMBus data
	mov	_SMB0DAT,#0xC2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$103$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:103: sfr ADC0GTL  = 0xC3;                   // ADC0 greater-than data low register
	mov	_ADC0GTL,#0xC3
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$104$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:104: sfr ADC0GTH  = 0xC4;                   // ADC0 greater-than data high register
	mov	_ADC0GTH,#0xC4
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$105$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:105: sfr ADC0LTL  = 0xC5;                   // ADC0 less-than data low register
	mov	_ADC0LTL,#0xC5
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$106$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:106: sfr ADC0LTH  = 0xC6;                   // ADC0 less-than data high register
	mov	_ADC0LTH,#0xC6
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$107$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:107: sfr TMR2CN   = 0xC8;                   // Timer2 control register
	mov	_TMR2CN,#0xC8
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$108$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:108: sfr REG0CN   = 0xC9;                   // Regulator control register
	mov	_REG0CN,#0xC9
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$109$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:109: sfr TMR2RLL  = 0xCA;                   // Timer2 reload register - Low byte
	mov	_TMR2RLL,#0xCA
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$110$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:110: sfr TMR2RLH  = 0xCB;                   // Timer2 reload register - High byte
	mov	_TMR2RLH,#0xCB
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$111$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:111: sfr TMR2L    = 0xCC;                   // Timer2 - Low byte
	mov	_TMR2L,#0xCC
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$112$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:112: sfr TMR2H    = 0xCD;                   // Timer2 - High byte
	mov	_TMR2H,#0xCD
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$113$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:113: sfr PSW      = 0xD0;                   // Program Status Word
	mov	_PSW,#0xD0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$114$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:114: sfr REF0CN   = 0xD1;                   // Voltage reference control register
	mov	_REF0CN,#0xD1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$115$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:115: sfr P0SKIP   = 0xD4;                   // Port0 crossbar skip register
	mov	_P0SKIP,#0xD4
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$116$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:116: sfr P1SKIP   = 0xD5;                   // Port1 crossbar skip register
	mov	_P1SKIP,#0xD5
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$117$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:117: sfr P2SKIP   = 0xD6;                   // Port2 crossbar skip register
	mov	_P2SKIP,#0xD6
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$118$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:118: sfr USB0XCN  = 0xD7;                   // USB0 tranceiver control register
	mov	_USB0XCN,#0xD7
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$119$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:119: sfr PCA0CN   = 0xD8;                   // PCA0 control register
	mov	_PCA0CN,#0xD8
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$120$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:120: sfr PCA0MD   = 0xD9;                   // PCA0 mode register
	mov	_PCA0MD,#0xD9
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$121$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:121: sfr PCA0CPM0 = 0xDA;                   // Capture/compare module0 mode
	mov	_PCA0CPM0,#0xDA
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$122$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:122: sfr PCA0CPM1 = 0xDB;                   // Capture/compare module1 mode
	mov	_PCA0CPM1,#0xDB
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$123$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:123: sfr PCA0CPM2 = 0xDC;                   // Capture/compare module2 mode
	mov	_PCA0CPM2,#0xDC
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$124$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:124: sfr PCA0CPM3 = 0xDD;                   // Capture/compare module3 mode
	mov	_PCA0CPM3,#0xDD
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$125$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:125: sfr PCA0CPM4 = 0xDE;                   // Capture/compare module4 mode
	mov	_PCA0CPM4,#0xDE
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$126$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:126: sfr ACC      = 0xE0;                   // Accumulator
	mov	_ACC,#0xE0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$127$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:127: sfr XBR0     = 0xE1;                   // Port I/O crossbar register 0
	mov	_XBR0,#0xE1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$128$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:128: sfr XBR1     = 0xE2;                   // Port I/O crossbar register 1
	mov	_XBR1,#0xE2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$129$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:129: sfr IT01CF   = 0xE4;                   // Int0/int1 configuration register
	mov	_IT01CF,#0xE4
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$130$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:130: sfr EIE1     = 0xE6;                   // Extended interrupt enable 1
	mov	_EIE1,#0xE6
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$131$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:131: sfr EIE2     = 0xE7;                   // Extended interrupt enable 2
	mov	_EIE2,#0xE7
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$132$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:132: sfr ADC0CN   = 0xE8;                   // ADC0 control register
	mov	_ADC0CN,#0xE8
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$133$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:133: sfr PCA0CPL1 = 0xE9;                   // Capture/compare module1 - Low byte
	mov	_PCA0CPL1,#0xE9
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$134$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:134: sfr PCA0CPH1 = 0xEA;                   // Capture/compare module1 - High byte
	mov	_PCA0CPH1,#0xEA
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$135$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:135: sfr PCA0CPL2 = 0xEB;                   // Capture/compare module2 - Low byte
	mov	_PCA0CPL2,#0xEB
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$136$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:136: sfr PCA0CPH2 = 0xEC;                   // Capture/compare module2 - High byte
	mov	_PCA0CPH2,#0xEC
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$137$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:137: sfr PCA0CPL3 = 0xED;                   // Capture/compare module3 - Low byte
	mov	_PCA0CPL3,#0xED
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$138$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:138: sfr PCA0CPH3 = 0xEE;                   // Capture/compare module3 - High byte
	mov	_PCA0CPH3,#0xEE
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$139$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:139: sfr RSTSRC   = 0xEF;                   // Reset source register
	mov	_RSTSRC,#0xEF
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$140$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:140: sfr B        = 0xF0;                   // B register
	mov	_B,#0xF0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$141$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:141: sfr P0MDIN   = 0xF1;                   // Port0 input mode register
	mov	_P0MDIN,#0xF1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$142$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:142: sfr P1MDIN   = 0xF2;                   // Port1 input mode register
	mov	_P1MDIN,#0xF2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$143$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:143: sfr P2MDIN   = 0xF3;                   // Port2 input mode register
	mov	_P2MDIN,#0xF3
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$144$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:144: sfr P3MDIN   = 0xF4;                   // Port3 input mode register
	mov	_P3MDIN,#0xF4
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$145$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:145: sfr EIP1     = 0xF6;                   // Extended interrupt priority 1
	mov	_EIP1,#0xF6
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$146$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:146: sfr EIP2     = 0xF7;                   // Extended interrupt priority 2
	mov	_EIP2,#0xF7
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$147$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:147: sfr SPI0CN   = 0xF8;                   // SPI0 control register
	mov	_SPI0CN,#0xF8
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$148$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:148: sfr PCA0L    = 0xF9;                   // PCA0 counter/timer - Low byte
	mov	_PCA0L,#0xF9
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$149$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:149: sfr PCA0H    = 0xFA;                   // PCA0 counter/timer - High byte
	mov	_PCA0H,#0xFA
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$150$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:150: sfr PCA0CPL0 = 0xFB;                   // Capture/compare module0 - Low byte
	mov	_PCA0CPL0,#0xFB
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$151$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:151: sfr PCA0CPH0 = 0xFC;                   // Capture/compare module0 - High byte
	mov	_PCA0CPH0,#0xFC
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$152$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:152: sfr PCA0CPL4 = 0xFD;                   // Capture/compare module4 - Low byte
	mov	_PCA0CPL4,#0xFD
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$153$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:153: sfr PCA0CPH4 = 0xFE;                   // Capture/compare module4 - High byte
	mov	_PCA0CPH4,#0xFE
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$154$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:154: sfr VDM0CN   = 0xFF;                   // Vdd monitor control
	mov	_VDM0CN,#0xFF
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$161$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:161: sbit TF1     = 0x8F;                   // Timer1 overflow flag
	setb	_TF1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$162$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:162: sbit TR1     = 0x8E;                   // Timer1 on/off control
	setb	_TR1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$163$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:163: sbit TF0     = 0x8D;                   // Timer0 overflow flag
	setb	_TF0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$164$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:164: sbit TR0     = 0x8C;                   // Timer0 on/off control
	setb	_TR0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$165$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:165: sbit IE1     = 0x8B;                   // Ext interrupt 1 edge flag
	setb	_IE1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$166$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:166: sbit IT1     = 0x8A;                   // Ext interrupt 1 type
	setb	_IT1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$167$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:167: sbit IE0     = 0x89;                   // Ext interrupt 0 edge flag
	setb	_IE0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$168$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:168: sbit IT0     = 0x88;                   // Ext interrupt 0 type
	setb	_IT0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$171$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:171: sbit S0MODE  = 0x9F;                   // Serial mode control bit 0
	setb	_S0MODE
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$173$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:173: sbit MCE0    = 0x9D;                   // Multiprocessor communication enable
	setb	_MCE0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$174$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:174: sbit REN0    = 0x9C;                   // Receive enable
	setb	_REN0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$175$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:175: sbit TB80    = 0x9B;                   // Transmit bit 8
	setb	_TB80
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$176$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:176: sbit RB80    = 0x9A;                   // Receive bit 8
	setb	_RB80
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$177$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:177: sbit TI0     = 0x99;                   // Transmit interrupt flag
	setb	_TI0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$178$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:178: sbit RI0     = 0x98;                   // Receive interrupt flag
	setb	_RI0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$181$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:181: sbit EA      = 0xAF;                   // Global interrupt enable
	setb	_EA
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$182$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:182: sbit ESPI0   = 0xAE;                   // SPI0 interrupt enable
	setb	_ESPI0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$183$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:183: sbit ET2     = 0xAD;                   // Timer2 interrupt enable
	setb	_ET2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$184$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:184: sbit ES0     = 0xAC;                   // UART0 interrupt enable
	setb	_ES0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$185$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:185: sbit ET1     = 0xAB;                   // Timer1 interrupt enable
	setb	_ET1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$186$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:186: sbit EX1     = 0xAA;                   // External interrupt 1 enable
	setb	_EX1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$187$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:187: sbit ET0     = 0xA9;                   // Timer0 interrupt enable
	setb	_ET0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$188$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:188: sbit EX0     = 0xA8;                   // External interrupt 0 enable
	setb	_EX0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$192$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:192: sbit PSPI0   = 0xBE;                   // SPI0 interrupt priority
	setb	_PSPI0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$193$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:193: sbit PT2     = 0xBD;                   // Timer2 priority
	setb	_PT2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$194$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:194: sbit PS0     = 0xBC;                   // UART0 priority
	setb	_PS0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$195$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:195: sbit PT1     = 0xBB;                   // Timer1 priority
	setb	_PT1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$196$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:196: sbit PX1     = 0xBA;                   // External interrupt 1 priority
	setb	_PX1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$197$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:197: sbit PT0     = 0xB9;                   // Timer0 priority
	setb	_PT0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$198$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:198: sbit PX0     = 0xB8;                   // External interrupt 0 priority
	setb	_PX0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$201$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:201: sbit MASTER  = 0xC7;                   // Master/slave indicator
	setb	_MASTER
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$202$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:202: sbit TXMODE  = 0xC6;                   // Transmit mode indicator
	setb	_TXMODE
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$203$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:203: sbit STA     = 0xC5;                   // Start flag
	setb	_STA
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$204$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:204: sbit STO     = 0xC4;                   // Stop flag
	setb	_STO
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$205$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:205: sbit ACKRQ   = 0xC3;                   // Acknowledge request
	setb	_ACKRQ
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$206$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:206: sbit ARBLOST = 0xC2;                   // Arbitration lost indicator
	setb	_ARBLOST
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$207$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:207: sbit ACK     = 0xC1;                   // Acknowledge flag
	setb	_ACK
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$208$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:208: sbit SI      = 0xC0;                   // SMBus interrupt flag
	setb	_SI
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$211$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:211: sbit TF2H    = 0xCF;                   // Timer2 high byte overflow flag
	setb	_TF2H
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$212$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:212: sbit TF2L    = 0xCE;                   // Timer2 low byte overflow flag
	setb	_TF2L
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$213$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:213: sbit TF2LEN  = 0xCD;                   // Timer2 low byte interrupt enable
	setb	_TF2LEN
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$214$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:214: sbit T2SOF   = 0xCC;                   // Timer2 start-of-frame capture enable
	setb	_T2SOF
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$215$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:215: sbit T2SPLIT = 0xCB;                   // Timer2 split mode enable
	setb	_T2SPLIT
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$216$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:216: sbit TR2     = 0xCA;                   // Timer2 on/off control
	setb	_TR2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$218$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:218: sbit T2XCLK  = 0xC8;                   // Timer2 external clock select
	setb	_T2XCLK
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$221$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:221: sbit CY      = 0xD7;                   // Carry flag
	setb	_CY
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$222$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:222: sbit AC      = 0xD6;                   // Auxiliary carry flag
	setb	_AC
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$223$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:223: sbit F0      = 0xD5;                   // User flag 0
	setb	_F0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$224$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:224: sbit RS1     = 0xD4;                   // Register bank select 1
	setb	_RS1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$225$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:225: sbit RS0     = 0xD3;                   // Register bank select 0
	setb	_RS0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$226$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:226: sbit OV      = 0xD2;                   // Overflow flag
	setb	_OV
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$227$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:227: sbit F1      = 0xD1;                   // User flag 1
	setb	_F1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$228$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:228: sbit P       = 0xD0;                   // Accumulator parity flag
	setb	_P
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$231$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:231: sbit CF      = 0xDF;                   // PCA0 counter overflow flag
	setb	_CF
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$232$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:232: sbit CR      = 0xDE;                   // PCA0 counter run control
	setb	_CR
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$234$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:234: sbit CCF4    = 0xDC;                   // PCA0 module4 capture/compare flag
	setb	_CCF4
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$235$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:235: sbit CCF3    = 0xDB;                   // PCA0 module3 capture/compare flag
	setb	_CCF3
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$236$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:236: sbit CCF2    = 0xDA;                   // PCA0 module2 capture/compare flag
	setb	_CCF2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$237$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:237: sbit CCF1    = 0xD9;                   // PCA0 module1 capture/compare flag
	setb	_CCF1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$238$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:238: sbit CCF0    = 0xD8;                   // PCA0 module0 capture/compare flag
	setb	_CCF0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$241$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:241: sbit AD0EN   = 0xEF;                   // ADC0 enable
	setb	_AD0EN
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$242$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:242: sbit AD0TM   = 0xEE;                   // ADC0 track mode
	setb	_AD0TM
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$243$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:243: sbit AD0INT  = 0xED;                   // ADC0 converision complete interrupt flag
	setb	_AD0INT
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$244$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:244: sbit AD0BUSY = 0xEC;                   // ADC0 busy flag
	setb	_AD0BUSY
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$245$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:245: sbit AD0WINT = 0xEB;                   // ADC0 window compare interrupt flag
	setb	_AD0WINT
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$246$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:246: sbit AD0CM2  = 0xEA;                   // ADC0 conversion mode select 2
	setb	_AD0CM2
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$247$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:247: sbit AD0CM1  = 0xE9;                   // ADC0 conversion mode select 1
	setb	_AD0CM1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$248$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:248: sbit AD0CM0  = 0xE8;                   // ADC0 conversion mode select 0
	setb	_AD0CM0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$251$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:251: sbit SPIF    = 0xFF;                   // SPI0 interrupt flag
	setb	_SPIF
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$252$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:252: sbit WCOL    = 0xFE;                   // SPI0 write collision flag
	setb	_WCOL
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$253$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:253: sbit MODF    = 0xFD;                   // SPI0 mode fault flag
	setb	_MODF
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$254$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:254: sbit RXOVRN  = 0xFC;                   // SPI0 rx overrun flag
	setb	_RXOVRN
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$255$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:255: sbit NSSMD1  = 0xFB;                   // SPI0 slave select mode 1
	setb	_NSSMD1
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$256$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:256: sbit NSSMD0  = 0xFA;                   // SPI0 slave select mode 0
	setb	_NSSMD0
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$257$1$1 ==.
;	c:/SiLabs/MCU/Inc/c8051F320.h:257: sbit TXBMT   = 0xF9;                   // SPI0 transmit buffer empty
	setb	_TXBMT
	G$Force_Stall$0$0 ==.
	C$c8051F320.h$258$1$1 ==.
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
;Allocation info for local variables in function 'Usb_ISR'
;------------------------------------------------------------
;bCommon                   Allocated to registers r2 
;bIn                       Allocated to registers r3 
;bOut                      Allocated to registers r4 
;------------------------------------------------------------
	G$Usb_ISR$0$0 ==.
	C$Interrupts.c$65$0$0 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:65: void Usb_ISR(void) interrupt 8         // Top-level USB ISR
;	-----------------------------------------
;	 function Usb_ISR
;	-----------------------------------------
_Usb_ISR:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
	C$Interrupts.c$68$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:68: POLL_READ_BYTE(CMINT, bCommon);     // Read all interrupt registers
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x86
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	r2,_USB0DAT
	C$Interrupts.c$69$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:69: POLL_READ_BYTE(IN1INT, bIn);        // this read also clears the register
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x82
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	r3,_USB0DAT
	C$Interrupts.c$70$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:70: POLL_READ_BYTE(OUT1INT, bOut);
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x84
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	mov	r4,_USB0DAT
	C$Interrupts.c$72$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:72: if (bCommon & rbRSUINT)          // Handle Resume interrupt
	mov	a,r2
	jnb	acc.1,00120$
	C$Interrupts.c$74$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:74: Usb_Resume();
	push	ar2
	push	ar3
	push	ar4
	lcall	_Usb_Resume
	pop	ar4
	pop	ar3
	pop	ar2
00120$:
	C$Interrupts.c$76$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:76: if (bCommon & rbRSTINT)          // Handle Reset interrupt
	mov	a,r2
	jnb	acc.2,00122$
	C$Interrupts.c$78$3$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:78: Usb_Reset();
	push	ar2
	push	ar3
	push	ar4
	lcall	_Usb_Reset
	pop	ar4
	pop	ar3
	pop	ar2
00122$:
	C$Interrupts.c$80$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:80: if (bIn & rbEP0)                 // Handle Setup packet received
	mov	a,r3
	jnb	acc.0,00124$
	C$Interrupts.c$82$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:82: Handle_Setup();               // is transmit mode
	push	ar2
	push	ar3
	push	ar4
	lcall	_Handle_Setup
	pop	ar4
	pop	ar3
	pop	ar2
00124$:
	C$Interrupts.c$84$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:84: if (bIn & rbIN1)                 // Handle In Packet sent, put new data
	mov	a,r3
	jnb	acc.1,00126$
	C$Interrupts.c$86$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:86: Handle_In1();
	push	ar2
	push	ar4
	lcall	_Handle_In1
	pop	ar4
	pop	ar2
00126$:
	C$Interrupts.c$88$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:88: if (bOut & rbOUT2)               // Handle Out packet received, take data
	mov	a,r4
	jnb	acc.2,00128$
	C$Interrupts.c$90$3$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:90: Handle_Out2();
	push	ar2
	lcall	_Handle_Out2
	pop	ar2
00128$:
	C$Interrupts.c$92$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:92: if (bCommon & rbSUSINT)          // Handle Suspend interrupt
	mov	a,r2
	jnb	acc.0,00131$
	C$Interrupts.c$94$3$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:94: Usb_Suspend();
	lcall	_Usb_Suspend
00131$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$Interrupts.c$97$1$5 ==.
	XG$Usb_ISR$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_ISR'
;------------------------------------------------------------
;RXbyte                    Allocated to registers r2 r3 
;------------------------------------------------------------
	G$SPI_ISR$0$0 ==.
	C$Interrupts.c$108$1$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:108: void SPI_ISR() interrupt 6
;	-----------------------------------------
;	 function SPI_ISR
;	-----------------------------------------
_SPI_ISR:
	push	acc
	push	b
	push	ar2
	push	ar3
	push	psw
	mov	psw,#0x00
	C$Interrupts.c$120$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:120: if ((SPI0CN & 0x80) == 0x80)		// TX complete, byte ready to read
	mov	a,#0x80
	anl	a,_SPI0CN
	mov	r2,a
	cjne	r2,#0x80,00114$
	C$Interrupts.c$122$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:122: SPIF = 0;			// clear interrupt flag
	clr	_SPIF
	C$Interrupts.c$124$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:124: RXbyte = SPI0DAT;	// This could be a byte from the DAC, ADC, or RAM.
	mov	r2,_SPI0DAT
	mov	r3,#0x00
	C$Interrupts.c$125$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:125: if (Writing_to_ADC > 0)			// ADC
	clr	c
	clr	a
	subb	a,_Writing_to_ADC
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_Writing_to_ADC + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
	C$Interrupts.c$127$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:127: SPI_ADC_Bytes++;			// Do not zero in this ISR
	inc	_SPI_ADC_Bytes
	clr	a
	cjne	a,_SPI_ADC_Bytes,00134$
	inc	(_SPI_ADC_Bytes + 1)
00134$:
	C$Interrupts.c$128$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:128: if (SPI_ADC_Bytes == 0)
	mov	a,_SPI_ADC_Bytes
	orl	a,(_SPI_ADC_Bytes + 1)
	jnz	00102$
	C$Interrupts.c$129$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:129: latest_ADC_HighByte = RXbyte;
	mov	_latest_ADC_HighByte,r2
	mov	(_latest_ADC_HighByte + 1),r3
	sjmp	00112$
00102$:
	C$Interrupts.c$131$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:131: latest_ADC_LowByte = RXbyte;
	mov	_latest_ADC_LowByte,r2
	mov	(_latest_ADC_LowByte + 1),r3
	sjmp	00112$
00111$:
	C$Interrupts.c$133$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:133: else if (Writing_to_DAC > 0)	// DAC
	clr	c
	clr	a
	subb	a,_Writing_to_DAC
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_Writing_to_DAC + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	C$Interrupts.c$134$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:134: SPI_DAC_Bytes++;			// Do not zero in this ISR
	inc	_SPI_DAC_Bytes
	clr	a
	C$Interrupts.c$136$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:136: POLL_WRITE_BYTE(bError, 1);
	cjne	a,_SPI_DAC_Bytes,00112$
	inc	(_SPI_DAC_Bytes + 1)
	sjmp	00112$
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
00112$:
	mov	_USB0ADR,#0xA2
	mov	_USB0DAT,#0x01
00114$:
	C$Interrupts.c$138$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:138: if ((SPI0CN & 0x40) == 0x40)	// write collision
	mov	a,#0x40
	anl	a,_SPI0CN
	mov	r2,a
	cjne	r2,#0x40,00116$
	C$Interrupts.c$140$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:140: WCOL = 0;		// clear interrupt flag
	clr	_WCOL
00116$:
	C$Interrupts.c$142$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:142: if ((SPI0CN & 0x20) == 0x20)	// mode fault
	mov	a,#0x20
	anl	a,_SPI0CN
	mov	r2,a
	cjne	r2,#0x20,00118$
	C$Interrupts.c$144$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:144: MODF = 0;		// clear interrupt flag
	clr	_MODF
00118$:
	C$Interrupts.c$146$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:146: if ((SPI0CN & 0x10) == 0x10)	// RX overrun
	mov	a,#0x10
	anl	a,_SPI0CN
	mov	r2,a
	cjne	r2,#0x10,00121$
	C$Interrupts.c$148$2$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:148: RXOVRN = 0;		// clear interrupt flag
	clr	_RXOVRN
00121$:
	pop	psw
	pop	ar3
	pop	ar2
	pop	b
	pop	acc
	C$Interrupts.c$150$2$1 ==.
	XG$SPI_ISR$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb_Reset'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Usb_Reset$0$0 ==.
	C$Interrupts.c$168$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:168: void Usb_Reset(void)
;	-----------------------------------------
;	 function Usb_Reset
;	-----------------------------------------
_Usb_Reset:
	C$Interrupts.c$170$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:170: USB_State = DEV_DEFAULT;            // Set device state to default
	mov	_USB_State,#0x02
	C$Interrupts.c$172$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:172: POLL_WRITE_BYTE(POWER, 0x01);       // Clear usb inhibit bit to enable USB
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x01
	C$Interrupts.c$175$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:175: Ep_Status[0] = EP_IDLE;             // Set default Endpoint Status
	mov	_Ep_Status,#0x00
	C$Interrupts.c$176$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:176: Ep_Status[1] = EP_HALT;
	mov	(_Ep_Status + 0x0001),#0x03
	C$Interrupts.c$177$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:177: Ep_Status[2] = EP_HALT;
	mov	(_Ep_Status + 0x0002),#0x03
	C$Interrupts.c$178$1$1 ==.
	XG$Usb_Reset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Handle_Setup'
;------------------------------------------------------------
;ControlReg                Allocated to registers r2 
;TempReg                   Allocated to registers r2 
;------------------------------------------------------------
	G$Handle_Setup$0$0 ==.
	C$Interrupts.c$193$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:193: void Handle_Setup(void)
;	-----------------------------------------
;	 function Handle_Setup
;	-----------------------------------------
_Handle_Setup:
	C$Interrupts.c$198$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:198: POLL_WRITE_BYTE(INDEX, 0);          // Set Index to Endpoint Zero
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	C$Interrupts.c$199$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:199: POLL_READ_BYTE(E0CSR, ControlReg);  // Read control register
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x91
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r2,_USB0DAT
	C$Interrupts.c$201$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:201: if (Ep_Status[0] == EP_ADDRESS)     // Handle Status Phase of Set Address
	mov	a,#0x05
	cjne	a,_Ep_Status,00114$
	C$Interrupts.c$204$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:204: POLL_WRITE_BYTE(FADDR, Setup.wValue.c[LSB]);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x00
	mov	_USB0DAT,(_Setup + 0x0003)
	C$Interrupts.c$205$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:205: Ep_Status[0] = EP_IDLE;
	mov	_Ep_Status,#0x00
00114$:
	C$Interrupts.c$208$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:208: if (ControlReg & rbSTSTL)           // If last packet was a sent stall, reset
	mov	a,r2
	jnb	acc.2,00119$
	C$Interrupts.c$210$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:210: POLL_WRITE_BYTE(E0CSR, 0);
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x00
	C$Interrupts.c$211$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:211: Ep_Status[0] = EP_IDLE;
	mov	_Ep_Status,#0x00
	C$Interrupts.c$212$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:212: return;
	ret
00119$:
	C$Interrupts.c$215$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:215: if (ControlReg & rbSUEND)           // If last setup transaction was ended
	mov	a,r2
	jnb	acc.4,00127$
	C$Interrupts.c$217$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:217: POLL_WRITE_BYTE(E0CSR, rbDATAEND);
00120$:
	mov	a,_USB0ADR
	jb	acc.7,00120$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x08
	C$Interrupts.c$218$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:218: POLL_WRITE_BYTE(E0CSR, rbSSUEND); // Serviced Setup End bit and return EP0
00123$:
	mov	a,_USB0ADR
	jb	acc.7,00123$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x80
	C$Interrupts.c$219$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:219: Ep_Status[0] = EP_IDLE;          // to idle state
	mov	_Ep_Status,#0x00
00127$:
	C$Interrupts.c$222$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:222: if (Ep_Status[0] == EP_IDLE)        // If Endpoint 0 is in idle mode
	mov	a,_Ep_Status
	jz	00204$
	ljmp	00142$
00204$:
	C$Interrupts.c$224$2$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:224: if (ControlReg & rbOPRDY)        // Make sure that EP 0 has an Out Packet ready from host
	mov	a,r2
	jb	acc.0,00205$
	ljmp	00142$
00205$:
	C$Interrupts.c$226$3$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:226: Fifo_Read(FIFO_EP0, 8, (BYTE *)&Setup);
	mov	_Fifo_Read_PARM_3,#_Setup
	mov	(_Fifo_Read_PARM_3 + 1),#0x00
	mov	(_Fifo_Read_PARM_3 + 2),#0x40
	mov	_Fifo_Read_PARM_2,#0x08
	clr	a
	mov	(_Fifo_Read_PARM_2 + 1),a
	mov	dpl,#0x20
	push	ar2
	lcall	_Fifo_Read
	pop	ar2
	C$Interrupts.c$232$3$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:232: Setup.wValue.i = Setup.wValue.c[MSB] + 256*Setup.wValue.c[LSB];
	mov	r3,(_Setup + 0x0002)
	mov	r4,#0x00
	mov	r6,(_Setup + 0x0003)
	mov	r5,#0x00
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	(_Setup + 0x0002),r3
	mov	((_Setup + 0x0002) + 1),r4
	C$Interrupts.c$233$3$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:233: Setup.wIndex.i = Setup.wIndex.c[MSB] + 256*Setup.wIndex.c[LSB];
	mov	r3,(_Setup + 0x0004)
	mov	r4,#0x00
	mov	r6,(_Setup + 0x0005)
	mov	r5,#0x00
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	(_Setup + 0x0004),r3
	mov	((_Setup + 0x0004) + 1),r4
	C$Interrupts.c$234$3$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:234: Setup.wLength.i = Setup.wLength.c[MSB] + 256*Setup.wLength.c[LSB];
	mov	r3,(_Setup + 0x0006)
	mov	r4,#0x00
	mov	r6,(_Setup + 0x0007)
	mov	r5,#0x00
	mov	a,r5
	add	a,r3
	mov	r3,a
	mov	a,r6
	addc	a,r4
	mov	r4,a
	mov	(_Setup + 0x0006),r3
	mov	((_Setup + 0x0006) + 1),r4
	C$Interrupts.c$237$3$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:237: switch(Setup.bRequest)        // Call correct subroutine to handle each kind of
	mov	a,(_Setup + 0x0001)
	mov	r3,a
	add	a,#0xff - 0x0B
	jnc	00206$
	ljmp	00137$
00206$:
	mov	a,r3
	add	a,r3
	add	a,r3
	mov	dptr,#00207$
	jmp	@a+dptr
00207$:
	ljmp	00128$
	ljmp	00129$
	ljmp	00137$
	ljmp	00130$
	ljmp	00137$
	ljmp	00131$
	ljmp	00132$
	ljmp	00137$
	ljmp	00133$
	ljmp	00134$
	ljmp	00135$
	ljmp	00136$
	C$Interrupts.c$239$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:239: case GET_STATUS:
00128$:
	C$Interrupts.c$240$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:240: Get_Status();
	push	ar2
	lcall	_Get_Status
	pop	ar2
	C$Interrupts.c$241$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:241: break;
	C$Interrupts.c$242$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:242: case CLEAR_FEATURE:
	sjmp	00142$
00129$:
	C$Interrupts.c$243$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:243: Clear_Feature();
	push	ar2
	lcall	_Clear_Feature
	pop	ar2
	C$Interrupts.c$244$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:244: break;
	C$Interrupts.c$245$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:245: case SET_FEATURE:
	sjmp	00142$
00130$:
	C$Interrupts.c$246$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:246: Set_Feature();
	push	ar2
	lcall	_Set_Feature
	pop	ar2
	C$Interrupts.c$247$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:247: break;
	C$Interrupts.c$248$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:248: case SET_ADDRESS:
	sjmp	00142$
00131$:
	C$Interrupts.c$249$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:249: Set_Address();
	push	ar2
	lcall	_Set_Address
	pop	ar2
	C$Interrupts.c$250$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:250: break;
	C$Interrupts.c$251$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:251: case GET_DESCRIPTOR:
	sjmp	00142$
00132$:
	C$Interrupts.c$252$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:252: Get_Descriptor();
	push	ar2
	lcall	_Get_Descriptor
	pop	ar2
	C$Interrupts.c$253$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:253: break;
	C$Interrupts.c$254$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:254: case GET_CONFIGURATION:
	sjmp	00142$
00133$:
	C$Interrupts.c$255$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:255: Get_Configuration();
	push	ar2
	lcall	_Get_Configuration
	pop	ar2
	C$Interrupts.c$256$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:256: break;
	C$Interrupts.c$257$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:257: case SET_CONFIGURATION:
	sjmp	00142$
00134$:
	C$Interrupts.c$258$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:258: Set_Configuration();
	push	ar2
	lcall	_Set_Configuration
	pop	ar2
	C$Interrupts.c$259$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:259: break;
	C$Interrupts.c$260$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:260: case GET_INTERFACE:
	sjmp	00142$
00135$:
	C$Interrupts.c$261$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:261: Get_Interface();
	push	ar2
	lcall	_Get_Interface
	pop	ar2
	C$Interrupts.c$262$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:262: break;
	C$Interrupts.c$263$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:263: case SET_INTERFACE:
	sjmp	00142$
00136$:
	C$Interrupts.c$264$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:264: Set_Interface();
	push	ar2
	lcall	_Set_Interface
	pop	ar2
	C$Interrupts.c$265$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:265: break;
	C$Interrupts.c$266$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:266: default:
	sjmp	00142$
00137$:
	C$Interrupts.c$267$4$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:267: Force_Stall();          // Send stall to host if invalid request
	push	ar2
	lcall	_Force_Stall
	pop	ar2
	C$Interrupts.c$269$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:269: }
00142$:
	C$Interrupts.c$273$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:273: if (Ep_Status[0] == EP_TX)          // See if the endpoint has data to transmit to host
	mov	a,#0x01
	cjne	a,_Ep_Status,00208$
	sjmp	00209$
00208$:
	ret
00209$:
	C$Interrupts.c$275$2$14 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:275: if (!(ControlReg & rbINPRDY))    // Make sure you don't overwrite last packet
	mov	a,r2
	jnb	acc.1,00210$
	ret
00210$:
	C$Interrupts.c$279$3$15 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:279: POLL_READ_BYTE(E0CSR, ControlReg);
00143$:
	mov	a,_USB0ADR
	jb	acc.7,00143$
	mov	_USB0ADR,#0x91
00146$:
	mov	a,_USB0ADR
	jb	acc.7,00146$
	C$Interrupts.c$282$3$15 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:282: if ((!(ControlReg & rbSUEND)) || (!(ControlReg & rbOPRDY)))
	mov	a,_USB0DAT
	mov	r2,a
	jnb	acc.4,00157$
	mov	a,r2
	jnb	acc.0,00214$
	ret
00214$:
00157$:
	C$Interrupts.c$286$4$17 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:286: TempReg = rbINPRDY;        // Add In Packet ready flag to E0CSR bitmask
	mov	r2,#0x02
	C$Interrupts.c$289$4$17 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:289: if (DataSize >= EP0_PACKET_SIZE)
	clr	c
	mov	a,_DataSize
	subb	a,#0x40
	mov	a,(_DataSize + 1)
	subb	a,#0x00
	jc	00150$
	C$Interrupts.c$291$5$18 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:291: Fifo_Write(FIFO_EP0, EP0_PACKET_SIZE, (BYTE *)DataPtr);// Put Data on Fifo
	mov	_Fifo_Write_PARM_2,#0x40
	clr	a
	mov	(_Fifo_Write_PARM_2 + 1),a
	mov	_Fifo_Write_PARM_3,_DataPtr
	mov	(_Fifo_Write_PARM_3 + 1),(_DataPtr + 1)
	mov	(_Fifo_Write_PARM_3 + 2),(_DataPtr + 2)
	mov	dpl,#0x20
	push	ar2
	lcall	_Fifo_Write
	pop	ar2
	C$Interrupts.c$292$5$18 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:292: DataPtr  += EP0_PACKET_SIZE;                           // Advance data pointer
	mov	a,#0x40
	add	a,_DataPtr
	mov	_DataPtr,a
	clr	a
	addc	a,(_DataPtr + 1)
	mov	(_DataPtr + 1),a
	C$Interrupts.c$293$5$18 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:293: DataSize -= EP0_PACKET_SIZE;                           // Decrement data size
	mov	a,_DataSize
	add	a,#0xc0
	mov	_DataSize,a
	mov	a,(_DataSize + 1)
	addc	a,#0xff
	mov	(_DataSize + 1),a
	C$Interrupts.c$294$5$18 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:294: DataSent += EP0_PACKET_SIZE;                           // Increment data sent counter
	mov	a,#0x40
	add	a,_DataSent
	mov	_DataSent,a
	clr	a
	addc	a,(_DataSent + 1)
	mov	(_DataSent + 1),a
	sjmp	00151$
00150$:
	C$Interrupts.c$298$5$19 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:298: Fifo_Write(FIFO_EP0, DataSize, (BYTE *)DataPtr);       // Put Data on Fifo
	mov	_Fifo_Write_PARM_2,_DataSize
	mov	(_Fifo_Write_PARM_2 + 1),(_DataSize + 1)
	mov	_Fifo_Write_PARM_3,_DataPtr
	mov	(_Fifo_Write_PARM_3 + 1),(_DataPtr + 1)
	mov	(_Fifo_Write_PARM_3 + 2),(_DataPtr + 2)
	mov	dpl,#0x20
	lcall	_Fifo_Write
	C$Interrupts.c$299$5$19 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:299: TempReg |= rbDATAEND;                                  // Add Data End bit to bitmask
	mov	r2,#0x0A
	C$Interrupts.c$300$5$19 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:300: Ep_Status[0] = EP_IDLE;                                // Return EP 0 to idle state
	mov	_Ep_Status,#0x00
00151$:
	C$Interrupts.c$302$4$17 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:302: if (DataSent == Setup.wLength.i)
	mov	a,(_Setup + 0x0006)
	cjne	a,_DataSent,00154$
	mov	a,((_Setup + 0x0006) + 1)
	cjne	a,(_DataSent + 1),00154$
	C$Interrupts.c$307$5$20 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:307: TempReg |= rbDATAEND;    // Add Data End bit to mask
	orl	ar2,#0x08
	C$Interrupts.c$308$5$20 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:308: Ep_Status[0] = EP_IDLE;  // and return Endpoint 0 to an idle state
	mov	_Ep_Status,#0x00
	C$Interrupts.c$310$4$17 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:310: POLL_WRITE_BYTE(E0CSR, TempReg);                          // Write mask to E0CSR
00154$:
	mov	a,_USB0ADR
	jb	acc.7,00154$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,r2
	C$Interrupts.c$314$1$1 ==.
	XG$Handle_Setup$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Handle_In1'
;------------------------------------------------------------
;ControlReg                Allocated to registers r2 
;------------------------------------------------------------
	G$Handle_In1$0$0 ==.
	C$Interrupts.c$328$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:328: void Handle_In1()
;	-----------------------------------------
;	 function Handle_In1
;	-----------------------------------------
_Handle_In1:
	C$Interrupts.c$332$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:332: POLL_WRITE_BYTE(INDEX, 1);           // Set index to endpoint 1 registers
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
	C$Interrupts.c$333$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:333: POLL_READ_BYTE(EINCSR1, ControlReg); // Read contol register for EP 1
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x91
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r2,_USB0DAT
	C$Interrupts.c$335$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:335: if (Ep_Status[1] == EP_HALT)         // If endpoint is currently halted, 
	mov	a,#0x03
	cjne	a,(_Ep_Status + 0x0001),00124$
	C$Interrupts.c$338$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:338: POLL_WRITE_BYTE(EINCSR1, rbInSDSTL);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
	ret
00124$:
	C$Interrupts.c$344$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:344: if (ControlReg & rbInSTSTL)       // Clear sent stall if last packet
	mov	a,r2
	jnb	acc.5,00117$
	C$Interrupts.c$347$3$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:347: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
00117$:
	C$Interrupts.c$350$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:350: if (ControlReg & rbInUNDRUN)      // Clear underrun bit if it was set
	mov	a,r2
	jnb	acc.2,00122$
	C$Interrupts.c$352$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:352: POLL_WRITE_BYTE(EINCSR1, 0x00);
00118$:
	mov	a,_USB0ADR
	jb	acc.7,00118$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x00
00122$:
	C$Interrupts.c$357$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:357: Endpoint1();
	C$Interrupts.c$359$1$1 ==.
	XG$Handle_In1$0$0 ==.
	ljmp	_Endpoint1
;------------------------------------------------------------
;Allocation info for local variables in function 'Endpoint1'
;------------------------------------------------------------
;bEP                       Allocated to registers 
;uNumBytes                 Allocated to registers 
;bOp                       Allocated with name '_Endpoint1_bOp_1_1'
;------------------------------------------------------------
	G$Endpoint1$0$0 ==.
	C$Interrupts.c$372$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:372: void Endpoint1()
;	-----------------------------------------
;	 function Endpoint1
;	-----------------------------------------
_Endpoint1:
	C$Interrupts.c$377$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:377: BYTE bOp = 0x00;				//Operation to perform
	mov	_Endpoint1_bOp_1_1,#0x00
	C$Interrupts.c$380$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:380: Fifo_Read(bEP, uNumBytes, &bOp);
	mov	_Fifo_Read_PARM_3,#_Endpoint1_bOp_1_1
	mov	(_Fifo_Read_PARM_3 + 1),#0x00
	mov	(_Fifo_Read_PARM_3 + 2),#0x40
	mov	_Fifo_Read_PARM_2,#0x01
	clr	a
	mov	(_Fifo_Read_PARM_2 + 1),a
	mov	dpl,#0x01
	lcall	_Fifo_Read
	C$Interrupts.c$383$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:383: switch (bOp)
	clr	a
	cjne	a,_Endpoint1_bOp_1_1,00110$
	sjmp	00101$
00110$:
	mov	a,#0x02
	cjne	a,_Endpoint1_bOp_1_1,00111$
	sjmp	00102$
00111$:
	mov	a,#0x03
	C$Interrupts.c$385$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:385: case OP_SET_VOLTAGE:
	cjne	a,_Endpoint1_bOp_1_1,00105$
	sjmp	00103$
00101$:
	C$Interrupts.c$386$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:386: SetVoltage();
	C$Interrupts.c$387$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:387: break;
	C$Interrupts.c$389$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:389: case OP_SET_LASER:
	ljmp	_SetVoltage
00102$:
	C$Interrupts.c$390$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:390: SetLaser();
	C$Interrupts.c$391$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:391: break;
	C$Interrupts.c$393$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:393: case OP_PULSE_MOTOR:
	ljmp	_SetLaser
00103$:
	C$Interrupts.c$394$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:394: PulseMotor();
	C$Interrupts.c$396$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:396: }
	C$Interrupts.c$397$1$1 ==.
	XG$Endpoint1$0$0 ==.
	ljmp	_PulseMotor
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetVoltage'
;------------------------------------------------------------
;bEP                       Allocated to registers 
;uNumBytes                 Allocated to registers 
;pData                     Allocated with name '_SetVoltage_pData_1_1'
;------------------------------------------------------------
	G$SetVoltage$0$0 ==.
	C$Interrupts.c$422$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:422: void SetVoltage()
;	-----------------------------------------
;	 function SetVoltage
;	-----------------------------------------
_SetVoltage:
	C$Interrupts.c$430$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:430: Fifo_Read(bEP, uNumBytes, pData);
	mov	_Fifo_Read_PARM_3,#_SetVoltage_pData_1_1
	mov	(_Fifo_Read_PARM_3 + 1),#0x00
	mov	(_Fifo_Read_PARM_3 + 2),#0x40
	mov	_Fifo_Read_PARM_2,#0x02
	clr	a
	mov	(_Fifo_Read_PARM_2 + 1),a
	mov	dpl,#0x01
	lcall	_Fifo_Read
	C$Interrupts.c$433$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:433: if ((float)*pData > 0)
	mov	r2,_SetVoltage_pData_1_1
	mov	dpl,r2
	push	ar2
	lcall	___uchar2fs
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,r6
	lcall	___fsgt
	mov	r3,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	mov	a,r3
	jz	00104$
	C$Interrupts.c$435$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:435: POLL_WRITE_BYTE(bPos, 1);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0xA0
	mov	_USB0DAT,#0x01
	C$Interrupts.c$439$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:439: POLL_WRITE_BYTE(bPos, 0);
	sjmp	00109$
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0xA0
	mov	_USB0DAT,#0x00
00109$:
	C$Interrupts.c$443$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:443: Writing_to_DAC = 1;
	mov	_Writing_to_DAC,#0x01
	clr	a
	mov	(_Writing_to_DAC + 1),a
	C$Interrupts.c$446$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:446: POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x00
	C$Interrupts.c$447$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:447: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$Interrupts.c$448$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:448: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00113$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00145$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00145$
	sjmp	00146$
00145$:
	sjmp	00113$
00146$:
	C$Interrupts.c$449$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:449: SPI0DAT = pData[0];			// Upper part of byte
	mov	_SPI0DAT,r2
	C$Interrupts.c$450$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:450: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00116$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00147$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00147$
	sjmp	00148$
00147$:
	sjmp	00116$
00148$:
	C$Interrupts.c$451$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:451: SPI0DAT = pData[1];			// Lower part of byte
	mov	_SPI0DAT,(_SetVoltage_pData_1_1 + 0x0001)
	C$Interrupts.c$452$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:452: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
00119$:
	mov	a,#0x03
	cjne	a,_SPI_DAC_Bytes,00149$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00149$
	sjmp	00150$
00149$:
	sjmp	00119$
00150$:
	C$Interrupts.c$453$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:453: SPI_DAC_Bytes = 0;				// Reset byte TX counter
	clr	a
	mov	_SPI_DAC_Bytes,a
	mov	(_SPI_DAC_Bytes + 1),a
	C$Interrupts.c$454$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:454: POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication
00122$:
	mov	a,_USB0ADR
	jb	acc.7,00122$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x01
	C$Interrupts.c$457$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:457: Writing_to_DAC = 0;
	clr	a
	mov	_Writing_to_DAC,a
	mov	(_Writing_to_DAC + 1),a
	C$Interrupts.c$458$1$1 ==.
	XG$SetVoltage$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetLaser'
;------------------------------------------------------------
;bEP                       Allocated to registers 
;uNumBytes                 Allocated to registers 
;bState                    Allocated with name '_SetLaser_bState_1_1'
;------------------------------------------------------------
	G$SetLaser$0$0 ==.
	C$Interrupts.c$471$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:471: void SetLaser()
;	-----------------------------------------
;	 function SetLaser
;	-----------------------------------------
_SetLaser:
	C$Interrupts.c$476$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:476: BYTE bState = 0x00;				//State of the Laser to read
	mov	_SetLaser_bState_1_1,#0x00
	C$Interrupts.c$479$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:479: Fifo_Read(bEP, uNumBytes, &bState);
	mov	_Fifo_Read_PARM_3,#_SetLaser_bState_1_1
	mov	(_Fifo_Read_PARM_3 + 1),#0x00
	mov	(_Fifo_Read_PARM_3 + 2),#0x40
	mov	_Fifo_Read_PARM_2,#0x01
	clr	a
	mov	(_Fifo_Read_PARM_2 + 1),a
	mov	dpl,#0x01
	lcall	_Fifo_Read
	C$Interrupts.c$482$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:482: POLL_WRITE_BYTE(bLaser, bState);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x92
	mov	_USB0DAT,_SetLaser_bState_1_1
	C$Interrupts.c$483$2$2 ==.
	XG$SetLaser$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PulseMotor'
;------------------------------------------------------------
;bEP                       Allocated to registers 
;uNumBytes                 Allocated to registers 
;bMotor                    Allocated with name '_PulseMotor_bMotor_1_1'
;bDir                      Allocated with name '_PulseMotor_bDir_1_1'
;bMtrStep                  Allocated to registers r2 
;bMtrDir                   Allocated to registers r3 
;uDelay                    Allocated to registers r3 r4 
;------------------------------------------------------------
	G$PulseMotor$0$0 ==.
	C$Interrupts.c$496$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:496: void PulseMotor()
;	-----------------------------------------
;	 function PulseMotor
;	-----------------------------------------
_PulseMotor:
	C$Interrupts.c$501$1$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:501: BYTE bMotor = MOTOR_X;				//Motor bit to read
	mov	_PulseMotor_bMotor_1_1,#0x00
	C$Interrupts.c$502$1$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:502: BYTE bDir = DIR_FWD;				//Direction bit to read
	mov	_PulseMotor_bDir_1_1,#0x00
	C$Interrupts.c$503$1$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:503: BYTE bMtrStep = bMtr1Step;			//Motor to step
	mov	r2,#0x87
	C$Interrupts.c$504$1$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:504: BYTE bMtrDir = bMtr1Dir;			//Direction to step
	mov	r3,#0x86
	C$Interrupts.c$508$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:508: Fifo_Read(bEP, uNumBytes, &bMotor);
	mov	_Fifo_Read_PARM_3,#_PulseMotor_bMotor_1_1
	mov	(_Fifo_Read_PARM_3 + 1),#0x00
	mov	(_Fifo_Read_PARM_3 + 2),#0x40
	mov	_Fifo_Read_PARM_2,#0x01
	clr	a
	mov	(_Fifo_Read_PARM_2 + 1),a
	mov	dpl,#0x01
	push	ar2
	push	ar3
	lcall	_Fifo_Read
	C$Interrupts.c$511$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:511: Fifo_Read(bEP, uNumBytes, &bDir);
	mov	_Fifo_Read_PARM_3,#_PulseMotor_bDir_1_1
	mov	(_Fifo_Read_PARM_3 + 1),#0x00
	mov	(_Fifo_Read_PARM_3 + 2),#0x40
	mov	_Fifo_Read_PARM_2,#0x01
	clr	a
	mov	(_Fifo_Read_PARM_2 + 1),a
	mov	dpl,#0x01
	lcall	_Fifo_Read
	pop	ar3
	pop	ar2
	C$Interrupts.c$514$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:514: if (bMotor == MOTOR_Y)
	mov	a,#0x01
	cjne	a,_PulseMotor_bMotor_1_1,00103$
	C$Interrupts.c$516$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:516: bMtrStep = bMtr2Step;
	mov	r2,#0x84
	C$Interrupts.c$517$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:517: bMtrDir = bMtr2Dir;
	mov	r3,#0x83
	C$Interrupts.c$521$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:521: POLL_WRITE_BYTE(bMtrDrvrEn, 0x01);
00103$:
	mov	a,_USB0ADR
	jb	acc.7,00103$
	mov	_USB0ADR,#0x85
	mov	_USB0DAT,#0x01
	C$Interrupts.c$524$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:524: POLL_WRITE_BYTE(bMtrDir, bDir);
00106$:
	mov	a,_USB0ADR
	jb	acc.7,00106$
	mov	_USB0ADR,r3
	mov	_USB0DAT,_PulseMotor_bDir_1_1
	C$Interrupts.c$527$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:527: POLL_WRITE_BYTE(bMtrStep, 0x01);
00109$:
	mov	a,_USB0ADR
	jb	acc.7,00109$
	mov	_USB0ADR,r2
	mov	_USB0DAT,#0x01
	C$Interrupts.c$530$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:530: while (uDelay--);
	mov	r3,#0xD4
	mov	r4,#0x30
00112$:
	mov	ar5,r3
	mov	ar6,r4
	dec	r3
	cjne	r3,#0xff,00136$
	dec	r4
00136$:
	mov	a,r5
	orl	a,r6
	jnz	00112$
	C$Interrupts.c$533$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:533: POLL_WRITE_BYTE(bMtrStep, 0x00);
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	mov	_USB0ADR,r2
	mov	_USB0DAT,#0x00
	C$Interrupts.c$534$2$6 ==.
	XG$PulseMotor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Handle_Out2'
;------------------------------------------------------------
;Count                     Allocated to registers r2 
;ControlReg                Allocated to registers r2 
;------------------------------------------------------------
	G$Handle_Out2$0$0 ==.
	C$Interrupts.c$548$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:548: void Handle_Out2()
;	-----------------------------------------
;	 function Handle_Out2
;	-----------------------------------------
_Handle_Out2:
	C$Interrupts.c$553$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:553: POLL_WRITE_BYTE(INDEX, 2);          // Set index to endpoint 2 registers
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x02
	C$Interrupts.c$554$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:554: POLL_READ_BYTE(EOUTCSR1, ControlReg);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x94
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r2,_USB0DAT
	C$Interrupts.c$556$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:556: if (Ep_Status[2] == EP_HALT)        // If endpoint is halted, send a stall
	mov	a,#0x03
	cjne	a,(_Ep_Status + 0x0002),00134$
	C$Interrupts.c$558$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:558: POLL_WRITE_BYTE(EOUTCSR1, rbOutSDSTL);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x20
	ret
00134$:
	C$Interrupts.c$563$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:563: if (ControlReg & rbOutSTSTL)     // Clear sent stall bit if last packet 
	mov	a,r2
	jnb	acc.6,00118$
	C$Interrupts.c$566$3$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:566: POLL_WRITE_BYTE(EOUTCSR1, rbOutCLRDT);
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x80
	C$Interrupts.c$569$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:569: POLL_READ_BYTE(EOUTCNTL, Count);
00118$:
	mov	a,_USB0ADR
	jb	acc.7,00118$
	mov	_USB0ADR,#0x96
00121$:
	mov	a,_USB0ADR
	jb	acc.7,00121$
	mov	r2,_USB0DAT
	C$Interrupts.c$570$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:570: if (Count != EP2_PACKET_SIZE)    // If host did not send correct packet 
	cjne	r2,#0x40,00166$
	sjmp	00128$
00166$:
	C$Interrupts.c$573$3$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:573: POLL_WRITE_BYTE(EOUTCNTL, rbOutFLUSH);
00124$:
	mov	a,_USB0ADR
	jb	acc.7,00124$
	mov	_USB0ADR,#0x16
	mov	_USB0DAT,#0x10
	sjmp	00130$
00128$:
	C$Interrupts.c$577$3$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:577: Endpoint2();
	lcall	_Endpoint2
	C$Interrupts.c$579$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:579: POLL_WRITE_BYTE(EOUTCSR1, 0);    // Clear Out Packet ready bit
00130$:
	mov	a,_USB0ADR
	jb	acc.7,00130$
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x00
	C$Interrupts.c$581$1$1 ==.
	XG$Handle_Out2$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Endpoint2'
;------------------------------------------------------------
;bEP                       Allocated to registers 
;uNumBytes                 Allocated to registers 
;bOp                       Allocated with name '_Endpoint2_bOp_1_1'
;------------------------------------------------------------
	G$Endpoint2$0$0 ==.
	C$Interrupts.c$594$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:594: void Endpoint2()
;	-----------------------------------------
;	 function Endpoint2
;	-----------------------------------------
_Endpoint2:
	C$Interrupts.c$599$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:599: BYTE bOp = 0x00;				//Operation to perform
	mov	_Endpoint2_bOp_1_1,#0x00
	C$Interrupts.c$602$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:602: Fifo_Read(bEP, uNumBytes, &bOp);
	mov	_Fifo_Read_PARM_3,#_Endpoint2_bOp_1_1
	mov	(_Fifo_Read_PARM_3 + 1),#0x00
	mov	(_Fifo_Read_PARM_3 + 2),#0x40
	mov	_Fifo_Read_PARM_2,#0x01
	clr	a
	mov	(_Fifo_Read_PARM_2 + 1),a
	mov	dpl,#0x02
	lcall	_Fifo_Read
	C$Interrupts.c$606$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:606: if (bOp == OP_GET_CURRENT)
	mov	a,#0x01
	cjne	a,_Endpoint2_bOp_1_1,00103$
	C$Interrupts.c$607$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:607: ReadCurrent();
	C$Interrupts.c$608$1$1 ==.
	XG$Endpoint2$0$0 ==.
	ljmp	_ReadCurrent
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ReadCurrent'
;------------------------------------------------------------
;bEP                       Allocated to registers 
;uNumBytes                 Allocated to registers 
;pData                     Allocated with name '_ReadCurrent_pData_1_1'
;------------------------------------------------------------
	G$ReadCurrent$0$0 ==.
	C$Interrupts.c$621$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:621: void ReadCurrent()
;	-----------------------------------------
;	 function ReadCurrent
;	-----------------------------------------
_ReadCurrent:
	C$Interrupts.c$631$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:631: Fifo_Write(bEP, uNumBytes, pData);
	mov	_Fifo_Write_PARM_3,#_ReadCurrent_pData_1_1
	mov	(_Fifo_Write_PARM_3 + 1),#0x00
	mov	(_Fifo_Write_PARM_3 + 2),#0x40
	mov	_Fifo_Write_PARM_2,#0x02
	clr	a
	mov	(_Fifo_Write_PARM_2 + 1),a
	mov	dpl,#0x02
	C$Interrupts.c$632$1$1 ==.
	XG$ReadCurrent$0$0 ==.
	ljmp	_Fifo_Write
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb_Suspend'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Usb_Suspend$0$0 ==.
	C$Interrupts.c$645$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:645: void Usb_Suspend(void)
;	-----------------------------------------
;	 function Usb_Suspend
;	-----------------------------------------
_Usb_Suspend:
	C$Interrupts.c$649$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:649: P0MDIN  = 0x00;                     // Port 0 configured as analog input
	mov	_P0MDIN,#0x00
	C$Interrupts.c$650$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:650: P1MDIN  = 0x00;                     // Port 1 configured as analog input
	mov	_P1MDIN,#0x00
	C$Interrupts.c$651$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:651: P2MDIN  = 0x00;                     // Port 2 configured as analog input
	mov	_P2MDIN,#0x00
	C$Interrupts.c$652$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:652: P3MDIN  = 0x00;                     // Port 3 configured as analog input
	mov	_P3MDIN,#0x00
	C$Interrupts.c$654$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:654: ADC0CN &= ~0x80;                    // Disable ADC0
	anl	_ADC0CN,#0x7F
	C$Interrupts.c$655$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:655: REF0CN  = 0x00;                     // Disable voltage reference
	mov	_REF0CN,#0x00
	C$Interrupts.c$657$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:657: OSCICN |= 0x20;                     // Put oscillator 
	orl	_OSCICN,#0x20
	C$Interrupts.c$664$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:664: P0MDIN  = 0xFF;                     // Port 0 configured as analog input
	mov	_P0MDIN,#0xFF
	C$Interrupts.c$665$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:665: P1MDIN  = 0x7F;                     // Port 1 pin 7 set as analog input
	mov	_P1MDIN,#0x7F
	C$Interrupts.c$666$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:666: P2MDIN  = 0xFF;                     // Port 2 configured as analog input
	mov	_P2MDIN,#0xFF
	C$Interrupts.c$667$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:667: P3MDIN  = 0xFF;                     // Port 3 configured as analog input
	mov	_P3MDIN,#0xFF
	C$Interrupts.c$669$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:669: REF0CN  = 0x0E;                     // Enable voltage reference VREF
	mov	_REF0CN,#0x0E
	C$Interrupts.c$670$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:670: ADC0CN |= 0x80;                     // Re-enable ADC
	orl	_ADC0CN,#0x80
	C$Interrupts.c$671$1$1 ==.
	XG$Usb_Suspend$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb_Resume'
;------------------------------------------------------------
;k                         Allocated with name '_Usb_Resume_k_1_1'
;------------------------------------------------------------
	G$Usb_Resume$0$0 ==.
	C$Interrupts.c$684$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:684: void Usb_Resume(void)
;	-----------------------------------------
;	 function Usb_Resume
;	-----------------------------------------
_Usb_Resume:
	C$Interrupts.c$688$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:688: k++;
	mov	a,#0x01
	add	a,_Usb_Resume_k_1_1
	mov	_Usb_Resume_k_1_1,a
	clr	a
	addc	a,(_Usb_Resume_k_1_1 + 1)
	mov	(_Usb_Resume_k_1_1 + 1),a
	C$Interrupts.c$691$1$1 ==.
	XG$Usb_Resume$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Fifo_Read'
;------------------------------------------------------------
;uNumBytes                 Allocated with name '_Fifo_Read_PARM_2'
;pData                     Allocated with name '_Fifo_Read_PARM_3'
;addr                      Allocated to registers r2 
;i                         Allocated with name '_Fifo_Read_i_1_1'
;------------------------------------------------------------
	G$Fifo_Read$0$0 ==.
	C$Interrupts.c$707$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:707: void Fifo_Read(BYTE addr, unsigned int uNumBytes, BYTE * pData)
;	-----------------------------------------
;	 function Fifo_Read
;	-----------------------------------------
_Fifo_Read:
	mov	r2,dpl
	C$Interrupts.c$711$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:711: if (uNumBytes)                         // Check if >0 bytes requested,
	mov	a,_Fifo_Read_PARM_2
	orl	a,(_Fifo_Read_PARM_2 + 1)
	jz	00113$
	C$Interrupts.c$713$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:713: USB0ADR = (addr);                   // Set address
	mov	_USB0ADR,r2
	C$Interrupts.c$714$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:714: USB0ADR |= 0xC0;                    // Set auto-read and initiate
	orl	_USB0ADR,#0xC0
	C$Interrupts.c$718$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:718: for(i=0;i<uNumBytes-1;i++)
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,_Fifo_Read_PARM_2
	add	a,#0xff
	mov	r4,a
	mov	a,(_Fifo_Read_PARM_2 + 1)
	addc	a,#0xff
	mov	r5,a
	clr	a
	mov	_Fifo_Read_i_1_1,a
	mov	(_Fifo_Read_i_1_1 + 1),a
00109$:
	mov	r0,_Fifo_Read_i_1_1
	mov	r1,(_Fifo_Read_i_1_1 + 1)
	clr	c
	mov	a,r0
	subb	a,r4
	mov	a,r1
	subb	a,r5
	jnc	00121$
	C$Interrupts.c$720$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:720: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$Interrupts.c$721$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:721: pData[i] = USB0DAT;              // Copy data byte
	mov	a,_Fifo_Read_i_1_1
	add	a,_Fifo_Read_PARM_3
	mov	r0,a
	mov	a,(_Fifo_Read_i_1_1 + 1)
	addc	a,(_Fifo_Read_PARM_3 + 1)
	mov	r1,a
	mov	r6,(_Fifo_Read_PARM_3 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,_USB0DAT
	lcall	__gptrput
	C$Interrupts.c$718$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:718: for(i=0;i<uNumBytes-1;i++)
	inc	_Fifo_Read_i_1_1
	clr	a
	cjne	a,_Fifo_Read_i_1_1,00125$
	inc	(_Fifo_Read_i_1_1 + 1)
00125$:
	mov	r2,_Fifo_Read_i_1_1
	mov	r3,(_Fifo_Read_i_1_1 + 1)
	sjmp	00109$
00121$:
	mov	r2,_Fifo_Read_i_1_1
	mov	r3,(_Fifo_Read_i_1_1 + 1)
	C$Interrupts.c$724$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:724: USB0ADR = 0;                           // Clear auto-read
	mov	_USB0ADR,#0x00
	C$Interrupts.c$726$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:726: while(USB0ADR & 0x80);               // Wait for BUSY->'0' (data ready)
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	C$Interrupts.c$727$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:727: pData[i] = USB0DAT;                  // Copy data byte
	mov	a,r2
	add	a,_Fifo_Read_PARM_3
	mov	r2,a
	mov	a,r3
	addc	a,(_Fifo_Read_PARM_3 + 1)
	mov	r3,a
	mov	r4,(_Fifo_Read_PARM_3 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_USB0DAT
	C$Interrupts.c$729$2$1 ==.
	XG$Fifo_Read$0$0 ==.
	ljmp	__gptrput
00113$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Fifo_Write'
;------------------------------------------------------------
;uNumBytes                 Allocated with name '_Fifo_Write_PARM_2'
;pData                     Allocated with name '_Fifo_Write_PARM_3'
;addr                      Allocated to registers r2 
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
	G$Fifo_Write$0$0 ==.
	C$Interrupts.c$745$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:745: void Fifo_Write(BYTE addr, unsigned int uNumBytes, BYTE * pData)
;	-----------------------------------------
;	 function Fifo_Write
;	-----------------------------------------
_Fifo_Write:
	mov	r2,dpl
	C$Interrupts.c$750$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:750: if (uNumBytes)
	mov	a,_Fifo_Write_PARM_2
	orl	a,(_Fifo_Write_PARM_2 + 1)
	jz	00113$
	C$Interrupts.c$752$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:752: while(USB0ADR & 0x80);              // Wait for BUSY->'0'
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$Interrupts.c$754$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:754: USB0ADR = (addr);                   // Set address (mask out bits7-6)
	mov	_USB0ADR,r2
	C$Interrupts.c$757$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:757: for(i=0;i<uNumBytes;i++)
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
	mov	ar4,r2
	mov	ar5,r3
	clr	c
	mov	a,r4
	subb	a,_Fifo_Write_PARM_2
	mov	a,r5
	subb	a,(_Fifo_Write_PARM_2 + 1)
	jnc	00113$
	C$Interrupts.c$759$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:759: USB0DAT = pData[i];
	mov	a,r2
	add	a,_Fifo_Write_PARM_3
	mov	r4,a
	mov	a,r3
	addc	a,(_Fifo_Write_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_Fifo_Write_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_USB0DAT,a
	C$Interrupts.c$760$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:760: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	C$Interrupts.c$757$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:757: for(i=0;i<uNumBytes;i++)
	inc	r2
	cjne	r2,#0x00,00109$
	inc	r3
	sjmp	00109$
00113$:
	C$Interrupts.c$763$2$1 ==.
	XG$Fifo_Write$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Force_Stall'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Force_Stall$0$0 ==.
	C$Interrupts.c$776$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:776: void Force_Stall(void)
;	-----------------------------------------
;	 function Force_Stall
;	-----------------------------------------
_Force_Stall:
	C$Interrupts.c$778$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:778: POLL_WRITE_BYTE(INDEX, 0);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
	C$Interrupts.c$779$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:779: POLL_WRITE_BYTE(E0CSR, rbSDSTL);       // Set the send stall bit
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x20
	C$Interrupts.c$780$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:780: Ep_Status[0] = EP_STALL;               // Put the endpoint in stall status
	mov	_Ep_Status,#0x04
	C$Interrupts.c$781$1$1 ==.
	XG$Force_Stall$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
