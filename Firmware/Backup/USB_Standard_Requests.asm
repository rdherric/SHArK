;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sun Sep 12 11:13:34 2010
;--------------------------------------------------------
	.module USB_Standard_Requests
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _pIfStatus
	.globl _uNumBytes
	.globl _bEpState
	.globl _SetAddressRequest
	.globl _SetFeatureRequest
	.globl _ClearFeatureRequest
	.globl _SetConfigurationRequest
	.globl _SetInterfaceRequest
	.globl _GetStatusRequest
	.globl _GetDescriptorRequest
	.globl _GetConfigurationRequest
	.globl _GetInterfaceRequest
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
G$bEpState$0$0==.
_bEpState::
	.ds 1
G$uNumBytes$0$0==.
_uNumBytes::
	.ds 2
G$pIfStatus$0$0==.
_pIfStatus::
	.ds 3
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
LGetDescriptorRequest$wTempInt$1$1==.
_GetDescriptorRequest_wTempInt_1_1::
	.ds 2
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
;Allocation info for local variables in function 'SetAddressRequest'
;------------------------------------------------------------
;------------------------------------------------------------
	G$SetAddressRequest$0$0 ==.
	C$USB_Standard_Requests.c$99$0$0 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:99: void SetAddressRequest ()
;	-----------------------------------------
;	 function SetAddressRequest
;	-----------------------------------------
_SetAddressRequest:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	C$USB_Standard_Requests.c$103$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:103: if ((gEp0Command.wIndex.i) || (gEp0Command.wLength.i) ||
	mov	a,(_gEp0Command + 0x0004)
	orl	a,((_gEp0Command + 0x0004) + 1)
	jnz	00110$
	mov	a,(_gEp0Command + 0x0006)
	orl	a,((_gEp0Command + 0x0006) + 1)
	jnz	00110$
	C$USB_Standard_Requests.c$104$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:104: (gDeviceStatus.bDevState == DEV_CONFIG))
	mov	r2,(_gDeviceStatus + 0x0001)
	cjne	r2,#0x02,00111$
00110$:
	C$USB_Standard_Requests.c$106$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:106: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	sjmp	00112$
00111$:
	C$USB_Standard_Requests.c$112$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:112: UWRITE_BYTE(FADDR, gEp0Command.wValue.c[1]);
	mov	_USB0ADR,#0x00
	mov	_USB0DAT,(_gEp0Command + 0x0003)
00101$:
	mov	a,_USB0ADR
	jb	acc.7,00101$
	C$USB_Standard_Requests.c$113$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:113: if (gDeviceStatus.bDevState == DEV_DEFAULT &&
	mov	a,r2
	jnz	00105$
	C$USB_Standard_Requests.c$114$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:114: gEp0Command.wValue.c[1] != 0)
	mov	a,(_gEp0Command + 0x0003)
	jz	00105$
	C$USB_Standard_Requests.c$116$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:116: gDeviceStatus.bDevState = DEV_ADDRESS;
	mov	(_gDeviceStatus + 0x0001),#0x01
00105$:
	C$USB_Standard_Requests.c$118$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:118: if (gDeviceStatus.bDevState == DEV_ADDRESS &&
	mov	a,#0x01
	cjne	a,(_gDeviceStatus + 0x0001),00108$
	C$USB_Standard_Requests.c$119$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:119: gEp0Command.wValue.c[1] == 0)
	mov	a,(_gEp0Command + 0x0003)
	jnz	00108$
	C$USB_Standard_Requests.c$121$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:121: gDeviceStatus.bDevState = DEV_ADDRESS;
	mov	(_gDeviceStatus + 0x0001),#0x01
00108$:
	C$USB_Standard_Requests.c$123$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:123: bEpState = EP_IDLE;
	mov	_bEpState,#0x00
00112$:
	C$USB_Standard_Requests.c$125$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:125: gEp0Status.bEpState = bEpState;
	mov	(_gEp0Status + 0x0005),_bEpState
	C$USB_Standard_Requests.c$126$1$1 ==.
	XG$SetAddressRequest$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetFeatureRequest'
