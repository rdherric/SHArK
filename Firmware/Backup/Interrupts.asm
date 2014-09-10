;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sun Sep 12 11:13:35 2010
;--------------------------------------------------------
	.module Interrupts
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _USB_ISR
	.globl _bC2D
	.globl _bC2CK
	.globl _bVBUS
	.globl _bRegIn
	.globl _bVDD
	.globl _bDn1
	.globl _bDp1
	.globl _bGND
	.globl _bPos
	.globl _bNotADCCs
	.globl _bNC3
	.globl _bOutputEnable
	.globl _bRedLED
	.globl _bGreenLED
	.globl _bNotRAMCS
	.globl _bNotRAMHold
	.globl _bIn_TTL
	.globl _bOut_TTL
	.globl _bLaser
	.globl _bNC0
	.globl _bNotDACCs
	.globl _bNC1
	.globl _bNC2
	.globl _bCal
	.globl _bSck
	.globl _bMiso
	.globl _bMosi
	.globl _bMtr2Dir
	.globl _bMtr2Step
	.globl _bMtrDrvrEn
	.globl _bMtr1Dir
	.globl _bMtr1Step
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
	.globl _PCA0CP4
	.globl _PCA0CP0
	.globl _PCA0
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _TMR2
	.globl _TMR2RL
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _ADC0
	.globl _TMR3
	.globl _TMR3RL
	.globl _DP
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
	.globl _M_State
	.globl _Endpoint1
	.globl _SetVoltage
	.globl _SetLaser
	.globl _PulseMotor
	.globl _Endpoint2
	.globl _ReadCurrent
	.globl _USBReset
	.globl _Endpoint0
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$CKCON$0$0 == 0x008e
_CKCON	=	0x008e
G$PSCTL$0$0 == 0x008f
_PSCTL	=	0x008f
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$TMR3CN$0$0 == 0x0091
_TMR3CN	=	0x0091
G$TMR3RLL$0$0 == 0x0092
_TMR3RLL	=	0x0092
G$TMR3RLH$0$0 == 0x0093
_TMR3RLH	=	0x0093
G$TMR3L$0$0 == 0x0094
_TMR3L	=	0x0094
G$TMR3H$0$0 == 0x0095
_TMR3H	=	0x0095
G$USB0ADR$0$0 == 0x0096
_USB0ADR	=	0x0096
G$USB0DAT$0$0 == 0x0097
_USB0DAT	=	0x0097
G$SCON0$0$0 == 0x0098
_SCON0	=	0x0098
G$SBUF0$0$0 == 0x0099
_SBUF0	=	0x0099
G$CPT1CN$0$0 == 0x009a
_CPT1CN	=	0x009a
G$CPT0CN$0$0 == 0x009b
_CPT0CN	=	0x009b
G$CPT1MD$0$0 == 0x009c
_CPT1MD	=	0x009c
G$CPT0MD$0$0 == 0x009d
_CPT0MD	=	0x009d
G$CPT1MX$0$0 == 0x009e
_CPT1MX	=	0x009e
G$CPT0MX$0$0 == 0x009f
_CPT0MX	=	0x009f
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$SPICFG$0$0 == 0x00a1
_SPICFG	=	0x00a1
G$SPI0CFG$0$0 == 0x00a1
_SPI0CFG	=	0x00a1
G$SPICKR$0$0 == 0x00a2
_SPICKR	=	0x00a2
G$SPI0CKR$0$0 == 0x00a2
_SPI0CKR	=	0x00a2
G$SPIDAT$0$0 == 0x00a3
_SPIDAT	=	0x00a3
G$SPI0DAT$0$0 == 0x00a3
_SPI0DAT	=	0x00a3
G$P0MDOUT$0$0 == 0x00a4
_P0MDOUT	=	0x00a4
G$P1MDOUT$0$0 == 0x00a5
_P1MDOUT	=	0x00a5
G$P2MDOUT$0$0 == 0x00a6
_P2MDOUT	=	0x00a6
G$P3MDOUT$0$0 == 0x00a7
_P3MDOUT	=	0x00a7
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$CLKSEL$0$0 == 0x00a9
_CLKSEL	=	0x00a9
G$EMI0CN$0$0 == 0x00aa
_EMI0CN	=	0x00aa
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$OSCXCN$0$0 == 0x00b1
_OSCXCN	=	0x00b1
G$OSCICN$0$0 == 0x00b2
_OSCICN	=	0x00b2
G$OSCICL$0$0 == 0x00b3
_OSCICL	=	0x00b3
G$FLSCL$0$0 == 0x00b6
_FLSCL	=	0x00b6
G$FLKEY$0$0 == 0x00b7
_FLKEY	=	0x00b7
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$CLKMUL$0$0 == 0x00b9
_CLKMUL	=	0x00b9
G$AMX0N$0$0 == 0x00ba
_AMX0N	=	0x00ba
G$AMX0P$0$0 == 0x00bb
_AMX0P	=	0x00bb
G$ADC0CF$0$0 == 0x00bc
_ADC0CF	=	0x00bc
G$ADC0L$0$0 == 0x00bd
_ADC0L	=	0x00bd
G$ADC0H$0$0 == 0x00be
_ADC0H	=	0x00be
G$SMB0CN$0$0 == 0x00c0
_SMB0CN	=	0x00c0
G$SMB0CF$0$0 == 0x00c1
_SMB0CF	=	0x00c1
G$SMB0DAT$0$0 == 0x00c2
_SMB0DAT	=	0x00c2
G$ADC0GTL$0$0 == 0x00c3
_ADC0GTL	=	0x00c3
G$ADC0GTH$0$0 == 0x00c4
_ADC0GTH	=	0x00c4
G$ADC0LTL$0$0 == 0x00c5
_ADC0LTL	=	0x00c5
G$ADC0LTH$0$0 == 0x00c6
_ADC0LTH	=	0x00c6
G$TMR2CN$0$0 == 0x00c8
_TMR2CN	=	0x00c8
G$REG0CN$0$0 == 0x00c9
_REG0CN	=	0x00c9
G$TMR2RLL$0$0 == 0x00ca
_TMR2RLL	=	0x00ca
G$TMR2RLH$0$0 == 0x00cb
_TMR2RLH	=	0x00cb
G$TMR2L$0$0 == 0x00cc
_TMR2L	=	0x00cc
G$TMR2H$0$0 == 0x00cd
_TMR2H	=	0x00cd
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$REF0CN$0$0 == 0x00d1
_REF0CN	=	0x00d1
G$P0SKIP$0$0 == 0x00d4
_P0SKIP	=	0x00d4
G$P1SKIP$0$0 == 0x00d5
_P1SKIP	=	0x00d5
G$P2SKIP$0$0 == 0x00d6
_P2SKIP	=	0x00d6
G$USB0XCN$0$0 == 0x00d7
_USB0XCN	=	0x00d7
G$PCA0CN$0$0 == 0x00d8
_PCA0CN	=	0x00d8
G$PCA0MD$0$0 == 0x00d9
_PCA0MD	=	0x00d9
G$PCA0CPM0$0$0 == 0x00da
_PCA0CPM0	=	0x00da
G$PCA0CPM1$0$0 == 0x00db
_PCA0CPM1	=	0x00db
G$PCA0CPM2$0$0 == 0x00dc
_PCA0CPM2	=	0x00dc
G$PCA0CPM3$0$0 == 0x00dd
_PCA0CPM3	=	0x00dd
G$PCA0CPM4$0$0 == 0x00de
_PCA0CPM4	=	0x00de
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$XBR0$0$0 == 0x00e1
_XBR0	=	0x00e1
G$XBR1$0$0 == 0x00e2
_XBR1	=	0x00e2
G$IT01CF$0$0 == 0x00e4
_IT01CF	=	0x00e4
G$EIE1$0$0 == 0x00e6
_EIE1	=	0x00e6
G$EIE2$0$0 == 0x00e7
_EIE2	=	0x00e7
G$ADC0CN$0$0 == 0x00e8
_ADC0CN	=	0x00e8
G$PCA0CPL1$0$0 == 0x00e9
_PCA0CPL1	=	0x00e9
G$PCA0CPH1$0$0 == 0x00ea
_PCA0CPH1	=	0x00ea
G$PCA0CPL2$0$0 == 0x00eb
_PCA0CPL2	=	0x00eb
G$PCA0CPH2$0$0 == 0x00ec
_PCA0CPH2	=	0x00ec
G$PCA0CPL3$0$0 == 0x00ed
_PCA0CPL3	=	0x00ed
G$PCA0CPH3$0$0 == 0x00ee
_PCA0CPH3	=	0x00ee
G$RSTSRC$0$0 == 0x00ef
_RSTSRC	=	0x00ef
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$P0MDIN$0$0 == 0x00f1
_P0MDIN	=	0x00f1
G$P1MDIN$0$0 == 0x00f2
_P1MDIN	=	0x00f2
G$P2MDIN$0$0 == 0x00f3
_P2MDIN	=	0x00f3
G$P3MDIN$0$0 == 0x00f4
_P3MDIN	=	0x00f4
G$EIP1$0$0 == 0x00f6
_EIP1	=	0x00f6
G$EIP2$0$0 == 0x00f7
_EIP2	=	0x00f7
G$SPI0CN$0$0 == 0x00f8
_SPI0CN	=	0x00f8
G$PCA0L$0$0 == 0x00f9
_PCA0L	=	0x00f9
G$PCA0H$0$0 == 0x00fa
_PCA0H	=	0x00fa
G$PCA0CPL0$0$0 == 0x00fb
_PCA0CPL0	=	0x00fb
G$PCA0CPH0$0$0 == 0x00fc
_PCA0CPH0	=	0x00fc
G$PCA0CPL4$0$0 == 0x00fd
_PCA0CPL4	=	0x00fd
G$PCA0CPH4$0$0 == 0x00fe
_PCA0CPH4	=	0x00fe
G$VDM0CN$0$0 == 0x00ff
_VDM0CN	=	0x00ff
G$DP$0$0 == 0x8382
_DP	=	0x8382
G$TMR3RL$0$0 == 0x9392
_TMR3RL	=	0x9392
G$TMR3$0$0 == 0x9594
_TMR3	=	0x9594
G$ADC0$0$0 == 0xbebd
_ADC0	=	0xbebd
G$ADC0GT$0$0 == 0xc4c3
_ADC0GT	=	0xc4c3
G$ADC0LT$0$0 == 0xc6c5
_ADC0LT	=	0xc6c5
G$TMR2RL$0$0 == 0xcbca
_TMR2RL	=	0xcbca
G$TMR2$0$0 == 0xcdcc
_TMR2	=	0xcdcc
G$PCA0CP1$0$0 == 0xeae9
_PCA0CP1	=	0xeae9
G$PCA0CP2$0$0 == 0xeceb
_PCA0CP2	=	0xeceb
G$PCA0CP3$0$0 == 0xeeed
_PCA0CP3	=	0xeeed
G$PCA0$0$0 == 0xfaf9
_PCA0	=	0xfaf9
G$PCA0CP0$0$0 == 0xfcfb
_PCA0CP0	=	0xfcfb
G$PCA0CP4$0$0 == 0xfefd
_PCA0CP4	=	0xfefd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$S0MODE$0$0 == 0x009f
_S0MODE	=	0x009f
G$MCE0$0$0 == 0x009d
_MCE0	=	0x009d
G$REN0$0$0 == 0x009c
_REN0	=	0x009c
G$TB80$0$0 == 0x009b
_TB80	=	0x009b
G$RB80$0$0 == 0x009a
_RB80	=	0x009a
G$TI0$0$0 == 0x0099
_TI0	=	0x0099
G$RI0$0$0 == 0x0098
_RI0	=	0x0098
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$ESPI0$0$0 == 0x00ae
_ESPI0	=	0x00ae
G$ET2$0$0 == 0x00ad
_ET2	=	0x00ad
G$ES0$0$0 == 0x00ac
_ES0	=	0x00ac
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$PSPI0$0$0 == 0x00be
_PSPI0	=	0x00be
G$PT2$0$0 == 0x00bd
_PT2	=	0x00bd
G$PS0$0$0 == 0x00bc
_PS0	=	0x00bc
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$MASTER$0$0 == 0x00c7
_MASTER	=	0x00c7
G$TXMODE$0$0 == 0x00c6
_TXMODE	=	0x00c6
G$STA$0$0 == 0x00c5
_STA	=	0x00c5
G$STO$0$0 == 0x00c4
_STO	=	0x00c4
G$ACKRQ$0$0 == 0x00c3
_ACKRQ	=	0x00c3
G$ARBLOST$0$0 == 0x00c2
_ARBLOST	=	0x00c2
G$ACK$0$0 == 0x00c1
_ACK	=	0x00c1
G$SI$0$0 == 0x00c0
_SI	=	0x00c0
G$TF2H$0$0 == 0x00cf
_TF2H	=	0x00cf
G$TF2L$0$0 == 0x00ce
_TF2L	=	0x00ce
G$TF2LEN$0$0 == 0x00cd
_TF2LEN	=	0x00cd
G$T2SOF$0$0 == 0x00cc
_T2SOF	=	0x00cc
G$T2SPLIT$0$0 == 0x00cb
_T2SPLIT	=	0x00cb
G$TR2$0$0 == 0x00ca
_TR2	=	0x00ca
G$T2XCLK$0$0 == 0x00c8
_T2XCLK	=	0x00c8
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$CF$0$0 == 0x00df
_CF	=	0x00df
G$CR$0$0 == 0x00de
_CR	=	0x00de
G$CCF4$0$0 == 0x00dc
_CCF4	=	0x00dc
G$CCF3$0$0 == 0x00db
_CCF3	=	0x00db
G$CCF2$0$0 == 0x00da
_CCF2	=	0x00da
G$CCF1$0$0 == 0x00d9
_CCF1	=	0x00d9
G$CCF0$0$0 == 0x00d8
_CCF0	=	0x00d8
G$AD0EN$0$0 == 0x00ef
_AD0EN	=	0x00ef
G$AD0TM$0$0 == 0x00ee
_AD0TM	=	0x00ee
G$AD0INT$0$0 == 0x00ed
_AD0INT	=	0x00ed
G$AD0BUSY$0$0 == 0x00ec
_AD0BUSY	=	0x00ec
G$AD0WINT$0$0 == 0x00eb
_AD0WINT	=	0x00eb
G$AD0CM2$0$0 == 0x00ea
_AD0CM2	=	0x00ea
G$AD0CM1$0$0 == 0x00e9
_AD0CM1	=	0x00e9
G$AD0CM0$0$0 == 0x00e8
_AD0CM0	=	0x00e8
G$SPIF$0$0 == 0x00ff
_SPIF	=	0x00ff
G$WCOL$0$0 == 0x00fe
_WCOL	=	0x00fe
G$MODF$0$0 == 0x00fd
_MODF	=	0x00fd
G$RXOVRN$0$0 == 0x00fc
_RXOVRN	=	0x00fc
G$NSSMD1$0$0 == 0x00fb
_NSSMD1	=	0x00fb
G$NSSMD0$0$0 == 0x00fa
_NSSMD0	=	0x00fa
G$TXBMT$0$0 == 0x00f9
_TXBMT	=	0x00f9
G$SPIEN$0$0 == 0x00f8
_SPIEN	=	0x00f8
G$bMtr1Step$0$0 == 0x0087
_bMtr1Step	=	0x0087
G$bMtr1Dir$0$0 == 0x0086
_bMtr1Dir	=	0x0086
G$bMtrDrvrEn$0$0 == 0x0085
_bMtrDrvrEn	=	0x0085
G$bMtr2Step$0$0 == 0x0084
_bMtr2Step	=	0x0084
G$bMtr2Dir$0$0 == 0x0083
_bMtr2Dir	=	0x0083
G$bMosi$0$0 == 0x0082
_bMosi	=	0x0082
G$bMiso$0$0 == 0x0081
_bMiso	=	0x0081
G$bSck$0$0 == 0x0080
_bSck	=	0x0080
G$bCal$0$0 == 0x0097
_bCal	=	0x0097
G$bNC2$0$0 == 0x0096
_bNC2	=	0x0096
G$bNC1$0$0 == 0x0095
_bNC1	=	0x0095
G$bNotDACCs$0$0 == 0x0094
_bNotDACCs	=	0x0094
G$bNC0$0$0 == 0x0093
_bNC0	=	0x0093
G$bLaser$0$0 == 0x0092
_bLaser	=	0x0092
G$bOut_TTL$0$0 == 0x0091
_bOut_TTL	=	0x0091
G$bIn_TTL$0$0 == 0x0090
_bIn_TTL	=	0x0090
G$bNotRAMHold$0$0 == 0x00a7
_bNotRAMHold	=	0x00a7
G$bNotRAMCS$0$0 == 0x00a6
_bNotRAMCS	=	0x00a6
G$bGreenLED$0$0 == 0x00a5
_bGreenLED	=	0x00a5
G$bRedLED$0$0 == 0x00a4
_bRedLED	=	0x00a4
G$bOutputEnable$0$0 == 0x00a3
_bOutputEnable	=	0x00a3
G$bNC3$0$0 == 0x00a2
_bNC3	=	0x00a2
G$bNotADCCs$0$0 == 0x00a1
_bNotADCCs	=	0x00a1
G$bPos$0$0 == 0x00a0
_bPos	=	0x00a0
G$bGND$0$0 == 0x00b7
_bGND	=	0x00b7
G$bDp1$0$0 == 0x00b6
_bDp1	=	0x00b6
G$bDn1$0$0 == 0x00b5
_bDn1	=	0x00b5
G$bVDD$0$0 == 0x00b4
_bVDD	=	0x00b4
G$bRegIn$0$0 == 0x00b3
_bRegIn	=	0x00b3
G$bVBUS$0$0 == 0x00b2
_bVBUS	=	0x00b2
G$bC2CK$0$0 == 0x00b1
_bC2CK	=	0x00b1
G$bC2D$0$0 == 0x00b0
_bC2D	=	0x00b0
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
G$M_State$0$0==.
_M_State::
	.ds 1
