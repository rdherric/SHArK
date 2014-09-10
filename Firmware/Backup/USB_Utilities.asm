;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sun Sep 12 11:13:35 2010
;--------------------------------------------------------
	.module USB_Utilities
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _FIFOWrite_PARM_3
	.globl _FIFOWrite_PARM_2
	.globl _FIFORead_PARM_3
	.globl _FIFORead_PARM_2
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
	.globl _HaltEndpoint
	.globl _EnableEndpoint
	.globl _GetEpStatus
	.globl _SetConfiguration
	.globl _SetInterface
	.globl _FIFORead
	.globl _FIFOWrite
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
LFIFORead$uNumBytes$1$1==.
_FIFORead_PARM_2::
	.ds 2
LFIFORead$pData$1$1==.
_FIFORead_PARM_3::
	.ds 3
LFIFORead$i$1$1==.
_FIFORead_i_1_1::
	.ds 2
	.area	OSEG    (OVR,DATA)
LFIFOWrite$uNumBytes$1$1==.
_FIFOWrite_PARM_2::
	.ds 2
LFIFOWrite$pData$1$1==.
_FIFOWrite_PARM_3::
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
;Allocation info for local variables in function 'HaltEndpoint'
;------------------------------------------------------------
;uEp                       Allocated to registers r2 r3 
;bReturnState              Allocated to registers r2 
;bIndex                    Allocated to registers r4 
;------------------------------------------------------------
	G$HaltEndpoint$0$0 ==.
	C$USB_Utilities.c$78$0$0 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:78: BYTE HaltEndpoint (UINT uEp)
;	-----------------------------------------
;	 function HaltEndpoint
;	-----------------------------------------
_HaltEndpoint:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	C$USB_Utilities.c$83$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:83: UREAD_BYTE (INDEX, bIndex);
	mov	_USB0ADR,#0x8E
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	r4,_USB0DAT
	C$USB_Utilities.c$84$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:84: UWRITE_BYTE (INDEX, (BYTE)uEp & 0x00EF);
	mov	_USB0ADR,#0x0E
	mov	ar5,r2
	mov	a,#0xEF
	anl	a,r5
	mov	_USB0DAT,a
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	C$USB_Utilities.c$87$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:87: switch (uEp)
	cjne	r2,#0x02,00136$
	cjne	r3,#0x00,00136$
	sjmp	00111$
00136$:
	cjne	r2,#0x81,00115$
	cjne	r3,#0x00,00115$
	C$USB_Utilities.c$90$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:90: UWRITE_BYTE (EINCSRL, rbInSDSTL);
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x10
00108$:
	mov	a,_USB0ADR
	jb	acc.7,00108$
	C$USB_Utilities.c$91$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:91: gEp1InStatus.bEpState = EP_HALTED;
	mov	(_gEp1InStatus + 0x0005),#0x03
	C$USB_Utilities.c$92$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:92: bReturnState = EP_IDLE;          // Return success flag
	mov	r2,#0x00
	C$USB_Utilities.c$93$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:93: break;
	C$USB_Utilities.c$94$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:94: case EP2_OUT:
	sjmp	00116$
00111$:
	C$USB_Utilities.c$95$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:95: UWRITE_BYTE (EOUTCSRL, rbOutSDSTL);
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x20
00112$:
	mov	a,_USB0ADR
	jb	acc.7,00112$
	C$USB_Utilities.c$96$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:96: gEp2OutStatus.bEpState = EP_HALTED;
	mov	(_gEp2OutStatus + 0x0005),#0x03
	C$USB_Utilities.c$97$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:97: bReturnState = EP_IDLE;          // Return success flag
	mov	r2,#0x00
	C$USB_Utilities.c$98$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:98: break;
	C$USB_Utilities.c$99$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:99: default:
	sjmp	00116$
00115$:
	C$USB_Utilities.c$100$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:100: bReturnState = EP_ERROR;         // Return error flag
	mov	r2,#0x02
	C$USB_Utilities.c$103$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:103: }
