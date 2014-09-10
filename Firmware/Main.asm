;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Thu Oct 28 02:55:47 2010
;--------------------------------------------------------
	.module Main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
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
	.globl _In_Packet
	.globl _Out_Packet
	.globl _latest_ADC_LowByte
	.globl _latest_ADC_HighByte
	.globl _SPI_ADC_Bytes
	.globl _SPI_DAC_Bytes
	.globl _Writing_to_ADC
	.globl _Writing_to_DAC
	.globl _Sysclk_Init
	.globl _Port_Init
	.globl _SPI_Init
	.globl _DAC_Init
	.globl _ADC_Init
	.globl _Usb0_Init
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
G$Writing_to_DAC$0$0==.
_Writing_to_DAC::
	.ds 2
G$Writing_to_ADC$0$0==.
_Writing_to_ADC::
	.ds 2
G$SPI_DAC_Bytes$0$0==.
_SPI_DAC_Bytes::
	.ds 2
G$SPI_ADC_Bytes$0$0==.
_SPI_ADC_Bytes::
	.ds 2
G$latest_ADC_HighByte$0$0==.
_latest_ADC_HighByte::
	.ds 2
G$latest_ADC_LowByte$0$0==.
_latest_ADC_LowByte::
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
G$Out_Packet$0$0==.
_Out_Packet::
	.ds 64