;------------------------------------------------------------
;------------------------------------------------------------
	G$SetFeatureRequest$0$0 ==.
	C$USB_Standard_Requests.c$137$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:137: void SetFeatureRequest ()
;	-----------------------------------------
;	 function SetFeatureRequest
;	-----------------------------------------
_SetFeatureRequest:
	C$USB_Standard_Requests.c$142$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:142: if ((gEp0Command.wLength.i != 0) ||
	mov	a,(_gEp0Command + 0x0006)
	orl	a,((_gEp0Command + 0x0006) + 1)
	jnz	00101$
	C$USB_Standard_Requests.c$143$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:143: (gDeviceStatus.bDevState == DEV_DEFAULT) ||
	mov	a,(_gDeviceStatus + 0x0001)
	mov	r2,a
	jz	00101$
	C$USB_Standard_Requests.c$144$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:144: (gDeviceStatus.bDevState == DEV_ADDRESS && gEp0Command.wIndex.i != 0))
	cjne	r2,#0x01,00102$
	mov	a,(_gEp0Command + 0x0004)
	orl	a,((_gEp0Command + 0x0004) + 1)
	jz	00102$
00101$:
	C$USB_Standard_Requests.c$146$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:146: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
00102$:
	C$USB_Standard_Requests.c$150$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:150: switch(gEp0Command.bmRequestType & CMD_MASK_RECIP)
	mov	a,#0x1F
	anl	a,_gEp0Command
	mov	r2,a
	jz	00106$
	C$USB_Standard_Requests.c$153$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:153: case CMD_RECIP_DEV:
	cjne	r2,#0x02,00111$
	sjmp	00107$
00106$:
	C$USB_Standard_Requests.c$154$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:154: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	C$USB_Standard_Requests.c$155$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:155: break;
	C$USB_Standard_Requests.c$158$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:158: case CMD_RECIP_EP:
	sjmp	00112$
00107$:
	C$USB_Standard_Requests.c$159$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:159: if (gEp0Command.wValue.i == ENDPOINT_HALT)
	mov	a,(_gEp0Command + 0x0002)
	orl	a,((_gEp0Command + 0x0002) + 1)
	jnz	00109$
	C$USB_Standard_Requests.c$161$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:161: bEpState = HaltEndpoint(gEp0Command.wIndex.i);
	mov	dpl,(_gEp0Command + 0x0004)
	mov	dph,((_gEp0Command + 0x0004) + 1)
	lcall	_HaltEndpoint
	mov	_bEpState,dpl
	C$USB_Standard_Requests.c$162$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:162: break;
	sjmp	00112$
00109$:
	C$USB_Standard_Requests.c$166$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:166: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	C$USB_Standard_Requests.c$167$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:167: break;
	C$USB_Standard_Requests.c$169$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:169: default:
	sjmp	00112$
00111$:
	C$USB_Standard_Requests.c$170$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:170: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	C$USB_Standard_Requests.c$172$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:172: }
00112$:
	C$USB_Standard_Requests.c$173$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:173: gEp0Status.bEpState = bEpState;
	mov	(_gEp0Status + 0x0005),_bEpState
	C$USB_Standard_Requests.c$174$1$1 ==.
	XG$SetFeatureRequest$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ClearFeatureRequest'
;------------------------------------------------------------
;------------------------------------------------------------
	G$ClearFeatureRequest$0$0 ==.
	C$USB_Standard_Requests.c$185$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:185: void ClearFeatureRequest ()