LEndpoint1$bOp$1$1==.
_Endpoint1_bOp_1_1:
	.ds 1
LSetVoltage$pData$1$1==.
_SetVoltage_pData_1_1:
	.ds 4
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
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;------------------------------------------------------------
;Allocation info for local variables in function 'USB_ISR'
;------------------------------------------------------------
;bCommonInt                Allocated to registers r2 
;bInInt                    Allocated to registers r3 
;bOutInt                   Allocated to registers r4 
;------------------------------------------------------------
	G$USB_ISR$0$0 ==.
	C$Interrupts.c$60$0$0 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:60: void USB_ISR() interrupt 8
;	-----------------------------------------
;	 function USB_ISR
;	-----------------------------------------
_USB_ISR:
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
	C$Interrupts.c$68$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:68: UREAD_BYTE(CMINT, bCommonInt);
	mov	_USB0ADR,#0x86
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	r2,_USB0DAT
	C$Interrupts.c$69$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:69: UREAD_BYTE(IN1INT, bInInt);
	mov	_USB0ADR,#0x82
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	mov	r3,_USB0DAT
	C$Interrupts.c$70$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:70: UREAD_BYTE(OUT1INT, bOutInt);
	mov	_USB0ADR,#0x84
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	mov	r4,_USB0DAT
	C$Interrupts.c$74$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:74: if ((bCommonInt & rbRSTINT) > 0)
	mov	a,r2
	jnb	acc.2,00111$
	C$Interrupts.c$77$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:77: USBReset();
	push	ar3
	push	ar4
	lcall	_USBReset
	pop	ar4
	pop	ar3
	C$Interrupts.c$80$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:80: M_State = ST_WAIT_DEV;
	mov	_M_State,#0x01