G$In_Packet$0$0==.
_In_Packet::
	.ds 64
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
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	G$Usb0_Init$0$0 ==.
	C$Main.c$30$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:30: int Writing_to_DAC = 0;				   // Boolean: still need to write >=1 byte via SPI
	clr	a
	mov	_Writing_to_DAC,a
	mov	(_Writing_to_DAC + 1),a
	G$Usb0_Init$0$0 ==.
	C$Main.c$31$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:31: int Writing_to_ADC = 0;				   // Boolean: still need to write >=1 byte via SPI
	clr	a
	mov	_Writing_to_ADC,a
	mov	(_Writing_to_ADC + 1),a
	G$Usb0_Init$0$0 ==.
	C$Main.c$32$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:32: int SPI_DAC_Bytes = 0;				   // No. of bytes to/from DAC: 0-3
	clr	a
	mov	_SPI_DAC_Bytes,a
	mov	(_SPI_DAC_Bytes + 1),a
	G$Usb0_Init$0$0 ==.
	C$Main.c$33$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:33: int SPI_ADC_Bytes = 0;				   // No. of bytes to/from ADC: 0-2
	clr	a
	mov	_SPI_ADC_Bytes,a
	mov	(_SPI_ADC_Bytes + 1),a
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$44$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:44: sfr P0       = 0x80;                   // Port0
	mov	_P0,#0x80
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$45$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:45: sfr SP       = 0x81;                   // Stack pointer
	mov	_SP,#0x81
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$46$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:46: sfr DPL      = 0x82;                   // Data pointer - Low byte
	mov	_DPL,#0x82
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$47$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:47: sfr DPH      = 0x83;                   // Data pointer - High byte
	mov	_DPH,#0x83
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$48$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:48: sfr PCON     = 0x87;                   // Power control register
	mov	_PCON,#0x87
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$49$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:49: sfr TCON     = 0x88;                   // Timer control register
	mov	_TCON,#0x88
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$50$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:50: sfr TMOD     = 0x89;                   // Timer mode register
	mov	_TMOD,#0x89
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$51$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:51: sfr TL0      = 0x8A;                   // Timer0 - Low byte
	mov	_TL0,#0x8A
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$52$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:52: sfr TL1      = 0x8B;                   // Timer1 - Low byte
	mov	_TL1,#0x8B
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$53$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:53: sfr TH0      = 0x8C;                   // Timer0 - High byte
	mov	_TH0,#0x8C
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$54$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:54: sfr TH1      = 0x8D;                   // Timer1 - High byte
	mov	_TH1,#0x8D
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$55$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:55: sfr CKCON    = 0x8E;                   // Clock control register
	mov	_CKCON,#0x8E
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$56$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:56: sfr PSCTL    = 0x8F;                   // Program store r/w control
	mov	_PSCTL,#0x8F
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$57$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:57: sfr P1       = 0x90;                   // Port1
	mov	_P1,#0x90
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$58$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:58: sfr TMR3CN   = 0x91;                   // Timer3 control register
	mov	_TMR3CN,#0x91
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$59$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:59: sfr TMR3RLL  = 0x92;                   // Timer3 reload register - Low byte
	mov	_TMR3RLL,#0x92
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$60$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:60: sfr TMR3RLH  = 0x93;                   // Timer3 reload register - High byte
	mov	_TMR3RLH,#0x93
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$61$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:61: sfr TMR3L    = 0x94;                   // Timer3 - Low byte
	mov	_TMR3L,#0x94
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$62$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:62: sfr TMR3H    = 0x95;                   // Timer3 - High byte
	mov	_TMR3H,#0x95
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$63$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:63: sfr USB0ADR  = 0x96;                   // USB0 address port
	mov	_USB0ADR,#0x96
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$64$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:64: sfr USB0DAT  = 0x97;                   // USB0 data port
	mov	_USB0DAT,#0x97
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$65$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:65: sfr SCON0    = 0x98;                   // UART0 control register
	mov	_SCON0,#0x98
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$66$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:66: sfr SBUF0    = 0x99;                   // UART0 data buffer register
	mov	_SBUF0,#0x99
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$67$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:67: sfr CPT1CN   = 0x9A;                   // Comparator1 control register
	mov	_CPT1CN,#0x9A
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$68$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:68: sfr CPT0CN   = 0x9B;                   // Comparator0 control register
	mov	_CPT0CN,#0x9B
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$69$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:69: sfr CPT1MD   = 0x9C;                   // Comparator1 mode selection register
	mov	_CPT1MD,#0x9C
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$70$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:70: sfr CPT0MD   = 0x9D;                   // Comparator0 mode selection register
	mov	_CPT0MD,#0x9D
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$71$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:71: sfr CPT1MX   = 0x9E;                   // Comparator1 mux selection register
	mov	_CPT1MX,#0x9E
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$72$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:72: sfr CPT0MX   = 0x9F;                   // Comparator0 mux selection register
	mov	_CPT0MX,#0x9F
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$73$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:73: sfr P2       = 0xA0;                   // Port2
	mov	_P2,#0xA0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$74$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:74: sfr SPICFG   = 0xA1;                   // SPI0 configuration register
	mov	_SPICFG,#0xA1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$75$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:75: sfr SPI0CFG  = 0xA1;                   // SPI0 configuration register
	mov	_SPI0CFG,#0xA1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$76$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:76: sfr SPICKR   = 0xA2;                   // SPI0 clock configuration register
	mov	_SPICKR,#0xA2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$77$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:77: sfr SPI0CKR  = 0xA2;                   // SPI0 clock configuration register
	mov	_SPI0CKR,#0xA2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$78$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:78: sfr SPIDAT   = 0xA3;                   // SPI0 data register
	mov	_SPIDAT,#0xA3
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$79$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:79: sfr SPI0DAT  = 0xA3;                   // SPI0 data register
	mov	_SPI0DAT,#0xA3
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$80$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:80: sfr P0MDOUT  = 0xA4;                   // Port0 output mode register
	mov	_P0MDOUT,#0xA4
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$81$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:81: sfr P1MDOUT  = 0xA5;                   // Port1 output mode register
	mov	_P1MDOUT,#0xA5
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$82$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:82: sfr P2MDOUT  = 0xA6;                   // Port2 output mode register
	mov	_P2MDOUT,#0xA6
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$83$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:83: sfr P3MDOUT  = 0xA7;                   // Port3 output mode register
	mov	_P3MDOUT,#0xA7
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$84$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:84: sfr IE       = 0xA8;                   // Interrupt enable
	mov	_IE,#0xA8
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$85$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:85: sfr CLKSEL   = 0xA9;                   // Clock source select
	mov	_CLKSEL,#0xA9
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$86$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:86: sfr EMI0CN   = 0xAA;                   // External Memory Interface Control
	mov	_EMI0CN,#0xAA
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$87$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:87: sfr P3       = 0xB0;                   // Port3
	mov	_P3,#0xB0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$88$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:88: sfr OSCXCN   = 0xB1;                   // External oscillator control
	mov	_OSCXCN,#0xB1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$89$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:89: sfr OSCICN   = 0xB2;                   // Internal oscillator control
	mov	_OSCICN,#0xB2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$90$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:90: sfr OSCICL   = 0xB3;                   // Internal oscillator calibration
	mov	_OSCICL,#0xB3
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$91$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:91: sfr FLSCL    = 0xB6;                   // Flash scale register
	mov	_FLSCL,#0xB6
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$92$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:92: sfr FLKEY    = 0xB7;                   // Flash lock & key register
	mov	_FLKEY,#0xB7
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$93$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:93: sfr IP       = 0xB8;                   // Interrupt priority
	mov	_IP,#0xB8
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$94$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:94: sfr CLKMUL   = 0xB9;                   // Clock multiplier control register
	mov	_CLKMUL,#0xB9
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$95$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:95: sfr AMX0N    = 0xBA;                   // ADC0 mux negative channel selection
	mov	_AMX0N,#0xBA
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$96$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:96: sfr AMX0P    = 0xBB;                   // ADC0 mux positive channel selection
	mov	_AMX0P,#0xBB
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$97$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:97: sfr ADC0CF   = 0xBC;                   // ADC0 configuration
	mov	_ADC0CF,#0xBC
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$98$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:98: sfr ADC0L    = 0xBD;                   // ADC0 data low
	mov	_ADC0L,#0xBD
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$99$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:99: sfr ADC0H    = 0xBE;                   // ADC0 data high
	mov	_ADC0H,#0xBE
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$100$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:100: sfr SMB0CN   = 0xC0;                   // SMBus control
	mov	_SMB0CN,#0xC0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$101$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:101: sfr SMB0CF   = 0xC1;                   // SMBus configuration
	mov	_SMB0CF,#0xC1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$102$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:102: sfr SMB0DAT  = 0xC2;                   // SMBus data
	mov	_SMB0DAT,#0xC2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$103$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:103: sfr ADC0GTL  = 0xC3;                   // ADC0 greater-than data low register
	mov	_ADC0GTL,#0xC3
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$104$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:104: sfr ADC0GTH  = 0xC4;                   // ADC0 greater-than data high register
	mov	_ADC0GTH,#0xC4
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$105$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:105: sfr ADC0LTL  = 0xC5;                   // ADC0 less-than data low register
	mov	_ADC0LTL,#0xC5
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$106$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:106: sfr ADC0LTH  = 0xC6;                   // ADC0 less-than data high register
	mov	_ADC0LTH,#0xC6
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$107$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:107: sfr TMR2CN   = 0xC8;                   // Timer2 control register
	mov	_TMR2CN,#0xC8
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$108$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:108: sfr REG0CN   = 0xC9;                   // Regulator control register
	mov	_REG0CN,#0xC9
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$109$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:109: sfr TMR2RLL  = 0xCA;                   // Timer2 reload register - Low byte
	mov	_TMR2RLL,#0xCA
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$110$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:110: sfr TMR2RLH  = 0xCB;                   // Timer2 reload register - High byte
	mov	_TMR2RLH,#0xCB
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$111$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:111: sfr TMR2L    = 0xCC;                   // Timer2 - Low byte
	mov	_TMR2L,#0xCC
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$112$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:112: sfr TMR2H    = 0xCD;                   // Timer2 - High byte
	mov	_TMR2H,#0xCD
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$113$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:113: sfr PSW      = 0xD0;                   // Program Status Word
	mov	_PSW,#0xD0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$114$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:114: sfr REF0CN   = 0xD1;                   // Voltage reference control register
	mov	_REF0CN,#0xD1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$115$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:115: sfr P0SKIP   = 0xD4;                   // Port0 crossbar skip register
	mov	_P0SKIP,#0xD4
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$116$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:116: sfr P1SKIP   = 0xD5;                   // Port1 crossbar skip register
	mov	_P1SKIP,#0xD5
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$117$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:117: sfr P2SKIP   = 0xD6;                   // Port2 crossbar skip register
	mov	_P2SKIP,#0xD6
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$118$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:118: sfr USB0XCN  = 0xD7;                   // USB0 tranceiver control register
	mov	_USB0XCN,#0xD7
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$119$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:119: sfr PCA0CN   = 0xD8;                   // PCA0 control register
	mov	_PCA0CN,#0xD8
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$120$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:120: sfr PCA0MD   = 0xD9;                   // PCA0 mode register
	mov	_PCA0MD,#0xD9
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$121$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:121: sfr PCA0CPM0 = 0xDA;                   // Capture/compare module0 mode
	mov	_PCA0CPM0,#0xDA
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$122$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:122: sfr PCA0CPM1 = 0xDB;                   // Capture/compare module1 mode
	mov	_PCA0CPM1,#0xDB
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$123$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:123: sfr PCA0CPM2 = 0xDC;                   // Capture/compare module2 mode
	mov	_PCA0CPM2,#0xDC
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$124$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:124: sfr PCA0CPM3 = 0xDD;                   // Capture/compare module3 mode
	mov	_PCA0CPM3,#0xDD
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$125$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:125: sfr PCA0CPM4 = 0xDE;                   // Capture/compare module4 mode
	mov	_PCA0CPM4,#0xDE
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$126$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:126: sfr ACC      = 0xE0;                   // Accumulator
	mov	_ACC,#0xE0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$127$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:127: sfr XBR0     = 0xE1;                   // Port I/O crossbar register 0
	mov	_XBR0,#0xE1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$128$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:128: sfr XBR1     = 0xE2;                   // Port I/O crossbar register 1
	mov	_XBR1,#0xE2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$129$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:129: sfr IT01CF   = 0xE4;                   // Int0/int1 configuration register
	mov	_IT01CF,#0xE4
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$130$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:130: sfr EIE1     = 0xE6;                   // Extended interrupt enable 1
	mov	_EIE1,#0xE6
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$131$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:131: sfr EIE2     = 0xE7;                   // Extended interrupt enable 2
	mov	_EIE2,#0xE7
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$132$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:132: sfr ADC0CN   = 0xE8;                   // ADC0 control register
	mov	_ADC0CN,#0xE8
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$133$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:133: sfr PCA0CPL1 = 0xE9;                   // Capture/compare module1 - Low byte
	mov	_PCA0CPL1,#0xE9
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$134$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:134: sfr PCA0CPH1 = 0xEA;                   // Capture/compare module1 - High byte
	mov	_PCA0CPH1,#0xEA
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$135$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:135: sfr PCA0CPL2 = 0xEB;                   // Capture/compare module2 - Low byte
	mov	_PCA0CPL2,#0xEB
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$136$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:136: sfr PCA0CPH2 = 0xEC;                   // Capture/compare module2 - High byte
	mov	_PCA0CPH2,#0xEC
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$137$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:137: sfr PCA0CPL3 = 0xED;                   // Capture/compare module3 - Low byte
	mov	_PCA0CPL3,#0xED
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$138$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:138: sfr PCA0CPH3 = 0xEE;                   // Capture/compare module3 - High byte
	mov	_PCA0CPH3,#0xEE
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$139$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:139: sfr RSTSRC   = 0xEF;                   // Reset source register
	mov	_RSTSRC,#0xEF
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$140$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:140: sfr B        = 0xF0;                   // B register
	mov	_B,#0xF0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$141$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:141: sfr P0MDIN   = 0xF1;                   // Port0 input mode register
	mov	_P0MDIN,#0xF1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$142$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:142: sfr P1MDIN   = 0xF2;                   // Port1 input mode register
	mov	_P1MDIN,#0xF2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$143$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:143: sfr P2MDIN   = 0xF3;                   // Port2 input mode register
	mov	_P2MDIN,#0xF3
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$144$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:144: sfr P3MDIN   = 0xF4;                   // Port3 input mode register
	mov	_P3MDIN,#0xF4
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$145$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:145: sfr EIP1     = 0xF6;                   // Extended interrupt priority 1
	mov	_EIP1,#0xF6
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$146$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:146: sfr EIP2     = 0xF7;                   // Extended interrupt priority 2
	mov	_EIP2,#0xF7
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$147$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:147: sfr SPI0CN   = 0xF8;                   // SPI0 control register
	mov	_SPI0CN,#0xF8
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$148$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:148: sfr PCA0L    = 0xF9;                   // PCA0 counter/timer - Low byte
	mov	_PCA0L,#0xF9
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$149$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:149: sfr PCA0H    = 0xFA;                   // PCA0 counter/timer - High byte
	mov	_PCA0H,#0xFA
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$150$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:150: sfr PCA0CPL0 = 0xFB;                   // Capture/compare module0 - Low byte
	mov	_PCA0CPL0,#0xFB
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$151$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:151: sfr PCA0CPH0 = 0xFC;                   // Capture/compare module0 - High byte
	mov	_PCA0CPH0,#0xFC
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$152$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:152: sfr PCA0CPL4 = 0xFD;                   // Capture/compare module4 - Low byte
	mov	_PCA0CPL4,#0xFD
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$153$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:153: sfr PCA0CPH4 = 0xFE;                   // Capture/compare module4 - High byte
	mov	_PCA0CPH4,#0xFE
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$154$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:154: sfr VDM0CN   = 0xFF;                   // Vdd monitor control
	mov	_VDM0CN,#0xFF
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$161$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:161: sbit TF1     = 0x8F;                   // Timer1 overflow flag
	setb	_TF1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$162$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:162: sbit TR1     = 0x8E;                   // Timer1 on/off control
	setb	_TR1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$163$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:163: sbit TF0     = 0x8D;                   // Timer0 overflow flag
	setb	_TF0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$164$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:164: sbit TR0     = 0x8C;                   // Timer0 on/off control
	setb	_TR0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$165$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:165: sbit IE1     = 0x8B;                   // Ext interrupt 1 edge flag
	setb	_IE1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$166$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:166: sbit IT1     = 0x8A;                   // Ext interrupt 1 type
	setb	_IT1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$167$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:167: sbit IE0     = 0x89;                   // Ext interrupt 0 edge flag
	setb	_IE0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$168$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:168: sbit IT0     = 0x88;                   // Ext interrupt 0 type
	setb	_IT0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$171$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:171: sbit S0MODE  = 0x9F;                   // Serial mode control bit 0
	setb	_S0MODE
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$173$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:173: sbit MCE0    = 0x9D;                   // Multiprocessor communication enable
	setb	_MCE0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$174$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:174: sbit REN0    = 0x9C;                   // Receive enable
	setb	_REN0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$175$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:175: sbit TB80    = 0x9B;                   // Transmit bit 8
	setb	_TB80
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$176$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:176: sbit RB80    = 0x9A;                   // Receive bit 8
	setb	_RB80
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$177$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:177: sbit TI0     = 0x99;                   // Transmit interrupt flag
	setb	_TI0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$178$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:178: sbit RI0     = 0x98;                   // Receive interrupt flag
	setb	_RI0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$181$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:181: sbit EA      = 0xAF;                   // Global interrupt enable
	setb	_EA
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$182$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:182: sbit ESPI0   = 0xAE;                   // SPI0 interrupt enable
	setb	_ESPI0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$183$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:183: sbit ET2     = 0xAD;                   // Timer2 interrupt enable
	setb	_ET2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$184$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:184: sbit ES0     = 0xAC;                   // UART0 interrupt enable
	setb	_ES0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$185$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:185: sbit ET1     = 0xAB;                   // Timer1 interrupt enable
	setb	_ET1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$186$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:186: sbit EX1     = 0xAA;                   // External interrupt 1 enable
	setb	_EX1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$187$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:187: sbit ET0     = 0xA9;                   // Timer0 interrupt enable
	setb	_ET0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$188$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:188: sbit EX0     = 0xA8;                   // External interrupt 0 enable
	setb	_EX0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$192$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:192: sbit PSPI0   = 0xBE;                   // SPI0 interrupt priority
	setb	_PSPI0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$193$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:193: sbit PT2     = 0xBD;                   // Timer2 priority
	setb	_PT2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$194$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:194: sbit PS0     = 0xBC;                   // UART0 priority
	setb	_PS0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$195$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:195: sbit PT1     = 0xBB;                   // Timer1 priority
	setb	_PT1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$196$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:196: sbit PX1     = 0xBA;                   // External interrupt 1 priority
	setb	_PX1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$197$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:197: sbit PT0     = 0xB9;                   // Timer0 priority
	setb	_PT0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$198$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:198: sbit PX0     = 0xB8;                   // External interrupt 0 priority
	setb	_PX0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$201$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:201: sbit MASTER  = 0xC7;                   // Master/slave indicator
	setb	_MASTER
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$202$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:202: sbit TXMODE  = 0xC6;                   // Transmit mode indicator
	setb	_TXMODE
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$203$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:203: sbit STA     = 0xC5;                   // Start flag
	setb	_STA
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$204$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:204: sbit STO     = 0xC4;                   // Stop flag
	setb	_STO
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$205$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:205: sbit ACKRQ   = 0xC3;                   // Acknowledge request
	setb	_ACKRQ
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$206$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:206: sbit ARBLOST = 0xC2;                   // Arbitration lost indicator
	setb	_ARBLOST
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$207$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:207: sbit ACK     = 0xC1;                   // Acknowledge flag
	setb	_ACK
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$208$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:208: sbit SI      = 0xC0;                   // SMBus interrupt flag
	setb	_SI
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$211$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:211: sbit TF2H    = 0xCF;                   // Timer2 high byte overflow flag
	setb	_TF2H
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$212$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:212: sbit TF2L    = 0xCE;                   // Timer2 low byte overflow flag
	setb	_TF2L
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$213$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:213: sbit TF2LEN  = 0xCD;                   // Timer2 low byte interrupt enable
	setb	_TF2LEN
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$214$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:214: sbit T2SOF   = 0xCC;                   // Timer2 start-of-frame capture enable
	setb	_T2SOF
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$215$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:215: sbit T2SPLIT = 0xCB;                   // Timer2 split mode enable
	setb	_T2SPLIT
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$216$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:216: sbit TR2     = 0xCA;                   // Timer2 on/off control
	setb	_TR2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$218$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:218: sbit T2XCLK  = 0xC8;                   // Timer2 external clock select
	setb	_T2XCLK
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$221$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:221: sbit CY      = 0xD7;                   // Carry flag
	setb	_CY
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$222$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:222: sbit AC      = 0xD6;                   // Auxiliary carry flag
	setb	_AC
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$223$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:223: sbit F0      = 0xD5;                   // User flag 0
	setb	_F0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$224$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:224: sbit RS1     = 0xD4;                   // Register bank select 1
	setb	_RS1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$225$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:225: sbit RS0     = 0xD3;                   // Register bank select 0
	setb	_RS0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$226$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:226: sbit OV      = 0xD2;                   // Overflow flag
	setb	_OV
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$227$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:227: sbit F1      = 0xD1;                   // User flag 1
	setb	_F1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$228$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:228: sbit P       = 0xD0;                   // Accumulator parity flag
	setb	_P
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$231$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:231: sbit CF      = 0xDF;                   // PCA0 counter overflow flag
	setb	_CF
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$232$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:232: sbit CR      = 0xDE;                   // PCA0 counter run control
	setb	_CR
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$234$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:234: sbit CCF4    = 0xDC;                   // PCA0 module4 capture/compare flag
	setb	_CCF4
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$235$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:235: sbit CCF3    = 0xDB;                   // PCA0 module3 capture/compare flag
	setb	_CCF3
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$236$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:236: sbit CCF2    = 0xDA;                   // PCA0 module2 capture/compare flag
	setb	_CCF2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$237$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:237: sbit CCF1    = 0xD9;                   // PCA0 module1 capture/compare flag
	setb	_CCF1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$238$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:238: sbit CCF0    = 0xD8;                   // PCA0 module0 capture/compare flag
	setb	_CCF0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$241$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:241: sbit AD0EN   = 0xEF;                   // ADC0 enable
	setb	_AD0EN
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$242$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:242: sbit AD0TM   = 0xEE;                   // ADC0 track mode
	setb	_AD0TM
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$243$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:243: sbit AD0INT  = 0xED;                   // ADC0 converision complete interrupt flag
	setb	_AD0INT
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$244$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:244: sbit AD0BUSY = 0xEC;                   // ADC0 busy flag
	setb	_AD0BUSY
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$245$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:245: sbit AD0WINT = 0xEB;                   // ADC0 window compare interrupt flag
	setb	_AD0WINT
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$246$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:246: sbit AD0CM2  = 0xEA;                   // ADC0 conversion mode select 2
	setb	_AD0CM2
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$247$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:247: sbit AD0CM1  = 0xE9;                   // ADC0 conversion mode select 1
	setb	_AD0CM1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$248$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:248: sbit AD0CM0  = 0xE8;                   // ADC0 conversion mode select 0
	setb	_AD0CM0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$251$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:251: sbit SPIF    = 0xFF;                   // SPI0 interrupt flag
	setb	_SPIF
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$252$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:252: sbit WCOL    = 0xFE;                   // SPI0 write collision flag
	setb	_WCOL
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$253$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:253: sbit MODF    = 0xFD;                   // SPI0 mode fault flag
	setb	_MODF
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$254$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:254: sbit RXOVRN  = 0xFC;                   // SPI0 rx overrun flag
	setb	_RXOVRN
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$255$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:255: sbit NSSMD1  = 0xFB;                   // SPI0 slave select mode 1
	setb	_NSSMD1
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$256$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:256: sbit NSSMD0  = 0xFA;                   // SPI0 slave select mode 0
	setb	_NSSMD0
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$257$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:257: sbit TXBMT   = 0xF9;                   // SPI0 transmit buffer empty
	setb	_TXBMT
	G$Usb0_Init$0$0 ==.
	C$c8051f320.h$258$2$8 ==.
