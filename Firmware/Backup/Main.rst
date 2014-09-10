                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sun Sep 12 11:13:34 2010
                              5 ;--------------------------------------------------------
                              6 	.module Main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
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
                            246 	.globl _gEp2OutStatus
                            247 	.globl _gEp1InStatus
                            248 	.globl _gEp0Command
                            249 	.globl _gEp0Status
                            250 	.globl _gDeviceStatus
                            251 	.globl _InitPorts
                            252 	.globl _InitSysClk
                            253 	.globl _InitUSB0
                            254 	.globl _InitVDDMonitor
                            255 	.globl _EnableUSB0
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
                    0000    739 G$gDeviceStatus$0$0==.
   0021                     740 _gDeviceStatus::
   0021                     741 	.ds 13
                    000D    742 G$gEp0Status$0$0==.
   002E                     743 _gEp0Status::
   002E                     744 	.ds 11
                    0018    745 G$gEp0Command$0$0==.
   0039                     746 _gEp0Command::
   0039                     747 	.ds 8
                    0020    748 G$gEp1InStatus$0$0==.
   0041                     749 _gEp1InStatus::
   0041                     750 	.ds 11
                    002B    751 G$gEp2OutStatus$0$0==.
   004C                     752 _gEp2OutStatus::
   004C                     753 	.ds 11
                            754 ;--------------------------------------------------------
                            755 ; overlayable items in internal ram 
                            756 ;--------------------------------------------------------
                            757 	.area	OSEG    (OVR,DATA)
                            758 ;--------------------------------------------------------
                            759 ; Stack segment in internal ram 
                            760 ;--------------------------------------------------------
                            761 	.area	SSEG	(DATA)
   005E                     762 __start__stack:
   005E                     763 	.ds	1
                            764 
                            765 ;--------------------------------------------------------
                            766 ; indirectly addressable internal ram data
                            767 ;--------------------------------------------------------
                            768 	.area ISEG    (DATA)
                            769 ;--------------------------------------------------------
                            770 ; absolute internal ram data
                            771 ;--------------------------------------------------------
                            772 	.area IABS    (ABS,DATA)
                            773 	.area IABS    (ABS,DATA)
                            774 ;--------------------------------------------------------
                            775 ; bit data
                            776 ;--------------------------------------------------------
                            777 	.area BSEG    (BIT)
                            778 ;--------------------------------------------------------
                            779 ; paged external ram data
                            780 ;--------------------------------------------------------
                            781 	.area PSEG    (PAG,XDATA)
                            782 ;--------------------------------------------------------
                            783 ; external ram data
                            784 ;--------------------------------------------------------
                            785 	.area XSEG    (XDATA)
                            786 ;--------------------------------------------------------
                            787 ; absolute external ram data
                            788 ;--------------------------------------------------------
                            789 	.area XABS    (ABS,XDATA)
                            790 ;--------------------------------------------------------
                            791 ; external initialized ram data
                            792 ;--------------------------------------------------------
                            793 	.area XISEG   (XDATA)
                            794 	.area HOME    (CODE)
                            795 	.area GSINIT0 (CODE)
                            796 	.area GSINIT1 (CODE)
                            797 	.area GSINIT2 (CODE)
                            798 	.area GSINIT3 (CODE)
                            799 	.area GSINIT4 (CODE)
                            800 	.area GSINIT5 (CODE)
                            801 	.area GSINIT  (CODE)
                            802 	.area GSFINAL (CODE)
                            803 	.area CSEG    (CODE)
                            804 ;--------------------------------------------------------
                            805 ; interrupt vector 
                            806 ;--------------------------------------------------------
                            807 	.area HOME    (CODE)
   0000                     808 __interrupt_vect:
   0000 02 00 08            809 	ljmp	__sdcc_gsinit_startup
                            810 ;--------------------------------------------------------
                            811 ; global & static initialisations
                            812 ;--------------------------------------------------------
                            813 	.area HOME    (CODE)
                            814 	.area GSINIT  (CODE)
                            815 	.area GSFINAL (CODE)
                            816 	.area GSINIT  (CODE)
                            817 	.globl __sdcc_gsinit_startup
                            818 	.globl __sdcc_program_startup
                            819 	.globl __start__stack
                            820 	.globl __mcs51_genXINIT
                            821 	.globl __mcs51_genXRAMCLEAR
                            822 	.globl __mcs51_genRAMCLEAR
                            823 	.area GSFINAL (CODE)
   0061 02 00 03            824 	ljmp	__sdcc_program_startup
                            825 ;--------------------------------------------------------
                            826 ; Home
                            827 ;--------------------------------------------------------
                            828 	.area HOME    (CODE)
                            829 	.area HOME    (CODE)
   0003                     830 __sdcc_program_startup:
   0003 12 00 64            831 	lcall	_main
                            832 ;	return from main will lock up
   0006 80 FE               833 	sjmp .
                            834 ;--------------------------------------------------------
                            835 ; code
                            836 ;--------------------------------------------------------
                            837 	.area CSEG    (CODE)
                            838 ;------------------------------------------------------------
                            839 ;Allocation info for local variables in function 'main'
                            840 ;------------------------------------------------------------
                            841 ;------------------------------------------------------------
                    0000    842 	G$main$0$0 ==.
                    0000    843 	C$Main.c$38$0$0 ==.
                            844 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:38: void main(void)
                            845 ;	-----------------------------------------
                            846 ;	 function main
                            847 ;	-----------------------------------------
   0064                     848 _main:
                    0002    849 	ar2 = 0x02
                    0003    850 	ar3 = 0x03
                    0004    851 	ar4 = 0x04
                    0005    852 	ar5 = 0x05
                    0006    853 	ar6 = 0x06
                    0007    854 	ar7 = 0x07
                    0000    855 	ar0 = 0x00
                    0001    856 	ar1 = 0x01
                    0000    857 	C$Main.c$41$1$1 ==.
                            858 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:41: PCA0MD &= ~0x40;
   0064 53 D9 BF            859 	anl	_PCA0MD,#0xBF
                    0003    860 	C$Main.c$44$1$1 ==.
                            861 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:44: InitPorts();
   0067 12 00 7A            862 	lcall	_InitPorts
                    0006    863 	C$Main.c$47$1$1 ==.
                            864 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:47: InitSysClk();
   006A 12 00 A5            865 	lcall	_InitSysClk
                    0009    866 	C$Main.c$50$1$1 ==.
                            867 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:50: InitUSB0();
   006D 12 00 C5            868 	lcall	_InitUSB0
                    000C    869 	C$Main.c$54$1$1 ==.
                            870 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:54: InitVDDMonitor();
   0070 12 01 06            871 	lcall	_InitVDDMonitor
                    000F    872 	C$Main.c$57$1$1 ==.
                            873 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:57: EA = 1;
   0073 D2 AF               874 	setb	_EA
                    0011    875 	C$Main.c$60$1$1 ==.
                            876 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:60: EnableUSB0();
   0075 12 01 0A            877 	lcall	_EnableUSB0
                    0014    878 	C$Main.c$63$1$1 ==.
                            879 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:63: while (1);
   0078                     880 00102$:
                    0014    881 	C$Main.c$64$1$1 ==.
                    0014    882 	XG$main$0$0 ==.
   0078 80 FE               883 	sjmp	00102$
                            884 ;------------------------------------------------------------
                            885 ;Allocation info for local variables in function 'InitPorts'
                            886 ;------------------------------------------------------------
                            887 ;------------------------------------------------------------
                    0016    888 	G$InitPorts$0$0 ==.
                    0016    889 	C$Main.c$70$1$1 ==.
                            890 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:70: void InitPorts()
                            891 ;	-----------------------------------------
                            892 ;	 function InitPorts
                            893 ;	-----------------------------------------
   007A                     894 _InitPorts:
                    0016    895 	C$Main.c$86$1$1 ==.
                            896 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:86: P0MDIN = 0xff;                //  No port 0 pins used as A/D
   007A 75 F1 FF            897 	mov	_P0MDIN,#0xFF
                    0019    898 	C$Main.c$87$1$1 ==.
                            899 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:87: P0MDOUT = 0xfb;				//	0 - open drain pin : 1 - push/pull
   007D 75 A4 FB            900 	mov	_P0MDOUT,#0xFB
                    001C    901 	C$Main.c$88$1$1 ==.
                            902 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:88: P0SKIP = 0x07;                //  Last 3 bits are ipi
   0080 75 D4 07            903 	mov	_P0SKIP,#0x07
                    001F    904 	C$Main.c$92$1$1 ==.
                            905 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:92: P1MDIN = 0x7f;                //  port 1.7 pin used as A/D
   0083 75 F2 7F            906 	mov	_P1MDIN,#0x7F
                    0022    907 	C$Main.c$93$1$1 ==.
                            908 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:93: P1MDOUT = 0x7e;				//	0 - open drain pin : 1 - push/pull
   0086 75 A5 7E            909 	mov	_P1MDOUT,#0x7E
                    0025    910 	C$Main.c$94$1$1 ==.
                            911 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:94: P1SKIP = 0x7f;                //  0 - skipped by Xbar : 1 - Not skipped
   0089 75 D5 7F            912 	mov	_P1SKIP,#0x7F
                    0028    913 	C$Main.c$98$1$1 ==.
                            914 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:98: P2MDIN = 0xff;                //  No port 2 pins used as A/D
   008C 75 F3 FF            915 	mov	_P2MDIN,#0xFF
                    002B    916 	C$Main.c$99$1$1 ==.
                            917 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:99: P2MDOUT = 0xcb;				  //  0 - open drain pin : 1 - push/pull
   008F 75 A6 CB            918 	mov	_P2MDOUT,#0xCB
                    002E    919 	C$Main.c$100$1$1 ==.
                            920 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:100: P2SKIP = 0xff;                //  
   0092 75 D6 FF            921 	mov	_P2SKIP,#0xFF
                    0031    922 	C$Main.c$104$1$1 ==.
                            923 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:104: P2MDIN = 0x01;                //  Port 3.1 pin not used as A/D
   0095 75 F3 01            924 	mov	_P2MDIN,#0x01
                    0034    925 	C$Main.c$105$1$1 ==.
                            926 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:105: P2MDOUT = 0xca;
   0098 75 A6 CA            927 	mov	_P2MDOUT,#0xCA
                    0037    928 	C$Main.c$106$1$1 ==.
                            929 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:106: P2SKIP = 0xff;                //  Last 3 bits are i2c
   009B 75 D6 FF            930 	mov	_P2SKIP,#0xFF
                    003A    931 	C$Main.c$110$1$1 ==.
                            932 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:110: XBR0 = 0x07;                  //  Enable all serial ports
   009E 75 E1 07            933 	mov	_XBR0,#0x07
                    003D    934 	C$Main.c$111$1$1 ==.
                            935 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:111: XBR1 = 0x40;                  //  Weak pullups, XBARE enabled
   00A1 75 E2 40            936 	mov	_XBR1,#0x40
                    0040    937 	C$Main.c$112$1$1 ==.
                    0040    938 	XG$InitPorts$0$0 ==.
   00A4 22                  939 	ret
                            940 ;------------------------------------------------------------
                            941 ;Allocation info for local variables in function 'InitSysClk'
                            942 ;------------------------------------------------------------
                            943 ;delay                     Allocated to registers r2 
                            944 ;------------------------------------------------------------
                    0041    945 	G$InitSysClk$0$0 ==.
                    0041    946 	C$Main.c$118$1$1 ==.
                            947 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:118: void InitSysClk()
                            948 ;	-----------------------------------------
                            949 ;	 function InitSysClk
                            950 ;	-----------------------------------------
   00A5                     951 _InitSysClk:
                    0041    952 	C$Main.c$125$1$1 ==.
                            953 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:125: OSCICN |= 0x03;
   00A5 43 B2 03            954 	orl	_OSCICN,#0x03
                    0044    955 	C$Main.c$129$1$1 ==.
                            956 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:129: CLKMUL = 0x00;
   00A8 75 B9 00            957 	mov	_CLKMUL,#0x00
                    0047    958 	C$Main.c$132$1$1 ==.
                            959 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:132: CLKMUL |= 0x80;
   00AB 43 B9 80            960 	orl	_CLKMUL,#0x80
                    004A    961 	C$Main.c$136$1$1 ==.
                            962 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:136: while (delay--);
   00AE 7A 64               963 	mov	r2,#0x64
   00B0                     964 00101$:
   00B0 8A 03               965 	mov	ar3,r2
   00B2 1A                  966 	dec	r2
   00B3 EB                  967 	mov	a,r3
   00B4 70 FA               968 	jnz	00101$
                    0052    969 	C$Main.c$139$1$1 ==.
                            970 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:139: CLKMUL |= 0xC0;
   00B6 43 B9 C0            971 	orl	_CLKMUL,#0xC0
                    0055    972 	C$Main.c$142$1$1 ==.
                            973 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:142: while(!(CLKMUL & 0x20));
   00B9                     974 00104$:
   00B9 E5 B9               975 	mov	a,_CLKMUL
   00BB 30 E5 FB            976 	jnb	acc.5,00104$
                    005A    977 	C$Main.c$145$1$1 ==.
                            978 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:145: CLKSEL |= USB_4X_CLOCK;
   00BE 85 A9 A9            979 	mov	_CLKSEL,_CLKSEL
                    005D    980 	C$Main.c$148$1$1 ==.
                            981 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:148: CLKSEL |= SYS_4X_DIV_2;
   00C1 43 A9 02            982 	orl	_CLKSEL,#0x02
                    0060    983 	C$Main.c$149$1$1 ==.
                    0060    984 	XG$InitSysClk$0$0 ==.
   00C4 22                  985 	ret
                            986 ;------------------------------------------------------------
                            987 ;Allocation info for local variables in function 'InitUSB0'
                            988 ;------------------------------------------------------------
                            989 ;------------------------------------------------------------
                    0061    990 	G$InitUSB0$0$0 ==.
                    0061    991 	C$Main.c$156$1$1 ==.
                            992 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:156: void InitUSB0()
                            993 ;	-----------------------------------------
                            994 ;	 function InitUSB0
                            995 ;	-----------------------------------------
   00C5                     996 _InitUSB0:
                    0061    997 	C$Main.c$159$2$2 ==.
                            998 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:159: UWRITE_BYTE(POWER, 0x08);
   00C5 75 96 01            999 	mov	_USB0ADR,#0x01
   00C8 75 97 08           1000 	mov	_USB0DAT,#0x08
   00CB                    1001 00101$:
   00CB E5 96              1002 	mov	a,_USB0ADR
   00CD 20 E7 FB           1003 	jb	acc.7,00101$
                    006C   1004 	C$Main.c$162$2$3 ==.
                           1005 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:162: UWRITE_BYTE(IN1IE, 0x0F);
   00D0 75 96 07           1006 	mov	_USB0ADR,#0x07
   00D3 75 97 0F           1007 	mov	_USB0DAT,#0x0F
   00D6                    1008 00104$:
   00D6 E5 96              1009 	mov	a,_USB0ADR
   00D8 20 E7 FB           1010 	jb	acc.7,00104$
                    0077   1011 	C$Main.c$163$2$4 ==.
                           1012 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:163: UWRITE_BYTE(OUT1IE, 0x0F);
   00DB 75 96 09           1013 	mov	_USB0ADR,#0x09
   00DE 75 97 0F           1014 	mov	_USB0DAT,#0x0F
   00E1                    1015 00107$:
   00E1 E5 96              1016 	mov	a,_USB0ADR
   00E3 20 E7 FB           1017 	jb	acc.7,00107$
                    0082   1018 	C$Main.c$166$2$5 ==.
                           1019 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:166: UWRITE_BYTE(CMIE, 0x04);
   00E6 75 96 0B           1020 	mov	_USB0ADR,#0x0B
   00E9 75 97 04           1021 	mov	_USB0DAT,#0x04
   00EC                    1022 00110$:
   00EC E5 96              1023 	mov	a,_USB0ADR
   00EE 20 E7 FB           1024 	jb	acc.7,00110$
                    008D   1025 	C$Main.c$169$1$1 ==.
                           1026 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:169: USB0XCN = 0xC0;
   00F1 75 D7 C0           1027 	mov	_USB0XCN,#0xC0
                    0090   1028 	C$Main.c$172$1$1 ==.
                           1029 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:172: USB0XCN |= FULL_SPEED;
   00F4 43 D7 20           1030 	orl	_USB0XCN,#0x20
                    0093   1031 	C$Main.c$176$2$6 ==.
                           1032 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:176: UWRITE_BYTE(CLKREC, 0x80);
   00F7 75 96 0F           1033 	mov	_USB0ADR,#0x0F
   00FA 75 97 80           1034 	mov	_USB0DAT,#0x80
   00FD                    1035 00113$:
   00FD E5 96              1036 	mov	a,_USB0ADR
   00FF 20 E7 FB           1037 	jb	acc.7,00113$
                    009E   1038 	C$Main.c$179$1$1 ==.
                           1039 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:179: EIE1 |= 0x02;
   0102 43 E6 02           1040 	orl	_EIE1,#0x02
                    00A1   1041 	C$Main.c$180$1$1 ==.
                    00A1   1042 	XG$InitUSB0$0$0 ==.
   0105 22                 1043 	ret
                           1044 ;------------------------------------------------------------
                           1045 ;Allocation info for local variables in function 'InitVDDMonitor'
                           1046 ;------------------------------------------------------------
                           1047 ;------------------------------------------------------------
                    00A2   1048 	G$InitVDDMonitor$0$0 ==.
                    00A2   1049 	C$Main.c$187$1$1 ==.
                           1050 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:187: void InitVDDMonitor()
                           1051 ;	-----------------------------------------
                           1052 ;	 function InitVDDMonitor
                           1053 ;	-----------------------------------------
   0106                    1054 _InitVDDMonitor:
                    00A2   1055 	C$Main.c$189$1$1 ==.
                           1056 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:189: RSTSRC |= 0x02;
   0106 43 EF 02           1057 	orl	_RSTSRC,#0x02
                    00A5   1058 	C$Main.c$190$1$1 ==.
                    00A5   1059 	XG$InitVDDMonitor$0$0 ==.
   0109 22                 1060 	ret
                           1061 ;------------------------------------------------------------
                           1062 ;Allocation info for local variables in function 'EnableUSB0'
                           1063 ;------------------------------------------------------------
                           1064 ;------------------------------------------------------------
                    00A6   1065 	G$EnableUSB0$0$0 ==.
                    00A6   1066 	C$Main.c$196$1$1 ==.
                           1067 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:196: void EnableUSB0()
                           1068 ;	-----------------------------------------
                           1069 ;	 function EnableUSB0
                           1070 ;	-----------------------------------------
   010A                    1071 _EnableUSB0:
                    00A6   1072 	C$Main.c$201$2$2 ==.
                           1073 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:201: UWRITE_BYTE(POWER, 0x00);
   010A 75 96 01           1074 	mov	_USB0ADR,#0x01
   010D 75 97 00           1075 	mov	_USB0DAT,#0x00
   0110                    1076 00101$:
   0110 E5 96              1077 	mov	a,_USB0ADR
   0112 20 E7 FB           1078 	jb	acc.7,00101$
                    00B1   1079 	C$Main.c$202$2$2 ==.
                    00B1   1080 	XG$EnableUSB0$0$0 ==.
   0115 22                 1081 	ret
                           1082 	.area CSEG    (CODE)
                           1083 	.area CONST   (CODE)
                           1084 	.area XINIT   (CODE)
                           1085 	.area CABS    (ABS,CODE)