00111$:
	C$Interrupts.c$85$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:85: if ((bInInt & rbEP0) > 0)
	mov	a,r3
	jnb	acc.0,00113$
	C$Interrupts.c$88$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:88: Endpoint0();
	push	ar3
	push	ar4
	lcall	_Endpoint0
	pop	ar4
	pop	ar3
00113$:
	C$Interrupts.c$92$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:92: if ((bInInt & rbIN1) > 0)
	mov	a,r3
	jnb	acc.1,00115$
	C$Interrupts.c$95$2$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:95: Endpoint1();
	push	ar4
	lcall	_Endpoint1
	pop	ar4
00115$:
	C$Interrupts.c$99$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:99: if ((bOutInt & rbOUT2) > 0)
	mov	a,r4
	jnb	acc.2,00118$
	C$Interrupts.c$102$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:102: Endpoint2();
	lcall	_Endpoint2
00118$:
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
	C$Interrupts.c$107$2$1 ==.
	XG$USB_ISR$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'Endpoint1'
;------------------------------------------------------------
;bEP                       Allocated to registers 
;uNumBytes                 Allocated to registers 
;bOp                       Allocated with name '_Endpoint1_bOp_1_1'
;------------------------------------------------------------
	G$Endpoint1$0$0 ==.
	C$Interrupts.c$125$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:125: void Endpoint1()