00116$:
	C$USB_Utilities.c$105$2$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:105: UWRITE_BYTE (INDEX, bIndex);           // Restore saved INDEX
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,r4
00117$:
	mov	a,_USB0ADR
	jb	acc.7,00117$
	C$USB_Utilities.c$106$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:106: return bReturnState;
	mov	dpl,r2
	C$USB_Utilities.c$107$1$1 ==.
	XG$HaltEndpoint$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EnableEndpoint'
;------------------------------------------------------------
;uEp                       Allocated to registers r2 r3 
;bReturnState              Allocated to registers r2 
;bIndex                    Allocated to registers r4 
;------------------------------------------------------------
	G$EnableEndpoint$0$0 ==.
	C$USB_Utilities.c$120$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:120: BYTE EnableEndpoint (UINT uEp)
;	-----------------------------------------
;	 function EnableEndpoint
;	-----------------------------------------
_EnableEndpoint:
	mov	r2,dpl
	mov	r3,dph
	C$USB_Utilities.c$125$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:125: UREAD_BYTE (INDEX, bIndex);
	mov	_USB0ADR,#0x8E
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	r4,_USB0DAT
	C$USB_Utilities.c$126$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:126: UWRITE_BYTE (INDEX, (BYTE)uEp & 0x00EF);
	mov	_USB0ADR,#0x0E
	mov	ar5,r2
	mov	a,#0xEF
	anl	a,r5
	mov	_USB0DAT,a
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	C$USB_Utilities.c$129$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:129: switch (uEp)
	cjne	r2,#0x02,00136$
	cjne	r3,#0x00,00136$
	sjmp	00111$
00136$:
	cjne	r2,#0x81,00115$
	cjne	r3,#0x00,00115$
	C$USB_Utilities.c$133$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:133: UWRITE_BYTE (EINCSRL, rbInCLRDT);
	mov	_USB0ADR,#0x11
	mov	_USB0DAT,#0x40
00108$:
	mov	a,_USB0ADR
	jb	acc.7,00108$
	C$USB_Utilities.c$134$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:134: gEp1InStatus.bEpState = EP_IDLE; // Return success
	mov	(_gEp1InStatus + 0x0005),#0x00
	C$USB_Utilities.c$135$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:135: bReturnState = EP_IDLE;
	mov	r2,#0x00
	C$USB_Utilities.c$136$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:136: break;
	C$USB_Utilities.c$137$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:137: case EP2_OUT:
	sjmp	00116$
00111$:
	C$USB_Utilities.c$139$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:139: UWRITE_BYTE (EOUTCSRL, rbOutCLRDT);
	mov	_USB0ADR,#0x14
	mov	_USB0DAT,#0x80
00112$:
	mov	a,_USB0ADR
	jb	acc.7,00112$
	C$USB_Utilities.c$140$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:140: gEp2OutStatus.bEpState = EP_IDLE;// Return success
	mov	(_gEp2OutStatus + 0x0005),#0x00
	C$USB_Utilities.c$141$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:141: bReturnState = EP_IDLE;
	mov	r2,#0x00
	C$USB_Utilities.c$142$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:142: break;
	C$USB_Utilities.c$143$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:143: default:
	sjmp	00116$
00115$:
	C$USB_Utilities.c$144$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:144: bReturnState = EP_ERROR;         // Return error
	mov	r2,#0x02
	C$USB_Utilities.c$147$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:147: }
00116$:
	C$USB_Utilities.c$149$2$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:149: UWRITE_BYTE (INDEX, bIndex);           // Restore INDEX
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,r4
00117$:
	mov	a,_USB0ADR
	jb	acc.7,00117$
	C$USB_Utilities.c$151$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:151: return bReturnState;
	mov	dpl,r2
	C$USB_Utilities.c$152$1$1 ==.
	XG$EnableEndpoint$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetEpStatus'
;------------------------------------------------------------
;uEp                       Allocated to registers r2 r3 
;bReturnState              Allocated to registers r2 
;------------------------------------------------------------
	G$GetEpStatus$0$0 ==.
	C$USB_Utilities.c$165$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:165: BYTE GetEpStatus (UINT uEp)
;	-----------------------------------------
;	 function GetEpStatus
;	-----------------------------------------
_GetEpStatus:
	mov	r2,dpl
	mov	r3,dph
	C$USB_Utilities.c$170$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:170: switch (uEp)
	cjne	r2,#0x02,00109$
	cjne	r3,#0x00,00109$
	sjmp	00102$