;	c:/SiLabs/MCU/Inc/c8051f320.h:258: sbit SPIEN   = 0xF8;                   // SPI0 SPI enable
	setb	_SPIEN
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
	G$main$0$0 ==.
	C$Main.c$40$0$0 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:40: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$Main.c$42$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:42: PCA0MD &= ~0x40;                    // Disable Watchdog timer
	anl	_PCA0MD,#0xBF
	C$Main.c$44$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:44: Sysclk_Init();                      // Initialize oscillator
	lcall	_Sysclk_Init
	C$Main.c$45$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:45: Port_Init();                        // Initialize crossbar and GPIO
	lcall	_Port_Init
	C$Main.c$46$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:46: SPI_Init();						   // Initialize the Chip interface
	lcall	_SPI_Init
	C$Main.c$47$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:47: DAC_Init();						   // Initialize the DAC
	lcall	_DAC_Init
	C$Main.c$48$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:48: ADC_Init();						   // Initialize the ADC
	lcall	_ADC_Init
	C$Main.c$49$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:49: Usb0_Init();                        // Initialize USB0
	lcall	_Usb0_Init
	C$Main.c$51$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:51: while (1) ;
00102$:
	C$Main.c$52$1$1 ==.
	XG$main$0$0 ==.
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'Sysclk_Init'
;------------------------------------------------------------
;delay                     Allocated to registers r2 
;------------------------------------------------------------
	G$Sysclk_Init$0$0 ==.
	C$Main.c$69$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:69: void Sysclk_Init(void)