;	-----------------------------------------
;	 function Endpoint1
;	-----------------------------------------
_Endpoint1:
	C$Interrupts.c$130$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:130: BYTE bOp = 0x00;		//Operation to perform
	mov	_Endpoint1_bOp_1_1,#0x00
	C$Interrupts.c$133$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:133: FIFORead(bEP, uNumBytes, &bOp);
	mov	_FIFORead_PARM_3,#_Endpoint1_bOp_1_1
	mov	(_FIFORead_PARM_3 + 1),#0x00
	mov	(_FIFORead_PARM_3 + 2),#0x40
	mov	_FIFORead_PARM_2,#0x01
	clr	a
	mov	(_FIFORead_PARM_2 + 1),a
	mov	dpl,#0x01
	lcall	_FIFORead
	C$Interrupts.c$136$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:136: switch (bOp)
	clr	a
	cjne	a,_Endpoint1_bOp_1_1,00110$
	sjmp	00101$
00110$:
	mov	a,#0x02
	cjne	a,_Endpoint1_bOp_1_1,00111$
	sjmp	00102$
00111$:
	mov	a,#0x03
	C$Interrupts.c$138$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:138: case OP_SET_VOLTAGE:
	cjne	a,_Endpoint1_bOp_1_1,00105$
	sjmp	00103$
00101$:
	C$Interrupts.c$139$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:139: SetVoltage();
	C$Interrupts.c$140$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:140: break;
	C$Interrupts.c$142$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:142: case OP_SET_LASER:
	ljmp	_SetVoltage
00102$:
	C$Interrupts.c$143$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:143: SetLaser();
	C$Interrupts.c$144$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:144: break;
	C$Interrupts.c$146$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:146: case OP_PULSE_MOTOR:
	ljmp	_SetLaser
00103$:
	C$Interrupts.c$147$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:147: PulseMotor();
	C$Interrupts.c$149$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:149: }
	C$Interrupts.c$150$1$1 ==.
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
	C$Interrupts.c$163$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:163: void SetVoltage()
;	-----------------------------------------
;	 function SetVoltage
;	-----------------------------------------
_SetVoltage:
	C$Interrupts.c$171$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:171: FIFORead(bEP, uNumBytes, pData);
	mov	_FIFORead_PARM_3,#_SetVoltage_pData_1_1
	mov	(_FIFORead_PARM_3 + 1),#0x00
	mov	(_FIFORead_PARM_3 + 2),#0x40
	mov	_FIFORead_PARM_2,#0x04
	clr	a
	mov	(_FIFORead_PARM_2 + 1),a
	mov	dpl,#0x01
	C$Interrupts.c$174$1$1 ==.
	XG$SetVoltage$0$0 ==.
	ljmp	_FIFORead
;------------------------------------------------------------
;Allocation info for local variables in function 'SetLaser'
;------------------------------------------------------------
;bEP                       Allocated to registers 
;uNumBytes                 Allocated to registers 
;bState                    Allocated with name '_SetLaser_bState_1_1'
;------------------------------------------------------------
	G$SetLaser$0$0 ==.
	C$Interrupts.c$187$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:187: void SetLaser()