00109$:
	cjne	r2,#0x81,00103$
	cjne	r3,#0x00,00103$
	C$USB_Utilities.c$173$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:173: bReturnState = gEp1InStatus.bEpState;
	mov	r2,(_gEp1InStatus + 0x0005)
	C$USB_Utilities.c$174$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:174: break;
	C$USB_Utilities.c$175$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:175: case EP2_OUT:
	sjmp	00104$
00102$:
	C$USB_Utilities.c$176$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:176: bReturnState = gEp2OutStatus.bEpState;
	mov	r2,(_gEp2OutStatus + 0x0005)
	C$USB_Utilities.c$177$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:177: break;
	C$USB_Utilities.c$178$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:178: default:
	sjmp	00104$
00103$:
	C$USB_Utilities.c$179$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:179: bReturnState = EP_ERROR;
	mov	r2,#0x02
	C$USB_Utilities.c$181$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:181: }
00104$:
	C$USB_Utilities.c$183$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:183: return bReturnState;
	mov	dpl,r2
	C$USB_Utilities.c$184$1$1 ==.
	XG$GetEpStatus$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetConfiguration'
;------------------------------------------------------------
;SelectConfig              Allocated to registers r2 
;bReturnState              Allocated to registers r3 
;pIfStatus                 Allocated to registers 
;------------------------------------------------------------
	G$SetConfiguration$0$0 ==.
	C$USB_Utilities.c$197$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:197: BYTE SetConfiguration(BYTE SelectConfig)
;	-----------------------------------------
;	 function SetConfiguration
;	-----------------------------------------
_SetConfiguration:
	mov	r2,dpl
	C$USB_Utilities.c$199$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:199: BYTE bReturnState = EP_IDLE;           // Endpoint state return value
	mov	r3,#0x00
	C$USB_Utilities.c$205$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:205: gDeviceStatus.pConfig = (BYTE*)&gDescriptorMap.bCfg1;
	mov	(_gDeviceStatus + 0x0007),#(_gDescriptorMap + 0x0012)
	mov	((_gDeviceStatus + 0x0007) + 1),#((_gDescriptorMap + 0x0012) >> 8)
	mov	((_gDeviceStatus + 0x0007) + 2),#0x80
	C$USB_Utilities.c$209$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:209: if (gDeviceStatus.pConfig[cfg_bConfigurationValue] != SelectConfig)
	mov	dptr,#(_gDescriptorMap + 0x0017)
	mov	b,#0x80
	lcall	__gptrget
	mov	r4,a
	cjne	a,ar2,00107$
	sjmp	00102$
00107$:
	C$USB_Utilities.c$211$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:211: bReturnState = EP_ERROR;
	mov	r3,#0x02
	sjmp	00103$