;	-----------------------------------------
;	 function ClearFeatureRequest
;	-----------------------------------------
_ClearFeatureRequest:
	C$USB_Standard_Requests.c$190$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:190: if ((gEp0Command.wLength.i != 0) || (gDeviceStatus.bDevState == DEV_DEFAULT) ||
	mov	a,(_gEp0Command + 0x0006)
	orl	a,((_gEp0Command + 0x0006) + 1)
	jnz	00101$
	mov	a,(_gDeviceStatus + 0x0001)
	mov	r2,a
	jz	00101$
	C$USB_Standard_Requests.c$191$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:191: (gDeviceStatus.bDevState == DEV_ADDRESS && gEp0Command.wIndex.i != 0))
	cjne	r2,#0x01,00102$
	mov	a,(_gEp0Command + 0x0004)
	orl	a,((_gEp0Command + 0x0004) + 1)
	jz	00102$
00101$:
	C$USB_Standard_Requests.c$193$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:193: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
00102$:
	C$USB_Standard_Requests.c$197$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:197: switch(gEp0Command.bmRequestType & CMD_MASK_RECIP)
	mov	a,#0x1F
	anl	a,_gEp0Command
	mov	r2,a
	jz	00106$
	C$USB_Standard_Requests.c$200$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:200: case CMD_RECIP_DEV:
	cjne	r2,#0x02,00111$
	sjmp	00107$
00106$:
	C$USB_Standard_Requests.c$202$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:202: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	C$USB_Standard_Requests.c$203$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:203: break;
	C$USB_Standard_Requests.c$206$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:206: case CMD_RECIP_EP:
	sjmp	00112$
00107$:
	C$USB_Standard_Requests.c$207$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:207: if (gEp0Command.wValue.i == ENDPOINT_HALT)
	mov	a,(_gEp0Command + 0x0002)
	orl	a,((_gEp0Command + 0x0002) + 1)
	jnz	00109$
	C$USB_Standard_Requests.c$210$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:210: bEpState = EnableEndpoint(gEp0Command.wIndex.i);
	mov	dpl,(_gEp0Command + 0x0004)
	mov	dph,((_gEp0Command + 0x0004) + 1)
	lcall	_EnableEndpoint
	mov	_bEpState,dpl
	C$USB_Standard_Requests.c$211$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:211: break;
	sjmp	00112$
00109$:
	C$USB_Standard_Requests.c$215$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:215: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	C$USB_Standard_Requests.c$216$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:216: break;
	C$USB_Standard_Requests.c$218$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:218: default:
	sjmp	00112$
00111$:
	C$USB_Standard_Requests.c$219$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:219: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	C$USB_Standard_Requests.c$221$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:221: }
00112$:
	C$USB_Standard_Requests.c$222$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:222: gEp0Status.bEpState = bEpState;
	mov	(_gEp0Status + 0x0005),_bEpState
	C$USB_Standard_Requests.c$223$1$1 ==.
	XG$ClearFeatureRequest$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetConfigurationRequest'
;------------------------------------------------------------
;------------------------------------------------------------
	G$SetConfigurationRequest$0$0 ==.
	C$USB_Standard_Requests.c$234$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:234: void SetConfigurationRequest ()
;	-----------------------------------------
;	 function SetConfigurationRequest
;	-----------------------------------------
_SetConfigurationRequest:
	C$USB_Standard_Requests.c$238$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:238: if ((gEp0Command.wIndex.i) || (gEp0Command.wLength.i) ||
	mov	a,(_gEp0Command + 0x0004)
	orl	a,((_gEp0Command + 0x0004) + 1)
	jnz	00107$
	mov	a,(_gEp0Command + 0x0006)
	orl	a,((_gEp0Command + 0x0006) + 1)
	jnz	00107$
	C$USB_Standard_Requests.c$239$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:239: (gDeviceStatus.bDevState == DEV_DEFAULT))
	mov	a,(_gDeviceStatus + 0x0001)
	jnz	00108$
00107$:
	C$USB_Standard_Requests.c$241$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:241: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	sjmp	00109$
00108$:
	C$USB_Standard_Requests.c$247$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:247: if (gEp0Command.wValue.c[1] >
	C$USB_Standard_Requests.c$248$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:248: gDescriptorMap.bStdDevDsc[std_bNumConfigurations])
	mov	dptr,#(_gDescriptorMap + 0x0011)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	clr	c
	subb	a,(_gEp0Command + 0x0003)
	jnc	00105$
	C$USB_Standard_Requests.c$250$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:250: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	sjmp	00109$