;	-----------------------------------------
;	 function Sysclk_Init
;	-----------------------------------------
_Sysclk_Init:
	C$Main.c$76$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:76: OSCICN = 0x83;
	mov	_OSCICN,#0x83
	C$Main.c$80$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:80: CLKMUL = 0x00;
	mov	_CLKMUL,#0x00
	C$Main.c$83$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:83: CLKMUL |= 0x80;
	orl	_CLKMUL,#0x80
	C$Main.c$87$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:87: while (delay--);
	mov	r2,#0x64
00101$:
	mov	ar3,r2
	dec	r2
	mov	a,r3
	jnz	00101$
	C$Main.c$90$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:90: CLKMUL |= 0xC0;
	orl	_CLKMUL,#0xC0
	C$Main.c$93$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:93: while ((CLKMUL & MULRDY) != MULRDY) ;
00104$:
	mov	a,#0x20
	anl	a,_CLKMUL
	mov	r2,a
	cjne	r2,#0x20,00104$
	C$Main.c$96$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:96: CLKSEL = 0x02;		// USB clock = 4*(Int Osc)
	mov	_CLKSEL,#0x02
	C$Main.c$101$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:101: RSTSRC = 0x04;
	mov	_RSTSRC,#0x04
	C$Main.c$102$1$1 ==.
	XG$Sysclk_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Port_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Port_Init$0$0 ==.
	C$Main.c$141$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:141: void Port_Init (void)