00102$:
	C$USB_Utilities.c$217$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:217: gDeviceStatus.bNumInterf = gDeviceStatus.pConfig[cfg_bNumInterfaces];
	mov	a,#0x04
	add	a,(_gDeviceStatus + 0x0007)
	mov	r4,a
	clr	a
	addc	a,((_gDeviceStatus + 0x0007) + 1)
	mov	r5,a
	mov	r6,((_gDeviceStatus + 0x0007) + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	(_gDeviceStatus + 0x0005),r4
	C$USB_Utilities.c$220$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:220: gDeviceStatus.bTotalInterfDsc = MAX_IF;
	mov	(_gDeviceStatus + 0x0006),#0x01
	C$USB_Utilities.c$223$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:223: pIfStatus = (PIF_STATUS)&gDeviceStatus.IfStatus[0];
	C$USB_Utilities.c$226$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:226: pIfStatus->bIfNumber = 0;           // Set interface number
	mov	dptr,#(_gDeviceStatus + 0x000c)
	mov	b,#0x40
	clr	a
	lcall	__gptrput
	C$USB_Utilities.c$227$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:227: pIfStatus->bCurrentAlt = 0;         // Select alternate number zero
	mov	dptr,#(_gDeviceStatus + 0x000b)
	mov	b,#0x40
	clr	a
	lcall	__gptrput
	C$USB_Utilities.c$228$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:228: pIfStatus->bNumAlts = 0;            // No other alternates
	mov	(_gDeviceStatus + 0x000a),#0x00
	C$USB_Utilities.c$230$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:230: SetInterface(pIfStatus);            // Configure Interface0, Alternate0
	mov	dptr,#(_gDeviceStatus + 0x000a)
	mov	b,#0x40
	push	ar2
	push	ar3
	lcall	_SetInterface
	pop	ar3
	pop	ar2
	C$USB_Utilities.c$232$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:232: gDeviceStatus.bDevState = DEV_CONFIG;// Set device state to configured
	mov	(_gDeviceStatus + 0x0001),#0x02
	C$USB_Utilities.c$233$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:233: gDeviceStatus.bCurrentConfig = SelectConfig;// Store current config
	mov	_gDeviceStatus,r2
00103$:
	C$USB_Utilities.c$236$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:236: return bReturnState;
	mov	dpl,r3
	C$USB_Utilities.c$237$1$1 ==.
	XG$SetConfiguration$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetInterface'
;------------------------------------------------------------
;pIfStatus                 Allocated to registers r2 r3 r4 
;bReturnState              Allocated to registers r5 
;bIndex                    Allocated to registers r6 
;------------------------------------------------------------
	G$SetInterface$0$0 ==.
	C$USB_Utilities.c$250$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:250: BYTE SetInterface(PIF_STATUS pIfStatus)
;	-----------------------------------------
;	 function SetInterface
;	-----------------------------------------
_SetInterface:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	C$USB_Utilities.c$252$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:252: BYTE bReturnState = EP_IDLE;
	mov	r5,#0x00
	C$USB_Utilities.c$256$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:256: UREAD_BYTE (INDEX, bIndex);
	mov	_USB0ADR,#0x8E
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	mov	r6,_USB0DAT
	C$USB_Utilities.c$259$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:259: switch(pIfStatus->bIfNumber)
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	jz	00104$
	clr	a
	cjne	r2,#0x01,00147$
	inc	a
00147$:
	C$USB_Utilities.c$262$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:262: case 0:
	sjmp	00122$
00104$:
	C$USB_Utilities.c$264$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:264: UWRITE_BYTE(INDEX, 1);           // Index to Endpoint1 registers
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x01
00105$:
	mov	a,_USB0ADR
	jb	acc.7,00105$
	C$USB_Utilities.c$267$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:267: UWRITE_BYTE(EINCSRH, (rbInDIRSEL | rbInDBIEN));      
	mov	_USB0ADR,#0x12
	mov	_USB0DAT,#0xA0
00108$:
	mov	a,_USB0ADR
	jb	acc.7,00108$
	C$USB_Utilities.c$268$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:268: gEp1InStatus.uNumBytes = 0;      // Reset byte counter
	mov	(_gEp1InStatus + 0x0001),#0x00
	mov	((_gEp1InStatus + 0x0001) + 1),#0x00
	C$USB_Utilities.c$269$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:269: gEp1InStatus.uMaxP = EP1_IN_MAXP;// Set maximum packet size
	mov	(_gEp1InStatus + 0x0003),#0x40
	mov	((_gEp1InStatus + 0x0003) + 1),#0x00
	C$USB_Utilities.c$270$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:270: gEp1InStatus.bEp = EP1_IN;       // Set endpoint address
	mov	_gEp1InStatus,#0x81
	C$USB_Utilities.c$271$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:271: gEp1InStatus.bEpState = EP_IDLE; // Set endpoint state
	mov	(_gEp1InStatus + 0x0005),#0x00
	C$USB_Utilities.c$274$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:274: UWRITE_BYTE(INDEX, 2);           // Index to Endpoint2 registers
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x02
00111$:
	mov	a,_USB0ADR
	jb	acc.7,00111$
	C$USB_Utilities.c$276$3$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:276: UWRITE_BYTE(EOUTCSRH, rbOutDBOEN);      
	mov	_USB0ADR,#0x15
	mov	_USB0DAT,#0x80
00114$:
	mov	a,_USB0ADR
	jb	acc.7,00114$
	C$USB_Utilities.c$277$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:277: gEp2OutStatus.uNumBytes = 0;     // Reset byte counter
	mov	(_gEp2OutStatus + 0x0001),#0x00
	mov	((_gEp2OutStatus + 0x0001) + 1),#0x00
	C$USB_Utilities.c$278$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:278: gEp2OutStatus.uMaxP = EP2_OUT_MAXP;// Set maximum packet size
	mov	(_gEp2OutStatus + 0x0003),#0x40
	mov	((_gEp2OutStatus + 0x0003) + 1),#0x00
	C$USB_Utilities.c$279$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:279: gEp2OutStatus.bEp = EP2_OUT;     // Set endpoint number
	mov	_gEp2OutStatus,#0x02
	C$USB_Utilities.c$280$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:280: gEp2OutStatus.bEpState = EP_IDLE;// Set endpoint state
	mov	(_gEp2OutStatus + 0x0005),#0x00
	C$USB_Utilities.c$282$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:282: UWRITE_BYTE(INDEX, 0);           // Return to index 0
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,#0x00
00117$:
	mov	a,_USB0ADR
	jnb	acc.7,00123$
	C$USB_Utilities.c$293$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:293: default:
	sjmp	00117$
00122$:
	C$USB_Utilities.c$294$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:294: bReturnState = EP_ERROR;
	mov	r5,#0x02
	C$USB_Utilities.c$295$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:295: }