00105$:
	C$USB_Standard_Requests.c$254$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:254: else if  (gEp0Command.wValue.c[1] == 0)
	mov	a,(_gEp0Command + 0x0003)
	jnz	00102$
	C$USB_Standard_Requests.c$255$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:255: gDeviceStatus.bDevState = DEV_ADDRESS;
	mov	(_gDeviceStatus + 0x0001),#0x01
	sjmp	00109$
00102$:
	C$USB_Standard_Requests.c$259$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:259: bEpState = SetConfiguration(gEp0Command.wValue.c[1]);
	mov	dpl,(_gEp0Command + 0x0003)
	lcall	_SetConfiguration
	mov	_bEpState,dpl
00109$:
	C$USB_Standard_Requests.c$261$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:261: gEp0Status.bEpState = bEpState;
	mov	(_gEp0Status + 0x0005),_bEpState
	C$USB_Standard_Requests.c$262$1$1 ==.
	XG$SetConfigurationRequest$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetInterfaceRequest'
;------------------------------------------------------------
;------------------------------------------------------------
	G$SetInterfaceRequest$0$0 ==.
	C$USB_Standard_Requests.c$273$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:273: void SetInterfaceRequest()
;	-----------------------------------------
;	 function SetInterfaceRequest
;	-----------------------------------------
_SetInterfaceRequest:
	C$USB_Standard_Requests.c$305$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:305: }
	C$USB_Standard_Requests.c$305$1$1 ==.
	XG$SetInterfaceRequest$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetStatusRequest'
;------------------------------------------------------------
;------------------------------------------------------------
	G$GetStatusRequest$0$0 ==.
	C$USB_Standard_Requests.c$316$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:316: void GetStatusRequest ()
;	-----------------------------------------
;	 function GetStatusRequest
;	-----------------------------------------
_GetStatusRequest:
	C$USB_Standard_Requests.c$319$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:319: if ((gEp0Command.wValue.i != 0) || (gEp0Command.wLength.i != 0x02) ||
	mov	a,(_gEp0Command + 0x0002)
	orl	a,((_gEp0Command + 0x0002) + 1)
	jnz	00111$
	mov	a,#0x02
	cjne	a,(_gEp0Command + 0x0006),00130$
	clr	a
	cjne	a,((_gEp0Command + 0x0006) + 1),00130$
	sjmp	00131$
00130$:
	sjmp	00111$
00131$:
	C$USB_Standard_Requests.c$320$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:320: (gDeviceStatus.bDevState == DEV_DEFAULT) ||
	mov	a,(_gDeviceStatus + 0x0001)
	mov	r2,a
	jz	00111$
	C$USB_Standard_Requests.c$321$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:321: (gDeviceStatus.bDevState == DEV_ADDRESS && gEp0Command.wIndex.i != 0))
	cjne	r2,#0x01,00112$
	mov	a,(_gEp0Command + 0x0004)
	orl	a,((_gEp0Command + 0x0004) + 1)
	jz	00112$
00111$:
	C$USB_Standard_Requests.c$323$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:323: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	sjmp	00113$
00112$:
	C$USB_Standard_Requests.c$329$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:329: switch (gEp0Command.bmRequestType & CMD_MASK_RECIP)
	mov	a,#0x1F
	anl	a,_gEp0Command
	mov	r2,a
	jz	00101$
	cjne	r2,#0x01,00137$
	sjmp	00105$
00137$:
	C$USB_Standard_Requests.c$332$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:332: case CMD_RECIP_DEV:
	cjne	r2,#0x02,00109$
	sjmp	00106$