;	-----------------------------------------
;	 function Port_Init
;	-----------------------------------------
_Port_Init:
	C$Main.c$144$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:144: P0MDIN = 0xFF;
	mov	_P0MDIN,#0xFF
	C$Main.c$145$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:145: P1MDIN = 0xFF;
	mov	_P1MDIN,#0xFF
	C$Main.c$146$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:146: P2MDIN = 0xFF;
	mov	_P2MDIN,#0xFF
	C$Main.c$147$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:147: P3MDIN = 0xFF;
	mov	_P3MDIN,#0xFF
	C$Main.c$150$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:150: P0MDOUT = 0xFF;
	mov	_P0MDOUT,#0xFF
	C$Main.c$151$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:151: P1MDOUT = 0xFF;
	mov	_P1MDOUT,#0xFF
	C$Main.c$152$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:152: P2MDOUT = 0xFF;
	mov	_P2MDOUT,#0xFF
	C$Main.c$153$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:153: P3MDOUT = 0xFF;
	mov	_P3MDOUT,#0xFF
	C$Main.c$156$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:156: P0SKIP = 0x00;
	mov	_P0SKIP,#0x00
	C$Main.c$157$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:157: P1SKIP = 0x00;
	mov	_P1SKIP,#0x00
	C$Main.c$158$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:158: P2SKIP = 0x00;
	mov	_P2SKIP,#0x00
	C$Main.c$164$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:164: XBR0 = 0x02;				// Only SPI selected, automatically assigned:
	mov	_XBR0,#0x02
	C$Main.c$168$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:168: XBR1 = 0x40;				// Enable crossbar and weak pull-ups
	mov	_XBR1,#0x40
	C$Main.c$183$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:183: POLL_WRITE_BYTE(bNotADCCS, 1);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0xA1
	mov	_USB0DAT,#0x01
	C$Main.c$184$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:184: POLL_WRITE_BYTE(bNotDACCS, 1);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x01
	C$Main.c$185$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:185: POLL_WRITE_BYTE(bNotRAMCS, 1);
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0xA6
	mov	_USB0DAT,#0x01
	C$Main.c$186$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:186: POLL_WRITE_BYTE(bNotRAMHold, 1);
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0xA7
	mov	_USB0DAT,#0x01
	C$Main.c$187$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:187: POLL_WRITE_BYTE(bMtrDrvrEn, 1);			// Enable/disable (0/1) stepper motor driver
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x85
	mov	_USB0DAT,#0x01
	C$Main.c$189$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:189: POLL_WRITE_BYTE(bMtr1Dir, 0);
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	mov	_USB0ADR,#0x86
	mov	_USB0DAT,#0x00
	C$Main.c$190$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:190: POLL_WRITE_BYTE(bMtr2Dir, 0);