00123$:
	C$USB_Utilities.c$296$2$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:296: UWRITE_BYTE (INDEX, bIndex);           // Restore INDEX
	mov	_USB0ADR,#0x0E
	mov	_USB0DAT,r6
00124$:
	mov	a,_USB0ADR
	jb	acc.7,00124$
	C$USB_Utilities.c$298$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:298: return bReturnState;
	mov	dpl,r5
	C$USB_Utilities.c$299$1$1 ==.
	XG$SetInterface$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FIFORead'
;------------------------------------------------------------
;uNumBytes                 Allocated with name '_FIFORead_PARM_2'
;pData                     Allocated with name '_FIFORead_PARM_3'
;bEp                       Allocated to registers r2 
;TargetReg                 Allocated to registers 
;i                         Allocated with name '_FIFORead_i_1_1'
;------------------------------------------------------------
	G$FIFORead$0$0 ==.
	C$USB_Utilities.c$316$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:316: void FIFORead (BYTE bEp, UINT uNumBytes, BYTE * pData)
;	-----------------------------------------
;	 function FIFORead
;	-----------------------------------------
_FIFORead:
	mov	r2,dpl
	C$USB_Utilities.c$322$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:322: if (uNumBytes)
	mov	a,_FIFORead_PARM_2
	orl	a,(_FIFORead_PARM_2 + 1)
	jz	00113$
	C$USB_Utilities.c$324$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:324: TargetReg = FIFO_EP0 + bEp;         // Find address for target
	mov	a,#0x20
	add	a,r2
	C$USB_Utilities.c$327$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:327: USB0ADR = (TargetReg & 0x3F);       // Set address (mask out bits7-6)
	anl	a,#0x3F
	mov	_USB0ADR,a
	C$USB_Utilities.c$328$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:328: USB0ADR |= 0xC0;                    // Set auto-read and initiate
	orl	_USB0ADR,#0xC0
	C$USB_Utilities.c$332$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:332: for(i=0;i<uNumBytes-1;i++)
	clr	a
	mov	r2,a
	mov	r3,a
	mov	a,_FIFORead_PARM_2
	add	a,#0xff
	mov	r4,a
	mov	a,(_FIFORead_PARM_2 + 1)
	addc	a,#0xff
	mov	r5,a
	clr	a
	mov	_FIFORead_i_1_1,a
	mov	(_FIFORead_i_1_1 + 1),a