;	-----------------------------------------
;	 function SetLaser
;	-----------------------------------------
_SetLaser:
	C$Interrupts.c$192$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:192: BYTE bState = 0x00;		//State of the Laser to read
	mov	_SetLaser_bState_1_1,#0x00
	C$Interrupts.c$195$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:195: FIFORead(bEP, uNumBytes, &bState);
	mov	_FIFORead_PARM_3,#_SetLaser_bState_1_1
	mov	(_FIFORead_PARM_3 + 1),#0x00
	mov	(_FIFORead_PARM_3 + 2),#0x40
	mov	_FIFORead_PARM_2,#0x01
	clr	a
	mov	(_FIFORead_PARM_2 + 1),a
	mov	dpl,#0x01
	lcall	_FIFORead
	C$Interrupts.c$198$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:198: UWRITE_BYTE(bLaser, bState);
	mov	c,_bLaser
	clr	a
	rlc	a
	mov	_USB0ADR,a
	mov	_USB0DAT,_SetLaser_bState_1_1
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$Interrupts.c$199$2$2 ==.
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
	C$Interrupts.c$212$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:212: void PulseMotor()
;	-----------------------------------------
;	 function PulseMotor
;	-----------------------------------------
_PulseMotor:
	C$Interrupts.c$217$1$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:217: BYTE bMotor = MOTOR_X;		//Motor bit to read
	mov	_PulseMotor_bMotor_1_1,#0x00
	C$Interrupts.c$218$1$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:218: BYTE bDir = DIR_FWD;		//Direction bit to read
	mov	_PulseMotor_bDir_1_1,#0x00
	C$Interrupts.c$219$1$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:219: BYTE bMtrStep = bMtr1Step;	//Motor to step
	mov	c,_bMtr1Step
	clr	a
	rlc	a
	mov	r2,a
	C$Interrupts.c$220$1$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:220: BYTE bMtrDir = bMtr1Dir;	//Direction to step
	mov	c,_bMtr1Dir
	clr	a
	rlc	a
	mov	r3,a
	C$Interrupts.c$224$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:224: FIFORead(bEP, uNumBytes, &bMotor);
	mov	_FIFORead_PARM_3,#_PulseMotor_bMotor_1_1
	mov	(_FIFORead_PARM_3 + 1),#0x00
	mov	(_FIFORead_PARM_3 + 2),#0x40
	mov	_FIFORead_PARM_2,#0x01
	clr	a
	mov	(_FIFORead_PARM_2 + 1),a
	mov	dpl,#0x01
	push	ar2
	push	ar3
	lcall	_FIFORead
	C$Interrupts.c$227$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:227: FIFORead(bEP, uNumBytes, &bDir);
	mov	_FIFORead_PARM_3,#_PulseMotor_bDir_1_1
	mov	(_FIFORead_PARM_3 + 1),#0x00
	mov	(_FIFORead_PARM_3 + 2),#0x40
	mov	_FIFORead_PARM_2,#0x01
	clr	a
	mov	(_FIFORead_PARM_2 + 1),a
	mov	dpl,#0x01
	lcall	_FIFORead
	pop	ar3
	pop	ar2
	C$Interrupts.c$230$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:230: if (bMotor == MOTOR_Y)
	mov	a,#0x01
	cjne	a,_PulseMotor_bMotor_1_1,00102$
	C$Interrupts.c$232$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:232: bMtrStep = bMtr2Step;
	mov	c,_bMtr2Step
	clr	a
	rlc	a
	mov	r2,a
	C$Interrupts.c$233$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:233: bMtrDir = bMtr2Dir;
	mov	c,_bMtr2Dir
	clr	a
	rlc	a
	mov	r3,a
00102$:
	C$Interrupts.c$237$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:237: UWRITE_BYTE(bMtrDrvrEn, 0x01);
	mov	c,_bMtrDrvrEn
	clr	a
	rlc	a
	mov	_USB0ADR,a
	mov	_USB0DAT,#0x01
00103$:
	mov	a,_USB0ADR
	jb	acc.7,00103$
	C$Interrupts.c$240$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:240: UWRITE_BYTE(bMtrDir, bDir);
	mov	_USB0ADR,r3
	mov	_USB0DAT,_PulseMotor_bDir_1_1
00106$:
	mov	a,_USB0ADR
	jb	acc.7,00106$
	C$Interrupts.c$243$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:243: UWRITE_BYTE(bMtrStep, 0x01);
	mov	_USB0ADR,r2
	mov	_USB0DAT,#0x01
00109$:
	mov	a,_USB0ADR
	jb	acc.7,00109$
	C$Interrupts.c$246$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:246: while (uDelay--);
	mov	r3,#0xD4
	mov	r4,#0x30
00112$:
	mov	ar5,r3
	mov	ar6,r4
	dec	r3
	cjne	r3,#0xff,00135$
	dec	r4
00135$:
	mov	a,r5
	orl	a,r6
	C$Interrupts.c$249$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:249: UWRITE_BYTE(bMtrStep, 0x00);
	jnz	00112$
	mov	_USB0ADR,r2
	mov	_USB0DAT,a
00115$:
	mov	a,_USB0ADR
	jb	acc.7,00115$
	C$Interrupts.c$250$2$6 ==.
	XG$PulseMotor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Endpoint2'
;------------------------------------------------------------
;bEP                       Allocated to registers 
;uNumBytes                 Allocated to registers 
;bOp                       Allocated with name '_Endpoint2_bOp_1_1'
;------------------------------------------------------------
	G$Endpoint2$0$0 ==.
	C$Interrupts.c$264$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:264: void Endpoint2()
;	-----------------------------------------
;	 function Endpoint2
;	-----------------------------------------
_Endpoint2:
	C$Interrupts.c$269$1$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:269: BYTE bOp = 0x00;		//Operation to perform
	mov	_Endpoint2_bOp_1_1,#0x00
	C$Interrupts.c$272$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:272: FIFORead(bEP, uNumBytes, &bOp);
	mov	_FIFORead_PARM_3,#_Endpoint2_bOp_1_1
	mov	(_FIFORead_PARM_3 + 1),#0x00
	mov	(_FIFORead_PARM_3 + 2),#0x40
	mov	_FIFORead_PARM_2,#0x01
	clr	a
	mov	(_FIFORead_PARM_2 + 1),a
	mov	dpl,#0x02
	lcall	_FIFORead
	C$Interrupts.c$276$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:276: if (bOp == OP_GET_CURRENT)
	mov	a,#0x01
	cjne	a,_Endpoint2_bOp_1_1,00103$
	C$Interrupts.c$277$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:277: ReadCurrent();
	C$Interrupts.c$278$1$1 ==.
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
	C$Interrupts.c$291$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:291: void ReadCurrent()