00101$:
	C$USB_Standard_Requests.c$334$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:334: if (gEp0Command.wIndex.i != 0)
	mov	a,(_gEp0Command + 0x0004)
	orl	a,((_gEp0Command + 0x0004) + 1)
	jz	00103$
	C$USB_Standard_Requests.c$335$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:335: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	sjmp	00110$
00103$:
	C$USB_Standard_Requests.c$339$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:339: gEp0Status.wData.c[1] = 0;
	mov	(_gEp0Status + 0x000a),#0x00
	C$USB_Standard_Requests.c$340$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:340: gEp0Status.wData.c[0] = gDeviceStatus.bRemoteWakeupStatus;
	mov	(_gEp0Status + 0x0009),(_gDeviceStatus + 0x0003)
	C$USB_Standard_Requests.c$341$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:341: gEp0Status.wData.c[0] |= gDeviceStatus.bSelfPoweredStatus;
	mov	a,(_gDeviceStatus + 0x0004)
	orl	a,(_gEp0Status + 0x0009)
	mov	(_gEp0Status + 0x0009),a
	C$USB_Standard_Requests.c$343$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:343: break;
	C$USB_Standard_Requests.c$346$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:346: case CMD_RECIP_IF:
	sjmp	00110$
00105$:
	C$USB_Standard_Requests.c$348$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:348: gEp0Status.wData.i = 0;
	mov	(_gEp0Status + 0x0009),#0x00
	mov	((_gEp0Status + 0x0009) + 1),#0x00
	C$USB_Standard_Requests.c$349$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:349: break;
	C$USB_Standard_Requests.c$352$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:352: case CMD_RECIP_EP:
	sjmp	00110$
00106$:
	C$USB_Standard_Requests.c$354$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:354: gEp0Status.wData.i = 0;
	mov	(_gEp0Status + 0x0009),#0x00
	mov	((_gEp0Status + 0x0009) + 1),#0x00
	C$USB_Standard_Requests.c$355$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:355: if (GetEpStatus(gEp0Command.wIndex.i) == EP_HALTED)
	mov	dpl,(_gEp0Command + 0x0004)
	mov	dph,((_gEp0Command + 0x0004) + 1)
	lcall	_GetEpStatus
	mov	r2,dpl
	cjne	r2,#0x03,00110$
	C$USB_Standard_Requests.c$356$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:356: gEp0Status.wData.c[0] |= 0x01;
	mov	a,#0x01
	orl	a,(_gEp0Status + 0x0009)
	mov	(_gEp0Status + 0x0009),a
	C$USB_Standard_Requests.c$357$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:357: break;
	C$USB_Standard_Requests.c$360$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:360: default:
	sjmp	00110$
00109$:
	C$USB_Standard_Requests.c$361$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:361: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	C$USB_Standard_Requests.c$363$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:363: }
00110$:
	C$USB_Standard_Requests.c$366$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:366: bEpState = EP_TX;
	mov	_bEpState,#0x01
	C$USB_Standard_Requests.c$369$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:369: gEp0Status.pData = (BYTE *)&gEp0Status.wData.i;
	mov	(_gEp0Status + 0x0006),#(_gEp0Status + 0x0009)
	mov	((_gEp0Status + 0x0006) + 1),#((_gEp0Status + 0x0009) >> 8)
	mov	((_gEp0Status + 0x0006) + 2),#0x40
	C$USB_Standard_Requests.c$370$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:370: gEp0Status.uNumBytes = 2;
	mov	(_gEp0Status + 0x0001),#0x02
	mov	((_gEp0Status + 0x0001) + 1),#0x00
00113$:
	C$USB_Standard_Requests.c$372$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:372: gEp0Status.bEpState = bEpState;
	mov	(_gEp0Status + 0x0005),_bEpState
	C$USB_Standard_Requests.c$373$1$1 ==.
	XG$GetStatusRequest$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetDescriptorRequest'
;------------------------------------------------------------
;wTempInt                  Allocated with name '_GetDescriptorRequest_wTempInt_1_1'
;------------------------------------------------------------
	G$GetDescriptorRequest$0$0 ==.
	C$USB_Standard_Requests.c$384$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:384: void GetDescriptorRequest ()