00109$:
	clr	c
	mov	a,_FIFORead_i_1_1
	subb	a,r4
	mov	a,(_FIFORead_i_1_1 + 1)
	subb	a,r5
	jnc	00121$
	C$USB_Utilities.c$334$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:334: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$USB_Utilities.c$335$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:335: pData[i] = USB0DAT;              // Copy data byte
	mov	a,_FIFORead_i_1_1
	add	a,_FIFORead_PARM_3
	mov	r0,a
	mov	a,(_FIFORead_i_1_1 + 1)
	addc	a,(_FIFORead_PARM_3 + 1)
	mov	r1,a
	mov	r6,(_FIFORead_PARM_3 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r6
	mov	a,_USB0DAT
	lcall	__gptrput
	C$USB_Utilities.c$332$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:332: for(i=0;i<uNumBytes-1;i++)
	inc	_FIFORead_i_1_1
	clr	a
	cjne	a,_FIFORead_i_1_1,00125$
	inc	(_FIFORead_i_1_1 + 1)
00125$:
	mov	r2,_FIFORead_i_1_1
	mov	r3,(_FIFORead_i_1_1 + 1)
	C$USB_Utilities.c$339$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:339: while(USB0ADR & 0x80);              // Wait for BUSY->'0' (data ready)
	sjmp	00109$
00121$:
	mov	r2,_FIFORead_i_1_1
	mov	r3,(_FIFORead_i_1_1 + 1)
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	C$USB_Utilities.c$340$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:340: pData[i] = USB0DAT;                 // Copy data byte
	mov	a,r2
	add	a,_FIFORead_PARM_3
	mov	r2,a
	mov	a,r3
	addc	a,(_FIFORead_PARM_3 + 1)
	mov	r3,a
	mov	r4,(_FIFORead_PARM_3 + 2)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,_USB0DAT
	lcall	__gptrput
	C$USB_Utilities.c$341$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:341: USB0ADR = 0;                        // Clear auto-read
	mov	_USB0ADR,#0x00
00113$:
	C$USB_Utilities.c$343$2$1 ==.
	XG$FIFORead$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'FIFOWrite'
;------------------------------------------------------------
;uNumBytes                 Allocated with name '_FIFOWrite_PARM_2'
;pData                     Allocated with name '_FIFOWrite_PARM_3'
;bEp                       Allocated to registers r2 
;TargetReg                 Allocated to registers r2 
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
	G$FIFOWrite$0$0 ==.
	C$USB_Utilities.c$360$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:360: void FIFOWrite (BYTE bEp, UINT uNumBytes, BYTE * pData)
;	-----------------------------------------
;	 function FIFOWrite
;	-----------------------------------------
_FIFOWrite:
	mov	r2,dpl
	C$USB_Utilities.c$366$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:366: if (uNumBytes)
	mov	a,_FIFOWrite_PARM_2
	orl	a,(_FIFOWrite_PARM_2 + 1)
	jz	00113$
	C$USB_Utilities.c$368$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:368: TargetReg = FIFO_EP0 + bEp;         // Find address for target
	mov	a,#0x20
	add	a,r2
	mov	r2,a
	C$USB_Utilities.c$371$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:371: while(USB0ADR & 0x80);              // Wait for BUSY->'0'
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$USB_Utilities.c$373$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:373: USB0ADR = (TargetReg & 0x3F);       // Set address (mask out bits7-6)
	mov	a,#0x3F
	anl	a,r2
	mov	_USB0ADR,a
	C$USB_Utilities.c$376$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:376: for(i=0;i<uNumBytes;i++)
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
	clr	c
	mov	a,r2
	subb	a,_FIFOWrite_PARM_2
	mov	a,r3
	subb	a,(_FIFOWrite_PARM_2 + 1)
	jnc	00113$
	C$USB_Utilities.c$378$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:378: USB0DAT = pData[i];
	mov	a,r2
	add	a,_FIFOWrite_PARM_3
	mov	r4,a
	mov	a,r3
	addc	a,(_FIFOWrite_PARM_3 + 1)
	mov	r5,a
	mov	r6,(_FIFOWrite_PARM_3 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	_USB0DAT,a
	C$USB_Utilities.c$379$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:379: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
00104$:
	mov	a,_USB0ADR
	jb	acc.7,00104$
	C$USB_Utilities.c$376$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:376: for(i=0;i<uNumBytes;i++)
	inc	r2
	cjne	r2,#0x00,00109$
	inc	r3
	sjmp	00109$
00113$:
	C$USB_Utilities.c$382$2$1 ==.
	XG$FIFOWrite$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
