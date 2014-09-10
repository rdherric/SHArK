;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sun Sep 11 14:13:42 2011
;--------------------------------------------------------
	.module potentiostat_HWtestingMain
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ADC_Init
	.globl _main
	.globl _Motor2Step
	.globl _Motor2Dir
	.globl _Motor1Step
	.globl _Motor1Dir
	.globl _NotDriverEN
	.globl _ERRORPIN
	.globl _NRAMHOLD
	.globl _NRAMCS
	.globl _OUTPUTEN
	.globl _NADCCS
	.globl _POS
	.globl _CAL
	.globl _NDACCS
	.globl _LASER
	.globl _OUTTTL
	.globl _INTTL
	.globl _M1STEP
	.globl _M1DIR
	.globl _NDRIVEREN
	.globl _M2STEP
	.globl _M2DIR
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
	.globl _loop_cnt
	.globl _RAM_from_ptr_high
	.globl _RAM_from_ptr_low
	.globl _RAM_to_ptr_high
	.globl _RAM_to_ptr_low
	.globl _Write_to_RAM
	.globl _latest_ADC_LowByte
	.globl _latest_ADC_HighByte
	.globl _ADC_timer_MSB
	.globl _ADC_settled
	.globl _ADC_timer
	.globl _SPI_RAM_Bytes
	.globl _SPI_ADC_Bytes
	.globl _SPI_DAC_Bytes
	.globl _Writing_to_RAM
	.globl _Writing_to_ADC
	.globl _Writing_to_DAC
	.globl _SYSCLK_Init
	.globl _PORT_Init
	.globl _Timer1_Init
	.globl _Timer2_Init
	.globl _SPI_Init
	.globl _DAC_Init
	.globl _RAM_Write
	.globl _SPI_ISR
	.globl _Timer1_ISR
	.globl _Timer2_ISR
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
G$M2DIR$0$0 == 0x0083
_M2DIR	=	0x0083
G$M2STEP$0$0 == 0x0084
_M2STEP	=	0x0084
G$NDRIVEREN$0$0 == 0x0085
_NDRIVEREN	=	0x0085
G$M1DIR$0$0 == 0x0096
_M1DIR	=	0x0096
G$M1STEP$0$0 == 0x0087
_M1STEP	=	0x0087
G$INTTL$0$0 == 0x0090
_INTTL	=	0x0090
G$OUTTTL$0$0 == 0x0091
_OUTTTL	=	0x0091
G$LASER$0$0 == 0x0092
_LASER	=	0x0092
G$NDACCS$0$0 == 0x0094
_NDACCS	=	0x0094
G$CAL$0$0 == 0x0097
_CAL	=	0x0097
G$POS$0$0 == 0x00a0
_POS	=	0x00a0
G$NADCCS$0$0 == 0x00a1
_NADCCS	=	0x00a1
G$OUTPUTEN$0$0 == 0x00a3
_OUTPUTEN	=	0x00a3
G$NRAMCS$0$0 == 0x00a6
_NRAMCS	=	0x00a6
G$NRAMHOLD$0$0 == 0x00a7
_NRAMHOLD	=	0x00a7
G$ERRORPIN$0$0 == 0x00a2
_ERRORPIN	=	0x00a2
G$NotDriverEN$0$0 == 0x0085
_NotDriverEN	=	0x0085
G$Motor1Dir$0$0 == 0x0086
_Motor1Dir	=	0x0086
G$Motor1Step$0$0 == 0x0087
_Motor1Step	=	0x0087
G$Motor2Dir$0$0 == 0x0083
_Motor2Dir	=	0x0083
G$Motor2Step$0$0 == 0x0084
_Motor2Step	=	0x0084
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
G$Writing_to_RAM$0$0==.
_Writing_to_RAM::
	.ds 2
G$SPI_DAC_Bytes$0$0==.
_SPI_DAC_Bytes::
	.ds 2
G$SPI_ADC_Bytes$0$0==.
_SPI_ADC_Bytes::
	.ds 2
G$SPI_RAM_Bytes$0$0==.
_SPI_RAM_Bytes::
	.ds 2
G$ADC_timer$0$0==.
_ADC_timer::
	.ds 2
G$ADC_settled$0$0==.
_ADC_settled::
	.ds 2
G$ADC_timer_MSB$0$0==.
_ADC_timer_MSB::
	.ds 2
G$latest_ADC_HighByte$0$0==.
_latest_ADC_HighByte::
	.ds 2
G$latest_ADC_LowByte$0$0==.
_latest_ADC_LowByte::
	.ds 2
G$Write_to_RAM$0$0==.
_Write_to_RAM::
	.ds 2
G$RAM_to_ptr_low$0$0==.
_RAM_to_ptr_low::
	.ds 1
G$RAM_to_ptr_high$0$0==.
_RAM_to_ptr_high::
	.ds 1
G$RAM_from_ptr_low$0$0==.
_RAM_from_ptr_low::
	.ds 1
G$RAM_from_ptr_high$0$0==.
_RAM_from_ptr_high::
	.ds 1