;	-----------------------------------------
;	 function GetDescriptorRequest
;	-----------------------------------------
_GetDescriptorRequest:
	C$USB_Standard_Requests.c$390$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:390: switch (gEp0Command.wValue.c[0])
	mov	r2,(_gEp0Command + 0x0002)
	cjne	r2,#0x01,00118$
	sjmp	00101$
00118$:
	C$USB_Standard_Requests.c$393$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:393: case DSC_DEVICE:
	cjne	r2,#0x02,00110$
	sjmp	00104$
00101$:
	C$USB_Standard_Requests.c$395$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:395: uNumBytes = STD_DSC_SIZE;
	mov	_uNumBytes,#0x12
	clr	a
	mov	(_uNumBytes + 1),a
	C$USB_Standard_Requests.c$397$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:397: if (uNumBytes > gEp0Command.wLength.i)
	clr	c
	mov	a,(_gEp0Command + 0x0006)
	subb	a,#0x12
	mov	a,((_gEp0Command + 0x0006) + 1)
	subb	a,#0x00
	jnc	00103$
	C$USB_Standard_Requests.c$399$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:399: uNumBytes = gEp0Command.wLength.i;
	mov	_uNumBytes,(_gEp0Command + 0x0006)
	mov	(_uNumBytes + 1),((_gEp0Command + 0x0006) + 1)
00103$:
	C$USB_Standard_Requests.c$402$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:402: gEp0Status.pData = (void*)&gDescriptorMap.bStdDevDsc;
	mov	(_gEp0Status + 0x0006),#_gDescriptorMap
	mov	((_gEp0Status + 0x0006) + 1),#(_gDescriptorMap >> 8)
	mov	((_gEp0Status + 0x0006) + 2),#0x80
	C$USB_Standard_Requests.c$403$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:403: bEpState = EP_TX;
	mov	_bEpState,#0x01
	C$USB_Standard_Requests.c$404$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:404: break;
	C$USB_Standard_Requests.c$407$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:407: case DSC_CONFIG:
	sjmp	00110$
00104$:
	C$USB_Standard_Requests.c$409$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:409: if (gEp0Command.wValue.c[1] >
	C$USB_Standard_Requests.c$410$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:410: gDescriptorMap.bStdDevDsc[std_bNumConfigurations])
	mov	dptr,#(_gDescriptorMap + 0x0011)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	clr	c
	subb	a,(_gEp0Command + 0x0003)
	jnc	00108$
	C$USB_Standard_Requests.c$412$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:412: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	sjmp	00110$
00108$:
	C$USB_Standard_Requests.c$418$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:418: wTempInt.c[1] = gDescriptorMap.bCfg1[cfg_wTotalLength_lsb];
	mov	dptr,#(_gDescriptorMap + 0x0014)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	(_GetDescriptorRequest_wTempInt_1_1 + 0x0001),r2
	C$USB_Standard_Requests.c$419$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:419: wTempInt.c[0] = gDescriptorMap.bCfg1[cfg_wTotalLength_msb];
	mov	dptr,#(_gDescriptorMap + 0x0015)
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	_GetDescriptorRequest_wTempInt_1_1,r2
	C$USB_Standard_Requests.c$420$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:420: uNumBytes = wTempInt.i;
	mov	_uNumBytes,_GetDescriptorRequest_wTempInt_1_1
	mov	(_uNumBytes + 1),(_GetDescriptorRequest_wTempInt_1_1 + 1)
	C$USB_Standard_Requests.c$423$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:423: if (uNumBytes > gEp0Command.wLength.i)
	clr	c
	mov	a,(_gEp0Command + 0x0006)
	subb	a,_uNumBytes
	mov	a,((_gEp0Command + 0x0006) + 1)
	subb	a,(_uNumBytes + 1)
	jnc	00106$
	C$USB_Standard_Requests.c$425$4$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:425: uNumBytes = gEp0Command.wLength.i;
	mov	_uNumBytes,(_gEp0Command + 0x0006)
	mov	(_uNumBytes + 1),((_gEp0Command + 0x0006) + 1)
