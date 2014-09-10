                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sun Sep 12 11:13:35 2010
                              5 ;--------------------------------------------------------
                              6 	.module Interrupts
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _USB_ISR
                             13 	.globl _bC2D
                             14 	.globl _bC2CK
                             15 	.globl _bVBUS
                             16 	.globl _bRegIn
                             17 	.globl _bVDD
                             18 	.globl _bDn1
                             19 	.globl _bDp1
                             20 	.globl _bGND
                             21 	.globl _bPos
                             22 	.globl _bNotADCCs
                             23 	.globl _bNC3
                             24 	.globl _bOutputEnable
                             25 	.globl _bRedLED
                             26 	.globl _bGreenLED
                             27 	.globl _bNotRAMCS
                             28 	.globl _bNotRAMHold
                             29 	.globl _bIn_TTL
                             30 	.globl _bOut_TTL
                             31 	.globl _bLaser
                             32 	.globl _bNC0
                             33 	.globl _bNotDACCs
                             34 	.globl _bNC1
                             35 	.globl _bNC2
                             36 	.globl _bCal
                             37 	.globl _bSck
                             38 	.globl _bMiso
                             39 	.globl _bMosi
                             40 	.globl _bMtr2Dir
                             41 	.globl _bMtr2Step
                             42 	.globl _bMtrDrvrEn
                             43 	.globl _bMtr1Dir
                             44 	.globl _bMtr1Step
                             45 	.globl _SPIEN
                             46 	.globl _TXBMT
                             47 	.globl _NSSMD0
                             48 	.globl _NSSMD1
                             49 	.globl _RXOVRN
                             50 	.globl _MODF
                             51 	.globl _WCOL
                             52 	.globl _SPIF
                             53 	.globl _AD0CM0
                             54 	.globl _AD0CM1
                             55 	.globl _AD0CM2
                             56 	.globl _AD0WINT
                             57 	.globl _AD0BUSY
                             58 	.globl _AD0INT
                             59 	.globl _AD0TM
                             60 	.globl _AD0EN
                             61 	.globl _CCF0
                             62 	.globl _CCF1
                             63 	.globl _CCF2
                             64 	.globl _CCF3
                             65 	.globl _CCF4
                             66 	.globl _CR
                             67 	.globl _CF
                             68 	.globl _P
                             69 	.globl _F1
                             70 	.globl _OV
                             71 	.globl _RS0
                             72 	.globl _RS1
                             73 	.globl _F0
                             74 	.globl _AC
                             75 	.globl _CY
                             76 	.globl _T2XCLK
                             77 	.globl _TR2
                             78 	.globl _T2SPLIT
                             79 	.globl _T2SOF
                             80 	.globl _TF2LEN
                             81 	.globl _TF2L
                             82 	.globl _TF2H
                             83 	.globl _SI
                             84 	.globl _ACK
                             85 	.globl _ARBLOST
                             86 	.globl _ACKRQ
                             87 	.globl _STO
                             88 	.globl _STA
                             89 	.globl _TXMODE
                             90 	.globl _MASTER
                             91 	.globl _PX0
                             92 	.globl _PT0
                             93 	.globl _PX1
                             94 	.globl _PT1
                             95 	.globl _PS0
                             96 	.globl _PT2
                             97 	.globl _PSPI0
                             98 	.globl _EX0
                             99 	.globl _ET0
                            100 	.globl _EX1
                            101 	.globl _ET1
                            102 	.globl _ES0
                            103 	.globl _ET2
                            104 	.globl _ESPI0
                            105 	.globl _EA
                            106 	.globl _RI0
                            107 	.globl _TI0
                            108 	.globl _RB80
                            109 	.globl _TB80
                            110 	.globl _REN0
                            111 	.globl _MCE0
                            112 	.globl _S0MODE
                            113 	.globl _IT0
                            114 	.globl _IE0
                            115 	.globl _IT1
                            116 	.globl _IE1
                            117 	.globl _TR0
                            118 	.globl _TF0
                            119 	.globl _TR1
                            120 	.globl _TF1
                            121 	.globl _PCA0CP4
                            122 	.globl _PCA0CP0
                            123 	.globl _PCA0
                            124 	.globl _PCA0CP3
                            125 	.globl _PCA0CP2
                            126 	.globl _PCA0CP1
                            127 	.globl _TMR2
                            128 	.globl _TMR2RL
                            129 	.globl _ADC0LT
                            130 	.globl _ADC0GT
                            131 	.globl _ADC0
                            132 	.globl _TMR3
                            133 	.globl _TMR3RL
                            134 	.globl _DP
                            135 	.globl _VDM0CN
                            136 	.globl _PCA0CPH4
                            137 	.globl _PCA0CPL4
                            138 	.globl _PCA0CPH0
                            139 	.globl _PCA0CPL0
                            140 	.globl _PCA0H
                            141 	.globl _PCA0L
                            142 	.globl _SPI0CN
                            143 	.globl _EIP2
                            144 	.globl _EIP1
                            145 	.globl _P3MDIN
                            146 	.globl _P2MDIN
                            147 	.globl _P1MDIN
                            148 	.globl _P0MDIN
                            149 	.globl _B
                            150 	.globl _RSTSRC
                            151 	.globl _PCA0CPH3
                            152 	.globl _PCA0CPL3
                            153 	.globl _PCA0CPH2
                            154 	.globl _PCA0CPL2
                            155 	.globl _PCA0CPH1
                            156 	.globl _PCA0CPL1
                            157 	.globl _ADC0CN
                            158 	.globl _EIE2
                            159 	.globl _EIE1
                            160 	.globl _IT01CF
                            161 	.globl _XBR1
                            162 	.globl _XBR0
                            163 	.globl _ACC
                            164 	.globl _PCA0CPM4
                            165 	.globl _PCA0CPM3
                            166 	.globl _PCA0CPM2
                            167 	.globl _PCA0CPM1
                            168 	.globl _PCA0CPM0
                            169 	.globl _PCA0MD
                            170 	.globl _PCA0CN
                            171 	.globl _USB0XCN
                            172 	.globl _P2SKIP
                            173 	.globl _P1SKIP
                            174 	.globl _P0SKIP
                            175 	.globl _REF0CN
                            176 	.globl _PSW
                            177 	.globl _TMR2H
                            178 	.globl _TMR2L
                            179 	.globl _TMR2RLH
                            180 	.globl _TMR2RLL
                            181 	.globl _REG0CN
                            182 	.globl _TMR2CN
                            183 	.globl _ADC0LTH
                            184 	.globl _ADC0LTL
                            185 	.globl _ADC0GTH
                            186 	.globl _ADC0GTL
                            187 	.globl _SMB0DAT
                            188 	.globl _SMB0CF
                            189 	.globl _SMB0CN
                            190 	.globl _ADC0H
                            191 	.globl _ADC0L
                            192 	.globl _ADC0CF
                            193 	.globl _AMX0P
                            194 	.globl _AMX0N
                            195 	.globl _CLKMUL
                            196 	.globl _IP
                            197 	.globl _FLKEY
                            198 	.globl _FLSCL
                            199 	.globl _OSCICL
                            200 	.globl _OSCICN
                            201 	.globl _OSCXCN
                            202 	.globl _P3
                            203 	.globl _EMI0CN
                            204 	.globl _CLKSEL
                            205 	.globl _IE
                            206 	.globl _P3MDOUT
                            207 	.globl _P2MDOUT
                            208 	.globl _P1MDOUT
                            209 	.globl _P0MDOUT
                            210 	.globl _SPI0DAT
                            211 	.globl _SPIDAT
                            212 	.globl _SPI0CKR
                            213 	.globl _SPICKR
                            214 	.globl _SPI0CFG
                            215 	.globl _SPICFG
                            216 	.globl _P2
                            217 	.globl _CPT0MX
                            218 	.globl _CPT1MX
                            219 	.globl _CPT0MD
                            220 	.globl _CPT1MD
                            221 	.globl _CPT0CN
                            222 	.globl _CPT1CN
                            223 	.globl _SBUF0
                            224 	.globl _SCON0
                            225 	.globl _USB0DAT
                            226 	.globl _USB0ADR
                            227 	.globl _TMR3H
                            228 	.globl _TMR3L
                            229 	.globl _TMR3RLH
                            230 	.globl _TMR3RLL
                            231 	.globl _TMR3CN
                            232 	.globl _P1
                            233 	.globl _PSCTL
                            234 	.globl _CKCON
                            235 	.globl _TH1
                            236 	.globl _TH0
                            237 	.globl _TL1
                            238 	.globl _TL0
                            239 	.globl _TMOD
                            240 	.globl _TCON
                            241 	.globl _PCON
                            242 	.globl _DPH
                            243 	.globl _DPL
                            244 	.globl _SP
                            245 	.globl _P0
                            246 	.globl _M_State
                            247 	.globl _Endpoint1
                            248 	.globl _SetVoltage
                            249 	.globl _SetLaser
                            250 	.globl _PulseMotor
                            251 	.globl _Endpoint2
                            252 	.globl _ReadCurrent
                            253 	.globl _USBReset
                            254 	.globl _Endpoint0
                            255 ;--------------------------------------------------------
                            256 ; special function registers
                            257 ;--------------------------------------------------------
                            258 	.area RSEG    (DATA)
                    0080    259 G$P0$0$0 == 0x0080
                    0080    260 _P0	=	0x0080
                    0081    261 G$SP$0$0 == 0x0081
                    0081    262 _SP	=	0x0081
                    0082    263 G$DPL$0$0 == 0x0082
                    0082    264 _DPL	=	0x0082
                    0083    265 G$DPH$0$0 == 0x0083
                    0083    266 _DPH	=	0x0083
                    0087    267 G$PCON$0$0 == 0x0087
                    0087    268 _PCON	=	0x0087
                    0088    269 G$TCON$0$0 == 0x0088
                    0088    270 _TCON	=	0x0088
                    0089    271 G$TMOD$0$0 == 0x0089
                    0089    272 _TMOD	=	0x0089
                    008A    273 G$TL0$0$0 == 0x008a
                    008A    274 _TL0	=	0x008a
                    008B    275 G$TL1$0$0 == 0x008b
                    008B    276 _TL1	=	0x008b
                    008C    277 G$TH0$0$0 == 0x008c
                    008C    278 _TH0	=	0x008c
                    008D    279 G$TH1$0$0 == 0x008d
                    008D    280 _TH1	=	0x008d
                    008E    281 G$CKCON$0$0 == 0x008e
                    008E    282 _CKCON	=	0x008e
                    008F    283 G$PSCTL$0$0 == 0x008f
                    008F    284 _PSCTL	=	0x008f
                    0090    285 G$P1$0$0 == 0x0090
                    0090    286 _P1	=	0x0090
                    0091    287 G$TMR3CN$0$0 == 0x0091
                    0091    288 _TMR3CN	=	0x0091
                    0092    289 G$TMR3RLL$0$0 == 0x0092
                    0092    290 _TMR3RLL	=	0x0092
                    0093    291 G$TMR3RLH$0$0 == 0x0093
                    0093    292 _TMR3RLH	=	0x0093
                    0094    293 G$TMR3L$0$0 == 0x0094
                    0094    294 _TMR3L	=	0x0094
                    0095    295 G$TMR3H$0$0 == 0x0095
                    0095    296 _TMR3H	=	0x0095
                    0096    297 G$USB0ADR$0$0 == 0x0096
                    0096    298 _USB0ADR	=	0x0096
                    0097    299 G$USB0DAT$0$0 == 0x0097
                    0097    300 _USB0DAT	=	0x0097
                    0098    301 G$SCON0$0$0 == 0x0098
                    0098    302 _SCON0	=	0x0098
                    0099    303 G$SBUF0$0$0 == 0x0099
                    0099    304 _SBUF0	=	0x0099
                    009A    305 G$CPT1CN$0$0 == 0x009a
                    009A    306 _CPT1CN	=	0x009a
                    009B    307 G$CPT0CN$0$0 == 0x009b
                    009B    308 _CPT0CN	=	0x009b
                    009C    309 G$CPT1MD$0$0 == 0x009c
                    009C    310 _CPT1MD	=	0x009c
                    009D    311 G$CPT0MD$0$0 == 0x009d
                    009D    312 _CPT0MD	=	0x009d
                    009E    313 G$CPT1MX$0$0 == 0x009e
                    009E    314 _CPT1MX	=	0x009e
                    009F    315 G$CPT0MX$0$0 == 0x009f
                    009F    316 _CPT0MX	=	0x009f
                    00A0    317 G$P2$0$0 == 0x00a0
                    00A0    318 _P2	=	0x00a0
                    00A1    319 G$SPICFG$0$0 == 0x00a1
                    00A1    320 _SPICFG	=	0x00a1
                    00A1    321 G$SPI0CFG$0$0 == 0x00a1
                    00A1    322 _SPI0CFG	=	0x00a1
                    00A2    323 G$SPICKR$0$0 == 0x00a2
                    00A2    324 _SPICKR	=	0x00a2
                    00A2    325 G$SPI0CKR$0$0 == 0x00a2
                    00A2    326 _SPI0CKR	=	0x00a2
                    00A3    327 G$SPIDAT$0$0 == 0x00a3
                    00A3    328 _SPIDAT	=	0x00a3
                    00A3    329 G$SPI0DAT$0$0 == 0x00a3
                    00A3    330 _SPI0DAT	=	0x00a3
                    00A4    331 G$P0MDOUT$0$0 == 0x00a4
                    00A4    332 _P0MDOUT	=	0x00a4
                    00A5    333 G$P1MDOUT$0$0 == 0x00a5
                    00A5    334 _P1MDOUT	=	0x00a5
                    00A6    335 G$P2MDOUT$0$0 == 0x00a6
                    00A6    336 _P2MDOUT	=	0x00a6
                    00A7    337 G$P3MDOUT$0$0 == 0x00a7
                    00A7    338 _P3MDOUT	=	0x00a7
                    00A8    339 G$IE$0$0 == 0x00a8
                    00A8    340 _IE	=	0x00a8
                    00A9    341 G$CLKSEL$0$0 == 0x00a9
                    00A9    342 _CLKSEL	=	0x00a9
                    00AA    343 G$EMI0CN$0$0 == 0x00aa
                    00AA    344 _EMI0CN	=	0x00aa
                    00B0    345 G$P3$0$0 == 0x00b0
                    00B0    346 _P3	=	0x00b0
                    00B1    347 G$OSCXCN$0$0 == 0x00b1
                    00B1    348 _OSCXCN	=	0x00b1
                    00B2    349 G$OSCICN$0$0 == 0x00b2
                    00B2    350 _OSCICN	=	0x00b2
                    00B3    351 G$OSCICL$0$0 == 0x00b3
                    00B3    352 _OSCICL	=	0x00b3
                    00B6    353 G$FLSCL$0$0 == 0x00b6
                    00B6    354 _FLSCL	=	0x00b6
                    00B7    355 G$FLKEY$0$0 == 0x00b7
                    00B7    356 _FLKEY	=	0x00b7
                    00B8    357 G$IP$0$0 == 0x00b8
                    00B8    358 _IP	=	0x00b8
                    00B9    359 G$CLKMUL$0$0 == 0x00b9
                    00B9    360 _CLKMUL	=	0x00b9
                    00BA    361 G$AMX0N$0$0 == 0x00ba
                    00BA    362 _AMX0N	=	0x00ba
                    00BB    363 G$AMX0P$0$0 == 0x00bb
                    00BB    364 _AMX0P	=	0x00bb
                    00BC    365 G$ADC0CF$0$0 == 0x00bc
                    00BC    366 _ADC0CF	=	0x00bc
                    00BD    367 G$ADC0L$0$0 == 0x00bd
                    00BD    368 _ADC0L	=	0x00bd
                    00BE    369 G$ADC0H$0$0 == 0x00be
                    00BE    370 _ADC0H	=	0x00be
                    00C0    371 G$SMB0CN$0$0 == 0x00c0
                    00C0    372 _SMB0CN	=	0x00c0
                    00C1    373 G$SMB0CF$0$0 == 0x00c1
                    00C1    374 _SMB0CF	=	0x00c1
                    00C2    375 G$SMB0DAT$0$0 == 0x00c2
                    00C2    376 _SMB0DAT	=	0x00c2
                    00C3    377 G$ADC0GTL$0$0 == 0x00c3
                    00C3    378 _ADC0GTL	=	0x00c3
                    00C4    379 G$ADC0GTH$0$0 == 0x00c4
                    00C4    380 _ADC0GTH	=	0x00c4
                    00C5    381 G$ADC0LTL$0$0 == 0x00c5
                    00C5    382 _ADC0LTL	=	0x00c5
                    00C6    383 G$ADC0LTH$0$0 == 0x00c6
                    00C6    384 _ADC0LTH	=	0x00c6
                    00C8    385 G$TMR2CN$0$0 == 0x00c8
                    00C8    386 _TMR2CN	=	0x00c8
                    00C9    387 G$REG0CN$0$0 == 0x00c9
                    00C9    388 _REG0CN	=	0x00c9
                    00CA    389 G$TMR2RLL$0$0 == 0x00ca
                    00CA    390 _TMR2RLL	=	0x00ca
                    00CB    391 G$TMR2RLH$0$0 == 0x00cb
                    00CB    392 _TMR2RLH	=	0x00cb
                    00CC    393 G$TMR2L$0$0 == 0x00cc
                    00CC    394 _TMR2L	=	0x00cc
                    00CD    395 G$TMR2H$0$0 == 0x00cd
                    00CD    396 _TMR2H	=	0x00cd
                    00D0    397 G$PSW$0$0 == 0x00d0
                    00D0    398 _PSW	=	0x00d0
                    00D1    399 G$REF0CN$0$0 == 0x00d1
                    00D1    400 _REF0CN	=	0x00d1
                    00D4    401 G$P0SKIP$0$0 == 0x00d4
                    00D4    402 _P0SKIP	=	0x00d4
                    00D5    403 G$P1SKIP$0$0 == 0x00d5
                    00D5    404 _P1SKIP	=	0x00d5
                    00D6    405 G$P2SKIP$0$0 == 0x00d6
                    00D6    406 _P2SKIP	=	0x00d6
                    00D7    407 G$USB0XCN$0$0 == 0x00d7
                    00D7    408 _USB0XCN	=	0x00d7
                    00D8    409 G$PCA0CN$0$0 == 0x00d8
                    00D8    410 _PCA0CN	=	0x00d8
                    00D9    411 G$PCA0MD$0$0 == 0x00d9
                    00D9    412 _PCA0MD	=	0x00d9
                    00DA    413 G$PCA0CPM0$0$0 == 0x00da
                    00DA    414 _PCA0CPM0	=	0x00da
                    00DB    415 G$PCA0CPM1$0$0 == 0x00db
                    00DB    416 _PCA0CPM1	=	0x00db
                    00DC    417 G$PCA0CPM2$0$0 == 0x00dc
                    00DC    418 _PCA0CPM2	=	0x00dc
                    00DD    419 G$PCA0CPM3$0$0 == 0x00dd
                    00DD    420 _PCA0CPM3	=	0x00dd
                    00DE    421 G$PCA0CPM4$0$0 == 0x00de
                    00DE    422 _PCA0CPM4	=	0x00de
                    00E0    423 G$ACC$0$0 == 0x00e0
                    00E0    424 _ACC	=	0x00e0
                    00E1    425 G$XBR0$0$0 == 0x00e1
                    00E1    426 _XBR0	=	0x00e1
                    00E2    427 G$XBR1$0$0 == 0x00e2
                    00E2    428 _XBR1	=	0x00e2
                    00E4    429 G$IT01CF$0$0 == 0x00e4
                    00E4    430 _IT01CF	=	0x00e4
                    00E6    431 G$EIE1$0$0 == 0x00e6
                    00E6    432 _EIE1	=	0x00e6
                    00E7    433 G$EIE2$0$0 == 0x00e7
                    00E7    434 _EIE2	=	0x00e7
                    00E8    435 G$ADC0CN$0$0 == 0x00e8
                    00E8    436 _ADC0CN	=	0x00e8
                    00E9    437 G$PCA0CPL1$0$0 == 0x00e9
                    00E9    438 _PCA0CPL1	=	0x00e9
                    00EA    439 G$PCA0CPH1$0$0 == 0x00ea
                    00EA    440 _PCA0CPH1	=	0x00ea
                    00EB    441 G$PCA0CPL2$0$0 == 0x00eb
                    00EB    442 _PCA0CPL2	=	0x00eb
                    00EC    443 G$PCA0CPH2$0$0 == 0x00ec
                    00EC    444 _PCA0CPH2	=	0x00ec
                    00ED    445 G$PCA0CPL3$0$0 == 0x00ed
                    00ED    446 _PCA0CPL3	=	0x00ed
                    00EE    447 G$PCA0CPH3$0$0 == 0x00ee
                    00EE    448 _PCA0CPH3	=	0x00ee
                    00EF    449 G$RSTSRC$0$0 == 0x00ef
                    00EF    450 _RSTSRC	=	0x00ef
                    00F0    451 G$B$0$0 == 0x00f0
                    00F0    452 _B	=	0x00f0
                    00F1    453 G$P0MDIN$0$0 == 0x00f1
                    00F1    454 _P0MDIN	=	0x00f1
                    00F2    455 G$P1MDIN$0$0 == 0x00f2
                    00F2    456 _P1MDIN	=	0x00f2
                    00F3    457 G$P2MDIN$0$0 == 0x00f3
                    00F3    458 _P2MDIN	=	0x00f3
                    00F4    459 G$P3MDIN$0$0 == 0x00f4
                    00F4    460 _P3MDIN	=	0x00f4
                    00F6    461 G$EIP1$0$0 == 0x00f6
                    00F6    462 _EIP1	=	0x00f6
                    00F7    463 G$EIP2$0$0 == 0x00f7
                    00F7    464 _EIP2	=	0x00f7
                    00F8    465 G$SPI0CN$0$0 == 0x00f8
                    00F8    466 _SPI0CN	=	0x00f8
                    00F9    467 G$PCA0L$0$0 == 0x00f9
                    00F9    468 _PCA0L	=	0x00f9
                    00FA    469 G$PCA0H$0$0 == 0x00fa
                    00FA    470 _PCA0H	=	0x00fa
                    00FB    471 G$PCA0CPL0$0$0 == 0x00fb
                    00FB    472 _PCA0CPL0	=	0x00fb
                    00FC    473 G$PCA0CPH0$0$0 == 0x00fc
                    00FC    474 _PCA0CPH0	=	0x00fc
                    00FD    475 G$PCA0CPL4$0$0 == 0x00fd
                    00FD    476 _PCA0CPL4	=	0x00fd
                    00FE    477 G$PCA0CPH4$0$0 == 0x00fe
                    00FE    478 _PCA0CPH4	=	0x00fe
                    00FF    479 G$VDM0CN$0$0 == 0x00ff
                    00FF    480 _VDM0CN	=	0x00ff
                    8382    481 G$DP$0$0 == 0x8382
                    8382    482 _DP	=	0x8382
                    9392    483 G$TMR3RL$0$0 == 0x9392
                    9392    484 _TMR3RL	=	0x9392
                    9594    485 G$TMR3$0$0 == 0x9594
                    9594    486 _TMR3	=	0x9594
                    BEBD    487 G$ADC0$0$0 == 0xbebd
                    BEBD    488 _ADC0	=	0xbebd
                    C4C3    489 G$ADC0GT$0$0 == 0xc4c3
                    C4C3    490 _ADC0GT	=	0xc4c3
                    C6C5    491 G$ADC0LT$0$0 == 0xc6c5
                    C6C5    492 _ADC0LT	=	0xc6c5
                    CBCA    493 G$TMR2RL$0$0 == 0xcbca
                    CBCA    494 _TMR2RL	=	0xcbca
                    CDCC    495 G$TMR2$0$0 == 0xcdcc
                    CDCC    496 _TMR2	=	0xcdcc
                    EAE9    497 G$PCA0CP1$0$0 == 0xeae9
                    EAE9    498 _PCA0CP1	=	0xeae9
                    ECEB    499 G$PCA0CP2$0$0 == 0xeceb
                    ECEB    500 _PCA0CP2	=	0xeceb
                    EEED    501 G$PCA0CP3$0$0 == 0xeeed
                    EEED    502 _PCA0CP3	=	0xeeed
                    FAF9    503 G$PCA0$0$0 == 0xfaf9
                    FAF9    504 _PCA0	=	0xfaf9
                    FCFB    505 G$PCA0CP0$0$0 == 0xfcfb
                    FCFB    506 _PCA0CP0	=	0xfcfb
                    FEFD    507 G$PCA0CP4$0$0 == 0xfefd
                    FEFD    508 _PCA0CP4	=	0xfefd
                            509 ;--------------------------------------------------------
                            510 ; special function bits
                            511 ;--------------------------------------------------------
                            512 	.area RSEG    (DATA)
                    008F    513 G$TF1$0$0 == 0x008f
                    008F    514 _TF1	=	0x008f
                    008E    515 G$TR1$0$0 == 0x008e
                    008E    516 _TR1	=	0x008e
                    008D    517 G$TF0$0$0 == 0x008d
                    008D    518 _TF0	=	0x008d
                    008C    519 G$TR0$0$0 == 0x008c
                    008C    520 _TR0	=	0x008c
                    008B    521 G$IE1$0$0 == 0x008b
                    008B    522 _IE1	=	0x008b
                    008A    523 G$IT1$0$0 == 0x008a
                    008A    524 _IT1	=	0x008a
                    0089    525 G$IE0$0$0 == 0x0089
                    0089    526 _IE0	=	0x0089
                    0088    527 G$IT0$0$0 == 0x0088
                    0088    528 _IT0	=	0x0088
                    009F    529 G$S0MODE$0$0 == 0x009f
                    009F    530 _S0MODE	=	0x009f
                    009D    531 G$MCE0$0$0 == 0x009d
                    009D    532 _MCE0	=	0x009d
                    009C    533 G$REN0$0$0 == 0x009c
                    009C    534 _REN0	=	0x009c
                    009B    535 G$TB80$0$0 == 0x009b
                    009B    536 _TB80	=	0x009b
                    009A    537 G$RB80$0$0 == 0x009a
                    009A    538 _RB80	=	0x009a
                    0099    539 G$TI0$0$0 == 0x0099
                    0099    540 _TI0	=	0x0099
                    0098    541 G$RI0$0$0 == 0x0098
                    0098    542 _RI0	=	0x0098
                    00AF    543 G$EA$0$0 == 0x00af
                    00AF    544 _EA	=	0x00af
                    00AE    545 G$ESPI0$0$0 == 0x00ae
                    00AE    546 _ESPI0	=	0x00ae
                    00AD    547 G$ET2$0$0 == 0x00ad
                    00AD    548 _ET2	=	0x00ad
                    00AC    549 G$ES0$0$0 == 0x00ac
                    00AC    550 _ES0	=	0x00ac
                    00AB    551 G$ET1$0$0 == 0x00ab
                    00AB    552 _ET1	=	0x00ab
                    00AA    553 G$EX1$0$0 == 0x00aa
                    00AA    554 _EX1	=	0x00aa
                    00A9    555 G$ET0$0$0 == 0x00a9
                    00A9    556 _ET0	=	0x00a9
                    00A8    557 G$EX0$0$0 == 0x00a8
                    00A8    558 _EX0	=	0x00a8
                    00BE    559 G$PSPI0$0$0 == 0x00be
                    00BE    560 _PSPI0	=	0x00be
                    00BD    561 G$PT2$0$0 == 0x00bd
                    00BD    562 _PT2	=	0x00bd
                    00BC    563 G$PS0$0$0 == 0x00bc
                    00BC    564 _PS0	=	0x00bc
                    00BB    565 G$PT1$0$0 == 0x00bb
                    00BB    566 _PT1	=	0x00bb
                    00BA    567 G$PX1$0$0 == 0x00ba
                    00BA    568 _PX1	=	0x00ba
                    00B9    569 G$PT0$0$0 == 0x00b9
                    00B9    570 _PT0	=	0x00b9
                    00B8    571 G$PX0$0$0 == 0x00b8
                    00B8    572 _PX0	=	0x00b8
                    00C7    573 G$MASTER$0$0 == 0x00c7
                    00C7    574 _MASTER	=	0x00c7
                    00C6    575 G$TXMODE$0$0 == 0x00c6
                    00C6    576 _TXMODE	=	0x00c6
                    00C5    577 G$STA$0$0 == 0x00c5
                    00C5    578 _STA	=	0x00c5
                    00C4    579 G$STO$0$0 == 0x00c4
                    00C4    580 _STO	=	0x00c4
                    00C3    581 G$ACKRQ$0$0 == 0x00c3
                    00C3    582 _ACKRQ	=	0x00c3
                    00C2    583 G$ARBLOST$0$0 == 0x00c2
                    00C2    584 _ARBLOST	=	0x00c2
                    00C1    585 G$ACK$0$0 == 0x00c1
                    00C1    586 _ACK	=	0x00c1
                    00C0    587 G$SI$0$0 == 0x00c0
                    00C0    588 _SI	=	0x00c0
                    00CF    589 G$TF2H$0$0 == 0x00cf
                    00CF    590 _TF2H	=	0x00cf
                    00CE    591 G$TF2L$0$0 == 0x00ce
                    00CE    592 _TF2L	=	0x00ce
                    00CD    593 G$TF2LEN$0$0 == 0x00cd
                    00CD    594 _TF2LEN	=	0x00cd
                    00CC    595 G$T2SOF$0$0 == 0x00cc
                    00CC    596 _T2SOF	=	0x00cc
                    00CB    597 G$T2SPLIT$0$0 == 0x00cb
                    00CB    598 _T2SPLIT	=	0x00cb
                    00CA    599 G$TR2$0$0 == 0x00ca
                    00CA    600 _TR2	=	0x00ca
                    00C8    601 G$T2XCLK$0$0 == 0x00c8
                    00C8    602 _T2XCLK	=	0x00c8
                    00D7    603 G$CY$0$0 == 0x00d7
                    00D7    604 _CY	=	0x00d7
                    00D6    605 G$AC$0$0 == 0x00d6
                    00D6    606 _AC	=	0x00d6
                    00D5    607 G$F0$0$0 == 0x00d5
                    00D5    608 _F0	=	0x00d5
                    00D4    609 G$RS1$0$0 == 0x00d4
                    00D4    610 _RS1	=	0x00d4
                    00D3    611 G$RS0$0$0 == 0x00d3
                    00D3    612 _RS0	=	0x00d3
                    00D2    613 G$OV$0$0 == 0x00d2
                    00D2    614 _OV	=	0x00d2
                    00D1    615 G$F1$0$0 == 0x00d1
                    00D1    616 _F1	=	0x00d1
                    00D0    617 G$P$0$0 == 0x00d0
                    00D0    618 _P	=	0x00d0
                    00DF    619 G$CF$0$0 == 0x00df
                    00DF    620 _CF	=	0x00df
                    00DE    621 G$CR$0$0 == 0x00de
                    00DE    622 _CR	=	0x00de
                    00DC    623 G$CCF4$0$0 == 0x00dc
                    00DC    624 _CCF4	=	0x00dc
                    00DB    625 G$CCF3$0$0 == 0x00db
                    00DB    626 _CCF3	=	0x00db
                    00DA    627 G$CCF2$0$0 == 0x00da
                    00DA    628 _CCF2	=	0x00da
                    00D9    629 G$CCF1$0$0 == 0x00d9
                    00D9    630 _CCF1	=	0x00d9
                    00D8    631 G$CCF0$0$0 == 0x00d8
                    00D8    632 _CCF0	=	0x00d8
                    00EF    633 G$AD0EN$0$0 == 0x00ef
                    00EF    634 _AD0EN	=	0x00ef
                    00EE    635 G$AD0TM$0$0 == 0x00ee
                    00EE    636 _AD0TM	=	0x00ee
                    00ED    637 G$AD0INT$0$0 == 0x00ed
                    00ED    638 _AD0INT	=	0x00ed
                    00EC    639 G$AD0BUSY$0$0 == 0x00ec
                    00EC    640 _AD0BUSY	=	0x00ec
                    00EB    641 G$AD0WINT$0$0 == 0x00eb
                    00EB    642 _AD0WINT	=	0x00eb
                    00EA    643 G$AD0CM2$0$0 == 0x00ea
                    00EA    644 _AD0CM2	=	0x00ea
                    00E9    645 G$AD0CM1$0$0 == 0x00e9
                    00E9    646 _AD0CM1	=	0x00e9
                    00E8    647 G$AD0CM0$0$0 == 0x00e8
                    00E8    648 _AD0CM0	=	0x00e8
                    00FF    649 G$SPIF$0$0 == 0x00ff
                    00FF    650 _SPIF	=	0x00ff
                    00FE    651 G$WCOL$0$0 == 0x00fe
                    00FE    652 _WCOL	=	0x00fe
                    00FD    653 G$MODF$0$0 == 0x00fd
                    00FD    654 _MODF	=	0x00fd
                    00FC    655 G$RXOVRN$0$0 == 0x00fc
                    00FC    656 _RXOVRN	=	0x00fc
                    00FB    657 G$NSSMD1$0$0 == 0x00fb
                    00FB    658 _NSSMD1	=	0x00fb
                    00FA    659 G$NSSMD0$0$0 == 0x00fa
                    00FA    660 _NSSMD0	=	0x00fa
                    00F9    661 G$TXBMT$0$0 == 0x00f9
                    00F9    662 _TXBMT	=	0x00f9
                    00F8    663 G$SPIEN$0$0 == 0x00f8
                    00F8    664 _SPIEN	=	0x00f8
                    0087    665 G$bMtr1Step$0$0 == 0x0087
                    0087    666 _bMtr1Step	=	0x0087
                    0086    667 G$bMtr1Dir$0$0 == 0x0086
                    0086    668 _bMtr1Dir	=	0x0086
                    0085    669 G$bMtrDrvrEn$0$0 == 0x0085
                    0085    670 _bMtrDrvrEn	=	0x0085
                    0084    671 G$bMtr2Step$0$0 == 0x0084
                    0084    672 _bMtr2Step	=	0x0084
                    0083    673 G$bMtr2Dir$0$0 == 0x0083
                    0083    674 _bMtr2Dir	=	0x0083
                    0082    675 G$bMosi$0$0 == 0x0082
                    0082    676 _bMosi	=	0x0082
                    0081    677 G$bMiso$0$0 == 0x0081
                    0081    678 _bMiso	=	0x0081
                    0080    679 G$bSck$0$0 == 0x0080
                    0080    680 _bSck	=	0x0080
                    0097    681 G$bCal$0$0 == 0x0097
                    0097    682 _bCal	=	0x0097
                    0096    683 G$bNC2$0$0 == 0x0096
                    0096    684 _bNC2	=	0x0096
                    0095    685 G$bNC1$0$0 == 0x0095
                    0095    686 _bNC1	=	0x0095
                    0094    687 G$bNotDACCs$0$0 == 0x0094
                    0094    688 _bNotDACCs	=	0x0094
                    0093    689 G$bNC0$0$0 == 0x0093
                    0093    690 _bNC0	=	0x0093
                    0092    691 G$bLaser$0$0 == 0x0092
                    0092    692 _bLaser	=	0x0092
                    0091    693 G$bOut_TTL$0$0 == 0x0091
                    0091    694 _bOut_TTL	=	0x0091
                    0090    695 G$bIn_TTL$0$0 == 0x0090
                    0090    696 _bIn_TTL	=	0x0090
                    00A7    697 G$bNotRAMHold$0$0 == 0x00a7
                    00A7    698 _bNotRAMHold	=	0x00a7
                    00A6    699 G$bNotRAMCS$0$0 == 0x00a6
                    00A6    700 _bNotRAMCS	=	0x00a6
                    00A5    701 G$bGreenLED$0$0 == 0x00a5
                    00A5    702 _bGreenLED	=	0x00a5
                    00A4    703 G$bRedLED$0$0 == 0x00a4
                    00A4    704 _bRedLED	=	0x00a4
                    00A3    705 G$bOutputEnable$0$0 == 0x00a3
                    00A3    706 _bOutputEnable	=	0x00a3
                    00A2    707 G$bNC3$0$0 == 0x00a2
                    00A2    708 _bNC3	=	0x00a2
                    00A1    709 G$bNotADCCs$0$0 == 0x00a1
                    00A1    710 _bNotADCCs	=	0x00a1
                    00A0    711 G$bPos$0$0 == 0x00a0
                    00A0    712 _bPos	=	0x00a0
                    00B7    713 G$bGND$0$0 == 0x00b7
                    00B7    714 _bGND	=	0x00b7
                    00B6    715 G$bDp1$0$0 == 0x00b6
                    00B6    716 _bDp1	=	0x00b6
                    00B5    717 G$bDn1$0$0 == 0x00b5
                    00B5    718 _bDn1	=	0x00b5
                    00B4    719 G$bVDD$0$0 == 0x00b4
                    00B4    720 _bVDD	=	0x00b4
                    00B3    721 G$bRegIn$0$0 == 0x00b3
                    00B3    722 _bRegIn	=	0x00b3
                    00B2    723 G$bVBUS$0$0 == 0x00b2
                    00B2    724 _bVBUS	=	0x00b2
                    00B1    725 G$bC2CK$0$0 == 0x00b1
                    00B1    726 _bC2CK	=	0x00b1
                    00B0    727 G$bC2D$0$0 == 0x00b0
                    00B0    728 _bC2D	=	0x00b0
                            729 ;--------------------------------------------------------
                            730 ; overlayable register banks
                            731 ;--------------------------------------------------------
                            732 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     733 	.ds 8
                            734 ;--------------------------------------------------------
                            735 ; overlayable bit register bank
                            736 ;--------------------------------------------------------
                            737 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     738 bits:
   0020                     739 	.ds 1
                    8000    740 	b0 = bits[0]
                    8100    741 	b1 = bits[1]
                    8200    742 	b2 = bits[2]
                    8300    743 	b3 = bits[3]
                    8400    744 	b4 = bits[4]
                    8500    745 	b5 = bits[5]
                    8600    746 	b6 = bits[6]
                    8700    747 	b7 = bits[7]
                            748 ;--------------------------------------------------------
                            749 ; internal ram data
                            750 ;--------------------------------------------------------
                            751 	.area DSEG    (DATA)
                    0000    752 G$M_State$0$0==.
   000E                     753 _M_State::
   000E                     754 	.ds 1
                    0001    755 LEndpoint1$bOp$1$1==.
   000F                     756 _Endpoint1_bOp_1_1:
   000F                     757 	.ds 1
                    0002    758 LSetVoltage$pData$1$1==.
   0010                     759 _SetVoltage_pData_1_1:
   0010                     760 	.ds 4
                    0006    761 LSetLaser$bState$1$1==.
   0014                     762 _SetLaser_bState_1_1:
   0014                     763 	.ds 1
                    0007    764 LPulseMotor$bMotor$1$1==.
   0015                     765 _PulseMotor_bMotor_1_1:
   0015                     766 	.ds 1
                    0008    767 LPulseMotor$bDir$1$1==.
   0016                     768 _PulseMotor_bDir_1_1:
   0016                     769 	.ds 1
                    0009    770 LEndpoint2$bOp$1$1==.
   0017                     771 _Endpoint2_bOp_1_1:
   0017                     772 	.ds 1
                    000A    773 LReadCurrent$pData$1$1==.
   0018                     774 _ReadCurrent_pData_1_1:
   0018                     775 	.ds 4
                            776 ;--------------------------------------------------------
                            777 ; overlayable items in internal ram 
                            778 ;--------------------------------------------------------
                            779 	.area	OSEG    (OVR,DATA)
                            780 ;--------------------------------------------------------
                            781 ; indirectly addressable internal ram data
                            782 ;--------------------------------------------------------
                            783 	.area ISEG    (DATA)
                            784 ;--------------------------------------------------------
                            785 ; absolute internal ram data
                            786 ;--------------------------------------------------------
                            787 	.area IABS    (ABS,DATA)
                            788 	.area IABS    (ABS,DATA)
                            789 ;--------------------------------------------------------
                            790 ; bit data
                            791 ;--------------------------------------------------------
                            792 	.area BSEG    (BIT)
                            793 ;--------------------------------------------------------
                            794 ; paged external ram data
                            795 ;--------------------------------------------------------
                            796 	.area PSEG    (PAG,XDATA)
                            797 ;--------------------------------------------------------
                            798 ; external ram data
                            799 ;--------------------------------------------------------
                            800 	.area XSEG    (XDATA)
                            801 ;--------------------------------------------------------
                            802 ; absolute external ram data
                            803 ;--------------------------------------------------------
                            804 	.area XABS    (ABS,XDATA)
                            805 ;--------------------------------------------------------
                            806 ; external initialized ram data
                            807 ;--------------------------------------------------------
                            808 	.area XISEG   (XDATA)
                            809 	.area HOME    (CODE)
                            810 	.area GSINIT0 (CODE)
                            811 	.area GSINIT1 (CODE)
                            812 	.area GSINIT2 (CODE)
                            813 	.area GSINIT3 (CODE)
                            814 	.area GSINIT4 (CODE)
                            815 	.area GSINIT5 (CODE)
                            816 	.area GSINIT  (CODE)
                            817 	.area GSFINAL (CODE)
                            818 	.area CSEG    (CODE)
                            819 ;--------------------------------------------------------
                            820 ; global & static initialisations
                            821 ;--------------------------------------------------------
                            822 	.area HOME    (CODE)
                            823 	.area GSINIT  (CODE)
                            824 	.area GSFINAL (CODE)
                            825 	.area GSINIT  (CODE)
                            826 ;--------------------------------------------------------
                            827 ; Home
                            828 ;--------------------------------------------------------
                            829 	.area HOME    (CODE)
                            830 	.area HOME    (CODE)
                            831 ;--------------------------------------------------------
                            832 ; code
                            833 ;--------------------------------------------------------
                            834 	.area CSEG    (CODE)
                            835 ;------------------------------------------------------------
                            836 ;Allocation info for local variables in function 'USB_ISR'
                            837 ;------------------------------------------------------------
                            838 ;bCommonInt                Allocated to registers r2 
                            839 ;bInInt                    Allocated to registers r3 
                            840 ;bOutInt                   Allocated to registers r4 
                            841 ;------------------------------------------------------------
                    0000    842 	G$USB_ISR$0$0 ==.
                    0000    843 	C$Interrupts.c$60$0$0 ==.
                            844 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:60: void USB_ISR() interrupt 8
                            845 ;	-----------------------------------------
                            846 ;	 function USB_ISR
                            847 ;	-----------------------------------------
   0662                     848 _USB_ISR:
                    0002    849 	ar2 = 0x02
                    0003    850 	ar3 = 0x03
                    0004    851 	ar4 = 0x04
                    0005    852 	ar5 = 0x05
                    0006    853 	ar6 = 0x06
                    0007    854 	ar7 = 0x07
                    0000    855 	ar0 = 0x00
                    0001    856 	ar1 = 0x01
   0662 C0 20               857 	push	bits
   0664 C0 E0               858 	push	acc
   0666 C0 F0               859 	push	b
   0668 C0 82               860 	push	dpl
   066A C0 83               861 	push	dph
   066C C0 02               862 	push	(0+2)
   066E C0 03               863 	push	(0+3)
   0670 C0 04               864 	push	(0+4)
   0672 C0 05               865 	push	(0+5)
   0674 C0 06               866 	push	(0+6)
   0676 C0 07               867 	push	(0+7)
   0678 C0 00               868 	push	(0+0)
   067A C0 01               869 	push	(0+1)
   067C C0 D0               870 	push	psw
   067E 75 D0 00            871 	mov	psw,#0x00
                    001F    872 	C$Interrupts.c$68$2$2 ==.
                            873 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:68: UREAD_BYTE(CMINT, bCommonInt);
   0681 75 96 86            874 	mov	_USB0ADR,#0x86
   0684                     875 00101$:
   0684 E5 96               876 	mov	a,_USB0ADR
   0686 20 E7 FB            877 	jb	acc.7,00101$
   0689 AA 97               878 	mov	r2,_USB0DAT
                    0029    879 	C$Interrupts.c$69$2$3 ==.
                            880 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:69: UREAD_BYTE(IN1INT, bInInt);
   068B 75 96 82            881 	mov	_USB0ADR,#0x82
   068E                     882 00104$:
   068E E5 96               883 	mov	a,_USB0ADR
   0690 20 E7 FB            884 	jb	acc.7,00104$
   0693 AB 97               885 	mov	r3,_USB0DAT
                    0033    886 	C$Interrupts.c$70$2$4 ==.
                            887 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:70: UREAD_BYTE(OUT1INT, bOutInt);
   0695 75 96 84            888 	mov	_USB0ADR,#0x84
   0698                     889 00107$:
   0698 E5 96               890 	mov	a,_USB0ADR
   069A 20 E7 FB            891 	jb	acc.7,00107$
   069D AC 97               892 	mov	r4,_USB0DAT
                    003D    893 	C$Interrupts.c$74$1$1 ==.
                            894 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:74: if ((bCommonInt & rbRSTINT) > 0)
   069F EA                  895 	mov	a,r2
   06A0 30 E2 0E            896 	jnb	acc.2,00111$
                    0041    897 	C$Interrupts.c$77$2$5 ==.
                            898 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:77: USBReset();
   06A3 C0 03               899 	push	ar3
   06A5 C0 04               900 	push	ar4
   06A7 12 08 25            901 	lcall	_USBReset
   06AA D0 04               902 	pop	ar4
   06AC D0 03               903 	pop	ar3
                    004C    904 	C$Interrupts.c$80$2$5 ==.
                            905 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:80: M_State = ST_WAIT_DEV;
   06AE 75 0E 01            906 	mov	_M_State,#0x01
   06B1                     907 00111$:
                    004F    908 	C$Interrupts.c$85$1$1 ==.
                            909 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:85: if ((bInInt & rbEP0) > 0)
   06B1 EB                  910 	mov	a,r3
   06B2 30 E0 0B            911 	jnb	acc.0,00113$
                    0053    912 	C$Interrupts.c$88$2$6 ==.
                            913 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:88: Endpoint0();
   06B5 C0 03               914 	push	ar3
   06B7 C0 04               915 	push	ar4
   06B9 12 08 71            916 	lcall	_Endpoint0
   06BC D0 04               917 	pop	ar4
   06BE D0 03               918 	pop	ar3
   06C0                     919 00113$:
                    005E    920 	C$Interrupts.c$92$1$1 ==.
                            921 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:92: if ((bInInt & rbIN1) > 0)
   06C0 EB                  922 	mov	a,r3
   06C1 30 E1 07            923 	jnb	acc.1,00115$
                    0062    924 	C$Interrupts.c$95$2$7 ==.
                            925 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:95: Endpoint1();
   06C4 C0 04               926 	push	ar4
   06C6 12 06 EF            927 	lcall	_Endpoint1
   06C9 D0 04               928 	pop	ar4
   06CB                     929 00115$:
                    0069    930 	C$Interrupts.c$99$1$1 ==.
                            931 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:99: if ((bOutInt & rbOUT2) > 0)
   06CB EC                  932 	mov	a,r4
   06CC 30 E2 03            933 	jnb	acc.2,00118$
                    006D    934 	C$Interrupts.c$102$2$8 ==.
                            935 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:102: Endpoint2();
   06CF 12 07 EF            936 	lcall	_Endpoint2
   06D2                     937 00118$:
   06D2 D0 D0               938 	pop	psw
   06D4 D0 01               939 	pop	(0+1)
   06D6 D0 00               940 	pop	(0+0)
   06D8 D0 07               941 	pop	(0+7)
   06DA D0 06               942 	pop	(0+6)
   06DC D0 05               943 	pop	(0+5)
   06DE D0 04               944 	pop	(0+4)
   06E0 D0 03               945 	pop	(0+3)
   06E2 D0 02               946 	pop	(0+2)
   06E4 D0 83               947 	pop	dph
   06E6 D0 82               948 	pop	dpl
   06E8 D0 F0               949 	pop	b
   06EA D0 E0               950 	pop	acc
   06EC D0 20               951 	pop	bits
                    008C    952 	C$Interrupts.c$107$2$1 ==.
                    008C    953 	XG$USB_ISR$0$0 ==.
   06EE 32                  954 	reti
                            955 ;------------------------------------------------------------
                            956 ;Allocation info for local variables in function 'Endpoint1'
                            957 ;------------------------------------------------------------
                            958 ;bEP                       Allocated to registers 
                            959 ;uNumBytes                 Allocated to registers 
                            960 ;bOp                       Allocated with name '_Endpoint1_bOp_1_1'
                            961 ;------------------------------------------------------------
                    008D    962 	G$Endpoint1$0$0 ==.
                    008D    963 	C$Interrupts.c$125$2$1 ==.
                            964 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:125: void Endpoint1()
                            965 ;	-----------------------------------------
                            966 ;	 function Endpoint1
                            967 ;	-----------------------------------------
   06EF                     968 _Endpoint1:
                    008D    969 	C$Interrupts.c$130$1$1 ==.
                            970 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:130: BYTE bOp = 0x00;		//Operation to perform
   06EF 75 0F 00            971 	mov	_Endpoint1_bOp_1_1,#0x00
                    0090    972 	C$Interrupts.c$133$1$1 ==.
                            973 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:133: FIFORead(bEP, uNumBytes, &bOp);
   06F2 75 59 0F            974 	mov	_FIFORead_PARM_3,#_Endpoint1_bOp_1_1
   06F5 75 5A 00            975 	mov	(_FIFORead_PARM_3 + 1),#0x00
   06F8 75 5B 40            976 	mov	(_FIFORead_PARM_3 + 2),#0x40
   06FB 75 57 01            977 	mov	_FIFORead_PARM_2,#0x01
   06FE E4                  978 	clr	a
   06FF F5 58               979 	mov	(_FIFORead_PARM_2 + 1),a
   0701 75 82 01            980 	mov	dpl,#0x01
   0704 12 05 A4            981 	lcall	_FIFORead
                    00A5    982 	C$Interrupts.c$136$1$1 ==.
                            983 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:136: switch (bOp)
   0707 E4                  984 	clr	a
   0708 B5 0F 02            985 	cjne	a,_Endpoint1_bOp_1_1,00110$
   070B 80 0E               986 	sjmp	00101$
   070D                     987 00110$:
   070D 74 02               988 	mov	a,#0x02
   070F B5 0F 02            989 	cjne	a,_Endpoint1_bOp_1_1,00111$
   0712 80 0A               990 	sjmp	00102$
   0714                     991 00111$:
   0714 74 03               992 	mov	a,#0x03
                    00B4    993 	C$Interrupts.c$138$2$2 ==.
                            994 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:138: case OP_SET_VOLTAGE:
   0716 B5 0F 0B            995 	cjne	a,_Endpoint1_bOp_1_1,00105$
   0719 80 06               996 	sjmp	00103$
   071B                     997 00101$:
                    00B9    998 	C$Interrupts.c$139$2$2 ==.
                            999 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:139: SetVoltage();
                    00B9   1000 	C$Interrupts.c$140$2$2 ==.
                           1001 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:140: break;
                    00B9   1002 	C$Interrupts.c$142$2$2 ==.
                           1003 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:142: case OP_SET_LASER:
   071B 02 07 25           1004 	ljmp	_SetVoltage
   071E                    1005 00102$:
                    00BC   1006 	C$Interrupts.c$143$2$2 ==.
                           1007 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:143: SetLaser();
                    00BC   1008 	C$Interrupts.c$144$2$2 ==.
                           1009 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:144: break;
                    00BC   1010 	C$Interrupts.c$146$2$2 ==.
                           1011 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:146: case OP_PULSE_MOTOR:
   071E 02 07 3A           1012 	ljmp	_SetLaser
   0721                    1013 00103$:
                    00BF   1014 	C$Interrupts.c$147$2$2 ==.
                           1015 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:147: PulseMotor();
                    00BF   1016 	C$Interrupts.c$149$1$1 ==.
                           1017 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:149: }
                    00BF   1018 	C$Interrupts.c$150$1$1 ==.
                    00BF   1019 	XG$Endpoint1$0$0 ==.
   0721 02 07 61           1020 	ljmp	_PulseMotor
   0724                    1021 00105$:
   0724 22                 1022 	ret
                           1023 ;------------------------------------------------------------
                           1024 ;Allocation info for local variables in function 'SetVoltage'
                           1025 ;------------------------------------------------------------
                           1026 ;bEP                       Allocated to registers 
                           1027 ;uNumBytes                 Allocated to registers 
                           1028 ;pData                     Allocated with name '_SetVoltage_pData_1_1'
                           1029 ;------------------------------------------------------------
                    00C3   1030 	G$SetVoltage$0$0 ==.
                    00C3   1031 	C$Interrupts.c$163$1$1 ==.
                           1032 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:163: void SetVoltage()
                           1033 ;	-----------------------------------------
                           1034 ;	 function SetVoltage
                           1035 ;	-----------------------------------------
   0725                    1036 _SetVoltage:
                    00C3   1037 	C$Interrupts.c$171$1$1 ==.
                           1038 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:171: FIFORead(bEP, uNumBytes, pData);
   0725 75 59 10           1039 	mov	_FIFORead_PARM_3,#_SetVoltage_pData_1_1
   0728 75 5A 00           1040 	mov	(_FIFORead_PARM_3 + 1),#0x00
   072B 75 5B 40           1041 	mov	(_FIFORead_PARM_3 + 2),#0x40
   072E 75 57 04           1042 	mov	_FIFORead_PARM_2,#0x04
   0731 E4                 1043 	clr	a
   0732 F5 58              1044 	mov	(_FIFORead_PARM_2 + 1),a
   0734 75 82 01           1045 	mov	dpl,#0x01
                    00D5   1046 	C$Interrupts.c$174$1$1 ==.
                    00D5   1047 	XG$SetVoltage$0$0 ==.
   0737 02 05 A4           1048 	ljmp	_FIFORead
                           1049 ;------------------------------------------------------------
                           1050 ;Allocation info for local variables in function 'SetLaser'
                           1051 ;------------------------------------------------------------
                           1052 ;bEP                       Allocated to registers 
                           1053 ;uNumBytes                 Allocated to registers 
                           1054 ;bState                    Allocated with name '_SetLaser_bState_1_1'
                           1055 ;------------------------------------------------------------
                    00D8   1056 	G$SetLaser$0$0 ==.
                    00D8   1057 	C$Interrupts.c$187$1$1 ==.
                           1058 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:187: void SetLaser()
                           1059 ;	-----------------------------------------
                           1060 ;	 function SetLaser
                           1061 ;	-----------------------------------------
   073A                    1062 _SetLaser:
                    00D8   1063 	C$Interrupts.c$192$1$1 ==.
                           1064 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:192: BYTE bState = 0x00;		//State of the Laser to read
   073A 75 14 00           1065 	mov	_SetLaser_bState_1_1,#0x00
                    00DB   1066 	C$Interrupts.c$195$1$1 ==.
                           1067 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:195: FIFORead(bEP, uNumBytes, &bState);
   073D 75 59 14           1068 	mov	_FIFORead_PARM_3,#_SetLaser_bState_1_1
   0740 75 5A 00           1069 	mov	(_FIFORead_PARM_3 + 1),#0x00
   0743 75 5B 40           1070 	mov	(_FIFORead_PARM_3 + 2),#0x40
   0746 75 57 01           1071 	mov	_FIFORead_PARM_2,#0x01
   0749 E4                 1072 	clr	a
   074A F5 58              1073 	mov	(_FIFORead_PARM_2 + 1),a
   074C 75 82 01           1074 	mov	dpl,#0x01
   074F 12 05 A4           1075 	lcall	_FIFORead
                    00F0   1076 	C$Interrupts.c$198$2$2 ==.
                           1077 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:198: UWRITE_BYTE(bLaser, bState);
   0752 A2 92              1078 	mov	c,_bLaser
   0754 E4                 1079 	clr	a
   0755 33                 1080 	rlc	a
   0756 F5 96              1081 	mov	_USB0ADR,a
   0758 85 14 97           1082 	mov	_USB0DAT,_SetLaser_bState_1_1
   075B                    1083 00101$:
   075B E5 96              1084 	mov	a,_USB0ADR
   075D 20 E7 FB           1085 	jb	acc.7,00101$
                    00FE   1086 	C$Interrupts.c$199$2$2 ==.
                    00FE   1087 	XG$SetLaser$0$0 ==.
   0760 22                 1088 	ret
                           1089 ;------------------------------------------------------------
                           1090 ;Allocation info for local variables in function 'PulseMotor'
                           1091 ;------------------------------------------------------------
                           1092 ;bEP                       Allocated to registers 
                           1093 ;uNumBytes                 Allocated to registers 
                           1094 ;bMotor                    Allocated with name '_PulseMotor_bMotor_1_1'
                           1095 ;bDir                      Allocated with name '_PulseMotor_bDir_1_1'
                           1096 ;bMtrStep                  Allocated to registers r2 
                           1097 ;bMtrDir                   Allocated to registers r3 
                           1098 ;uDelay                    Allocated to registers r3 r4 
                           1099 ;------------------------------------------------------------
                    00FF   1100 	G$PulseMotor$0$0 ==.
                    00FF   1101 	C$Interrupts.c$212$2$2 ==.
                           1102 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:212: void PulseMotor()
                           1103 ;	-----------------------------------------
                           1104 ;	 function PulseMotor
                           1105 ;	-----------------------------------------
   0761                    1106 _PulseMotor:
                    00FF   1107 	C$Interrupts.c$217$1$2 ==.
                           1108 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:217: BYTE bMotor = MOTOR_X;		//Motor bit to read
   0761 75 15 00           1109 	mov	_PulseMotor_bMotor_1_1,#0x00
                    0102   1110 	C$Interrupts.c$218$1$2 ==.
                           1111 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:218: BYTE bDir = DIR_FWD;		//Direction bit to read
   0764 75 16 00           1112 	mov	_PulseMotor_bDir_1_1,#0x00
                    0105   1113 	C$Interrupts.c$219$1$2 ==.
                           1114 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:219: BYTE bMtrStep = bMtr1Step;	//Motor to step
   0767 A2 87              1115 	mov	c,_bMtr1Step
   0769 E4                 1116 	clr	a
   076A 33                 1117 	rlc	a
   076B FA                 1118 	mov	r2,a
                    010A   1119 	C$Interrupts.c$220$1$2 ==.
                           1120 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:220: BYTE bMtrDir = bMtr1Dir;	//Direction to step
   076C A2 86              1121 	mov	c,_bMtr1Dir
   076E E4                 1122 	clr	a
   076F 33                 1123 	rlc	a
   0770 FB                 1124 	mov	r3,a
                    010F   1125 	C$Interrupts.c$224$1$1 ==.
                           1126 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:224: FIFORead(bEP, uNumBytes, &bMotor);
   0771 75 59 15           1127 	mov	_FIFORead_PARM_3,#_PulseMotor_bMotor_1_1
   0774 75 5A 00           1128 	mov	(_FIFORead_PARM_3 + 1),#0x00
   0777 75 5B 40           1129 	mov	(_FIFORead_PARM_3 + 2),#0x40
   077A 75 57 01           1130 	mov	_FIFORead_PARM_2,#0x01
   077D E4                 1131 	clr	a
   077E F5 58              1132 	mov	(_FIFORead_PARM_2 + 1),a
   0780 75 82 01           1133 	mov	dpl,#0x01
   0783 C0 02              1134 	push	ar2
   0785 C0 03              1135 	push	ar3
   0787 12 05 A4           1136 	lcall	_FIFORead
                    0128   1137 	C$Interrupts.c$227$1$1 ==.
                           1138 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:227: FIFORead(bEP, uNumBytes, &bDir);
   078A 75 59 16           1139 	mov	_FIFORead_PARM_3,#_PulseMotor_bDir_1_1
   078D 75 5A 00           1140 	mov	(_FIFORead_PARM_3 + 1),#0x00
   0790 75 5B 40           1141 	mov	(_FIFORead_PARM_3 + 2),#0x40
   0793 75 57 01           1142 	mov	_FIFORead_PARM_2,#0x01
   0796 E4                 1143 	clr	a
   0797 F5 58              1144 	mov	(_FIFORead_PARM_2 + 1),a
   0799 75 82 01           1145 	mov	dpl,#0x01
   079C 12 05 A4           1146 	lcall	_FIFORead
   079F D0 03              1147 	pop	ar3
   07A1 D0 02              1148 	pop	ar2
                    0141   1149 	C$Interrupts.c$230$1$1 ==.
                           1150 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:230: if (bMotor == MOTOR_Y)
   07A3 74 01              1151 	mov	a,#0x01
   07A5 B5 15 0A           1152 	cjne	a,_PulseMotor_bMotor_1_1,00102$
                    0146   1153 	C$Interrupts.c$232$2$2 ==.
                           1154 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:232: bMtrStep = bMtr2Step;
   07A8 A2 84              1155 	mov	c,_bMtr2Step
   07AA E4                 1156 	clr	a
   07AB 33                 1157 	rlc	a
   07AC FA                 1158 	mov	r2,a
                    014B   1159 	C$Interrupts.c$233$2$2 ==.
                           1160 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:233: bMtrDir = bMtr2Dir;
   07AD A2 83              1161 	mov	c,_bMtr2Dir
   07AF E4                 1162 	clr	a
   07B0 33                 1163 	rlc	a
   07B1 FB                 1164 	mov	r3,a
   07B2                    1165 00102$:
                    0150   1166 	C$Interrupts.c$237$2$3 ==.
                           1167 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:237: UWRITE_BYTE(bMtrDrvrEn, 0x01);
   07B2 A2 85              1168 	mov	c,_bMtrDrvrEn
   07B4 E4                 1169 	clr	a
   07B5 33                 1170 	rlc	a
   07B6 F5 96              1171 	mov	_USB0ADR,a
   07B8 75 97 01           1172 	mov	_USB0DAT,#0x01
   07BB                    1173 00103$:
   07BB E5 96              1174 	mov	a,_USB0ADR
   07BD 20 E7 FB           1175 	jb	acc.7,00103$
                    015E   1176 	C$Interrupts.c$240$2$4 ==.
                           1177 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:240: UWRITE_BYTE(bMtrDir, bDir);
   07C0 8B 96              1178 	mov	_USB0ADR,r3
   07C2 85 16 97           1179 	mov	_USB0DAT,_PulseMotor_bDir_1_1
   07C5                    1180 00106$:
   07C5 E5 96              1181 	mov	a,_USB0ADR
   07C7 20 E7 FB           1182 	jb	acc.7,00106$
                    0168   1183 	C$Interrupts.c$243$2$5 ==.
                           1184 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:243: UWRITE_BYTE(bMtrStep, 0x01);
   07CA 8A 96              1185 	mov	_USB0ADR,r2
   07CC 75 97 01           1186 	mov	_USB0DAT,#0x01
   07CF                    1187 00109$:
   07CF E5 96              1188 	mov	a,_USB0ADR
   07D1 20 E7 FB           1189 	jb	acc.7,00109$
                    0172   1190 	C$Interrupts.c$246$2$6 ==.
                           1191 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:246: while (uDelay--);
   07D4 7B D4              1192 	mov	r3,#0xD4
   07D6 7C 30              1193 	mov	r4,#0x30
   07D8                    1194 00112$:
   07D8 8B 05              1195 	mov	ar5,r3
   07DA 8C 06              1196 	mov	ar6,r4
   07DC 1B                 1197 	dec	r3
   07DD BB FF 01           1198 	cjne	r3,#0xff,00135$
   07E0 1C                 1199 	dec	r4
   07E1                    1200 00135$:
   07E1 ED                 1201 	mov	a,r5
   07E2 4E                 1202 	orl	a,r6
                    0181   1203 	C$Interrupts.c$249$2$6 ==.
                           1204 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:249: UWRITE_BYTE(bMtrStep, 0x00);
   07E3 70 F3              1205 	jnz	00112$
   07E5 8A 96              1206 	mov	_USB0ADR,r2
   07E7 F5 97              1207 	mov	_USB0DAT,a
   07E9                    1208 00115$:
   07E9 E5 96              1209 	mov	a,_USB0ADR
   07EB 20 E7 FB           1210 	jb	acc.7,00115$
                    018C   1211 	C$Interrupts.c$250$2$6 ==.
                    018C   1212 	XG$PulseMotor$0$0 ==.
   07EE 22                 1213 	ret
                           1214 ;------------------------------------------------------------
                           1215 ;Allocation info for local variables in function 'Endpoint2'
                           1216 ;------------------------------------------------------------
                           1217 ;bEP                       Allocated to registers 
                           1218 ;uNumBytes                 Allocated to registers 
                           1219 ;bOp                       Allocated with name '_Endpoint2_bOp_1_1'
                           1220 ;------------------------------------------------------------
                    018D   1221 	G$Endpoint2$0$0 ==.
                    018D   1222 	C$Interrupts.c$264$2$6 ==.
                           1223 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:264: void Endpoint2()
                           1224 ;	-----------------------------------------
                           1225 ;	 function Endpoint2
                           1226 ;	-----------------------------------------
   07EF                    1227 _Endpoint2:
                    018D   1228 	C$Interrupts.c$269$1$6 ==.
                           1229 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:269: BYTE bOp = 0x00;		//Operation to perform
   07EF 75 17 00           1230 	mov	_Endpoint2_bOp_1_1,#0x00
                    0190   1231 	C$Interrupts.c$272$1$1 ==.
                           1232 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:272: FIFORead(bEP, uNumBytes, &bOp);
   07F2 75 59 17           1233 	mov	_FIFORead_PARM_3,#_Endpoint2_bOp_1_1
   07F5 75 5A 00           1234 	mov	(_FIFORead_PARM_3 + 1),#0x00
   07F8 75 5B 40           1235 	mov	(_FIFORead_PARM_3 + 2),#0x40
   07FB 75 57 01           1236 	mov	_FIFORead_PARM_2,#0x01
   07FE E4                 1237 	clr	a
   07FF F5 58              1238 	mov	(_FIFORead_PARM_2 + 1),a
   0801 75 82 02           1239 	mov	dpl,#0x02
   0804 12 05 A4           1240 	lcall	_FIFORead
                    01A5   1241 	C$Interrupts.c$276$1$1 ==.
                           1242 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:276: if (bOp == OP_GET_CURRENT)
   0807 74 01              1243 	mov	a,#0x01
   0809 B5 17 03           1244 	cjne	a,_Endpoint2_bOp_1_1,00103$
                    01AA   1245 	C$Interrupts.c$277$1$1 ==.
                           1246 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:277: ReadCurrent();
                    01AA   1247 	C$Interrupts.c$278$1$1 ==.
                    01AA   1248 	XG$Endpoint2$0$0 ==.
   080C 02 08 10           1249 	ljmp	_ReadCurrent
   080F                    1250 00103$:
   080F 22                 1251 	ret
                           1252 ;------------------------------------------------------------
                           1253 ;Allocation info for local variables in function 'ReadCurrent'
                           1254 ;------------------------------------------------------------
                           1255 ;bEP                       Allocated to registers 
                           1256 ;uNumBytes                 Allocated to registers 
                           1257 ;pData                     Allocated with name '_ReadCurrent_pData_1_1'
                           1258 ;------------------------------------------------------------
                    01AE   1259 	G$ReadCurrent$0$0 ==.
                    01AE   1260 	C$Interrupts.c$291$1$1 ==.
                           1261 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:291: void ReadCurrent()
                           1262 ;	-----------------------------------------
                           1263 ;	 function ReadCurrent
                           1264 ;	-----------------------------------------
   0810                    1265 _ReadCurrent:
                    01AE   1266 	C$Interrupts.c$301$1$1 ==.
                           1267 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:301: FIFOWrite(bEP, uNumBytes, pData);
   0810 75 59 18           1268 	mov	_FIFOWrite_PARM_3,#_ReadCurrent_pData_1_1
   0813 75 5A 00           1269 	mov	(_FIFOWrite_PARM_3 + 1),#0x00
   0816 75 5B 40           1270 	mov	(_FIFOWrite_PARM_3 + 2),#0x40
   0819 75 57 04           1271 	mov	_FIFOWrite_PARM_2,#0x04
   081C E4                 1272 	clr	a
   081D F5 58              1273 	mov	(_FIFOWrite_PARM_2 + 1),a
   081F 75 82 02           1274 	mov	dpl,#0x02
                    01C0   1275 	C$Interrupts.c$302$1$1 ==.
                    01C0   1276 	XG$ReadCurrent$0$0 ==.
   0822 02 06 1D           1277 	ljmp	_FIFOWrite
                           1278 ;------------------------------------------------------------
                           1279 ;Allocation info for local variables in function 'USBReset'
                           1280 ;------------------------------------------------------------
                           1281 ;i                         Allocated to registers r5 
                           1282 ;bPower                    Allocated to registers 
                           1283 ;pDevStatus                Allocated to registers 
                           1284 ;------------------------------------------------------------
                    01C3   1285 	G$USBReset$0$0 ==.
                    01C3   1286 	C$Interrupts.c$319$1$1 ==.
                           1287 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:319: void USBReset ()
                           1288 ;	-----------------------------------------
                           1289 ;	 function USBReset
                           1290 ;	-----------------------------------------
   0825                    1291 _USBReset:
                    01C3   1292 	C$Interrupts.c$325$1$1 ==.
                           1293 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:325: pDevStatus = (BYTE *)&gDeviceStatus;
                    01C3   1294 	C$Interrupts.c$326$2$5 ==.
                           1295 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:326: for (i=0;i<sizeof(DEVICE_STATUS);i++)
   0825 7A 21              1296 	mov	r2,#_gDeviceStatus
   0827 7B 00              1297 	mov	r3,#(_gDeviceStatus >> 8)
   0829 7C 40              1298 	mov	r4,#0x40
   082B 7D 0D              1299 	mov	r5,#0x0D
   082D                    1300 00110$:
                    01CB   1301 	C$Interrupts.c$328$2$2 ==.
                           1302 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:328: *pDevStatus++ = 0x00;
   082D 8A 82              1303 	mov	dpl,r2
   082F 8B 83              1304 	mov	dph,r3
   0831 8C F0              1305 	mov	b,r4
   0833 E4                 1306 	clr	a
   0834 12 09 E3           1307 	lcall	__gptrput
   0837 A3                 1308 	inc	dptr
   0838 AA 82              1309 	mov	r2,dpl
   083A AB 83              1310 	mov	r3,dph
   083C DD EF              1311 	djnz	r5,00110$
                    01DC   1312 	C$Interrupts.c$326$2$2 ==.
                           1313 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:326: for (i=0;i<sizeof(DEVICE_STATUS);i++)
                    01DC   1314 	C$Interrupts.c$332$1$1 ==.
                           1315 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:332: gDeviceStatus.bDevState = DEV_DEFAULT;
   083E 75 22 00           1316 	mov	(_gDeviceStatus + 0x0001),#0x00
                    01DF   1317 	C$Interrupts.c$336$1$1 ==.
                           1318 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:336: gDeviceStatus.bRemoteWakeupSupport = REMOTE_WAKEUP_SUPPORT;
   0841 75 23 00           1319 	mov	(_gDeviceStatus + 0x0002),#0x00
                    01E2   1320 	C$Interrupts.c$337$1$1 ==.
                           1321 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:337: gDeviceStatus.bSelfPoweredStatus = SELF_POWERED_SUPPORT;
   0844 75 25 01           1322 	mov	(_gDeviceStatus + 0x0004),#0x01
                    01E5   1323 	C$Interrupts.c$342$1$1 ==.
                           1324 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:342: gEp0Status.bEpState = EP_IDLE;         // Reset Endpoint0 state
   0847 75 33 00           1325 	mov	(_gEp0Status + 0x0005),#0x00
                    01E8   1326 	C$Interrupts.c$343$1$1 ==.
                           1327 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:343: gEp0Status.bEp = 0;                    // Set endpoint number
   084A 75 2E 00           1328 	mov	_gEp0Status,#0x00
                    01EB   1329 	C$Interrupts.c$344$1$1 ==.
                           1330 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:344: gEp0Status.uMaxP = EP0_MAXP;           // Set maximum packet size
   084D 75 31 40           1331 	mov	(_gEp0Status + 0x0003),#0x40
   0850 75 32 00           1332 	mov	((_gEp0Status + 0x0003) + 1),#0x00
                    01F1   1333 	C$Interrupts.c$347$1$1 ==.
                           1334 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:347: gEp1InStatus.bEpState = EP_HALTED;     // Reset state
   0853 75 46 03           1335 	mov	(_gEp1InStatus + 0x0005),#0x03
                    01F4   1336 	C$Interrupts.c$348$1$1 ==.
                           1337 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:348: gEp1InStatus.uNumBytes = 0;            // Reset byte counter
   0856 75 42 00           1338 	mov	(_gEp1InStatus + 0x0001),#0x00
   0859 75 43 00           1339 	mov	((_gEp1InStatus + 0x0001) + 1),#0x00
                    01FA   1340 	C$Interrupts.c$351$1$1 ==.
                           1341 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:351: gEp2OutStatus.bEpState = EP_HALTED;    // Reset state
   085C 75 51 03           1342 	mov	(_gEp2OutStatus + 0x0005),#0x03
                    01FD   1343 	C$Interrupts.c$352$1$1 ==.
                           1344 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:352: gEp2OutStatus.uNumBytes = 0;           // Reset byte counter
   085F 75 4D 00           1345 	mov	(_gEp2OutStatus + 0x0001),#0x00
   0862 75 4E 00           1346 	mov	((_gEp2OutStatus + 0x0001) + 1),#0x00
                    0203   1347 	C$Interrupts.c$368$2$5 ==.
                           1348 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:368: UWRITE_BYTE(POWER, bPower);
   0865 75 96 01           1349 	mov	_USB0ADR,#0x01
   0868 75 97 00           1350 	mov	_USB0DAT,#0x00
   086B                    1351 00105$:
   086B E5 96              1352 	mov	a,_USB0ADR
   086D 20 E7 FB           1353 	jb	acc.7,00105$
                    020E   1354 	C$Interrupts.c$369$2$5 ==.
                    020E   1355 	XG$USBReset$0$0 ==.
   0870 22                 1356 	ret
                           1357 ;------------------------------------------------------------
                           1358 ;Allocation info for local variables in function 'Endpoint0'
                           1359 ;------------------------------------------------------------
                           1360 ;bTemp                     Allocated to registers r2 
                           1361 ;bCsr1                     Allocated to registers r2 
                           1362 ;uTxBytes                  Allocated to registers r5 
                           1363 ;------------------------------------------------------------
                    020F   1364 	G$Endpoint0$0$0 ==.
                    020F   1365 	C$Interrupts.c$381$2$5 ==.
                           1366 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:381: void Endpoint0()
                           1367 ;	-----------------------------------------
                           1368 ;	 function Endpoint0
                           1369 ;	-----------------------------------------
   0871                    1370 _Endpoint0:
                    020F   1371 	C$Interrupts.c$386$2$2 ==.
                           1372 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:386: UWRITE_BYTE(INDEX, 0);                 // Target ep0
   0871 75 96 0E           1373 	mov	_USB0ADR,#0x0E
   0874 75 97 00           1374 	mov	_USB0DAT,#0x00
   0877                    1375 00101$:
   0877 E5 96              1376 	mov	a,_USB0ADR
   0879 20 E7 FB           1377 	jb	acc.7,00101$
                    021A   1378 	C$Interrupts.c$387$2$3 ==.
                           1379 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:387: UREAD_BYTE(E0CSR, bCsr1);
   087C 75 96 91           1380 	mov	_USB0ADR,#0x91
   087F                    1381 00104$:
   087F E5 96              1382 	mov	a,_USB0ADR
   0881 20 E7 FB           1383 	jb	acc.7,00104$
                    0222   1384 	C$Interrupts.c$390$1$1 ==.
                           1385 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:390: if (bCsr1 & rbSUEND)                   // Check for setup end
   0884 E5 97              1386 	mov	a,_USB0DAT
   0886 FA                 1387 	mov	r2,a
   0887 30 E4 11           1388 	jnb	acc.4,00111$
                    0228   1389 	C$Interrupts.c$392$3$5 ==.
                           1390 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:392: UWRITE_BYTE(E0CSR, rbSSUEND);
   088A 75 96 11           1391 	mov	_USB0ADR,#0x11
   088D 75 97 80           1392 	mov	_USB0DAT,#0x80
   0890                    1393 00107$:
   0890 E5 96              1394 	mov	a,_USB0ADR
   0892 20 E7 FB           1395 	jb	acc.7,00107$
                    0233   1396 	C$Interrupts.c$393$2$4 ==.
                           1397 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:393: gEp0Status.bEpState = EP_IDLE;      // ep0 state to idle
   0895 75 33 00           1398 	mov	(_gEp0Status + 0x0005),#0x00
                    0236   1399 	C$Interrupts.c$394$2$4 ==.
                           1400 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:394: M_State = ST_IDLE_DEV;              // ported from usb_file.c
   0898 75 0E 02           1401 	mov	_M_State,#0x02
   089B                    1402 00111$:
                    0239   1403 	C$Interrupts.c$398$1$1 ==.
                           1404 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:398: if (bCsr1 & rbSTSTL)                   // If last state requested a stall
   089B EA                 1405 	mov	a,r2
   089C 30 E2 11           1406 	jnb	acc.2,00116$
                    023D   1407 	C$Interrupts.c$400$3$7 ==.
                           1408 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:400: UWRITE_BYTE(E0CSR, 0);
   089F 75 96 11           1409 	mov	_USB0ADR,#0x11
   08A2 75 97 00           1410 	mov	_USB0DAT,#0x00
   08A5                    1411 00112$:
   08A5 E5 96              1412 	mov	a,_USB0ADR
   08A7 20 E7 FB           1413 	jb	acc.7,00112$
                    0248   1414 	C$Interrupts.c$401$2$6 ==.
                           1415 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:401: gEp0Status.bEpState = EP_IDLE;      // ep0 state to idle
   08AA 75 33 00           1416 	mov	(_gEp0Status + 0x0005),#0x00
                    024B   1417 	C$Interrupts.c$402$2$6 ==.
                           1418 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:402: M_State = ST_IDLE_DEV;              // ported from usb_file.c
   08AD 75 0E 02           1419 	mov	_M_State,#0x02
   08B0                    1420 00116$:
                    024E   1421 	C$Interrupts.c$406$1$1 ==.
                           1422 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:406: if (bCsr1 & rbOPRDY)
   08B0 EA                 1423 	mov	a,r2
   08B1 20 E0 03           1424 	jb	acc.0,00187$
   08B4 02 09 79           1425 	ljmp	00142$
   08B7                    1426 00187$:
                    0255   1427 	C$Interrupts.c$409$2$8 ==.
                           1428 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:409: FIFORead(0, 8, (BYTE*)&gEp0Command);
   08B7 75 59 39           1429 	mov	_FIFORead_PARM_3,#_gEp0Command
   08BA 75 5A 00           1430 	mov	(_FIFORead_PARM_3 + 1),#0x00
   08BD 75 5B 40           1431 	mov	(_FIFORead_PARM_3 + 2),#0x40
   08C0 75 57 08           1432 	mov	_FIFORead_PARM_2,#0x08
   08C3 E4                 1433 	clr	a
   08C4 F5 58              1434 	mov	(_FIFORead_PARM_2 + 1),a
   08C6 75 82 00           1435 	mov	dpl,#0x00
   08C9 12 05 A4           1436 	lcall	_FIFORead
                    026A   1437 	C$Interrupts.c$412$2$8 ==.
                           1438 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:412: bTemp = gEp0Command.wIndex.c[1];
   08CC AA 3E              1439 	mov	r2,(_gEp0Command + 0x0005)
                    026C   1440 	C$Interrupts.c$413$2$8 ==.
                           1441 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:413: gEp0Command.wIndex.c[1] = gEp0Command.wIndex.c[0];
   08CE AB 3D              1442 	mov	r3,(_gEp0Command + 0x0004)
   08D0 8B 3E              1443 	mov	(_gEp0Command + 0x0005),r3
                    0270   1444 	C$Interrupts.c$414$2$8 ==.
                           1445 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:414: gEp0Command.wIndex.c[0] = bTemp;
   08D2 8A 3D              1446 	mov	(_gEp0Command + 0x0004),r2
                    0272   1447 	C$Interrupts.c$417$2$8 ==.
                           1448 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:417: bTemp = gEp0Command.wValue.c[1];
   08D4 AA 3C              1449 	mov	r2,(_gEp0Command + 0x0003)
                    0274   1450 	C$Interrupts.c$418$2$8 ==.
                           1451 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:418: gEp0Command.wValue.c[1] = gEp0Command.wValue.c[0];
   08D6 AB 3B              1452 	mov	r3,(_gEp0Command + 0x0002)
   08D8 8B 3C              1453 	mov	(_gEp0Command + 0x0003),r3
                    0278   1454 	C$Interrupts.c$419$2$8 ==.
                           1455 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:419: gEp0Command.wValue.c[0] = bTemp;
   08DA 8A 3B              1456 	mov	(_gEp0Command + 0x0002),r2
                    027A   1457 	C$Interrupts.c$422$2$8 ==.
                           1458 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:422: bTemp = gEp0Command.wLength.c[1];
   08DC AA 40              1459 	mov	r2,(_gEp0Command + 0x0007)
                    027C   1460 	C$Interrupts.c$423$2$8 ==.
                           1461 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:423: gEp0Command.wLength.c[1] = gEp0Command.wLength.c[0];
   08DE AB 3F              1462 	mov	r3,(_gEp0Command + 0x0006)
   08E0 8B 40              1463 	mov	(_gEp0Command + 0x0007),r3
                    0280   1464 	C$Interrupts.c$424$2$8 ==.
                           1465 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:424: gEp0Command.wLength.c[0] = bTemp;
   08E2 8A 3F              1466 	mov	(_gEp0Command + 0x0006),r2
                    0282   1467 	C$Interrupts.c$427$2$8 ==.
                           1468 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:427: switch (gEp0Command.bmRequestType & CMD_MASK_COMMON)
   08E4 74 F0              1469 	mov	a,#0xF0
   08E6 55 39              1470 	anl	a,_gEp0Command
   08E8 FB                 1471 	mov	r3,a
   08E9 60 08              1472 	jz	00117$
   08EB BB 80 02           1473 	cjne	r3,#0x80,00189$
   08EE 80 41              1474 	sjmp	00126$
   08F0                    1475 00189$:
   08F0 02 09 60           1476 	ljmp	00134$
                    0291   1477 	C$Interrupts.c$429$3$9 ==.
                           1478 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:429: case  CMD_STD_DEV_OUT:           // Standard device requests
   08F3                    1479 00117$:
                    0291   1480 	C$Interrupts.c$431$3$9 ==.
                           1481 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:431: switch (gEp0Command.bRequest)
   08F3 AB 3A              1482 	mov	r3,(_gEp0Command + 0x0001)
   08F5 BB 01 02           1483 	cjne	r3,#0x01,00190$
   08F8 80 23              1484 	sjmp	00120$
   08FA                    1485 00190$:
   08FA BB 03 02           1486 	cjne	r3,#0x03,00191$
   08FD 80 19              1487 	sjmp	00119$
   08FF                    1488 00191$:
   08FF BB 05 02           1489 	cjne	r3,#0x05,00192$
   0902 80 0F              1490 	sjmp	00118$
   0904                    1491 00192$:
   0904 BB 07 02           1492 	cjne	r3,#0x07,00193$
   0907 80 23              1493 	sjmp	00124$
   0909                    1494 00193$:
   0909 BB 09 02           1495 	cjne	r3,#0x09,00194$
   090C 80 14              1496 	sjmp	00121$
   090E                    1497 00194$:
                    02AC   1498 	C$Interrupts.c$433$4$10 ==.
                           1499 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:433: case SET_ADDRESS:
   090E BB 0B 1B           1500 	cjne	r3,#0x0B,00124$
   0911 80 14              1501 	sjmp	00122$
   0913                    1502 00118$:
                    02B1   1503 	C$Interrupts.c$434$4$10 ==.
                           1504 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:434: SetAddressRequest();
   0913 12 01 16           1505 	lcall	_SetAddressRequest
                    02B4   1506 	C$Interrupts.c$435$4$10 ==.
                           1507 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:435: break;
                    02B4   1508 	C$Interrupts.c$436$4$10 ==.
                           1509 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:436: case SET_FEATURE:
   0916 80 4B              1510 	sjmp	00135$
   0918                    1511 00119$:
                    02B6   1512 	C$Interrupts.c$437$4$10 ==.
                           1513 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:437: SetFeatureRequest();
   0918 12 01 54           1514 	lcall	_SetFeatureRequest
                    02B9   1515 	C$Interrupts.c$438$4$10 ==.
                           1516 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:438: break;
                    02B9   1517 	C$Interrupts.c$439$4$10 ==.
                           1518 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:439: case CLEAR_FEATURE:
   091B 80 46              1519 	sjmp	00135$
   091D                    1520 00120$:
                    02BB   1521 	C$Interrupts.c$440$4$10 ==.
                           1522 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:440: ClearFeatureRequest();
   091D 12 01 9C           1523 	lcall	_ClearFeatureRequest
                    02BE   1524 	C$Interrupts.c$441$4$10 ==.
                           1525 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:441: break;
                    02BE   1526 	C$Interrupts.c$442$4$10 ==.
                           1527 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:442: case SET_CONFIGURATION:
   0920 80 41              1528 	sjmp	00135$
   0922                    1529 00121$:
                    02C0   1530 	C$Interrupts.c$443$4$10 ==.
                           1531 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:443: SetConfigurationRequest();
   0922 12 01 E4           1532 	lcall	_SetConfigurationRequest
                    02C3   1533 	C$Interrupts.c$444$4$10 ==.
                           1534 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:444: break;
                    02C3   1535 	C$Interrupts.c$445$4$10 ==.
                           1536 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:445: case SET_INTERFACE:
   0925 80 3C              1537 	sjmp	00135$
   0927                    1538 00122$:
                    02C5   1539 	C$Interrupts.c$446$4$10 ==.
                           1540 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:446: SetInterfaceRequest();
   0927 12 02 1F           1541 	lcall	_SetInterfaceRequest
                    02C8   1542 	C$Interrupts.c$447$4$10 ==.
                           1543 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:447: break;
                    02C8   1544 	C$Interrupts.c$450$4$10 ==.
                           1545 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:450: default:
   092A 80 37              1546 	sjmp	00135$
   092C                    1547 00124$:
                    02CA   1548 	C$Interrupts.c$451$4$10 ==.
                           1549 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:451: gEp0Status.bEpState = EP_ERROR;
   092C 75 33 02           1550 	mov	(_gEp0Status + 0x0005),#0x02
                    02CD   1551 	C$Interrupts.c$454$3$9 ==.
                           1552 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:454: break;
                    02CD   1553 	C$Interrupts.c$457$3$9 ==.
                           1554 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:457: case CMD_STD_DEV_IN:
   092F 80 32              1555 	sjmp	00135$
   0931                    1556 00126$:
                    02CF   1557 	C$Interrupts.c$458$3$9 ==.
                           1558 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:458: switch (gEp0Command.bRequest)
   0931 AB 3A              1559 	mov	r3,(_gEp0Command + 0x0001)
   0933 BB 00 02           1560 	cjne	r3,#0x00,00196$
   0936 80 0F              1561 	sjmp	00127$
   0938                    1562 00196$:
   0938 BB 06 02           1563 	cjne	r3,#0x06,00197$
   093B 80 0F              1564 	sjmp	00128$
   093D                    1565 00197$:
   093D BB 08 02           1566 	cjne	r3,#0x08,00198$
   0940 80 0F              1567 	sjmp	00129$
   0942                    1568 00198$:
                    02E0   1569 	C$Interrupts.c$460$4$11 ==.
                           1570 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:460: case GET_STATUS:
   0942 BB 0A 16           1571 	cjne	r3,#0x0A,00132$
   0945 80 0F              1572 	sjmp	00130$
   0947                    1573 00127$:
                    02E5   1574 	C$Interrupts.c$461$4$11 ==.
                           1575 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:461: GetStatusRequest();
   0947 12 02 20           1576 	lcall	_GetStatusRequest
                    02E8   1577 	C$Interrupts.c$462$4$11 ==.
                           1578 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:462: break;
                    02E8   1579 	C$Interrupts.c$463$4$11 ==.
                           1580 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:463: case GET_DESCRIPTOR:
   094A 80 17              1581 	sjmp	00135$
   094C                    1582 00128$:
                    02EA   1583 	C$Interrupts.c$464$4$11 ==.
                           1584 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:464: GetDescriptorRequest();
   094C 12 02 AD           1585 	lcall	_GetDescriptorRequest
                    02ED   1586 	C$Interrupts.c$465$4$11 ==.
                           1587 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:465: break;
                    02ED   1588 	C$Interrupts.c$466$4$11 ==.
                           1589 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:466: case GET_CONFIGURATION:
   094F 80 12              1590 	sjmp	00135$
   0951                    1591 00129$:
                    02EF   1592 	C$Interrupts.c$467$4$11 ==.
                           1593 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:467: GetConfigurationRequest();
   0951 12 03 2B           1594 	lcall	_GetConfigurationRequest
                    02F2   1595 	C$Interrupts.c$468$4$11 ==.
                           1596 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:468: break;
                    02F2   1597 	C$Interrupts.c$469$4$11 ==.
                           1598 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:469: case GET_INTERFACE:
   0954 80 0D              1599 	sjmp	00135$
   0956                    1600 00130$:
                    02F4   1601 	C$Interrupts.c$470$4$11 ==.
                           1602 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:470: GetInterfaceRequest();
   0956 12 03 7B           1603 	lcall	_GetInterfaceRequest
                    02F7   1604 	C$Interrupts.c$471$4$11 ==.
                           1605 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:471: break;
                    02F7   1606 	C$Interrupts.c$474$4$11 ==.
                           1607 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:474: default:
   0959 80 08              1608 	sjmp	00135$
   095B                    1609 00132$:
                    02F9   1610 	C$Interrupts.c$475$4$11 ==.
                           1611 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:475: gEp0Status.bEpState = EP_ERROR;
   095B 75 33 02           1612 	mov	(_gEp0Status + 0x0005),#0x02
                    02FC   1613 	C$Interrupts.c$478$3$9 ==.
                           1614 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:478: break;
                    02FC   1615 	C$Interrupts.c$480$3$9 ==.
                           1616 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:480: default:
   095E 80 03              1617 	sjmp	00135$
   0960                    1618 00134$:
                    02FE   1619 	C$Interrupts.c$481$3$9 ==.
                           1620 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:481: gEp0Status.bEpState = EP_ERROR;
   0960 75 33 02           1621 	mov	(_gEp0Status + 0x0005),#0x02
                    0301   1622 	C$Interrupts.c$482$2$8 ==.
                           1623 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:482: }
   0963                    1624 00135$:
                    0301   1625 	C$Interrupts.c$485$2$8 ==.
                           1626 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:485: bTemp = rbSOPRDY;
   0963 7A 40              1627 	mov	r2,#0x40
                    0303   1628 	C$Interrupts.c$486$2$8 ==.
                           1629 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:486: if (gEp0Status.bEpState == EP_ERROR)
   0965 74 02              1630 	mov	a,#0x02
   0967 B5 33 05           1631 	cjne	a,(_gEp0Status + 0x0005),00137$
                    0308   1632 	C$Interrupts.c$488$3$12 ==.
                           1633 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:488: bTemp |= rbSDSTL;                // Error condition handled
   096A 7A 60              1634 	mov	r2,#0x60
                    030A   1635 	C$Interrupts.c$490$3$12 ==.
                           1636 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:490: gEp0Status.bEpState = EP_IDLE;   // Reset state to idle
   096C 75 33 00           1637 	mov	(_gEp0Status + 0x0005),#0x00
   096F                    1638 00137$:
                    030D   1639 	C$Interrupts.c$493$3$13 ==.
                           1640 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:493: UWRITE_BYTE(E0CSR, bTemp);
   096F 75 96 11           1641 	mov	_USB0ADR,#0x11
   0972 8A 97              1642 	mov	_USB0DAT,r2
   0974                    1643 00138$:
   0974 E5 96              1644 	mov	a,_USB0ADR
   0976 20 E7 FB           1645 	jb	acc.7,00138$
   0979                    1646 00142$:
                    0317   1647 	C$Interrupts.c$496$1$1 ==.
                           1648 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:496: bTemp = 0;                             // Reset temporary variable
   0979 7A 00              1649 	mov	r2,#0x00
                    0319   1650 	C$Interrupts.c$499$1$1 ==.
                           1651 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:499: if (gEp0Status.bEpState == EP_TX)
   097B 74 01              1652 	mov	a,#0x01
   097D B5 33 62           1653 	cjne	a,(_gEp0Status + 0x0005),00151$
                    031E   1654 	C$Interrupts.c$504$2$14 ==.
                           1655 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:504: if (gEp0Status.uNumBytes <= EP0_MAXP)
   0980 AB 2F              1656 	mov	r3,(_gEp0Status + 0x0001)
   0982 AC 30              1657 	mov	r4,((_gEp0Status + 0x0001) + 1)
   0984 C3                 1658 	clr	c
   0985 74 40              1659 	mov	a,#0x40
   0987 9B                 1660 	subb	a,r3
   0988 E4                 1661 	clr	a
   0989 9C                 1662 	subb	a,r4
   098A 40 0F              1663 	jc	00144$
                    032A   1664 	C$Interrupts.c$506$3$15 ==.
                           1665 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:506: uTxBytes = gEp0Status.uNumBytes;
   098C 8B 05              1666 	mov	ar5,r3
                    032C   1667 	C$Interrupts.c$507$3$15 ==.
                           1668 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:507: gEp0Status.uNumBytes = 0;        // update byte counter
   098E 75 2F 00           1669 	mov	(_gEp0Status + 0x0001),#0x00
   0991 75 30 00           1670 	mov	((_gEp0Status + 0x0001) + 1),#0x00
                    0332   1671 	C$Interrupts.c$508$3$15 ==.
                           1672 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:508: bTemp |= rbDATAEND;              // This will be the last
   0994 7A 08              1673 	mov	r2,#0x08
                    0334   1674 	C$Interrupts.c$510$3$15 ==.
                           1675 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:510: gEp0Status.bEpState = EP_IDLE;   // Reset endpoint state
   0996 75 33 00           1676 	mov	(_gEp0Status + 0x0005),#0x00
   0999 80 0E              1677 	sjmp	00145$
   099B                    1678 00144$:
                    0339   1679 	C$Interrupts.c$516$3$16 ==.
                           1680 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:516: uTxBytes = EP0_MAXP;
   099B 7D 40              1681 	mov	r5,#0x40
                    033B   1682 	C$Interrupts.c$517$3$16 ==.
                           1683 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:517: gEp0Status.uNumBytes -= EP0_MAXP;// update byte counter
   099D EB                 1684 	mov	a,r3
   099E 24 C0              1685 	add	a,#0xc0
   09A0 FB                 1686 	mov	r3,a
   09A1 EC                 1687 	mov	a,r4
   09A2 34 FF              1688 	addc	a,#0xff
   09A4 FC                 1689 	mov	r4,a
   09A5 8B 2F              1690 	mov	(_gEp0Status + 0x0001),r3
   09A7 8C 30              1691 	mov	((_gEp0Status + 0x0001) + 1),r4
   09A9                    1692 00145$:
                    0347   1693 	C$Interrupts.c$521$2$14 ==.
                           1694 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:521: FIFOWrite(0, uTxBytes, (BYTE*)gEp0Status.pData);
   09A9 8D 57              1695 	mov	_FIFOWrite_PARM_2,r5
   09AB 75 58 00           1696 	mov	(_FIFOWrite_PARM_2 + 1),#0x00
   09AE 85 34 59           1697 	mov	_FIFOWrite_PARM_3,(_gEp0Status + 0x0006)
   09B1 85 35 5A           1698 	mov	(_FIFOWrite_PARM_3 + 1),((_gEp0Status + 0x0006) + 1)
   09B4 85 36 5B           1699 	mov	(_FIFOWrite_PARM_3 + 2),((_gEp0Status + 0x0006) + 2)
   09B7 75 82 00           1700 	mov	dpl,#0x00
   09BA C0 02              1701 	push	ar2
   09BC C0 05              1702 	push	ar5
   09BE 12 06 1D           1703 	lcall	_FIFOWrite
   09C1 D0 05              1704 	pop	ar5
   09C3 D0 02              1705 	pop	ar2
                    0363   1706 	C$Interrupts.c$524$2$14 ==.
                           1707 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:524: gEp0Status.pData = (BYTE*)gEp0Status.pData + uTxBytes;
   09C5 ED                 1708 	mov	a,r5
   09C6 25 34              1709 	add	a,(_gEp0Status + 0x0006)
   09C8 FD                 1710 	mov	r5,a
   09C9 E4                 1711 	clr	a
   09CA 35 35              1712 	addc	a,((_gEp0Status + 0x0006) + 1)
   09CC FB                 1713 	mov	r3,a
   09CD AC 36              1714 	mov	r4,((_gEp0Status + 0x0006) + 2)
   09CF 8D 34              1715 	mov	(_gEp0Status + 0x0006),r5
   09D1 8B 35              1716 	mov	((_gEp0Status + 0x0006) + 1),r3
   09D3 8C 36              1717 	mov	((_gEp0Status + 0x0006) + 2),r4
                    0373   1718 	C$Interrupts.c$527$2$14 ==.
                           1719 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:527: bTemp |= rbINPRDY;                  // Always transmit a packet
   09D5 43 02 02           1720 	orl	ar2,#0x02
                    0376   1721 	C$Interrupts.c$531$3$17 ==.
                           1722 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:531: UWRITE_BYTE(E0CSR, bTemp);          // Write to Endpoint0 Control/Status
   09D8 75 96 11           1723 	mov	_USB0ADR,#0x11
   09DB 8A 97              1724 	mov	_USB0DAT,r2
   09DD                    1725 00146$:
   09DD E5 96              1726 	mov	a,_USB0ADR
   09DF 20 E7 FB           1727 	jb	acc.7,00146$
   09E2                    1728 00151$:
                    0380   1729 	C$Interrupts.c$533$3$1 ==.
                    0380   1730 	XG$Endpoint0$0$0 ==.
   09E2 22                 1731 	ret
                           1732 	.area CSEG    (CODE)
                           1733 	.area CONST   (CODE)
                           1734 	.area XINIT   (CODE)
                           1735 	.area CABS    (ABS,CODE)