G$loop_cnt$0$0==.
_loop_cnt::
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_Timer1_ISR
	.ds	5
	reti
	.ds	7
	ljmp	_Timer2_ISR
	.ds	5
	ljmp	_SPI_ISR
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
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$86$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:86: int Writing_to_DAC = 0;					// Boolean: still need to write >=1 byte via SPI
	clr	a
	mov	_Writing_to_DAC,a
	mov	(_Writing_to_DAC + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$87$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:87: int Writing_to_ADC = 0;					// Boolean: still need to write >=1 byte via SPI
	clr	a
	mov	_Writing_to_ADC,a
	mov	(_Writing_to_ADC + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$88$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:88: int Writing_to_RAM = 0;					// Boolean: still need to write >=1 byte via SPI
	clr	a
	mov	_Writing_to_RAM,a
	mov	(_Writing_to_RAM + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$89$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:89: int SPI_DAC_Bytes = 0;					// No. of bytes to/from DAC: 0-3
	clr	a
	mov	_SPI_DAC_Bytes,a
	mov	(_SPI_DAC_Bytes + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$90$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:90: int SPI_ADC_Bytes = 0;					// No. of bytes to/from ADC: 0-2
	clr	a
	mov	_SPI_ADC_Bytes,a
	mov	(_SPI_ADC_Bytes + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$91$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:91: int SPI_RAM_Bytes = 0;					// No. of bytes to/from RAM: 0-4
	clr	a
	mov	_SPI_RAM_Bytes,a
	mov	(_SPI_RAM_Bytes + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$92$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:92: int ADC_timer = 0;						// No. of 1 ms timer intervals after ADC turn on
	clr	a
	mov	_ADC_timer,a
	mov	(_ADC_timer + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$93$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:93: int ADC_settled = 0;					// Boolean: ADC ready 12 ms after POR
	clr	a
	mov	_ADC_settled,a
	mov	(_ADC_settled + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$94$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:94: int ADC_timer_MSB = 0;					// Software bit to ADC timer
	clr	a
	mov	_ADC_timer_MSB,a
	mov	(_ADC_timer_MSB + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$97$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:97: int Write_to_RAM = 0;					// Boolean: need to write ADC to RAM
	clr	a
	mov	_Write_to_RAM,a
	mov	(_Write_to_RAM + 1),a
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$104$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:104: int loop_cnt = 0;
	clr	a
	mov	_loop_cnt,a
	mov	(_loop_cnt + 1),a
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
	C$potentiostat_HWtestingMain.c$109$0$0 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:109: void main (void)
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
	C$potentiostat_HWtestingMain.c$111$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:111: PCA0MD &= ~0x40;					// Disable watchdog timer
	anl	_PCA0MD,#0xBF
	C$potentiostat_HWtestingMain.c$113$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:113: ERRORPIN = 0;
	clr	_ERRORPIN
	C$potentiostat_HWtestingMain.c$114$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:114: latest_ADC_LowByte = 0;
	C$potentiostat_HWtestingMain.c$115$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:115: latest_ADC_HighByte = 0;
	clr	a
	mov	_latest_ADC_LowByte,a
	mov	(_latest_ADC_LowByte + 1),a
	mov	_latest_ADC_HighByte,a
	mov	(_latest_ADC_HighByte + 1),a
	C$potentiostat_HWtestingMain.c$117$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:117: SYSCLK_Init ();					// Initialize system clock to 24 MHz
	lcall	_SYSCLK_Init
	C$potentiostat_HWtestingMain.c$120$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:120: Timer1_Init();					// Start the 1 kHz ADC timer
	lcall	_Timer1_Init
	C$potentiostat_HWtestingMain.c$122$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:122: PORT_Init ();					// Initialize crossbar and GPIO
	lcall	_PORT_Init
	C$potentiostat_HWtestingMain.c$126$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:126: EA = 1;							// Enable global interrupts
	setb	_EA
	C$potentiostat_HWtestingMain.c$128$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:128: SPI_Init();						// Set up SPI peripheral
	lcall	_SPI_Init
	C$potentiostat_HWtestingMain.c$129$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:129: DAC_Init();						// Call just after SPI_Init for proper function
	lcall	_DAC_Init
	C$potentiostat_HWtestingMain.c$131$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:131: OUTPUTEN = 1;					// emable output, close relay K601
	setb	_OUTPUTEN
	C$potentiostat_HWtestingMain.c$132$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:132: CAL = 0;
	clr	_CAL
	C$potentiostat_HWtestingMain.c$151$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:151: POS = 1;
	setb	_POS
	C$potentiostat_HWtestingMain.c$152$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:152: NDACCS = 0;						// Select the DAC for SPI communication
	clr	_NDACCS
	C$potentiostat_HWtestingMain.c$153$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:153: Writing_to_DAC = 1;
	mov	_Writing_to_DAC,#0x01
	clr	a
	mov	(_Writing_to_DAC + 1),a
	C$potentiostat_HWtestingMain.c$154$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:154: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$potentiostat_HWtestingMain.c$155$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:155: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00101$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00135$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00135$
	sjmp	00136$
00135$:
	sjmp	00101$
00136$:
	C$potentiostat_HWtestingMain.c$158$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:158: SPI0DAT = 0xFE;					// Upper part of byte
	mov	_SPI0DAT,#0xFE
	C$potentiostat_HWtestingMain.c$159$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:159: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00104$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00137$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00137$
	sjmp	00138$
00137$:
	sjmp	00104$
00138$:
	C$potentiostat_HWtestingMain.c$162$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:162: SPI0DAT = 0xB8;					// Lower part of byte
	mov	_SPI0DAT,#0xB8
	C$potentiostat_HWtestingMain.c$163$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:163: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
00107$:
	mov	a,#0x03
	cjne	a,_SPI_DAC_Bytes,00139$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00139$
	sjmp	00140$
00139$:
	sjmp	00107$
00140$:
	C$potentiostat_HWtestingMain.c$164$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:164: SPI_DAC_Bytes = 0;				// Reset byte TX counter
	clr	a
	mov	_SPI_DAC_Bytes,a
	mov	(_SPI_DAC_Bytes + 1),a
	C$potentiostat_HWtestingMain.c$165$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:165: NDACCS = 1;						// Deselect the DAC for SPI communication
	setb	_NDACCS
	C$potentiostat_HWtestingMain.c$166$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:166: Writing_to_DAC = 0;
	clr	a
	mov	_Writing_to_DAC,a
	mov	(_Writing_to_DAC + 1),a
	C$potentiostat_HWtestingMain.c$173$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:173: NADCCS = 0;						// Select the ADC for SPI communication
	clr	_NADCCS
	C$potentiostat_HWtestingMain.c$174$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:174: Writing_to_ADC = 1;
	mov	_Writing_to_ADC,#0x01
	clr	a
	mov	(_Writing_to_ADC + 1),a
	C$potentiostat_HWtestingMain.c$175$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:175: SPI0DAT = 0xA0;					// 0xA0 = 1010 0000
	mov	_SPI0DAT,#0xA0
	C$potentiostat_HWtestingMain.c$176$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:176: while(SPI_ADC_Bytes != 1) {}	// wait for SPI to finish sending byte
00110$:
	mov	a,#0x01
	cjne	a,_SPI_ADC_Bytes,00141$
	clr	a
	cjne	a,(_SPI_ADC_Bytes + 1),00141$
	sjmp	00142$
00141$:
	sjmp	00110$
00142$:
	C$potentiostat_HWtestingMain.c$177$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:177: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$potentiostat_HWtestingMain.c$178$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:178: while(SPI_ADC_Bytes != 2) {}	// wait for SPI to finish sending byte
00113$:
	mov	a,#0x02
	cjne	a,_SPI_ADC_Bytes,00143$
	clr	a
	cjne	a,(_SPI_ADC_Bytes + 1),00143$
	sjmp	00144$
00143$:
	sjmp	00113$
00144$:
	C$potentiostat_HWtestingMain.c$179$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:179: SPI_ADC_Bytes = 0;
	clr	a
	mov	_SPI_ADC_Bytes,a
	mov	(_SPI_ADC_Bytes + 1),a
	C$potentiostat_HWtestingMain.c$180$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:180: NADCCS = 1;						// Deselect the ADC for SPI communication
	setb	_NADCCS
	C$potentiostat_HWtestingMain.c$181$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:181: Writing_to_ADC = 0;
	clr	a
	mov	_Writing_to_ADC,a
	mov	(_Writing_to_ADC + 1),a
	C$potentiostat_HWtestingMain.c$183$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:183: while (1)						// infinte while loop
00119$:
	C$potentiostat_HWtestingMain.c$185$2$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:185: if (Write_to_RAM)
	mov	a,_Write_to_RAM
	orl	a,(_Write_to_RAM + 1)
	jz	00119$
	C$potentiostat_HWtestingMain.c$187$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:187: RAM_Write();
	lcall	_RAM_Write
	C$potentiostat_HWtestingMain.c$189$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:189: EIE1 |= 0x02;					// 0x02 = 0000 0010
	orl	_EIE1,#0x02
	C$potentiostat_HWtestingMain.c$193$1$1 ==.
	XG$main$0$0 ==.
	sjmp	00119$
;------------------------------------------------------------
;Allocation info for local variables in function 'SYSCLK_Init'
;------------------------------------------------------------
;delay                     Allocated to registers r2 r3 
;------------------------------------------------------------
	G$SYSCLK_Init$0$0 ==.
	C$potentiostat_HWtestingMain.c$214$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:214: void SYSCLK_Init (void)
;	-----------------------------------------
;	 function SYSCLK_Init
;	-----------------------------------------
_SYSCLK_Init:
	C$potentiostat_HWtestingMain.c$220$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:220: OSCICN = 0x83;
	mov	_OSCICN,#0x83
	C$potentiostat_HWtestingMain.c$223$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:223: CLKMUL = 0x00;		// Reset clock multiplier
	mov	_CLKMUL,#0x00
	C$potentiostat_HWtestingMain.c$224$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:224: CLKMUL |= 0x80;		// Enable multiplier
	orl	_CLKMUL,#0x80
	C$potentiostat_HWtestingMain.c$226$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:226: while (delay < 72) { delay += 1; }
	mov	r2,#0x00
	mov	r3,#0x00
00101$:
	clr	c
	mov	a,r2
	subb	a,#0x48
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00103$:
	C$potentiostat_HWtestingMain.c$227$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:227: CLKMUL |= 0xC0;		// Initialize multiplier
	orl	_CLKMUL,#0xC0
	C$potentiostat_HWtestingMain.c$229$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:229: while ((CLKMUL & MULRDY) != MULRDY) { NOP(); }
00104$:
	mov	a,#0x20
	anl	a,_CLKMUL
	mov	r2,a
	cjne	r2,#0x20,00115$
	sjmp	00106$
00115$:
	 NOP 
	sjmp	00104$
00106$:
	C$potentiostat_HWtestingMain.c$230$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:230: CLKSEL = 0x02;		// USB clock = 4*(Int Osc)
	mov	_CLKSEL,#0x02
	C$potentiostat_HWtestingMain.c$233$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:233: RSTSRC = 0x04;		// Enable missing clock detector, required for USB
	mov	_RSTSRC,#0x04
	C$potentiostat_HWtestingMain.c$234$1$1 ==.
	XG$SYSCLK_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PORT_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$PORT_Init$0$0 ==.
	C$potentiostat_HWtestingMain.c$272$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:272: void PORT_Init (void)
;	-----------------------------------------
;	 function PORT_Init
;	-----------------------------------------
_PORT_Init:
	C$potentiostat_HWtestingMain.c$275$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:275: P0MDIN = 0xFF;
	mov	_P0MDIN,#0xFF
	C$potentiostat_HWtestingMain.c$276$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:276: P1MDIN = 0xFF;
	mov	_P1MDIN,#0xFF
	C$potentiostat_HWtestingMain.c$277$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:277: P2MDIN = 0xFF;
	mov	_P2MDIN,#0xFF
	C$potentiostat_HWtestingMain.c$278$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:278: P3MDIN = 0xFF;
	mov	_P3MDIN,#0xFF
	C$potentiostat_HWtestingMain.c$281$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:281: P0MDOUT = 0xFF;
	mov	_P0MDOUT,#0xFF
	C$potentiostat_HWtestingMain.c$282$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:282: P1MDOUT = 0xFF;
	mov	_P1MDOUT,#0xFF
	C$potentiostat_HWtestingMain.c$283$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:283: P2MDOUT = 0xFF;
	mov	_P2MDOUT,#0xFF
	C$potentiostat_HWtestingMain.c$284$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:284: P3MDOUT = 0xFF;
	mov	_P3MDOUT,#0xFF
	C$potentiostat_HWtestingMain.c$287$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:287: P0SKIP = 0x00;
	mov	_P0SKIP,#0x00
	C$potentiostat_HWtestingMain.c$288$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:288: P1SKIP = 0x00;
	mov	_P1SKIP,#0x00
	C$potentiostat_HWtestingMain.c$289$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:289: P2SKIP = 0x00;
	mov	_P2SKIP,#0x00
	C$potentiostat_HWtestingMain.c$295$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:295: XBR0 = 0x02;				// Only SPI selected, automatically assigned:
	mov	_XBR0,#0x02
	C$potentiostat_HWtestingMain.c$299$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:299: XBR1 = 0x40;				// Enable crossbar and weak pull-ups
	mov	_XBR1,#0x40
	C$potentiostat_HWtestingMain.c$314$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:314: NADCCS = 1;
	setb	_NADCCS
	C$potentiostat_HWtestingMain.c$315$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:315: NDACCS = 1;
	setb	_NDACCS
	C$potentiostat_HWtestingMain.c$316$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:316: NRAMCS = 1;
	setb	_NRAMCS
	C$potentiostat_HWtestingMain.c$317$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:317: NRAMHOLD = 1;
	setb	_NRAMHOLD
	C$potentiostat_HWtestingMain.c$318$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:318: NotDriverEN = 1;			// Enable/disable (0/1) stepper motor driver
	setb	_NotDriverEN
	C$potentiostat_HWtestingMain.c$320$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:320: Motor1Dir = 0;
	clr	_Motor1Dir
	C$potentiostat_HWtestingMain.c$321$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:321: Motor2Dir = 0;
	clr	_Motor2Dir
	C$potentiostat_HWtestingMain.c$322$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:322: Motor1Step = 0;
	clr	_Motor1Step
	C$potentiostat_HWtestingMain.c$323$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:323: Motor2Step = 0;
	clr	_Motor2Step
	C$potentiostat_HWtestingMain.c$324$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:324: LASER = 0;					// Disable laswer power
	clr	_LASER
	C$potentiostat_HWtestingMain.c$325$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:325: OUTPUTEN = 0;				// Disable the output until we're ready
	clr	_OUTPUTEN
	C$potentiostat_HWtestingMain.c$326$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:326: POS = 1;					// Positive voltage and current
	setb	_POS
	C$potentiostat_HWtestingMain.c$327$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:327: CAL = 0;					// Not in calibration state
	clr	_CAL
	C$potentiostat_HWtestingMain.c$329$1$1 ==.
	XG$PORT_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer1_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Timer1_Init$0$0 ==.
	C$potentiostat_HWtestingMain.c$342$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:342: void Timer1_Init (void)
;	-----------------------------------------
;	 function Timer1_Init
;	-----------------------------------------
_Timer1_Init:
	C$potentiostat_HWtestingMain.c$345$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:345: TCON &= 0xBF;					// 0xBF = 1011 1111, Stop Timer1
	anl	_TCON,#0xBF
	C$potentiostat_HWtestingMain.c$347$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:347: CKCON &= 0xF6;					// Set Timer 1 to use the prescaled
	anl	_CKCON,#0xF6
	C$potentiostat_HWtestingMain.c$348$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:348: CKCON |= 0x02;					// clock and set prescale to 1/48.
	orl	_CKCON,#0x02
	C$potentiostat_HWtestingMain.c$357$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:357: TL1 = 0x06;						// load both so first interrupt is
	mov	_TL1,#0x06
	C$potentiostat_HWtestingMain.c$358$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:358: TH1 = 0x06;						// after 0.5 ms.
	mov	_TH1,#0x06
	C$potentiostat_HWtestingMain.c$361$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:361: TMOD &= 0x2F;					// 0x2F = 0010 1111
	anl	_TMOD,#0x2F
	C$potentiostat_HWtestingMain.c$362$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:362: TMOD |= 0x20;					// 0x20 = 0010 0000
	orl	_TMOD,#0x20
	C$potentiostat_HWtestingMain.c$365$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:365: TCON &= 0x7F;					// 0x7F = 0111 1111, Clear interrupt flag
	anl	_TCON,#0x7F
	C$potentiostat_HWtestingMain.c$366$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:366: TCON |= 0x40;					// 0x40 = 0100 0000, Start Timer1
	orl	_TCON,#0x40
	C$potentiostat_HWtestingMain.c$371$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:371: PT1 = 1;
	setb	_PT1
	C$potentiostat_HWtestingMain.c$376$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:376: CPT1CN = 0x80;	// 0x80 = 1000 0000
	mov	_CPT1CN,#0x80
	C$potentiostat_HWtestingMain.c$381$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:381: EIE1 |= 0x40;	// 0x40 = 0100 0000
	orl	_EIE1,#0x40
	C$potentiostat_HWtestingMain.c$385$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:385: ET1 = 1;
	setb	_ET1
	C$potentiostat_HWtestingMain.c$386$1$1 ==.
	XG$Timer1_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer2_Init'
;------------------------------------------------------------
;counts                    Allocated to registers 
;------------------------------------------------------------
	G$Timer2_Init$0$0 ==.
	C$potentiostat_HWtestingMain.c$399$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:399: void Timer2_Init (int counts)
;	-----------------------------------------
;	 function Timer2_Init
;	-----------------------------------------
_Timer2_Init:
	C$potentiostat_HWtestingMain.c$401$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:401: TMR2CN = 0x00;						// Stop Timer2; Clear TF2;
	mov	_TMR2CN,#0x00
	C$potentiostat_HWtestingMain.c$403$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:403: CKCON &= ~0x30;						// Timer2 clocked based on T2XCLK;
	anl	_CKCON,#0xCF
	C$potentiostat_HWtestingMain.c$406$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:406: TMR2RL = 0x0000;						// Init reload values
	clr	a
	mov	_TMR2RL,a
	mov	(_TMR2RL >> 8),a
	C$potentiostat_HWtestingMain.c$407$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:407: TMR2 = 0xffff;						// Set to reload immediately
	mov	_TMR2,#0xFF
	mov	(_TMR2 >> 8),#0xFF
	C$potentiostat_HWtestingMain.c$408$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:408: ET2 = 1;								// Enable Timer2 interrupts
	setb	_ET2
	C$potentiostat_HWtestingMain.c$409$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:409: TR2 = 1;								// Start Timer2
	setb	_TR2
	C$potentiostat_HWtestingMain.c$410$1$1 ==.
	XG$Timer2_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$SPI_Init$0$0 ==.
	C$potentiostat_HWtestingMain.c$423$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:423: void SPI_Init (void)
;	-----------------------------------------
;	 function SPI_Init
;	-----------------------------------------
_SPI_Init:
	C$potentiostat_HWtestingMain.c$426$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:426: NDACCS = 1;
	setb	_NDACCS
	C$potentiostat_HWtestingMain.c$427$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:427: NADCCS = 1;
	setb	_NADCCS
	C$potentiostat_HWtestingMain.c$428$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:428: NRAMCS = 1;
	setb	_NRAMCS
	C$potentiostat_HWtestingMain.c$439$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:439: SPI0CFG = 0x50;				// 0x60 = 0101 0000
	mov	_SPI0CFG,#0x50
	C$potentiostat_HWtestingMain.c$450$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:450: SPI0CN = 0x01;				// 0x01 = 0000 0001
	mov	_SPI0CN,#0x01
	C$potentiostat_HWtestingMain.c$462$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:462: SPI0CKR = 0x05;				// 0x00 = 0000 0101
	mov	_SPI0CKR,#0x05
	C$potentiostat_HWtestingMain.c$465$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:465: ESPI0 = 1;
	setb	_ESPI0
	C$potentiostat_HWtestingMain.c$466$1$1 ==.
	XG$SPI_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DAC_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$DAC_Init$0$0 ==.
	C$potentiostat_HWtestingMain.c$479$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:479: void DAC_Init (void)
;	-----------------------------------------
;	 function DAC_Init
;	-----------------------------------------
_DAC_Init:
	C$potentiostat_HWtestingMain.c$481$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:481: Writing_to_DAC = 1;
	mov	_Writing_to_DAC,#0x01
	clr	a
	mov	(_Writing_to_DAC + 1),a
	C$potentiostat_HWtestingMain.c$494$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:494: NDACCS = 0;						// Select the DAC for SPI communication
	clr	_NDACCS
	C$potentiostat_HWtestingMain.c$495$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:495: SPI0DAT = 0x08;					// 0x08 = 0000 1000
	mov	_SPI0DAT,#0x08
	C$potentiostat_HWtestingMain.c$496$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:496: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00101$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00148$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00148$
	sjmp	00149$
00148$:
	sjmp	00101$
00149$:
	C$potentiostat_HWtestingMain.c$497$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:497: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$potentiostat_HWtestingMain.c$498$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:498: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00104$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00150$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00150$
	sjmp	00151$
00150$:
	sjmp	00104$
00151$:
	C$potentiostat_HWtestingMain.c$499$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:499: SPI0DAT = 0x04;					// 0x04 = 0000 0100
	mov	_SPI0DAT,#0x04
	C$potentiostat_HWtestingMain.c$500$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:500: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
00107$:
	mov	a,#0x03
	cjne	a,_SPI_DAC_Bytes,00152$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00152$
	sjmp	00153$
00152$:
	sjmp	00107$
00153$:
	C$potentiostat_HWtestingMain.c$501$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:501: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
	mov	a,_SPI_DAC_Bytes
	add	a,#0xfd
	mov	_SPI_DAC_Bytes,a
	mov	a,(_SPI_DAC_Bytes + 1)
	addc	a,#0xff
	mov	(_SPI_DAC_Bytes + 1),a
	C$potentiostat_HWtestingMain.c$502$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:502: NDACCS = 1;						// Deselect the DAC for SPI communication
	setb	_NDACCS
	C$potentiostat_HWtestingMain.c$518$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:518: NDACCS = 0;						// Select the DAC for SPI communication
	clr	_NDACCS
	C$potentiostat_HWtestingMain.c$519$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:519: SPI0DAT = 0x19;					// 0x19 = 0001 1001
	mov	_SPI0DAT,#0x19
	C$potentiostat_HWtestingMain.c$520$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:520: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00110$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00154$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00154$
	sjmp	00155$
00154$:
	sjmp	00110$
00155$:
	C$potentiostat_HWtestingMain.c$521$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:521: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$potentiostat_HWtestingMain.c$522$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:522: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00113$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00156$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00156$
	sjmp	00157$
00156$:
	sjmp	00113$
00157$:
	C$potentiostat_HWtestingMain.c$523$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:523: SPI0DAT = 0x0F;					// 0x0E = 0000 1110
	mov	_SPI0DAT,#0x0F
	C$potentiostat_HWtestingMain.c$524$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:524: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
00116$:
	mov	a,#0x03
	cjne	a,_SPI_DAC_Bytes,00158$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00158$
	sjmp	00159$
00158$:
	sjmp	00116$
00159$:
	C$potentiostat_HWtestingMain.c$525$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:525: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
	mov	a,_SPI_DAC_Bytes
	add	a,#0xfd
	mov	_SPI_DAC_Bytes,a
	mov	a,(_SPI_DAC_Bytes + 1)
	addc	a,#0xff
	mov	(_SPI_DAC_Bytes + 1),a
	C$potentiostat_HWtestingMain.c$526$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:526: NDACCS = 1;						// Deselect the DAC for SPI communication
	setb	_NDACCS
	C$potentiostat_HWtestingMain.c$545$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:545: NDACCS = 0;						// Select the DAC for SPI communication
	clr	_NDACCS
	C$potentiostat_HWtestingMain.c$546$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:546: SPI0DAT = 0x10;					// 0x10 = 0001 0000
	mov	_SPI0DAT,#0x10
	C$potentiostat_HWtestingMain.c$547$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:547: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00119$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00160$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00160$
	sjmp	00161$
00160$:
	sjmp	00119$
00161$:
	C$potentiostat_HWtestingMain.c$548$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:548: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$potentiostat_HWtestingMain.c$549$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:549: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00122$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00162$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00162$
	sjmp	00163$
00162$:
	sjmp	00122$
00163$:
	C$potentiostat_HWtestingMain.c$550$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:550: SPI0DAT = 0x01;					// 0x0F = 0000 0001
	mov	_SPI0DAT,#0x01
	C$potentiostat_HWtestingMain.c$551$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:551: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
00125$:
	mov	a,#0x03
	cjne	a,_SPI_DAC_Bytes,00164$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00164$
	sjmp	00165$
00164$:
	sjmp	00125$
00165$:
	C$potentiostat_HWtestingMain.c$552$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:552: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
	mov	a,_SPI_DAC_Bytes
	add	a,#0xfd
	mov	_SPI_DAC_Bytes,a
	mov	a,(_SPI_DAC_Bytes + 1)
	addc	a,#0xff
	mov	(_SPI_DAC_Bytes + 1),a
	C$potentiostat_HWtestingMain.c$553$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:553: NDACCS = 1;						// Deselect the DAC for SPI communication
	setb	_NDACCS
	C$potentiostat_HWtestingMain.c$555$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:555: Writing_to_DAC = 0;
	clr	a
	mov	_Writing_to_DAC,a
	mov	(_Writing_to_DAC + 1),a
	C$potentiostat_HWtestingMain.c$557$1$1 ==.
	XG$DAC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ADC_Init'
;------------------------------------------------------------
;------------------------------------------------------------
	G$ADC_Init$0$0 ==.
	C$potentiostat_HWtestingMain.c$569$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:569: void ADC_Init (void)
;	-----------------------------------------
;	 function ADC_Init
;	-----------------------------------------
_ADC_Init:
	C$potentiostat_HWtestingMain.c$571$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:571: Writing_to_ADC = 1;
	mov	_Writing_to_ADC,#0x01
	clr	a
	mov	(_Writing_to_ADC + 1),a
	C$potentiostat_HWtestingMain.c$586$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:586: SPI0CFG = 0x40;				// 0x60 = 0100 0000
	mov	_SPI0CFG,#0x40
	C$potentiostat_HWtestingMain.c$598$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:598: SPI0CKR = 0x05;				// 0x00 = 0000 0101
	mov	_SPI0CKR,#0x05
	C$potentiostat_HWtestingMain.c$611$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:611: NADCCS = 0;						// Select the DAC for SPI communication
	clr	_NADCCS
	C$potentiostat_HWtestingMain.c$612$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:612: SPI0DAT = 0xA0;					// 0xA0 = 1010 0000
	mov	_SPI0DAT,#0xA0
	C$potentiostat_HWtestingMain.c$613$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:613: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
00101$:
	mov	a,#0x01
	cjne	a,_SPI_DAC_Bytes,00113$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00113$
	sjmp	00114$
00113$:
	sjmp	00101$
00114$:
	C$potentiostat_HWtestingMain.c$614$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:614: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$potentiostat_HWtestingMain.c$615$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:615: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
00104$:
	mov	a,#0x02
	cjne	a,_SPI_DAC_Bytes,00115$
	clr	a
	cjne	a,(_SPI_DAC_Bytes + 1),00115$
	sjmp	00116$
00115$:
	sjmp	00104$
00116$:
	C$potentiostat_HWtestingMain.c$616$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:616: NADCCS = 1;						// Deselect the DAC for SPI communication
	setb	_NADCCS
	C$potentiostat_HWtestingMain.c$618$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:618: Writing_to_ADC = 0;
	clr	a
	mov	_Writing_to_ADC,a
	mov	(_Writing_to_ADC + 1),a
	C$potentiostat_HWtestingMain.c$619$1$1 ==.
	XG$ADC_Init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'RAM_Write'
;------------------------------------------------------------
;------------------------------------------------------------
	G$RAM_Write$0$0 ==.
	C$potentiostat_HWtestingMain.c$621$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:621: void RAM_Write ()
;	-----------------------------------------
;	 function RAM_Write
;	-----------------------------------------
_RAM_Write:
	C$potentiostat_HWtestingMain.c$625$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:625: SPI0CFG = 0x40;				// 0x60 = 0100 0000
	mov	_SPI0CFG,#0x40
	C$potentiostat_HWtestingMain.c$626$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:626: SPI0CKR = 0x00;				// 0x00 = 0000 0000
	mov	_SPI0CKR,#0x00
	C$potentiostat_HWtestingMain.c$629$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:629: Writing_to_RAM = 1;
	mov	_Writing_to_RAM,#0x01
	clr	a
	mov	(_Writing_to_RAM + 1),a
	C$potentiostat_HWtestingMain.c$639$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:639: NRAMCS = 0;
	clr	_NRAMCS
	C$potentiostat_HWtestingMain.c$640$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:640: SPI_RAM_Bytes = 0;
	clr	a
	mov	_SPI_RAM_Bytes,a
	mov	(_SPI_RAM_Bytes + 1),a
	C$potentiostat_HWtestingMain.c$642$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:642: SPI0DAT = 0x02;					// 0x02 = 0000 0010
	mov	_SPI0DAT,#0x02
	C$potentiostat_HWtestingMain.c$643$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:643: while(SPI_RAM_Bytes != 1) {}	// wait for SPI to finish sending byte
00101$:
	C$potentiostat_HWtestingMain.c$704$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:704: Writing_to_RAM = 0;
	C$potentiostat_HWtestingMain.c$705$1$1 ==.
	XG$RAM_Write$0$0 ==.
	sjmp	00101$
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_ISR'
;------------------------------------------------------------
;RXbyte                    Allocated to registers r2 r3 
;------------------------------------------------------------
	G$SPI_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$718$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:718: INTERRUPT(SPI_ISR, INTERRUPT_SPI0)
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
	C$potentiostat_HWtestingMain.c$728$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:728: if ((SPI0CN & 0x80) == 0x80)		// TX complete, byte ready to read
	mov	a,#0x80
	anl	a,_SPI0CN
	mov	r2,a
	cjne	r2,#0x80,00131$
	sjmp	00132$
00131$:
	ljmp	00114$
00132$:
	C$potentiostat_HWtestingMain.c$730$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:730: SPIF = 0;			// clear interrupt flag
	clr	_SPIF
	C$potentiostat_HWtestingMain.c$731$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:731: RXbyte = SPI0DAT;	// This could be a byte from the DAC, ADC, or RAM.
	mov	r2,_SPI0DAT
	mov	r3,#0x00
	C$potentiostat_HWtestingMain.c$732$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:732: if (Writing_to_ADC > 0)			// ADC
	clr	c
	clr	a
	subb	a,_Writing_to_ADC
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_Writing_to_ADC + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00111$
	C$potentiostat_HWtestingMain.c$734$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:734: SPI_ADC_Bytes++;			// Do not zero in this ISR
	inc	_SPI_ADC_Bytes
	clr	a
	cjne	a,_SPI_ADC_Bytes,00134$
	inc	(_SPI_ADC_Bytes + 1)
00134$:
	C$potentiostat_HWtestingMain.c$735$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:735: if (SPI_ADC_Bytes == 0)
	mov	a,_SPI_ADC_Bytes
	orl	a,(_SPI_ADC_Bytes + 1)
	jnz	00102$
	C$potentiostat_HWtestingMain.c$737$4$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:737: latest_ADC_HighByte = RXbyte;
	mov	_latest_ADC_HighByte,r2
	mov	(_latest_ADC_HighByte + 1),r3
	sjmp	00114$
00102$:
	C$potentiostat_HWtestingMain.c$741$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:741: latest_ADC_LowByte = RXbyte;
	mov	_latest_ADC_LowByte,r2
	mov	(_latest_ADC_LowByte + 1),r3
	C$potentiostat_HWtestingMain.c$746$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:746: Writing_to_ADC = 1;		// Change back to writing to ADC
	mov	_Writing_to_ADC,#0x01
	clr	a
	mov	(_Writing_to_ADC + 1),a
	C$potentiostat_HWtestingMain.c$747$4$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:747: Writing_to_RAM = 0;
	clr	a
	mov	_Writing_to_RAM,a
	mov	(_Writing_to_RAM + 1),a
	sjmp	00114$
00111$:
	C$potentiostat_HWtestingMain.c$750$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:750: else if (Writing_to_DAC > 0)	// DAC
	clr	c
	clr	a
	subb	a,_Writing_to_DAC
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_Writing_to_DAC + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00108$
	C$potentiostat_HWtestingMain.c$752$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:752: SPI_DAC_Bytes++;			// Do not zero in this ISR
	inc	_SPI_DAC_Bytes
	clr	a
	cjne	a,_SPI_DAC_Bytes,00114$
	inc	(_SPI_DAC_Bytes + 1)
	sjmp	00114$
00108$:
	C$potentiostat_HWtestingMain.c$754$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:754: else if (Writing_to_RAM > 0)	// RAM
	clr	c
	clr	a
	subb	a,_Writing_to_RAM
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_Writing_to_RAM + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	C$potentiostat_HWtestingMain.c$756$3$7 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:756: SPI_RAM_Bytes++;			// Do not zero in this ISR
	inc	_SPI_RAM_Bytes
	clr	a
	cjne	a,_SPI_RAM_Bytes,00114$
	inc	(_SPI_RAM_Bytes + 1)
	sjmp	00114$
00105$:
	C$potentiostat_HWtestingMain.c$760$3$8 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:760: ERRORPIN = 1;
	setb	_ERRORPIN
00114$:
	C$potentiostat_HWtestingMain.c$763$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:763: if ((SPI0CN & 0x40) == 0x40)	// write collision
	mov	a,#0x40
	anl	a,_SPI0CN
	mov	r2,a
	cjne	r2,#0x40,00116$
	C$potentiostat_HWtestingMain.c$765$2$9 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:765: WCOL = 0;		// clear interrupt flag
	clr	_WCOL
00116$:
	C$potentiostat_HWtestingMain.c$767$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:767: if ((SPI0CN & 0x20) == 0x20)	// mode fault
	mov	a,#0x20
	anl	a,_SPI0CN
	mov	r2,a
	cjne	r2,#0x20,00118$
	C$potentiostat_HWtestingMain.c$769$2$10 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:769: MODF = 0;		// clear interrupt flag
	clr	_MODF
00118$:
	C$potentiostat_HWtestingMain.c$771$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:771: if ((SPI0CN & 0x10) == 0x10)	// RX overrun
	mov	a,#0x10
	anl	a,_SPI0CN
	mov	r2,a
	cjne	r2,#0x10,00121$
	C$potentiostat_HWtestingMain.c$773$2$11 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:773: RXOVRN = 0;		// clear interrupt flag
	clr	_RXOVRN
00121$:
	pop	psw
	pop	ar3
	pop	ar2
	pop	b
	pop	acc
	C$potentiostat_HWtestingMain.c$775$2$1 ==.
	XG$SPI_ISR$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer1_ISR'
;------------------------------------------------------------
;save_Writing_to_DAC       Allocated to registers r2 r3 
;save_Writing_to_RAM       Allocated to registers r4 r5 
;save_NDACCS               Allocated to registers r6 r7 
;save_NRAMCS               Allocated to registers r0 r1 
;------------------------------------------------------------
	G$Timer1_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$776$2$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:776: INTERRUPT(Timer1_ISR, INTERRUPT_TIMER1)
;	-----------------------------------------
;	 function Timer1_ISR
;	-----------------------------------------
_Timer1_ISR:
	push	acc
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push	psw
	mov	psw,#0x00
	C$potentiostat_HWtestingMain.c$787$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:787: TF1 = 0;						// Clear Timer2 interrupt flag
	clr	_TF1
	C$potentiostat_HWtestingMain.c$789$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:789: if (ADC_settled == 0)			// if not settled, still waiting 12 ms
	mov	a,_ADC_settled
	orl	a,(_ADC_settled + 1)
	jnz	00113$
	C$potentiostat_HWtestingMain.c$791$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:791: ADC_timer++;
	inc	_ADC_timer
	clr	a
	cjne	a,_ADC_timer,00125$
	inc	(_ADC_timer + 1)
00125$:
	C$potentiostat_HWtestingMain.c$792$2$2 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:792: if (ADC_timer >= 12)
	clr	c
	mov	a,_ADC_timer
	subb	a,#0x0C
	mov	a,(_ADC_timer + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00126$
	ljmp	00115$
00126$:
	C$potentiostat_HWtestingMain.c$794$3$3 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:794: ADC_settled = 1;
	mov	_ADC_settled,#0x01
	clr	a
	mov	(_ADC_settled + 1),a
	ljmp	00115$
00113$:
	C$potentiostat_HWtestingMain.c$799$2$4 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:799: if (ADC_timer_MSB < 1)		// Timer needs to execute another time,
	clr	c
	mov	a,_ADC_timer_MSB
	subb	a,#0x01
	mov	a,(_ADC_timer_MSB + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00110$
	C$potentiostat_HWtestingMain.c$801$3$5 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:801: ADC_timer_MSB++;
	inc	_ADC_timer_MSB
	clr	a
	cjne	a,_ADC_timer_MSB,00128$
	inc	(_ADC_timer_MSB + 1)
00128$:
	sjmp	00115$
00110$:
	C$potentiostat_HWtestingMain.c$811$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:811: ESPI0 = 0;
	clr	_ESPI0
	C$potentiostat_HWtestingMain.c$814$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:814: save_Writing_to_DAC = Writing_to_DAC;
	mov	r2,_Writing_to_DAC
	mov	r3,(_Writing_to_DAC + 1)
	C$potentiostat_HWtestingMain.c$815$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:815: save_Writing_to_RAM = Writing_to_RAM;
	mov	r4,_Writing_to_RAM
	mov	r5,(_Writing_to_RAM + 1)
	C$potentiostat_HWtestingMain.c$816$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:816: save_NDACCS = NDACCS;
	mov	c,_NDACCS
	clr	a
	rlc	a
	mov	r6,a
	mov	r7,#0x00
	C$potentiostat_HWtestingMain.c$817$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:817: save_NRAMCS = NRAMCS;
	mov	c,_NRAMCS
	clr	a
	rlc	a
	mov	r0,a
	C$potentiostat_HWtestingMain.c$820$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:820: Writing_to_DAC = 0;
	C$potentiostat_HWtestingMain.c$821$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:821: Writing_to_RAM = 0;
	clr	a
	mov	r1,a
	mov	_Writing_to_DAC,a
	mov	(_Writing_to_DAC + 1),a
	mov	_Writing_to_RAM,a
	mov	(_Writing_to_RAM + 1),a
	C$potentiostat_HWtestingMain.c$822$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:822: NDACCS = 1;
	setb	_NDACCS
	C$potentiostat_HWtestingMain.c$823$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:823: NRAMCS = 1;
	setb	_NRAMCS
	C$potentiostat_HWtestingMain.c$826$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:826: NADCCS = 0;						// Select ADC for SPI comm
	clr	_NADCCS
	C$potentiostat_HWtestingMain.c$827$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:827: Writing_to_ADC = 1;
	mov	_Writing_to_ADC,#0x01
	clr	a
	mov	(_Writing_to_ADC + 1),a
	C$potentiostat_HWtestingMain.c$829$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:829: SPI0CFG = 0x40;					// 0x60 = 0100 0000
	mov	_SPI0CFG,#0x40
	C$potentiostat_HWtestingMain.c$830$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:830: SPI0CKR = 0x05;					// 0x00 = 0000 0101
	mov	_SPI0CKR,#0x05
	C$potentiostat_HWtestingMain.c$832$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:832: SPI0DAT = 0x0;					// Write all zeros to get data
	mov	_SPI0DAT,#0x00
	C$potentiostat_HWtestingMain.c$833$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:833: while(!SPIF) {}					// Poll for SPI to finish sending byte
00103$:
	jnb	_SPIF,00103$
	C$potentiostat_HWtestingMain.c$834$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:834: latest_ADC_LowByte = SPI0DAT;	// Read SPI data register
	mov	_latest_ADC_LowByte,_SPI0DAT
	mov	(_latest_ADC_LowByte + 1),#0x00
	C$potentiostat_HWtestingMain.c$836$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:836: SPIF = 0;
	clr	_SPIF
	C$potentiostat_HWtestingMain.c$837$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:837: SPI0DAT = 0x00;					// 0x00 = 0000 0000
	mov	_SPI0DAT,#0x00
	C$potentiostat_HWtestingMain.c$838$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:838: while(!SPIF) {}					// Poll for SPI to finish sending byte
00106$:
	jnb	_SPIF,00106$
	C$potentiostat_HWtestingMain.c$839$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:839: latest_ADC_HighByte = SPI0DAT;	// Read SPI data register
	mov	_latest_ADC_HighByte,_SPI0DAT
	mov	(_latest_ADC_HighByte + 1),#0x00
	C$potentiostat_HWtestingMain.c$841$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:841: SPIF = 0;
	clr	_SPIF
	C$potentiostat_HWtestingMain.c$842$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:842: NADCCS = 1;						// Deselect ADC for SPI comm
	setb	_NADCCS
	C$potentiostat_HWtestingMain.c$843$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:843: Writing_to_ADC = 0;
	clr	a
	mov	_Writing_to_ADC,a
	mov	(_Writing_to_ADC + 1),a
	C$potentiostat_HWtestingMain.c$846$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:846: Writing_to_DAC = save_Writing_to_DAC;
	mov	_Writing_to_DAC,r2
	mov	(_Writing_to_DAC + 1),r3
	C$potentiostat_HWtestingMain.c$847$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:847: Writing_to_RAM = save_Writing_to_RAM;
	mov	_Writing_to_RAM,r4
	mov	(_Writing_to_RAM + 1),r5
	C$potentiostat_HWtestingMain.c$848$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:848: NDACCS = save_NDACCS;
	mov	a,r6
	orl	a,r7
	add	a,#0xff
	mov	_NDACCS,c
	C$potentiostat_HWtestingMain.c$849$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:849: NRAMCS = save_NRAMCS;
	mov	a,r0
	orl	a,r1
	add	a,#0xff
	mov	_NRAMCS,c
	C$potentiostat_HWtestingMain.c$852$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:852: ESPI0 = 1;
	setb	_ESPI0
	C$potentiostat_HWtestingMain.c$856$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:856: Write_to_RAM = 1;
	mov	_Write_to_RAM,#0x01
	clr	a
	mov	(_Write_to_RAM + 1),a
	C$potentiostat_HWtestingMain.c$857$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:857: EIE1 &= 0xFD;					// 0xFD = 1111 1101
	anl	_EIE1,#0xFD
	C$potentiostat_HWtestingMain.c$860$3$6 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:860: ADC_timer_MSB = 0;				// Reset SW timer most significant bit
	clr	a
	mov	_ADC_timer_MSB,a
	mov	(_ADC_timer_MSB + 1),a
00115$:
	pop	psw
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	pop	acc
	C$potentiostat_HWtestingMain.c$872$1$1 ==.
	XG$Timer1_ISR$0$0 ==.
	reti
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer2_ISR'
;------------------------------------------------------------
;------------------------------------------------------------
	G$Timer2_ISR$0$0 ==.
	C$potentiostat_HWtestingMain.c$873$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:873: INTERRUPT(Timer2_ISR, INTERRUPT_TIMER2)
;	-----------------------------------------
;	 function Timer2_ISR
;	-----------------------------------------
_Timer2_ISR:
	C$potentiostat_HWtestingMain.c$875$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:875: TF2H = 0;                           // Clear Timer2 interrupt flag
	clr	_TF2H
	C$potentiostat_HWtestingMain.c$877$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:877: Motor1Step = !Motor1Step;			// Toggle pin so motor 1 steps ever other
	cpl	_Motor1Step
	C$potentiostat_HWtestingMain.c$879$1$1 ==.
;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:879: Motor2Step = !Motor2Step;			// Toggle pin so motor 1 steps ever other
	cpl	_Motor2Step
	C$potentiostat_HWtestingMain.c$887$1$1 ==.
	XG$Timer2_ISR$0$0 ==.
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