00106$:
	C$USB_Standard_Requests.c$428$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:428: gEp0Status.pData = &gDescriptorMap.bCfg1;
	mov	(_gEp0Status + 0x0006),#(_gDescriptorMap + 0x0012)
	mov	((_gEp0Status + 0x0006) + 1),#((_gDescriptorMap + 0x0012) >> 8)
	mov	((_gEp0Status + 0x0006) + 2),#0x80
	C$USB_Standard_Requests.c$429$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:429: bEpState = EP_TX;
	mov	_bEpState,#0x01
	C$USB_Standard_Requests.c$432$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:432: }
00110$:
	C$USB_Standard_Requests.c$433$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:433: gEp0Status.uNumBytes = uNumBytes;
	mov	(_gEp0Status + 0x0001),_uNumBytes
	mov	((_gEp0Status + 0x0001) + 1),(_uNumBytes + 1)
	C$USB_Standard_Requests.c$434$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:434: gEp0Status.bEpState = bEpState;
	mov	(_gEp0Status + 0x0005),_bEpState
	C$USB_Standard_Requests.c$435$1$1 ==.
	XG$GetDescriptorRequest$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetConfigurationRequest'
;------------------------------------------------------------
;------------------------------------------------------------
	G$GetConfigurationRequest$0$0 ==.
	C$USB_Standard_Requests.c$446$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:446: void GetConfigurationRequest ()
;	-----------------------------------------
;	 function GetConfigurationRequest
;	-----------------------------------------
_GetConfigurationRequest:
	C$USB_Standard_Requests.c$450$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:450: if ((gEp0Command.wLength.i != 1) || (gEp0Command.wIndex.i) ||
	mov	a,#0x01
	cjne	a,(_gEp0Command + 0x0006),00116$
	clr	a
	cjne	a,((_gEp0Command + 0x0006) + 1),00116$
	sjmp	00117$
00116$:
	sjmp	00104$
00117$:
	mov	a,(_gEp0Command + 0x0004)
	orl	a,((_gEp0Command + 0x0004) + 1)
	jnz	00104$
	C$USB_Standard_Requests.c$451$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:451: (gEp0Command.wValue.i) || (gDeviceStatus.bDevState == DEV_DEFAULT))
	mov	a,(_gEp0Command + 0x0002)
	orl	a,((_gEp0Command + 0x0002) + 1)
	jnz	00104$
	mov	a,(_gDeviceStatus + 0x0001)
	mov	r2,a
	jnz	00105$
00104$:
	C$USB_Standard_Requests.c$453$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:453: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	sjmp	00106$
00105$:
	C$USB_Standard_Requests.c$456$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:456: else if (gDeviceStatus.bDevState == DEV_ADDRESS)
	cjne	r2,#0x01,00102$
	C$USB_Standard_Requests.c$459$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:459: gEp0Status.wData.i = 0;
	mov	(_gEp0Status + 0x0009),#0x00
	mov	((_gEp0Status + 0x0009) + 1),#0x00
	C$USB_Standard_Requests.c$461$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:461: gEp0Status.pData = (BYTE *)&gEp0Status.wData.i;
	mov	(_gEp0Status + 0x0006),#(_gEp0Status + 0x0009)
	mov	((_gEp0Status + 0x0006) + 1),#((_gEp0Status + 0x0009) >> 8)
	mov	((_gEp0Status + 0x0006) + 2),#0x40
	C$USB_Standard_Requests.c$463$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:463: bEpState = EP_TX;
	mov	_bEpState,#0x01
	sjmp	00106$