;	-----------------------------------------
;	 function ReadCurrent
;	-----------------------------------------
_ReadCurrent:
	C$Interrupts.c$301$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:301: FIFOWrite(bEP, uNumBytes, pData);
	mov	_FIFOWrite_PARM_3,#_ReadCurrent_pData_1_1
	mov	(_FIFOWrite_PARM_3 + 1),#0x00
	mov	(_FIFOWrite_PARM_3 + 2),#0x40
	mov	_FIFOWrite_PARM_2,#0x04
	clr	a
	mov	(_FIFOWrite_PARM_2 + 1),a
	mov	dpl,#0x02
	C$Interrupts.c$302$1$1 ==.
	XG$ReadCurrent$0$0 ==.
	ljmp	_FIFOWrite
;------------------------------------------------------------
;Allocation info for local variables in function 'USBReset'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;bPower                    Allocated to registers 
;pDevStatus                Allocated to registers 
;------------------------------------------------------------
	G$USBReset$0$0 ==.
	C$Interrupts.c$319$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:319: void USBReset ()
;	-----------------------------------------
;	 function USBReset
;	-----------------------------------------
_USBReset:
	C$Interrupts.c$325$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:325: pDevStatus = (BYTE *)&gDeviceStatus;
	C$Interrupts.c$326$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:326: for (i=0;i<sizeof(DEVICE_STATUS);i++)
	mov	r2,#_gDeviceStatus
	mov	r3,#(_gDeviceStatus >> 8)
	mov	r4,#0x40
	mov	r5,#0x0D
00110$:
	C$Interrupts.c$328$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:328: *pDevStatus++ = 0x00;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	clr	a
	lcall	__gptrput
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	djnz	r5,00110$
	C$Interrupts.c$326$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:326: for (i=0;i<sizeof(DEVICE_STATUS);i++)
	C$Interrupts.c$332$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:332: gDeviceStatus.bDevState = DEV_DEFAULT;
	mov	(_gDeviceStatus + 0x0001),#0x00
	C$Interrupts.c$336$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:336: gDeviceStatus.bRemoteWakeupSupport = REMOTE_WAKEUP_SUPPORT;
	mov	(_gDeviceStatus + 0x0002),#0x00
	C$Interrupts.c$337$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:337: gDeviceStatus.bSelfPoweredStatus = SELF_POWERED_SUPPORT;
	mov	(_gDeviceStatus + 0x0004),#0x01
	C$Interrupts.c$342$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:342: gEp0Status.bEpState = EP_IDLE;         // Reset Endpoint0 state
	mov	(_gEp0Status + 0x0005),#0x00
	C$Interrupts.c$343$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:343: gEp0Status.bEp = 0;                    // Set endpoint number
	mov	_gEp0Status,#0x00
	C$Interrupts.c$344$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:344: gEp0Status.uMaxP = EP0_MAXP;           // Set maximum packet size
	mov	(_gEp0Status + 0x0003),#0x40
	mov	((_gEp0Status + 0x0003) + 1),#0x00
	C$Interrupts.c$347$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:347: gEp1InStatus.bEpState = EP_HALTED;     // Reset state
	mov	(_gEp1InStatus + 0x0005),#0x03
	C$Interrupts.c$348$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:348: gEp1InStatus.uNumBytes = 0;            // Reset byte counter
	mov	(_gEp1InStatus + 0x0001),#0x00
	mov	((_gEp1InStatus + 0x0001) + 1),#0x00
	C$Interrupts.c$351$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:351: gEp2OutStatus.bEpState = EP_HALTED;    // Reset state
	mov	(_gEp2OutStatus + 0x0005),#0x03
	C$Interrupts.c$352$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:352: gEp2OutStatus.uNumBytes = 0;           // Reset byte counter
	mov	(_gEp2OutStatus + 0x0001),#0x00
	mov	((_gEp2OutStatus + 0x0001) + 1),#0x00
	C$Interrupts.c$368$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:368: UWRITE_BYTE(POWER, bPower);
	mov	_USB0ADR,#0x01
	mov	_USB0DAT,#0x00
00105$:
	mov	a,_USB0ADR
	jb	acc.7,00105$
	C$Interrupts.c$369$2$5 ==.
	XG$USBReset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Endpoint0'
;------------------------------------------------------------
;bTemp                     Allocated to registers r2 
;bCsr1                     Allocated to registers r2 
;uTxBytes                  Allocated to registers r5 
;------------------------------------------------------------
	G$Endpoint0$0$0 ==.
	C$Interrupts.c$381$2$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:381: void Endpoint0()
;	-----------------------------------------
;	 function Endpoint0
;	-----------------------------------------
_Endpoint0:
	C$Interrupts.c$386$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:386: UWRITE_BYTE(INDEX, 0);                 // Target ep0
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$Interrupts.c$387$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:387: UREAD_BYTE(E0CSR, bCsr1);
	mov	_USB0ADR,#0x91
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	C$Interrupts.c$390$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:390: if (bCsr1 & rbSUEND)                   // Check for setup end
	mov	a,_USB0DAT
	mov	r2,a
	jnb	acc.4,00111$
	C$Interrupts.c$392$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:392: UWRITE_BYTE(E0CSR, rbSSUEND);
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x80
00107$:
	mov	a,_USB0ADR
	jb	acc.7,00107$
	C$Interrupts.c$393$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:393: gEp0Status.bEpState = EP_IDLE;      // ep0 state to idle
	mov	(_gEp0Status + 0x0005),#0x00
	C$Interrupts.c$394$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:394: M_State = ST_IDLE_DEV;              // ported from usb_file.c
	mov	_M_State,#0x02