00119$:
	mov	a,_USB0ADR
	jb	acc.7,00119$
	mov	_USB0ADR,#0x83
	mov	_USB0DAT,#0x00
	C$Main.c$191$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:191: POLL_WRITE_BYTE(bMtr1Step, 0);
00122$:
	mov	a,_USB0ADR
	jb	acc.7,00122$
	mov	_USB0ADR,#0x87
	mov	_USB0DAT,#0x00
	C$Main.c$192$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:192: POLL_WRITE_BYTE(bMtr2Step, 0);
00125$:
	mov	a,_USB0ADR
	jb	acc.7,00125$
	mov	_USB0ADR,#0x84
	mov	_USB0DAT,#0x00
	C$Main.c$193$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:193: POLL_WRITE_BYTE(bLaser, 0);					// Disable laswer power
00128$:
	mov	a,_USB0ADR
	jb	acc.7,00128$
	mov	_USB0ADR,#0x92
	mov	_USB0DAT,#0x00
	C$Main.c$194$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:194: POLL_WRITE_BYTE(bOutputEnable, 0);			// Disable the output until we're ready
00131$:
	mov	a,_USB0ADR
	jb	acc.7,00131$
	mov	_USB0ADR,#0xA3
	mov	_USB0DAT,#0x00
	C$Main.c$195$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:195: POLL_WRITE_BYTE(bPos, 1);					// Positive voltage and current
