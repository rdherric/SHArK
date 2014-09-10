                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Oct 28 02:55:47 2010
                              5 ;--------------------------------------------------------
                              6 	.module Main
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _SPIEN
                             14 	.globl _TXBMT
                             15 	.globl _NSSMD0
                             16 	.globl _NSSMD1
                             17 	.globl _RXOVRN
                             18 	.globl _MODF
                             19 	.globl _WCOL
                             20 	.globl _SPIF
                             21 	.globl _AD0CM0
                             22 	.globl _AD0CM1
                             23 	.globl _AD0CM2
                             24 	.globl _AD0WINT
                             25 	.globl _AD0BUSY
                             26 	.globl _AD0INT
                             27 	.globl _AD0TM
                             28 	.globl _AD0EN
                             29 	.globl _CCF0
                             30 	.globl _CCF1
                             31 	.globl _CCF2
                             32 	.globl _CCF3
                             33 	.globl _CCF4
                             34 	.globl _CR
                             35 	.globl _CF
                             36 	.globl _P
                             37 	.globl _F1
                             38 	.globl _OV
                             39 	.globl _RS0
                             40 	.globl _RS1
                             41 	.globl _F0
                             42 	.globl _AC
                             43 	.globl _CY
                             44 	.globl _T2XCLK
                             45 	.globl _TR2
                             46 	.globl _T2SPLIT
                             47 	.globl _T2SOF
                             48 	.globl _TF2LEN
                             49 	.globl _TF2L
                             50 	.globl _TF2H
                             51 	.globl _SI
                             52 	.globl _ACK
                             53 	.globl _ARBLOST
                             54 	.globl _ACKRQ
                             55 	.globl _STO
                             56 	.globl _STA
                             57 	.globl _TXMODE
                             58 	.globl _MASTER
                             59 	.globl _PX0
                             60 	.globl _PT0
                             61 	.globl _PX1
                             62 	.globl _PT1
                             63 	.globl _PS0
                             64 	.globl _PT2
                             65 	.globl _PSPI0
                             66 	.globl _EX0
                             67 	.globl _ET0
                             68 	.globl _EX1
                             69 	.globl _ET1
                             70 	.globl _ES0
                             71 	.globl _ET2
                             72 	.globl _ESPI0
                             73 	.globl _EA
                             74 	.globl _RI0
                             75 	.globl _TI0
                             76 	.globl _RB80
                             77 	.globl _TB80
                             78 	.globl _REN0
                             79 	.globl _MCE0
                             80 	.globl _S0MODE
                             81 	.globl _IT0
                             82 	.globl _IE0
                             83 	.globl _IT1
                             84 	.globl _IE1
                             85 	.globl _TR0
                             86 	.globl _TF0
                             87 	.globl _TR1
                             88 	.globl _TF1
                             89 	.globl _VDM0CN
                             90 	.globl _PCA0CPH4
                             91 	.globl _PCA0CPL4
                             92 	.globl _PCA0CPH0
                             93 	.globl _PCA0CPL0
                             94 	.globl _PCA0H
                             95 	.globl _PCA0L
                             96 	.globl _SPI0CN
                             97 	.globl _EIP2
                             98 	.globl _EIP1
                             99 	.globl _P3MDIN
                            100 	.globl _P2MDIN
                            101 	.globl _P1MDIN
                            102 	.globl _P0MDIN
                            103 	.globl _B
                            104 	.globl _RSTSRC
                            105 	.globl _PCA0CPH3
                            106 	.globl _PCA0CPL3
                            107 	.globl _PCA0CPH2
                            108 	.globl _PCA0CPL2
                            109 	.globl _PCA0CPH1
                            110 	.globl _PCA0CPL1
                            111 	.globl _ADC0CN
                            112 	.globl _EIE2
                            113 	.globl _EIE1
                            114 	.globl _IT01CF
                            115 	.globl _XBR1
                            116 	.globl _XBR0
                            117 	.globl _ACC
                            118 	.globl _PCA0CPM4
                            119 	.globl _PCA0CPM3
                            120 	.globl _PCA0CPM2
                            121 	.globl _PCA0CPM1
                            122 	.globl _PCA0CPM0
                            123 	.globl _PCA0MD
                            124 	.globl _PCA0CN
                            125 	.globl _USB0XCN
                            126 	.globl _P2SKIP
                            127 	.globl _P1SKIP
                            128 	.globl _P0SKIP
                            129 	.globl _REF0CN
                            130 	.globl _PSW
                            131 	.globl _TMR2H
                            132 	.globl _TMR2L
                            133 	.globl _TMR2RLH
                            134 	.globl _TMR2RLL
                            135 	.globl _REG0CN
                            136 	.globl _TMR2CN
                            137 	.globl _ADC0LTH
                            138 	.globl _ADC0LTL
                            139 	.globl _ADC0GTH
                            140 	.globl _ADC0GTL
                            141 	.globl _SMB0DAT
                            142 	.globl _SMB0CF
                            143 	.globl _SMB0CN
                            144 	.globl _ADC0H
                            145 	.globl _ADC0L
                            146 	.globl _ADC0CF
                            147 	.globl _AMX0P
                            148 	.globl _AMX0N
                            149 	.globl _CLKMUL
                            150 	.globl _IP
                            151 	.globl _FLKEY
                            152 	.globl _FLSCL
                            153 	.globl _OSCICL
                            154 	.globl _OSCICN
                            155 	.globl _OSCXCN
                            156 	.globl _P3
                            157 	.globl _EMI0CN
                            158 	.globl _CLKSEL
                            159 	.globl _IE
                            160 	.globl _P3MDOUT
                            161 	.globl _P2MDOUT
                            162 	.globl _P1MDOUT
                            163 	.globl _P0MDOUT
                            164 	.globl _SPI0DAT
                            165 	.globl _SPIDAT
                            166 	.globl _SPI0CKR
                            167 	.globl _SPICKR
                            168 	.globl _SPI0CFG
                            169 	.globl _SPICFG
                            170 	.globl _P2
                            171 	.globl _CPT0MX
                            172 	.globl _CPT1MX
                            173 	.globl _CPT0MD
                            174 	.globl _CPT1MD
                            175 	.globl _CPT0CN
                            176 	.globl _CPT1CN
                            177 	.globl _SBUF0
                            178 	.globl _SCON0
                            179 	.globl _USB0DAT
                            180 	.globl _USB0ADR
                            181 	.globl _TMR3H
                            182 	.globl _TMR3L
                            183 	.globl _TMR3RLH
                            184 	.globl _TMR3RLL
                            185 	.globl _TMR3CN
                            186 	.globl _P1
                            187 	.globl _PSCTL
                            188 	.globl _CKCON
                            189 	.globl _TH1
                            190 	.globl _TH0
                            191 	.globl _TL1
                            192 	.globl _TL0
                            193 	.globl _TMOD
                            194 	.globl _TCON
                            195 	.globl _PCON
                            196 	.globl _DPH
                            197 	.globl _DPL
                            198 	.globl _SP
                            199 	.globl _P0
                            200 	.globl _In_Packet
                            201 	.globl _Out_Packet
                            202 	.globl _latest_ADC_LowByte
                            203 	.globl _latest_ADC_HighByte
                            204 	.globl _SPI_ADC_Bytes
                            205 	.globl _SPI_DAC_Bytes
                            206 	.globl _Writing_to_ADC
                            207 	.globl _Writing_to_DAC
                            208 	.globl _Sysclk_Init
                            209 	.globl _Port_Init
                            210 	.globl _SPI_Init
                            211 	.globl _DAC_Init
                            212 	.globl _ADC_Init
                            213 	.globl _Usb0_Init
                            214 ;--------------------------------------------------------
                            215 ; special function registers
                            216 ;--------------------------------------------------------
                            217 	.area RSEG    (DATA)
                    0000    218 G$P0$0$0==.
   00BD                     219 _P0::
   00BD                     220 	.ds 1
                    0001    221 G$SP$0$0==.
   00BE                     222 _SP::
   00BE                     223 	.ds 1
                    0002    224 G$DPL$0$0==.
   00BF                     225 _DPL::
   00BF                     226 	.ds 1
                    0003    227 G$DPH$0$0==.
   00C0                     228 _DPH::
   00C0                     229 	.ds 1
                    0004    230 G$PCON$0$0==.
   00C1                     231 _PCON::
   00C1                     232 	.ds 1
                    0005    233 G$TCON$0$0==.
   00C2                     234 _TCON::
   00C2                     235 	.ds 1
                    0006    236 G$TMOD$0$0==.
   00C3                     237 _TMOD::
   00C3                     238 	.ds 1
                    0007    239 G$TL0$0$0==.
   00C4                     240 _TL0::
   00C4                     241 	.ds 1
                    0008    242 G$TL1$0$0==.
   00C5                     243 _TL1::
   00C5                     244 	.ds 1
                    0009    245 G$TH0$0$0==.
   00C6                     246 _TH0::
   00C6                     247 	.ds 1
                    000A    248 G$TH1$0$0==.
   00C7                     249 _TH1::
   00C7                     250 	.ds 1
                    000B    251 G$CKCON$0$0==.
   00C8                     252 _CKCON::
   00C8                     253 	.ds 1
                    000C    254 G$PSCTL$0$0==.
   00C9                     255 _PSCTL::
   00C9                     256 	.ds 1
                    000D    257 G$P1$0$0==.
   00CA                     258 _P1::
   00CA                     259 	.ds 1
                    000E    260 G$TMR3CN$0$0==.
   00CB                     261 _TMR3CN::
   00CB                     262 	.ds 1
                    000F    263 G$TMR3RLL$0$0==.
   00CC                     264 _TMR3RLL::
   00CC                     265 	.ds 1
                    0010    266 G$TMR3RLH$0$0==.
   00CD                     267 _TMR3RLH::
   00CD                     268 	.ds 1
                    0011    269 G$TMR3L$0$0==.
   00CE                     270 _TMR3L::
   00CE                     271 	.ds 1
                    0012    272 G$TMR3H$0$0==.
   00CF                     273 _TMR3H::
   00CF                     274 	.ds 1
                    0013    275 G$USB0ADR$0$0==.
   00D0                     276 _USB0ADR::
   00D0                     277 	.ds 1
                    0014    278 G$USB0DAT$0$0==.
   00D1                     279 _USB0DAT::
   00D1                     280 	.ds 1
                    0015    281 G$SCON0$0$0==.
   00D2                     282 _SCON0::
   00D2                     283 	.ds 1
                    0016    284 G$SBUF0$0$0==.
   00D3                     285 _SBUF0::
   00D3                     286 	.ds 1
                    0017    287 G$CPT1CN$0$0==.
   00D4                     288 _CPT1CN::
   00D4                     289 	.ds 1
                    0018    290 G$CPT0CN$0$0==.
   00D5                     291 _CPT0CN::
   00D5                     292 	.ds 1
                    0019    293 G$CPT1MD$0$0==.
   00D6                     294 _CPT1MD::
   00D6                     295 	.ds 1
                    001A    296 G$CPT0MD$0$0==.
   00D7                     297 _CPT0MD::
   00D7                     298 	.ds 1
                    001B    299 G$CPT1MX$0$0==.
   00D8                     300 _CPT1MX::
   00D8                     301 	.ds 1
                    001C    302 G$CPT0MX$0$0==.
   00D9                     303 _CPT0MX::
   00D9                     304 	.ds 1
                    001D    305 G$P2$0$0==.
   00DA                     306 _P2::
   00DA                     307 	.ds 1
                    001E    308 G$SPICFG$0$0==.
   00DB                     309 _SPICFG::
   00DB                     310 	.ds 1
                    001F    311 G$SPI0CFG$0$0==.
   00DC                     312 _SPI0CFG::
   00DC                     313 	.ds 1
                    0020    314 G$SPICKR$0$0==.
   00DD                     315 _SPICKR::
   00DD                     316 	.ds 1
                    0021    317 G$SPI0CKR$0$0==.
   00DE                     318 _SPI0CKR::
   00DE                     319 	.ds 1
                    0022    320 G$SPIDAT$0$0==.
   00DF                     321 _SPIDAT::
   00DF                     322 	.ds 1
                    0023    323 G$SPI0DAT$0$0==.
   00E0                     324 _SPI0DAT::
   00E0                     325 	.ds 1
                    0024    326 G$P0MDOUT$0$0==.
   00E1                     327 _P0MDOUT::
   00E1                     328 	.ds 1
                    0025    329 G$P1MDOUT$0$0==.
   00E2                     330 _P1MDOUT::
   00E2                     331 	.ds 1
                    0026    332 G$P2MDOUT$0$0==.
   00E3                     333 _P2MDOUT::
   00E3                     334 	.ds 1
                    0027    335 G$P3MDOUT$0$0==.
   00E4                     336 _P3MDOUT::
   00E4                     337 	.ds 1
                    0028    338 G$IE$0$0==.
   00E5                     339 _IE::
   00E5                     340 	.ds 1
                    0029    341 G$CLKSEL$0$0==.
   00E6                     342 _CLKSEL::
   00E6                     343 	.ds 1
                    002A    344 G$EMI0CN$0$0==.
   00E7                     345 _EMI0CN::
   00E7                     346 	.ds 1
                    002B    347 G$P3$0$0==.
   00E8                     348 _P3::
   00E8                     349 	.ds 1
                    002C    350 G$OSCXCN$0$0==.
   00E9                     351 _OSCXCN::
   00E9                     352 	.ds 1
                    002D    353 G$OSCICN$0$0==.
   00EA                     354 _OSCICN::
   00EA                     355 	.ds 1
                    002E    356 G$OSCICL$0$0==.
   00EB                     357 _OSCICL::
   00EB                     358 	.ds 1
                    002F    359 G$FLSCL$0$0==.
   00EC                     360 _FLSCL::
   00EC                     361 	.ds 1
                    0030    362 G$FLKEY$0$0==.
   00ED                     363 _FLKEY::
   00ED                     364 	.ds 1
                    0031    365 G$IP$0$0==.
   00EE                     366 _IP::
   00EE                     367 	.ds 1
                    0032    368 G$CLKMUL$0$0==.
   00EF                     369 _CLKMUL::
   00EF                     370 	.ds 1
                    0033    371 G$AMX0N$0$0==.
   00F0                     372 _AMX0N::
   00F0                     373 	.ds 1
                    0034    374 G$AMX0P$0$0==.
   00F1                     375 _AMX0P::
   00F1                     376 	.ds 1
                    0035    377 G$ADC0CF$0$0==.
   00F2                     378 _ADC0CF::
   00F2                     379 	.ds 1
                    0036    380 G$ADC0L$0$0==.
   00F3                     381 _ADC0L::
   00F3                     382 	.ds 1
                    0037    383 G$ADC0H$0$0==.
   00F4                     384 _ADC0H::
   00F4                     385 	.ds 1
                    0038    386 G$SMB0CN$0$0==.
   00F5                     387 _SMB0CN::
   00F5                     388 	.ds 1
                    0039    389 G$SMB0CF$0$0==.
   00F6                     390 _SMB0CF::
   00F6                     391 	.ds 1
                    003A    392 G$SMB0DAT$0$0==.
   00F7                     393 _SMB0DAT::
   00F7                     394 	.ds 1
                    003B    395 G$ADC0GTL$0$0==.
   00F8                     396 _ADC0GTL::
   00F8                     397 	.ds 1
                    003C    398 G$ADC0GTH$0$0==.
   00F9                     399 _ADC0GTH::
   00F9                     400 	.ds 1
                    003D    401 G$ADC0LTL$0$0==.
   00FA                     402 _ADC0LTL::
   00FA                     403 	.ds 1
                    003E    404 G$ADC0LTH$0$0==.
   00FB                     405 _ADC0LTH::
   00FB                     406 	.ds 1
                    003F    407 G$TMR2CN$0$0==.
   00FC                     408 _TMR2CN::
   00FC                     409 	.ds 1
                    0040    410 G$REG0CN$0$0==.
   00FD                     411 _REG0CN::
   00FD                     412 	.ds 1
                    0041    413 G$TMR2RLL$0$0==.
   00FE                     414 _TMR2RLL::
   00FE                     415 	.ds 1
                    0042    416 G$TMR2RLH$0$0==.
   00FF                     417 _TMR2RLH::
   00FF                     418 	.ds 1
                    0043    419 G$TMR2L$0$0==.
   0100                     420 _TMR2L::
   0100                     421 	.ds 1
                    0044    422 G$TMR2H$0$0==.
   0101                     423 _TMR2H::
   0101                     424 	.ds 1
                    0045    425 G$PSW$0$0==.
   0102                     426 _PSW::
   0102                     427 	.ds 1
                    0046    428 G$REF0CN$0$0==.
   0103                     429 _REF0CN::
   0103                     430 	.ds 1
                    0047    431 G$P0SKIP$0$0==.
   0104                     432 _P0SKIP::
   0104                     433 	.ds 1
                    0048    434 G$P1SKIP$0$0==.
   0105                     435 _P1SKIP::
   0105                     436 	.ds 1
                    0049    437 G$P2SKIP$0$0==.
   0106                     438 _P2SKIP::
   0106                     439 	.ds 1
                    004A    440 G$USB0XCN$0$0==.
   0107                     441 _USB0XCN::
   0107                     442 	.ds 1
                    004B    443 G$PCA0CN$0$0==.
   0108                     444 _PCA0CN::
   0108                     445 	.ds 1
                    004C    446 G$PCA0MD$0$0==.
   0109                     447 _PCA0MD::
   0109                     448 	.ds 1
                    004D    449 G$PCA0CPM0$0$0==.
   010A                     450 _PCA0CPM0::
   010A                     451 	.ds 1
                    004E    452 G$PCA0CPM1$0$0==.
   010B                     453 _PCA0CPM1::
   010B                     454 	.ds 1
                    004F    455 G$PCA0CPM2$0$0==.
   010C                     456 _PCA0CPM2::
   010C                     457 	.ds 1
                    0050    458 G$PCA0CPM3$0$0==.
   010D                     459 _PCA0CPM3::
   010D                     460 	.ds 1
                    0051    461 G$PCA0CPM4$0$0==.
   010E                     462 _PCA0CPM4::
   010E                     463 	.ds 1
                    0052    464 G$ACC$0$0==.
   010F                     465 _ACC::
   010F                     466 	.ds 1
                    0053    467 G$XBR0$0$0==.
   0110                     468 _XBR0::
   0110                     469 	.ds 1
                    0054    470 G$XBR1$0$0==.
   0111                     471 _XBR1::
   0111                     472 	.ds 1
                    0055    473 G$IT01CF$0$0==.
   0112                     474 _IT01CF::
   0112                     475 	.ds 1
                    0056    476 G$EIE1$0$0==.
   0113                     477 _EIE1::
   0113                     478 	.ds 1
                    0057    479 G$EIE2$0$0==.
   0114                     480 _EIE2::
   0114                     481 	.ds 1
                    0058    482 G$ADC0CN$0$0==.
   0115                     483 _ADC0CN::
   0115                     484 	.ds 1
                    0059    485 G$PCA0CPL1$0$0==.
   0116                     486 _PCA0CPL1::
   0116                     487 	.ds 1
                    005A    488 G$PCA0CPH1$0$0==.
   0117                     489 _PCA0CPH1::
   0117                     490 	.ds 1
                    005B    491 G$PCA0CPL2$0$0==.
   0118                     492 _PCA0CPL2::
   0118                     493 	.ds 1
                    005C    494 G$PCA0CPH2$0$0==.
   0119                     495 _PCA0CPH2::
   0119                     496 	.ds 1
                    005D    497 G$PCA0CPL3$0$0==.
   011A                     498 _PCA0CPL3::
   011A                     499 	.ds 1
                    005E    500 G$PCA0CPH3$0$0==.
   011B                     501 _PCA0CPH3::
   011B                     502 	.ds 1
                    005F    503 G$RSTSRC$0$0==.
   011C                     504 _RSTSRC::
   011C                     505 	.ds 1
                    0060    506 G$B$0$0==.
   011D                     507 _B::
   011D                     508 	.ds 1
                    0061    509 G$P0MDIN$0$0==.
   011E                     510 _P0MDIN::
   011E                     511 	.ds 1
                    0062    512 G$P1MDIN$0$0==.
   011F                     513 _P1MDIN::
   011F                     514 	.ds 1
                    0063    515 G$P2MDIN$0$0==.
   0120                     516 _P2MDIN::
   0120                     517 	.ds 1
                    0064    518 G$P3MDIN$0$0==.
   0121                     519 _P3MDIN::
   0121                     520 	.ds 1
                    0065    521 G$EIP1$0$0==.
   0122                     522 _EIP1::
   0122                     523 	.ds 1
                    0066    524 G$EIP2$0$0==.
   0123                     525 _EIP2::
   0123                     526 	.ds 1
                    0067    527 G$SPI0CN$0$0==.
   0124                     528 _SPI0CN::
   0124                     529 	.ds 1
                    0068    530 G$PCA0L$0$0==.
   0125                     531 _PCA0L::
   0125                     532 	.ds 1
                    0069    533 G$PCA0H$0$0==.
   0126                     534 _PCA0H::
   0126                     535 	.ds 1
                    006A    536 G$PCA0CPL0$0$0==.
   0127                     537 _PCA0CPL0::
   0127                     538 	.ds 1
                    006B    539 G$PCA0CPH0$0$0==.
   0128                     540 _PCA0CPH0::
   0128                     541 	.ds 1
                    006C    542 G$PCA0CPL4$0$0==.
   0129                     543 _PCA0CPL4::
   0129                     544 	.ds 1
                    006D    545 G$PCA0CPH4$0$0==.
   012A                     546 _PCA0CPH4::
   012A                     547 	.ds 1
                    006E    548 G$VDM0CN$0$0==.
   012B                     549 _VDM0CN::
   012B                     550 	.ds 1
                            551 ;--------------------------------------------------------
                            552 ; special function bits
                            553 ;--------------------------------------------------------
                            554 	.area RSEG    (DATA)
                    006F    555 G$TF1$0$0==.
   012C                     556 _TF1::
   012C                     557 	.ds 1
                    0070    558 G$TR1$0$0==.
   012D                     559 _TR1::
   012D                     560 	.ds 1
                    0071    561 G$TF0$0$0==.
   012E                     562 _TF0::
   012E                     563 	.ds 1
                    0072    564 G$TR0$0$0==.
   012F                     565 _TR0::
   012F                     566 	.ds 1
                    0073    567 G$IE1$0$0==.
   0130                     568 _IE1::
   0130                     569 	.ds 1
                    0074    570 G$IT1$0$0==.
   0131                     571 _IT1::
   0131                     572 	.ds 1
                    0075    573 G$IE0$0$0==.
   0132                     574 _IE0::
   0132                     575 	.ds 1
                    0076    576 G$IT0$0$0==.
   0133                     577 _IT0::
   0133                     578 	.ds 1
                    0077    579 G$S0MODE$0$0==.
   0134                     580 _S0MODE::
   0134                     581 	.ds 1
                    0078    582 G$MCE0$0$0==.
   0135                     583 _MCE0::
   0135                     584 	.ds 1
                    0079    585 G$REN0$0$0==.
   0136                     586 _REN0::
   0136                     587 	.ds 1
                    007A    588 G$TB80$0$0==.
   0137                     589 _TB80::
   0137                     590 	.ds 1
                    007B    591 G$RB80$0$0==.
   0138                     592 _RB80::
   0138                     593 	.ds 1
                    007C    594 G$TI0$0$0==.
   0139                     595 _TI0::
   0139                     596 	.ds 1
                    007D    597 G$RI0$0$0==.
   013A                     598 _RI0::
   013A                     599 	.ds 1
                    007E    600 G$EA$0$0==.
   013B                     601 _EA::
   013B                     602 	.ds 1
                    007F    603 G$ESPI0$0$0==.
   013C                     604 _ESPI0::
   013C                     605 	.ds 1
                    0080    606 G$ET2$0$0==.
   013D                     607 _ET2::
   013D                     608 	.ds 1
                    0081    609 G$ES0$0$0==.
   013E                     610 _ES0::
   013E                     611 	.ds 1
                    0082    612 G$ET1$0$0==.
   013F                     613 _ET1::
   013F                     614 	.ds 1
                    0083    615 G$EX1$0$0==.
   0140                     616 _EX1::
   0140                     617 	.ds 1
                    0084    618 G$ET0$0$0==.
   0141                     619 _ET0::
   0141                     620 	.ds 1
                    0085    621 G$EX0$0$0==.
   0142                     622 _EX0::
   0142                     623 	.ds 1
                    0086    624 G$PSPI0$0$0==.
   0143                     625 _PSPI0::
   0143                     626 	.ds 1
                    0087    627 G$PT2$0$0==.
   0144                     628 _PT2::
   0144                     629 	.ds 1
                    0088    630 G$PS0$0$0==.
   0145                     631 _PS0::
   0145                     632 	.ds 1
                    0089    633 G$PT1$0$0==.
   0146                     634 _PT1::
   0146                     635 	.ds 1
                    008A    636 G$PX1$0$0==.
   0147                     637 _PX1::
   0147                     638 	.ds 1
                    008B    639 G$PT0$0$0==.
   0148                     640 _PT0::
   0148                     641 	.ds 1
                    008C    642 G$PX0$0$0==.
   0149                     643 _PX0::
   0149                     644 	.ds 1
                    008D    645 G$MASTER$0$0==.
   014A                     646 _MASTER::
   014A                     647 	.ds 1
                    008E    648 G$TXMODE$0$0==.
   014B                     649 _TXMODE::
   014B                     650 	.ds 1
                    008F    651 G$STA$0$0==.
   014C                     652 _STA::
   014C                     653 	.ds 1
                    0090    654 G$STO$0$0==.
   014D                     655 _STO::
   014D                     656 	.ds 1
                    0091    657 G$ACKRQ$0$0==.
   014E                     658 _ACKRQ::
   014E                     659 	.ds 1
                    0092    660 G$ARBLOST$0$0==.
   014F                     661 _ARBLOST::
   014F                     662 	.ds 1
                    0093    663 G$ACK$0$0==.
   0150                     664 _ACK::
   0150                     665 	.ds 1
                    0094    666 G$SI$0$0==.
   0151                     667 _SI::
   0151                     668 	.ds 1
                    0095    669 G$TF2H$0$0==.
   0152                     670 _TF2H::
   0152                     671 	.ds 1
                    0096    672 G$TF2L$0$0==.
   0153                     673 _TF2L::
   0153                     674 	.ds 1
                    0097    675 G$TF2LEN$0$0==.
   0154                     676 _TF2LEN::
   0154                     677 	.ds 1
                    0098    678 G$T2SOF$0$0==.
   0155                     679 _T2SOF::
   0155                     680 	.ds 1
                    0099    681 G$T2SPLIT$0$0==.
   0156                     682 _T2SPLIT::
   0156                     683 	.ds 1
                    009A    684 G$TR2$0$0==.
   0157                     685 _TR2::
   0157                     686 	.ds 1
                    009B    687 G$T2XCLK$0$0==.
   0158                     688 _T2XCLK::
   0158                     689 	.ds 1
                    009C    690 G$CY$0$0==.
   0159                     691 _CY::
   0159                     692 	.ds 1
                    009D    693 G$AC$0$0==.
   015A                     694 _AC::
   015A                     695 	.ds 1
                    009E    696 G$F0$0$0==.
   015B                     697 _F0::
   015B                     698 	.ds 1
                    009F    699 G$RS1$0$0==.
   015C                     700 _RS1::
   015C                     701 	.ds 1
                    00A0    702 G$RS0$0$0==.
   015D                     703 _RS0::
   015D                     704 	.ds 1
                    00A1    705 G$OV$0$0==.
   015E                     706 _OV::
   015E                     707 	.ds 1
                    00A2    708 G$F1$0$0==.
   015F                     709 _F1::
   015F                     710 	.ds 1
                    00A3    711 G$P$0$0==.
   0160                     712 _P::
   0160                     713 	.ds 1
                    00A4    714 G$CF$0$0==.
   0161                     715 _CF::
   0161                     716 	.ds 1
                    00A5    717 G$CR$0$0==.
   0162                     718 _CR::
   0162                     719 	.ds 1
                    00A6    720 G$CCF4$0$0==.
   0163                     721 _CCF4::
   0163                     722 	.ds 1
                    00A7    723 G$CCF3$0$0==.
   0164                     724 _CCF3::
   0164                     725 	.ds 1
                    00A8    726 G$CCF2$0$0==.
   0165                     727 _CCF2::
   0165                     728 	.ds 1
                    00A9    729 G$CCF1$0$0==.
   0166                     730 _CCF1::
   0166                     731 	.ds 1
                    00AA    732 G$CCF0$0$0==.
   0167                     733 _CCF0::
   0167                     734 	.ds 1
                    00AB    735 G$AD0EN$0$0==.
   0168                     736 _AD0EN::
   0168                     737 	.ds 1
                    00AC    738 G$AD0TM$0$0==.
   0169                     739 _AD0TM::
   0169                     740 	.ds 1
                    00AD    741 G$AD0INT$0$0==.
   016A                     742 _AD0INT::
   016A                     743 	.ds 1
                    00AE    744 G$AD0BUSY$0$0==.
   016B                     745 _AD0BUSY::
   016B                     746 	.ds 1
                    00AF    747 G$AD0WINT$0$0==.
   016C                     748 _AD0WINT::
   016C                     749 	.ds 1
                    00B0    750 G$AD0CM2$0$0==.
   016D                     751 _AD0CM2::
   016D                     752 	.ds 1
                    00B1    753 G$AD0CM1$0$0==.
   016E                     754 _AD0CM1::
   016E                     755 	.ds 1
                    00B2    756 G$AD0CM0$0$0==.
   016F                     757 _AD0CM0::
   016F                     758 	.ds 1
                    00B3    759 G$SPIF$0$0==.
   0170                     760 _SPIF::
   0170                     761 	.ds 1
                    00B4    762 G$WCOL$0$0==.
   0171                     763 _WCOL::
   0171                     764 	.ds 1
                    00B5    765 G$MODF$0$0==.
   0172                     766 _MODF::
   0172                     767 	.ds 1
                    00B6    768 G$RXOVRN$0$0==.
   0173                     769 _RXOVRN::
   0173                     770 	.ds 1
                    00B7    771 G$NSSMD1$0$0==.
   0174                     772 _NSSMD1::
   0174                     773 	.ds 1
                    00B8    774 G$NSSMD0$0$0==.
   0175                     775 _NSSMD0::
   0175                     776 	.ds 1
                    00B9    777 G$TXBMT$0$0==.
   0176                     778 _TXBMT::
   0176                     779 	.ds 1
                    00BA    780 G$SPIEN$0$0==.
   0177                     781 _SPIEN::
   0177                     782 	.ds 1
                            783 ;--------------------------------------------------------
                            784 ; overlayable register banks
                            785 ;--------------------------------------------------------
                            786 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     787 	.ds 8
                            788 ;--------------------------------------------------------
                            789 ; internal ram data
                            790 ;--------------------------------------------------------
                            791 	.area DSEG    (DATA)
                    0000    792 G$Writing_to_DAC$0$0==.
   0008                     793 _Writing_to_DAC::
   0008                     794 	.ds 2
                    0002    795 G$Writing_to_ADC$0$0==.
   000A                     796 _Writing_to_ADC::
   000A                     797 	.ds 2
                    0004    798 G$SPI_DAC_Bytes$0$0==.
   000C                     799 _SPI_DAC_Bytes::
   000C                     800 	.ds 2
                    0006    801 G$SPI_ADC_Bytes$0$0==.
   000E                     802 _SPI_ADC_Bytes::
   000E                     803 	.ds 2
                    0008    804 G$latest_ADC_HighByte$0$0==.
   0010                     805 _latest_ADC_HighByte::
   0010                     806 	.ds 2
                    000A    807 G$latest_ADC_LowByte$0$0==.
   0012                     808 _latest_ADC_LowByte::
   0012                     809 	.ds 2
                            810 ;--------------------------------------------------------
                            811 ; overlayable items in internal ram 
                            812 ;--------------------------------------------------------
                            813 	.area	OSEG    (OVR,DATA)
                            814 	.area	OSEG    (OVR,DATA)
                            815 ;--------------------------------------------------------
                            816 ; Stack segment in internal ram 
                            817 ;--------------------------------------------------------
                            818 	.area	SSEG	(DATA)
   00BD                     819 __start__stack:
   00BD                     820 	.ds	1
                            821 
                            822 ;--------------------------------------------------------
                            823 ; indirectly addressable internal ram data
                            824 ;--------------------------------------------------------
                            825 	.area ISEG    (DATA)
                    0000    826 G$Out_Packet$0$0==.
   003D                     827 _Out_Packet::
   003D                     828 	.ds 64
                    0040    829 G$In_Packet$0$0==.
   007D                     830 _In_Packet::
   007D                     831 	.ds 64
                            832 ;--------------------------------------------------------
                            833 ; absolute internal ram data
                            834 ;--------------------------------------------------------
                            835 	.area IABS    (ABS,DATA)
                            836 	.area IABS    (ABS,DATA)
                            837 ;--------------------------------------------------------
                            838 ; bit data
                            839 ;--------------------------------------------------------
                            840 	.area BSEG    (BIT)
                            841 ;--------------------------------------------------------
                            842 ; paged external ram data
                            843 ;--------------------------------------------------------
                            844 	.area PSEG    (PAG,XDATA)
                            845 ;--------------------------------------------------------
                            846 ; external ram data
                            847 ;--------------------------------------------------------
                            848 	.area XSEG    (XDATA)
                            849 ;--------------------------------------------------------
                            850 ; absolute external ram data
                            851 ;--------------------------------------------------------
                            852 	.area XABS    (ABS,XDATA)
                            853 ;--------------------------------------------------------
                            854 ; external initialized ram data
                            855 ;--------------------------------------------------------
                            856 	.area XISEG   (XDATA)
                            857 	.area HOME    (CODE)
                            858 	.area GSINIT0 (CODE)
                            859 	.area GSINIT1 (CODE)
                            860 	.area GSINIT2 (CODE)
                            861 	.area GSINIT3 (CODE)
                            862 	.area GSINIT4 (CODE)
                            863 	.area GSINIT5 (CODE)
                            864 	.area GSINIT  (CODE)
                            865 	.area GSFINAL (CODE)
                            866 	.area CSEG    (CODE)
                            867 ;--------------------------------------------------------
                            868 ; interrupt vector 
                            869 ;--------------------------------------------------------
                            870 	.area HOME    (CODE)
   0000                     871 __interrupt_vect:
   0000 02 00 08            872 	ljmp	__sdcc_gsinit_startup
                            873 ;--------------------------------------------------------
                            874 ; global & static initialisations
                            875 ;--------------------------------------------------------
                            876 	.area HOME    (CODE)
                            877 	.area GSINIT  (CODE)
                            878 	.area GSFINAL (CODE)
                            879 	.area GSINIT  (CODE)
                            880 	.globl __sdcc_gsinit_startup
                            881 	.globl __sdcc_program_startup
                            882 	.globl __start__stack
                            883 	.globl __mcs51_genXINIT
                            884 	.globl __mcs51_genXRAMCLEAR
                            885 	.globl __mcs51_genRAMCLEAR
                    0000    886 	G$Usb0_Init$0$0 ==.
                    0000    887 	C$Main.c$30$2$8 ==.
                            888 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:30: int Writing_to_DAC = 0;				   // Boolean: still need to write >=1 byte via SPI
   0061 E4                  889 	clr	a
   0062 F5 08               890 	mov	_Writing_to_DAC,a
   0064 F5 09               891 	mov	(_Writing_to_DAC + 1),a
                    0005    892 	G$Usb0_Init$0$0 ==.
                    0005    893 	C$Main.c$31$2$8 ==.
                            894 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:31: int Writing_to_ADC = 0;				   // Boolean: still need to write >=1 byte via SPI
   0066 E4                  895 	clr	a
   0067 F5 0A               896 	mov	_Writing_to_ADC,a
   0069 F5 0B               897 	mov	(_Writing_to_ADC + 1),a
                    000A    898 	G$Usb0_Init$0$0 ==.
                    000A    899 	C$Main.c$32$2$8 ==.
                            900 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:32: int SPI_DAC_Bytes = 0;				   // No. of bytes to/from DAC: 0-3
   006B E4                  901 	clr	a
   006C F5 0C               902 	mov	_SPI_DAC_Bytes,a
   006E F5 0D               903 	mov	(_SPI_DAC_Bytes + 1),a
                    000F    904 	G$Usb0_Init$0$0 ==.
                    000F    905 	C$Main.c$33$2$8 ==.
                            906 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:33: int SPI_ADC_Bytes = 0;				   // No. of bytes to/from ADC: 0-2
   0070 E4                  907 	clr	a
   0071 F5 0E               908 	mov	_SPI_ADC_Bytes,a
   0073 F5 0F               909 	mov	(_SPI_ADC_Bytes + 1),a
                    0014    910 	G$Usb0_Init$0$0 ==.
                    0014    911 	C$c8051f320.h$44$2$8 ==.
                            912 ;	c:/SiLabs/MCU/Inc/c8051f320.h:44: sfr P0       = 0x80;                   // Port0
   0075 75 BD 80            913 	mov	_P0,#0x80
                    0017    914 	G$Usb0_Init$0$0 ==.
                    0017    915 	C$c8051f320.h$45$2$8 ==.
                            916 ;	c:/SiLabs/MCU/Inc/c8051f320.h:45: sfr SP       = 0x81;                   // Stack pointer
   0078 75 BE 81            917 	mov	_SP,#0x81
                    001A    918 	G$Usb0_Init$0$0 ==.
                    001A    919 	C$c8051f320.h$46$2$8 ==.
                            920 ;	c:/SiLabs/MCU/Inc/c8051f320.h:46: sfr DPL      = 0x82;                   // Data pointer - Low byte
   007B 75 BF 82            921 	mov	_DPL,#0x82
                    001D    922 	G$Usb0_Init$0$0 ==.
                    001D    923 	C$c8051f320.h$47$2$8 ==.
                            924 ;	c:/SiLabs/MCU/Inc/c8051f320.h:47: sfr DPH      = 0x83;                   // Data pointer - High byte
   007E 75 C0 83            925 	mov	_DPH,#0x83
                    0020    926 	G$Usb0_Init$0$0 ==.
                    0020    927 	C$c8051f320.h$48$2$8 ==.
                            928 ;	c:/SiLabs/MCU/Inc/c8051f320.h:48: sfr PCON     = 0x87;                   // Power control register
   0081 75 C1 87            929 	mov	_PCON,#0x87
                    0023    930 	G$Usb0_Init$0$0 ==.
                    0023    931 	C$c8051f320.h$49$2$8 ==.
                            932 ;	c:/SiLabs/MCU/Inc/c8051f320.h:49: sfr TCON     = 0x88;                   // Timer control register
   0084 75 C2 88            933 	mov	_TCON,#0x88
                    0026    934 	G$Usb0_Init$0$0 ==.
                    0026    935 	C$c8051f320.h$50$2$8 ==.
                            936 ;	c:/SiLabs/MCU/Inc/c8051f320.h:50: sfr TMOD     = 0x89;                   // Timer mode register
   0087 75 C3 89            937 	mov	_TMOD,#0x89
                    0029    938 	G$Usb0_Init$0$0 ==.
                    0029    939 	C$c8051f320.h$51$2$8 ==.
                            940 ;	c:/SiLabs/MCU/Inc/c8051f320.h:51: sfr TL0      = 0x8A;                   // Timer0 - Low byte
   008A 75 C4 8A            941 	mov	_TL0,#0x8A
                    002C    942 	G$Usb0_Init$0$0 ==.
                    002C    943 	C$c8051f320.h$52$2$8 ==.
                            944 ;	c:/SiLabs/MCU/Inc/c8051f320.h:52: sfr TL1      = 0x8B;                   // Timer1 - Low byte
   008D 75 C5 8B            945 	mov	_TL1,#0x8B
                    002F    946 	G$Usb0_Init$0$0 ==.
                    002F    947 	C$c8051f320.h$53$2$8 ==.
                            948 ;	c:/SiLabs/MCU/Inc/c8051f320.h:53: sfr TH0      = 0x8C;                   // Timer0 - High byte
   0090 75 C6 8C            949 	mov	_TH0,#0x8C
                    0032    950 	G$Usb0_Init$0$0 ==.
                    0032    951 	C$c8051f320.h$54$2$8 ==.
                            952 ;	c:/SiLabs/MCU/Inc/c8051f320.h:54: sfr TH1      = 0x8D;                   // Timer1 - High byte
   0093 75 C7 8D            953 	mov	_TH1,#0x8D
                    0035    954 	G$Usb0_Init$0$0 ==.
                    0035    955 	C$c8051f320.h$55$2$8 ==.
                            956 ;	c:/SiLabs/MCU/Inc/c8051f320.h:55: sfr CKCON    = 0x8E;                   // Clock control register
   0096 75 C8 8E            957 	mov	_CKCON,#0x8E
                    0038    958 	G$Usb0_Init$0$0 ==.
                    0038    959 	C$c8051f320.h$56$2$8 ==.
                            960 ;	c:/SiLabs/MCU/Inc/c8051f320.h:56: sfr PSCTL    = 0x8F;                   // Program store r/w control
   0099 75 C9 8F            961 	mov	_PSCTL,#0x8F
                    003B    962 	G$Usb0_Init$0$0 ==.
                    003B    963 	C$c8051f320.h$57$2$8 ==.
                            964 ;	c:/SiLabs/MCU/Inc/c8051f320.h:57: sfr P1       = 0x90;                   // Port1
   009C 75 CA 90            965 	mov	_P1,#0x90
                    003E    966 	G$Usb0_Init$0$0 ==.
                    003E    967 	C$c8051f320.h$58$2$8 ==.
                            968 ;	c:/SiLabs/MCU/Inc/c8051f320.h:58: sfr TMR3CN   = 0x91;                   // Timer3 control register
   009F 75 CB 91            969 	mov	_TMR3CN,#0x91
                    0041    970 	G$Usb0_Init$0$0 ==.
                    0041    971 	C$c8051f320.h$59$2$8 ==.
                            972 ;	c:/SiLabs/MCU/Inc/c8051f320.h:59: sfr TMR3RLL  = 0x92;                   // Timer3 reload register - Low byte
   00A2 75 CC 92            973 	mov	_TMR3RLL,#0x92
                    0044    974 	G$Usb0_Init$0$0 ==.
                    0044    975 	C$c8051f320.h$60$2$8 ==.
                            976 ;	c:/SiLabs/MCU/Inc/c8051f320.h:60: sfr TMR3RLH  = 0x93;                   // Timer3 reload register - High byte
   00A5 75 CD 93            977 	mov	_TMR3RLH,#0x93
                    0047    978 	G$Usb0_Init$0$0 ==.
                    0047    979 	C$c8051f320.h$61$2$8 ==.
                            980 ;	c:/SiLabs/MCU/Inc/c8051f320.h:61: sfr TMR3L    = 0x94;                   // Timer3 - Low byte
   00A8 75 CE 94            981 	mov	_TMR3L,#0x94
                    004A    982 	G$Usb0_Init$0$0 ==.
                    004A    983 	C$c8051f320.h$62$2$8 ==.
                            984 ;	c:/SiLabs/MCU/Inc/c8051f320.h:62: sfr TMR3H    = 0x95;                   // Timer3 - High byte
   00AB 75 CF 95            985 	mov	_TMR3H,#0x95
                    004D    986 	G$Usb0_Init$0$0 ==.
                    004D    987 	C$c8051f320.h$63$2$8 ==.
                            988 ;	c:/SiLabs/MCU/Inc/c8051f320.h:63: sfr USB0ADR  = 0x96;                   // USB0 address port
   00AE 75 D0 96            989 	mov	_USB0ADR,#0x96
                    0050    990 	G$Usb0_Init$0$0 ==.
                    0050    991 	C$c8051f320.h$64$2$8 ==.
                            992 ;	c:/SiLabs/MCU/Inc/c8051f320.h:64: sfr USB0DAT  = 0x97;                   // USB0 data port
   00B1 75 D1 97            993 	mov	_USB0DAT,#0x97
                    0053    994 	G$Usb0_Init$0$0 ==.
                    0053    995 	C$c8051f320.h$65$2$8 ==.
                            996 ;	c:/SiLabs/MCU/Inc/c8051f320.h:65: sfr SCON0    = 0x98;                   // UART0 control register
   00B4 75 D2 98            997 	mov	_SCON0,#0x98
                    0056    998 	G$Usb0_Init$0$0 ==.
                    0056    999 	C$c8051f320.h$66$2$8 ==.
                           1000 ;	c:/SiLabs/MCU/Inc/c8051f320.h:66: sfr SBUF0    = 0x99;                   // UART0 data buffer register
   00B7 75 D3 99           1001 	mov	_SBUF0,#0x99
                    0059   1002 	G$Usb0_Init$0$0 ==.
                    0059   1003 	C$c8051f320.h$67$2$8 ==.
                           1004 ;	c:/SiLabs/MCU/Inc/c8051f320.h:67: sfr CPT1CN   = 0x9A;                   // Comparator1 control register
   00BA 75 D4 9A           1005 	mov	_CPT1CN,#0x9A
                    005C   1006 	G$Usb0_Init$0$0 ==.
                    005C   1007 	C$c8051f320.h$68$2$8 ==.
                           1008 ;	c:/SiLabs/MCU/Inc/c8051f320.h:68: sfr CPT0CN   = 0x9B;                   // Comparator0 control register
   00BD 75 D5 9B           1009 	mov	_CPT0CN,#0x9B
                    005F   1010 	G$Usb0_Init$0$0 ==.
                    005F   1011 	C$c8051f320.h$69$2$8 ==.
                           1012 ;	c:/SiLabs/MCU/Inc/c8051f320.h:69: sfr CPT1MD   = 0x9C;                   // Comparator1 mode selection register
   00C0 75 D6 9C           1013 	mov	_CPT1MD,#0x9C
                    0062   1014 	G$Usb0_Init$0$0 ==.
                    0062   1015 	C$c8051f320.h$70$2$8 ==.
                           1016 ;	c:/SiLabs/MCU/Inc/c8051f320.h:70: sfr CPT0MD   = 0x9D;                   // Comparator0 mode selection register
   00C3 75 D7 9D           1017 	mov	_CPT0MD,#0x9D
                    0065   1018 	G$Usb0_Init$0$0 ==.
                    0065   1019 	C$c8051f320.h$71$2$8 ==.
                           1020 ;	c:/SiLabs/MCU/Inc/c8051f320.h:71: sfr CPT1MX   = 0x9E;                   // Comparator1 mux selection register
   00C6 75 D8 9E           1021 	mov	_CPT1MX,#0x9E
                    0068   1022 	G$Usb0_Init$0$0 ==.
                    0068   1023 	C$c8051f320.h$72$2$8 ==.
                           1024 ;	c:/SiLabs/MCU/Inc/c8051f320.h:72: sfr CPT0MX   = 0x9F;                   // Comparator0 mux selection register
   00C9 75 D9 9F           1025 	mov	_CPT0MX,#0x9F
                    006B   1026 	G$Usb0_Init$0$0 ==.
                    006B   1027 	C$c8051f320.h$73$2$8 ==.
                           1028 ;	c:/SiLabs/MCU/Inc/c8051f320.h:73: sfr P2       = 0xA0;                   // Port2
   00CC 75 DA A0           1029 	mov	_P2,#0xA0
                    006E   1030 	G$Usb0_Init$0$0 ==.
                    006E   1031 	C$c8051f320.h$74$2$8 ==.
                           1032 ;	c:/SiLabs/MCU/Inc/c8051f320.h:74: sfr SPICFG   = 0xA1;                   // SPI0 configuration register
   00CF 75 DB A1           1033 	mov	_SPICFG,#0xA1
                    0071   1034 	G$Usb0_Init$0$0 ==.
                    0071   1035 	C$c8051f320.h$75$2$8 ==.
                           1036 ;	c:/SiLabs/MCU/Inc/c8051f320.h:75: sfr SPI0CFG  = 0xA1;                   // SPI0 configuration register
   00D2 75 DC A1           1037 	mov	_SPI0CFG,#0xA1
                    0074   1038 	G$Usb0_Init$0$0 ==.
                    0074   1039 	C$c8051f320.h$76$2$8 ==.
                           1040 ;	c:/SiLabs/MCU/Inc/c8051f320.h:76: sfr SPICKR   = 0xA2;                   // SPI0 clock configuration register
   00D5 75 DD A2           1041 	mov	_SPICKR,#0xA2
                    0077   1042 	G$Usb0_Init$0$0 ==.
                    0077   1043 	C$c8051f320.h$77$2$8 ==.
                           1044 ;	c:/SiLabs/MCU/Inc/c8051f320.h:77: sfr SPI0CKR  = 0xA2;                   // SPI0 clock configuration register
   00D8 75 DE A2           1045 	mov	_SPI0CKR,#0xA2
                    007A   1046 	G$Usb0_Init$0$0 ==.
                    007A   1047 	C$c8051f320.h$78$2$8 ==.
                           1048 ;	c:/SiLabs/MCU/Inc/c8051f320.h:78: sfr SPIDAT   = 0xA3;                   // SPI0 data register
   00DB 75 DF A3           1049 	mov	_SPIDAT,#0xA3
                    007D   1050 	G$Usb0_Init$0$0 ==.
                    007D   1051 	C$c8051f320.h$79$2$8 ==.
                           1052 ;	c:/SiLabs/MCU/Inc/c8051f320.h:79: sfr SPI0DAT  = 0xA3;                   // SPI0 data register
   00DE 75 E0 A3           1053 	mov	_SPI0DAT,#0xA3
                    0080   1054 	G$Usb0_Init$0$0 ==.
                    0080   1055 	C$c8051f320.h$80$2$8 ==.
                           1056 ;	c:/SiLabs/MCU/Inc/c8051f320.h:80: sfr P0MDOUT  = 0xA4;                   // Port0 output mode register
   00E1 75 E1 A4           1057 	mov	_P0MDOUT,#0xA4
                    0083   1058 	G$Usb0_Init$0$0 ==.
                    0083   1059 	C$c8051f320.h$81$2$8 ==.
                           1060 ;	c:/SiLabs/MCU/Inc/c8051f320.h:81: sfr P1MDOUT  = 0xA5;                   // Port1 output mode register
   00E4 75 E2 A5           1061 	mov	_P1MDOUT,#0xA5
                    0086   1062 	G$Usb0_Init$0$0 ==.
                    0086   1063 	C$c8051f320.h$82$2$8 ==.
                           1064 ;	c:/SiLabs/MCU/Inc/c8051f320.h:82: sfr P2MDOUT  = 0xA6;                   // Port2 output mode register
   00E7 75 E3 A6           1065 	mov	_P2MDOUT,#0xA6
                    0089   1066 	G$Usb0_Init$0$0 ==.
                    0089   1067 	C$c8051f320.h$83$2$8 ==.
                           1068 ;	c:/SiLabs/MCU/Inc/c8051f320.h:83: sfr P3MDOUT  = 0xA7;                   // Port3 output mode register
   00EA 75 E4 A7           1069 	mov	_P3MDOUT,#0xA7
                    008C   1070 	G$Usb0_Init$0$0 ==.
                    008C   1071 	C$c8051f320.h$84$2$8 ==.
                           1072 ;	c:/SiLabs/MCU/Inc/c8051f320.h:84: sfr IE       = 0xA8;                   // Interrupt enable
   00ED 75 E5 A8           1073 	mov	_IE,#0xA8
                    008F   1074 	G$Usb0_Init$0$0 ==.
                    008F   1075 	C$c8051f320.h$85$2$8 ==.
                           1076 ;	c:/SiLabs/MCU/Inc/c8051f320.h:85: sfr CLKSEL   = 0xA9;                   // Clock source select
   00F0 75 E6 A9           1077 	mov	_CLKSEL,#0xA9
                    0092   1078 	G$Usb0_Init$0$0 ==.
                    0092   1079 	C$c8051f320.h$86$2$8 ==.
                           1080 ;	c:/SiLabs/MCU/Inc/c8051f320.h:86: sfr EMI0CN   = 0xAA;                   // External Memory Interface Control
   00F3 75 E7 AA           1081 	mov	_EMI0CN,#0xAA
                    0095   1082 	G$Usb0_Init$0$0 ==.
                    0095   1083 	C$c8051f320.h$87$2$8 ==.
                           1084 ;	c:/SiLabs/MCU/Inc/c8051f320.h:87: sfr P3       = 0xB0;                   // Port3
   00F6 75 E8 B0           1085 	mov	_P3,#0xB0
                    0098   1086 	G$Usb0_Init$0$0 ==.
                    0098   1087 	C$c8051f320.h$88$2$8 ==.
                           1088 ;	c:/SiLabs/MCU/Inc/c8051f320.h:88: sfr OSCXCN   = 0xB1;                   // External oscillator control
   00F9 75 E9 B1           1089 	mov	_OSCXCN,#0xB1
                    009B   1090 	G$Usb0_Init$0$0 ==.
                    009B   1091 	C$c8051f320.h$89$2$8 ==.
                           1092 ;	c:/SiLabs/MCU/Inc/c8051f320.h:89: sfr OSCICN   = 0xB2;                   // Internal oscillator control
   00FC 75 EA B2           1093 	mov	_OSCICN,#0xB2
                    009E   1094 	G$Usb0_Init$0$0 ==.
                    009E   1095 	C$c8051f320.h$90$2$8 ==.
                           1096 ;	c:/SiLabs/MCU/Inc/c8051f320.h:90: sfr OSCICL   = 0xB3;                   // Internal oscillator calibration
   00FF 75 EB B3           1097 	mov	_OSCICL,#0xB3
                    00A1   1098 	G$Usb0_Init$0$0 ==.
                    00A1   1099 	C$c8051f320.h$91$2$8 ==.
                           1100 ;	c:/SiLabs/MCU/Inc/c8051f320.h:91: sfr FLSCL    = 0xB6;                   // Flash scale register
   0102 75 EC B6           1101 	mov	_FLSCL,#0xB6
                    00A4   1102 	G$Usb0_Init$0$0 ==.
                    00A4   1103 	C$c8051f320.h$92$2$8 ==.
                           1104 ;	c:/SiLabs/MCU/Inc/c8051f320.h:92: sfr FLKEY    = 0xB7;                   // Flash lock & key register
   0105 75 ED B7           1105 	mov	_FLKEY,#0xB7
                    00A7   1106 	G$Usb0_Init$0$0 ==.
                    00A7   1107 	C$c8051f320.h$93$2$8 ==.
                           1108 ;	c:/SiLabs/MCU/Inc/c8051f320.h:93: sfr IP       = 0xB8;                   // Interrupt priority
   0108 75 EE B8           1109 	mov	_IP,#0xB8
                    00AA   1110 	G$Usb0_Init$0$0 ==.
                    00AA   1111 	C$c8051f320.h$94$2$8 ==.
                           1112 ;	c:/SiLabs/MCU/Inc/c8051f320.h:94: sfr CLKMUL   = 0xB9;                   // Clock multiplier control register
   010B 75 EF B9           1113 	mov	_CLKMUL,#0xB9
                    00AD   1114 	G$Usb0_Init$0$0 ==.
                    00AD   1115 	C$c8051f320.h$95$2$8 ==.
                           1116 ;	c:/SiLabs/MCU/Inc/c8051f320.h:95: sfr AMX0N    = 0xBA;                   // ADC0 mux negative channel selection
   010E 75 F0 BA           1117 	mov	_AMX0N,#0xBA
                    00B0   1118 	G$Usb0_Init$0$0 ==.
                    00B0   1119 	C$c8051f320.h$96$2$8 ==.
                           1120 ;	c:/SiLabs/MCU/Inc/c8051f320.h:96: sfr AMX0P    = 0xBB;                   // ADC0 mux positive channel selection
   0111 75 F1 BB           1121 	mov	_AMX0P,#0xBB
                    00B3   1122 	G$Usb0_Init$0$0 ==.
                    00B3   1123 	C$c8051f320.h$97$2$8 ==.
                           1124 ;	c:/SiLabs/MCU/Inc/c8051f320.h:97: sfr ADC0CF   = 0xBC;                   // ADC0 configuration
   0114 75 F2 BC           1125 	mov	_ADC0CF,#0xBC
                    00B6   1126 	G$Usb0_Init$0$0 ==.
                    00B6   1127 	C$c8051f320.h$98$2$8 ==.
                           1128 ;	c:/SiLabs/MCU/Inc/c8051f320.h:98: sfr ADC0L    = 0xBD;                   // ADC0 data low
   0117 75 F3 BD           1129 	mov	_ADC0L,#0xBD
                    00B9   1130 	G$Usb0_Init$0$0 ==.
                    00B9   1131 	C$c8051f320.h$99$2$8 ==.
                           1132 ;	c:/SiLabs/MCU/Inc/c8051f320.h:99: sfr ADC0H    = 0xBE;                   // ADC0 data high
   011A 75 F4 BE           1133 	mov	_ADC0H,#0xBE
                    00BC   1134 	G$Usb0_Init$0$0 ==.
                    00BC   1135 	C$c8051f320.h$100$2$8 ==.
                           1136 ;	c:/SiLabs/MCU/Inc/c8051f320.h:100: sfr SMB0CN   = 0xC0;                   // SMBus control
   011D 75 F5 C0           1137 	mov	_SMB0CN,#0xC0
                    00BF   1138 	G$Usb0_Init$0$0 ==.
                    00BF   1139 	C$c8051f320.h$101$2$8 ==.
                           1140 ;	c:/SiLabs/MCU/Inc/c8051f320.h:101: sfr SMB0CF   = 0xC1;                   // SMBus configuration
   0120 75 F6 C1           1141 	mov	_SMB0CF,#0xC1
                    00C2   1142 	G$Usb0_Init$0$0 ==.
                    00C2   1143 	C$c8051f320.h$102$2$8 ==.
                           1144 ;	c:/SiLabs/MCU/Inc/c8051f320.h:102: sfr SMB0DAT  = 0xC2;                   // SMBus data
   0123 75 F7 C2           1145 	mov	_SMB0DAT,#0xC2
                    00C5   1146 	G$Usb0_Init$0$0 ==.
                    00C5   1147 	C$c8051f320.h$103$2$8 ==.
                           1148 ;	c:/SiLabs/MCU/Inc/c8051f320.h:103: sfr ADC0GTL  = 0xC3;                   // ADC0 greater-than data low register
   0126 75 F8 C3           1149 	mov	_ADC0GTL,#0xC3
                    00C8   1150 	G$Usb0_Init$0$0 ==.
                    00C8   1151 	C$c8051f320.h$104$2$8 ==.
                           1152 ;	c:/SiLabs/MCU/Inc/c8051f320.h:104: sfr ADC0GTH  = 0xC4;                   // ADC0 greater-than data high register
   0129 75 F9 C4           1153 	mov	_ADC0GTH,#0xC4
                    00CB   1154 	G$Usb0_Init$0$0 ==.
                    00CB   1155 	C$c8051f320.h$105$2$8 ==.
                           1156 ;	c:/SiLabs/MCU/Inc/c8051f320.h:105: sfr ADC0LTL  = 0xC5;                   // ADC0 less-than data low register
   012C 75 FA C5           1157 	mov	_ADC0LTL,#0xC5
                    00CE   1158 	G$Usb0_Init$0$0 ==.
                    00CE   1159 	C$c8051f320.h$106$2$8 ==.
                           1160 ;	c:/SiLabs/MCU/Inc/c8051f320.h:106: sfr ADC0LTH  = 0xC6;                   // ADC0 less-than data high register
   012F 75 FB C6           1161 	mov	_ADC0LTH,#0xC6
                    00D1   1162 	G$Usb0_Init$0$0 ==.
                    00D1   1163 	C$c8051f320.h$107$2$8 ==.
                           1164 ;	c:/SiLabs/MCU/Inc/c8051f320.h:107: sfr TMR2CN   = 0xC8;                   // Timer2 control register
   0132 75 FC C8           1165 	mov	_TMR2CN,#0xC8
                    00D4   1166 	G$Usb0_Init$0$0 ==.
                    00D4   1167 	C$c8051f320.h$108$2$8 ==.
                           1168 ;	c:/SiLabs/MCU/Inc/c8051f320.h:108: sfr REG0CN   = 0xC9;                   // Regulator control register
   0135 75 FD C9           1169 	mov	_REG0CN,#0xC9
                    00D7   1170 	G$Usb0_Init$0$0 ==.
                    00D7   1171 	C$c8051f320.h$109$2$8 ==.
                           1172 ;	c:/SiLabs/MCU/Inc/c8051f320.h:109: sfr TMR2RLL  = 0xCA;                   // Timer2 reload register - Low byte
   0138 75 FE CA           1173 	mov	_TMR2RLL,#0xCA
                    00DA   1174 	G$Usb0_Init$0$0 ==.
                    00DA   1175 	C$c8051f320.h$110$2$8 ==.
                           1176 ;	c:/SiLabs/MCU/Inc/c8051f320.h:110: sfr TMR2RLH  = 0xCB;                   // Timer2 reload register - High byte
   013B 75 FF CB           1177 	mov	_TMR2RLH,#0xCB
                    00DD   1178 	G$Usb0_Init$0$0 ==.
                    00DD   1179 	C$c8051f320.h$111$2$8 ==.
                           1180 ;	c:/SiLabs/MCU/Inc/c8051f320.h:111: sfr TMR2L    = 0xCC;                   // Timer2 - Low byte
   013E 75 00 CC           1181 	mov	_TMR2L,#0xCC
                    00E0   1182 	G$Usb0_Init$0$0 ==.
                    00E0   1183 	C$c8051f320.h$112$2$8 ==.
                           1184 ;	c:/SiLabs/MCU/Inc/c8051f320.h:112: sfr TMR2H    = 0xCD;                   // Timer2 - High byte
   0141 75 01 CD           1185 	mov	_TMR2H,#0xCD
                    00E3   1186 	G$Usb0_Init$0$0 ==.
                    00E3   1187 	C$c8051f320.h$113$2$8 ==.
                           1188 ;	c:/SiLabs/MCU/Inc/c8051f320.h:113: sfr PSW      = 0xD0;                   // Program Status Word
   0144 75 02 D0           1189 	mov	_PSW,#0xD0
                    00E6   1190 	G$Usb0_Init$0$0 ==.
                    00E6   1191 	C$c8051f320.h$114$2$8 ==.
                           1192 ;	c:/SiLabs/MCU/Inc/c8051f320.h:114: sfr REF0CN   = 0xD1;                   // Voltage reference control register
   0147 75 03 D1           1193 	mov	_REF0CN,#0xD1
                    00E9   1194 	G$Usb0_Init$0$0 ==.
                    00E9   1195 	C$c8051f320.h$115$2$8 ==.
                           1196 ;	c:/SiLabs/MCU/Inc/c8051f320.h:115: sfr P0SKIP   = 0xD4;                   // Port0 crossbar skip register
   014A 75 04 D4           1197 	mov	_P0SKIP,#0xD4
                    00EC   1198 	G$Usb0_Init$0$0 ==.
                    00EC   1199 	C$c8051f320.h$116$2$8 ==.
                           1200 ;	c:/SiLabs/MCU/Inc/c8051f320.h:116: sfr P1SKIP   = 0xD5;                   // Port1 crossbar skip register
   014D 75 05 D5           1201 	mov	_P1SKIP,#0xD5
                    00EF   1202 	G$Usb0_Init$0$0 ==.
                    00EF   1203 	C$c8051f320.h$117$2$8 ==.
                           1204 ;	c:/SiLabs/MCU/Inc/c8051f320.h:117: sfr P2SKIP   = 0xD6;                   // Port2 crossbar skip register
   0150 75 06 D6           1205 	mov	_P2SKIP,#0xD6
                    00F2   1206 	G$Usb0_Init$0$0 ==.
                    00F2   1207 	C$c8051f320.h$118$2$8 ==.
                           1208 ;	c:/SiLabs/MCU/Inc/c8051f320.h:118: sfr USB0XCN  = 0xD7;                   // USB0 tranceiver control register
   0153 75 07 D7           1209 	mov	_USB0XCN,#0xD7
                    00F5   1210 	G$Usb0_Init$0$0 ==.
                    00F5   1211 	C$c8051f320.h$119$2$8 ==.
                           1212 ;	c:/SiLabs/MCU/Inc/c8051f320.h:119: sfr PCA0CN   = 0xD8;                   // PCA0 control register
   0156 75 08 D8           1213 	mov	_PCA0CN,#0xD8
                    00F8   1214 	G$Usb0_Init$0$0 ==.
                    00F8   1215 	C$c8051f320.h$120$2$8 ==.
                           1216 ;	c:/SiLabs/MCU/Inc/c8051f320.h:120: sfr PCA0MD   = 0xD9;                   // PCA0 mode register
   0159 75 09 D9           1217 	mov	_PCA0MD,#0xD9
                    00FB   1218 	G$Usb0_Init$0$0 ==.
                    00FB   1219 	C$c8051f320.h$121$2$8 ==.
                           1220 ;	c:/SiLabs/MCU/Inc/c8051f320.h:121: sfr PCA0CPM0 = 0xDA;                   // Capture/compare module0 mode
   015C 75 0A DA           1221 	mov	_PCA0CPM0,#0xDA
                    00FE   1222 	G$Usb0_Init$0$0 ==.
                    00FE   1223 	C$c8051f320.h$122$2$8 ==.
                           1224 ;	c:/SiLabs/MCU/Inc/c8051f320.h:122: sfr PCA0CPM1 = 0xDB;                   // Capture/compare module1 mode
   015F 75 0B DB           1225 	mov	_PCA0CPM1,#0xDB
                    0101   1226 	G$Usb0_Init$0$0 ==.
                    0101   1227 	C$c8051f320.h$123$2$8 ==.
                           1228 ;	c:/SiLabs/MCU/Inc/c8051f320.h:123: sfr PCA0CPM2 = 0xDC;                   // Capture/compare module2 mode
   0162 75 0C DC           1229 	mov	_PCA0CPM2,#0xDC
                    0104   1230 	G$Usb0_Init$0$0 ==.
                    0104   1231 	C$c8051f320.h$124$2$8 ==.
                           1232 ;	c:/SiLabs/MCU/Inc/c8051f320.h:124: sfr PCA0CPM3 = 0xDD;                   // Capture/compare module3 mode
   0165 75 0D DD           1233 	mov	_PCA0CPM3,#0xDD
                    0107   1234 	G$Usb0_Init$0$0 ==.
                    0107   1235 	C$c8051f320.h$125$2$8 ==.
                           1236 ;	c:/SiLabs/MCU/Inc/c8051f320.h:125: sfr PCA0CPM4 = 0xDE;                   // Capture/compare module4 mode
   0168 75 0E DE           1237 	mov	_PCA0CPM4,#0xDE
                    010A   1238 	G$Usb0_Init$0$0 ==.
                    010A   1239 	C$c8051f320.h$126$2$8 ==.
                           1240 ;	c:/SiLabs/MCU/Inc/c8051f320.h:126: sfr ACC      = 0xE0;                   // Accumulator
   016B 75 0F E0           1241 	mov	_ACC,#0xE0
                    010D   1242 	G$Usb0_Init$0$0 ==.
                    010D   1243 	C$c8051f320.h$127$2$8 ==.
                           1244 ;	c:/SiLabs/MCU/Inc/c8051f320.h:127: sfr XBR0     = 0xE1;                   // Port I/O crossbar register 0
   016E 75 10 E1           1245 	mov	_XBR0,#0xE1
                    0110   1246 	G$Usb0_Init$0$0 ==.
                    0110   1247 	C$c8051f320.h$128$2$8 ==.
                           1248 ;	c:/SiLabs/MCU/Inc/c8051f320.h:128: sfr XBR1     = 0xE2;                   // Port I/O crossbar register 1
   0171 75 11 E2           1249 	mov	_XBR1,#0xE2
                    0113   1250 	G$Usb0_Init$0$0 ==.
                    0113   1251 	C$c8051f320.h$129$2$8 ==.
                           1252 ;	c:/SiLabs/MCU/Inc/c8051f320.h:129: sfr IT01CF   = 0xE4;                   // Int0/int1 configuration register
   0174 75 12 E4           1253 	mov	_IT01CF,#0xE4
                    0116   1254 	G$Usb0_Init$0$0 ==.
                    0116   1255 	C$c8051f320.h$130$2$8 ==.
                           1256 ;	c:/SiLabs/MCU/Inc/c8051f320.h:130: sfr EIE1     = 0xE6;                   // Extended interrupt enable 1
   0177 75 13 E6           1257 	mov	_EIE1,#0xE6
                    0119   1258 	G$Usb0_Init$0$0 ==.
                    0119   1259 	C$c8051f320.h$131$2$8 ==.
                           1260 ;	c:/SiLabs/MCU/Inc/c8051f320.h:131: sfr EIE2     = 0xE7;                   // Extended interrupt enable 2
   017A 75 14 E7           1261 	mov	_EIE2,#0xE7
                    011C   1262 	G$Usb0_Init$0$0 ==.
                    011C   1263 	C$c8051f320.h$132$2$8 ==.
                           1264 ;	c:/SiLabs/MCU/Inc/c8051f320.h:132: sfr ADC0CN   = 0xE8;                   // ADC0 control register
   017D 75 15 E8           1265 	mov	_ADC0CN,#0xE8
                    011F   1266 	G$Usb0_Init$0$0 ==.
                    011F   1267 	C$c8051f320.h$133$2$8 ==.
                           1268 ;	c:/SiLabs/MCU/Inc/c8051f320.h:133: sfr PCA0CPL1 = 0xE9;                   // Capture/compare module1 - Low byte
   0180 75 16 E9           1269 	mov	_PCA0CPL1,#0xE9
                    0122   1270 	G$Usb0_Init$0$0 ==.
                    0122   1271 	C$c8051f320.h$134$2$8 ==.
                           1272 ;	c:/SiLabs/MCU/Inc/c8051f320.h:134: sfr PCA0CPH1 = 0xEA;                   // Capture/compare module1 - High byte
   0183 75 17 EA           1273 	mov	_PCA0CPH1,#0xEA
                    0125   1274 	G$Usb0_Init$0$0 ==.
                    0125   1275 	C$c8051f320.h$135$2$8 ==.
                           1276 ;	c:/SiLabs/MCU/Inc/c8051f320.h:135: sfr PCA0CPL2 = 0xEB;                   // Capture/compare module2 - Low byte
   0186 75 18 EB           1277 	mov	_PCA0CPL2,#0xEB
                    0128   1278 	G$Usb0_Init$0$0 ==.
                    0128   1279 	C$c8051f320.h$136$2$8 ==.
                           1280 ;	c:/SiLabs/MCU/Inc/c8051f320.h:136: sfr PCA0CPH2 = 0xEC;                   // Capture/compare module2 - High byte
   0189 75 19 EC           1281 	mov	_PCA0CPH2,#0xEC
                    012B   1282 	G$Usb0_Init$0$0 ==.
                    012B   1283 	C$c8051f320.h$137$2$8 ==.
                           1284 ;	c:/SiLabs/MCU/Inc/c8051f320.h:137: sfr PCA0CPL3 = 0xED;                   // Capture/compare module3 - Low byte
   018C 75 1A ED           1285 	mov	_PCA0CPL3,#0xED
                    012E   1286 	G$Usb0_Init$0$0 ==.
                    012E   1287 	C$c8051f320.h$138$2$8 ==.
                           1288 ;	c:/SiLabs/MCU/Inc/c8051f320.h:138: sfr PCA0CPH3 = 0xEE;                   // Capture/compare module3 - High byte
   018F 75 1B EE           1289 	mov	_PCA0CPH3,#0xEE
                    0131   1290 	G$Usb0_Init$0$0 ==.
                    0131   1291 	C$c8051f320.h$139$2$8 ==.
                           1292 ;	c:/SiLabs/MCU/Inc/c8051f320.h:139: sfr RSTSRC   = 0xEF;                   // Reset source register
   0192 75 1C EF           1293 	mov	_RSTSRC,#0xEF
                    0134   1294 	G$Usb0_Init$0$0 ==.
                    0134   1295 	C$c8051f320.h$140$2$8 ==.
                           1296 ;	c:/SiLabs/MCU/Inc/c8051f320.h:140: sfr B        = 0xF0;                   // B register
   0195 75 1D F0           1297 	mov	_B,#0xF0
                    0137   1298 	G$Usb0_Init$0$0 ==.
                    0137   1299 	C$c8051f320.h$141$2$8 ==.
                           1300 ;	c:/SiLabs/MCU/Inc/c8051f320.h:141: sfr P0MDIN   = 0xF1;                   // Port0 input mode register
   0198 75 1E F1           1301 	mov	_P0MDIN,#0xF1
                    013A   1302 	G$Usb0_Init$0$0 ==.
                    013A   1303 	C$c8051f320.h$142$2$8 ==.
                           1304 ;	c:/SiLabs/MCU/Inc/c8051f320.h:142: sfr P1MDIN   = 0xF2;                   // Port1 input mode register
   019B 75 1F F2           1305 	mov	_P1MDIN,#0xF2
                    013D   1306 	G$Usb0_Init$0$0 ==.
                    013D   1307 	C$c8051f320.h$143$2$8 ==.
                           1308 ;	c:/SiLabs/MCU/Inc/c8051f320.h:143: sfr P2MDIN   = 0xF3;                   // Port2 input mode register
   019E 75 20 F3           1309 	mov	_P2MDIN,#0xF3
                    0140   1310 	G$Usb0_Init$0$0 ==.
                    0140   1311 	C$c8051f320.h$144$2$8 ==.
                           1312 ;	c:/SiLabs/MCU/Inc/c8051f320.h:144: sfr P3MDIN   = 0xF4;                   // Port3 input mode register
   01A1 75 21 F4           1313 	mov	_P3MDIN,#0xF4
                    0143   1314 	G$Usb0_Init$0$0 ==.
                    0143   1315 	C$c8051f320.h$145$2$8 ==.
                           1316 ;	c:/SiLabs/MCU/Inc/c8051f320.h:145: sfr EIP1     = 0xF6;                   // Extended interrupt priority 1
   01A4 75 22 F6           1317 	mov	_EIP1,#0xF6
                    0146   1318 	G$Usb0_Init$0$0 ==.
                    0146   1319 	C$c8051f320.h$146$2$8 ==.
                           1320 ;	c:/SiLabs/MCU/Inc/c8051f320.h:146: sfr EIP2     = 0xF7;                   // Extended interrupt priority 2
   01A7 75 23 F7           1321 	mov	_EIP2,#0xF7
                    0149   1322 	G$Usb0_Init$0$0 ==.
                    0149   1323 	C$c8051f320.h$147$2$8 ==.
                           1324 ;	c:/SiLabs/MCU/Inc/c8051f320.h:147: sfr SPI0CN   = 0xF8;                   // SPI0 control register
   01AA 75 24 F8           1325 	mov	_SPI0CN,#0xF8
                    014C   1326 	G$Usb0_Init$0$0 ==.
                    014C   1327 	C$c8051f320.h$148$2$8 ==.
                           1328 ;	c:/SiLabs/MCU/Inc/c8051f320.h:148: sfr PCA0L    = 0xF9;                   // PCA0 counter/timer - Low byte
   01AD 75 25 F9           1329 	mov	_PCA0L,#0xF9
                    014F   1330 	G$Usb0_Init$0$0 ==.
                    014F   1331 	C$c8051f320.h$149$2$8 ==.
                           1332 ;	c:/SiLabs/MCU/Inc/c8051f320.h:149: sfr PCA0H    = 0xFA;                   // PCA0 counter/timer - High byte
   01B0 75 26 FA           1333 	mov	_PCA0H,#0xFA
                    0152   1334 	G$Usb0_Init$0$0 ==.
                    0152   1335 	C$c8051f320.h$150$2$8 ==.
                           1336 ;	c:/SiLabs/MCU/Inc/c8051f320.h:150: sfr PCA0CPL0 = 0xFB;                   // Capture/compare module0 - Low byte
   01B3 75 27 FB           1337 	mov	_PCA0CPL0,#0xFB
                    0155   1338 	G$Usb0_Init$0$0 ==.
                    0155   1339 	C$c8051f320.h$151$2$8 ==.
                           1340 ;	c:/SiLabs/MCU/Inc/c8051f320.h:151: sfr PCA0CPH0 = 0xFC;                   // Capture/compare module0 - High byte
   01B6 75 28 FC           1341 	mov	_PCA0CPH0,#0xFC
                    0158   1342 	G$Usb0_Init$0$0 ==.
                    0158   1343 	C$c8051f320.h$152$2$8 ==.
                           1344 ;	c:/SiLabs/MCU/Inc/c8051f320.h:152: sfr PCA0CPL4 = 0xFD;                   // Capture/compare module4 - Low byte
   01B9 75 29 FD           1345 	mov	_PCA0CPL4,#0xFD
                    015B   1346 	G$Usb0_Init$0$0 ==.
                    015B   1347 	C$c8051f320.h$153$2$8 ==.
                           1348 ;	c:/SiLabs/MCU/Inc/c8051f320.h:153: sfr PCA0CPH4 = 0xFE;                   // Capture/compare module4 - High byte
   01BC 75 2A FE           1349 	mov	_PCA0CPH4,#0xFE
                    015E   1350 	G$Usb0_Init$0$0 ==.
                    015E   1351 	C$c8051f320.h$154$2$8 ==.
                           1352 ;	c:/SiLabs/MCU/Inc/c8051f320.h:154: sfr VDM0CN   = 0xFF;                   // Vdd monitor control
   01BF 75 2B FF           1353 	mov	_VDM0CN,#0xFF
                    0161   1354 	G$Usb0_Init$0$0 ==.
                    0161   1355 	C$c8051f320.h$161$2$8 ==.
                           1356 ;	c:/SiLabs/MCU/Inc/c8051f320.h:161: sbit TF1     = 0x8F;                   // Timer1 overflow flag
   01C2 D2 2C              1357 	setb	_TF1
                    0163   1358 	G$Usb0_Init$0$0 ==.
                    0163   1359 	C$c8051f320.h$162$2$8 ==.
                           1360 ;	c:/SiLabs/MCU/Inc/c8051f320.h:162: sbit TR1     = 0x8E;                   // Timer1 on/off control
   01C4 D2 2D              1361 	setb	_TR1
                    0165   1362 	G$Usb0_Init$0$0 ==.
                    0165   1363 	C$c8051f320.h$163$2$8 ==.
                           1364 ;	c:/SiLabs/MCU/Inc/c8051f320.h:163: sbit TF0     = 0x8D;                   // Timer0 overflow flag
   01C6 D2 2E              1365 	setb	_TF0
                    0167   1366 	G$Usb0_Init$0$0 ==.
                    0167   1367 	C$c8051f320.h$164$2$8 ==.
                           1368 ;	c:/SiLabs/MCU/Inc/c8051f320.h:164: sbit TR0     = 0x8C;                   // Timer0 on/off control
   01C8 D2 2F              1369 	setb	_TR0
                    0169   1370 	G$Usb0_Init$0$0 ==.
                    0169   1371 	C$c8051f320.h$165$2$8 ==.
                           1372 ;	c:/SiLabs/MCU/Inc/c8051f320.h:165: sbit IE1     = 0x8B;                   // Ext interrupt 1 edge flag
   01CA D2 30              1373 	setb	_IE1
                    016B   1374 	G$Usb0_Init$0$0 ==.
                    016B   1375 	C$c8051f320.h$166$2$8 ==.
                           1376 ;	c:/SiLabs/MCU/Inc/c8051f320.h:166: sbit IT1     = 0x8A;                   // Ext interrupt 1 type
   01CC D2 31              1377 	setb	_IT1
                    016D   1378 	G$Usb0_Init$0$0 ==.
                    016D   1379 	C$c8051f320.h$167$2$8 ==.
                           1380 ;	c:/SiLabs/MCU/Inc/c8051f320.h:167: sbit IE0     = 0x89;                   // Ext interrupt 0 edge flag
   01CE D2 32              1381 	setb	_IE0
                    016F   1382 	G$Usb0_Init$0$0 ==.
                    016F   1383 	C$c8051f320.h$168$2$8 ==.
                           1384 ;	c:/SiLabs/MCU/Inc/c8051f320.h:168: sbit IT0     = 0x88;                   // Ext interrupt 0 type
   01D0 D2 33              1385 	setb	_IT0
                    0171   1386 	G$Usb0_Init$0$0 ==.
                    0171   1387 	C$c8051f320.h$171$2$8 ==.
                           1388 ;	c:/SiLabs/MCU/Inc/c8051f320.h:171: sbit S0MODE  = 0x9F;                   // Serial mode control bit 0
   01D2 D2 34              1389 	setb	_S0MODE
                    0173   1390 	G$Usb0_Init$0$0 ==.
                    0173   1391 	C$c8051f320.h$173$2$8 ==.
                           1392 ;	c:/SiLabs/MCU/Inc/c8051f320.h:173: sbit MCE0    = 0x9D;                   // Multiprocessor communication enable
   01D4 D2 35              1393 	setb	_MCE0
                    0175   1394 	G$Usb0_Init$0$0 ==.
                    0175   1395 	C$c8051f320.h$174$2$8 ==.
                           1396 ;	c:/SiLabs/MCU/Inc/c8051f320.h:174: sbit REN0    = 0x9C;                   // Receive enable
   01D6 D2 36              1397 	setb	_REN0
                    0177   1398 	G$Usb0_Init$0$0 ==.
                    0177   1399 	C$c8051f320.h$175$2$8 ==.
                           1400 ;	c:/SiLabs/MCU/Inc/c8051f320.h:175: sbit TB80    = 0x9B;                   // Transmit bit 8
   01D8 D2 37              1401 	setb	_TB80
                    0179   1402 	G$Usb0_Init$0$0 ==.
                    0179   1403 	C$c8051f320.h$176$2$8 ==.
                           1404 ;	c:/SiLabs/MCU/Inc/c8051f320.h:176: sbit RB80    = 0x9A;                   // Receive bit 8
   01DA D2 38              1405 	setb	_RB80
                    017B   1406 	G$Usb0_Init$0$0 ==.
                    017B   1407 	C$c8051f320.h$177$2$8 ==.
                           1408 ;	c:/SiLabs/MCU/Inc/c8051f320.h:177: sbit TI0     = 0x99;                   // Transmit interrupt flag
   01DC D2 39              1409 	setb	_TI0
                    017D   1410 	G$Usb0_Init$0$0 ==.
                    017D   1411 	C$c8051f320.h$178$2$8 ==.
                           1412 ;	c:/SiLabs/MCU/Inc/c8051f320.h:178: sbit RI0     = 0x98;                   // Receive interrupt flag
   01DE D2 3A              1413 	setb	_RI0
                    017F   1414 	G$Usb0_Init$0$0 ==.
                    017F   1415 	C$c8051f320.h$181$2$8 ==.
                           1416 ;	c:/SiLabs/MCU/Inc/c8051f320.h:181: sbit EA      = 0xAF;                   // Global interrupt enable
   01E0 D2 3B              1417 	setb	_EA
                    0181   1418 	G$Usb0_Init$0$0 ==.
                    0181   1419 	C$c8051f320.h$182$2$8 ==.
                           1420 ;	c:/SiLabs/MCU/Inc/c8051f320.h:182: sbit ESPI0   = 0xAE;                   // SPI0 interrupt enable
   01E2 D2 3C              1421 	setb	_ESPI0
                    0183   1422 	G$Usb0_Init$0$0 ==.
                    0183   1423 	C$c8051f320.h$183$2$8 ==.
                           1424 ;	c:/SiLabs/MCU/Inc/c8051f320.h:183: sbit ET2     = 0xAD;                   // Timer2 interrupt enable
   01E4 D2 3D              1425 	setb	_ET2
                    0185   1426 	G$Usb0_Init$0$0 ==.
                    0185   1427 	C$c8051f320.h$184$2$8 ==.
                           1428 ;	c:/SiLabs/MCU/Inc/c8051f320.h:184: sbit ES0     = 0xAC;                   // UART0 interrupt enable
   01E6 D2 3E              1429 	setb	_ES0
                    0187   1430 	G$Usb0_Init$0$0 ==.
                    0187   1431 	C$c8051f320.h$185$2$8 ==.
                           1432 ;	c:/SiLabs/MCU/Inc/c8051f320.h:185: sbit ET1     = 0xAB;                   // Timer1 interrupt enable
   01E8 D2 3F              1433 	setb	_ET1
                    0189   1434 	G$Usb0_Init$0$0 ==.
                    0189   1435 	C$c8051f320.h$186$2$8 ==.
                           1436 ;	c:/SiLabs/MCU/Inc/c8051f320.h:186: sbit EX1     = 0xAA;                   // External interrupt 1 enable
   01EA D2 40              1437 	setb	_EX1
                    018B   1438 	G$Usb0_Init$0$0 ==.
                    018B   1439 	C$c8051f320.h$187$2$8 ==.
                           1440 ;	c:/SiLabs/MCU/Inc/c8051f320.h:187: sbit ET0     = 0xA9;                   // Timer0 interrupt enable
   01EC D2 41              1441 	setb	_ET0
                    018D   1442 	G$Usb0_Init$0$0 ==.
                    018D   1443 	C$c8051f320.h$188$2$8 ==.
                           1444 ;	c:/SiLabs/MCU/Inc/c8051f320.h:188: sbit EX0     = 0xA8;                   // External interrupt 0 enable
   01EE D2 42              1445 	setb	_EX0
                    018F   1446 	G$Usb0_Init$0$0 ==.
                    018F   1447 	C$c8051f320.h$192$2$8 ==.
                           1448 ;	c:/SiLabs/MCU/Inc/c8051f320.h:192: sbit PSPI0   = 0xBE;                   // SPI0 interrupt priority
   01F0 D2 43              1449 	setb	_PSPI0
                    0191   1450 	G$Usb0_Init$0$0 ==.
                    0191   1451 	C$c8051f320.h$193$2$8 ==.
                           1452 ;	c:/SiLabs/MCU/Inc/c8051f320.h:193: sbit PT2     = 0xBD;                   // Timer2 priority
   01F2 D2 44              1453 	setb	_PT2
                    0193   1454 	G$Usb0_Init$0$0 ==.
                    0193   1455 	C$c8051f320.h$194$2$8 ==.
                           1456 ;	c:/SiLabs/MCU/Inc/c8051f320.h:194: sbit PS0     = 0xBC;                   // UART0 priority
   01F4 D2 45              1457 	setb	_PS0
                    0195   1458 	G$Usb0_Init$0$0 ==.
                    0195   1459 	C$c8051f320.h$195$2$8 ==.
                           1460 ;	c:/SiLabs/MCU/Inc/c8051f320.h:195: sbit PT1     = 0xBB;                   // Timer1 priority
   01F6 D2 46              1461 	setb	_PT1
                    0197   1462 	G$Usb0_Init$0$0 ==.
                    0197   1463 	C$c8051f320.h$196$2$8 ==.
                           1464 ;	c:/SiLabs/MCU/Inc/c8051f320.h:196: sbit PX1     = 0xBA;                   // External interrupt 1 priority
   01F8 D2 47              1465 	setb	_PX1
                    0199   1466 	G$Usb0_Init$0$0 ==.
                    0199   1467 	C$c8051f320.h$197$2$8 ==.
                           1468 ;	c:/SiLabs/MCU/Inc/c8051f320.h:197: sbit PT0     = 0xB9;                   // Timer0 priority
   01FA D2 48              1469 	setb	_PT0
                    019B   1470 	G$Usb0_Init$0$0 ==.
                    019B   1471 	C$c8051f320.h$198$2$8 ==.
                           1472 ;	c:/SiLabs/MCU/Inc/c8051f320.h:198: sbit PX0     = 0xB8;                   // External interrupt 0 priority
   01FC D2 49              1473 	setb	_PX0
                    019D   1474 	G$Usb0_Init$0$0 ==.
                    019D   1475 	C$c8051f320.h$201$2$8 ==.
                           1476 ;	c:/SiLabs/MCU/Inc/c8051f320.h:201: sbit MASTER  = 0xC7;                   // Master/slave indicator
   01FE D2 4A              1477 	setb	_MASTER
                    019F   1478 	G$Usb0_Init$0$0 ==.
                    019F   1479 	C$c8051f320.h$202$2$8 ==.
                           1480 ;	c:/SiLabs/MCU/Inc/c8051f320.h:202: sbit TXMODE  = 0xC6;                   // Transmit mode indicator
   0200 D2 4B              1481 	setb	_TXMODE
                    01A1   1482 	G$Usb0_Init$0$0 ==.
                    01A1   1483 	C$c8051f320.h$203$2$8 ==.
                           1484 ;	c:/SiLabs/MCU/Inc/c8051f320.h:203: sbit STA     = 0xC5;                   // Start flag
   0202 D2 4C              1485 	setb	_STA
                    01A3   1486 	G$Usb0_Init$0$0 ==.
                    01A3   1487 	C$c8051f320.h$204$2$8 ==.
                           1488 ;	c:/SiLabs/MCU/Inc/c8051f320.h:204: sbit STO     = 0xC4;                   // Stop flag
   0204 D2 4D              1489 	setb	_STO
                    01A5   1490 	G$Usb0_Init$0$0 ==.
                    01A5   1491 	C$c8051f320.h$205$2$8 ==.
                           1492 ;	c:/SiLabs/MCU/Inc/c8051f320.h:205: sbit ACKRQ   = 0xC3;                   // Acknowledge request
   0206 D2 4E              1493 	setb	_ACKRQ
                    01A7   1494 	G$Usb0_Init$0$0 ==.
                    01A7   1495 	C$c8051f320.h$206$2$8 ==.
                           1496 ;	c:/SiLabs/MCU/Inc/c8051f320.h:206: sbit ARBLOST = 0xC2;                   // Arbitration lost indicator
   0208 D2 4F              1497 	setb	_ARBLOST
                    01A9   1498 	G$Usb0_Init$0$0 ==.
                    01A9   1499 	C$c8051f320.h$207$2$8 ==.
                           1500 ;	c:/SiLabs/MCU/Inc/c8051f320.h:207: sbit ACK     = 0xC1;                   // Acknowledge flag
   020A D2 50              1501 	setb	_ACK
                    01AB   1502 	G$Usb0_Init$0$0 ==.
                    01AB   1503 	C$c8051f320.h$208$2$8 ==.
                           1504 ;	c:/SiLabs/MCU/Inc/c8051f320.h:208: sbit SI      = 0xC0;                   // SMBus interrupt flag
   020C D2 51              1505 	setb	_SI
                    01AD   1506 	G$Usb0_Init$0$0 ==.
                    01AD   1507 	C$c8051f320.h$211$2$8 ==.
                           1508 ;	c:/SiLabs/MCU/Inc/c8051f320.h:211: sbit TF2H    = 0xCF;                   // Timer2 high byte overflow flag
   020E D2 52              1509 	setb	_TF2H
                    01AF   1510 	G$Usb0_Init$0$0 ==.
                    01AF   1511 	C$c8051f320.h$212$2$8 ==.
                           1512 ;	c:/SiLabs/MCU/Inc/c8051f320.h:212: sbit TF2L    = 0xCE;                   // Timer2 low byte overflow flag
   0210 D2 53              1513 	setb	_TF2L
                    01B1   1514 	G$Usb0_Init$0$0 ==.
                    01B1   1515 	C$c8051f320.h$213$2$8 ==.
                           1516 ;	c:/SiLabs/MCU/Inc/c8051f320.h:213: sbit TF2LEN  = 0xCD;                   // Timer2 low byte interrupt enable
   0212 D2 54              1517 	setb	_TF2LEN
                    01B3   1518 	G$Usb0_Init$0$0 ==.
                    01B3   1519 	C$c8051f320.h$214$2$8 ==.
                           1520 ;	c:/SiLabs/MCU/Inc/c8051f320.h:214: sbit T2SOF   = 0xCC;                   // Timer2 start-of-frame capture enable
   0214 D2 55              1521 	setb	_T2SOF
                    01B5   1522 	G$Usb0_Init$0$0 ==.
                    01B5   1523 	C$c8051f320.h$215$2$8 ==.
                           1524 ;	c:/SiLabs/MCU/Inc/c8051f320.h:215: sbit T2SPLIT = 0xCB;                   // Timer2 split mode enable
   0216 D2 56              1525 	setb	_T2SPLIT
                    01B7   1526 	G$Usb0_Init$0$0 ==.
                    01B7   1527 	C$c8051f320.h$216$2$8 ==.
                           1528 ;	c:/SiLabs/MCU/Inc/c8051f320.h:216: sbit TR2     = 0xCA;                   // Timer2 on/off control
   0218 D2 57              1529 	setb	_TR2
                    01B9   1530 	G$Usb0_Init$0$0 ==.
                    01B9   1531 	C$c8051f320.h$218$2$8 ==.
                           1532 ;	c:/SiLabs/MCU/Inc/c8051f320.h:218: sbit T2XCLK  = 0xC8;                   // Timer2 external clock select
   021A D2 58              1533 	setb	_T2XCLK
                    01BB   1534 	G$Usb0_Init$0$0 ==.
                    01BB   1535 	C$c8051f320.h$221$2$8 ==.
                           1536 ;	c:/SiLabs/MCU/Inc/c8051f320.h:221: sbit CY      = 0xD7;                   // Carry flag
   021C D2 59              1537 	setb	_CY
                    01BD   1538 	G$Usb0_Init$0$0 ==.
                    01BD   1539 	C$c8051f320.h$222$2$8 ==.
                           1540 ;	c:/SiLabs/MCU/Inc/c8051f320.h:222: sbit AC      = 0xD6;                   // Auxiliary carry flag
   021E D2 5A              1541 	setb	_AC
                    01BF   1542 	G$Usb0_Init$0$0 ==.
                    01BF   1543 	C$c8051f320.h$223$2$8 ==.
                           1544 ;	c:/SiLabs/MCU/Inc/c8051f320.h:223: sbit F0      = 0xD5;                   // User flag 0
   0220 D2 5B              1545 	setb	_F0
                    01C1   1546 	G$Usb0_Init$0$0 ==.
                    01C1   1547 	C$c8051f320.h$224$2$8 ==.
                           1548 ;	c:/SiLabs/MCU/Inc/c8051f320.h:224: sbit RS1     = 0xD4;                   // Register bank select 1
   0222 D2 5C              1549 	setb	_RS1
                    01C3   1550 	G$Usb0_Init$0$0 ==.
                    01C3   1551 	C$c8051f320.h$225$2$8 ==.
                           1552 ;	c:/SiLabs/MCU/Inc/c8051f320.h:225: sbit RS0     = 0xD3;                   // Register bank select 0
   0224 D2 5D              1553 	setb	_RS0
                    01C5   1554 	G$Usb0_Init$0$0 ==.
                    01C5   1555 	C$c8051f320.h$226$2$8 ==.
                           1556 ;	c:/SiLabs/MCU/Inc/c8051f320.h:226: sbit OV      = 0xD2;                   // Overflow flag
   0226 D2 5E              1557 	setb	_OV
                    01C7   1558 	G$Usb0_Init$0$0 ==.
                    01C7   1559 	C$c8051f320.h$227$2$8 ==.
                           1560 ;	c:/SiLabs/MCU/Inc/c8051f320.h:227: sbit F1      = 0xD1;                   // User flag 1
   0228 D2 5F              1561 	setb	_F1
                    01C9   1562 	G$Usb0_Init$0$0 ==.
                    01C9   1563 	C$c8051f320.h$228$2$8 ==.
                           1564 ;	c:/SiLabs/MCU/Inc/c8051f320.h:228: sbit P       = 0xD0;                   // Accumulator parity flag
   022A D2 60              1565 	setb	_P
                    01CB   1566 	G$Usb0_Init$0$0 ==.
                    01CB   1567 	C$c8051f320.h$231$2$8 ==.
                           1568 ;	c:/SiLabs/MCU/Inc/c8051f320.h:231: sbit CF      = 0xDF;                   // PCA0 counter overflow flag
   022C D2 61              1569 	setb	_CF
                    01CD   1570 	G$Usb0_Init$0$0 ==.
                    01CD   1571 	C$c8051f320.h$232$2$8 ==.
                           1572 ;	c:/SiLabs/MCU/Inc/c8051f320.h:232: sbit CR      = 0xDE;                   // PCA0 counter run control
   022E D2 62              1573 	setb	_CR
                    01CF   1574 	G$Usb0_Init$0$0 ==.
                    01CF   1575 	C$c8051f320.h$234$2$8 ==.
                           1576 ;	c:/SiLabs/MCU/Inc/c8051f320.h:234: sbit CCF4    = 0xDC;                   // PCA0 module4 capture/compare flag
   0230 D2 63              1577 	setb	_CCF4
                    01D1   1578 	G$Usb0_Init$0$0 ==.
                    01D1   1579 	C$c8051f320.h$235$2$8 ==.
                           1580 ;	c:/SiLabs/MCU/Inc/c8051f320.h:235: sbit CCF3    = 0xDB;                   // PCA0 module3 capture/compare flag
   0232 D2 64              1581 	setb	_CCF3
                    01D3   1582 	G$Usb0_Init$0$0 ==.
                    01D3   1583 	C$c8051f320.h$236$2$8 ==.
                           1584 ;	c:/SiLabs/MCU/Inc/c8051f320.h:236: sbit CCF2    = 0xDA;                   // PCA0 module2 capture/compare flag
   0234 D2 65              1585 	setb	_CCF2
                    01D5   1586 	G$Usb0_Init$0$0 ==.
                    01D5   1587 	C$c8051f320.h$237$2$8 ==.
                           1588 ;	c:/SiLabs/MCU/Inc/c8051f320.h:237: sbit CCF1    = 0xD9;                   // PCA0 module1 capture/compare flag
   0236 D2 66              1589 	setb	_CCF1
                    01D7   1590 	G$Usb0_Init$0$0 ==.
                    01D7   1591 	C$c8051f320.h$238$2$8 ==.
                           1592 ;	c:/SiLabs/MCU/Inc/c8051f320.h:238: sbit CCF0    = 0xD8;                   // PCA0 module0 capture/compare flag
   0238 D2 67              1593 	setb	_CCF0
                    01D9   1594 	G$Usb0_Init$0$0 ==.
                    01D9   1595 	C$c8051f320.h$241$2$8 ==.
                           1596 ;	c:/SiLabs/MCU/Inc/c8051f320.h:241: sbit AD0EN   = 0xEF;                   // ADC0 enable
   023A D2 68              1597 	setb	_AD0EN
                    01DB   1598 	G$Usb0_Init$0$0 ==.
                    01DB   1599 	C$c8051f320.h$242$2$8 ==.
                           1600 ;	c:/SiLabs/MCU/Inc/c8051f320.h:242: sbit AD0TM   = 0xEE;                   // ADC0 track mode
   023C D2 69              1601 	setb	_AD0TM
                    01DD   1602 	G$Usb0_Init$0$0 ==.
                    01DD   1603 	C$c8051f320.h$243$2$8 ==.
                           1604 ;	c:/SiLabs/MCU/Inc/c8051f320.h:243: sbit AD0INT  = 0xED;                   // ADC0 converision complete interrupt flag
   023E D2 6A              1605 	setb	_AD0INT
                    01DF   1606 	G$Usb0_Init$0$0 ==.
                    01DF   1607 	C$c8051f320.h$244$2$8 ==.
                           1608 ;	c:/SiLabs/MCU/Inc/c8051f320.h:244: sbit AD0BUSY = 0xEC;                   // ADC0 busy flag
   0240 D2 6B              1609 	setb	_AD0BUSY
                    01E1   1610 	G$Usb0_Init$0$0 ==.
                    01E1   1611 	C$c8051f320.h$245$2$8 ==.
                           1612 ;	c:/SiLabs/MCU/Inc/c8051f320.h:245: sbit AD0WINT = 0xEB;                   // ADC0 window compare interrupt flag
   0242 D2 6C              1613 	setb	_AD0WINT
                    01E3   1614 	G$Usb0_Init$0$0 ==.
                    01E3   1615 	C$c8051f320.h$246$2$8 ==.
                           1616 ;	c:/SiLabs/MCU/Inc/c8051f320.h:246: sbit AD0CM2  = 0xEA;                   // ADC0 conversion mode select 2
   0244 D2 6D              1617 	setb	_AD0CM2
                    01E5   1618 	G$Usb0_Init$0$0 ==.
                    01E5   1619 	C$c8051f320.h$247$2$8 ==.
                           1620 ;	c:/SiLabs/MCU/Inc/c8051f320.h:247: sbit AD0CM1  = 0xE9;                   // ADC0 conversion mode select 1
   0246 D2 6E              1621 	setb	_AD0CM1
                    01E7   1622 	G$Usb0_Init$0$0 ==.
                    01E7   1623 	C$c8051f320.h$248$2$8 ==.
                           1624 ;	c:/SiLabs/MCU/Inc/c8051f320.h:248: sbit AD0CM0  = 0xE8;                   // ADC0 conversion mode select 0
   0248 D2 6F              1625 	setb	_AD0CM0
                    01E9   1626 	G$Usb0_Init$0$0 ==.
                    01E9   1627 	C$c8051f320.h$251$2$8 ==.
                           1628 ;	c:/SiLabs/MCU/Inc/c8051f320.h:251: sbit SPIF    = 0xFF;                   // SPI0 interrupt flag
   024A D2 70              1629 	setb	_SPIF
                    01EB   1630 	G$Usb0_Init$0$0 ==.
                    01EB   1631 	C$c8051f320.h$252$2$8 ==.
                           1632 ;	c:/SiLabs/MCU/Inc/c8051f320.h:252: sbit WCOL    = 0xFE;                   // SPI0 write collision flag
   024C D2 71              1633 	setb	_WCOL
                    01ED   1634 	G$Usb0_Init$0$0 ==.
                    01ED   1635 	C$c8051f320.h$253$2$8 ==.
                           1636 ;	c:/SiLabs/MCU/Inc/c8051f320.h:253: sbit MODF    = 0xFD;                   // SPI0 mode fault flag
   024E D2 72              1637 	setb	_MODF
                    01EF   1638 	G$Usb0_Init$0$0 ==.
                    01EF   1639 	C$c8051f320.h$254$2$8 ==.
                           1640 ;	c:/SiLabs/MCU/Inc/c8051f320.h:254: sbit RXOVRN  = 0xFC;                   // SPI0 rx overrun flag
   0250 D2 73              1641 	setb	_RXOVRN
                    01F1   1642 	G$Usb0_Init$0$0 ==.
                    01F1   1643 	C$c8051f320.h$255$2$8 ==.
                           1644 ;	c:/SiLabs/MCU/Inc/c8051f320.h:255: sbit NSSMD1  = 0xFB;                   // SPI0 slave select mode 1
   0252 D2 74              1645 	setb	_NSSMD1
                    01F3   1646 	G$Usb0_Init$0$0 ==.
                    01F3   1647 	C$c8051f320.h$256$2$8 ==.
                           1648 ;	c:/SiLabs/MCU/Inc/c8051f320.h:256: sbit NSSMD0  = 0xFA;                   // SPI0 slave select mode 0
   0254 D2 75              1649 	setb	_NSSMD0
                    01F5   1650 	G$Usb0_Init$0$0 ==.
                    01F5   1651 	C$c8051f320.h$257$2$8 ==.
                           1652 ;	c:/SiLabs/MCU/Inc/c8051f320.h:257: sbit TXBMT   = 0xF9;                   // SPI0 transmit buffer empty
   0256 D2 76              1653 	setb	_TXBMT
                    01F7   1654 	G$Usb0_Init$0$0 ==.
                    01F7   1655 	C$c8051f320.h$258$2$8 ==.
                           1656 ;	c:/SiLabs/MCU/Inc/c8051f320.h:258: sbit SPIEN   = 0xF8;                   // SPI0 SPI enable
   0258 D2 77              1657 	setb	_SPIEN
                           1658 	.area GSFINAL (CODE)
   062D 02 00 03           1659 	ljmp	__sdcc_program_startup
                           1660 ;--------------------------------------------------------
                           1661 ; Home
                           1662 ;--------------------------------------------------------
                           1663 	.area HOME    (CODE)
                           1664 	.area HOME    (CODE)
   0003                    1665 __sdcc_program_startup:
   0003 12 06 30           1666 	lcall	_main
                           1667 ;	return from main will lock up
   0006 80 FE              1668 	sjmp .
                           1669 ;--------------------------------------------------------
                           1670 ; code
                           1671 ;--------------------------------------------------------
                           1672 	.area CSEG    (CODE)
                           1673 ;------------------------------------------------------------
                           1674 ;Allocation info for local variables in function 'main'
                           1675 ;------------------------------------------------------------
                           1676 ;------------------------------------------------------------
                    0000   1677 	G$main$0$0 ==.
                    0000   1678 	C$Main.c$40$0$0 ==.
                           1679 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:40: void main(void)
                           1680 ;	-----------------------------------------
                           1681 ;	 function main
                           1682 ;	-----------------------------------------
   0630                    1683 _main:
                    0002   1684 	ar2 = 0x02
                    0003   1685 	ar3 = 0x03
                    0004   1686 	ar4 = 0x04
                    0005   1687 	ar5 = 0x05
                    0006   1688 	ar6 = 0x06
                    0007   1689 	ar7 = 0x07
                    0000   1690 	ar0 = 0x00
                    0001   1691 	ar1 = 0x01
                    0000   1692 	C$Main.c$42$1$1 ==.
                           1693 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:42: PCA0MD &= ~0x40;                    // Disable Watchdog timer
   0630 53 09 BF           1694 	anl	_PCA0MD,#0xBF
                    0003   1695 	C$Main.c$44$1$1 ==.
                           1696 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:44: Sysclk_Init();                      // Initialize oscillator
   0633 12 06 47           1697 	lcall	_Sysclk_Init
                    0006   1698 	C$Main.c$45$1$1 ==.
                           1699 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:45: Port_Init();                        // Initialize crossbar and GPIO
   0636 12 06 6A           1700 	lcall	_Port_Init
                    0009   1701 	C$Main.c$46$1$1 ==.
                           1702 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:46: SPI_Init();						   // Initialize the Chip interface
   0639 12 07 21           1703 	lcall	_SPI_Init
                    000C   1704 	C$Main.c$47$1$1 ==.
                           1705 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:47: DAC_Init();						   // Initialize the DAC
   063C 12 07 4E           1706 	lcall	_DAC_Init
                    000F   1707 	C$Main.c$48$1$1 ==.
                           1708 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:48: ADC_Init();						   // Initialize the ADC
   063F 12 08 50           1709 	lcall	_ADC_Init
                    0012   1710 	C$Main.c$49$1$1 ==.
                           1711 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:49: Usb0_Init();                        // Initialize USB0
   0642 12 08 98           1712 	lcall	_Usb0_Init
                    0015   1713 	C$Main.c$51$1$1 ==.
                           1714 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:51: while (1) ;
   0645                    1715 00102$:
                    0015   1716 	C$Main.c$52$1$1 ==.
                    0015   1717 	XG$main$0$0 ==.
   0645 80 FE              1718 	sjmp	00102$
                           1719 ;------------------------------------------------------------
                           1720 ;Allocation info for local variables in function 'Sysclk_Init'
                           1721 ;------------------------------------------------------------
                           1722 ;delay                     Allocated to registers r2 
                           1723 ;------------------------------------------------------------
                    0017   1724 	G$Sysclk_Init$0$0 ==.
                    0017   1725 	C$Main.c$69$1$1 ==.
                           1726 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:69: void Sysclk_Init(void)
                           1727 ;	-----------------------------------------
                           1728 ;	 function Sysclk_Init
                           1729 ;	-----------------------------------------
   0647                    1730 _Sysclk_Init:
                    0017   1731 	C$Main.c$76$1$1 ==.
                           1732 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:76: OSCICN = 0x83;
   0647 75 EA 83           1733 	mov	_OSCICN,#0x83
                    001A   1734 	C$Main.c$80$1$1 ==.
                           1735 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:80: CLKMUL = 0x00;
   064A 75 EF 00           1736 	mov	_CLKMUL,#0x00
                    001D   1737 	C$Main.c$83$1$1 ==.
                           1738 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:83: CLKMUL |= 0x80;
   064D 43 EF 80           1739 	orl	_CLKMUL,#0x80
                    0020   1740 	C$Main.c$87$1$1 ==.
                           1741 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:87: while (delay--);
   0650 7A 64              1742 	mov	r2,#0x64
   0652                    1743 00101$:
   0652 8A 03              1744 	mov	ar3,r2
   0654 1A                 1745 	dec	r2
   0655 EB                 1746 	mov	a,r3
   0656 70 FA              1747 	jnz	00101$
                    0028   1748 	C$Main.c$90$1$1 ==.
                           1749 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:90: CLKMUL |= 0xC0;
   0658 43 EF C0           1750 	orl	_CLKMUL,#0xC0
                    002B   1751 	C$Main.c$93$1$1 ==.
                           1752 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:93: while ((CLKMUL & MULRDY) != MULRDY) ;
   065B                    1753 00104$:
   065B 74 20              1754 	mov	a,#0x20
   065D 55 EF              1755 	anl	a,_CLKMUL
   065F FA                 1756 	mov	r2,a
   0660 BA 20 F8           1757 	cjne	r2,#0x20,00104$
                    0033   1758 	C$Main.c$96$1$1 ==.
                           1759 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:96: CLKSEL = 0x02;		// USB clock = 4*(Int Osc)
   0663 75 E6 02           1760 	mov	_CLKSEL,#0x02
                    0036   1761 	C$Main.c$101$1$1 ==.
                           1762 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:101: RSTSRC = 0x04;
   0666 75 1C 04           1763 	mov	_RSTSRC,#0x04
                    0039   1764 	C$Main.c$102$1$1 ==.
                    0039   1765 	XG$Sysclk_Init$0$0 ==.
   0669 22                 1766 	ret
                           1767 ;------------------------------------------------------------
                           1768 ;Allocation info for local variables in function 'Port_Init'
                           1769 ;------------------------------------------------------------
                           1770 ;------------------------------------------------------------
                    003A   1771 	G$Port_Init$0$0 ==.
                    003A   1772 	C$Main.c$141$1$1 ==.
                           1773 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:141: void Port_Init (void)
                           1774 ;	-----------------------------------------
                           1775 ;	 function Port_Init
                           1776 ;	-----------------------------------------
   066A                    1777 _Port_Init:
                    003A   1778 	C$Main.c$144$1$1 ==.
                           1779 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:144: P0MDIN = 0xFF;
   066A 75 1E FF           1780 	mov	_P0MDIN,#0xFF
                    003D   1781 	C$Main.c$145$1$1 ==.
                           1782 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:145: P1MDIN = 0xFF;
   066D 75 1F FF           1783 	mov	_P1MDIN,#0xFF
                    0040   1784 	C$Main.c$146$1$1 ==.
                           1785 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:146: P2MDIN = 0xFF;
   0670 75 20 FF           1786 	mov	_P2MDIN,#0xFF
                    0043   1787 	C$Main.c$147$1$1 ==.
                           1788 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:147: P3MDIN = 0xFF;
   0673 75 21 FF           1789 	mov	_P3MDIN,#0xFF
                    0046   1790 	C$Main.c$150$1$1 ==.
                           1791 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:150: P0MDOUT = 0xFF;
   0676 75 E1 FF           1792 	mov	_P0MDOUT,#0xFF
                    0049   1793 	C$Main.c$151$1$1 ==.
                           1794 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:151: P1MDOUT = 0xFF;
   0679 75 E2 FF           1795 	mov	_P1MDOUT,#0xFF
                    004C   1796 	C$Main.c$152$1$1 ==.
                           1797 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:152: P2MDOUT = 0xFF;
   067C 75 E3 FF           1798 	mov	_P2MDOUT,#0xFF
                    004F   1799 	C$Main.c$153$1$1 ==.
                           1800 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:153: P3MDOUT = 0xFF;
   067F 75 E4 FF           1801 	mov	_P3MDOUT,#0xFF
                    0052   1802 	C$Main.c$156$1$1 ==.
                           1803 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:156: P0SKIP = 0x00;
   0682 75 04 00           1804 	mov	_P0SKIP,#0x00
                    0055   1805 	C$Main.c$157$1$1 ==.
                           1806 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:157: P1SKIP = 0x00;
   0685 75 05 00           1807 	mov	_P1SKIP,#0x00
                    0058   1808 	C$Main.c$158$1$1 ==.
                           1809 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:158: P2SKIP = 0x00;
   0688 75 06 00           1810 	mov	_P2SKIP,#0x00
                    005B   1811 	C$Main.c$164$1$1 ==.
                           1812 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:164: XBR0 = 0x02;				// Only SPI selected, automatically assigned:
   068B 75 10 02           1813 	mov	_XBR0,#0x02
                    005E   1814 	C$Main.c$168$1$1 ==.
                           1815 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:168: XBR1 = 0x40;				// Enable crossbar and weak pull-ups
   068E 75 11 40           1816 	mov	_XBR1,#0x40
                    0061   1817 	C$Main.c$183$1$1 ==.
                           1818 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:183: POLL_WRITE_BYTE(bNotADCCS, 1);
   0691                    1819 00101$:
   0691 E5 D0              1820 	mov	a,_USB0ADR
   0693 20 E7 FB           1821 	jb	acc.7,00101$
   0696 75 D0 A1           1822 	mov	_USB0ADR,#0xA1
   0699 75 D1 01           1823 	mov	_USB0DAT,#0x01
                    006C   1824 	C$Main.c$184$1$1 ==.
                           1825 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:184: POLL_WRITE_BYTE(bNotDACCS, 1);
   069C                    1826 00104$:
   069C E5 D0              1827 	mov	a,_USB0ADR
   069E 20 E7 FB           1828 	jb	acc.7,00104$
   06A1 75 D0 94           1829 	mov	_USB0ADR,#0x94
   06A4 75 D1 01           1830 	mov	_USB0DAT,#0x01
                    0077   1831 	C$Main.c$185$1$1 ==.
                           1832 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:185: POLL_WRITE_BYTE(bNotRAMCS, 1);
   06A7                    1833 00107$:
   06A7 E5 D0              1834 	mov	a,_USB0ADR
   06A9 20 E7 FB           1835 	jb	acc.7,00107$
   06AC 75 D0 A6           1836 	mov	_USB0ADR,#0xA6
   06AF 75 D1 01           1837 	mov	_USB0DAT,#0x01
                    0082   1838 	C$Main.c$186$1$1 ==.
                           1839 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:186: POLL_WRITE_BYTE(bNotRAMHold, 1);
   06B2                    1840 00110$:
   06B2 E5 D0              1841 	mov	a,_USB0ADR
   06B4 20 E7 FB           1842 	jb	acc.7,00110$
   06B7 75 D0 A7           1843 	mov	_USB0ADR,#0xA7
   06BA 75 D1 01           1844 	mov	_USB0DAT,#0x01
                    008D   1845 	C$Main.c$187$1$1 ==.
                           1846 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:187: POLL_WRITE_BYTE(bMtrDrvrEn, 1);			// Enable/disable (0/1) stepper motor driver
   06BD                    1847 00113$:
   06BD E5 D0              1848 	mov	a,_USB0ADR
   06BF 20 E7 FB           1849 	jb	acc.7,00113$
   06C2 75 D0 85           1850 	mov	_USB0ADR,#0x85
   06C5 75 D1 01           1851 	mov	_USB0DAT,#0x01
                    0098   1852 	C$Main.c$189$1$1 ==.
                           1853 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:189: POLL_WRITE_BYTE(bMtr1Dir, 0);
   06C8                    1854 00116$:
   06C8 E5 D0              1855 	mov	a,_USB0ADR
   06CA 20 E7 FB           1856 	jb	acc.7,00116$
   06CD 75 D0 86           1857 	mov	_USB0ADR,#0x86
   06D0 75 D1 00           1858 	mov	_USB0DAT,#0x00
                    00A3   1859 	C$Main.c$190$1$1 ==.
                           1860 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:190: POLL_WRITE_BYTE(bMtr2Dir, 0);
   06D3                    1861 00119$:
   06D3 E5 D0              1862 	mov	a,_USB0ADR
   06D5 20 E7 FB           1863 	jb	acc.7,00119$
   06D8 75 D0 83           1864 	mov	_USB0ADR,#0x83
   06DB 75 D1 00           1865 	mov	_USB0DAT,#0x00
                    00AE   1866 	C$Main.c$191$1$1 ==.
                           1867 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:191: POLL_WRITE_BYTE(bMtr1Step, 0);
   06DE                    1868 00122$:
   06DE E5 D0              1869 	mov	a,_USB0ADR
   06E0 20 E7 FB           1870 	jb	acc.7,00122$
   06E3 75 D0 87           1871 	mov	_USB0ADR,#0x87
   06E6 75 D1 00           1872 	mov	_USB0DAT,#0x00
                    00B9   1873 	C$Main.c$192$1$1 ==.
                           1874 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:192: POLL_WRITE_BYTE(bMtr2Step, 0);
   06E9                    1875 00125$:
   06E9 E5 D0              1876 	mov	a,_USB0ADR
   06EB 20 E7 FB           1877 	jb	acc.7,00125$
   06EE 75 D0 84           1878 	mov	_USB0ADR,#0x84
   06F1 75 D1 00           1879 	mov	_USB0DAT,#0x00
                    00C4   1880 	C$Main.c$193$1$1 ==.
                           1881 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:193: POLL_WRITE_BYTE(bLaser, 0);					// Disable laswer power
   06F4                    1882 00128$:
   06F4 E5 D0              1883 	mov	a,_USB0ADR
   06F6 20 E7 FB           1884 	jb	acc.7,00128$
   06F9 75 D0 92           1885 	mov	_USB0ADR,#0x92
   06FC 75 D1 00           1886 	mov	_USB0DAT,#0x00
                    00CF   1887 	C$Main.c$194$1$1 ==.
                           1888 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:194: POLL_WRITE_BYTE(bOutputEnable, 0);			// Disable the output until we're ready
   06FF                    1889 00131$:
   06FF E5 D0              1890 	mov	a,_USB0ADR
   0701 20 E7 FB           1891 	jb	acc.7,00131$
   0704 75 D0 A3           1892 	mov	_USB0ADR,#0xA3
   0707 75 D1 00           1893 	mov	_USB0DAT,#0x00
                    00DA   1894 	C$Main.c$195$1$1 ==.
                           1895 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:195: POLL_WRITE_BYTE(bPos, 1);					// Positive voltage and current
   070A                    1896 00134$:
   070A E5 D0              1897 	mov	a,_USB0ADR
   070C 20 E7 FB           1898 	jb	acc.7,00134$
   070F 75 D0 A0           1899 	mov	_USB0ADR,#0xA0
   0712 75 D1 01           1900 	mov	_USB0DAT,#0x01
                    00E5   1901 	C$Main.c$196$1$1 ==.
                           1902 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:196: POLL_WRITE_BYTE(bCal, 0);					// Not in calibration state
   0715                    1903 00137$:
   0715 E5 D0              1904 	mov	a,_USB0ADR
   0717 20 E7 FB           1905 	jb	acc.7,00137$
   071A 75 D0 97           1906 	mov	_USB0ADR,#0x97
   071D 75 D1 00           1907 	mov	_USB0DAT,#0x00
                    00F0   1908 	C$Main.c$197$2$14 ==.
                    00F0   1909 	XG$Port_Init$0$0 ==.
   0720 22                 1910 	ret
                           1911 ;------------------------------------------------------------
                           1912 ;Allocation info for local variables in function 'SPI_Init'
                           1913 ;------------------------------------------------------------
                           1914 ;------------------------------------------------------------
                    00F1   1915 	G$SPI_Init$0$0 ==.
                    00F1   1916 	C$Main.c$211$2$14 ==.
                           1917 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:211: void SPI_Init (void)
                           1918 ;	-----------------------------------------
                           1919 ;	 function SPI_Init
                           1920 ;	-----------------------------------------
   0721                    1921 _SPI_Init:
                    00F1   1922 	C$Main.c$214$1$1 ==.
                           1923 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:214: POLL_WRITE_BYTE(bNotDACCS, 1);
   0721                    1924 00101$:
   0721 E5 D0              1925 	mov	a,_USB0ADR
   0723 20 E7 FB           1926 	jb	acc.7,00101$
   0726 75 D0 94           1927 	mov	_USB0ADR,#0x94
   0729 75 D1 01           1928 	mov	_USB0DAT,#0x01
                    00FC   1929 	C$Main.c$215$1$1 ==.
                           1930 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:215: POLL_WRITE_BYTE(bNotADCCS, 1);
   072C                    1931 00104$:
   072C E5 D0              1932 	mov	a,_USB0ADR
   072E 20 E7 FB           1933 	jb	acc.7,00104$
   0731 75 D0 A1           1934 	mov	_USB0ADR,#0xA1
   0734 75 D1 01           1935 	mov	_USB0DAT,#0x01
                    0107   1936 	C$Main.c$216$1$1 ==.
                           1937 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:216: POLL_WRITE_BYTE(bNotRAMCS, 1);
   0737                    1938 00107$:
   0737 E5 D0              1939 	mov	a,_USB0ADR
   0739 20 E7 FB           1940 	jb	acc.7,00107$
   073C 75 D0 A6           1941 	mov	_USB0ADR,#0xA6
   073F 75 D1 01           1942 	mov	_USB0DAT,#0x01
                    0112   1943 	C$Main.c$227$1$1 ==.
                           1944 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:227: SPI0CFG = 0x50;				// 0x60 = 0101 0000
   0742 75 DC 50           1945 	mov	_SPI0CFG,#0x50
                    0115   1946 	C$Main.c$238$1$1 ==.
                           1947 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:238: SPI0CN = 0x01;				// 0x01 = 0000 0001
   0745 75 24 01           1948 	mov	_SPI0CN,#0x01
                    0118   1949 	C$Main.c$250$1$1 ==.
                           1950 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:250: SPI0CKR = 0x05;				// 0x00 = 0000 0101
   0748 75 DE 05           1951 	mov	_SPI0CKR,#0x05
                    011B   1952 	C$Main.c$253$1$1 ==.
                           1953 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:253: ESPI0 = 1;
   074B D2 3C              1954 	setb	_ESPI0
                    011D   1955 	C$Main.c$254$1$1 ==.
                    011D   1956 	XG$SPI_Init$0$0 ==.
   074D 22                 1957 	ret
                           1958 ;------------------------------------------------------------
                           1959 ;Allocation info for local variables in function 'DAC_Init'
                           1960 ;------------------------------------------------------------
                           1961 ;------------------------------------------------------------
                    011E   1962 	G$DAC_Init$0$0 ==.
                    011E   1963 	C$Main.c$268$1$1 ==.
                           1964 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:268: void DAC_Init (void)
                           1965 ;	-----------------------------------------
                           1966 ;	 function DAC_Init
                           1967 ;	-----------------------------------------
   074E                    1968 _DAC_Init:
                    011E   1969 	C$Main.c$271$1$1 ==.
                           1970 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:271: Writing_to_DAC = 1;
   074E 75 08 01           1971 	mov	_Writing_to_DAC,#0x01
   0751 E4                 1972 	clr	a
   0752 F5 09              1973 	mov	(_Writing_to_DAC + 1),a
                    0124   1974 	C$Main.c$284$1$1 ==.
                           1975 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:284: POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
   0754                    1976 00101$:
   0754 E5 D0              1977 	mov	a,_USB0ADR
   0756 20 E7 FB           1978 	jb	acc.7,00101$
   0759 75 D0 94           1979 	mov	_USB0ADR,#0x94
   075C 75 D1 00           1980 	mov	_USB0DAT,#0x00
                    012F   1981 	C$Main.c$285$1$1 ==.
                           1982 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:285: SPI0DAT = 0x08;					// 0x08 = 0000 1000
   075F 75 E0 08           1983 	mov	_SPI0DAT,#0x08
                    0132   1984 	C$Main.c$286$1$1 ==.
                           1985 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:286: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   0762                    1986 00104$:
   0762 74 01              1987 	mov	a,#0x01
   0764 B5 0C 06           1988 	cjne	a,_SPI_DAC_Bytes,00179$
   0767 E4                 1989 	clr	a
   0768 B5 0D 02           1990 	cjne	a,(_SPI_DAC_Bytes + 1),00179$
   076B 80 02              1991 	sjmp	00180$
   076D                    1992 00179$:
   076D 80 F3              1993 	sjmp	00104$
   076F                    1994 00180$:
                    013F   1995 	C$Main.c$287$1$1 ==.
                           1996 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:287: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   076F 75 E0 00           1997 	mov	_SPI0DAT,#0x00
                    0142   1998 	C$Main.c$288$1$1 ==.
                           1999 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:288: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   0772                    2000 00107$:
   0772 74 02              2001 	mov	a,#0x02
   0774 B5 0C 06           2002 	cjne	a,_SPI_DAC_Bytes,00181$
   0777 E4                 2003 	clr	a
   0778 B5 0D 02           2004 	cjne	a,(_SPI_DAC_Bytes + 1),00181$
   077B 80 02              2005 	sjmp	00182$
   077D                    2006 00181$:
   077D 80 F3              2007 	sjmp	00107$
   077F                    2008 00182$:
                    014F   2009 	C$Main.c$289$1$1 ==.
                           2010 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:289: SPI0DAT = 0x04;					// 0x04 = 0000 0100
   077F 75 E0 04           2011 	mov	_SPI0DAT,#0x04
                    0152   2012 	C$Main.c$290$1$1 ==.
                           2013 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:290: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
   0782                    2014 00110$:
   0782 74 03              2015 	mov	a,#0x03
   0784 B5 0C 06           2016 	cjne	a,_SPI_DAC_Bytes,00183$
   0787 E4                 2017 	clr	a
   0788 B5 0D 02           2018 	cjne	a,(_SPI_DAC_Bytes + 1),00183$
   078B 80 02              2019 	sjmp	00184$
   078D                    2020 00183$:
   078D 80 F3              2021 	sjmp	00110$
   078F                    2022 00184$:
                    015F   2023 	C$Main.c$291$1$1 ==.
                           2024 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:291: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
   078F E5 0C              2025 	mov	a,_SPI_DAC_Bytes
   0791 24 FD              2026 	add	a,#0xfd
   0793 F5 0C              2027 	mov	_SPI_DAC_Bytes,a
   0795 E5 0D              2028 	mov	a,(_SPI_DAC_Bytes + 1)
   0797 34 FF              2029 	addc	a,#0xff
   0799 F5 0D              2030 	mov	(_SPI_DAC_Bytes + 1),a
                    016B   2031 	C$Main.c$292$1$1 ==.
                           2032 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:292: POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication
   079B                    2033 00113$:
   079B E5 D0              2034 	mov	a,_USB0ADR
   079D 20 E7 FB           2035 	jb	acc.7,00113$
   07A0 75 D0 94           2036 	mov	_USB0ADR,#0x94
   07A3 75 D1 01           2037 	mov	_USB0DAT,#0x01
                    0176   2038 	C$Main.c$308$1$1 ==.
                           2039 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:308: POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
   07A6                    2040 00116$:
   07A6 E5 D0              2041 	mov	a,_USB0ADR
   07A8 20 E7 FB           2042 	jb	acc.7,00116$
   07AB 75 D0 94           2043 	mov	_USB0ADR,#0x94
   07AE 75 D1 00           2044 	mov	_USB0DAT,#0x00
                    0181   2045 	C$Main.c$309$1$1 ==.
                           2046 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:309: SPI0DAT = 0x19;					// 0x19 = 0001 1001
   07B1 75 E0 19           2047 	mov	_SPI0DAT,#0x19
                    0184   2048 	C$Main.c$310$1$1 ==.
                           2049 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:310: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   07B4                    2050 00119$:
   07B4 74 01              2051 	mov	a,#0x01
   07B6 B5 0C 06           2052 	cjne	a,_SPI_DAC_Bytes,00187$
   07B9 E4                 2053 	clr	a
   07BA B5 0D 02           2054 	cjne	a,(_SPI_DAC_Bytes + 1),00187$
   07BD 80 02              2055 	sjmp	00188$
   07BF                    2056 00187$:
   07BF 80 F3              2057 	sjmp	00119$
   07C1                    2058 00188$:
                    0191   2059 	C$Main.c$311$1$1 ==.
                           2060 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:311: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   07C1 75 E0 00           2061 	mov	_SPI0DAT,#0x00
                    0194   2062 	C$Main.c$312$1$1 ==.
                           2063 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:312: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   07C4                    2064 00122$:
   07C4 74 02              2065 	mov	a,#0x02
   07C6 B5 0C 06           2066 	cjne	a,_SPI_DAC_Bytes,00189$
   07C9 E4                 2067 	clr	a
   07CA B5 0D 02           2068 	cjne	a,(_SPI_DAC_Bytes + 1),00189$
   07CD 80 02              2069 	sjmp	00190$
   07CF                    2070 00189$:
   07CF 80 F3              2071 	sjmp	00122$
   07D1                    2072 00190$:
                    01A1   2073 	C$Main.c$313$1$1 ==.
                           2074 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:313: SPI0DAT = 0x0E;					// 0x0E = 0000 1110
   07D1 75 E0 0E           2075 	mov	_SPI0DAT,#0x0E
                    01A4   2076 	C$Main.c$314$1$1 ==.
                           2077 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:314: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
   07D4                    2078 00125$:
   07D4 74 03              2079 	mov	a,#0x03
   07D6 B5 0C 06           2080 	cjne	a,_SPI_DAC_Bytes,00191$
   07D9 E4                 2081 	clr	a
   07DA B5 0D 02           2082 	cjne	a,(_SPI_DAC_Bytes + 1),00191$
   07DD 80 02              2083 	sjmp	00192$
   07DF                    2084 00191$:
   07DF 80 F3              2085 	sjmp	00125$
   07E1                    2086 00192$:
                    01B1   2087 	C$Main.c$315$1$1 ==.
                           2088 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:315: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
   07E1 E5 0C              2089 	mov	a,_SPI_DAC_Bytes
   07E3 24 FD              2090 	add	a,#0xfd
   07E5 F5 0C              2091 	mov	_SPI_DAC_Bytes,a
   07E7 E5 0D              2092 	mov	a,(_SPI_DAC_Bytes + 1)
   07E9 34 FF              2093 	addc	a,#0xff
   07EB F5 0D              2094 	mov	(_SPI_DAC_Bytes + 1),a
                    01BD   2095 	C$Main.c$316$1$1 ==.
                           2096 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:316: POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication
   07ED                    2097 00128$:
   07ED E5 D0              2098 	mov	a,_USB0ADR
   07EF 20 E7 FB           2099 	jb	acc.7,00128$
   07F2 75 D0 94           2100 	mov	_USB0ADR,#0x94
   07F5 75 D1 01           2101 	mov	_USB0DAT,#0x01
                    01C8   2102 	C$Main.c$335$1$1 ==.
                           2103 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:335: POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
   07F8                    2104 00131$:
   07F8 E5 D0              2105 	mov	a,_USB0ADR
   07FA 20 E7 FB           2106 	jb	acc.7,00131$
   07FD 75 D0 94           2107 	mov	_USB0ADR,#0x94
   0800 75 D1 00           2108 	mov	_USB0DAT,#0x00
                    01D3   2109 	C$Main.c$336$1$1 ==.
                           2110 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:336: SPI0DAT = 0x10;					// 0x10 = 0001 0000
   0803 75 E0 10           2111 	mov	_SPI0DAT,#0x10
                    01D6   2112 	C$Main.c$337$1$1 ==.
                           2113 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:337: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   0806                    2114 00134$:
   0806 74 01              2115 	mov	a,#0x01
   0808 B5 0C 06           2116 	cjne	a,_SPI_DAC_Bytes,00195$
   080B E4                 2117 	clr	a
   080C B5 0D 02           2118 	cjne	a,(_SPI_DAC_Bytes + 1),00195$
   080F 80 02              2119 	sjmp	00196$
   0811                    2120 00195$:
   0811 80 F3              2121 	sjmp	00134$
   0813                    2122 00196$:
                    01E3   2123 	C$Main.c$338$1$1 ==.
                           2124 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:338: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   0813 75 E0 00           2125 	mov	_SPI0DAT,#0x00
                    01E6   2126 	C$Main.c$339$1$1 ==.
                           2127 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:339: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   0816                    2128 00137$:
   0816 74 02              2129 	mov	a,#0x02
   0818 B5 0C 06           2130 	cjne	a,_SPI_DAC_Bytes,00197$
   081B E4                 2131 	clr	a
   081C B5 0D 02           2132 	cjne	a,(_SPI_DAC_Bytes + 1),00197$
   081F 80 02              2133 	sjmp	00198$
   0821                    2134 00197$:
   0821 80 F3              2135 	sjmp	00137$
   0823                    2136 00198$:
                    01F3   2137 	C$Main.c$340$1$1 ==.
                           2138 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:340: SPI0DAT = 0x01;					// 0x0F = 0000 0001
   0823 75 E0 01           2139 	mov	_SPI0DAT,#0x01
                    01F6   2140 	C$Main.c$341$1$1 ==.
                           2141 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:341: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
   0826                    2142 00140$:
   0826 74 03              2143 	mov	a,#0x03
   0828 B5 0C 06           2144 	cjne	a,_SPI_DAC_Bytes,00199$
   082B E4                 2145 	clr	a
   082C B5 0D 02           2146 	cjne	a,(_SPI_DAC_Bytes + 1),00199$
   082F 80 02              2147 	sjmp	00200$
   0831                    2148 00199$:
   0831 80 F3              2149 	sjmp	00140$
   0833                    2150 00200$:
                    0203   2151 	C$Main.c$342$1$1 ==.
                           2152 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:342: SPI_DAC_Bytes -= 3;				// Reset byte TX counter
   0833 E5 0C              2153 	mov	a,_SPI_DAC_Bytes
   0835 24 FD              2154 	add	a,#0xfd
   0837 F5 0C              2155 	mov	_SPI_DAC_Bytes,a
   0839 E5 0D              2156 	mov	a,(_SPI_DAC_Bytes + 1)
   083B 34 FF              2157 	addc	a,#0xff
   083D F5 0D              2158 	mov	(_SPI_DAC_Bytes + 1),a
                    020F   2159 	C$Main.c$343$1$1 ==.
                           2160 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:343: POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication
   083F                    2161 00143$:
   083F E5 D0              2162 	mov	a,_USB0ADR
   0841 20 E7 FB           2163 	jb	acc.7,00143$
   0844 75 D0 94           2164 	mov	_USB0ADR,#0x94
   0847 75 D1 01           2165 	mov	_USB0DAT,#0x01
                    021A   2166 	C$Main.c$346$1$1 ==.
                           2167 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:346: Writing_to_DAC = 0;
   084A E4                 2168 	clr	a
   084B F5 08              2169 	mov	_Writing_to_DAC,a
   084D F5 09              2170 	mov	(_Writing_to_DAC + 1),a
                    021F   2171 	C$Main.c$347$1$1 ==.
                    021F   2172 	XG$DAC_Init$0$0 ==.
   084F 22                 2173 	ret
                           2174 ;------------------------------------------------------------
                           2175 ;Allocation info for local variables in function 'ADC_Init'
                           2176 ;------------------------------------------------------------
                           2177 ;------------------------------------------------------------
                    0220   2178 	G$ADC_Init$0$0 ==.
                    0220   2179 	C$Main.c$361$1$1 ==.
                           2180 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:361: void ADC_Init (void)
                           2181 ;	-----------------------------------------
                           2182 ;	 function ADC_Init
                           2183 ;	-----------------------------------------
   0850                    2184 _ADC_Init:
                    0220   2185 	C$Main.c$364$1$1 ==.
                           2186 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:364: Writing_to_ADC = 1;
   0850 75 0A 01           2187 	mov	_Writing_to_ADC,#0x01
   0853 E4                 2188 	clr	a
   0854 F5 0B              2189 	mov	(_Writing_to_ADC + 1),a
                    0226   2190 	C$Main.c$379$1$1 ==.
                           2191 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:379: SPI0CFG = 0x40;				// 0x60 = 0100 0000
   0856 75 DC 40           2192 	mov	_SPI0CFG,#0x40
                    0229   2193 	C$Main.c$391$1$1 ==.
                           2194 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:391: SPI0CKR = 0x05;				// 0x00 = 0000 0101
   0859 75 DE 05           2195 	mov	_SPI0CKR,#0x05
                    022C   2196 	C$Main.c$404$1$1 ==.
                           2197 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:404: POLL_WRITE_BYTE(bNotADCCS, 0);	// Select the DAC for SPI communication
   085C                    2198 00101$:
   085C E5 D0              2199 	mov	a,_USB0ADR
   085E 20 E7 FB           2200 	jb	acc.7,00101$
   0861 75 D0 A1           2201 	mov	_USB0ADR,#0xA1
   0864 75 D1 00           2202 	mov	_USB0DAT,#0x00
                    0237   2203 	C$Main.c$405$1$1 ==.
                           2204 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:405: SPI0DAT = 0xA0;					// 0xA0 = 1010 0000
   0867 75 E0 A0           2205 	mov	_SPI0DAT,#0xA0
                    023A   2206 	C$Main.c$406$1$1 ==.
                           2207 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:406: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   086A                    2208 00104$:
   086A 74 01              2209 	mov	a,#0x01
   086C B5 0C 06           2210 	cjne	a,_SPI_DAC_Bytes,00123$
   086F E4                 2211 	clr	a
   0870 B5 0D 02           2212 	cjne	a,(_SPI_DAC_Bytes + 1),00123$
   0873 80 02              2213 	sjmp	00124$
   0875                    2214 00123$:
   0875 80 F3              2215 	sjmp	00104$
   0877                    2216 00124$:
                    0247   2217 	C$Main.c$407$1$1 ==.
                           2218 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:407: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   0877 75 E0 00           2219 	mov	_SPI0DAT,#0x00
                    024A   2220 	C$Main.c$408$1$1 ==.
                           2221 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:408: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   087A                    2222 00107$:
   087A 74 02              2223 	mov	a,#0x02
   087C B5 0C 06           2224 	cjne	a,_SPI_DAC_Bytes,00125$
   087F E4                 2225 	clr	a
   0880 B5 0D 02           2226 	cjne	a,(_SPI_DAC_Bytes + 1),00125$
   0883 80 02              2227 	sjmp	00126$
   0885                    2228 00125$:
   0885 80 F3              2229 	sjmp	00107$
   0887                    2230 00126$:
                    0257   2231 	C$Main.c$409$1$1 ==.
                           2232 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:409: POLL_WRITE_BYTE(bNotADCCS, 1);	// Deselect the DAC for SPI communication
   0887                    2233 00110$:
   0887 E5 D0              2234 	mov	a,_USB0ADR
   0889 20 E7 FB           2235 	jb	acc.7,00110$
   088C 75 D0 A1           2236 	mov	_USB0ADR,#0xA1
   088F 75 D1 01           2237 	mov	_USB0DAT,#0x01
                    0262   2238 	C$Main.c$412$1$1 ==.
                           2239 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:412: Writing_to_ADC = 0;
   0892 E4                 2240 	clr	a
   0893 F5 0A              2241 	mov	_Writing_to_ADC,a
   0895 F5 0B              2242 	mov	(_Writing_to_ADC + 1),a
                    0267   2243 	C$Main.c$413$1$1 ==.
                    0267   2244 	XG$ADC_Init$0$0 ==.
   0897 22                 2245 	ret
                           2246 ;------------------------------------------------------------
                           2247 ;Allocation info for local variables in function 'Usb0_Init'
                           2248 ;------------------------------------------------------------
                           2249 ;Count                     Allocated to registers r2 
                           2250 ;------------------------------------------------------------
                    0268   2251 	G$Usb0_Init$0$0 ==.
                    0268   2252 	C$Main.c$428$1$1 ==.
                           2253 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:428: void Usb0_Init(void)
                           2254 ;	-----------------------------------------
                           2255 ;	 function Usb0_Init
                           2256 ;	-----------------------------------------
   0898                    2257 _Usb0_Init:
                    0268   2258 	C$Main.c$434$2$2 ==.
                           2259 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:434: for (Count = 0; Count < 64; Count++)
   0898 7A 00              2260 	mov	r2,#0x00
   089A                    2261 00119$:
   089A BA 40 00           2262 	cjne	r2,#0x40,00140$
   089D                    2263 00140$:
   089D 50 0F              2264 	jnc	00101$
                    026F   2265 	C$Main.c$436$2$2 ==.
                           2266 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:436: Out_Packet[Count] = 0;
   089F EA                 2267 	mov	a,r2
   08A0 24 3D              2268 	add	a,#_Out_Packet
   08A2 F8                 2269 	mov	r0,a
   08A3 76 00              2270 	mov	@r0,#0x00
                    0275   2271 	C$Main.c$437$2$2 ==.
                           2272 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:437: In_Packet[Count] = 0;
   08A5 EA                 2273 	mov	a,r2
   08A6 24 7D              2274 	add	a,#_In_Packet
   08A8 F8                 2275 	mov	r0,a
   08A9 76 00              2276 	mov	@r0,#0x00
                    027B   2277 	C$Main.c$434$1$1 ==.
                           2278 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:434: for (Count = 0; Count < 64; Count++)
   08AB 0A                 2279 	inc	r2
                    027C   2280 	C$Main.c$440$1$1 ==.
                           2281 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:440: POLL_WRITE_BYTE(POWER,  0x08);      // Force Asynchronous USB Reset
   08AC 80 EC              2282 	sjmp	00119$
   08AE                    2283 00101$:
   08AE E5 D0              2284 	mov	a,_USB0ADR
   08B0 20 E7 FB           2285 	jb	acc.7,00101$
   08B3 75 D0 01           2286 	mov	_USB0ADR,#0x01
   08B6 75 D1 08           2287 	mov	_USB0DAT,#0x08
                    0289   2288 	C$Main.c$441$1$1 ==.
                           2289 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:441: POLL_WRITE_BYTE(IN1IE,  0x07);      // Enable Endpoint 0-2 in interrupts
   08B9                    2290 00104$:
   08B9 E5 D0              2291 	mov	a,_USB0ADR
   08BB 20 E7 FB           2292 	jb	acc.7,00104$
   08BE 75 D0 07           2293 	mov	_USB0ADR,#0x07
   08C1 75 D1 07           2294 	mov	_USB0DAT,#0x07
                    0294   2295 	C$Main.c$442$1$1 ==.
                           2296 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:442: POLL_WRITE_BYTE(OUT1IE, 0x07);      // Enable Endpoint 0-2 out interrupts
   08C4                    2297 00107$:
   08C4 E5 D0              2298 	mov	a,_USB0ADR
   08C6 20 E7 FB           2299 	jb	acc.7,00107$
   08C9 75 D0 09           2300 	mov	_USB0ADR,#0x09
   08CC 75 D1 07           2301 	mov	_USB0DAT,#0x07
                    029F   2302 	C$Main.c$443$1$1 ==.
                           2303 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:443: POLL_WRITE_BYTE(CMIE,   0x07);      // Enable Reset,Resume,Suspend interrupts
   08CF                    2304 00110$:
   08CF E5 D0              2305 	mov	a,_USB0ADR
   08D1 20 E7 FB           2306 	jb	acc.7,00110$
   08D4 75 D0 0B           2307 	mov	_USB0ADR,#0x0B
   08D7 75 D1 07           2308 	mov	_USB0DAT,#0x07
                    02AA   2309 	C$Main.c$449$1$1 ==.
                           2310 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:449: USB0XCN = 0xE0;                     // Enable transceiver; select full speed
   08DA 75 07 E0           2311 	mov	_USB0XCN,#0xE0
                    02AD   2312 	C$Main.c$450$1$1 ==.
                           2313 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:450: POLL_WRITE_BYTE(CLKREC, 0x80);      // Enable clock recovery, single-step mode
   08DD                    2314 00113$:
   08DD E5 D0              2315 	mov	a,_USB0ADR
   08DF 20 E7 FB           2316 	jb	acc.7,00113$
   08E2 75 D0 0F           2317 	mov	_USB0ADR,#0x0F
   08E5 75 D1 80           2318 	mov	_USB0DAT,#0x80
                    02B8   2319 	C$Main.c$454$1$1 ==.
                           2320 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:454: EIE1 |= 0x02;                       // Enable USB0 Interrupts
   08E8 43 13 02           2321 	orl	_EIE1,#0x02
                    02BB   2322 	C$Main.c$455$1$1 ==.
                           2323 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:455: EA = 1;                             // Global Interrupt enable
   08EB D2 3B              2324 	setb	_EA
                    02BD   2325 	C$Main.c$458$1$1 ==.
                           2326 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Main.c:458: POLL_WRITE_BYTE(POWER,  0x01);      // and enable suspend detection
   08ED                    2327 00116$:
   08ED E5 D0              2328 	mov	a,_USB0ADR
   08EF 20 E7 FB           2329 	jb	acc.7,00116$
   08F2 75 D0 01           2330 	mov	_USB0ADR,#0x01
   08F5 75 D1 01           2331 	mov	_USB0DAT,#0x01
                    02C8   2332 	C$Main.c$459$2$8 ==.
                    02C8   2333 	XG$Usb0_Init$0$0 ==.
   08F8 22                 2334 	ret
                           2335 	.area CSEG    (CODE)
                           2336 	.area CONST   (CODE)
                           2337 	.area XINIT   (CODE)
                           2338 	.area CABS    (ABS,CODE)