00111$:
	C$Interrupts.c$398$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:398: if (bCsr1 & rbSTSTL)                   // If last state requested a stall
	mov	a,r2
	jnb	acc.2,00116$
	C$Interrupts.c$400$3$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:400: UWRITE_BYTE(E0CSR, 0);
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x00
00112$:
	mov	a,_USB0ADR
	jb	acc.7,00112$
	C$Interrupts.c$401$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:401: gEp0Status.bEpState = EP_IDLE;      // ep0 state to idle
	mov	(_gEp0Status + 0x0005),#0x00
	C$Interrupts.c$402$2$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:402: M_State = ST_IDLE_DEV;              // ported from usb_file.c
	mov	_M_State,#0x02
00116$:
	C$Interrupts.c$406$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:406: if (bCsr1 & rbOPRDY)
	mov	a,r2
	jb	acc.0,00187$
	ljmp	00142$
00187$:
	C$Interrupts.c$409$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:409: FIFORead(0, 8, (BYTE*)&gEp0Command);
	mov	_FIFORead_PARM_3,#_gEp0Command
	mov	(_FIFORead_PARM_3 + 1),#0x00
	mov	(_FIFORead_PARM_3 + 2),#0x40
	mov	_FIFORead_PARM_2,#0x08
	clr	a
	mov	(_FIFORead_PARM_2 + 1),a
	mov	dpl,#0x00
	lcall	_FIFORead
	C$Interrupts.c$412$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:412: bTemp = gEp0Command.wIndex.c[1];
	mov	r2,(_gEp0Command + 0x0005)
	C$Interrupts.c$413$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:413: gEp0Command.wIndex.c[1] = gEp0Command.wIndex.c[0];
	mov	r3,(_gEp0Command + 0x0004)
	mov	(_gEp0Command + 0x0005),r3
	C$Interrupts.c$414$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:414: gEp0Command.wIndex.c[0] = bTemp;
	mov	(_gEp0Command + 0x0004),r2
	C$Interrupts.c$417$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:417: bTemp = gEp0Command.wValue.c[1];
	mov	r2,(_gEp0Command + 0x0003)
	C$Interrupts.c$418$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:418: gEp0Command.wValue.c[1] = gEp0Command.wValue.c[0];
	mov	r3,(_gEp0Command + 0x0002)
	mov	(_gEp0Command + 0x0003),r3
	C$Interrupts.c$419$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:419: gEp0Command.wValue.c[0] = bTemp;
	mov	(_gEp0Command + 0x0002),r2
	C$Interrupts.c$422$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:422: bTemp = gEp0Command.wLength.c[1];
	mov	r2,(_gEp0Command + 0x0007)
	C$Interrupts.c$423$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:423: gEp0Command.wLength.c[1] = gEp0Command.wLength.c[0];
	mov	r3,(_gEp0Command + 0x0006)
	mov	(_gEp0Command + 0x0007),r3
	C$Interrupts.c$424$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:424: gEp0Command.wLength.c[0] = bTemp;
	mov	(_gEp0Command + 0x0006),r2
	C$Interrupts.c$427$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:427: switch (gEp0Command.bmRequestType & CMD_MASK_COMMON)
	mov	a,#0xF0
	anl	a,_gEp0Command
	mov	r3,a
	jz	00117$
	cjne	r3,#0x80,00189$
	sjmp	00126$
00189$:
	ljmp	00134$
	C$Interrupts.c$429$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:429: case  CMD_STD_DEV_OUT:           // Standard device requests
00117$:
	C$Interrupts.c$431$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:431: switch (gEp0Command.bRequest)
	mov	r3,(_gEp0Command + 0x0001)
	cjne	r3,#0x01,00190$
	sjmp	00120$
00190$:
	cjne	r3,#0x03,00191$
	sjmp	00119$
00191$:
	cjne	r3,#0x05,00192$
	sjmp	00118$
00192$:
	cjne	r3,#0x07,00193$
	sjmp	00124$
00193$:
	cjne	r3,#0x09,00194$
	sjmp	00121$
00194$:
	C$Interrupts.c$433$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:433: case SET_ADDRESS:
	cjne	r3,#0x0B,00124$
	sjmp	00122$
00118$:
	C$Interrupts.c$434$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:434: SetAddressRequest();
	lcall	_SetAddressRequest
	C$Interrupts.c$435$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:435: break;
	C$Interrupts.c$436$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:436: case SET_FEATURE:
	sjmp	00135$
00119$:
	C$Interrupts.c$437$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:437: SetFeatureRequest();
	lcall	_SetFeatureRequest
	C$Interrupts.c$438$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:438: break;
	C$Interrupts.c$439$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:439: case CLEAR_FEATURE:
	sjmp	00135$
00120$:
	C$Interrupts.c$440$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:440: ClearFeatureRequest();
	lcall	_ClearFeatureRequest
	C$Interrupts.c$441$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:441: break;
	C$Interrupts.c$442$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:442: case SET_CONFIGURATION:
	sjmp	00135$
00121$:
	C$Interrupts.c$443$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:443: SetConfigurationRequest();
	lcall	_SetConfigurationRequest
	C$Interrupts.c$444$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:444: break;
	C$Interrupts.c$445$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:445: case SET_INTERFACE:
	sjmp	00135$
00122$:
	C$Interrupts.c$446$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:446: SetInterfaceRequest();
	lcall	_SetInterfaceRequest
	C$Interrupts.c$447$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:447: break;
	C$Interrupts.c$450$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:450: default:
	sjmp	00135$
00124$:
	C$Interrupts.c$451$4$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:451: gEp0Status.bEpState = EP_ERROR;
	mov	(_gEp0Status + 0x0005),#0x02
	C$Interrupts.c$454$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:454: break;
	C$Interrupts.c$457$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:457: case CMD_STD_DEV_IN:
	sjmp	00135$
00126$:
	C$Interrupts.c$458$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:458: switch (gEp0Command.bRequest)
	mov	r3,(_gEp0Command + 0x0001)
	cjne	r3,#0x00,00196$
	sjmp	00127$
00196$:
	cjne	r3,#0x06,00197$
	sjmp	00128$
00197$:
	cjne	r3,#0x08,00198$
	sjmp	00129$
00198$:
	C$Interrupts.c$460$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:460: case GET_STATUS:
	cjne	r3,#0x0A,00132$
	sjmp	00130$