00102$:
	C$USB_Standard_Requests.c$469$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:469: gEp0Status.pData = (void *)&gDescriptorMap.bCfg1[cfg_bConfigurationValue];
	mov	(_gEp0Status + 0x0006),#(_gDescriptorMap + 0x0017)
	mov	((_gEp0Status + 0x0006) + 1),#((_gDescriptorMap + 0x0017) >> 8)
	mov	((_gEp0Status + 0x0006) + 2),#0x80
	C$USB_Standard_Requests.c$472$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:472: bEpState = EP_TX;
	mov	_bEpState,#0x01
00106$:
	C$USB_Standard_Requests.c$474$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:474: gEp0Status.uNumBytes = 1;
	mov	(_gEp0Status + 0x0001),#0x01
	mov	((_gEp0Status + 0x0001) + 1),#0x00
	C$USB_Standard_Requests.c$475$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:475: gEp0Status.bEpState = bEpState;
	mov	(_gEp0Status + 0x0005),_bEpState
	C$USB_Standard_Requests.c$476$1$1 ==.
	XG$GetConfigurationRequest$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetInterfaceRequest'
;------------------------------------------------------------
;------------------------------------------------------------
	G$GetInterfaceRequest$0$0 ==.
	C$USB_Standard_Requests.c$487$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:487: void GetInterfaceRequest ()
;	-----------------------------------------
;	 function GetInterfaceRequest
;	-----------------------------------------
_GetInterfaceRequest:
	C$USB_Standard_Requests.c$490$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:490: if ((gEp0Command.wValue.i) || (gEp0Command.wLength.i != 1) ||
	mov	a,(_gEp0Command + 0x0002)
	orl	a,((_gEp0Command + 0x0002) + 1)
	jnz	00104$
	mov	a,#0x01
	cjne	a,(_gEp0Command + 0x0006),00115$
	clr	a
	cjne	a,((_gEp0Command + 0x0006) + 1),00115$
	sjmp	00116$
00115$:
	sjmp	00104$
00116$:
	C$USB_Standard_Requests.c$491$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:491: (gDeviceStatus.bDevState != DEV_CONFIG))
	mov	a,#0x02
	cjne	a,(_gDeviceStatus + 0x0001),00117$
	sjmp	00105$
00117$:
00104$:
	C$USB_Standard_Requests.c$493$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:493: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	sjmp	00106$
00105$:
	C$USB_Standard_Requests.c$499$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:499: if (gEp0Command.wIndex.i > gDeviceStatus.bNumInterf - 1)
	mov	r2,(_gDeviceStatus + 0x0005)
	mov	r3,#0x00
	dec	r2
	cjne	r2,#0xff,00118$
	dec	r3
00118$:
	clr	c
	mov	a,r2
	subb	a,(_gEp0Command + 0x0004)
	mov	a,r3
	subb	a,((_gEp0Command + 0x0004) + 1)
	jnc	00102$
	C$USB_Standard_Requests.c$500$2$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:500: bEpState = EP_ERROR;
	mov	_bEpState,#0x02
	sjmp	00106$
00102$:
	C$USB_Standard_Requests.c$504$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:504: gEp0Status.pData = (void *)&gDeviceStatus.IfStatus[0].bCurrentAlt;
	mov	(_gEp0Status + 0x0006),#(_gDeviceStatus + 0x000b)
	mov	((_gEp0Status + 0x0006) + 1),#((_gDeviceStatus + 0x000b) >> 8)
	mov	((_gEp0Status + 0x0006) + 2),#0x40
	C$USB_Standard_Requests.c$507$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:507: gEp0Status.uNumBytes = 1;
	mov	(_gEp0Status + 0x0001),#0x01
	mov	((_gEp0Status + 0x0001) + 1),#0x00
	C$USB_Standard_Requests.c$508$3$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:508: bEpState = EP_TX;
	mov	_bEpState,#0x01
00106$:
	C$USB_Standard_Requests.c$511$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Standard_Requests.c:511: gEp0Status.bEpState = bEpState;
	mov	(_gEp0Status + 0x0005),_bEpState
	C$USB_Standard_Requests.c$512$1$1 ==.
	XG$GetInterfaceRequest$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