00134$:
	mov	a,_USB0ADR
	jb	acc.7,00134$
	mov	_USB0ADR,#0xA0
	mov	_USB0DAT,#0x01
	C$Main.c$196$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:196: POLL_WRITE_BYTE(bCal, 0);					// Not in calibration state
00137$:
	mov	a,_USB0ADR
	jb	acc.7,00137$
	mov	_USB0ADR,#0x97
	mov	_USB0DAT,#0x00
	C$Main.c$197$2$14 ==.
	XG$Port_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$SPI_Init$0$0 ==.
	C$Main.c$211$2$14 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:211: void SPI_Init (void)
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
	C$Main.c$214$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:214: POLL_WRITE_BYTE(bNotDACCS, 1);
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x01
	C$Main.c$215$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:215: POLL_WRITE_BYTE(bNotADCCS, 1);
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0xA1
	mov	_USB0DAT,#0x01
	C$Main.c$216$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:216: POLL_WRITE_BYTE(bNotRAMCS, 1);
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0xA6
	mov	_USB0DAT,#0x01
	C$Main.c$227$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:227: SPI0CFG = 0x50;				// 0x60 = 0101 0000
	mov	_SPI0CFG,#0x50
	C$Main.c$238$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:238: SPI0CN = 0x01;				// 0x01 = 0000 0001
	mov	_SPI0CN,#0x01
	C$Main.c$250$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:250: SPI0CKR = 0x05;				// 0x00 = 0000 0101
	mov	_SPI0CKR,#0x05
	C$Main.c$253$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:253: ESPI0 = 1;
	setb	_ESPI0
	C$Main.c$254$1$1 ==.
	XG$SPI_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAC_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$DAC_Init$0$0 ==.
	C$Main.c$268$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:268: void DAC_Init (void)
;	-----------------------------------------
;	 function DAC_Init
;	-----------------------------------------
_DAC_Init:
	C$Main.c$271$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:271: Writing_to_DAC = 1;
	mov	_Writing_to_DAC,#0x01
	clr	a
	mov	(_Writing_to_DAC + 1),a
	C$Main.c$284$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:284: POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x00
	C$Main.c$285$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:285: SPI0DAT = 0x08;					// 0x08 = 0000 1000
	mov	_SPI0DAT,#0x08
	C$Main.c$286$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:286: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00104$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00179$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00179$
	sjmp	00180$
00179$:
	sjmp	00104$
00180$:
	C$Main.c$287$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:287: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$Main.c$288$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:288: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00107$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00181$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00181$
	sjmp	00182$
00181$:
	sjmp	00107$
00182$:
	C$Main.c$289$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:289: SPI0DAT = 0x04;					// 0x04 = 0000 0100
	mov	_SPI0DAT,#0x04
	C$Main.c$290$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:290: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
00110$:
	mov	a,#0x03
	cjne	a,_SPI_DAC_Bytes,00183$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00183$
	sjmp	00184$
00183$:
	sjmp	00110$
00184$:
	C$Main.c$291$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:291: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
	mov	a,_SPI_DAC_Bytes
	add	a,#0xfd
	mov	_SPI_DAC_Bytes,a
	mov	a,(_SPI_DAC_Bytes + 1)
	addc	a,#0xff
	mov	(_SPI_DAC_Bytes + 1),a
	C$Main.c$292$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:292: POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x01
	C$Main.c$308$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:308: POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x00
	C$Main.c$309$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:309: SPI0DAT = 0x19;					// 0x19 = 0001 1001
	mov	_SPI0DAT,#0x19
	C$Main.c$310$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:310: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00119$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00187$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00187$
	sjmp	00188$
00187$:
	sjmp	00119$
00188$:
	C$Main.c$311$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:311: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$Main.c$312$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:312: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00122$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00189$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00189$
	sjmp	00190$
00189$:
	sjmp	00122$
00190$:
	C$Main.c$313$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:313: SPI0DAT = 0x0E;					// 0x0E = 0000 1110
	mov	_SPI0DAT,#0x0E
	C$Main.c$314$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:314: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
00125$:
	mov	a,#0x03
	cjne	a,_SPI_DAC_Bytes,00191$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00191$
	sjmp	00192$
00191$:
	sjmp	00125$
00192$:
	C$Main.c$315$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:315: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
	mov	a,_SPI_DAC_Bytes
	add	a,#0xfd
	mov	_SPI_DAC_Bytes,a
	mov	a,(_SPI_DAC_Bytes + 1)
	addc	a,#0xff
	mov	(_SPI_DAC_Bytes + 1),a
	C$Main.c$316$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:316: POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication
00128$:
	mov	a,_USB0ADR
	jb	acc.7,00128$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x01
	C$Main.c$335$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:335: POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
00131$:
	mov	a,_USB0ADR
	jb	acc.7,00131$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x00
	C$Main.c$336$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:336: SPI0DAT = 0x10;					// 0x10 = 0001 0000
	mov	_SPI0DAT,#0x10
	C$Main.c$337$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:337: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00134$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00195$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00195$
	sjmp	00196$
00195$:
	sjmp	00134$
00196$:
	C$Main.c$338$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:338: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$Main.c$339$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:339: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00137$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00197$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00197$
	sjmp	00198$
00197$:
	sjmp	00137$
00198$:
	C$Main.c$340$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:340: SPI0DAT = 0x01;					// 0x0F = 0000 0001
	mov	_SPI0DAT,#0x01
	C$Main.c$341$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:341: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