00127$:
	C$Interrupts.c$461$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:461: GetStatusRequest();
	lcall	_GetStatusRequest
	C$Interrupts.c$462$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:462: break;
	C$Interrupts.c$463$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:463: case GET_DESCRIPTOR:
	sjmp	00135$
00128$:
	C$Interrupts.c$464$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:464: GetDescriptorRequest();
	lcall	_GetDescriptorRequest
	C$Interrupts.c$465$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:465: break;
	C$Interrupts.c$466$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:466: case GET_CONFIGURATION:
	sjmp	00135$
00129$:
	C$Interrupts.c$467$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:467: GetConfigurationRequest();
	lcall	_GetConfigurationRequest
	C$Interrupts.c$468$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:468: break;
	C$Interrupts.c$469$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:469: case GET_INTERFACE:
	sjmp	00135$
00130$:
	C$Interrupts.c$470$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:470: GetInterfaceRequest();
	lcall	_GetInterfaceRequest
	C$Interrupts.c$471$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:471: break;
	C$Interrupts.c$474$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:474: default:
	sjmp	00135$
00132$:
	C$Interrupts.c$475$4$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:475: gEp0Status.bEpState = EP_ERROR;
	mov	(_gEp0Status + 0x0005),#0x02
	C$Interrupts.c$478$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:478: break;
	C$Interrupts.c$480$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:480: default:
	sjmp	00135$
00134$:
	C$Interrupts.c$481$3$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:481: gEp0Status.bEpState = EP_ERROR;
	mov	(_gEp0Status + 0x0005),#0x02
	C$Interrupts.c$482$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:482: }
00135$:
	C$Interrupts.c$485$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:485: bTemp = rbSOPRDY;
	mov	r2,#0x40
	C$Interrupts.c$486$2$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:486: if (gEp0Status.bEpState == EP_ERROR)
	mov	a,#0x02
	cjne	a,(_gEp0Status + 0x0005),00137$
	C$Interrupts.c$488$3$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:488: bTemp |= rbSDSTL;                // Error condition handled
	mov	r2,#0x60
	C$Interrupts.c$490$3$12 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:490: gEp0Status.bEpState = EP_IDLE;   // Reset state to idle
	mov	(_gEp0Status + 0x0005),#0x00
00137$:
	C$Interrupts.c$493$3$13 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:493: UWRITE_BYTE(E0CSR, bTemp);
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,r2
00138$:
	mov	a,_USB0ADR
	jb	acc.7,00138$
00142$:
	C$Interrupts.c$496$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:496: bTemp = 0;                             // Reset temporary variable
	mov	r2,#0x00
	C$Interrupts.c$499$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:499: if (gEp0Status.bEpState == EP_TX)
	mov	a,#0x01
	cjne	a,(_gEp0Status + 0x0005),00151$
	C$Interrupts.c$504$2$14 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:504: if (gEp0Status.uNumBytes <= EP0_MAXP)
	mov	r3,(_gEp0Status + 0x0001)
	mov	r4,((_gEp0Status + 0x0001) + 1)
	clr	c
	mov	a,#0x40
	subb	a,r3
	clr	a
	subb	a,r4
	jc	00144$
	C$Interrupts.c$506$3$15 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:506: uTxBytes = gEp0Status.uNumBytes;
	mov	ar5,r3
	C$Interrupts.c$507$3$15 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:507: gEp0Status.uNumBytes = 0;        // update byte counter
	mov	(_gEp0Status + 0x0001),#0x00
	mov	((_gEp0Status + 0x0001) + 1),#0x00
	C$Interrupts.c$508$3$15 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:508: bTemp |= rbDATAEND;              // This will be the last
	mov	r2,#0x08
	C$Interrupts.c$510$3$15 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:510: gEp0Status.bEpState = EP_IDLE;   // Reset endpoint state
	mov	(_gEp0Status + 0x0005),#0x00
	sjmp	00145$
00144$:
	C$Interrupts.c$516$3$16 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:516: uTxBytes = EP0_MAXP;
	mov	r5,#0x40
	C$Interrupts.c$517$3$16 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:517: gEp0Status.uNumBytes -= EP0_MAXP;// update byte counter
	mov	a,r3
	add	a,#0xc0
	mov	r3,a
	mov	a,r4
	addc	a,#0xff
	mov	r4,a
	mov	(_gEp0Status + 0x0001),r3
	mov	((_gEp0Status + 0x0001) + 1),r4
00145$:
	C$Interrupts.c$521$2$14 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:521: FIFOWrite(0, uTxBytes, (BYTE*)gEp0Status.pData);
	mov	_FIFOWrite_PARM_2,r5
	mov	(_FIFOWrite_PARM_2 + 1),#0x00
	mov	_FIFOWrite_PARM_3,(_gEp0Status + 0x0006)
	mov	(_FIFOWrite_PARM_3 + 1),((_gEp0Status + 0x0006) + 1)
	mov	(_FIFOWrite_PARM_3 + 2),((_gEp0Status + 0x0006) + 2)
	mov	dpl,#0x00
	push	ar2
	push	ar5
	lcall	_FIFOWrite
	pop	ar5
	pop	ar2
	C$Interrupts.c$524$2$14 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:524: gEp0Status.pData = (BYTE*)gEp0Status.pData + uTxBytes;
	mov	a,r5
	add	a,(_gEp0Status + 0x0006)
	mov	r5,a
	clr	a
	addc	a,((_gEp0Status + 0x0006) + 1)
	mov	r3,a
	mov	r4,((_gEp0Status + 0x0006) + 2)
	mov	(_gEp0Status + 0x0006),r5
	mov	((_gEp0Status + 0x0006) + 1),r3
	mov	((_gEp0Status + 0x0006) + 2),r4
	C$Interrupts.c$527$2$14 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:527: bTemp |= rbINPRDY;                  // Always transmit a packet
	orl	ar2,#0x02
	C$Interrupts.c$531$3$17 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:531: UWRITE_BYTE(E0CSR, bTemp);          // Write to Endpoint0 Control/Status
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,r2
00146$:
	mov	a,_USB0ADR
	jb	acc.7,00146$
00151$:
	C$Interrupts.c$533$3$1 ==.
	XG$Endpoint0$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
