                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sun Sep 11 14:13:42 2011
                              5 ;--------------------------------------------------------
                              6 	.module potentiostat_HWtestingMain
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _ADC_Init
                             13 	.globl _main
                             14 	.globl _Motor2Step
                             15 	.globl _Motor2Dir
                             16 	.globl _Motor1Step
                             17 	.globl _Motor1Dir
                             18 	.globl _NotDriverEN
                             19 	.globl _ERRORPIN
                             20 	.globl _NRAMHOLD
                             21 	.globl _NRAMCS
                             22 	.globl _OUTPUTEN
                             23 	.globl _NADCCS
                             24 	.globl _POS
                             25 	.globl _CAL
                             26 	.globl _NDACCS
                             27 	.globl _LASER
                             28 	.globl _OUTTTL
                             29 	.globl _INTTL
                             30 	.globl _M1STEP
                             31 	.globl _M1DIR
                             32 	.globl _NDRIVEREN
                             33 	.globl _M2STEP
                             34 	.globl _M2DIR
                             35 	.globl _SPIEN
                             36 	.globl _TXBMT
                             37 	.globl _NSSMD0
                             38 	.globl _NSSMD1
                             39 	.globl _RXOVRN
                             40 	.globl _MODF
                             41 	.globl _WCOL
                             42 	.globl _SPIF
                             43 	.globl _AD0CM0
                             44 	.globl _AD0CM1
                             45 	.globl _AD0CM2
                             46 	.globl _AD0WINT
                             47 	.globl _AD0BUSY
                             48 	.globl _AD0INT
                             49 	.globl _AD0TM
                             50 	.globl _AD0EN
                             51 	.globl _CCF0
                             52 	.globl _CCF1
                             53 	.globl _CCF2
                             54 	.globl _CCF3
                             55 	.globl _CCF4
                             56 	.globl _CR
                             57 	.globl _CF
                             58 	.globl _P
                             59 	.globl _F1
                             60 	.globl _OV
                             61 	.globl _RS0
                             62 	.globl _RS1
                             63 	.globl _F0
                             64 	.globl _AC
                             65 	.globl _CY
                             66 	.globl _T2XCLK
                             67 	.globl _TR2
                             68 	.globl _T2SPLIT
                             69 	.globl _T2SOF
                             70 	.globl _TF2LEN
                             71 	.globl _TF2L
                             72 	.globl _TF2H
                             73 	.globl _SI
                             74 	.globl _ACK
                             75 	.globl _ARBLOST
                             76 	.globl _ACKRQ
                             77 	.globl _STO
                             78 	.globl _STA
                             79 	.globl _TXMODE
                             80 	.globl _MASTER
                             81 	.globl _PX0
                             82 	.globl _PT0
                             83 	.globl _PX1
                             84 	.globl _PT1
                             85 	.globl _PS0
                             86 	.globl _PT2
                             87 	.globl _PSPI0
                             88 	.globl _EX0
                             89 	.globl _ET0
                             90 	.globl _EX1
                             91 	.globl _ET1
                             92 	.globl _ES0
                             93 	.globl _ET2
                             94 	.globl _ESPI0
                             95 	.globl _EA
                             96 	.globl _RI0
                             97 	.globl _TI0
                             98 	.globl _RB80
                             99 	.globl _TB80
                            100 	.globl _REN0
                            101 	.globl _MCE0
                            102 	.globl _S0MODE
                            103 	.globl _IT0
                            104 	.globl _IE0
                            105 	.globl _IT1
                            106 	.globl _IE1
                            107 	.globl _TR0
                            108 	.globl _TF0
                            109 	.globl _TR1
                            110 	.globl _TF1
                            111 	.globl _PCA0CP4
                            112 	.globl _PCA0CP0
                            113 	.globl _PCA0
                            114 	.globl _PCA0CP3
                            115 	.globl _PCA0CP2
                            116 	.globl _PCA0CP1
                            117 	.globl _TMR2
                            118 	.globl _TMR2RL
                            119 	.globl _ADC0LT
                            120 	.globl _ADC0GT
                            121 	.globl _ADC0
                            122 	.globl _TMR3
                            123 	.globl _TMR3RL
                            124 	.globl _DP
                            125 	.globl _VDM0CN
                            126 	.globl _PCA0CPH4
                            127 	.globl _PCA0CPL4
                            128 	.globl _PCA0CPH0
                            129 	.globl _PCA0CPL0
                            130 	.globl _PCA0H
                            131 	.globl _PCA0L
                            132 	.globl _SPI0CN
                            133 	.globl _EIP2
                            134 	.globl _EIP1
                            135 	.globl _P3MDIN
                            136 	.globl _P2MDIN
                            137 	.globl _P1MDIN
                            138 	.globl _P0MDIN
                            139 	.globl _B
                            140 	.globl _RSTSRC
                            141 	.globl _PCA0CPH3
                            142 	.globl _PCA0CPL3
                            143 	.globl _PCA0CPH2
                            144 	.globl _PCA0CPL2
                            145 	.globl _PCA0CPH1
                            146 	.globl _PCA0CPL1
                            147 	.globl _ADC0CN
                            148 	.globl _EIE2
                            149 	.globl _EIE1
                            150 	.globl _IT01CF
                            151 	.globl _XBR1
                            152 	.globl _XBR0
                            153 	.globl _ACC
                            154 	.globl _PCA0CPM4
                            155 	.globl _PCA0CPM3
                            156 	.globl _PCA0CPM2
                            157 	.globl _PCA0CPM1
                            158 	.globl _PCA0CPM0
                            159 	.globl _PCA0MD
                            160 	.globl _PCA0CN
                            161 	.globl _USB0XCN
                            162 	.globl _P2SKIP
                            163 	.globl _P1SKIP
                            164 	.globl _P0SKIP
                            165 	.globl _REF0CN
                            166 	.globl _PSW
                            167 	.globl _TMR2H
                            168 	.globl _TMR2L
                            169 	.globl _TMR2RLH
                            170 	.globl _TMR2RLL
                            171 	.globl _REG0CN
                            172 	.globl _TMR2CN
                            173 	.globl _ADC0LTH
                            174 	.globl _ADC0LTL
                            175 	.globl _ADC0GTH
                            176 	.globl _ADC0GTL
                            177 	.globl _SMB0DAT
                            178 	.globl _SMB0CF
                            179 	.globl _SMB0CN
                            180 	.globl _ADC0H
                            181 	.globl _ADC0L
                            182 	.globl _ADC0CF
                            183 	.globl _AMX0P
                            184 	.globl _AMX0N
                            185 	.globl _CLKMUL
                            186 	.globl _IP
                            187 	.globl _FLKEY
                            188 	.globl _FLSCL
                            189 	.globl _OSCICL
                            190 	.globl _OSCICN
                            191 	.globl _OSCXCN
                            192 	.globl _P3
                            193 	.globl _EMI0CN
                            194 	.globl _CLKSEL
                            195 	.globl _IE
                            196 	.globl _P3MDOUT
                            197 	.globl _P2MDOUT
                            198 	.globl _P1MDOUT
                            199 	.globl _P0MDOUT
                            200 	.globl _SPI0DAT
                            201 	.globl _SPIDAT
                            202 	.globl _SPI0CKR
                            203 	.globl _SPICKR
                            204 	.globl _SPI0CFG
                            205 	.globl _SPICFG
                            206 	.globl _P2
                            207 	.globl _CPT0MX
                            208 	.globl _CPT1MX
                            209 	.globl _CPT0MD
                            210 	.globl _CPT1MD
                            211 	.globl _CPT0CN
                            212 	.globl _CPT1CN
                            213 	.globl _SBUF0
                            214 	.globl _SCON0
                            215 	.globl _USB0DAT
                            216 	.globl _USB0ADR
                            217 	.globl _TMR3H
                            218 	.globl _TMR3L
                            219 	.globl _TMR3RLH
                            220 	.globl _TMR3RLL
                            221 	.globl _TMR3CN
                            222 	.globl _P1
                            223 	.globl _PSCTL
                            224 	.globl _CKCON
                            225 	.globl _TH1
                            226 	.globl _TH0
                            227 	.globl _TL1
                            228 	.globl _TL0
                            229 	.globl _TMOD
                            230 	.globl _TCON
                            231 	.globl _PCON
                            232 	.globl _DPH
                            233 	.globl _DPL
                            234 	.globl _SP
                            235 	.globl _P0
                            236 	.globl _loop_cnt
                            237 	.globl _RAM_from_ptr_high
                            238 	.globl _RAM_from_ptr_low
                            239 	.globl _RAM_to_ptr_high
                            240 	.globl _RAM_to_ptr_low
                            241 	.globl _Write_to_RAM
                            242 	.globl _latest_ADC_LowByte
                            243 	.globl _latest_ADC_HighByte
                            244 	.globl _ADC_timer_MSB
                            245 	.globl _ADC_settled
                            246 	.globl _ADC_timer
                            247 	.globl _SPI_RAM_Bytes
                            248 	.globl _SPI_ADC_Bytes
                            249 	.globl _SPI_DAC_Bytes
                            250 	.globl _Writing_to_RAM
                            251 	.globl _Writing_to_ADC
                            252 	.globl _Writing_to_DAC
                            253 	.globl _SYSCLK_Init
                            254 	.globl _PORT_Init
                            255 	.globl _Timer1_Init
                            256 	.globl _Timer2_Init
                            257 	.globl _SPI_Init
                            258 	.globl _DAC_Init
                            259 	.globl _RAM_Write
                            260 	.globl _SPI_ISR
                            261 	.globl _Timer1_ISR
                            262 	.globl _Timer2_ISR
                            263 ;--------------------------------------------------------
                            264 ; special function registers
                            265 ;--------------------------------------------------------
                            266 	.area RSEG    (DATA)
                    0080    267 G$P0$0$0 == 0x0080
                    0080    268 _P0	=	0x0080
                    0081    269 G$SP$0$0 == 0x0081
                    0081    270 _SP	=	0x0081
                    0082    271 G$DPL$0$0 == 0x0082
                    0082    272 _DPL	=	0x0082
                    0083    273 G$DPH$0$0 == 0x0083
                    0083    274 _DPH	=	0x0083
                    0087    275 G$PCON$0$0 == 0x0087
                    0087    276 _PCON	=	0x0087
                    0088    277 G$TCON$0$0 == 0x0088
                    0088    278 _TCON	=	0x0088
                    0089    279 G$TMOD$0$0 == 0x0089
                    0089    280 _TMOD	=	0x0089
                    008A    281 G$TL0$0$0 == 0x008a
                    008A    282 _TL0	=	0x008a
                    008B    283 G$TL1$0$0 == 0x008b
                    008B    284 _TL1	=	0x008b
                    008C    285 G$TH0$0$0 == 0x008c
                    008C    286 _TH0	=	0x008c
                    008D    287 G$TH1$0$0 == 0x008d
                    008D    288 _TH1	=	0x008d
                    008E    289 G$CKCON$0$0 == 0x008e
                    008E    290 _CKCON	=	0x008e
                    008F    291 G$PSCTL$0$0 == 0x008f
                    008F    292 _PSCTL	=	0x008f
                    0090    293 G$P1$0$0 == 0x0090
                    0090    294 _P1	=	0x0090
                    0091    295 G$TMR3CN$0$0 == 0x0091
                    0091    296 _TMR3CN	=	0x0091
                    0092    297 G$TMR3RLL$0$0 == 0x0092
                    0092    298 _TMR3RLL	=	0x0092
                    0093    299 G$TMR3RLH$0$0 == 0x0093
                    0093    300 _TMR3RLH	=	0x0093
                    0094    301 G$TMR3L$0$0 == 0x0094
                    0094    302 _TMR3L	=	0x0094
                    0095    303 G$TMR3H$0$0 == 0x0095
                    0095    304 _TMR3H	=	0x0095
                    0096    305 G$USB0ADR$0$0 == 0x0096
                    0096    306 _USB0ADR	=	0x0096
                    0097    307 G$USB0DAT$0$0 == 0x0097
                    0097    308 _USB0DAT	=	0x0097
                    0098    309 G$SCON0$0$0 == 0x0098
                    0098    310 _SCON0	=	0x0098
                    0099    311 G$SBUF0$0$0 == 0x0099
                    0099    312 _SBUF0	=	0x0099
                    009A    313 G$CPT1CN$0$0 == 0x009a
                    009A    314 _CPT1CN	=	0x009a
                    009B    315 G$CPT0CN$0$0 == 0x009b
                    009B    316 _CPT0CN	=	0x009b
                    009C    317 G$CPT1MD$0$0 == 0x009c
                    009C    318 _CPT1MD	=	0x009c
                    009D    319 G$CPT0MD$0$0 == 0x009d
                    009D    320 _CPT0MD	=	0x009d
                    009E    321 G$CPT1MX$0$0 == 0x009e
                    009E    322 _CPT1MX	=	0x009e
                    009F    323 G$CPT0MX$0$0 == 0x009f
                    009F    324 _CPT0MX	=	0x009f
                    00A0    325 G$P2$0$0 == 0x00a0
                    00A0    326 _P2	=	0x00a0
                    00A1    327 G$SPICFG$0$0 == 0x00a1
                    00A1    328 _SPICFG	=	0x00a1
                    00A1    329 G$SPI0CFG$0$0 == 0x00a1
                    00A1    330 _SPI0CFG	=	0x00a1
                    00A2    331 G$SPICKR$0$0 == 0x00a2
                    00A2    332 _SPICKR	=	0x00a2
                    00A2    333 G$SPI0CKR$0$0 == 0x00a2
                    00A2    334 _SPI0CKR	=	0x00a2
                    00A3    335 G$SPIDAT$0$0 == 0x00a3
                    00A3    336 _SPIDAT	=	0x00a3
                    00A3    337 G$SPI0DAT$0$0 == 0x00a3
                    00A3    338 _SPI0DAT	=	0x00a3
                    00A4    339 G$P0MDOUT$0$0 == 0x00a4
                    00A4    340 _P0MDOUT	=	0x00a4
                    00A5    341 G$P1MDOUT$0$0 == 0x00a5
                    00A5    342 _P1MDOUT	=	0x00a5
                    00A6    343 G$P2MDOUT$0$0 == 0x00a6
                    00A6    344 _P2MDOUT	=	0x00a6
                    00A7    345 G$P3MDOUT$0$0 == 0x00a7
                    00A7    346 _P3MDOUT	=	0x00a7
                    00A8    347 G$IE$0$0 == 0x00a8
                    00A8    348 _IE	=	0x00a8
                    00A9    349 G$CLKSEL$0$0 == 0x00a9
                    00A9    350 _CLKSEL	=	0x00a9
                    00AA    351 G$EMI0CN$0$0 == 0x00aa
                    00AA    352 _EMI0CN	=	0x00aa
                    00B0    353 G$P3$0$0 == 0x00b0
                    00B0    354 _P3	=	0x00b0
                    00B1    355 G$OSCXCN$0$0 == 0x00b1
                    00B1    356 _OSCXCN	=	0x00b1
                    00B2    357 G$OSCICN$0$0 == 0x00b2
                    00B2    358 _OSCICN	=	0x00b2
                    00B3    359 G$OSCICL$0$0 == 0x00b3
                    00B3    360 _OSCICL	=	0x00b3
                    00B6    361 G$FLSCL$0$0 == 0x00b6
                    00B6    362 _FLSCL	=	0x00b6
                    00B7    363 G$FLKEY$0$0 == 0x00b7
                    00B7    364 _FLKEY	=	0x00b7
                    00B8    365 G$IP$0$0 == 0x00b8
                    00B8    366 _IP	=	0x00b8
                    00B9    367 G$CLKMUL$0$0 == 0x00b9
                    00B9    368 _CLKMUL	=	0x00b9
                    00BA    369 G$AMX0N$0$0 == 0x00ba
                    00BA    370 _AMX0N	=	0x00ba
                    00BB    371 G$AMX0P$0$0 == 0x00bb
                    00BB    372 _AMX0P	=	0x00bb
                    00BC    373 G$ADC0CF$0$0 == 0x00bc
                    00BC    374 _ADC0CF	=	0x00bc
                    00BD    375 G$ADC0L$0$0 == 0x00bd
                    00BD    376 _ADC0L	=	0x00bd
                    00BE    377 G$ADC0H$0$0 == 0x00be
                    00BE    378 _ADC0H	=	0x00be
                    00C0    379 G$SMB0CN$0$0 == 0x00c0
                    00C0    380 _SMB0CN	=	0x00c0
                    00C1    381 G$SMB0CF$0$0 == 0x00c1
                    00C1    382 _SMB0CF	=	0x00c1
                    00C2    383 G$SMB0DAT$0$0 == 0x00c2
                    00C2    384 _SMB0DAT	=	0x00c2
                    00C3    385 G$ADC0GTL$0$0 == 0x00c3
                    00C3    386 _ADC0GTL	=	0x00c3
                    00C4    387 G$ADC0GTH$0$0 == 0x00c4
                    00C4    388 _ADC0GTH	=	0x00c4
                    00C5    389 G$ADC0LTL$0$0 == 0x00c5
                    00C5    390 _ADC0LTL	=	0x00c5
                    00C6    391 G$ADC0LTH$0$0 == 0x00c6
                    00C6    392 _ADC0LTH	=	0x00c6
                    00C8    393 G$TMR2CN$0$0 == 0x00c8
                    00C8    394 _TMR2CN	=	0x00c8
                    00C9    395 G$REG0CN$0$0 == 0x00c9
                    00C9    396 _REG0CN	=	0x00c9
                    00CA    397 G$TMR2RLL$0$0 == 0x00ca
                    00CA    398 _TMR2RLL	=	0x00ca
                    00CB    399 G$TMR2RLH$0$0 == 0x00cb
                    00CB    400 _TMR2RLH	=	0x00cb
                    00CC    401 G$TMR2L$0$0 == 0x00cc
                    00CC    402 _TMR2L	=	0x00cc
                    00CD    403 G$TMR2H$0$0 == 0x00cd
                    00CD    404 _TMR2H	=	0x00cd
                    00D0    405 G$PSW$0$0 == 0x00d0
                    00D0    406 _PSW	=	0x00d0
                    00D1    407 G$REF0CN$0$0 == 0x00d1
                    00D1    408 _REF0CN	=	0x00d1
                    00D4    409 G$P0SKIP$0$0 == 0x00d4
                    00D4    410 _P0SKIP	=	0x00d4
                    00D5    411 G$P1SKIP$0$0 == 0x00d5
                    00D5    412 _P1SKIP	=	0x00d5
                    00D6    413 G$P2SKIP$0$0 == 0x00d6
                    00D6    414 _P2SKIP	=	0x00d6
                    00D7    415 G$USB0XCN$0$0 == 0x00d7
                    00D7    416 _USB0XCN	=	0x00d7
                    00D8    417 G$PCA0CN$0$0 == 0x00d8
                    00D8    418 _PCA0CN	=	0x00d8
                    00D9    419 G$PCA0MD$0$0 == 0x00d9
                    00D9    420 _PCA0MD	=	0x00d9
                    00DA    421 G$PCA0CPM0$0$0 == 0x00da
                    00DA    422 _PCA0CPM0	=	0x00da
                    00DB    423 G$PCA0CPM1$0$0 == 0x00db
                    00DB    424 _PCA0CPM1	=	0x00db
                    00DC    425 G$PCA0CPM2$0$0 == 0x00dc
                    00DC    426 _PCA0CPM2	=	0x00dc
                    00DD    427 G$PCA0CPM3$0$0 == 0x00dd
                    00DD    428 _PCA0CPM3	=	0x00dd
                    00DE    429 G$PCA0CPM4$0$0 == 0x00de
                    00DE    430 _PCA0CPM4	=	0x00de
                    00E0    431 G$ACC$0$0 == 0x00e0
                    00E0    432 _ACC	=	0x00e0
                    00E1    433 G$XBR0$0$0 == 0x00e1
                    00E1    434 _XBR0	=	0x00e1
                    00E2    435 G$XBR1$0$0 == 0x00e2
                    00E2    436 _XBR1	=	0x00e2
                    00E4    437 G$IT01CF$0$0 == 0x00e4
                    00E4    438 _IT01CF	=	0x00e4
                    00E6    439 G$EIE1$0$0 == 0x00e6
                    00E6    440 _EIE1	=	0x00e6
                    00E7    441 G$EIE2$0$0 == 0x00e7
                    00E7    442 _EIE2	=	0x00e7
                    00E8    443 G$ADC0CN$0$0 == 0x00e8
                    00E8    444 _ADC0CN	=	0x00e8
                    00E9    445 G$PCA0CPL1$0$0 == 0x00e9
                    00E9    446 _PCA0CPL1	=	0x00e9
                    00EA    447 G$PCA0CPH1$0$0 == 0x00ea
                    00EA    448 _PCA0CPH1	=	0x00ea
                    00EB    449 G$PCA0CPL2$0$0 == 0x00eb
                    00EB    450 _PCA0CPL2	=	0x00eb
                    00EC    451 G$PCA0CPH2$0$0 == 0x00ec
                    00EC    452 _PCA0CPH2	=	0x00ec
                    00ED    453 G$PCA0CPL3$0$0 == 0x00ed
                    00ED    454 _PCA0CPL3	=	0x00ed
                    00EE    455 G$PCA0CPH3$0$0 == 0x00ee
                    00EE    456 _PCA0CPH3	=	0x00ee
                    00EF    457 G$RSTSRC$0$0 == 0x00ef
                    00EF    458 _RSTSRC	=	0x00ef
                    00F0    459 G$B$0$0 == 0x00f0
                    00F0    460 _B	=	0x00f0
                    00F1    461 G$P0MDIN$0$0 == 0x00f1
                    00F1    462 _P0MDIN	=	0x00f1
                    00F2    463 G$P1MDIN$0$0 == 0x00f2
                    00F2    464 _P1MDIN	=	0x00f2
                    00F3    465 G$P2MDIN$0$0 == 0x00f3
                    00F3    466 _P2MDIN	=	0x00f3
                    00F4    467 G$P3MDIN$0$0 == 0x00f4
                    00F4    468 _P3MDIN	=	0x00f4
                    00F6    469 G$EIP1$0$0 == 0x00f6
                    00F6    470 _EIP1	=	0x00f6
                    00F7    471 G$EIP2$0$0 == 0x00f7
                    00F7    472 _EIP2	=	0x00f7
                    00F8    473 G$SPI0CN$0$0 == 0x00f8
                    00F8    474 _SPI0CN	=	0x00f8
                    00F9    475 G$PCA0L$0$0 == 0x00f9
                    00F9    476 _PCA0L	=	0x00f9
                    00FA    477 G$PCA0H$0$0 == 0x00fa
                    00FA    478 _PCA0H	=	0x00fa
                    00FB    479 G$PCA0CPL0$0$0 == 0x00fb
                    00FB    480 _PCA0CPL0	=	0x00fb
                    00FC    481 G$PCA0CPH0$0$0 == 0x00fc
                    00FC    482 _PCA0CPH0	=	0x00fc
                    00FD    483 G$PCA0CPL4$0$0 == 0x00fd
                    00FD    484 _PCA0CPL4	=	0x00fd
                    00FE    485 G$PCA0CPH4$0$0 == 0x00fe
                    00FE    486 _PCA0CPH4	=	0x00fe
                    00FF    487 G$VDM0CN$0$0 == 0x00ff
                    00FF    488 _VDM0CN	=	0x00ff
                    8382    489 G$DP$0$0 == 0x8382
                    8382    490 _DP	=	0x8382
                    9392    491 G$TMR3RL$0$0 == 0x9392
                    9392    492 _TMR3RL	=	0x9392
                    9594    493 G$TMR3$0$0 == 0x9594
                    9594    494 _TMR3	=	0x9594
                    BEBD    495 G$ADC0$0$0 == 0xbebd
                    BEBD    496 _ADC0	=	0xbebd
                    C4C3    497 G$ADC0GT$0$0 == 0xc4c3
                    C4C3    498 _ADC0GT	=	0xc4c3
                    C6C5    499 G$ADC0LT$0$0 == 0xc6c5
                    C6C5    500 _ADC0LT	=	0xc6c5
                    CBCA    501 G$TMR2RL$0$0 == 0xcbca
                    CBCA    502 _TMR2RL	=	0xcbca
                    CDCC    503 G$TMR2$0$0 == 0xcdcc
                    CDCC    504 _TMR2	=	0xcdcc
                    EAE9    505 G$PCA0CP1$0$0 == 0xeae9
                    EAE9    506 _PCA0CP1	=	0xeae9
                    ECEB    507 G$PCA0CP2$0$0 == 0xeceb
                    ECEB    508 _PCA0CP2	=	0xeceb
                    EEED    509 G$PCA0CP3$0$0 == 0xeeed
                    EEED    510 _PCA0CP3	=	0xeeed
                    FAF9    511 G$PCA0$0$0 == 0xfaf9
                    FAF9    512 _PCA0	=	0xfaf9
                    FCFB    513 G$PCA0CP0$0$0 == 0xfcfb
                    FCFB    514 _PCA0CP0	=	0xfcfb
                    FEFD    515 G$PCA0CP4$0$0 == 0xfefd
                    FEFD    516 _PCA0CP4	=	0xfefd
                            517 ;--------------------------------------------------------
                            518 ; special function bits
                            519 ;--------------------------------------------------------
                            520 	.area RSEG    (DATA)
                    008F    521 G$TF1$0$0 == 0x008f
                    008F    522 _TF1	=	0x008f
                    008E    523 G$TR1$0$0 == 0x008e
                    008E    524 _TR1	=	0x008e
                    008D    525 G$TF0$0$0 == 0x008d
                    008D    526 _TF0	=	0x008d
                    008C    527 G$TR0$0$0 == 0x008c
                    008C    528 _TR0	=	0x008c
                    008B    529 G$IE1$0$0 == 0x008b
                    008B    530 _IE1	=	0x008b
                    008A    531 G$IT1$0$0 == 0x008a
                    008A    532 _IT1	=	0x008a
                    0089    533 G$IE0$0$0 == 0x0089
                    0089    534 _IE0	=	0x0089
                    0088    535 G$IT0$0$0 == 0x0088
                    0088    536 _IT0	=	0x0088
                    009F    537 G$S0MODE$0$0 == 0x009f
                    009F    538 _S0MODE	=	0x009f
                    009D    539 G$MCE0$0$0 == 0x009d
                    009D    540 _MCE0	=	0x009d
                    009C    541 G$REN0$0$0 == 0x009c
                    009C    542 _REN0	=	0x009c
                    009B    543 G$TB80$0$0 == 0x009b
                    009B    544 _TB80	=	0x009b
                    009A    545 G$RB80$0$0 == 0x009a
                    009A    546 _RB80	=	0x009a
                    0099    547 G$TI0$0$0 == 0x0099
                    0099    548 _TI0	=	0x0099
                    0098    549 G$RI0$0$0 == 0x0098
                    0098    550 _RI0	=	0x0098
                    00AF    551 G$EA$0$0 == 0x00af
                    00AF    552 _EA	=	0x00af
                    00AE    553 G$ESPI0$0$0 == 0x00ae
                    00AE    554 _ESPI0	=	0x00ae
                    00AD    555 G$ET2$0$0 == 0x00ad
                    00AD    556 _ET2	=	0x00ad
                    00AC    557 G$ES0$0$0 == 0x00ac
                    00AC    558 _ES0	=	0x00ac
                    00AB    559 G$ET1$0$0 == 0x00ab
                    00AB    560 _ET1	=	0x00ab
                    00AA    561 G$EX1$0$0 == 0x00aa
                    00AA    562 _EX1	=	0x00aa
                    00A9    563 G$ET0$0$0 == 0x00a9
                    00A9    564 _ET0	=	0x00a9
                    00A8    565 G$EX0$0$0 == 0x00a8
                    00A8    566 _EX0	=	0x00a8
                    00BE    567 G$PSPI0$0$0 == 0x00be
                    00BE    568 _PSPI0	=	0x00be
                    00BD    569 G$PT2$0$0 == 0x00bd
                    00BD    570 _PT2	=	0x00bd
                    00BC    571 G$PS0$0$0 == 0x00bc
                    00BC    572 _PS0	=	0x00bc
                    00BB    573 G$PT1$0$0 == 0x00bb
                    00BB    574 _PT1	=	0x00bb
                    00BA    575 G$PX1$0$0 == 0x00ba
                    00BA    576 _PX1	=	0x00ba
                    00B9    577 G$PT0$0$0 == 0x00b9
                    00B9    578 _PT0	=	0x00b9
                    00B8    579 G$PX0$0$0 == 0x00b8
                    00B8    580 _PX0	=	0x00b8
                    00C7    581 G$MASTER$0$0 == 0x00c7
                    00C7    582 _MASTER	=	0x00c7
                    00C6    583 G$TXMODE$0$0 == 0x00c6
                    00C6    584 _TXMODE	=	0x00c6
                    00C5    585 G$STA$0$0 == 0x00c5
                    00C5    586 _STA	=	0x00c5
                    00C4    587 G$STO$0$0 == 0x00c4
                    00C4    588 _STO	=	0x00c4
                    00C3    589 G$ACKRQ$0$0 == 0x00c3
                    00C3    590 _ACKRQ	=	0x00c3
                    00C2    591 G$ARBLOST$0$0 == 0x00c2
                    00C2    592 _ARBLOST	=	0x00c2
                    00C1    593 G$ACK$0$0 == 0x00c1
                    00C1    594 _ACK	=	0x00c1
                    00C0    595 G$SI$0$0 == 0x00c0
                    00C0    596 _SI	=	0x00c0
                    00CF    597 G$TF2H$0$0 == 0x00cf
                    00CF    598 _TF2H	=	0x00cf
                    00CE    599 G$TF2L$0$0 == 0x00ce
                    00CE    600 _TF2L	=	0x00ce
                    00CD    601 G$TF2LEN$0$0 == 0x00cd
                    00CD    602 _TF2LEN	=	0x00cd
                    00CC    603 G$T2SOF$0$0 == 0x00cc
                    00CC    604 _T2SOF	=	0x00cc
                    00CB    605 G$T2SPLIT$0$0 == 0x00cb
                    00CB    606 _T2SPLIT	=	0x00cb
                    00CA    607 G$TR2$0$0 == 0x00ca
                    00CA    608 _TR2	=	0x00ca
                    00C8    609 G$T2XCLK$0$0 == 0x00c8
                    00C8    610 _T2XCLK	=	0x00c8
                    00D7    611 G$CY$0$0 == 0x00d7
                    00D7    612 _CY	=	0x00d7
                    00D6    613 G$AC$0$0 == 0x00d6
                    00D6    614 _AC	=	0x00d6
                    00D5    615 G$F0$0$0 == 0x00d5
                    00D5    616 _F0	=	0x00d5
                    00D4    617 G$RS1$0$0 == 0x00d4
                    00D4    618 _RS1	=	0x00d4
                    00D3    619 G$RS0$0$0 == 0x00d3
                    00D3    620 _RS0	=	0x00d3
                    00D2    621 G$OV$0$0 == 0x00d2
                    00D2    622 _OV	=	0x00d2
                    00D1    623 G$F1$0$0 == 0x00d1
                    00D1    624 _F1	=	0x00d1
                    00D0    625 G$P$0$0 == 0x00d0
                    00D0    626 _P	=	0x00d0
                    00DF    627 G$CF$0$0 == 0x00df
                    00DF    628 _CF	=	0x00df
                    00DE    629 G$CR$0$0 == 0x00de
                    00DE    630 _CR	=	0x00de
                    00DC    631 G$CCF4$0$0 == 0x00dc
                    00DC    632 _CCF4	=	0x00dc
                    00DB    633 G$CCF3$0$0 == 0x00db
                    00DB    634 _CCF3	=	0x00db
                    00DA    635 G$CCF2$0$0 == 0x00da
                    00DA    636 _CCF2	=	0x00da
                    00D9    637 G$CCF1$0$0 == 0x00d9
                    00D9    638 _CCF1	=	0x00d9
                    00D8    639 G$CCF0$0$0 == 0x00d8
                    00D8    640 _CCF0	=	0x00d8
                    00EF    641 G$AD0EN$0$0 == 0x00ef
                    00EF    642 _AD0EN	=	0x00ef
                    00EE    643 G$AD0TM$0$0 == 0x00ee
                    00EE    644 _AD0TM	=	0x00ee
                    00ED    645 G$AD0INT$0$0 == 0x00ed
                    00ED    646 _AD0INT	=	0x00ed
                    00EC    647 G$AD0BUSY$0$0 == 0x00ec
                    00EC    648 _AD0BUSY	=	0x00ec
                    00EB    649 G$AD0WINT$0$0 == 0x00eb
                    00EB    650 _AD0WINT	=	0x00eb
                    00EA    651 G$AD0CM2$0$0 == 0x00ea
                    00EA    652 _AD0CM2	=	0x00ea
                    00E9    653 G$AD0CM1$0$0 == 0x00e9
                    00E9    654 _AD0CM1	=	0x00e9
                    00E8    655 G$AD0CM0$0$0 == 0x00e8
                    00E8    656 _AD0CM0	=	0x00e8
                    00FF    657 G$SPIF$0$0 == 0x00ff
                    00FF    658 _SPIF	=	0x00ff
                    00FE    659 G$WCOL$0$0 == 0x00fe
                    00FE    660 _WCOL	=	0x00fe
                    00FD    661 G$MODF$0$0 == 0x00fd
                    00FD    662 _MODF	=	0x00fd
                    00FC    663 G$RXOVRN$0$0 == 0x00fc
                    00FC    664 _RXOVRN	=	0x00fc
                    00FB    665 G$NSSMD1$0$0 == 0x00fb
                    00FB    666 _NSSMD1	=	0x00fb
                    00FA    667 G$NSSMD0$0$0 == 0x00fa
                    00FA    668 _NSSMD0	=	0x00fa
                    00F9    669 G$TXBMT$0$0 == 0x00f9
                    00F9    670 _TXBMT	=	0x00f9
                    00F8    671 G$SPIEN$0$0 == 0x00f8
                    00F8    672 _SPIEN	=	0x00f8
                    0083    673 G$M2DIR$0$0 == 0x0083
                    0083    674 _M2DIR	=	0x0083
                    0084    675 G$M2STEP$0$0 == 0x0084
                    0084    676 _M2STEP	=	0x0084
                    0085    677 G$NDRIVEREN$0$0 == 0x0085
                    0085    678 _NDRIVEREN	=	0x0085
                    0096    679 G$M1DIR$0$0 == 0x0096
                    0096    680 _M1DIR	=	0x0096
                    0087    681 G$M1STEP$0$0 == 0x0087
                    0087    682 _M1STEP	=	0x0087
                    0090    683 G$INTTL$0$0 == 0x0090
                    0090    684 _INTTL	=	0x0090
                    0091    685 G$OUTTTL$0$0 == 0x0091
                    0091    686 _OUTTTL	=	0x0091
                    0092    687 G$LASER$0$0 == 0x0092
                    0092    688 _LASER	=	0x0092
                    0094    689 G$NDACCS$0$0 == 0x0094
                    0094    690 _NDACCS	=	0x0094
                    0097    691 G$CAL$0$0 == 0x0097
                    0097    692 _CAL	=	0x0097
                    00A0    693 G$POS$0$0 == 0x00a0
                    00A0    694 _POS	=	0x00a0
                    00A1    695 G$NADCCS$0$0 == 0x00a1
                    00A1    696 _NADCCS	=	0x00a1
                    00A3    697 G$OUTPUTEN$0$0 == 0x00a3
                    00A3    698 _OUTPUTEN	=	0x00a3
                    00A6    699 G$NRAMCS$0$0 == 0x00a6
                    00A6    700 _NRAMCS	=	0x00a6
                    00A7    701 G$NRAMHOLD$0$0 == 0x00a7
                    00A7    702 _NRAMHOLD	=	0x00a7
                    00A2    703 G$ERRORPIN$0$0 == 0x00a2
                    00A2    704 _ERRORPIN	=	0x00a2
                    0085    705 G$NotDriverEN$0$0 == 0x0085
                    0085    706 _NotDriverEN	=	0x0085
                    0086    707 G$Motor1Dir$0$0 == 0x0086
                    0086    708 _Motor1Dir	=	0x0086
                    0087    709 G$Motor1Step$0$0 == 0x0087
                    0087    710 _Motor1Step	=	0x0087
                    0083    711 G$Motor2Dir$0$0 == 0x0083
                    0083    712 _Motor2Dir	=	0x0083
                    0084    713 G$Motor2Step$0$0 == 0x0084
                    0084    714 _Motor2Step	=	0x0084
                            715 ;--------------------------------------------------------
                            716 ; overlayable register banks
                            717 ;--------------------------------------------------------
                            718 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     719 	.ds 8
                            720 ;--------------------------------------------------------
                            721 ; internal ram data
                            722 ;--------------------------------------------------------
                            723 	.area DSEG    (DATA)
                    0000    724 G$Writing_to_DAC$0$0==.
   0008                     725 _Writing_to_DAC::
   0008                     726 	.ds 2
                    0002    727 G$Writing_to_ADC$0$0==.
   000A                     728 _Writing_to_ADC::
   000A                     729 	.ds 2
                    0004    730 G$Writing_to_RAM$0$0==.
   000C                     731 _Writing_to_RAM::
   000C                     732 	.ds 2
                    0006    733 G$SPI_DAC_Bytes$0$0==.
   000E                     734 _SPI_DAC_Bytes::
   000E                     735 	.ds 2
                    0008    736 G$SPI_ADC_Bytes$0$0==.
   0010                     737 _SPI_ADC_Bytes::
   0010                     738 	.ds 2
                    000A    739 G$SPI_RAM_Bytes$0$0==.
   0012                     740 _SPI_RAM_Bytes::
   0012                     741 	.ds 2
                    000C    742 G$ADC_timer$0$0==.
   0014                     743 _ADC_timer::
   0014                     744 	.ds 2
                    000E    745 G$ADC_settled$0$0==.
   0016                     746 _ADC_settled::
   0016                     747 	.ds 2
                    0010    748 G$ADC_timer_MSB$0$0==.
   0018                     749 _ADC_timer_MSB::
   0018                     750 	.ds 2
                    0012    751 G$latest_ADC_HighByte$0$0==.
   001A                     752 _latest_ADC_HighByte::
   001A                     753 	.ds 2
                    0014    754 G$latest_ADC_LowByte$0$0==.
   001C                     755 _latest_ADC_LowByte::
   001C                     756 	.ds 2
                    0016    757 G$Write_to_RAM$0$0==.
   001E                     758 _Write_to_RAM::
   001E                     759 	.ds 2
                    0018    760 G$RAM_to_ptr_low$0$0==.
   0020                     761 _RAM_to_ptr_low::
   0020                     762 	.ds 1
                    0019    763 G$RAM_to_ptr_high$0$0==.
   0021                     764 _RAM_to_ptr_high::
   0021                     765 	.ds 1
                    001A    766 G$RAM_from_ptr_low$0$0==.
   0022                     767 _RAM_from_ptr_low::
   0022                     768 	.ds 1
                    001B    769 G$RAM_from_ptr_high$0$0==.
   0023                     770 _RAM_from_ptr_high::
   0023                     771 	.ds 1
                    001C    772 G$loop_cnt$0$0==.
   0024                     773 _loop_cnt::
   0024                     774 	.ds 2
                            775 ;--------------------------------------------------------
                            776 ; overlayable items in internal ram 
                            777 ;--------------------------------------------------------
                            778 	.area	OSEG    (OVR,DATA)
                            779 	.area	OSEG    (OVR,DATA)
                            780 ;--------------------------------------------------------
                            781 ; Stack segment in internal ram 
                            782 ;--------------------------------------------------------
                            783 	.area	SSEG	(DATA)
   0026                     784 __start__stack:
   0026                     785 	.ds	1
                            786 
                            787 ;--------------------------------------------------------
                            788 ; indirectly addressable internal ram data
                            789 ;--------------------------------------------------------
                            790 	.area ISEG    (DATA)
                            791 ;--------------------------------------------------------
                            792 ; absolute internal ram data
                            793 ;--------------------------------------------------------
                            794 	.area IABS    (ABS,DATA)
                            795 	.area IABS    (ABS,DATA)
                            796 ;--------------------------------------------------------
                            797 ; bit data
                            798 ;--------------------------------------------------------
                            799 	.area BSEG    (BIT)
                            800 ;--------------------------------------------------------
                            801 ; paged external ram data
                            802 ;--------------------------------------------------------
                            803 	.area PSEG    (PAG,XDATA)
                            804 ;--------------------------------------------------------
                            805 ; external ram data
                            806 ;--------------------------------------------------------
                            807 	.area XSEG    (XDATA)
                            808 ;--------------------------------------------------------
                            809 ; absolute external ram data
                            810 ;--------------------------------------------------------
                            811 	.area XABS    (ABS,XDATA)
                            812 ;--------------------------------------------------------
                            813 ; external initialized ram data
                            814 ;--------------------------------------------------------
                            815 	.area XISEG   (XDATA)
                            816 	.area HOME    (CODE)
                            817 	.area GSINIT0 (CODE)
                            818 	.area GSINIT1 (CODE)
                            819 	.area GSINIT2 (CODE)
                            820 	.area GSINIT3 (CODE)
                            821 	.area GSINIT4 (CODE)
                            822 	.area GSINIT5 (CODE)
                            823 	.area GSINIT  (CODE)
                            824 	.area GSFINAL (CODE)
                            825 	.area CSEG    (CODE)
                            826 ;--------------------------------------------------------
                            827 ; interrupt vector 
                            828 ;--------------------------------------------------------
                            829 	.area HOME    (CODE)
   0000                     830 __interrupt_vect:
   0000 02 00 3B            831 	ljmp	__sdcc_gsinit_startup
   0003 32                  832 	reti
   0004                     833 	.ds	7
   000B 32                  834 	reti
   000C                     835 	.ds	7
   0013 32                  836 	reti
   0014                     837 	.ds	7
   001B 02 04 0D            838 	ljmp	_Timer1_ISR
   001E                     839 	.ds	5
   0023 32                  840 	reti
   0024                     841 	.ds	7
   002B 02 04 F2            842 	ljmp	_Timer2_ISR
   002E                     843 	.ds	5
   0033 02 03 59            844 	ljmp	_SPI_ISR
                            845 ;--------------------------------------------------------
                            846 ; global & static initialisations
                            847 ;--------------------------------------------------------
                            848 	.area HOME    (CODE)
                            849 	.area GSINIT  (CODE)
                            850 	.area GSFINAL (CODE)
                            851 	.area GSINIT  (CODE)
                            852 	.globl __sdcc_gsinit_startup
                            853 	.globl __sdcc_program_startup
                            854 	.globl __start__stack
                            855 	.globl __mcs51_genXINIT
                            856 	.globl __mcs51_genXRAMCLEAR
                            857 	.globl __mcs51_genRAMCLEAR
                    0000    858 	G$Timer2_ISR$0$0 ==.
                    0000    859 	C$potentiostat_HWtestingMain.c$86$1$1 ==.
                            860 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:86: int Writing_to_DAC = 0;					// Boolean: still need to write >=1 byte via SPI
   0094 E4                  861 	clr	a
   0095 F5 08               862 	mov	_Writing_to_DAC,a
   0097 F5 09               863 	mov	(_Writing_to_DAC + 1),a
                    0005    864 	G$Timer2_ISR$0$0 ==.
                    0005    865 	C$potentiostat_HWtestingMain.c$87$1$1 ==.
                            866 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:87: int Writing_to_ADC = 0;					// Boolean: still need to write >=1 byte via SPI
   0099 E4                  867 	clr	a
   009A F5 0A               868 	mov	_Writing_to_ADC,a
   009C F5 0B               869 	mov	(_Writing_to_ADC + 1),a
                    000A    870 	G$Timer2_ISR$0$0 ==.
                    000A    871 	C$potentiostat_HWtestingMain.c$88$1$1 ==.
                            872 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:88: int Writing_to_RAM = 0;					// Boolean: still need to write >=1 byte via SPI
   009E E4                  873 	clr	a
   009F F5 0C               874 	mov	_Writing_to_RAM,a
   00A1 F5 0D               875 	mov	(_Writing_to_RAM + 1),a
                    000F    876 	G$Timer2_ISR$0$0 ==.
                    000F    877 	C$potentiostat_HWtestingMain.c$89$1$1 ==.
                            878 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:89: int SPI_DAC_Bytes = 0;					// No. of bytes to/from DAC: 0-3
   00A3 E4                  879 	clr	a
   00A4 F5 0E               880 	mov	_SPI_DAC_Bytes,a
   00A6 F5 0F               881 	mov	(_SPI_DAC_Bytes + 1),a
                    0014    882 	G$Timer2_ISR$0$0 ==.
                    0014    883 	C$potentiostat_HWtestingMain.c$90$1$1 ==.
                            884 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:90: int SPI_ADC_Bytes = 0;					// No. of bytes to/from ADC: 0-2
   00A8 E4                  885 	clr	a
   00A9 F5 10               886 	mov	_SPI_ADC_Bytes,a
   00AB F5 11               887 	mov	(_SPI_ADC_Bytes + 1),a
                    0019    888 	G$Timer2_ISR$0$0 ==.
                    0019    889 	C$potentiostat_HWtestingMain.c$91$1$1 ==.
                            890 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:91: int SPI_RAM_Bytes = 0;					// No. of bytes to/from RAM: 0-4
   00AD E4                  891 	clr	a
   00AE F5 12               892 	mov	_SPI_RAM_Bytes,a
   00B0 F5 13               893 	mov	(_SPI_RAM_Bytes + 1),a
                    001E    894 	G$Timer2_ISR$0$0 ==.
                    001E    895 	C$potentiostat_HWtestingMain.c$92$1$1 ==.
                            896 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:92: int ADC_timer = 0;						// No. of 1 ms timer intervals after ADC turn on
   00B2 E4                  897 	clr	a
   00B3 F5 14               898 	mov	_ADC_timer,a
   00B5 F5 15               899 	mov	(_ADC_timer + 1),a
                    0023    900 	G$Timer2_ISR$0$0 ==.
                    0023    901 	C$potentiostat_HWtestingMain.c$93$1$1 ==.
                            902 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:93: int ADC_settled = 0;					// Boolean: ADC ready 12 ms after POR
   00B7 E4                  903 	clr	a
   00B8 F5 16               904 	mov	_ADC_settled,a
   00BA F5 17               905 	mov	(_ADC_settled + 1),a
                    0028    906 	G$Timer2_ISR$0$0 ==.
                    0028    907 	C$potentiostat_HWtestingMain.c$94$1$1 ==.
                            908 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:94: int ADC_timer_MSB = 0;					// Software bit to ADC timer
   00BC E4                  909 	clr	a
   00BD F5 18               910 	mov	_ADC_timer_MSB,a
   00BF F5 19               911 	mov	(_ADC_timer_MSB + 1),a
                    002D    912 	G$Timer2_ISR$0$0 ==.
                    002D    913 	C$potentiostat_HWtestingMain.c$97$1$1 ==.
                            914 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:97: int Write_to_RAM = 0;					// Boolean: need to write ADC to RAM
   00C1 E4                  915 	clr	a
   00C2 F5 1E               916 	mov	_Write_to_RAM,a
   00C4 F5 1F               917 	mov	(_Write_to_RAM + 1),a
                    0032    918 	G$Timer2_ISR$0$0 ==.
                    0032    919 	C$potentiostat_HWtestingMain.c$104$1$1 ==.
                            920 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:104: int loop_cnt = 0;
   00C6 E4                  921 	clr	a
   00C7 F5 24               922 	mov	_loop_cnt,a
   00C9 F5 25               923 	mov	(_loop_cnt + 1),a
                            924 	.area GSFINAL (CODE)
   00CB 02 00 36            925 	ljmp	__sdcc_program_startup
                            926 ;--------------------------------------------------------
                            927 ; Home
                            928 ;--------------------------------------------------------
                            929 	.area HOME    (CODE)
                            930 	.area HOME    (CODE)
   0036                     931 __sdcc_program_startup:
   0036 12 00 CE            932 	lcall	_main
                            933 ;	return from main will lock up
   0039 80 FE               934 	sjmp .
                            935 ;--------------------------------------------------------
                            936 ; code
                            937 ;--------------------------------------------------------
                            938 	.area CSEG    (CODE)
                            939 ;------------------------------------------------------------
                            940 ;Allocation info for local variables in function 'main'
                            941 ;------------------------------------------------------------
                            942 ;------------------------------------------------------------
                    0000    943 	G$main$0$0 ==.
                    0000    944 	C$potentiostat_HWtestingMain.c$109$0$0 ==.
                            945 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:109: void main (void)
                            946 ;	-----------------------------------------
                            947 ;	 function main
                            948 ;	-----------------------------------------
   00CE                     949 _main:
                    0002    950 	ar2 = 0x02
                    0003    951 	ar3 = 0x03
                    0004    952 	ar4 = 0x04
                    0005    953 	ar5 = 0x05
                    0006    954 	ar6 = 0x06
                    0007    955 	ar7 = 0x07
                    0000    956 	ar0 = 0x00
                    0001    957 	ar1 = 0x01
                    0000    958 	C$potentiostat_HWtestingMain.c$111$1$1 ==.
                            959 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:111: PCA0MD &= ~0x40;					// Disable watchdog timer
   00CE 53 D9 BF            960 	anl	_PCA0MD,#0xBF
                    0003    961 	C$potentiostat_HWtestingMain.c$113$1$1 ==.
                            962 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:113: ERRORPIN = 0;
   00D1 C2 A2               963 	clr	_ERRORPIN
                    0005    964 	C$potentiostat_HWtestingMain.c$114$1$1 ==.
                            965 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:114: latest_ADC_LowByte = 0;
                    0005    966 	C$potentiostat_HWtestingMain.c$115$1$1 ==.
                            967 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:115: latest_ADC_HighByte = 0;
   00D3 E4                  968 	clr	a
   00D4 F5 1C               969 	mov	_latest_ADC_LowByte,a
   00D6 F5 1D               970 	mov	(_latest_ADC_LowByte + 1),a
   00D8 F5 1A               971 	mov	_latest_ADC_HighByte,a
   00DA F5 1B               972 	mov	(_latest_ADC_HighByte + 1),a
                    000E    973 	C$potentiostat_HWtestingMain.c$117$1$1 ==.
                            974 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:117: SYSCLK_Init ();					// Initialize system clock to 24 MHz
   00DC 12 01 79            975 	lcall	_SYSCLK_Init
                    0011    976 	C$potentiostat_HWtestingMain.c$120$1$1 ==.
                            977 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:120: Timer1_Init();					// Start the 1 kHz ADC timer
   00DF 12 01 F1            978 	lcall	_Timer1_Init
                    0014    979 	C$potentiostat_HWtestingMain.c$122$1$1 ==.
                            980 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:122: PORT_Init ();					// Initialize crossbar and GPIO
   00E2 12 01 AF            981 	lcall	_PORT_Init
                    0017    982 	C$potentiostat_HWtestingMain.c$126$1$1 ==.
                            983 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:126: EA = 1;							// Enable global interrupts
   00E5 D2 AF               984 	setb	_EA
                    0019    985 	C$potentiostat_HWtestingMain.c$128$1$1 ==.
                            986 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:128: SPI_Init();						// Set up SPI peripheral
   00E7 12 02 2D            987 	lcall	_SPI_Init
                    001C    988 	C$potentiostat_HWtestingMain.c$129$1$1 ==.
                            989 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:129: DAC_Init();						// Call just after SPI_Init for proper function
   00EA 12 02 3F            990 	lcall	_DAC_Init
                    001F    991 	C$potentiostat_HWtestingMain.c$131$1$1 ==.
                            992 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:131: OUTPUTEN = 1;					// emable output, close relay K601
   00ED D2 A3               993 	setb	_OUTPUTEN
                    0021    994 	C$potentiostat_HWtestingMain.c$132$1$1 ==.
                            995 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:132: CAL = 0;
   00EF C2 97               996 	clr	_CAL
                    0023    997 	C$potentiostat_HWtestingMain.c$151$1$1 ==.
                            998 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:151: POS = 1;
   00F1 D2 A0               999 	setb	_POS
                    0025   1000 	C$potentiostat_HWtestingMain.c$152$1$1 ==.
                           1001 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:152: NDACCS = 0;						// Select the DAC for SPI communication
   00F3 C2 94              1002 	clr	_NDACCS
                    0027   1003 	C$potentiostat_HWtestingMain.c$153$1$1 ==.
                           1004 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:153: Writing_to_DAC = 1;
   00F5 75 08 01           1005 	mov	_Writing_to_DAC,#0x01
   00F8 E4                 1006 	clr	a
   00F9 F5 09              1007 	mov	(_Writing_to_DAC + 1),a
                    002D   1008 	C$potentiostat_HWtestingMain.c$154$1$1 ==.
                           1009 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:154: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   00FB 75 A3 00           1010 	mov	_SPI0DAT,#0x00
                    0030   1011 	C$potentiostat_HWtestingMain.c$155$1$1 ==.
                           1012 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:155: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   00FE                    1013 00101$:
   00FE 74 01              1014 	mov	a,#0x01
   0100 B5 0E 06           1015 	cjne	a,_SPI_DAC_Bytes,00135$
   0103 E4                 1016 	clr	a
   0104 B5 0F 02           1017 	cjne	a,(_SPI_DAC_Bytes + 1),00135$
   0107 80 02              1018 	sjmp	00136$
   0109                    1019 00135$:
   0109 80 F3              1020 	sjmp	00101$
   010B                    1021 00136$:
                    003D   1022 	C$potentiostat_HWtestingMain.c$158$1$1 ==.
                           1023 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:158: SPI0DAT = 0xFE;					// Upper part of byte
   010B 75 A3 FE           1024 	mov	_SPI0DAT,#0xFE
                    0040   1025 	C$potentiostat_HWtestingMain.c$159$1$1 ==.
                           1026 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:159: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   010E                    1027 00104$:
   010E 74 02              1028 	mov	a,#0x02
   0110 B5 0E 06           1029 	cjne	a,_SPI_DAC_Bytes,00137$
   0113 E4                 1030 	clr	a
   0114 B5 0F 02           1031 	cjne	a,(_SPI_DAC_Bytes + 1),00137$
   0117 80 02              1032 	sjmp	00138$
   0119                    1033 00137$:
   0119 80 F3              1034 	sjmp	00104$
   011B                    1035 00138$:
                    004D   1036 	C$potentiostat_HWtestingMain.c$162$1$1 ==.
                           1037 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:162: SPI0DAT = 0xB8;					// Lower part of byte
   011B 75 A3 B8           1038 	mov	_SPI0DAT,#0xB8
                    0050   1039 	C$potentiostat_HWtestingMain.c$163$1$1 ==.
                           1040 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:163: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
   011E                    1041 00107$:
   011E 74 03              1042 	mov	a,#0x03
   0120 B5 0E 06           1043 	cjne	a,_SPI_DAC_Bytes,00139$
   0123 E4                 1044 	clr	a
   0124 B5 0F 02           1045 	cjne	a,(_SPI_DAC_Bytes + 1),00139$
   0127 80 02              1046 	sjmp	00140$
   0129                    1047 00139$:
   0129 80 F3              1048 	sjmp	00107$
   012B                    1049 00140$:
                    005D   1050 	C$potentiostat_HWtestingMain.c$164$1$1 ==.
                           1051 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:164: SPI_DAC_Bytes = 0;				// Reset byte TX counter
   012B E4                 1052 	clr	a
   012C F5 0E              1053 	mov	_SPI_DAC_Bytes,a
   012E F5 0F              1054 	mov	(_SPI_DAC_Bytes + 1),a
                    0062   1055 	C$potentiostat_HWtestingMain.c$165$1$1 ==.
                           1056 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:165: NDACCS = 1;						// Deselect the DAC for SPI communication
   0130 D2 94              1057 	setb	_NDACCS
                    0064   1058 	C$potentiostat_HWtestingMain.c$166$1$1 ==.
                           1059 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:166: Writing_to_DAC = 0;
   0132 E4                 1060 	clr	a
   0133 F5 08              1061 	mov	_Writing_to_DAC,a
   0135 F5 09              1062 	mov	(_Writing_to_DAC + 1),a
                    0069   1063 	C$potentiostat_HWtestingMain.c$173$1$1 ==.
                           1064 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:173: NADCCS = 0;						// Select the ADC for SPI communication
   0137 C2 A1              1065 	clr	_NADCCS
                    006B   1066 	C$potentiostat_HWtestingMain.c$174$1$1 ==.
                           1067 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:174: Writing_to_ADC = 1;
   0139 75 0A 01           1068 	mov	_Writing_to_ADC,#0x01
   013C E4                 1069 	clr	a
   013D F5 0B              1070 	mov	(_Writing_to_ADC + 1),a
                    0071   1071 	C$potentiostat_HWtestingMain.c$175$1$1 ==.
                           1072 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:175: SPI0DAT = 0xA0;					// 0xA0 = 1010 0000
   013F 75 A3 A0           1073 	mov	_SPI0DAT,#0xA0
                    0074   1074 	C$potentiostat_HWtestingMain.c$176$1$1 ==.
                           1075 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:176: while(SPI_ADC_Bytes != 1) {}	// wait for SPI to finish sending byte
   0142                    1076 00110$:
   0142 74 01              1077 	mov	a,#0x01
   0144 B5 10 06           1078 	cjne	a,_SPI_ADC_Bytes,00141$
   0147 E4                 1079 	clr	a
   0148 B5 11 02           1080 	cjne	a,(_SPI_ADC_Bytes + 1),00141$
   014B 80 02              1081 	sjmp	00142$
   014D                    1082 00141$:
   014D 80 F3              1083 	sjmp	00110$
   014F                    1084 00142$:
                    0081   1085 	C$potentiostat_HWtestingMain.c$177$1$1 ==.
                           1086 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:177: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   014F 75 A3 00           1087 	mov	_SPI0DAT,#0x00
                    0084   1088 	C$potentiostat_HWtestingMain.c$178$1$1 ==.
                           1089 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:178: while(SPI_ADC_Bytes != 2) {}	// wait for SPI to finish sending byte
   0152                    1090 00113$:
   0152 74 02              1091 	mov	a,#0x02
   0154 B5 10 06           1092 	cjne	a,_SPI_ADC_Bytes,00143$
   0157 E4                 1093 	clr	a
   0158 B5 11 02           1094 	cjne	a,(_SPI_ADC_Bytes + 1),00143$
   015B 80 02              1095 	sjmp	00144$
   015D                    1096 00143$:
   015D 80 F3              1097 	sjmp	00113$
   015F                    1098 00144$:
                    0091   1099 	C$potentiostat_HWtestingMain.c$179$1$1 ==.
                           1100 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:179: SPI_ADC_Bytes = 0;
   015F E4                 1101 	clr	a
   0160 F5 10              1102 	mov	_SPI_ADC_Bytes,a
   0162 F5 11              1103 	mov	(_SPI_ADC_Bytes + 1),a
                    0096   1104 	C$potentiostat_HWtestingMain.c$180$1$1 ==.
                           1105 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:180: NADCCS = 1;						// Deselect the ADC for SPI communication
   0164 D2 A1              1106 	setb	_NADCCS
                    0098   1107 	C$potentiostat_HWtestingMain.c$181$1$1 ==.
                           1108 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:181: Writing_to_ADC = 0;
   0166 E4                 1109 	clr	a
   0167 F5 0A              1110 	mov	_Writing_to_ADC,a
   0169 F5 0B              1111 	mov	(_Writing_to_ADC + 1),a
                    009D   1112 	C$potentiostat_HWtestingMain.c$183$1$1 ==.
                           1113 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:183: while (1)						// infinte while loop
   016B                    1114 00119$:
                    009D   1115 	C$potentiostat_HWtestingMain.c$185$2$7 ==.
                           1116 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:185: if (Write_to_RAM)
   016B E5 1E              1117 	mov	a,_Write_to_RAM
   016D 45 1F              1118 	orl	a,(_Write_to_RAM + 1)
   016F 60 FA              1119 	jz	00119$
                    00A3   1120 	C$potentiostat_HWtestingMain.c$187$3$8 ==.
                           1121 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:187: RAM_Write();
   0171 12 03 41           1122 	lcall	_RAM_Write
                    00A6   1123 	C$potentiostat_HWtestingMain.c$189$3$8 ==.
                           1124 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:189: EIE1 |= 0x02;					// 0x02 = 0000 0010
   0174 43 E6 02           1125 	orl	_EIE1,#0x02
                    00A9   1126 	C$potentiostat_HWtestingMain.c$193$1$1 ==.
                    00A9   1127 	XG$main$0$0 ==.
   0177 80 F2              1128 	sjmp	00119$
                           1129 ;------------------------------------------------------------
                           1130 ;Allocation info for local variables in function 'SYSCLK_Init'
                           1131 ;------------------------------------------------------------
                           1132 ;delay                     Allocated to registers r2 r3 
                           1133 ;------------------------------------------------------------
                    00AB   1134 	G$SYSCLK_Init$0$0 ==.
                    00AB   1135 	C$potentiostat_HWtestingMain.c$214$1$1 ==.
                           1136 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:214: void SYSCLK_Init (void)
                           1137 ;	-----------------------------------------
                           1138 ;	 function SYSCLK_Init
                           1139 ;	-----------------------------------------
   0179                    1140 _SYSCLK_Init:
                    00AB   1141 	C$potentiostat_HWtestingMain.c$220$1$1 ==.
                           1142 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:220: OSCICN = 0x83;
   0179 75 B2 83           1143 	mov	_OSCICN,#0x83
                    00AE   1144 	C$potentiostat_HWtestingMain.c$223$1$1 ==.
                           1145 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:223: CLKMUL = 0x00;		// Reset clock multiplier
   017C 75 B9 00           1146 	mov	_CLKMUL,#0x00
                    00B1   1147 	C$potentiostat_HWtestingMain.c$224$1$1 ==.
                           1148 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:224: CLKMUL |= 0x80;		// Enable multiplier
   017F 43 B9 80           1149 	orl	_CLKMUL,#0x80
                    00B4   1150 	C$potentiostat_HWtestingMain.c$226$1$1 ==.
                           1151 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:226: while (delay < 72) { delay += 1; }
   0182 7A 00              1152 	mov	r2,#0x00
   0184 7B 00              1153 	mov	r3,#0x00
   0186                    1154 00101$:
   0186 C3                 1155 	clr	c
   0187 EA                 1156 	mov	a,r2
   0188 94 48              1157 	subb	a,#0x48
   018A EB                 1158 	mov	a,r3
   018B 64 80              1159 	xrl	a,#0x80
   018D 94 80              1160 	subb	a,#0x80
   018F 50 07              1161 	jnc	00103$
   0191 0A                 1162 	inc	r2
   0192 BA 00 F1           1163 	cjne	r2,#0x00,00101$
   0195 0B                 1164 	inc	r3
   0196 80 EE              1165 	sjmp	00101$
   0198                    1166 00103$:
                    00CA   1167 	C$potentiostat_HWtestingMain.c$227$1$1 ==.
                           1168 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:227: CLKMUL |= 0xC0;		// Initialize multiplier
   0198 43 B9 C0           1169 	orl	_CLKMUL,#0xC0
                    00CD   1170 	C$potentiostat_HWtestingMain.c$229$1$1 ==.
                           1171 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:229: while ((CLKMUL & MULRDY) != MULRDY) { NOP(); }
   019B                    1172 00104$:
   019B 74 20              1173 	mov	a,#0x20
   019D 55 B9              1174 	anl	a,_CLKMUL
   019F FA                 1175 	mov	r2,a
   01A0 BA 20 02           1176 	cjne	r2,#0x20,00115$
   01A3 80 03              1177 	sjmp	00106$
   01A5                    1178 00115$:
   01A5 00                 1179 	 NOP 
   01A6 80 F3              1180 	sjmp	00104$
   01A8                    1181 00106$:
                    00DA   1182 	C$potentiostat_HWtestingMain.c$230$1$1 ==.
                           1183 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:230: CLKSEL = 0x02;		// USB clock = 4*(Int Osc)
   01A8 75 A9 02           1184 	mov	_CLKSEL,#0x02
                    00DD   1185 	C$potentiostat_HWtestingMain.c$233$1$1 ==.
                           1186 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:233: RSTSRC = 0x04;		// Enable missing clock detector, required for USB
   01AB 75 EF 04           1187 	mov	_RSTSRC,#0x04
                    00E0   1188 	C$potentiostat_HWtestingMain.c$234$1$1 ==.
                    00E0   1189 	XG$SYSCLK_Init$0$0 ==.
   01AE 22                 1190 	ret
                           1191 ;------------------------------------------------------------
                           1192 ;Allocation info for local variables in function 'PORT_Init'
                           1193 ;------------------------------------------------------------
                           1194 ;------------------------------------------------------------
                    00E1   1195 	G$PORT_Init$0$0 ==.
                    00E1   1196 	C$potentiostat_HWtestingMain.c$272$1$1 ==.
                           1197 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:272: void PORT_Init (void)
                           1198 ;	-----------------------------------------
                           1199 ;	 function PORT_Init
                           1200 ;	-----------------------------------------
   01AF                    1201 _PORT_Init:
                    00E1   1202 	C$potentiostat_HWtestingMain.c$275$1$1 ==.
                           1203 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:275: P0MDIN = 0xFF;
   01AF 75 F1 FF           1204 	mov	_P0MDIN,#0xFF
                    00E4   1205 	C$potentiostat_HWtestingMain.c$276$1$1 ==.
                           1206 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:276: P1MDIN = 0xFF;
   01B2 75 F2 FF           1207 	mov	_P1MDIN,#0xFF
                    00E7   1208 	C$potentiostat_HWtestingMain.c$277$1$1 ==.
                           1209 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:277: P2MDIN = 0xFF;
   01B5 75 F3 FF           1210 	mov	_P2MDIN,#0xFF
                    00EA   1211 	C$potentiostat_HWtestingMain.c$278$1$1 ==.
                           1212 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:278: P3MDIN = 0xFF;
   01B8 75 F4 FF           1213 	mov	_P3MDIN,#0xFF
                    00ED   1214 	C$potentiostat_HWtestingMain.c$281$1$1 ==.
                           1215 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:281: P0MDOUT = 0xFF;
   01BB 75 A4 FF           1216 	mov	_P0MDOUT,#0xFF
                    00F0   1217 	C$potentiostat_HWtestingMain.c$282$1$1 ==.
                           1218 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:282: P1MDOUT = 0xFF;
   01BE 75 A5 FF           1219 	mov	_P1MDOUT,#0xFF
                    00F3   1220 	C$potentiostat_HWtestingMain.c$283$1$1 ==.
                           1221 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:283: P2MDOUT = 0xFF;
   01C1 75 A6 FF           1222 	mov	_P2MDOUT,#0xFF
                    00F6   1223 	C$potentiostat_HWtestingMain.c$284$1$1 ==.
                           1224 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:284: P3MDOUT = 0xFF;
   01C4 75 A7 FF           1225 	mov	_P3MDOUT,#0xFF
                    00F9   1226 	C$potentiostat_HWtestingMain.c$287$1$1 ==.
                           1227 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:287: P0SKIP = 0x00;
   01C7 75 D4 00           1228 	mov	_P0SKIP,#0x00
                    00FC   1229 	C$potentiostat_HWtestingMain.c$288$1$1 ==.
                           1230 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:288: P1SKIP = 0x00;
   01CA 75 D5 00           1231 	mov	_P1SKIP,#0x00
                    00FF   1232 	C$potentiostat_HWtestingMain.c$289$1$1 ==.
                           1233 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:289: P2SKIP = 0x00;
   01CD 75 D6 00           1234 	mov	_P2SKIP,#0x00
                    0102   1235 	C$potentiostat_HWtestingMain.c$295$1$1 ==.
                           1236 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:295: XBR0 = 0x02;				// Only SPI selected, automatically assigned:
   01D0 75 E1 02           1237 	mov	_XBR0,#0x02
                    0105   1238 	C$potentiostat_HWtestingMain.c$299$1$1 ==.
                           1239 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:299: XBR1 = 0x40;				// Enable crossbar and weak pull-ups
   01D3 75 E2 40           1240 	mov	_XBR1,#0x40
                    0108   1241 	C$potentiostat_HWtestingMain.c$314$1$1 ==.
                           1242 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:314: NADCCS = 1;
   01D6 D2 A1              1243 	setb	_NADCCS
                    010A   1244 	C$potentiostat_HWtestingMain.c$315$1$1 ==.
                           1245 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:315: NDACCS = 1;
   01D8 D2 94              1246 	setb	_NDACCS
                    010C   1247 	C$potentiostat_HWtestingMain.c$316$1$1 ==.
                           1248 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:316: NRAMCS = 1;
   01DA D2 A6              1249 	setb	_NRAMCS
                    010E   1250 	C$potentiostat_HWtestingMain.c$317$1$1 ==.
                           1251 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:317: NRAMHOLD = 1;
   01DC D2 A7              1252 	setb	_NRAMHOLD
                    0110   1253 	C$potentiostat_HWtestingMain.c$318$1$1 ==.
                           1254 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:318: NotDriverEN = 1;			// Enable/disable (0/1) stepper motor driver
   01DE D2 85              1255 	setb	_NotDriverEN
                    0112   1256 	C$potentiostat_HWtestingMain.c$320$1$1 ==.
                           1257 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:320: Motor1Dir = 0;
   01E0 C2 86              1258 	clr	_Motor1Dir
                    0114   1259 	C$potentiostat_HWtestingMain.c$321$1$1 ==.
                           1260 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:321: Motor2Dir = 0;
   01E2 C2 83              1261 	clr	_Motor2Dir
                    0116   1262 	C$potentiostat_HWtestingMain.c$322$1$1 ==.
                           1263 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:322: Motor1Step = 0;
   01E4 C2 87              1264 	clr	_Motor1Step
                    0118   1265 	C$potentiostat_HWtestingMain.c$323$1$1 ==.
                           1266 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:323: Motor2Step = 0;
   01E6 C2 84              1267 	clr	_Motor2Step
                    011A   1268 	C$potentiostat_HWtestingMain.c$324$1$1 ==.
                           1269 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:324: LASER = 0;					// Disable laswer power
   01E8 C2 92              1270 	clr	_LASER
                    011C   1271 	C$potentiostat_HWtestingMain.c$325$1$1 ==.
                           1272 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:325: OUTPUTEN = 0;				// Disable the output until we're ready
   01EA C2 A3              1273 	clr	_OUTPUTEN
                    011E   1274 	C$potentiostat_HWtestingMain.c$326$1$1 ==.
                           1275 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:326: POS = 1;					// Positive voltage and current
   01EC D2 A0              1276 	setb	_POS
                    0120   1277 	C$potentiostat_HWtestingMain.c$327$1$1 ==.
                           1278 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:327: CAL = 0;					// Not in calibration state
   01EE C2 97              1279 	clr	_CAL
                    0122   1280 	C$potentiostat_HWtestingMain.c$329$1$1 ==.
                    0122   1281 	XG$PORT_Init$0$0 ==.
   01F0 22                 1282 	ret
                           1283 ;------------------------------------------------------------
                           1284 ;Allocation info for local variables in function 'Timer1_Init'
                           1285 ;------------------------------------------------------------
                           1286 ;------------------------------------------------------------
                    0123   1287 	G$Timer1_Init$0$0 ==.
                    0123   1288 	C$potentiostat_HWtestingMain.c$342$1$1 ==.
                           1289 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:342: void Timer1_Init (void)
                           1290 ;	-----------------------------------------
                           1291 ;	 function Timer1_Init
                           1292 ;	-----------------------------------------
   01F1                    1293 _Timer1_Init:
                    0123   1294 	C$potentiostat_HWtestingMain.c$345$1$1 ==.
                           1295 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:345: TCON &= 0xBF;					// 0xBF = 1011 1111, Stop Timer1
   01F1 53 88 BF           1296 	anl	_TCON,#0xBF
                    0126   1297 	C$potentiostat_HWtestingMain.c$347$1$1 ==.
                           1298 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:347: CKCON &= 0xF6;					// Set Timer 1 to use the prescaled
   01F4 53 8E F6           1299 	anl	_CKCON,#0xF6
                    0129   1300 	C$potentiostat_HWtestingMain.c$348$1$1 ==.
                           1301 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:348: CKCON |= 0x02;					// clock and set prescale to 1/48.
   01F7 43 8E 02           1302 	orl	_CKCON,#0x02
                    012C   1303 	C$potentiostat_HWtestingMain.c$357$1$1 ==.
                           1304 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:357: TL1 = 0x06;						// load both so first interrupt is
   01FA 75 8B 06           1305 	mov	_TL1,#0x06
                    012F   1306 	C$potentiostat_HWtestingMain.c$358$1$1 ==.
                           1307 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:358: TH1 = 0x06;						// after 0.5 ms.
   01FD 75 8D 06           1308 	mov	_TH1,#0x06
                    0132   1309 	C$potentiostat_HWtestingMain.c$361$1$1 ==.
                           1310 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:361: TMOD &= 0x2F;					// 0x2F = 0010 1111
   0200 53 89 2F           1311 	anl	_TMOD,#0x2F
                    0135   1312 	C$potentiostat_HWtestingMain.c$362$1$1 ==.
                           1313 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:362: TMOD |= 0x20;					// 0x20 = 0010 0000
   0203 43 89 20           1314 	orl	_TMOD,#0x20
                    0138   1315 	C$potentiostat_HWtestingMain.c$365$1$1 ==.
                           1316 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:365: TCON &= 0x7F;					// 0x7F = 0111 1111, Clear interrupt flag
   0206 53 88 7F           1317 	anl	_TCON,#0x7F
                    013B   1318 	C$potentiostat_HWtestingMain.c$366$1$1 ==.
                           1319 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:366: TCON |= 0x40;					// 0x40 = 0100 0000, Start Timer1
   0209 43 88 40           1320 	orl	_TCON,#0x40
                    013E   1321 	C$potentiostat_HWtestingMain.c$371$1$1 ==.
                           1322 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:371: PT1 = 1;
   020C D2 BB              1323 	setb	_PT1
                    0140   1324 	C$potentiostat_HWtestingMain.c$376$1$1 ==.
                           1325 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:376: CPT1CN = 0x80;	// 0x80 = 1000 0000
   020E 75 9A 80           1326 	mov	_CPT1CN,#0x80
                    0143   1327 	C$potentiostat_HWtestingMain.c$381$1$1 ==.
                           1328 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:381: EIE1 |= 0x40;	// 0x40 = 0100 0000
   0211 43 E6 40           1329 	orl	_EIE1,#0x40
                    0146   1330 	C$potentiostat_HWtestingMain.c$385$1$1 ==.
                           1331 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:385: ET1 = 1;
   0214 D2 AB              1332 	setb	_ET1
                    0148   1333 	C$potentiostat_HWtestingMain.c$386$1$1 ==.
                    0148   1334 	XG$Timer1_Init$0$0 ==.
   0216 22                 1335 	ret
                           1336 ;------------------------------------------------------------
                           1337 ;Allocation info for local variables in function 'Timer2_Init'
                           1338 ;------------------------------------------------------------
                           1339 ;counts                    Allocated to registers 
                           1340 ;------------------------------------------------------------
                    0149   1341 	G$Timer2_Init$0$0 ==.
                    0149   1342 	C$potentiostat_HWtestingMain.c$399$1$1 ==.
                           1343 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:399: void Timer2_Init (int counts)
                           1344 ;	-----------------------------------------
                           1345 ;	 function Timer2_Init
                           1346 ;	-----------------------------------------
   0217                    1347 _Timer2_Init:
                    0149   1348 	C$potentiostat_HWtestingMain.c$401$1$1 ==.
                           1349 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:401: TMR2CN = 0x00;						// Stop Timer2; Clear TF2;
   0217 75 C8 00           1350 	mov	_TMR2CN,#0x00
                    014C   1351 	C$potentiostat_HWtestingMain.c$403$1$1 ==.
                           1352 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:403: CKCON &= ~0x30;						// Timer2 clocked based on T2XCLK;
   021A 53 8E CF           1353 	anl	_CKCON,#0xCF
                    014F   1354 	C$potentiostat_HWtestingMain.c$406$1$1 ==.
                           1355 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:406: TMR2RL = 0x0000;						// Init reload values
   021D E4                 1356 	clr	a
   021E F5 CA              1357 	mov	_TMR2RL,a
   0220 F5 CB              1358 	mov	(_TMR2RL >> 8),a
                    0154   1359 	C$potentiostat_HWtestingMain.c$407$1$1 ==.
                           1360 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:407: TMR2 = 0xffff;						// Set to reload immediately
   0222 75 CC FF           1361 	mov	_TMR2,#0xFF
   0225 75 CD FF           1362 	mov	(_TMR2 >> 8),#0xFF
                    015A   1363 	C$potentiostat_HWtestingMain.c$408$1$1 ==.
                           1364 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:408: ET2 = 1;								// Enable Timer2 interrupts
   0228 D2 AD              1365 	setb	_ET2
                    015C   1366 	C$potentiostat_HWtestingMain.c$409$1$1 ==.
                           1367 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:409: TR2 = 1;								// Start Timer2
   022A D2 CA              1368 	setb	_TR2
                    015E   1369 	C$potentiostat_HWtestingMain.c$410$1$1 ==.
                    015E   1370 	XG$Timer2_Init$0$0 ==.
   022C 22                 1371 	ret
                           1372 ;------------------------------------------------------------
                           1373 ;Allocation info for local variables in function 'SPI_Init'
                           1374 ;------------------------------------------------------------
                           1375 ;------------------------------------------------------------
                    015F   1376 	G$SPI_Init$0$0 ==.
                    015F   1377 	C$potentiostat_HWtestingMain.c$423$1$1 ==.
                           1378 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:423: void SPI_Init (void)
                           1379 ;	-----------------------------------------
                           1380 ;	 function SPI_Init
                           1381 ;	-----------------------------------------
   022D                    1382 _SPI_Init:
                    015F   1383 	C$potentiostat_HWtestingMain.c$426$1$1 ==.
                           1384 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:426: NDACCS = 1;
   022D D2 94              1385 	setb	_NDACCS
                    0161   1386 	C$potentiostat_HWtestingMain.c$427$1$1 ==.
                           1387 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:427: NADCCS = 1;
   022F D2 A1              1388 	setb	_NADCCS
                    0163   1389 	C$potentiostat_HWtestingMain.c$428$1$1 ==.
                           1390 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:428: NRAMCS = 1;
   0231 D2 A6              1391 	setb	_NRAMCS
                    0165   1392 	C$potentiostat_HWtestingMain.c$439$1$1 ==.
                           1393 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:439: SPI0CFG = 0x50;				// 0x60 = 0101 0000
   0233 75 A1 50           1394 	mov	_SPI0CFG,#0x50
                    0168   1395 	C$potentiostat_HWtestingMain.c$450$1$1 ==.
                           1396 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:450: SPI0CN = 0x01;				// 0x01 = 0000 0001
   0236 75 F8 01           1397 	mov	_SPI0CN,#0x01
                    016B   1398 	C$potentiostat_HWtestingMain.c$462$1$1 ==.
                           1399 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:462: SPI0CKR = 0x05;				// 0x00 = 0000 0101
   0239 75 A2 05           1400 	mov	_SPI0CKR,#0x05
                    016E   1401 	C$potentiostat_HWtestingMain.c$465$1$1 ==.
                           1402 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:465: ESPI0 = 1;
   023C D2 AE              1403 	setb	_ESPI0
                    0170   1404 	C$potentiostat_HWtestingMain.c$466$1$1 ==.
                    0170   1405 	XG$SPI_Init$0$0 ==.
   023E 22                 1406 	ret
                           1407 ;------------------------------------------------------------
                           1408 ;Allocation info for local variables in function 'DAC_Init'
                           1409 ;------------------------------------------------------------
                           1410 ;------------------------------------------------------------
                    0171   1411 	G$DAC_Init$0$0 ==.
                    0171   1412 	C$potentiostat_HWtestingMain.c$479$1$1 ==.
                           1413 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:479: void DAC_Init (void)
                           1414 ;	-----------------------------------------
                           1415 ;	 function DAC_Init
                           1416 ;	-----------------------------------------
   023F                    1417 _DAC_Init:
                    0171   1418 	C$potentiostat_HWtestingMain.c$481$1$1 ==.
                           1419 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:481: Writing_to_DAC = 1;
   023F 75 08 01           1420 	mov	_Writing_to_DAC,#0x01
   0242 E4                 1421 	clr	a
   0243 F5 09              1422 	mov	(_Writing_to_DAC + 1),a
                    0177   1423 	C$potentiostat_HWtestingMain.c$494$1$1 ==.
                           1424 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:494: NDACCS = 0;						// Select the DAC for SPI communication
   0245 C2 94              1425 	clr	_NDACCS
                    0179   1426 	C$potentiostat_HWtestingMain.c$495$1$1 ==.
                           1427 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:495: SPI0DAT = 0x08;					// 0x08 = 0000 1000
   0247 75 A3 08           1428 	mov	_SPI0DAT,#0x08
                    017C   1429 	C$potentiostat_HWtestingMain.c$496$1$1 ==.
                           1430 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:496: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   024A                    1431 00101$:
   024A 74 01              1432 	mov	a,#0x01
   024C B5 0E 06           1433 	cjne	a,_SPI_DAC_Bytes,00148$
   024F E4                 1434 	clr	a
   0250 B5 0F 02           1435 	cjne	a,(_SPI_DAC_Bytes + 1),00148$
   0253 80 02              1436 	sjmp	00149$
   0255                    1437 00148$:
   0255 80 F3              1438 	sjmp	00101$
   0257                    1439 00149$:
                    0189   1440 	C$potentiostat_HWtestingMain.c$497$1$1 ==.
                           1441 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:497: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   0257 75 A3 00           1442 	mov	_SPI0DAT,#0x00
                    018C   1443 	C$potentiostat_HWtestingMain.c$498$1$1 ==.
                           1444 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:498: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   025A                    1445 00104$:
   025A 74 02              1446 	mov	a,#0x02
   025C B5 0E 06           1447 	cjne	a,_SPI_DAC_Bytes,00150$
   025F E4                 1448 	clr	a
   0260 B5 0F 02           1449 	cjne	a,(_SPI_DAC_Bytes + 1),00150$
   0263 80 02              1450 	sjmp	00151$
   0265                    1451 00150$:
   0265 80 F3              1452 	sjmp	00104$
   0267                    1453 00151$:
                    0199   1454 	C$potentiostat_HWtestingMain.c$499$1$1 ==.
                           1455 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:499: SPI0DAT = 0x04;					// 0x04 = 0000 0100
   0267 75 A3 04           1456 	mov	_SPI0DAT,#0x04
                    019C   1457 	C$potentiostat_HWtestingMain.c$500$1$1 ==.
                           1458 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:500: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
   026A                    1459 00107$:
   026A 74 03              1460 	mov	a,#0x03
   026C B5 0E 06           1461 	cjne	a,_SPI_DAC_Bytes,00152$
   026F E4                 1462 	clr	a
   0270 B5 0F 02           1463 	cjne	a,(_SPI_DAC_Bytes + 1),00152$
   0273 80 02              1464 	sjmp	00153$
   0275                    1465 00152$:
   0275 80 F3              1466 	sjmp	00107$
   0277                    1467 00153$:
                    01A9   1468 	C$potentiostat_HWtestingMain.c$501$1$1 ==.
                           1469 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:501: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
   0277 E5 0E              1470 	mov	a,_SPI_DAC_Bytes
   0279 24 FD              1471 	add	a,#0xfd
   027B F5 0E              1472 	mov	_SPI_DAC_Bytes,a
   027D E5 0F              1473 	mov	a,(_SPI_DAC_Bytes + 1)
   027F 34 FF              1474 	addc	a,#0xff
   0281 F5 0F              1475 	mov	(_SPI_DAC_Bytes + 1),a
                    01B5   1476 	C$potentiostat_HWtestingMain.c$502$1$1 ==.
                           1477 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:502: NDACCS = 1;						// Deselect the DAC for SPI communication
   0283 D2 94              1478 	setb	_NDACCS
                    01B7   1479 	C$potentiostat_HWtestingMain.c$518$1$1 ==.
                           1480 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:518: NDACCS = 0;						// Select the DAC for SPI communication
   0285 C2 94              1481 	clr	_NDACCS
                    01B9   1482 	C$potentiostat_HWtestingMain.c$519$1$1 ==.
                           1483 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:519: SPI0DAT = 0x19;					// 0x19 = 0001 1001
   0287 75 A3 19           1484 	mov	_SPI0DAT,#0x19
                    01BC   1485 	C$potentiostat_HWtestingMain.c$520$1$1 ==.
                           1486 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:520: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   028A                    1487 00110$:
   028A 74 01              1488 	mov	a,#0x01
   028C B5 0E 06           1489 	cjne	a,_SPI_DAC_Bytes,00154$
   028F E4                 1490 	clr	a
   0290 B5 0F 02           1491 	cjne	a,(_SPI_DAC_Bytes + 1),00154$
   0293 80 02              1492 	sjmp	00155$
   0295                    1493 00154$:
   0295 80 F3              1494 	sjmp	00110$
   0297                    1495 00155$:
                    01C9   1496 	C$potentiostat_HWtestingMain.c$521$1$1 ==.
                           1497 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:521: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   0297 75 A3 00           1498 	mov	_SPI0DAT,#0x00
                    01CC   1499 	C$potentiostat_HWtestingMain.c$522$1$1 ==.
                           1500 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:522: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   029A                    1501 00113$:
   029A 74 02              1502 	mov	a,#0x02
   029C B5 0E 06           1503 	cjne	a,_SPI_DAC_Bytes,00156$
   029F E4                 1504 	clr	a
   02A0 B5 0F 02           1505 	cjne	a,(_SPI_DAC_Bytes + 1),00156$
   02A3 80 02              1506 	sjmp	00157$
   02A5                    1507 00156$:
   02A5 80 F3              1508 	sjmp	00113$
   02A7                    1509 00157$:
                    01D9   1510 	C$potentiostat_HWtestingMain.c$523$1$1 ==.
                           1511 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:523: SPI0DAT = 0x0F;					// 0x0E = 0000 1110
   02A7 75 A3 0F           1512 	mov	_SPI0DAT,#0x0F
                    01DC   1513 	C$potentiostat_HWtestingMain.c$524$1$1 ==.
                           1514 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:524: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
   02AA                    1515 00116$:
   02AA 74 03              1516 	mov	a,#0x03
   02AC B5 0E 06           1517 	cjne	a,_SPI_DAC_Bytes,00158$
   02AF E4                 1518 	clr	a
   02B0 B5 0F 02           1519 	cjne	a,(_SPI_DAC_Bytes + 1),00158$
   02B3 80 02              1520 	sjmp	00159$
   02B5                    1521 00158$:
   02B5 80 F3              1522 	sjmp	00116$
   02B7                    1523 00159$:
                    01E9   1524 	C$potentiostat_HWtestingMain.c$525$1$1 ==.
                           1525 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:525: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
   02B7 E5 0E              1526 	mov	a,_SPI_DAC_Bytes
   02B9 24 FD              1527 	add	a,#0xfd
   02BB F5 0E              1528 	mov	_SPI_DAC_Bytes,a
   02BD E5 0F              1529 	mov	a,(_SPI_DAC_Bytes + 1)
   02BF 34 FF              1530 	addc	a,#0xff
   02C1 F5 0F              1531 	mov	(_SPI_DAC_Bytes + 1),a
                    01F5   1532 	C$potentiostat_HWtestingMain.c$526$1$1 ==.
                           1533 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:526: NDACCS = 1;						// Deselect the DAC for SPI communication
   02C3 D2 94              1534 	setb	_NDACCS
                    01F7   1535 	C$potentiostat_HWtestingMain.c$545$1$1 ==.
                           1536 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:545: NDACCS = 0;						// Select the DAC for SPI communication
   02C5 C2 94              1537 	clr	_NDACCS
                    01F9   1538 	C$potentiostat_HWtestingMain.c$546$1$1 ==.
                           1539 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:546: SPI0DAT = 0x10;					// 0x10 = 0001 0000
   02C7 75 A3 10           1540 	mov	_SPI0DAT,#0x10
                    01FC   1541 	C$potentiostat_HWtestingMain.c$547$1$1 ==.
                           1542 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:547: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   02CA                    1543 00119$:
   02CA 74 01              1544 	mov	a,#0x01
   02CC B5 0E 06           1545 	cjne	a,_SPI_DAC_Bytes,00160$
   02CF E4                 1546 	clr	a
   02D0 B5 0F 02           1547 	cjne	a,(_SPI_DAC_Bytes + 1),00160$
   02D3 80 02              1548 	sjmp	00161$
   02D5                    1549 00160$:
   02D5 80 F3              1550 	sjmp	00119$
   02D7                    1551 00161$:
                    0209   1552 	C$potentiostat_HWtestingMain.c$548$1$1 ==.
                           1553 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:548: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   02D7 75 A3 00           1554 	mov	_SPI0DAT,#0x00
                    020C   1555 	C$potentiostat_HWtestingMain.c$549$1$1 ==.
                           1556 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:549: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   02DA                    1557 00122$:
   02DA 74 02              1558 	mov	a,#0x02
   02DC B5 0E 06           1559 	cjne	a,_SPI_DAC_Bytes,00162$
   02DF E4                 1560 	clr	a
   02E0 B5 0F 02           1561 	cjne	a,(_SPI_DAC_Bytes + 1),00162$
   02E3 80 02              1562 	sjmp	00163$
   02E5                    1563 00162$:
   02E5 80 F3              1564 	sjmp	00122$
   02E7                    1565 00163$:
                    0219   1566 	C$potentiostat_HWtestingMain.c$550$1$1 ==.
                           1567 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:550: SPI0DAT = 0x01;					// 0x0F = 0000 0001
   02E7 75 A3 01           1568 	mov	_SPI0DAT,#0x01
                    021C   1569 	C$potentiostat_HWtestingMain.c$551$1$1 ==.
                           1570 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:551: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
   02EA                    1571 00125$:
   02EA 74 03              1572 	mov	a,#0x03
   02EC B5 0E 06           1573 	cjne	a,_SPI_DAC_Bytes,00164$
   02EF E4                 1574 	clr	a
   02F0 B5 0F 02           1575 	cjne	a,(_SPI_DAC_Bytes + 1),00164$
   02F3 80 02              1576 	sjmp	00165$
   02F5                    1577 00164$:
   02F5 80 F3              1578 	sjmp	00125$
   02F7                    1579 00165$:
                    0229   1580 	C$potentiostat_HWtestingMain.c$552$1$1 ==.
                           1581 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:552: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
   02F7 E5 0E              1582 	mov	a,_SPI_DAC_Bytes
   02F9 24 FD              1583 	add	a,#0xfd
   02FB F5 0E              1584 	mov	_SPI_DAC_Bytes,a
   02FD E5 0F              1585 	mov	a,(_SPI_DAC_Bytes + 1)
   02FF 34 FF              1586 	addc	a,#0xff
   0301 F5 0F              1587 	mov	(_SPI_DAC_Bytes + 1),a
                    0235   1588 	C$potentiostat_HWtestingMain.c$553$1$1 ==.
                           1589 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:553: NDACCS = 1;						// Deselect the DAC for SPI communication
   0303 D2 94              1590 	setb	_NDACCS
                    0237   1591 	C$potentiostat_HWtestingMain.c$555$1$1 ==.
                           1592 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:555: Writing_to_DAC = 0;
   0305 E4                 1593 	clr	a
   0306 F5 08              1594 	mov	_Writing_to_DAC,a
   0308 F5 09              1595 	mov	(_Writing_to_DAC + 1),a
                    023C   1596 	C$potentiostat_HWtestingMain.c$557$1$1 ==.
                    023C   1597 	XG$DAC_Init$0$0 ==.
   030A 22                 1598 	ret
                           1599 ;------------------------------------------------------------
                           1600 ;Allocation info for local variables in function 'ADC_Init'
                           1601 ;------------------------------------------------------------
                           1602 ;------------------------------------------------------------
                    023D   1603 	G$ADC_Init$0$0 ==.
                    023D   1604 	C$potentiostat_HWtestingMain.c$569$1$1 ==.
                           1605 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:569: void ADC_Init (void)
                           1606 ;	-----------------------------------------
                           1607 ;	 function ADC_Init
                           1608 ;	-----------------------------------------
   030B                    1609 _ADC_Init:
                    023D   1610 	C$potentiostat_HWtestingMain.c$571$1$1 ==.
                           1611 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:571: Writing_to_ADC = 1;
   030B 75 0A 01           1612 	mov	_Writing_to_ADC,#0x01
   030E E4                 1613 	clr	a
   030F F5 0B              1614 	mov	(_Writing_to_ADC + 1),a
                    0243   1615 	C$potentiostat_HWtestingMain.c$586$1$1 ==.
                           1616 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:586: SPI0CFG = 0x40;				// 0x60 = 0100 0000
   0311 75 A1 40           1617 	mov	_SPI0CFG,#0x40
                    0246   1618 	C$potentiostat_HWtestingMain.c$598$1$1 ==.
                           1619 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:598: SPI0CKR = 0x05;				// 0x00 = 0000 0101
   0314 75 A2 05           1620 	mov	_SPI0CKR,#0x05
                    0249   1621 	C$potentiostat_HWtestingMain.c$611$1$1 ==.
                           1622 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:611: NADCCS = 0;						// Select the DAC for SPI communication
   0317 C2 A1              1623 	clr	_NADCCS
                    024B   1624 	C$potentiostat_HWtestingMain.c$612$1$1 ==.
                           1625 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:612: SPI0DAT = 0xA0;					// 0xA0 = 1010 0000
   0319 75 A3 A0           1626 	mov	_SPI0DAT,#0xA0
                    024E   1627 	C$potentiostat_HWtestingMain.c$613$1$1 ==.
                           1628 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:613: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   031C                    1629 00101$:
   031C 74 01              1630 	mov	a,#0x01
   031E B5 0E 06           1631 	cjne	a,_SPI_DAC_Bytes,00113$
   0321 E4                 1632 	clr	a
   0322 B5 0F 02           1633 	cjne	a,(_SPI_DAC_Bytes + 1),00113$
   0325 80 02              1634 	sjmp	00114$
   0327                    1635 00113$:
   0327 80 F3              1636 	sjmp	00101$
   0329                    1637 00114$:
                    025B   1638 	C$potentiostat_HWtestingMain.c$614$1$1 ==.
                           1639 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:614: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   0329 75 A3 00           1640 	mov	_SPI0DAT,#0x00
                    025E   1641 	C$potentiostat_HWtestingMain.c$615$1$1 ==.
                           1642 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:615: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   032C                    1643 00104$:
   032C 74 02              1644 	mov	a,#0x02
   032E B5 0E 06           1645 	cjne	a,_SPI_DAC_Bytes,00115$
   0331 E4                 1646 	clr	a
   0332 B5 0F 02           1647 	cjne	a,(_SPI_DAC_Bytes + 1),00115$
   0335 80 02              1648 	sjmp	00116$
   0337                    1649 00115$:
   0337 80 F3              1650 	sjmp	00104$
   0339                    1651 00116$:
                    026B   1652 	C$potentiostat_HWtestingMain.c$616$1$1 ==.
                           1653 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:616: NADCCS = 1;						// Deselect the DAC for SPI communication
   0339 D2 A1              1654 	setb	_NADCCS
                    026D   1655 	C$potentiostat_HWtestingMain.c$618$1$1 ==.
                           1656 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:618: Writing_to_ADC = 0;
   033B E4                 1657 	clr	a
   033C F5 0A              1658 	mov	_Writing_to_ADC,a
   033E F5 0B              1659 	mov	(_Writing_to_ADC + 1),a
                    0272   1660 	C$potentiostat_HWtestingMain.c$619$1$1 ==.
                    0272   1661 	XG$ADC_Init$0$0 ==.
   0340 22                 1662 	ret
                           1663 ;------------------------------------------------------------
                           1664 ;Allocation info for local variables in function 'RAM_Write'
                           1665 ;------------------------------------------------------------
                           1666 ;------------------------------------------------------------
                    0273   1667 	G$RAM_Write$0$0 ==.
                    0273   1668 	C$potentiostat_HWtestingMain.c$621$1$1 ==.
                           1669 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:621: void RAM_Write ()
                           1670 ;	-----------------------------------------
                           1671 ;	 function RAM_Write
                           1672 ;	-----------------------------------------
   0341                    1673 _RAM_Write:
                    0273   1674 	C$potentiostat_HWtestingMain.c$625$1$1 ==.
                           1675 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:625: SPI0CFG = 0x40;				// 0x60 = 0100 0000
   0341 75 A1 40           1676 	mov	_SPI0CFG,#0x40
                    0276   1677 	C$potentiostat_HWtestingMain.c$626$1$1 ==.
                           1678 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:626: SPI0CKR = 0x00;				// 0x00 = 0000 0000
   0344 75 A2 00           1679 	mov	_SPI0CKR,#0x00
                    0279   1680 	C$potentiostat_HWtestingMain.c$629$1$1 ==.
                           1681 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:629: Writing_to_RAM = 1;
   0347 75 0C 01           1682 	mov	_Writing_to_RAM,#0x01
   034A E4                 1683 	clr	a
   034B F5 0D              1684 	mov	(_Writing_to_RAM + 1),a
                    027F   1685 	C$potentiostat_HWtestingMain.c$639$1$1 ==.
                           1686 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:639: NRAMCS = 0;
   034D C2 A6              1687 	clr	_NRAMCS
                    0281   1688 	C$potentiostat_HWtestingMain.c$640$1$1 ==.
                           1689 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:640: SPI_RAM_Bytes = 0;
   034F E4                 1690 	clr	a
   0350 F5 12              1691 	mov	_SPI_RAM_Bytes,a
   0352 F5 13              1692 	mov	(_SPI_RAM_Bytes + 1),a
                    0286   1693 	C$potentiostat_HWtestingMain.c$642$1$1 ==.
                           1694 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:642: SPI0DAT = 0x02;					// 0x02 = 0000 0010
   0354 75 A3 02           1695 	mov	_SPI0DAT,#0x02
                    0289   1696 	C$potentiostat_HWtestingMain.c$643$1$1 ==.
                           1697 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:643: while(SPI_RAM_Bytes != 1) {}	// wait for SPI to finish sending byte
   0357                    1698 00101$:
                    0289   1699 	C$potentiostat_HWtestingMain.c$704$1$1 ==.
                           1700 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:704: Writing_to_RAM = 0;
                    0289   1701 	C$potentiostat_HWtestingMain.c$705$1$1 ==.
                    0289   1702 	XG$RAM_Write$0$0 ==.
   0357 80 FE              1703 	sjmp	00101$
                           1704 ;------------------------------------------------------------
                           1705 ;Allocation info for local variables in function 'SPI_ISR'
                           1706 ;------------------------------------------------------------
                           1707 ;RXbyte                    Allocated to registers r2 r3 
                           1708 ;------------------------------------------------------------
                    028B   1709 	G$SPI_ISR$0$0 ==.
                    028B   1710 	C$potentiostat_HWtestingMain.c$718$1$1 ==.
                           1711 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:718: INTERRUPT(SPI_ISR, INTERRUPT_SPI0)
                           1712 ;	-----------------------------------------
                           1713 ;	 function SPI_ISR
                           1714 ;	-----------------------------------------
   0359                    1715 _SPI_ISR:
   0359 C0 E0              1716 	push	acc
   035B C0 F0              1717 	push	b
   035D C0 02              1718 	push	ar2
   035F C0 03              1719 	push	ar3
   0361 C0 D0              1720 	push	psw
   0363 75 D0 00           1721 	mov	psw,#0x00
                    0298   1722 	C$potentiostat_HWtestingMain.c$728$1$1 ==.
                           1723 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:728: if ((SPI0CN & 0x80) == 0x80)		// TX complete, byte ready to read
   0366 74 80              1724 	mov	a,#0x80
   0368 55 F8              1725 	anl	a,_SPI0CN
   036A FA                 1726 	mov	r2,a
   036B BA 80 02           1727 	cjne	r2,#0x80,00131$
   036E 80 03              1728 	sjmp	00132$
   0370                    1729 00131$:
   0370 02 03 E4           1730 	ljmp	00114$
   0373                    1731 00132$:
                    02A5   1732 	C$potentiostat_HWtestingMain.c$730$2$2 ==.
                           1733 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:730: SPIF = 0;			// clear interrupt flag
   0373 C2 FF              1734 	clr	_SPIF
                    02A7   1735 	C$potentiostat_HWtestingMain.c$731$2$2 ==.
                           1736 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:731: RXbyte = SPI0DAT;	// This could be a byte from the DAC, ADC, or RAM.
   0375 AA A3              1737 	mov	r2,_SPI0DAT
   0377 7B 00              1738 	mov	r3,#0x00
                    02AB   1739 	C$potentiostat_HWtestingMain.c$732$2$2 ==.
                           1740 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:732: if (Writing_to_ADC > 0)			// ADC
   0379 C3                 1741 	clr	c
   037A E4                 1742 	clr	a
   037B 95 0A              1743 	subb	a,_Writing_to_ADC
   037D 74 80              1744 	mov	a,#(0x00 ^ 0x80)
   037F 85 0B F0           1745 	mov	b,(_Writing_to_ADC + 1)
   0382 63 F0 80           1746 	xrl	b,#0x80
   0385 95 F0              1747 	subb	a,b
   0387 50 25              1748 	jnc	00111$
                    02BB   1749 	C$potentiostat_HWtestingMain.c$734$3$3 ==.
                           1750 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:734: SPI_ADC_Bytes++;			// Do not zero in this ISR
   0389 05 10              1751 	inc	_SPI_ADC_Bytes
   038B E4                 1752 	clr	a
   038C B5 10 02           1753 	cjne	a,_SPI_ADC_Bytes,00134$
   038F 05 11              1754 	inc	(_SPI_ADC_Bytes + 1)
   0391                    1755 00134$:
                    02C3   1756 	C$potentiostat_HWtestingMain.c$735$3$3 ==.
                           1757 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:735: if (SPI_ADC_Bytes == 0)
   0391 E5 10              1758 	mov	a,_SPI_ADC_Bytes
   0393 45 11              1759 	orl	a,(_SPI_ADC_Bytes + 1)
   0395 70 06              1760 	jnz	00102$
                    02C9   1761 	C$potentiostat_HWtestingMain.c$737$4$4 ==.
                           1762 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:737: latest_ADC_HighByte = RXbyte;
   0397 8A 1A              1763 	mov	_latest_ADC_HighByte,r2
   0399 8B 1B              1764 	mov	(_latest_ADC_HighByte + 1),r3
   039B 80 47              1765 	sjmp	00114$
   039D                    1766 00102$:
                    02CF   1767 	C$potentiostat_HWtestingMain.c$741$4$5 ==.
                           1768 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:741: latest_ADC_LowByte = RXbyte;
   039D 8A 1C              1769 	mov	_latest_ADC_LowByte,r2
   039F 8B 1D              1770 	mov	(_latest_ADC_LowByte + 1),r3
                    02D3   1771 	C$potentiostat_HWtestingMain.c$746$4$5 ==.
                           1772 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:746: Writing_to_ADC = 1;		// Change back to writing to ADC
   03A1 75 0A 01           1773 	mov	_Writing_to_ADC,#0x01
   03A4 E4                 1774 	clr	a
   03A5 F5 0B              1775 	mov	(_Writing_to_ADC + 1),a
                    02D9   1776 	C$potentiostat_HWtestingMain.c$747$4$5 ==.
                           1777 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:747: Writing_to_RAM = 0;
   03A7 E4                 1778 	clr	a
   03A8 F5 0C              1779 	mov	_Writing_to_RAM,a
   03AA F5 0D              1780 	mov	(_Writing_to_RAM + 1),a
   03AC 80 36              1781 	sjmp	00114$
   03AE                    1782 00111$:
                    02E0   1783 	C$potentiostat_HWtestingMain.c$750$2$2 ==.
                           1784 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:750: else if (Writing_to_DAC > 0)	// DAC
   03AE C3                 1785 	clr	c
   03AF E4                 1786 	clr	a
   03B0 95 08              1787 	subb	a,_Writing_to_DAC
   03B2 74 80              1788 	mov	a,#(0x00 ^ 0x80)
   03B4 85 09 F0           1789 	mov	b,(_Writing_to_DAC + 1)
   03B7 63 F0 80           1790 	xrl	b,#0x80
   03BA 95 F0              1791 	subb	a,b
   03BC 50 0A              1792 	jnc	00108$
                    02F0   1793 	C$potentiostat_HWtestingMain.c$752$3$6 ==.
                           1794 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:752: SPI_DAC_Bytes++;			// Do not zero in this ISR
   03BE 05 0E              1795 	inc	_SPI_DAC_Bytes
   03C0 E4                 1796 	clr	a
   03C1 B5 0E 20           1797 	cjne	a,_SPI_DAC_Bytes,00114$
   03C4 05 0F              1798 	inc	(_SPI_DAC_Bytes + 1)
   03C6 80 1C              1799 	sjmp	00114$
   03C8                    1800 00108$:
                    02FA   1801 	C$potentiostat_HWtestingMain.c$754$2$2 ==.
                           1802 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:754: else if (Writing_to_RAM > 0)	// RAM
   03C8 C3                 1803 	clr	c
   03C9 E4                 1804 	clr	a
   03CA 95 0C              1805 	subb	a,_Writing_to_RAM
   03CC 74 80              1806 	mov	a,#(0x00 ^ 0x80)
   03CE 85 0D F0           1807 	mov	b,(_Writing_to_RAM + 1)
   03D1 63 F0 80           1808 	xrl	b,#0x80
   03D4 95 F0              1809 	subb	a,b
   03D6 50 0A              1810 	jnc	00105$
                    030A   1811 	C$potentiostat_HWtestingMain.c$756$3$7 ==.
                           1812 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:756: SPI_RAM_Bytes++;			// Do not zero in this ISR
   03D8 05 12              1813 	inc	_SPI_RAM_Bytes
   03DA E4                 1814 	clr	a
   03DB B5 12 06           1815 	cjne	a,_SPI_RAM_Bytes,00114$
   03DE 05 13              1816 	inc	(_SPI_RAM_Bytes + 1)
   03E0 80 02              1817 	sjmp	00114$
   03E2                    1818 00105$:
                    0314   1819 	C$potentiostat_HWtestingMain.c$760$3$8 ==.
                           1820 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:760: ERRORPIN = 1;
   03E2 D2 A2              1821 	setb	_ERRORPIN
   03E4                    1822 00114$:
                    0316   1823 	C$potentiostat_HWtestingMain.c$763$1$1 ==.
                           1824 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:763: if ((SPI0CN & 0x40) == 0x40)	// write collision
   03E4 74 40              1825 	mov	a,#0x40
   03E6 55 F8              1826 	anl	a,_SPI0CN
   03E8 FA                 1827 	mov	r2,a
   03E9 BA 40 02           1828 	cjne	r2,#0x40,00116$
                    031E   1829 	C$potentiostat_HWtestingMain.c$765$2$9 ==.
                           1830 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:765: WCOL = 0;		// clear interrupt flag
   03EC C2 FE              1831 	clr	_WCOL
   03EE                    1832 00116$:
                    0320   1833 	C$potentiostat_HWtestingMain.c$767$1$1 ==.
                           1834 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:767: if ((SPI0CN & 0x20) == 0x20)	// mode fault
   03EE 74 20              1835 	mov	a,#0x20
   03F0 55 F8              1836 	anl	a,_SPI0CN
   03F2 FA                 1837 	mov	r2,a
   03F3 BA 20 02           1838 	cjne	r2,#0x20,00118$
                    0328   1839 	C$potentiostat_HWtestingMain.c$769$2$10 ==.
                           1840 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:769: MODF = 0;		// clear interrupt flag
   03F6 C2 FD              1841 	clr	_MODF
   03F8                    1842 00118$:
                    032A   1843 	C$potentiostat_HWtestingMain.c$771$1$1 ==.
                           1844 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:771: if ((SPI0CN & 0x10) == 0x10)	// RX overrun
   03F8 74 10              1845 	mov	a,#0x10
   03FA 55 F8              1846 	anl	a,_SPI0CN
   03FC FA                 1847 	mov	r2,a
   03FD BA 10 02           1848 	cjne	r2,#0x10,00121$
                    0332   1849 	C$potentiostat_HWtestingMain.c$773$2$11 ==.
                           1850 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:773: RXOVRN = 0;		// clear interrupt flag
   0400 C2 FC              1851 	clr	_RXOVRN
   0402                    1852 00121$:
   0402 D0 D0              1853 	pop	psw
   0404 D0 03              1854 	pop	ar3
   0406 D0 02              1855 	pop	ar2
   0408 D0 F0              1856 	pop	b
   040A D0 E0              1857 	pop	acc
                    033E   1858 	C$potentiostat_HWtestingMain.c$775$2$1 ==.
                    033E   1859 	XG$SPI_ISR$0$0 ==.
   040C 32                 1860 	reti
                           1861 ;	eliminated unneeded push/pop dpl
                           1862 ;	eliminated unneeded push/pop dph
                           1863 ;------------------------------------------------------------
                           1864 ;Allocation info for local variables in function 'Timer1_ISR'
                           1865 ;------------------------------------------------------------
                           1866 ;save_Writing_to_DAC       Allocated to registers r2 r3 
                           1867 ;save_Writing_to_RAM       Allocated to registers r4 r5 
                           1868 ;save_NDACCS               Allocated to registers r6 r7 
                           1869 ;save_NRAMCS               Allocated to registers r0 r1 
                           1870 ;------------------------------------------------------------
                    033F   1871 	G$Timer1_ISR$0$0 ==.
                    033F   1872 	C$potentiostat_HWtestingMain.c$776$2$1 ==.
                           1873 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:776: INTERRUPT(Timer1_ISR, INTERRUPT_TIMER1)
                           1874 ;	-----------------------------------------
                           1875 ;	 function Timer1_ISR
                           1876 ;	-----------------------------------------
   040D                    1877 _Timer1_ISR:
   040D C0 E0              1878 	push	acc
   040F C0 02              1879 	push	ar2
   0411 C0 03              1880 	push	ar3
   0413 C0 04              1881 	push	ar4
   0415 C0 05              1882 	push	ar5
   0417 C0 06              1883 	push	ar6
   0419 C0 07              1884 	push	ar7
   041B C0 00              1885 	push	ar0
   041D C0 01              1886 	push	ar1
   041F C0 D0              1887 	push	psw
   0421 75 D0 00           1888 	mov	psw,#0x00
                    0356   1889 	C$potentiostat_HWtestingMain.c$787$1$1 ==.
                           1890 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:787: TF1 = 0;						// Clear Timer2 interrupt flag
   0424 C2 8F              1891 	clr	_TF1
                    0358   1892 	C$potentiostat_HWtestingMain.c$789$1$1 ==.
                           1893 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:789: if (ADC_settled == 0)			// if not settled, still waiting 12 ms
   0426 E5 16              1894 	mov	a,_ADC_settled
   0428 45 17              1895 	orl	a,(_ADC_settled + 1)
   042A 70 21              1896 	jnz	00113$
                    035E   1897 	C$potentiostat_HWtestingMain.c$791$2$2 ==.
                           1898 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:791: ADC_timer++;
   042C 05 14              1899 	inc	_ADC_timer
   042E E4                 1900 	clr	a
   042F B5 14 02           1901 	cjne	a,_ADC_timer,00125$
   0432 05 15              1902 	inc	(_ADC_timer + 1)
   0434                    1903 00125$:
                    0366   1904 	C$potentiostat_HWtestingMain.c$792$2$2 ==.
                           1905 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:792: if (ADC_timer >= 12)
   0434 C3                 1906 	clr	c
   0435 E5 14              1907 	mov	a,_ADC_timer
   0437 94 0C              1908 	subb	a,#0x0C
   0439 E5 15              1909 	mov	a,(_ADC_timer + 1)
   043B 64 80              1910 	xrl	a,#0x80
   043D 94 80              1911 	subb	a,#0x80
   043F 50 03              1912 	jnc	00126$
   0441 02 04 DD           1913 	ljmp	00115$
   0444                    1914 00126$:
                    0376   1915 	C$potentiostat_HWtestingMain.c$794$3$3 ==.
                           1916 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:794: ADC_settled = 1;
   0444 75 16 01           1917 	mov	_ADC_settled,#0x01
   0447 E4                 1918 	clr	a
   0448 F5 17              1919 	mov	(_ADC_settled + 1),a
   044A 02 04 DD           1920 	ljmp	00115$
   044D                    1921 00113$:
                    037F   1922 	C$potentiostat_HWtestingMain.c$799$2$4 ==.
                           1923 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:799: if (ADC_timer_MSB < 1)		// Timer needs to execute another time,
   044D C3                 1924 	clr	c
   044E E5 18              1925 	mov	a,_ADC_timer_MSB
   0450 94 01              1926 	subb	a,#0x01
   0452 E5 19              1927 	mov	a,(_ADC_timer_MSB + 1)
   0454 64 80              1928 	xrl	a,#0x80
   0456 94 80              1929 	subb	a,#0x80
   0458 50 0A              1930 	jnc	00110$
                    038C   1931 	C$potentiostat_HWtestingMain.c$801$3$5 ==.
                           1932 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:801: ADC_timer_MSB++;
   045A 05 18              1933 	inc	_ADC_timer_MSB
   045C E4                 1934 	clr	a
   045D B5 18 02           1935 	cjne	a,_ADC_timer_MSB,00128$
   0460 05 19              1936 	inc	(_ADC_timer_MSB + 1)
   0462                    1937 00128$:
   0462 80 79              1938 	sjmp	00115$
   0464                    1939 00110$:
                    0396   1940 	C$potentiostat_HWtestingMain.c$811$3$6 ==.
                           1941 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:811: ESPI0 = 0;
   0464 C2 AE              1942 	clr	_ESPI0
                    0398   1943 	C$potentiostat_HWtestingMain.c$814$3$6 ==.
                           1944 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:814: save_Writing_to_DAC = Writing_to_DAC;
   0466 AA 08              1945 	mov	r2,_Writing_to_DAC
   0468 AB 09              1946 	mov	r3,(_Writing_to_DAC + 1)
                    039C   1947 	C$potentiostat_HWtestingMain.c$815$3$6 ==.
                           1948 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:815: save_Writing_to_RAM = Writing_to_RAM;
   046A AC 0C              1949 	mov	r4,_Writing_to_RAM
   046C AD 0D              1950 	mov	r5,(_Writing_to_RAM + 1)
                    03A0   1951 	C$potentiostat_HWtestingMain.c$816$3$6 ==.
                           1952 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:816: save_NDACCS = NDACCS;
   046E A2 94              1953 	mov	c,_NDACCS
   0470 E4                 1954 	clr	a
   0471 33                 1955 	rlc	a
   0472 FE                 1956 	mov	r6,a
   0473 7F 00              1957 	mov	r7,#0x00
                    03A7   1958 	C$potentiostat_HWtestingMain.c$817$3$6 ==.
                           1959 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:817: save_NRAMCS = NRAMCS;
   0475 A2 A6              1960 	mov	c,_NRAMCS
   0477 E4                 1961 	clr	a
   0478 33                 1962 	rlc	a
   0479 F8                 1963 	mov	r0,a
                    03AC   1964 	C$potentiostat_HWtestingMain.c$820$3$6 ==.
                           1965 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:820: Writing_to_DAC = 0;
                    03AC   1966 	C$potentiostat_HWtestingMain.c$821$3$6 ==.
                           1967 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:821: Writing_to_RAM = 0;
   047A E4                 1968 	clr	a
   047B F9                 1969 	mov	r1,a
   047C F5 08              1970 	mov	_Writing_to_DAC,a
   047E F5 09              1971 	mov	(_Writing_to_DAC + 1),a
   0480 F5 0C              1972 	mov	_Writing_to_RAM,a
   0482 F5 0D              1973 	mov	(_Writing_to_RAM + 1),a
                    03B6   1974 	C$potentiostat_HWtestingMain.c$822$3$6 ==.
                           1975 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:822: NDACCS = 1;
   0484 D2 94              1976 	setb	_NDACCS
                    03B8   1977 	C$potentiostat_HWtestingMain.c$823$3$6 ==.
                           1978 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:823: NRAMCS = 1;
   0486 D2 A6              1979 	setb	_NRAMCS
                    03BA   1980 	C$potentiostat_HWtestingMain.c$826$3$6 ==.
                           1981 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:826: NADCCS = 0;						// Select ADC for SPI comm
   0488 C2 A1              1982 	clr	_NADCCS
                    03BC   1983 	C$potentiostat_HWtestingMain.c$827$3$6 ==.
                           1984 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:827: Writing_to_ADC = 1;
   048A 75 0A 01           1985 	mov	_Writing_to_ADC,#0x01
   048D E4                 1986 	clr	a
   048E F5 0B              1987 	mov	(_Writing_to_ADC + 1),a
                    03C2   1988 	C$potentiostat_HWtestingMain.c$829$3$6 ==.
                           1989 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:829: SPI0CFG = 0x40;					// 0x60 = 0100 0000
   0490 75 A1 40           1990 	mov	_SPI0CFG,#0x40
                    03C5   1991 	C$potentiostat_HWtestingMain.c$830$3$6 ==.
                           1992 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:830: SPI0CKR = 0x05;					// 0x00 = 0000 0101
   0493 75 A2 05           1993 	mov	_SPI0CKR,#0x05
                    03C8   1994 	C$potentiostat_HWtestingMain.c$832$3$6 ==.
                           1995 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:832: SPI0DAT = 0x0;					// Write all zeros to get data
   0496 75 A3 00           1996 	mov	_SPI0DAT,#0x00
                    03CB   1997 	C$potentiostat_HWtestingMain.c$833$3$6 ==.
                           1998 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:833: while(!SPIF) {}					// Poll for SPI to finish sending byte
   0499                    1999 00103$:
   0499 30 FF FD           2000 	jnb	_SPIF,00103$
                    03CE   2001 	C$potentiostat_HWtestingMain.c$834$3$6 ==.
                           2002 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:834: latest_ADC_LowByte = SPI0DAT;	// Read SPI data register
   049C 85 A3 1C           2003 	mov	_latest_ADC_LowByte,_SPI0DAT
   049F 75 1D 00           2004 	mov	(_latest_ADC_LowByte + 1),#0x00
                    03D4   2005 	C$potentiostat_HWtestingMain.c$836$3$6 ==.
                           2006 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:836: SPIF = 0;
   04A2 C2 FF              2007 	clr	_SPIF
                    03D6   2008 	C$potentiostat_HWtestingMain.c$837$3$6 ==.
                           2009 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:837: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   04A4 75 A3 00           2010 	mov	_SPI0DAT,#0x00
                    03D9   2011 	C$potentiostat_HWtestingMain.c$838$3$6 ==.
                           2012 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:838: while(!SPIF) {}					// Poll for SPI to finish sending byte
   04A7                    2013 00106$:
   04A7 30 FF FD           2014 	jnb	_SPIF,00106$
                    03DC   2015 	C$potentiostat_HWtestingMain.c$839$3$6 ==.
                           2016 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:839: latest_ADC_HighByte = SPI0DAT;	// Read SPI data register
   04AA 85 A3 1A           2017 	mov	_latest_ADC_HighByte,_SPI0DAT
   04AD 75 1B 00           2018 	mov	(_latest_ADC_HighByte + 1),#0x00
                    03E2   2019 	C$potentiostat_HWtestingMain.c$841$3$6 ==.
                           2020 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:841: SPIF = 0;
   04B0 C2 FF              2021 	clr	_SPIF
                    03E4   2022 	C$potentiostat_HWtestingMain.c$842$3$6 ==.
                           2023 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:842: NADCCS = 1;						// Deselect ADC for SPI comm
   04B2 D2 A1              2024 	setb	_NADCCS
                    03E6   2025 	C$potentiostat_HWtestingMain.c$843$3$6 ==.
                           2026 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:843: Writing_to_ADC = 0;
   04B4 E4                 2027 	clr	a
   04B5 F5 0A              2028 	mov	_Writing_to_ADC,a
   04B7 F5 0B              2029 	mov	(_Writing_to_ADC + 1),a
                    03EB   2030 	C$potentiostat_HWtestingMain.c$846$3$6 ==.
                           2031 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:846: Writing_to_DAC = save_Writing_to_DAC;
   04B9 8A 08              2032 	mov	_Writing_to_DAC,r2
   04BB 8B 09              2033 	mov	(_Writing_to_DAC + 1),r3
                    03EF   2034 	C$potentiostat_HWtestingMain.c$847$3$6 ==.
                           2035 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:847: Writing_to_RAM = save_Writing_to_RAM;
   04BD 8C 0C              2036 	mov	_Writing_to_RAM,r4
   04BF 8D 0D              2037 	mov	(_Writing_to_RAM + 1),r5
                    03F3   2038 	C$potentiostat_HWtestingMain.c$848$3$6 ==.
                           2039 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:848: NDACCS = save_NDACCS;
   04C1 EE                 2040 	mov	a,r6
   04C2 4F                 2041 	orl	a,r7
   04C3 24 FF              2042 	add	a,#0xff
   04C5 92 94              2043 	mov	_NDACCS,c
                    03F9   2044 	C$potentiostat_HWtestingMain.c$849$3$6 ==.
                           2045 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:849: NRAMCS = save_NRAMCS;
   04C7 E8                 2046 	mov	a,r0
   04C8 49                 2047 	orl	a,r1
   04C9 24 FF              2048 	add	a,#0xff
   04CB 92 A6              2049 	mov	_NRAMCS,c
                    03FF   2050 	C$potentiostat_HWtestingMain.c$852$3$6 ==.
                           2051 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:852: ESPI0 = 1;
   04CD D2 AE              2052 	setb	_ESPI0
                    0401   2053 	C$potentiostat_HWtestingMain.c$856$3$6 ==.
                           2054 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:856: Write_to_RAM = 1;
   04CF 75 1E 01           2055 	mov	_Write_to_RAM,#0x01
   04D2 E4                 2056 	clr	a
   04D3 F5 1F              2057 	mov	(_Write_to_RAM + 1),a
                    0407   2058 	C$potentiostat_HWtestingMain.c$857$3$6 ==.
                           2059 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:857: EIE1 &= 0xFD;					// 0xFD = 1111 1101
   04D5 53 E6 FD           2060 	anl	_EIE1,#0xFD
                    040A   2061 	C$potentiostat_HWtestingMain.c$860$3$6 ==.
                           2062 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:860: ADC_timer_MSB = 0;				// Reset SW timer most significant bit
   04D8 E4                 2063 	clr	a
   04D9 F5 18              2064 	mov	_ADC_timer_MSB,a
   04DB F5 19              2065 	mov	(_ADC_timer_MSB + 1),a
   04DD                    2066 00115$:
   04DD D0 D0              2067 	pop	psw
   04DF D0 01              2068 	pop	ar1
   04E1 D0 00              2069 	pop	ar0
   04E3 D0 07              2070 	pop	ar7
   04E5 D0 06              2071 	pop	ar6
   04E7 D0 05              2072 	pop	ar5
   04E9 D0 04              2073 	pop	ar4
   04EB D0 03              2074 	pop	ar3
   04ED D0 02              2075 	pop	ar2
   04EF D0 E0              2076 	pop	acc
                    0423   2077 	C$potentiostat_HWtestingMain.c$872$1$1 ==.
                    0423   2078 	XG$Timer1_ISR$0$0 ==.
   04F1 32                 2079 	reti
                           2080 ;	eliminated unneeded push/pop dpl
                           2081 ;	eliminated unneeded push/pop dph
                           2082 ;	eliminated unneeded push/pop b
                           2083 ;------------------------------------------------------------
                           2084 ;Allocation info for local variables in function 'Timer2_ISR'
                           2085 ;------------------------------------------------------------
                           2086 ;------------------------------------------------------------
                    0424   2087 	G$Timer2_ISR$0$0 ==.
                    0424   2088 	C$potentiostat_HWtestingMain.c$873$1$1 ==.
                           2089 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:873: INTERRUPT(Timer2_ISR, INTERRUPT_TIMER2)
                           2090 ;	-----------------------------------------
                           2091 ;	 function Timer2_ISR
                           2092 ;	-----------------------------------------
   04F2                    2093 _Timer2_ISR:
                    0424   2094 	C$potentiostat_HWtestingMain.c$875$1$1 ==.
                           2095 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:875: TF2H = 0;                           // Clear Timer2 interrupt flag
   04F2 C2 CF              2096 	clr	_TF2H
                    0426   2097 	C$potentiostat_HWtestingMain.c$877$1$1 ==.
                           2098 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:877: Motor1Step = !Motor1Step;			// Toggle pin so motor 1 steps ever other
   04F4 B2 87              2099 	cpl	_Motor1Step
                    0428   2100 	C$potentiostat_HWtestingMain.c$879$1$1 ==.
                           2101 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Duckwitz\potentiostat_HWtestingMain.c:879: Motor2Step = !Motor2Step;			// Toggle pin so motor 1 steps ever other
   04F6 B2 84              2102 	cpl	_Motor2Step
                    042A   2103 	C$potentiostat_HWtestingMain.c$887$1$1 ==.
                    042A   2104 	XG$Timer2_ISR$0$0 ==.
   04F8 32                 2105 	reti
                           2106 ;	eliminated unneeded push/pop psw
                           2107 ;	eliminated unneeded push/pop dpl
                           2108 ;	eliminated unneeded push/pop dph
                           2109 ;	eliminated unneeded push/pop b
                           2110 ;	eliminated unneeded push/pop acc
                           2111 	.area CSEG    (CODE)
                           2112 	.area CONST   (CODE)
                           2113 	.area XINIT   (CODE)
                           2114 	.area CABS    (ABS,CODE)