00140$:
	mov	a,#0x03
	cjne	a,_SPI_DAC_Bytes,00199$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00199$
	sjmp	00200$
00199$:
	sjmp	00140$
00200$:
	C$Main.c$342$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:342: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
	mov	a,_SPI_DAC_Bytes
	add	a,#0xfd
	mov	_SPI_DAC_Bytes,a
	mov	a,(_SPI_DAC_Bytes + 1)
	addc	a,#0xff
	mov	(_SPI_DAC_Bytes + 1),a
	C$Main.c$343$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:343: POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication
00143$:
	mov	a,_USB0ADR
	jb	acc.7,00143$
	mov	_USB0ADR,#0x94
	mov	_USB0DAT,#0x01
	C$Main.c$346$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:346: Writing_to_DAC = 0;
	clr	a
	mov	_Writing_to_DAC,a
	mov	(_Writing_to_DAC + 1),a
	C$Main.c$347$1$1 ==.
	XG$DAC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$Main.c$361$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:361: void ADC_Init (void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$Main.c$364$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:364: Writing_to_ADC = 1;
	mov	_Writing_to_ADC,#0x01
	clr	a
	mov	(_Writing_to_ADC + 1),a
	C$Main.c$379$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:379: SPI0CFG = 0x40;				// 0x60 = 0100 0000
	mov	_SPI0CFG,#0x40
	C$Main.c$391$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:391: SPI0CKR = 0x05;				// 0x00 = 0000 0101
	mov	_SPI0CKR,#0x05
	C$Main.c$404$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:404: POLL_WRITE_BYTE(bNotADCCS, 0);	// Select the DAC for SPI communication
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0xA1
	mov	_USB0DAT,#0x00
	C$Main.c$405$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:405: SPI0DAT = 0xA0;					// 0xA0 = 1010 0000
	mov	_SPI0DAT,#0xA0
	C$Main.c$406$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:406: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00104$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00123$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00123$
	sjmp	00124$
00123$:
	sjmp	00104$
00124$:
	C$Main.c$407$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:407: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$Main.c$408$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:408: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00107$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00125$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00125$
	sjmp	00126$
00125$:
	sjmp	00107$
00126$:
	C$Main.c$409$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:409: POLL_WRITE_BYTE(bNotADCCS, 1);	// Deselect the DAC for SPI communication
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0xA1
	mov	_USB0DAT,#0x01
	C$Main.c$412$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:412: Writing_to_ADC = 0;
	clr	a
	mov	_Writing_to_ADC,a
	mov	(_Writing_to_ADC + 1),a
	C$Main.c$413$1$1 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Usb0_Init'
;------------------------------------------------------------
;Count                     Allocated to registers r2 
;------------------------------------------------------------
	G$Usb0_Init$0$0 ==.
	C$Main.c$428$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:428: void Usb0_Init(void)
;	-----------------------------------------
;	 function Usb0_Init
;	-----------------------------------------
_Usb0_Init:
	C$Main.c$434$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:434: for (Count = 0; Count < 64; Count++)
	mov	r2,#0x00
00119$:
	cjne	r2,#0x40,00140$
00140$:
	jnc	00101$
	C$Main.c$436$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:436: Out_Packet[Count] = 0;
	mov	a,r2
	add	a,#_Out_Packet
	mov	r0,a
	mov	@r0,#0x00
	C$Main.c$437$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:437: In_Packet[Count] = 0;
	mov	a,r2
	add	a,#_In_Packet
	mov	r0,a
	mov	@r0,#0x00
	C$Main.c$434$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:434: for (Count = 0; Count < 64; Count++)
	inc	r2
	C$Main.c$440$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:440: POLL_WRITE_BYTE(POWER,  0x08);      // Force Asynchronous USB Reset
	sjmp	00119$
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x08
	C$Main.c$441$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:441: POLL_WRITE_BYTE(IN1IE,  0x07);      // Enable Endpoint 0-2 in interrupts
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	_USB0ADR,#0x07
	mov	_USB0DAT,#0x07
	C$Main.c$442$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:442: POLL_WRITE_BYTE(OUT1IE, 0x07);      // Enable Endpoint 0-2 out interrupts
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	_USB0ADR,#0x09
	mov	_USB0DAT,#0x07
	C$Main.c$443$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:443: POLL_WRITE_BYTE(CMIE,   0x07);      // Enable Reset,Resume,Suspend interrupts
00110$:
	mov	a,_USB0ADR
	jb	acc.7,00110$
	mov	_USB0ADR,#0x0B
	mov	_USB0DAT,#0x07
	C$Main.c$449$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:449: USB0XCN = 0xE0;                     // Enable transceiver; select full speed
	mov	_USB0XCN,#0xE0
	C$Main.c$450$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:450: POLL_WRITE_BYTE(CLKREC, 0x80);      // Enable clock recovery, single-step mode
00113$:
	mov	a,_USB0ADR
	jb	acc.7,00113$
	mov	_USB0ADR,#0x0F
	mov	_USB0DAT,#0x80
	C$Main.c$454$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:454: EIE1 |= 0x02;                       // Enable USB0 Interrupts
	orl	_EIE1,#0x02
	C$Main.c$455$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:455: EA = 1;                             // Global Interrupt enable
	setb	_EA
	C$Main.c$458$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:458: POLL_WRITE_BYTE(POWER,  0x01);      // and enable suspend detection
00116$:
	mov	a,_USB0ADR
	jb	acc.7,00116$
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x01
	C$Main.c$459$2$8 ==.
	XG$Usb0_Init$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
