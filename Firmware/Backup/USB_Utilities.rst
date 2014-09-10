                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sun Sep 12 11:13:35 2010
                              5 ;--------------------------------------------------------
                              6 	.module USB_Utilities
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _FIFOWrite_PARM_3
                             13 	.globl _FIFOWrite_PARM_2
                             14 	.globl _FIFORead_PARM_3
                             15 	.globl _FIFORead_PARM_2
                             16 	.globl _bC2D
                             17 	.globl _bC2CK
                             18 	.globl _bVBUS
                             19 	.globl _bRegIn
                             20 	.globl _bVDD
                             21 	.globl _bDn1
                             22 	.globl _bDp1
                             23 	.globl _bGND
                             24 	.globl _bPos
                             25 	.globl _bNotADCCs
                             26 	.globl _bNC3
                             27 	.globl _bOutputEnable
                             28 	.globl _bRedLED
                             29 	.globl _bGreenLED
                             30 	.globl _bNotRAMCS
                             31 	.globl _bNotRAMHold
                             32 	.globl _bIn_TTL
                             33 	.globl _bOut_TTL
                             34 	.globl _bLaser
                             35 	.globl _bNC0
                             36 	.globl _bNotDACCs
                             37 	.globl _bNC1
                             38 	.globl _bNC2
                             39 	.globl _bCal
                             40 	.globl _bSck
                             41 	.globl _bMiso
                             42 	.globl _bMosi
                             43 	.globl _bMtr2Dir
                             44 	.globl _bMtr2Step
                             45 	.globl _bMtrDrvrEn
                             46 	.globl _bMtr1Dir
                             47 	.globl _bMtr1Step
                             48 	.globl _SPIEN
                             49 	.globl _TXBMT
                             50 	.globl _NSSMD0
                             51 	.globl _NSSMD1
                             52 	.globl _RXOVRN
                             53 	.globl _MODF
                             54 	.globl _WCOL
                             55 	.globl _SPIF
                             56 	.globl _AD0CM0
                             57 	.globl _AD0CM1
                             58 	.globl _AD0CM2
                             59 	.globl _AD0WINT
                             60 	.globl _AD0BUSY
                             61 	.globl _AD0INT
                             62 	.globl _AD0TM
                             63 	.globl _AD0EN
                             64 	.globl _CCF0
                             65 	.globl _CCF1
                             66 	.globl _CCF2
                             67 	.globl _CCF3
                             68 	.globl _CCF4
                             69 	.globl _CR
                             70 	.globl _CF
                             71 	.globl _P
                             72 	.globl _F1
                             73 	.globl _OV
                             74 	.globl _RS0
                             75 	.globl _RS1
                             76 	.globl _F0
                             77 	.globl _AC
                             78 	.globl _CY
                             79 	.globl _T2XCLK
                             80 	.globl _TR2
                             81 	.globl _T2SPLIT
                             82 	.globl _T2SOF
                             83 	.globl _TF2LEN
                             84 	.globl _TF2L
                             85 	.globl _TF2H
                             86 	.globl _SI
                             87 	.globl _ACK
                             88 	.globl _ARBLOST
                             89 	.globl _ACKRQ
                             90 	.globl _STO
                             91 	.globl _STA
                             92 	.globl _TXMODE
                             93 	.globl _MASTER
                             94 	.globl _PX0
                             95 	.globl _PT0
                             96 	.globl _PX1
                             97 	.globl _PT1
                             98 	.globl _PS0
                             99 	.globl _PT2
                            100 	.globl _PSPI0
                            101 	.globl _EX0
                            102 	.globl _ET0
                            103 	.globl _EX1
                            104 	.globl _ET1
                            105 	.globl _ES0
                            106 	.globl _ET2
                            107 	.globl _ESPI0
                            108 	.globl _EA
                            109 	.globl _RI0
                            110 	.globl _TI0
                            111 	.globl _RB80
                            112 	.globl _TB80
                            113 	.globl _REN0
                            114 	.globl _MCE0
                            115 	.globl _S0MODE
                            116 	.globl _IT0
                            117 	.globl _IE0
                            118 	.globl _IT1
                            119 	.globl _IE1
                            120 	.globl _TR0
                            121 	.globl _TF0
                            122 	.globl _TR1
                            123 	.globl _TF1
                            124 	.globl _PCA0CP4
                            125 	.globl _PCA0CP0
                            126 	.globl _PCA0
                            127 	.globl _PCA0CP3
                            128 	.globl _PCA0CP2
                            129 	.globl _PCA0CP1
                            130 	.globl _TMR2
                            131 	.globl _TMR2RL
                            132 	.globl _ADC0LT
                            133 	.globl _ADC0GT
                            134 	.globl _ADC0
                            135 	.globl _TMR3
                            136 	.globl _TMR3RL
                            137 	.globl _DP
                            138 	.globl _VDM0CN
                            139 	.globl _PCA0CPH4
                            140 	.globl _PCA0CPL4
                            141 	.globl _PCA0CPH0
                            142 	.globl _PCA0CPL0
                            143 	.globl _PCA0H
                            144 	.globl _PCA0L
                            145 	.globl _SPI0CN
                            146 	.globl _EIP2
                            147 	.globl _EIP1
                            148 	.globl _P3MDIN
                            149 	.globl _P2MDIN
                            150 	.globl _P1MDIN
                            151 	.globl _P0MDIN
                            152 	.globl _B
                            153 	.globl _RSTSRC
                            154 	.globl _PCA0CPH3
                            155 	.globl _PCA0CPL3
                            156 	.globl _PCA0CPH2
                            157 	.globl _PCA0CPL2
                            158 	.globl _PCA0CPH1
                            159 	.globl _PCA0CPL1
                            160 	.globl _ADC0CN
                            161 	.globl _EIE2
                            162 	.globl _EIE1
                            163 	.globl _IT01CF
                            164 	.globl _XBR1
                            165 	.globl _XBR0
                            166 	.globl _ACC
                            167 	.globl _PCA0CPM4
                            168 	.globl _PCA0CPM3
                            169 	.globl _PCA0CPM2
                            170 	.globl _PCA0CPM1
                            171 	.globl _PCA0CPM0
                            172 	.globl _PCA0MD
                            173 	.globl _PCA0CN
                            174 	.globl _USB0XCN
                            175 	.globl _P2SKIP
                            176 	.globl _P1SKIP
                            177 	.globl _P0SKIP
                            178 	.globl _REF0CN
                            179 	.globl _PSW
                            180 	.globl _TMR2H
                            181 	.globl _TMR2L
                            182 	.globl _TMR2RLH
                            183 	.globl _TMR2RLL
                            184 	.globl _REG0CN
                            185 	.globl _TMR2CN
                            186 	.globl _ADC0LTH
                            187 	.globl _ADC0LTL
                            188 	.globl _ADC0GTH
                            189 	.globl _ADC0GTL
                            190 	.globl _SMB0DAT
                            191 	.globl _SMB0CF
                            192 	.globl _SMB0CN
                            193 	.globl _ADC0H
                            194 	.globl _ADC0L
                            195 	.globl _ADC0CF
                            196 	.globl _AMX0P
                            197 	.globl _AMX0N
                            198 	.globl _CLKMUL
                            199 	.globl _IP
                            200 	.globl _FLKEY
                            201 	.globl _FLSCL
                            202 	.globl _OSCICL
                            203 	.globl _OSCICN
                            204 	.globl _OSCXCN
                            205 	.globl _P3
                            206 	.globl _EMI0CN
                            207 	.globl _CLKSEL
                            208 	.globl _IE
                            209 	.globl _P3MDOUT
                            210 	.globl _P2MDOUT
                            211 	.globl _P1MDOUT
                            212 	.globl _P0MDOUT
                            213 	.globl _SPI0DAT
                            214 	.globl _SPIDAT
                            215 	.globl _SPI0CKR
                            216 	.globl _SPICKR
                            217 	.globl _SPI0CFG
                            218 	.globl _SPICFG
                            219 	.globl _P2
                            220 	.globl _CPT0MX
                            221 	.globl _CPT1MX
                            222 	.globl _CPT0MD
                            223 	.globl _CPT1MD
                            224 	.globl _CPT0CN
                            225 	.globl _CPT1CN
                            226 	.globl _SBUF0
                            227 	.globl _SCON0
                            228 	.globl _USB0DAT
                            229 	.globl _USB0ADR
                            230 	.globl _TMR3H
                            231 	.globl _TMR3L
                            232 	.globl _TMR3RLH
                            233 	.globl _TMR3RLL
                            234 	.globl _TMR3CN
                            235 	.globl _P1
                            236 	.globl _PSCTL
                            237 	.globl _CKCON
                            238 	.globl _TH1
                            239 	.globl _TH0
                            240 	.globl _TL1
                            241 	.globl _TL0
                            242 	.globl _TMOD
                            243 	.globl _TCON
                            244 	.globl _PCON
                            245 	.globl _DPH
                            246 	.globl _DPL
                            247 	.globl _SP
                            248 	.globl _P0
                            249 	.globl _HaltEndpoint
                            250 	.globl _EnableEndpoint
                            251 	.globl _GetEpStatus
                            252 	.globl _SetConfiguration
                            253 	.globl _SetInterface
                            254 	.globl _FIFORead
                            255 	.globl _FIFOWrite
                            256 ;--------------------------------------------------------
                            257 ; special function registers
                            258 ;--------------------------------------------------------
                            259 	.area RSEG    (DATA)
                    0080    260 G$P0$0$0 == 0x0080
                    0080    261 _P0	=	0x0080
                    0081    262 G$SP$0$0 == 0x0081
                    0081    263 _SP	=	0x0081
                    0082    264 G$DPL$0$0 == 0x0082
                    0082    265 _DPL	=	0x0082
                    0083    266 G$DPH$0$0 == 0x0083
                    0083    267 _DPH	=	0x0083
                    0087    268 G$PCON$0$0 == 0x0087
                    0087    269 _PCON	=	0x0087
                    0088    270 G$TCON$0$0 == 0x0088
                    0088    271 _TCON	=	0x0088
                    0089    272 G$TMOD$0$0 == 0x0089
                    0089    273 _TMOD	=	0x0089
                    008A    274 G$TL0$0$0 == 0x008a
                    008A    275 _TL0	=	0x008a
                    008B    276 G$TL1$0$0 == 0x008b
                    008B    277 _TL1	=	0x008b
                    008C    278 G$TH0$0$0 == 0x008c
                    008C    279 _TH0	=	0x008c
                    008D    280 G$TH1$0$0 == 0x008d
                    008D    281 _TH1	=	0x008d
                    008E    282 G$CKCON$0$0 == 0x008e
                    008E    283 _CKCON	=	0x008e
                    008F    284 G$PSCTL$0$0 == 0x008f
                    008F    285 _PSCTL	=	0x008f
                    0090    286 G$P1$0$0 == 0x0090
                    0090    287 _P1	=	0x0090
                    0091    288 G$TMR3CN$0$0 == 0x0091
                    0091    289 _TMR3CN	=	0x0091
                    0092    290 G$TMR3RLL$0$0 == 0x0092
                    0092    291 _TMR3RLL	=	0x0092
                    0093    292 G$TMR3RLH$0$0 == 0x0093
                    0093    293 _TMR3RLH	=	0x0093
                    0094    294 G$TMR3L$0$0 == 0x0094
                    0094    295 _TMR3L	=	0x0094
                    0095    296 G$TMR3H$0$0 == 0x0095
                    0095    297 _TMR3H	=	0x0095
                    0096    298 G$USB0ADR$0$0 == 0x0096
                    0096    299 _USB0ADR	=	0x0096
                    0097    300 G$USB0DAT$0$0 == 0x0097
                    0097    301 _USB0DAT	=	0x0097
                    0098    302 G$SCON0$0$0 == 0x0098
                    0098    303 _SCON0	=	0x0098
                    0099    304 G$SBUF0$0$0 == 0x0099
                    0099    305 _SBUF0	=	0x0099
                    009A    306 G$CPT1CN$0$0 == 0x009a
                    009A    307 _CPT1CN	=	0x009a
                    009B    308 G$CPT0CN$0$0 == 0x009b
                    009B    309 _CPT0CN	=	0x009b
                    009C    310 G$CPT1MD$0$0 == 0x009c
                    009C    311 _CPT1MD	=	0x009c
                    009D    312 G$CPT0MD$0$0 == 0x009d
                    009D    313 _CPT0MD	=	0x009d
                    009E    314 G$CPT1MX$0$0 == 0x009e
                    009E    315 _CPT1MX	=	0x009e
                    009F    316 G$CPT0MX$0$0 == 0x009f
                    009F    317 _CPT0MX	=	0x009f
                    00A0    318 G$P2$0$0 == 0x00a0
                    00A0    319 _P2	=	0x00a0
                    00A1    320 G$SPICFG$0$0 == 0x00a1
                    00A1    321 _SPICFG	=	0x00a1
                    00A1    322 G$SPI0CFG$0$0 == 0x00a1
                    00A1    323 _SPI0CFG	=	0x00a1
                    00A2    324 G$SPICKR$0$0 == 0x00a2
                    00A2    325 _SPICKR	=	0x00a2
                    00A2    326 G$SPI0CKR$0$0 == 0x00a2
                    00A2    327 _SPI0CKR	=	0x00a2
                    00A3    328 G$SPIDAT$0$0 == 0x00a3
                    00A3    329 _SPIDAT	=	0x00a3
                    00A3    330 G$SPI0DAT$0$0 == 0x00a3
                    00A3    331 _SPI0DAT	=	0x00a3
                    00A4    332 G$P0MDOUT$0$0 == 0x00a4
                    00A4    333 _P0MDOUT	=	0x00a4
                    00A5    334 G$P1MDOUT$0$0 == 0x00a5
                    00A5    335 _P1MDOUT	=	0x00a5
                    00A6    336 G$P2MDOUT$0$0 == 0x00a6
                    00A6    337 _P2MDOUT	=	0x00a6
                    00A7    338 G$P3MDOUT$0$0 == 0x00a7
                    00A7    339 _P3MDOUT	=	0x00a7
                    00A8    340 G$IE$0$0 == 0x00a8
                    00A8    341 _IE	=	0x00a8
                    00A9    342 G$CLKSEL$0$0 == 0x00a9
                    00A9    343 _CLKSEL	=	0x00a9
                    00AA    344 G$EMI0CN$0$0 == 0x00aa
                    00AA    345 _EMI0CN	=	0x00aa
                    00B0    346 G$P3$0$0 == 0x00b0
                    00B0    347 _P3	=	0x00b0
                    00B1    348 G$OSCXCN$0$0 == 0x00b1
                    00B1    349 _OSCXCN	=	0x00b1
                    00B2    350 G$OSCICN$0$0 == 0x00b2
                    00B2    351 _OSCICN	=	0x00b2
                    00B3    352 G$OSCICL$0$0 == 0x00b3
                    00B3    353 _OSCICL	=	0x00b3
                    00B6    354 G$FLSCL$0$0 == 0x00b6
                    00B6    355 _FLSCL	=	0x00b6
                    00B7    356 G$FLKEY$0$0 == 0x00b7
                    00B7    357 _FLKEY	=	0x00b7
                    00B8    358 G$IP$0$0 == 0x00b8
                    00B8    359 _IP	=	0x00b8
                    00B9    360 G$CLKMUL$0$0 == 0x00b9
                    00B9    361 _CLKMUL	=	0x00b9
                    00BA    362 G$AMX0N$0$0 == 0x00ba
                    00BA    363 _AMX0N	=	0x00ba
                    00BB    364 G$AMX0P$0$0 == 0x00bb
                    00BB    365 _AMX0P	=	0x00bb
                    00BC    366 G$ADC0CF$0$0 == 0x00bc
                    00BC    367 _ADC0CF	=	0x00bc
                    00BD    368 G$ADC0L$0$0 == 0x00bd
                    00BD    369 _ADC0L	=	0x00bd
                    00BE    370 G$ADC0H$0$0 == 0x00be
                    00BE    371 _ADC0H	=	0x00be
                    00C0    372 G$SMB0CN$0$0 == 0x00c0
                    00C0    373 _SMB0CN	=	0x00c0
                    00C1    374 G$SMB0CF$0$0 == 0x00c1
                    00C1    375 _SMB0CF	=	0x00c1
                    00C2    376 G$SMB0DAT$0$0 == 0x00c2
                    00C2    377 _SMB0DAT	=	0x00c2
                    00C3    378 G$ADC0GTL$0$0 == 0x00c3
                    00C3    379 _ADC0GTL	=	0x00c3
                    00C4    380 G$ADC0GTH$0$0 == 0x00c4
                    00C4    381 _ADC0GTH	=	0x00c4
                    00C5    382 G$ADC0LTL$0$0 == 0x00c5
                    00C5    383 _ADC0LTL	=	0x00c5
                    00C6    384 G$ADC0LTH$0$0 == 0x00c6
                    00C6    385 _ADC0LTH	=	0x00c6
                    00C8    386 G$TMR2CN$0$0 == 0x00c8
                    00C8    387 _TMR2CN	=	0x00c8
                    00C9    388 G$REG0CN$0$0 == 0x00c9
                    00C9    389 _REG0CN	=	0x00c9
                    00CA    390 G$TMR2RLL$0$0 == 0x00ca
                    00CA    391 _TMR2RLL	=	0x00ca
                    00CB    392 G$TMR2RLH$0$0 == 0x00cb
                    00CB    393 _TMR2RLH	=	0x00cb
                    00CC    394 G$TMR2L$0$0 == 0x00cc
                    00CC    395 _TMR2L	=	0x00cc
                    00CD    396 G$TMR2H$0$0 == 0x00cd
                    00CD    397 _TMR2H	=	0x00cd
                    00D0    398 G$PSW$0$0 == 0x00d0
                    00D0    399 _PSW	=	0x00d0
                    00D1    400 G$REF0CN$0$0 == 0x00d1
                    00D1    401 _REF0CN	=	0x00d1
                    00D4    402 G$P0SKIP$0$0 == 0x00d4
                    00D4    403 _P0SKIP	=	0x00d4
                    00D5    404 G$P1SKIP$0$0 == 0x00d5
                    00D5    405 _P1SKIP	=	0x00d5
                    00D6    406 G$P2SKIP$0$0 == 0x00d6
                    00D6    407 _P2SKIP	=	0x00d6
                    00D7    408 G$USB0XCN$0$0 == 0x00d7
                    00D7    409 _USB0XCN	=	0x00d7
                    00D8    410 G$PCA0CN$0$0 == 0x00d8
                    00D8    411 _PCA0CN	=	0x00d8
                    00D9    412 G$PCA0MD$0$0 == 0x00d9
                    00D9    413 _PCA0MD	=	0x00d9
                    00DA    414 G$PCA0CPM0$0$0 == 0x00da
                    00DA    415 _PCA0CPM0	=	0x00da
                    00DB    416 G$PCA0CPM1$0$0 == 0x00db
                    00DB    417 _PCA0CPM1	=	0x00db
                    00DC    418 G$PCA0CPM2$0$0 == 0x00dc
                    00DC    419 _PCA0CPM2	=	0x00dc
                    00DD    420 G$PCA0CPM3$0$0 == 0x00dd
                    00DD    421 _PCA0CPM3	=	0x00dd
                    00DE    422 G$PCA0CPM4$0$0 == 0x00de
                    00DE    423 _PCA0CPM4	=	0x00de
                    00E0    424 G$ACC$0$0 == 0x00e0
                    00E0    425 _ACC	=	0x00e0
                    00E1    426 G$XBR0$0$0 == 0x00e1
                    00E1    427 _XBR0	=	0x00e1
                    00E2    428 G$XBR1$0$0 == 0x00e2
                    00E2    429 _XBR1	=	0x00e2
                    00E4    430 G$IT01CF$0$0 == 0x00e4
                    00E4    431 _IT01CF	=	0x00e4
                    00E6    432 G$EIE1$0$0 == 0x00e6
                    00E6    433 _EIE1	=	0x00e6
                    00E7    434 G$EIE2$0$0 == 0x00e7
                    00E7    435 _EIE2	=	0x00e7
                    00E8    436 G$ADC0CN$0$0 == 0x00e8
                    00E8    437 _ADC0CN	=	0x00e8
                    00E9    438 G$PCA0CPL1$0$0 == 0x00e9
                    00E9    439 _PCA0CPL1	=	0x00e9
                    00EA    440 G$PCA0CPH1$0$0 == 0x00ea
                    00EA    441 _PCA0CPH1	=	0x00ea
                    00EB    442 G$PCA0CPL2$0$0 == 0x00eb
                    00EB    443 _PCA0CPL2	=	0x00eb
                    00EC    444 G$PCA0CPH2$0$0 == 0x00ec
                    00EC    445 _PCA0CPH2	=	0x00ec
                    00ED    446 G$PCA0CPL3$0$0 == 0x00ed
                    00ED    447 _PCA0CPL3	=	0x00ed
                    00EE    448 G$PCA0CPH3$0$0 == 0x00ee
                    00EE    449 _PCA0CPH3	=	0x00ee
                    00EF    450 G$RSTSRC$0$0 == 0x00ef
                    00EF    451 _RSTSRC	=	0x00ef
                    00F0    452 G$B$0$0 == 0x00f0
                    00F0    453 _B	=	0x00f0
                    00F1    454 G$P0MDIN$0$0 == 0x00f1
                    00F1    455 _P0MDIN	=	0x00f1
                    00F2    456 G$P1MDIN$0$0 == 0x00f2
                    00F2    457 _P1MDIN	=	0x00f2
                    00F3    458 G$P2MDIN$0$0 == 0x00f3
                    00F3    459 _P2MDIN	=	0x00f3
                    00F4    460 G$P3MDIN$0$0 == 0x00f4
                    00F4    461 _P3MDIN	=	0x00f4
                    00F6    462 G$EIP1$0$0 == 0x00f6
                    00F6    463 _EIP1	=	0x00f6
                    00F7    464 G$EIP2$0$0 == 0x00f7
                    00F7    465 _EIP2	=	0x00f7
                    00F8    466 G$SPI0CN$0$0 == 0x00f8
                    00F8    467 _SPI0CN	=	0x00f8
                    00F9    468 G$PCA0L$0$0 == 0x00f9
                    00F9    469 _PCA0L	=	0x00f9
                    00FA    470 G$PCA0H$0$0 == 0x00fa
                    00FA    471 _PCA0H	=	0x00fa
                    00FB    472 G$PCA0CPL0$0$0 == 0x00fb
                    00FB    473 _PCA0CPL0	=	0x00fb
                    00FC    474 G$PCA0CPH0$0$0 == 0x00fc
                    00FC    475 _PCA0CPH0	=	0x00fc
                    00FD    476 G$PCA0CPL4$0$0 == 0x00fd
                    00FD    477 _PCA0CPL4	=	0x00fd
                    00FE    478 G$PCA0CPH4$0$0 == 0x00fe
                    00FE    479 _PCA0CPH4	=	0x00fe
                    00FF    480 G$VDM0CN$0$0 == 0x00ff
                    00FF    481 _VDM0CN	=	0x00ff
                    8382    482 G$DP$0$0 == 0x8382
                    8382    483 _DP	=	0x8382
                    9392    484 G$TMR3RL$0$0 == 0x9392
                    9392    485 _TMR3RL	=	0x9392
                    9594    486 G$TMR3$0$0 == 0x9594
                    9594    487 _TMR3	=	0x9594
                    BEBD    488 G$ADC0$0$0 == 0xbebd
                    BEBD    489 _ADC0	=	0xbebd
                    C4C3    490 G$ADC0GT$0$0 == 0xc4c3
                    C4C3    491 _ADC0GT	=	0xc4c3
                    C6C5    492 G$ADC0LT$0$0 == 0xc6c5
                    C6C5    493 _ADC0LT	=	0xc6c5
                    CBCA    494 G$TMR2RL$0$0 == 0xcbca
                    CBCA    495 _TMR2RL	=	0xcbca
                    CDCC    496 G$TMR2$0$0 == 0xcdcc
                    CDCC    497 _TMR2	=	0xcdcc
                    EAE9    498 G$PCA0CP1$0$0 == 0xeae9
                    EAE9    499 _PCA0CP1	=	0xeae9
                    ECEB    500 G$PCA0CP2$0$0 == 0xeceb
                    ECEB    501 _PCA0CP2	=	0xeceb
                    EEED    502 G$PCA0CP3$0$0 == 0xeeed
                    EEED    503 _PCA0CP3	=	0xeeed
                    FAF9    504 G$PCA0$0$0 == 0xfaf9
                    FAF9    505 _PCA0	=	0xfaf9
                    FCFB    506 G$PCA0CP0$0$0 == 0xfcfb
                    FCFB    507 _PCA0CP0	=	0xfcfb
                    FEFD    508 G$PCA0CP4$0$0 == 0xfefd
                    FEFD    509 _PCA0CP4	=	0xfefd
                            510 ;--------------------------------------------------------
                            511 ; special function bits
                            512 ;--------------------------------------------------------
                            513 	.area RSEG    (DATA)
                    008F    514 G$TF1$0$0 == 0x008f
                    008F    515 _TF1	=	0x008f
                    008E    516 G$TR1$0$0 == 0x008e
                    008E    517 _TR1	=	0x008e
                    008D    518 G$TF0$0$0 == 0x008d
                    008D    519 _TF0	=	0x008d
                    008C    520 G$TR0$0$0 == 0x008c
                    008C    521 _TR0	=	0x008c
                    008B    522 G$IE1$0$0 == 0x008b
                    008B    523 _IE1	=	0x008b
                    008A    524 G$IT1$0$0 == 0x008a
                    008A    525 _IT1	=	0x008a
                    0089    526 G$IE0$0$0 == 0x0089
                    0089    527 _IE0	=	0x0089
                    0088    528 G$IT0$0$0 == 0x0088
                    0088    529 _IT0	=	0x0088
                    009F    530 G$S0MODE$0$0 == 0x009f
                    009F    531 _S0MODE	=	0x009f
                    009D    532 G$MCE0$0$0 == 0x009d
                    009D    533 _MCE0	=	0x009d
                    009C    534 G$REN0$0$0 == 0x009c
                    009C    535 _REN0	=	0x009c
                    009B    536 G$TB80$0$0 == 0x009b
                    009B    537 _TB80	=	0x009b
                    009A    538 G$RB80$0$0 == 0x009a
                    009A    539 _RB80	=	0x009a
                    0099    540 G$TI0$0$0 == 0x0099
                    0099    541 _TI0	=	0x0099
                    0098    542 G$RI0$0$0 == 0x0098
                    0098    543 _RI0	=	0x0098
                    00AF    544 G$EA$0$0 == 0x00af
                    00AF    545 _EA	=	0x00af
                    00AE    546 G$ESPI0$0$0 == 0x00ae
                    00AE    547 _ESPI0	=	0x00ae
                    00AD    548 G$ET2$0$0 == 0x00ad
                    00AD    549 _ET2	=	0x00ad
                    00AC    550 G$ES0$0$0 == 0x00ac
                    00AC    551 _ES0	=	0x00ac
                    00AB    552 G$ET1$0$0 == 0x00ab
                    00AB    553 _ET1	=	0x00ab
                    00AA    554 G$EX1$0$0 == 0x00aa
                    00AA    555 _EX1	=	0x00aa
                    00A9    556 G$ET0$0$0 == 0x00a9
                    00A9    557 _ET0	=	0x00a9
                    00A8    558 G$EX0$0$0 == 0x00a8
                    00A8    559 _EX0	=	0x00a8
                    00BE    560 G$PSPI0$0$0 == 0x00be
                    00BE    561 _PSPI0	=	0x00be
                    00BD    562 G$PT2$0$0 == 0x00bd
                    00BD    563 _PT2	=	0x00bd
                    00BC    564 G$PS0$0$0 == 0x00bc
                    00BC    565 _PS0	=	0x00bc
                    00BB    566 G$PT1$0$0 == 0x00bb
                    00BB    567 _PT1	=	0x00bb
                    00BA    568 G$PX1$0$0 == 0x00ba
                    00BA    569 _PX1	=	0x00ba
                    00B9    570 G$PT0$0$0 == 0x00b9
                    00B9    571 _PT0	=	0x00b9
                    00B8    572 G$PX0$0$0 == 0x00b8
                    00B8    573 _PX0	=	0x00b8
                    00C7    574 G$MASTER$0$0 == 0x00c7
                    00C7    575 _MASTER	=	0x00c7
                    00C6    576 G$TXMODE$0$0 == 0x00c6
                    00C6    577 _TXMODE	=	0x00c6
                    00C5    578 G$STA$0$0 == 0x00c5
                    00C5    579 _STA	=	0x00c5
                    00C4    580 G$STO$0$0 == 0x00c4
                    00C4    581 _STO	=	0x00c4
                    00C3    582 G$ACKRQ$0$0 == 0x00c3
                    00C3    583 _ACKRQ	=	0x00c3
                    00C2    584 G$ARBLOST$0$0 == 0x00c2
                    00C2    585 _ARBLOST	=	0x00c2
                    00C1    586 G$ACK$0$0 == 0x00c1
                    00C1    587 _ACK	=	0x00c1
                    00C0    588 G$SI$0$0 == 0x00c0
                    00C0    589 _SI	=	0x00c0
                    00CF    590 G$TF2H$0$0 == 0x00cf
                    00CF    591 _TF2H	=	0x00cf
                    00CE    592 G$TF2L$0$0 == 0x00ce
                    00CE    593 _TF2L	=	0x00ce
                    00CD    594 G$TF2LEN$0$0 == 0x00cd
                    00CD    595 _TF2LEN	=	0x00cd
                    00CC    596 G$T2SOF$0$0 == 0x00cc
                    00CC    597 _T2SOF	=	0x00cc
                    00CB    598 G$T2SPLIT$0$0 == 0x00cb
                    00CB    599 _T2SPLIT	=	0x00cb
                    00CA    600 G$TR2$0$0 == 0x00ca
                    00CA    601 _TR2	=	0x00ca
                    00C8    602 G$T2XCLK$0$0 == 0x00c8
                    00C8    603 _T2XCLK	=	0x00c8
                    00D7    604 G$CY$0$0 == 0x00d7
                    00D7    605 _CY	=	0x00d7
                    00D6    606 G$AC$0$0 == 0x00d6
                    00D6    607 _AC	=	0x00d6
                    00D5    608 G$F0$0$0 == 0x00d5
                    00D5    609 _F0	=	0x00d5
                    00D4    610 G$RS1$0$0 == 0x00d4
                    00D4    611 _RS1	=	0x00d4
                    00D3    612 G$RS0$0$0 == 0x00d3
                    00D3    613 _RS0	=	0x00d3
                    00D2    614 G$OV$0$0 == 0x00d2
                    00D2    615 _OV	=	0x00d2
                    00D1    616 G$F1$0$0 == 0x00d1
                    00D1    617 _F1	=	0x00d1
                    00D0    618 G$P$0$0 == 0x00d0
                    00D0    619 _P	=	0x00d0
                    00DF    620 G$CF$0$0 == 0x00df
                    00DF    621 _CF	=	0x00df
                    00DE    622 G$CR$0$0 == 0x00de
                    00DE    623 _CR	=	0x00de
                    00DC    624 G$CCF4$0$0 == 0x00dc
                    00DC    625 _CCF4	=	0x00dc
                    00DB    626 G$CCF3$0$0 == 0x00db
                    00DB    627 _CCF3	=	0x00db
                    00DA    628 G$CCF2$0$0 == 0x00da
                    00DA    629 _CCF2	=	0x00da
                    00D9    630 G$CCF1$0$0 == 0x00d9
                    00D9    631 _CCF1	=	0x00d9
                    00D8    632 G$CCF0$0$0 == 0x00d8
                    00D8    633 _CCF0	=	0x00d8
                    00EF    634 G$AD0EN$0$0 == 0x00ef
                    00EF    635 _AD0EN	=	0x00ef
                    00EE    636 G$AD0TM$0$0 == 0x00ee
                    00EE    637 _AD0TM	=	0x00ee
                    00ED    638 G$AD0INT$0$0 == 0x00ed
                    00ED    639 _AD0INT	=	0x00ed
                    00EC    640 G$AD0BUSY$0$0 == 0x00ec
                    00EC    641 _AD0BUSY	=	0x00ec
                    00EB    642 G$AD0WINT$0$0 == 0x00eb
                    00EB    643 _AD0WINT	=	0x00eb
                    00EA    644 G$AD0CM2$0$0 == 0x00ea
                    00EA    645 _AD0CM2	=	0x00ea
                    00E9    646 G$AD0CM1$0$0 == 0x00e9
                    00E9    647 _AD0CM1	=	0x00e9
                    00E8    648 G$AD0CM0$0$0 == 0x00e8
                    00E8    649 _AD0CM0	=	0x00e8
                    00FF    650 G$SPIF$0$0 == 0x00ff
                    00FF    651 _SPIF	=	0x00ff
                    00FE    652 G$WCOL$0$0 == 0x00fe
                    00FE    653 _WCOL	=	0x00fe
                    00FD    654 G$MODF$0$0 == 0x00fd
                    00FD    655 _MODF	=	0x00fd
                    00FC    656 G$RXOVRN$0$0 == 0x00fc
                    00FC    657 _RXOVRN	=	0x00fc
                    00FB    658 G$NSSMD1$0$0 == 0x00fb
                    00FB    659 _NSSMD1	=	0x00fb
                    00FA    660 G$NSSMD0$0$0 == 0x00fa
                    00FA    661 _NSSMD0	=	0x00fa
                    00F9    662 G$TXBMT$0$0 == 0x00f9
                    00F9    663 _TXBMT	=	0x00f9
                    00F8    664 G$SPIEN$0$0 == 0x00f8
                    00F8    665 _SPIEN	=	0x00f8
                    0087    666 G$bMtr1Step$0$0 == 0x0087
                    0087    667 _bMtr1Step	=	0x0087
                    0086    668 G$bMtr1Dir$0$0 == 0x0086
                    0086    669 _bMtr1Dir	=	0x0086
                    0085    670 G$bMtrDrvrEn$0$0 == 0x0085
                    0085    671 _bMtrDrvrEn	=	0x0085
                    0084    672 G$bMtr2Step$0$0 == 0x0084
                    0084    673 _bMtr2Step	=	0x0084
                    0083    674 G$bMtr2Dir$0$0 == 0x0083
                    0083    675 _bMtr2Dir	=	0x0083
                    0082    676 G$bMosi$0$0 == 0x0082
                    0082    677 _bMosi	=	0x0082
                    0081    678 G$bMiso$0$0 == 0x0081
                    0081    679 _bMiso	=	0x0081
                    0080    680 G$bSck$0$0 == 0x0080
                    0080    681 _bSck	=	0x0080
                    0097    682 G$bCal$0$0 == 0x0097
                    0097    683 _bCal	=	0x0097
                    0096    684 G$bNC2$0$0 == 0x0096
                    0096    685 _bNC2	=	0x0096
                    0095    686 G$bNC1$0$0 == 0x0095
                    0095    687 _bNC1	=	0x0095
                    0094    688 G$bNotDACCs$0$0 == 0x0094
                    0094    689 _bNotDACCs	=	0x0094
                    0093    690 G$bNC0$0$0 == 0x0093
                    0093    691 _bNC0	=	0x0093
                    0092    692 G$bLaser$0$0 == 0x0092
                    0092    693 _bLaser	=	0x0092
                    0091    694 G$bOut_TTL$0$0 == 0x0091
                    0091    695 _bOut_TTL	=	0x0091
                    0090    696 G$bIn_TTL$0$0 == 0x0090
                    0090    697 _bIn_TTL	=	0x0090
                    00A7    698 G$bNotRAMHold$0$0 == 0x00a7
                    00A7    699 _bNotRAMHold	=	0x00a7
                    00A6    700 G$bNotRAMCS$0$0 == 0x00a6
                    00A6    701 _bNotRAMCS	=	0x00a6
                    00A5    702 G$bGreenLED$0$0 == 0x00a5
                    00A5    703 _bGreenLED	=	0x00a5
                    00A4    704 G$bRedLED$0$0 == 0x00a4
                    00A4    705 _bRedLED	=	0x00a4
                    00A3    706 G$bOutputEnable$0$0 == 0x00a3
                    00A3    707 _bOutputEnable	=	0x00a3
                    00A2    708 G$bNC3$0$0 == 0x00a2
                    00A2    709 _bNC3	=	0x00a2
                    00A1    710 G$bNotADCCs$0$0 == 0x00a1
                    00A1    711 _bNotADCCs	=	0x00a1
                    00A0    712 G$bPos$0$0 == 0x00a0
                    00A0    713 _bPos	=	0x00a0
                    00B7    714 G$bGND$0$0 == 0x00b7
                    00B7    715 _bGND	=	0x00b7
                    00B6    716 G$bDp1$0$0 == 0x00b6
                    00B6    717 _bDp1	=	0x00b6
                    00B5    718 G$bDn1$0$0 == 0x00b5
                    00B5    719 _bDn1	=	0x00b5
                    00B4    720 G$bVDD$0$0 == 0x00b4
                    00B4    721 _bVDD	=	0x00b4
                    00B3    722 G$bRegIn$0$0 == 0x00b3
                    00B3    723 _bRegIn	=	0x00b3
                    00B2    724 G$bVBUS$0$0 == 0x00b2
                    00B2    725 _bVBUS	=	0x00b2
                    00B1    726 G$bC2CK$0$0 == 0x00b1
                    00B1    727 _bC2CK	=	0x00b1
                    00B0    728 G$bC2D$0$0 == 0x00b0
                    00B0    729 _bC2D	=	0x00b0
                            730 ;--------------------------------------------------------
                            731 ; overlayable register banks
                            732 ;--------------------------------------------------------
                            733 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     734 	.ds 8
                            735 ;--------------------------------------------------------
                            736 ; internal ram data
                            737 ;--------------------------------------------------------
                            738 	.area DSEG    (DATA)
                            739 ;--------------------------------------------------------
                            740 ; overlayable items in internal ram 
                            741 ;--------------------------------------------------------
                            742 	.area	OSEG    (OVR,DATA)
                            743 	.area	OSEG    (OVR,DATA)
                            744 	.area	OSEG    (OVR,DATA)
                            745 	.area	OSEG    (OVR,DATA)
                            746 	.area	OSEG    (OVR,DATA)
                    0000    747 LFIFORead$uNumBytes$1$1==.
   0057                     748 _FIFORead_PARM_2::
   0057                     749 	.ds 2
                    0002    750 LFIFORead$pData$1$1==.
   0059                     751 _FIFORead_PARM_3::
   0059                     752 	.ds 3
                    0005    753 LFIFORead$i$1$1==.
   005C                     754 _FIFORead_i_1_1::
   005C                     755 	.ds 2
                            756 	.area	OSEG    (OVR,DATA)
                    0000    757 LFIFOWrite$uNumBytes$1$1==.
   0057                     758 _FIFOWrite_PARM_2::
   0057                     759 	.ds 2
                    0002    760 LFIFOWrite$pData$1$1==.
   0059                     761 _FIFOWrite_PARM_3::
   0059                     762 	.ds 3
                            763 ;--------------------------------------------------------
                            764 ; indirectly addressable internal ram data
                            765 ;--------------------------------------------------------
                            766 	.area ISEG    (DATA)
                            767 ;--------------------------------------------------------
                            768 ; absolute internal ram data
                            769 ;--------------------------------------------------------
                            770 	.area IABS    (ABS,DATA)
                            771 	.area IABS    (ABS,DATA)
                            772 ;--------------------------------------------------------
                            773 ; bit data
                            774 ;--------------------------------------------------------
                            775 	.area BSEG    (BIT)
                            776 ;--------------------------------------------------------
                            777 ; paged external ram data
                            778 ;--------------------------------------------------------
                            779 	.area PSEG    (PAG,XDATA)
                            780 ;--------------------------------------------------------
                            781 ; external ram data
                            782 ;--------------------------------------------------------
                            783 	.area XSEG    (XDATA)
                            784 ;--------------------------------------------------------
                            785 ; absolute external ram data
                            786 ;--------------------------------------------------------
                            787 	.area XABS    (ABS,XDATA)
                            788 ;--------------------------------------------------------
                            789 ; external initialized ram data
                            790 ;--------------------------------------------------------
                            791 	.area XISEG   (XDATA)
                            792 	.area HOME    (CODE)
                            793 	.area GSINIT0 (CODE)
                            794 	.area GSINIT1 (CODE)
                            795 	.area GSINIT2 (CODE)
                            796 	.area GSINIT3 (CODE)
                            797 	.area GSINIT4 (CODE)
                            798 	.area GSINIT5 (CODE)
                            799 	.area GSINIT  (CODE)
                            800 	.area GSFINAL (CODE)
                            801 	.area CSEG    (CODE)
                            802 ;--------------------------------------------------------
                            803 ; global & static initialisations
                            804 ;--------------------------------------------------------
                            805 	.area HOME    (CODE)
                            806 	.area GSINIT  (CODE)
                            807 	.area GSFINAL (CODE)
                            808 	.area GSINIT  (CODE)
                            809 ;--------------------------------------------------------
                            810 ; Home
                            811 ;--------------------------------------------------------
                            812 	.area HOME    (CODE)
                            813 	.area HOME    (CODE)
                            814 ;--------------------------------------------------------
                            815 ; code
                            816 ;--------------------------------------------------------
                            817 	.area CSEG    (CODE)
                            818 ;------------------------------------------------------------
                            819 ;Allocation info for local variables in function 'HaltEndpoint'
                            820 ;------------------------------------------------------------
                            821 ;uEp                       Allocated to registers r2 r3 
                            822 ;bReturnState              Allocated to registers r2 
                            823 ;bIndex                    Allocated to registers r4 
                            824 ;------------------------------------------------------------
                    0000    825 	G$HaltEndpoint$0$0 ==.
                    0000    826 	C$USB_Utilities.c$78$0$0 ==.
                            827 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:78: BYTE HaltEndpoint (UINT uEp)
                            828 ;	-----------------------------------------
                            829 ;	 function HaltEndpoint
                            830 ;	-----------------------------------------
   03C7                     831 _HaltEndpoint:
                    0002    832 	ar2 = 0x02
                    0003    833 	ar3 = 0x03
                    0004    834 	ar4 = 0x04
                    0005    835 	ar5 = 0x05
                    0006    836 	ar6 = 0x06
                    0007    837 	ar7 = 0x07
                    0000    838 	ar0 = 0x00
                    0001    839 	ar1 = 0x01
   03C7 AA 82               840 	mov	r2,dpl
   03C9 AB 83               841 	mov	r3,dph
                    0004    842 	C$USB_Utilities.c$83$2$2 ==.
                            843 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:83: UREAD_BYTE (INDEX, bIndex);
   03CB 75 96 8E            844 	mov	_USB0ADR,#0x8E
   03CE                     845 00101$:
   03CE E5 96               846 	mov	a,_USB0ADR
   03D0 20 E7 FB            847 	jb	acc.7,00101$
   03D3 AC 97               848 	mov	r4,_USB0DAT
                    000E    849 	C$USB_Utilities.c$84$2$3 ==.
                            850 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:84: UWRITE_BYTE (INDEX, (BYTE)uEp & 0x00EF);
   03D5 75 96 0E            851 	mov	_USB0ADR,#0x0E
   03D8 8A 05               852 	mov	ar5,r2
   03DA 74 EF               853 	mov	a,#0xEF
   03DC 5D                  854 	anl	a,r5
   03DD F5 97               855 	mov	_USB0DAT,a
   03DF                     856 00104$:
   03DF E5 96               857 	mov	a,_USB0ADR
   03E1 20 E7 FB            858 	jb	acc.7,00104$
                    001D    859 	C$USB_Utilities.c$87$1$1 ==.
                            860 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:87: switch (uEp)
   03E4 BA 02 05            861 	cjne	r2,#0x02,00136$
   03E7 BB 00 02            862 	cjne	r3,#0x00,00136$
   03EA 80 18               863 	sjmp	00111$
   03EC                     864 00136$:
   03EC BA 81 27            865 	cjne	r2,#0x81,00115$
   03EF BB 00 24            866 	cjne	r3,#0x00,00115$
                    002B    867 	C$USB_Utilities.c$90$3$5 ==.
                            868 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:90: UWRITE_BYTE (EINCSRL, rbInSDSTL);
   03F2 75 96 11            869 	mov	_USB0ADR,#0x11
   03F5 75 97 10            870 	mov	_USB0DAT,#0x10
   03F8                     871 00108$:
   03F8 E5 96               872 	mov	a,_USB0ADR
   03FA 20 E7 FB            873 	jb	acc.7,00108$
                    0036    874 	C$USB_Utilities.c$91$2$4 ==.
                            875 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:91: gEp1InStatus.bEpState = EP_HALTED;
   03FD 75 46 03            876 	mov	(_gEp1InStatus + 0x0005),#0x03
                    0039    877 	C$USB_Utilities.c$92$2$4 ==.
                            878 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:92: bReturnState = EP_IDLE;          // Return success flag
   0400 7A 00               879 	mov	r2,#0x00
                    003B    880 	C$USB_Utilities.c$93$2$4 ==.
                            881 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:93: break;
                    003B    882 	C$USB_Utilities.c$94$2$4 ==.
                            883 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:94: case EP2_OUT:
   0402 80 14               884 	sjmp	00116$
   0404                     885 00111$:
                    003D    886 	C$USB_Utilities.c$95$3$6 ==.
                            887 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:95: UWRITE_BYTE (EOUTCSRL, rbOutSDSTL);
   0404 75 96 14            888 	mov	_USB0ADR,#0x14
   0407 75 97 20            889 	mov	_USB0DAT,#0x20
   040A                     890 00112$:
   040A E5 96               891 	mov	a,_USB0ADR
   040C 20 E7 FB            892 	jb	acc.7,00112$
                    0048    893 	C$USB_Utilities.c$96$2$4 ==.
                            894 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:96: gEp2OutStatus.bEpState = EP_HALTED;
   040F 75 51 03            895 	mov	(_gEp2OutStatus + 0x0005),#0x03
                    004B    896 	C$USB_Utilities.c$97$2$4 ==.
                            897 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:97: bReturnState = EP_IDLE;          // Return success flag
   0412 7A 00               898 	mov	r2,#0x00
                    004D    899 	C$USB_Utilities.c$98$2$4 ==.
                            900 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:98: break;
                    004D    901 	C$USB_Utilities.c$99$2$4 ==.
                            902 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:99: default:
   0414 80 02               903 	sjmp	00116$
   0416                     904 00115$:
                    004F    905 	C$USB_Utilities.c$100$2$4 ==.
                            906 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:100: bReturnState = EP_ERROR;         // Return error flag
   0416 7A 02               907 	mov	r2,#0x02
                    0051    908 	C$USB_Utilities.c$103$1$1 ==.
                            909 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:103: }
   0418                     910 00116$:
                    0051    911 	C$USB_Utilities.c$105$2$7 ==.
                            912 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:105: UWRITE_BYTE (INDEX, bIndex);           // Restore saved INDEX
   0418 75 96 0E            913 	mov	_USB0ADR,#0x0E
   041B 8C 97               914 	mov	_USB0DAT,r4
   041D                     915 00117$:
   041D E5 96               916 	mov	a,_USB0ADR
   041F 20 E7 FB            917 	jb	acc.7,00117$
                    005B    918 	C$USB_Utilities.c$106$1$1 ==.
                            919 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:106: return bReturnState;
   0422 8A 82               920 	mov	dpl,r2
                    005D    921 	C$USB_Utilities.c$107$1$1 ==.
                    005D    922 	XG$HaltEndpoint$0$0 ==.
   0424 22                  923 	ret
                            924 ;------------------------------------------------------------
                            925 ;Allocation info for local variables in function 'EnableEndpoint'
                            926 ;------------------------------------------------------------
                            927 ;uEp                       Allocated to registers r2 r3 
                            928 ;bReturnState              Allocated to registers r2 
                            929 ;bIndex                    Allocated to registers r4 
                            930 ;------------------------------------------------------------
                    005E    931 	G$EnableEndpoint$0$0 ==.
                    005E    932 	C$USB_Utilities.c$120$1$1 ==.
                            933 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:120: BYTE EnableEndpoint (UINT uEp)
                            934 ;	-----------------------------------------
                            935 ;	 function EnableEndpoint
                            936 ;	-----------------------------------------
   0425                     937 _EnableEndpoint:
   0425 AA 82               938 	mov	r2,dpl
   0427 AB 83               939 	mov	r3,dph
                    0062    940 	C$USB_Utilities.c$125$2$2 ==.
                            941 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:125: UREAD_BYTE (INDEX, bIndex);
   0429 75 96 8E            942 	mov	_USB0ADR,#0x8E
   042C                     943 00101$:
   042C E5 96               944 	mov	a,_USB0ADR
   042E 20 E7 FB            945 	jb	acc.7,00101$
   0431 AC 97               946 	mov	r4,_USB0DAT
                    006C    947 	C$USB_Utilities.c$126$2$3 ==.
                            948 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:126: UWRITE_BYTE (INDEX, (BYTE)uEp & 0x00EF);
   0433 75 96 0E            949 	mov	_USB0ADR,#0x0E
   0436 8A 05               950 	mov	ar5,r2
   0438 74 EF               951 	mov	a,#0xEF
   043A 5D                  952 	anl	a,r5
   043B F5 97               953 	mov	_USB0DAT,a
   043D                     954 00104$:
   043D E5 96               955 	mov	a,_USB0ADR
   043F 20 E7 FB            956 	jb	acc.7,00104$
                    007B    957 	C$USB_Utilities.c$129$1$1 ==.
                            958 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:129: switch (uEp)
   0442 BA 02 05            959 	cjne	r2,#0x02,00136$
   0445 BB 00 02            960 	cjne	r3,#0x00,00136$
   0448 80 18               961 	sjmp	00111$
   044A                     962 00136$:
   044A BA 81 27            963 	cjne	r2,#0x81,00115$
   044D BB 00 24            964 	cjne	r3,#0x00,00115$
                    0089    965 	C$USB_Utilities.c$133$3$5 ==.
                            966 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:133: UWRITE_BYTE (EINCSRL, rbInCLRDT);
   0450 75 96 11            967 	mov	_USB0ADR,#0x11
   0453 75 97 40            968 	mov	_USB0DAT,#0x40
   0456                     969 00108$:
   0456 E5 96               970 	mov	a,_USB0ADR
   0458 20 E7 FB            971 	jb	acc.7,00108$
                    0094    972 	C$USB_Utilities.c$134$2$4 ==.
                            973 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:134: gEp1InStatus.bEpState = EP_IDLE; // Return success
   045B 75 46 00            974 	mov	(_gEp1InStatus + 0x0005),#0x00
                    0097    975 	C$USB_Utilities.c$135$2$4 ==.
                            976 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:135: bReturnState = EP_IDLE;
   045E 7A 00               977 	mov	r2,#0x00
                    0099    978 	C$USB_Utilities.c$136$2$4 ==.
                            979 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:136: break;
                    0099    980 	C$USB_Utilities.c$137$2$4 ==.
                            981 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:137: case EP2_OUT:
   0460 80 14               982 	sjmp	00116$
   0462                     983 00111$:
                    009B    984 	C$USB_Utilities.c$139$3$6 ==.
                            985 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:139: UWRITE_BYTE (EOUTCSRL, rbOutCLRDT);
   0462 75 96 14            986 	mov	_USB0ADR,#0x14
   0465 75 97 80            987 	mov	_USB0DAT,#0x80
   0468                     988 00112$:
   0468 E5 96               989 	mov	a,_USB0ADR
   046A 20 E7 FB            990 	jb	acc.7,00112$
                    00A6    991 	C$USB_Utilities.c$140$2$4 ==.
                            992 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:140: gEp2OutStatus.bEpState = EP_IDLE;// Return success
   046D 75 51 00            993 	mov	(_gEp2OutStatus + 0x0005),#0x00
                    00A9    994 	C$USB_Utilities.c$141$2$4 ==.
                            995 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:141: bReturnState = EP_IDLE;
   0470 7A 00               996 	mov	r2,#0x00
                    00AB    997 	C$USB_Utilities.c$142$2$4 ==.
                            998 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:142: break;
                    00AB    999 	C$USB_Utilities.c$143$2$4 ==.
                           1000 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:143: default:
   0472 80 02              1001 	sjmp	00116$
   0474                    1002 00115$:
                    00AD   1003 	C$USB_Utilities.c$144$2$4 ==.
                           1004 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:144: bReturnState = EP_ERROR;         // Return error
   0474 7A 02              1005 	mov	r2,#0x02
                    00AF   1006 	C$USB_Utilities.c$147$1$1 ==.
                           1007 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:147: }
   0476                    1008 00116$:
                    00AF   1009 	C$USB_Utilities.c$149$2$7 ==.
                           1010 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:149: UWRITE_BYTE (INDEX, bIndex);           // Restore INDEX
   0476 75 96 0E           1011 	mov	_USB0ADR,#0x0E
   0479 8C 97              1012 	mov	_USB0DAT,r4
   047B                    1013 00117$:
   047B E5 96              1014 	mov	a,_USB0ADR
   047D 20 E7 FB           1015 	jb	acc.7,00117$
                    00B9   1016 	C$USB_Utilities.c$151$1$1 ==.
                           1017 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:151: return bReturnState;
   0480 8A 82              1018 	mov	dpl,r2
                    00BB   1019 	C$USB_Utilities.c$152$1$1 ==.
                    00BB   1020 	XG$EnableEndpoint$0$0 ==.
   0482 22                 1021 	ret
                           1022 ;------------------------------------------------------------
                           1023 ;Allocation info for local variables in function 'GetEpStatus'
                           1024 ;------------------------------------------------------------
                           1025 ;uEp                       Allocated to registers r2 r3 
                           1026 ;bReturnState              Allocated to registers r2 
                           1027 ;------------------------------------------------------------
                    00BC   1028 	G$GetEpStatus$0$0 ==.
                    00BC   1029 	C$USB_Utilities.c$165$1$1 ==.
                           1030 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:165: BYTE GetEpStatus (UINT uEp)
                           1031 ;	-----------------------------------------
                           1032 ;	 function GetEpStatus
                           1033 ;	-----------------------------------------
   0483                    1034 _GetEpStatus:
   0483 AA 82              1035 	mov	r2,dpl
   0485 AB 83              1036 	mov	r3,dph
                    00C0   1037 	C$USB_Utilities.c$170$1$1 ==.
                           1038 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:170: switch (uEp)
   0487 BA 02 05           1039 	cjne	r2,#0x02,00109$
   048A BB 00 02           1040 	cjne	r3,#0x00,00109$
   048D 80 0A              1041 	sjmp	00102$
   048F                    1042 00109$:
   048F BA 81 0B           1043 	cjne	r2,#0x81,00103$
   0492 BB 00 08           1044 	cjne	r3,#0x00,00103$
                    00CE   1045 	C$USB_Utilities.c$173$2$2 ==.
                           1046 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:173: bReturnState = gEp1InStatus.bEpState;
   0495 AA 46              1047 	mov	r2,(_gEp1InStatus + 0x0005)
                    00D0   1048 	C$USB_Utilities.c$174$2$2 ==.
                           1049 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:174: break;
                    00D0   1050 	C$USB_Utilities.c$175$2$2 ==.
                           1051 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:175: case EP2_OUT:
   0497 80 06              1052 	sjmp	00104$
   0499                    1053 00102$:
                    00D2   1054 	C$USB_Utilities.c$176$2$2 ==.
                           1055 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:176: bReturnState = gEp2OutStatus.bEpState;
   0499 AA 51              1056 	mov	r2,(_gEp2OutStatus + 0x0005)
                    00D4   1057 	C$USB_Utilities.c$177$2$2 ==.
                           1058 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:177: break;
                    00D4   1059 	C$USB_Utilities.c$178$2$2 ==.
                           1060 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:178: default:
   049B 80 02              1061 	sjmp	00104$
   049D                    1062 00103$:
                    00D6   1063 	C$USB_Utilities.c$179$2$2 ==.
                           1064 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:179: bReturnState = EP_ERROR;
   049D 7A 02              1065 	mov	r2,#0x02
                    00D8   1066 	C$USB_Utilities.c$181$1$1 ==.
                           1067 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:181: }
   049F                    1068 00104$:
                    00D8   1069 	C$USB_Utilities.c$183$1$1 ==.
                           1070 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:183: return bReturnState;
   049F 8A 82              1071 	mov	dpl,r2
                    00DA   1072 	C$USB_Utilities.c$184$1$1 ==.
                    00DA   1073 	XG$GetEpStatus$0$0 ==.
   04A1 22                 1074 	ret
                           1075 ;------------------------------------------------------------
                           1076 ;Allocation info for local variables in function 'SetConfiguration'
                           1077 ;------------------------------------------------------------
                           1078 ;SelectConfig              Allocated to registers r2 
                           1079 ;bReturnState              Allocated to registers r3 
                           1080 ;pIfStatus                 Allocated to registers 
                           1081 ;------------------------------------------------------------
                    00DB   1082 	G$SetConfiguration$0$0 ==.
                    00DB   1083 	C$USB_Utilities.c$197$1$1 ==.
                           1084 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:197: BYTE SetConfiguration(BYTE SelectConfig)
                           1085 ;	-----------------------------------------
                           1086 ;	 function SetConfiguration
                           1087 ;	-----------------------------------------
   04A2                    1088 _SetConfiguration:
   04A2 AA 82              1089 	mov	r2,dpl
                    00DD   1090 	C$USB_Utilities.c$199$1$1 ==.
                           1091 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:199: BYTE bReturnState = EP_IDLE;           // Endpoint state return value
   04A4 7B 00              1092 	mov	r3,#0x00
                    00DF   1093 	C$USB_Utilities.c$205$1$1 ==.
                           1094 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:205: gDeviceStatus.pConfig = (BYTE*)&gDescriptorMap.bCfg1;
   04A6 75 28 2E           1095 	mov	(_gDeviceStatus + 0x0007),#(_gDescriptorMap + 0x0012)
   04A9 75 29 0A           1096 	mov	((_gDeviceStatus + 0x0007) + 1),#((_gDescriptorMap + 0x0012) >> 8)
   04AC 75 2A 80           1097 	mov	((_gDeviceStatus + 0x0007) + 2),#0x80
                    00E8   1098 	C$USB_Utilities.c$209$1$1 ==.
                           1099 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:209: if (gDeviceStatus.pConfig[cfg_bConfigurationValue] != SelectConfig)
   04AF 90 0A 33           1100 	mov	dptr,#(_gDescriptorMap + 0x0017)
   04B2 75 F0 80           1101 	mov	b,#0x80
   04B5 12 09 FC           1102 	lcall	__gptrget
   04B8 FC                 1103 	mov	r4,a
   04B9 B5 02 02           1104 	cjne	a,ar2,00107$
   04BC 80 04              1105 	sjmp	00102$
   04BE                    1106 00107$:
                    00F7   1107 	C$USB_Utilities.c$211$2$2 ==.
                           1108 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:211: bReturnState = EP_ERROR;
   04BE 7B 02              1109 	mov	r3,#0x02
   04C0 80 47              1110 	sjmp	00103$
   04C2                    1111 00102$:
                    00FB   1112 	C$USB_Utilities.c$217$2$3 ==.
                           1113 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:217: gDeviceStatus.bNumInterf = gDeviceStatus.pConfig[cfg_bNumInterfaces];
   04C2 74 04              1114 	mov	a,#0x04
   04C4 25 28              1115 	add	a,(_gDeviceStatus + 0x0007)
   04C6 FC                 1116 	mov	r4,a
   04C7 E4                 1117 	clr	a
   04C8 35 29              1118 	addc	a,((_gDeviceStatus + 0x0007) + 1)
   04CA FD                 1119 	mov	r5,a
   04CB AE 2A              1120 	mov	r6,((_gDeviceStatus + 0x0007) + 2)
   04CD 8C 82              1121 	mov	dpl,r4
   04CF 8D 83              1122 	mov	dph,r5
   04D1 8E F0              1123 	mov	b,r6
   04D3 12 09 FC           1124 	lcall	__gptrget
   04D6 FC                 1125 	mov	r4,a
   04D7 8C 26              1126 	mov	(_gDeviceStatus + 0x0005),r4
                    0112   1127 	C$USB_Utilities.c$220$2$3 ==.
                           1128 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:220: gDeviceStatus.bTotalInterfDsc = MAX_IF;
   04D9 75 27 01           1129 	mov	(_gDeviceStatus + 0x0006),#0x01
                    0115   1130 	C$USB_Utilities.c$223$2$3 ==.
                           1131 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:223: pIfStatus = (PIF_STATUS)&gDeviceStatus.IfStatus[0];
                    0115   1132 	C$USB_Utilities.c$226$2$3 ==.
                           1133 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:226: pIfStatus->bIfNumber = 0;           // Set interface number
   04DC 90 00 2D           1134 	mov	dptr,#(_gDeviceStatus + 0x000c)
   04DF 75 F0 40           1135 	mov	b,#0x40
   04E2 E4                 1136 	clr	a
   04E3 12 09 E3           1137 	lcall	__gptrput
                    011F   1138 	C$USB_Utilities.c$227$2$3 ==.
                           1139 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:227: pIfStatus->bCurrentAlt = 0;         // Select alternate number zero
   04E6 90 00 2C           1140 	mov	dptr,#(_gDeviceStatus + 0x000b)
   04E9 75 F0 40           1141 	mov	b,#0x40
   04EC E4                 1142 	clr	a
   04ED 12 09 E3           1143 	lcall	__gptrput
                    0129   1144 	C$USB_Utilities.c$228$2$3 ==.
                           1145 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:228: pIfStatus->bNumAlts = 0;            // No other alternates
   04F0 75 2B 00           1146 	mov	(_gDeviceStatus + 0x000a),#0x00
                    012C   1147 	C$USB_Utilities.c$230$2$3 ==.
                           1148 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:230: SetInterface(pIfStatus);            // Configure Interface0, Alternate0
   04F3 90 00 2B           1149 	mov	dptr,#(_gDeviceStatus + 0x000a)
   04F6 75 F0 40           1150 	mov	b,#0x40
   04F9 C0 02              1151 	push	ar2
   04FB C0 03              1152 	push	ar3
   04FD 12 05 0C           1153 	lcall	_SetInterface
   0500 D0 03              1154 	pop	ar3
   0502 D0 02              1155 	pop	ar2
                    013D   1156 	C$USB_Utilities.c$232$2$3 ==.
                           1157 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:232: gDeviceStatus.bDevState = DEV_CONFIG;// Set device state to configured
   0504 75 22 02           1158 	mov	(_gDeviceStatus + 0x0001),#0x02
                    0140   1159 	C$USB_Utilities.c$233$2$3 ==.
                           1160 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:233: gDeviceStatus.bCurrentConfig = SelectConfig;// Store current config
   0507 8A 21              1161 	mov	_gDeviceStatus,r2
   0509                    1162 00103$:
                    0142   1163 	C$USB_Utilities.c$236$1$1 ==.
                           1164 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:236: return bReturnState;
   0509 8B 82              1165 	mov	dpl,r3
                    0144   1166 	C$USB_Utilities.c$237$1$1 ==.
                    0144   1167 	XG$SetConfiguration$0$0 ==.
   050B 22                 1168 	ret
                           1169 ;------------------------------------------------------------
                           1170 ;Allocation info for local variables in function 'SetInterface'
                           1171 ;------------------------------------------------------------
                           1172 ;pIfStatus                 Allocated to registers r2 r3 r4 
                           1173 ;bReturnState              Allocated to registers r5 
                           1174 ;bIndex                    Allocated to registers r6 
                           1175 ;------------------------------------------------------------
                    0145   1176 	G$SetInterface$0$0 ==.
                    0145   1177 	C$USB_Utilities.c$250$1$1 ==.
                           1178 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:250: BYTE SetInterface(PIF_STATUS pIfStatus)
                           1179 ;	-----------------------------------------
                           1180 ;	 function SetInterface
                           1181 ;	-----------------------------------------
   050C                    1182 _SetInterface:
   050C AA 82              1183 	mov	r2,dpl
   050E AB 83              1184 	mov	r3,dph
   0510 AC F0              1185 	mov	r4,b
                    014B   1186 	C$USB_Utilities.c$252$1$1 ==.
                           1187 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:252: BYTE bReturnState = EP_IDLE;
   0512 7D 00              1188 	mov	r5,#0x00
                    014D   1189 	C$USB_Utilities.c$256$2$2 ==.
                           1190 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:256: UREAD_BYTE (INDEX, bIndex);
   0514 75 96 8E           1191 	mov	_USB0ADR,#0x8E
   0517                    1192 00101$:
   0517 E5 96              1193 	mov	a,_USB0ADR
   0519 20 E7 FB           1194 	jb	acc.7,00101$
   051C AE 97              1195 	mov	r6,_USB0DAT
                    0157   1196 	C$USB_Utilities.c$259$1$1 ==.
                           1197 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:259: switch(pIfStatus->bIfNumber)
   051E 74 02              1198 	mov	a,#0x02
   0520 2A                 1199 	add	a,r2
   0521 FA                 1200 	mov	r2,a
   0522 E4                 1201 	clr	a
   0523 3B                 1202 	addc	a,r3
   0524 FB                 1203 	mov	r3,a
   0525 8A 82              1204 	mov	dpl,r2
   0527 8B 83              1205 	mov	dph,r3
   0529 8C F0              1206 	mov	b,r4
   052B 12 09 FC           1207 	lcall	__gptrget
   052E FA                 1208 	mov	r2,a
   052F 60 07              1209 	jz	00104$
   0531 E4                 1210 	clr	a
   0532 BA 01 01           1211 	cjne	r2,#0x01,00147$
   0535 04                 1212 	inc	a
   0536                    1213 00147$:
                    016F   1214 	C$USB_Utilities.c$262$2$3 ==.
                           1215 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:262: case 0:
   0536 80 5D              1216 	sjmp	00122$
   0538                    1217 00104$:
                    0171   1218 	C$USB_Utilities.c$264$3$4 ==.
                           1219 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:264: UWRITE_BYTE(INDEX, 1);           // Index to Endpoint1 registers
   0538 75 96 0E           1220 	mov	_USB0ADR,#0x0E
   053B 75 97 01           1221 	mov	_USB0DAT,#0x01
   053E                    1222 00105$:
   053E E5 96              1223 	mov	a,_USB0ADR
   0540 20 E7 FB           1224 	jb	acc.7,00105$
                    017C   1225 	C$USB_Utilities.c$267$3$5 ==.
                           1226 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:267: UWRITE_BYTE(EINCSRH, (rbInDIRSEL | rbInDBIEN));      
   0543 75 96 12           1227 	mov	_USB0ADR,#0x12
   0546 75 97 A0           1228 	mov	_USB0DAT,#0xA0
   0549                    1229 00108$:
   0549 E5 96              1230 	mov	a,_USB0ADR
   054B 20 E7 FB           1231 	jb	acc.7,00108$
                    0187   1232 	C$USB_Utilities.c$268$2$3 ==.
                           1233 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:268: gEp1InStatus.uNumBytes = 0;      // Reset byte counter
   054E 75 42 00           1234 	mov	(_gEp1InStatus + 0x0001),#0x00
   0551 75 43 00           1235 	mov	((_gEp1InStatus + 0x0001) + 1),#0x00
                    018D   1236 	C$USB_Utilities.c$269$2$3 ==.
                           1237 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:269: gEp1InStatus.uMaxP = EP1_IN_MAXP;// Set maximum packet size
   0554 75 44 40           1238 	mov	(_gEp1InStatus + 0x0003),#0x40
   0557 75 45 00           1239 	mov	((_gEp1InStatus + 0x0003) + 1),#0x00
                    0193   1240 	C$USB_Utilities.c$270$2$3 ==.
                           1241 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:270: gEp1InStatus.bEp = EP1_IN;       // Set endpoint address
   055A 75 41 81           1242 	mov	_gEp1InStatus,#0x81
                    0196   1243 	C$USB_Utilities.c$271$2$3 ==.
                           1244 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:271: gEp1InStatus.bEpState = EP_IDLE; // Set endpoint state
   055D 75 46 00           1245 	mov	(_gEp1InStatus + 0x0005),#0x00
                    0199   1246 	C$USB_Utilities.c$274$3$6 ==.
                           1247 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:274: UWRITE_BYTE(INDEX, 2);           // Index to Endpoint2 registers
   0560 75 96 0E           1248 	mov	_USB0ADR,#0x0E
   0563 75 97 02           1249 	mov	_USB0DAT,#0x02
   0566                    1250 00111$:
   0566 E5 96              1251 	mov	a,_USB0ADR
   0568 20 E7 FB           1252 	jb	acc.7,00111$
                    01A4   1253 	C$USB_Utilities.c$276$3$7 ==.
                           1254 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:276: UWRITE_BYTE(EOUTCSRH, rbOutDBOEN);      
   056B 75 96 15           1255 	mov	_USB0ADR,#0x15
   056E 75 97 80           1256 	mov	_USB0DAT,#0x80
   0571                    1257 00114$:
   0571 E5 96              1258 	mov	a,_USB0ADR
   0573 20 E7 FB           1259 	jb	acc.7,00114$
                    01AF   1260 	C$USB_Utilities.c$277$2$3 ==.
                           1261 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:277: gEp2OutStatus.uNumBytes = 0;     // Reset byte counter
   0576 75 4D 00           1262 	mov	(_gEp2OutStatus + 0x0001),#0x00
   0579 75 4E 00           1263 	mov	((_gEp2OutStatus + 0x0001) + 1),#0x00
                    01B5   1264 	C$USB_Utilities.c$278$2$3 ==.
                           1265 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:278: gEp2OutStatus.uMaxP = EP2_OUT_MAXP;// Set maximum packet size
   057C 75 4F 40           1266 	mov	(_gEp2OutStatus + 0x0003),#0x40
   057F 75 50 00           1267 	mov	((_gEp2OutStatus + 0x0003) + 1),#0x00
                    01BB   1268 	C$USB_Utilities.c$279$2$3 ==.
                           1269 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:279: gEp2OutStatus.bEp = EP2_OUT;     // Set endpoint number
   0582 75 4C 02           1270 	mov	_gEp2OutStatus,#0x02
                    01BE   1271 	C$USB_Utilities.c$280$2$3 ==.
                           1272 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:280: gEp2OutStatus.bEpState = EP_IDLE;// Set endpoint state
   0585 75 51 00           1273 	mov	(_gEp2OutStatus + 0x0005),#0x00
                    01C1   1274 	C$USB_Utilities.c$282$3$8 ==.
                           1275 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:282: UWRITE_BYTE(INDEX, 0);           // Return to index 0
   0588 75 96 0E           1276 	mov	_USB0ADR,#0x0E
   058B 75 97 00           1277 	mov	_USB0DAT,#0x00
   058E                    1278 00117$:
   058E E5 96              1279 	mov	a,_USB0ADR
   0590 30 E7 04           1280 	jnb	acc.7,00123$
                    01CC   1281 	C$USB_Utilities.c$293$2$3 ==.
                           1282 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:293: default:
   0593 80 F9              1283 	sjmp	00117$
   0595                    1284 00122$:
                    01CE   1285 	C$USB_Utilities.c$294$2$3 ==.
                           1286 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:294: bReturnState = EP_ERROR;
   0595 7D 02              1287 	mov	r5,#0x02
                    01D0   1288 	C$USB_Utilities.c$295$1$1 ==.
                           1289 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:295: }
   0597                    1290 00123$:
                    01D0   1291 	C$USB_Utilities.c$296$2$9 ==.
                           1292 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:296: UWRITE_BYTE (INDEX, bIndex);           // Restore INDEX
   0597 75 96 0E           1293 	mov	_USB0ADR,#0x0E
   059A 8E 97              1294 	mov	_USB0DAT,r6
   059C                    1295 00124$:
   059C E5 96              1296 	mov	a,_USB0ADR
   059E 20 E7 FB           1297 	jb	acc.7,00124$
                    01DA   1298 	C$USB_Utilities.c$298$1$1 ==.
                           1299 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:298: return bReturnState;
   05A1 8D 82              1300 	mov	dpl,r5
                    01DC   1301 	C$USB_Utilities.c$299$1$1 ==.
                    01DC   1302 	XG$SetInterface$0$0 ==.
   05A3 22                 1303 	ret
                           1304 ;------------------------------------------------------------
                           1305 ;Allocation info for local variables in function 'FIFORead'
                           1306 ;------------------------------------------------------------
                           1307 ;uNumBytes                 Allocated with name '_FIFORead_PARM_2'
                           1308 ;pData                     Allocated with name '_FIFORead_PARM_3'
                           1309 ;bEp                       Allocated to registers r2 
                           1310 ;TargetReg                 Allocated to registers 
                           1311 ;i                         Allocated with name '_FIFORead_i_1_1'
                           1312 ;------------------------------------------------------------
                    01DD   1313 	G$FIFORead$0$0 ==.
                    01DD   1314 	C$USB_Utilities.c$316$1$1 ==.
                           1315 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:316: void FIFORead (BYTE bEp, UINT uNumBytes, BYTE * pData)
                           1316 ;	-----------------------------------------
                           1317 ;	 function FIFORead
                           1318 ;	-----------------------------------------
   05A4                    1319 _FIFORead:
   05A4 AA 82              1320 	mov	r2,dpl
                    01DF   1321 	C$USB_Utilities.c$322$1$1 ==.
                           1322 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:322: if (uNumBytes)
   05A6 E5 57              1323 	mov	a,_FIFORead_PARM_2
   05A8 45 58              1324 	orl	a,(_FIFORead_PARM_2 + 1)
   05AA 60 70              1325 	jz	00113$
                    01E5   1326 	C$USB_Utilities.c$324$2$2 ==.
                           1327 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:324: TargetReg = FIFO_EP0 + bEp;         // Find address for target
   05AC 74 20              1328 	mov	a,#0x20
   05AE 2A                 1329 	add	a,r2
                    01E8   1330 	C$USB_Utilities.c$327$2$2 ==.
                           1331 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:327: USB0ADR = (TargetReg & 0x3F);       // Set address (mask out bits7-6)
   05AF 54 3F              1332 	anl	a,#0x3F
   05B1 F5 96              1333 	mov	_USB0ADR,a
                    01EC   1334 	C$USB_Utilities.c$328$2$2 ==.
                           1335 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:328: USB0ADR |= 0xC0;                    // Set auto-read and initiate
   05B3 43 96 C0           1336 	orl	_USB0ADR,#0xC0
                    01EF   1337 	C$USB_Utilities.c$332$2$2 ==.
                           1338 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:332: for(i=0;i<uNumBytes-1;i++)
   05B6 E4                 1339 	clr	a
   05B7 FA                 1340 	mov	r2,a
   05B8 FB                 1341 	mov	r3,a
   05B9 E5 57              1342 	mov	a,_FIFORead_PARM_2
   05BB 24 FF              1343 	add	a,#0xff
   05BD FC                 1344 	mov	r4,a
   05BE E5 58              1345 	mov	a,(_FIFORead_PARM_2 + 1)
   05C0 34 FF              1346 	addc	a,#0xff
   05C2 FD                 1347 	mov	r5,a
   05C3 E4                 1348 	clr	a
   05C4 F5 5C              1349 	mov	_FIFORead_i_1_1,a
   05C6 F5 5D              1350 	mov	(_FIFORead_i_1_1 + 1),a
   05C8                    1351 00109$:
   05C8 C3                 1352 	clr	c
   05C9 E5 5C              1353 	mov	a,_FIFORead_i_1_1
   05CB 9C                 1354 	subb	a,r4
   05CC E5 5D              1355 	mov	a,(_FIFORead_i_1_1 + 1)
   05CE 9D                 1356 	subb	a,r5
   05CF 50 2A              1357 	jnc	00121$
                    020A   1358 	C$USB_Utilities.c$334$3$3 ==.
                           1359 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:334: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
   05D1                    1360 00101$:
   05D1 E5 96              1361 	mov	a,_USB0ADR
   05D3 20 E7 FB           1362 	jb	acc.7,00101$
                    020F   1363 	C$USB_Utilities.c$335$3$3 ==.
                           1364 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:335: pData[i] = USB0DAT;              // Copy data byte
   05D6 E5 5C              1365 	mov	a,_FIFORead_i_1_1
   05D8 25 59              1366 	add	a,_FIFORead_PARM_3
   05DA F8                 1367 	mov	r0,a
   05DB E5 5D              1368 	mov	a,(_FIFORead_i_1_1 + 1)
   05DD 35 5A              1369 	addc	a,(_FIFORead_PARM_3 + 1)
   05DF F9                 1370 	mov	r1,a
   05E0 AE 5B              1371 	mov	r6,(_FIFORead_PARM_3 + 2)
   05E2 88 82              1372 	mov	dpl,r0
   05E4 89 83              1373 	mov	dph,r1
   05E6 8E F0              1374 	mov	b,r6
   05E8 E5 97              1375 	mov	a,_USB0DAT
   05EA 12 09 E3           1376 	lcall	__gptrput
                    0226   1377 	C$USB_Utilities.c$332$2$2 ==.
                           1378 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:332: for(i=0;i<uNumBytes-1;i++)
   05ED 05 5C              1379 	inc	_FIFORead_i_1_1
   05EF E4                 1380 	clr	a
   05F0 B5 5C 02           1381 	cjne	a,_FIFORead_i_1_1,00125$
   05F3 05 5D              1382 	inc	(_FIFORead_i_1_1 + 1)
   05F5                    1383 00125$:
   05F5 AA 5C              1384 	mov	r2,_FIFORead_i_1_1
   05F7 AB 5D              1385 	mov	r3,(_FIFORead_i_1_1 + 1)
                    0232   1386 	C$USB_Utilities.c$339$2$1 ==.
                           1387 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:339: while(USB0ADR & 0x80);              // Wait for BUSY->'0' (data ready)
   05F9 80 CD              1388 	sjmp	00109$
   05FB                    1389 00121$:
   05FB AA 5C              1390 	mov	r2,_FIFORead_i_1_1
   05FD AB 5D              1391 	mov	r3,(_FIFORead_i_1_1 + 1)
   05FF                    1392 00104$:
   05FF E5 96              1393 	mov	a,_USB0ADR
   0601 20 E7 FB           1394 	jb	acc.7,00104$
                    023D   1395 	C$USB_Utilities.c$340$2$2 ==.
                           1396 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:340: pData[i] = USB0DAT;                 // Copy data byte
   0604 EA                 1397 	mov	a,r2
   0605 25 59              1398 	add	a,_FIFORead_PARM_3
   0607 FA                 1399 	mov	r2,a
   0608 EB                 1400 	mov	a,r3
   0609 35 5A              1401 	addc	a,(_FIFORead_PARM_3 + 1)
   060B FB                 1402 	mov	r3,a
   060C AC 5B              1403 	mov	r4,(_FIFORead_PARM_3 + 2)
   060E 8A 82              1404 	mov	dpl,r2
   0610 8B 83              1405 	mov	dph,r3
   0612 8C F0              1406 	mov	b,r4
   0614 E5 97              1407 	mov	a,_USB0DAT
   0616 12 09 E3           1408 	lcall	__gptrput
                    0252   1409 	C$USB_Utilities.c$341$2$2 ==.
                           1410 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:341: USB0ADR = 0;                        // Clear auto-read
   0619 75 96 00           1411 	mov	_USB0ADR,#0x00
   061C                    1412 00113$:
                    0255   1413 	C$USB_Utilities.c$343$2$1 ==.
                    0255   1414 	XG$FIFORead$0$0 ==.
   061C 22                 1415 	ret
                           1416 ;------------------------------------------------------------
                           1417 ;Allocation info for local variables in function 'FIFOWrite'
                           1418 ;------------------------------------------------------------
                           1419 ;uNumBytes                 Allocated with name '_FIFOWrite_PARM_2'
                           1420 ;pData                     Allocated with name '_FIFOWrite_PARM_3'
                           1421 ;bEp                       Allocated to registers r2 
                           1422 ;TargetReg                 Allocated to registers r2 
                           1423 ;i                         Allocated to registers r2 r3 
                           1424 ;------------------------------------------------------------
                    0256   1425 	G$FIFOWrite$0$0 ==.
                    0256   1426 	C$USB_Utilities.c$360$2$1 ==.
                           1427 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:360: void FIFOWrite (BYTE bEp, UINT uNumBytes, BYTE * pData)
                           1428 ;	-----------------------------------------
                           1429 ;	 function FIFOWrite
                           1430 ;	-----------------------------------------
   061D                    1431 _FIFOWrite:
   061D AA 82              1432 	mov	r2,dpl
                    0258   1433 	C$USB_Utilities.c$366$1$1 ==.
                           1434 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:366: if (uNumBytes)
   061F E5 57              1435 	mov	a,_FIFOWrite_PARM_2
   0621 45 58              1436 	orl	a,(_FIFOWrite_PARM_2 + 1)
   0623 60 3C              1437 	jz	00113$
                    025E   1438 	C$USB_Utilities.c$368$2$2 ==.
                           1439 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:368: TargetReg = FIFO_EP0 + bEp;         // Find address for target
   0625 74 20              1440 	mov	a,#0x20
   0627 2A                 1441 	add	a,r2
   0628 FA                 1442 	mov	r2,a
                    0262   1443 	C$USB_Utilities.c$371$2$2 ==.
                           1444 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:371: while(USB0ADR & 0x80);              // Wait for BUSY->'0'
   0629                    1445 00101$:
   0629 E5 96              1446 	mov	a,_USB0ADR
   062B 20 E7 FB           1447 	jb	acc.7,00101$
                    0267   1448 	C$USB_Utilities.c$373$2$2 ==.
                           1449 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:373: USB0ADR = (TargetReg & 0x3F);       // Set address (mask out bits7-6)
   062E 74 3F              1450 	mov	a,#0x3F
   0630 5A                 1451 	anl	a,r2
   0631 F5 96              1452 	mov	_USB0ADR,a
                    026C   1453 	C$USB_Utilities.c$376$2$1 ==.
                           1454 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:376: for(i=0;i<uNumBytes;i++)
   0633 7A 00              1455 	mov	r2,#0x00
   0635 7B 00              1456 	mov	r3,#0x00
   0637                    1457 00109$:
   0637 C3                 1458 	clr	c
   0638 EA                 1459 	mov	a,r2
   0639 95 57              1460 	subb	a,_FIFOWrite_PARM_2
   063B EB                 1461 	mov	a,r3
   063C 95 58              1462 	subb	a,(_FIFOWrite_PARM_2 + 1)
   063E 50 21              1463 	jnc	00113$
                    0279   1464 	C$USB_Utilities.c$378$3$3 ==.
                           1465 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:378: USB0DAT = pData[i];
   0640 EA                 1466 	mov	a,r2
   0641 25 59              1467 	add	a,_FIFOWrite_PARM_3
   0643 FC                 1468 	mov	r4,a
   0644 EB                 1469 	mov	a,r3
   0645 35 5A              1470 	addc	a,(_FIFOWrite_PARM_3 + 1)
   0647 FD                 1471 	mov	r5,a
   0648 AE 5B              1472 	mov	r6,(_FIFOWrite_PARM_3 + 2)
   064A 8C 82              1473 	mov	dpl,r4
   064C 8D 83              1474 	mov	dph,r5
   064E 8E F0              1475 	mov	b,r6
   0650 12 09 FC           1476 	lcall	__gptrget
   0653 F5 97              1477 	mov	_USB0DAT,a
                    028E   1478 	C$USB_Utilities.c$379$3$3 ==.
                           1479 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:379: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
   0655                    1480 00104$:
   0655 E5 96              1481 	mov	a,_USB0ADR
   0657 20 E7 FB           1482 	jb	acc.7,00104$
                    0293   1483 	C$USB_Utilities.c$376$2$2 ==.
                           1484 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USB_Utilities.c:376: for(i=0;i<uNumBytes;i++)
   065A 0A                 1485 	inc	r2
   065B BA 00 D9           1486 	cjne	r2,#0x00,00109$
   065E 0B                 1487 	inc	r3
   065F 80 D6              1488 	sjmp	00109$
   0661                    1489 00113$:
                    029A   1490 	C$USB_Utilities.c$382$2$1 ==.
                    029A   1491 	XG$FIFOWrite$0$0 ==.
   0661 22                 1492 	ret
                           1493 	.area CSEG    (CODE)
                           1494 	.area CONST   (CODE)
                           1495 	.area XINIT   (CODE)
                           1496 	.area CABS    (ABS,CODE)
