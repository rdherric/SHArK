                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Oct 28 02:58:57 2010
                              5 ;--------------------------------------------------------
                              6 	.module Interrupts
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _Fifo_Write_PARM_3
                             13 	.globl _Fifo_Write_PARM_2
                             14 	.globl _Fifo_Read_PARM_3
                             15 	.globl _Fifo_Read_PARM_2
                             16 	.globl _SPIEN
                             17 	.globl _TXBMT
                             18 	.globl _NSSMD0
                             19 	.globl _NSSMD1
                             20 	.globl _RXOVRN
                             21 	.globl _MODF
                             22 	.globl _WCOL
                             23 	.globl _SPIF
                             24 	.globl _AD0CM0
                             25 	.globl _AD0CM1
                             26 	.globl _AD0CM2
                             27 	.globl _AD0WINT
                             28 	.globl _AD0BUSY
                             29 	.globl _AD0INT
                             30 	.globl _AD0TM
                             31 	.globl _AD0EN
                             32 	.globl _CCF0
                             33 	.globl _CCF1
                             34 	.globl _CCF2
                             35 	.globl _CCF3
                             36 	.globl _CCF4
                             37 	.globl _CR
                             38 	.globl _CF
                             39 	.globl _P
                             40 	.globl _F1
                             41 	.globl _OV
                             42 	.globl _RS0
                             43 	.globl _RS1
                             44 	.globl _F0
                             45 	.globl _AC
                             46 	.globl _CY
                             47 	.globl _T2XCLK
                             48 	.globl _TR2
                             49 	.globl _T2SPLIT
                             50 	.globl _T2SOF
                             51 	.globl _TF2LEN
                             52 	.globl _TF2L
                             53 	.globl _TF2H
                             54 	.globl _SI
                             55 	.globl _ACK
                             56 	.globl _ARBLOST
                             57 	.globl _ACKRQ
                             58 	.globl _STO
                             59 	.globl _STA
                             60 	.globl _TXMODE
                             61 	.globl _MASTER
                             62 	.globl _PX0
                             63 	.globl _PT0
                             64 	.globl _PX1
                             65 	.globl _PT1
                             66 	.globl _PS0
                             67 	.globl _PT2
                             68 	.globl _PSPI0
                             69 	.globl _EX0
                             70 	.globl _ET0
                             71 	.globl _EX1
                             72 	.globl _ET1
                             73 	.globl _ES0
                             74 	.globl _ET2
                             75 	.globl _ESPI0
                             76 	.globl _EA
                             77 	.globl _RI0
                             78 	.globl _TI0
                             79 	.globl _RB80
                             80 	.globl _TB80
                             81 	.globl _REN0
                             82 	.globl _MCE0
                             83 	.globl _S0MODE
                             84 	.globl _IT0
                             85 	.globl _IE0
                             86 	.globl _IT1
                             87 	.globl _IE1
                             88 	.globl _TR0
                             89 	.globl _TF0
                             90 	.globl _TR1
                             91 	.globl _TF1
                             92 	.globl _VDM0CN
                             93 	.globl _PCA0CPH4
                             94 	.globl _PCA0CPL4
                             95 	.globl _PCA0CPH0
                             96 	.globl _PCA0CPL0
                             97 	.globl _PCA0H
                             98 	.globl _PCA0L
                             99 	.globl _SPI0CN
                            100 	.globl _EIP2
                            101 	.globl _EIP1
                            102 	.globl _P3MDIN
                            103 	.globl _P2MDIN
                            104 	.globl _P1MDIN
                            105 	.globl _P0MDIN
                            106 	.globl _B
                            107 	.globl _RSTSRC
                            108 	.globl _PCA0CPH3
                            109 	.globl _PCA0CPL3
                            110 	.globl _PCA0CPH2
                            111 	.globl _PCA0CPL2
                            112 	.globl _PCA0CPH1
                            113 	.globl _PCA0CPL1
                            114 	.globl _ADC0CN
                            115 	.globl _EIE2
                            116 	.globl _EIE1
                            117 	.globl _IT01CF
                            118 	.globl _XBR1
                            119 	.globl _XBR0
                            120 	.globl _ACC
                            121 	.globl _PCA0CPM4
                            122 	.globl _PCA0CPM3
                            123 	.globl _PCA0CPM2
                            124 	.globl _PCA0CPM1
                            125 	.globl _PCA0CPM0
                            126 	.globl _PCA0MD
                            127 	.globl _PCA0CN
                            128 	.globl _USB0XCN
                            129 	.globl _P2SKIP
                            130 	.globl _P1SKIP
                            131 	.globl _P0SKIP
                            132 	.globl _REF0CN
                            133 	.globl _PSW
                            134 	.globl _TMR2H
                            135 	.globl _TMR2L
                            136 	.globl _TMR2RLH
                            137 	.globl _TMR2RLL
                            138 	.globl _REG0CN
                            139 	.globl _TMR2CN
                            140 	.globl _ADC0LTH
                            141 	.globl _ADC0LTL
                            142 	.globl _ADC0GTH
                            143 	.globl _ADC0GTL
                            144 	.globl _SMB0DAT
                            145 	.globl _SMB0CF
                            146 	.globl _SMB0CN
                            147 	.globl _ADC0H
                            148 	.globl _ADC0L
                            149 	.globl _ADC0CF
                            150 	.globl _AMX0P
                            151 	.globl _AMX0N
                            152 	.globl _CLKMUL
                            153 	.globl _IP
                            154 	.globl _FLKEY
                            155 	.globl _FLSCL
                            156 	.globl _OSCICL
                            157 	.globl _OSCICN
                            158 	.globl _OSCXCN
                            159 	.globl _P3
                            160 	.globl _EMI0CN
                            161 	.globl _CLKSEL
                            162 	.globl _IE
                            163 	.globl _P3MDOUT
                            164 	.globl _P2MDOUT
                            165 	.globl _P1MDOUT
                            166 	.globl _P0MDOUT
                            167 	.globl _SPI0DAT
                            168 	.globl _SPIDAT
                            169 	.globl _SPI0CKR
                            170 	.globl _SPICKR
                            171 	.globl _SPI0CFG
                            172 	.globl _SPICFG
                            173 	.globl _P2
                            174 	.globl _CPT0MX
                            175 	.globl _CPT1MX
                            176 	.globl _CPT0MD
                            177 	.globl _CPT1MD
                            178 	.globl _CPT0CN
                            179 	.globl _CPT1CN
                            180 	.globl _SBUF0
                            181 	.globl _SCON0
                            182 	.globl _USB0DAT
                            183 	.globl _USB0ADR
                            184 	.globl _TMR3H
                            185 	.globl _TMR3L
                            186 	.globl _TMR3RLH
                            187 	.globl _TMR3RLL
                            188 	.globl _TMR3CN
                            189 	.globl _P1
                            190 	.globl _PSCTL
                            191 	.globl _CKCON
                            192 	.globl _TH1
                            193 	.globl _TH0
                            194 	.globl _TL1
                            195 	.globl _TL0
                            196 	.globl _TMOD
                            197 	.globl _TCON
                            198 	.globl _PCON
                            199 	.globl _DPH
                            200 	.globl _DPL
                            201 	.globl _SP
                            202 	.globl _P0
                            203 	.globl _Ep_Status
                            204 	.globl _DataPtr
                            205 	.globl _DataSent
                            206 	.globl _DataSize
                            207 	.globl _Setup
                            208 	.globl _USB_State
                            209 	.globl _Usb_ISR
                            210 	.globl _SPI_ISR
                            211 	.globl _Usb_Reset
                            212 	.globl _Handle_Setup
                            213 	.globl _Handle_In1
                            214 	.globl _Endpoint1
                            215 	.globl _SetVoltage
                            216 	.globl _SetLaser
                            217 	.globl _PulseMotor
                            218 	.globl _Handle_Out2
                            219 	.globl _Endpoint2
                            220 	.globl _ReadCurrent
                            221 	.globl _Usb_Suspend
                            222 	.globl _Usb_Resume
                            223 	.globl _Fifo_Read
                            224 	.globl _Fifo_Write
                            225 	.globl _Force_Stall
                            226 ;--------------------------------------------------------
                            227 ; special function registers
                            228 ;--------------------------------------------------------
                            229 	.area RSEG    (DATA)
                    0000    230 G$P0$0$0==.
   0178                     231 _P0::
   0178                     232 	.ds 1
                    0001    233 G$SP$0$0==.
   0179                     234 _SP::
   0179                     235 	.ds 1
                    0002    236 G$DPL$0$0==.
   017A                     237 _DPL::
   017A                     238 	.ds 1
                    0003    239 G$DPH$0$0==.
   017B                     240 _DPH::
   017B                     241 	.ds 1
                    0004    242 G$PCON$0$0==.
   017C                     243 _PCON::
   017C                     244 	.ds 1
                    0005    245 G$TCON$0$0==.
   017D                     246 _TCON::
   017D                     247 	.ds 1
                    0006    248 G$TMOD$0$0==.
   017E                     249 _TMOD::
   017E                     250 	.ds 1
                    0007    251 G$TL0$0$0==.
   017F                     252 _TL0::
   017F                     253 	.ds 1
                    0008    254 G$TL1$0$0==.
   0180                     255 _TL1::
   0180                     256 	.ds 1
                    0009    257 G$TH0$0$0==.
   0181                     258 _TH0::
   0181                     259 	.ds 1
                    000A    260 G$TH1$0$0==.
   0182                     261 _TH1::
   0182                     262 	.ds 1
                    000B    263 G$CKCON$0$0==.
   0183                     264 _CKCON::
   0183                     265 	.ds 1
                    000C    266 G$PSCTL$0$0==.
   0184                     267 _PSCTL::
   0184                     268 	.ds 1
                    000D    269 G$P1$0$0==.
   0185                     270 _P1::
   0185                     271 	.ds 1
                    000E    272 G$TMR3CN$0$0==.
   0186                     273 _TMR3CN::
   0186                     274 	.ds 1
                    000F    275 G$TMR3RLL$0$0==.
   0187                     276 _TMR3RLL::
   0187                     277 	.ds 1
                    0010    278 G$TMR3RLH$0$0==.
   0188                     279 _TMR3RLH::
   0188                     280 	.ds 1
                    0011    281 G$TMR3L$0$0==.
   0189                     282 _TMR3L::
   0189                     283 	.ds 1
                    0012    284 G$TMR3H$0$0==.
   018A                     285 _TMR3H::
   018A                     286 	.ds 1
                    0013    287 G$USB0ADR$0$0==.
   018B                     288 _USB0ADR::
   018B                     289 	.ds 1
                    0014    290 G$USB0DAT$0$0==.
   018C                     291 _USB0DAT::
   018C                     292 	.ds 1
                    0015    293 G$SCON0$0$0==.
   018D                     294 _SCON0::
   018D                     295 	.ds 1
                    0016    296 G$SBUF0$0$0==.
   018E                     297 _SBUF0::
   018E                     298 	.ds 1
                    0017    299 G$CPT1CN$0$0==.
   018F                     300 _CPT1CN::
   018F                     301 	.ds 1
                    0018    302 G$CPT0CN$0$0==.
   0190                     303 _CPT0CN::
   0190                     304 	.ds 1
                    0019    305 G$CPT1MD$0$0==.
   0191                     306 _CPT1MD::
   0191                     307 	.ds 1
                    001A    308 G$CPT0MD$0$0==.
   0192                     309 _CPT0MD::
   0192                     310 	.ds 1
                    001B    311 G$CPT1MX$0$0==.
   0193                     312 _CPT1MX::
   0193                     313 	.ds 1
                    001C    314 G$CPT0MX$0$0==.
   0194                     315 _CPT0MX::
   0194                     316 	.ds 1
                    001D    317 G$P2$0$0==.
   0195                     318 _P2::
   0195                     319 	.ds 1
                    001E    320 G$SPICFG$0$0==.
   0196                     321 _SPICFG::
   0196                     322 	.ds 1
                    001F    323 G$SPI0CFG$0$0==.
   0197                     324 _SPI0CFG::
   0197                     325 	.ds 1
                    0020    326 G$SPICKR$0$0==.
   0198                     327 _SPICKR::
   0198                     328 	.ds 1
                    0021    329 G$SPI0CKR$0$0==.
   0199                     330 _SPI0CKR::
   0199                     331 	.ds 1
                    0022    332 G$SPIDAT$0$0==.
   019A                     333 _SPIDAT::
   019A                     334 	.ds 1
                    0023    335 G$SPI0DAT$0$0==.
   019B                     336 _SPI0DAT::
   019B                     337 	.ds 1
                    0024    338 G$P0MDOUT$0$0==.
   019C                     339 _P0MDOUT::
   019C                     340 	.ds 1
                    0025    341 G$P1MDOUT$0$0==.
   019D                     342 _P1MDOUT::
   019D                     343 	.ds 1
                    0026    344 G$P2MDOUT$0$0==.
   019E                     345 _P2MDOUT::
   019E                     346 	.ds 1
                    0027    347 G$P3MDOUT$0$0==.
   019F                     348 _P3MDOUT::
   019F                     349 	.ds 1
                    0028    350 G$IE$0$0==.
   01A0                     351 _IE::
   01A0                     352 	.ds 1
                    0029    353 G$CLKSEL$0$0==.
   01A1                     354 _CLKSEL::
   01A1                     355 	.ds 1
                    002A    356 G$EMI0CN$0$0==.
   01A2                     357 _EMI0CN::
   01A2                     358 	.ds 1
                    002B    359 G$P3$0$0==.
   01A3                     360 _P3::
   01A3                     361 	.ds 1
                    002C    362 G$OSCXCN$0$0==.
   01A4                     363 _OSCXCN::
   01A4                     364 	.ds 1
                    002D    365 G$OSCICN$0$0==.
   01A5                     366 _OSCICN::
   01A5                     367 	.ds 1
                    002E    368 G$OSCICL$0$0==.
   01A6                     369 _OSCICL::
   01A6                     370 	.ds 1
                    002F    371 G$FLSCL$0$0==.
   01A7                     372 _FLSCL::
   01A7                     373 	.ds 1
                    0030    374 G$FLKEY$0$0==.
   01A8                     375 _FLKEY::
   01A8                     376 	.ds 1
                    0031    377 G$IP$0$0==.
   01A9                     378 _IP::
   01A9                     379 	.ds 1
                    0032    380 G$CLKMUL$0$0==.
   01AA                     381 _CLKMUL::
   01AA                     382 	.ds 1
                    0033    383 G$AMX0N$0$0==.
   01AB                     384 _AMX0N::
   01AB                     385 	.ds 1
                    0034    386 G$AMX0P$0$0==.
   01AC                     387 _AMX0P::
   01AC                     388 	.ds 1
                    0035    389 G$ADC0CF$0$0==.
   01AD                     390 _ADC0CF::
   01AD                     391 	.ds 1
                    0036    392 G$ADC0L$0$0==.
   01AE                     393 _ADC0L::
   01AE                     394 	.ds 1
                    0037    395 G$ADC0H$0$0==.
   01AF                     396 _ADC0H::
   01AF                     397 	.ds 1
                    0038    398 G$SMB0CN$0$0==.
   01B0                     399 _SMB0CN::
   01B0                     400 	.ds 1
                    0039    401 G$SMB0CF$0$0==.
   01B1                     402 _SMB0CF::
   01B1                     403 	.ds 1
                    003A    404 G$SMB0DAT$0$0==.
   01B2                     405 _SMB0DAT::
   01B2                     406 	.ds 1
                    003B    407 G$ADC0GTL$0$0==.
   01B3                     408 _ADC0GTL::
   01B3                     409 	.ds 1
                    003C    410 G$ADC0GTH$0$0==.
   01B4                     411 _ADC0GTH::
   01B4                     412 	.ds 1
                    003D    413 G$ADC0LTL$0$0==.
   01B5                     414 _ADC0LTL::
   01B5                     415 	.ds 1
                    003E    416 G$ADC0LTH$0$0==.
   01B6                     417 _ADC0LTH::
   01B6                     418 	.ds 1
                    003F    419 G$TMR2CN$0$0==.
   01B7                     420 _TMR2CN::
   01B7                     421 	.ds 1
                    0040    422 G$REG0CN$0$0==.
   01B8                     423 _REG0CN::
   01B8                     424 	.ds 1
                    0041    425 G$TMR2RLL$0$0==.
   01B9                     426 _TMR2RLL::
   01B9                     427 	.ds 1
                    0042    428 G$TMR2RLH$0$0==.
   01BA                     429 _TMR2RLH::
   01BA                     430 	.ds 1
                    0043    431 G$TMR2L$0$0==.
   01BB                     432 _TMR2L::
   01BB                     433 	.ds 1
                    0044    434 G$TMR2H$0$0==.
   01BC                     435 _TMR2H::
   01BC                     436 	.ds 1
                    0045    437 G$PSW$0$0==.
   01BD                     438 _PSW::
   01BD                     439 	.ds 1
                    0046    440 G$REF0CN$0$0==.
   01BE                     441 _REF0CN::
   01BE                     442 	.ds 1
                    0047    443 G$P0SKIP$0$0==.
   01BF                     444 _P0SKIP::
   01BF                     445 	.ds 1
                    0048    446 G$P1SKIP$0$0==.
   01C0                     447 _P1SKIP::
   01C0                     448 	.ds 1
                    0049    449 G$P2SKIP$0$0==.
   01C1                     450 _P2SKIP::
   01C1                     451 	.ds 1
                    004A    452 G$USB0XCN$0$0==.
   01C2                     453 _USB0XCN::
   01C2                     454 	.ds 1
                    004B    455 G$PCA0CN$0$0==.
   01C3                     456 _PCA0CN::
   01C3                     457 	.ds 1
                    004C    458 G$PCA0MD$0$0==.
   01C4                     459 _PCA0MD::
   01C4                     460 	.ds 1
                    004D    461 G$PCA0CPM0$0$0==.
   01C5                     462 _PCA0CPM0::
   01C5                     463 	.ds 1
                    004E    464 G$PCA0CPM1$0$0==.
   01C6                     465 _PCA0CPM1::
   01C6                     466 	.ds 1
                    004F    467 G$PCA0CPM2$0$0==.
   01C7                     468 _PCA0CPM2::
   01C7                     469 	.ds 1
                    0050    470 G$PCA0CPM3$0$0==.
   01C8                     471 _PCA0CPM3::
   01C8                     472 	.ds 1
                    0051    473 G$PCA0CPM4$0$0==.
   01C9                     474 _PCA0CPM4::
   01C9                     475 	.ds 1
                    0052    476 G$ACC$0$0==.
   01CA                     477 _ACC::
   01CA                     478 	.ds 1
                    0053    479 G$XBR0$0$0==.
   01CB                     480 _XBR0::
   01CB                     481 	.ds 1
                    0054    482 G$XBR1$0$0==.
   01CC                     483 _XBR1::
   01CC                     484 	.ds 1
                    0055    485 G$IT01CF$0$0==.
   01CD                     486 _IT01CF::
   01CD                     487 	.ds 1
                    0056    488 G$EIE1$0$0==.
   01CE                     489 _EIE1::
   01CE                     490 	.ds 1
                    0057    491 G$EIE2$0$0==.
   01CF                     492 _EIE2::
   01CF                     493 	.ds 1
                    0058    494 G$ADC0CN$0$0==.
   01D0                     495 _ADC0CN::
   01D0                     496 	.ds 1
                    0059    497 G$PCA0CPL1$0$0==.
   01D1                     498 _PCA0CPL1::
   01D1                     499 	.ds 1
                    005A    500 G$PCA0CPH1$0$0==.
   01D2                     501 _PCA0CPH1::
   01D2                     502 	.ds 1
                    005B    503 G$PCA0CPL2$0$0==.
   01D3                     504 _PCA0CPL2::
   01D3                     505 	.ds 1
                    005C    506 G$PCA0CPH2$0$0==.
   01D4                     507 _PCA0CPH2::
   01D4                     508 	.ds 1
                    005D    509 G$PCA0CPL3$0$0==.
   01D5                     510 _PCA0CPL3::
   01D5                     511 	.ds 1
                    005E    512 G$PCA0CPH3$0$0==.
   01D6                     513 _PCA0CPH3::
   01D6                     514 	.ds 1
                    005F    515 G$RSTSRC$0$0==.
   01D7                     516 _RSTSRC::
   01D7                     517 	.ds 1
                    0060    518 G$B$0$0==.
   01D8                     519 _B::
   01D8                     520 	.ds 1
                    0061    521 G$P0MDIN$0$0==.
   01D9                     522 _P0MDIN::
   01D9                     523 	.ds 1
                    0062    524 G$P1MDIN$0$0==.
   01DA                     525 _P1MDIN::
   01DA                     526 	.ds 1
                    0063    527 G$P2MDIN$0$0==.
   01DB                     528 _P2MDIN::
   01DB                     529 	.ds 1
                    0064    530 G$P3MDIN$0$0==.
   01DC                     531 _P3MDIN::
   01DC                     532 	.ds 1
                    0065    533 G$EIP1$0$0==.
   01DD                     534 _EIP1::
   01DD                     535 	.ds 1
                    0066    536 G$EIP2$0$0==.
   01DE                     537 _EIP2::
   01DE                     538 	.ds 1
                    0067    539 G$SPI0CN$0$0==.
   01DF                     540 _SPI0CN::
   01DF                     541 	.ds 1
                    0068    542 G$PCA0L$0$0==.
   01E0                     543 _PCA0L::
   01E0                     544 	.ds 1
                    0069    545 G$PCA0H$0$0==.
   01E1                     546 _PCA0H::
   01E1                     547 	.ds 1
                    006A    548 G$PCA0CPL0$0$0==.
   01E2                     549 _PCA0CPL0::
   01E2                     550 	.ds 1
                    006B    551 G$PCA0CPH0$0$0==.
   01E3                     552 _PCA0CPH0::
   01E3                     553 	.ds 1
                    006C    554 G$PCA0CPL4$0$0==.
   01E4                     555 _PCA0CPL4::
   01E4                     556 	.ds 1
                    006D    557 G$PCA0CPH4$0$0==.
   01E5                     558 _PCA0CPH4::
   01E5                     559 	.ds 1
                    006E    560 G$VDM0CN$0$0==.
   01E6                     561 _VDM0CN::
   01E6                     562 	.ds 1
                            563 ;--------------------------------------------------------
                            564 ; special function bits
                            565 ;--------------------------------------------------------
                            566 	.area RSEG    (DATA)
                    006F    567 G$TF1$0$0==.
   01E7                     568 _TF1::
   01E7                     569 	.ds 1
                    0070    570 G$TR1$0$0==.
   01E8                     571 _TR1::
   01E8                     572 	.ds 1
                    0071    573 G$TF0$0$0==.
   01E9                     574 _TF0::
   01E9                     575 	.ds 1
                    0072    576 G$TR0$0$0==.
   01EA                     577 _TR0::
   01EA                     578 	.ds 1
                    0073    579 G$IE1$0$0==.
   01EB                     580 _IE1::
   01EB                     581 	.ds 1
                    0074    582 G$IT1$0$0==.
   01EC                     583 _IT1::
   01EC                     584 	.ds 1
                    0075    585 G$IE0$0$0==.
   01ED                     586 _IE0::
   01ED                     587 	.ds 1
                    0076    588 G$IT0$0$0==.
   01EE                     589 _IT0::
   01EE                     590 	.ds 1
                    0077    591 G$S0MODE$0$0==.
   01EF                     592 _S0MODE::
   01EF                     593 	.ds 1
                    0078    594 G$MCE0$0$0==.
   01F0                     595 _MCE0::
   01F0                     596 	.ds 1
                    0079    597 G$REN0$0$0==.
   01F1                     598 _REN0::
   01F1                     599 	.ds 1
                    007A    600 G$TB80$0$0==.
   01F2                     601 _TB80::
   01F2                     602 	.ds 1
                    007B    603 G$RB80$0$0==.
   01F3                     604 _RB80::
   01F3                     605 	.ds 1
                    007C    606 G$TI0$0$0==.
   01F4                     607 _TI0::
   01F4                     608 	.ds 1
                    007D    609 G$RI0$0$0==.
   01F5                     610 _RI0::
   01F5                     611 	.ds 1
                    007E    612 G$EA$0$0==.
   01F6                     613 _EA::
   01F6                     614 	.ds 1
                    007F    615 G$ESPI0$0$0==.
   01F7                     616 _ESPI0::
   01F7                     617 	.ds 1
                    0080    618 G$ET2$0$0==.
   01F8                     619 _ET2::
   01F8                     620 	.ds 1
                    0081    621 G$ES0$0$0==.
   01F9                     622 _ES0::
   01F9                     623 	.ds 1
                    0082    624 G$ET1$0$0==.
   01FA                     625 _ET1::
   01FA                     626 	.ds 1
                    0083    627 G$EX1$0$0==.
   01FB                     628 _EX1::
   01FB                     629 	.ds 1
                    0084    630 G$ET0$0$0==.
   01FC                     631 _ET0::
   01FC                     632 	.ds 1
                    0085    633 G$EX0$0$0==.
   01FD                     634 _EX0::
   01FD                     635 	.ds 1
                    0086    636 G$PSPI0$0$0==.
   01FE                     637 _PSPI0::
   01FE                     638 	.ds 1
                    0087    639 G$PT2$0$0==.
   01FF                     640 _PT2::
   01FF                     641 	.ds 1
                    0088    642 G$PS0$0$0==.
   0200                     643 _PS0::
   0200                     644 	.ds 1
                    0089    645 G$PT1$0$0==.
   0201                     646 _PT1::
   0201                     647 	.ds 1
                    008A    648 G$PX1$0$0==.
   0202                     649 _PX1::
   0202                     650 	.ds 1
                    008B    651 G$PT0$0$0==.
   0203                     652 _PT0::
   0203                     653 	.ds 1
                    008C    654 G$PX0$0$0==.
   0204                     655 _PX0::
   0204                     656 	.ds 1
                    008D    657 G$MASTER$0$0==.
   0205                     658 _MASTER::
   0205                     659 	.ds 1
                    008E    660 G$TXMODE$0$0==.
   0206                     661 _TXMODE::
   0206                     662 	.ds 1
                    008F    663 G$STA$0$0==.
   0207                     664 _STA::
   0207                     665 	.ds 1
                    0090    666 G$STO$0$0==.
   0208                     667 _STO::
   0208                     668 	.ds 1
                    0091    669 G$ACKRQ$0$0==.
   0209                     670 _ACKRQ::
   0209                     671 	.ds 1
                    0092    672 G$ARBLOST$0$0==.
   020A                     673 _ARBLOST::
   020A                     674 	.ds 1
                    0093    675 G$ACK$0$0==.
   020B                     676 _ACK::
   020B                     677 	.ds 1
                    0094    678 G$SI$0$0==.
   020C                     679 _SI::
   020C                     680 	.ds 1
                    0095    681 G$TF2H$0$0==.
   020D                     682 _TF2H::
   020D                     683 	.ds 1
                    0096    684 G$TF2L$0$0==.
   020E                     685 _TF2L::
   020E                     686 	.ds 1
                    0097    687 G$TF2LEN$0$0==.
   020F                     688 _TF2LEN::
   020F                     689 	.ds 1
                    0098    690 G$T2SOF$0$0==.
   0210                     691 _T2SOF::
   0210                     692 	.ds 1
                    0099    693 G$T2SPLIT$0$0==.
   0211                     694 _T2SPLIT::
   0211                     695 	.ds 1
                    009A    696 G$TR2$0$0==.
   0212                     697 _TR2::
   0212                     698 	.ds 1
                    009B    699 G$T2XCLK$0$0==.
   0213                     700 _T2XCLK::
   0213                     701 	.ds 1
                    009C    702 G$CY$0$0==.
   0214                     703 _CY::
   0214                     704 	.ds 1
                    009D    705 G$AC$0$0==.
   0215                     706 _AC::
   0215                     707 	.ds 1
                    009E    708 G$F0$0$0==.
   0216                     709 _F0::
   0216                     710 	.ds 1
                    009F    711 G$RS1$0$0==.
   0217                     712 _RS1::
   0217                     713 	.ds 1
                    00A0    714 G$RS0$0$0==.
   0218                     715 _RS0::
   0218                     716 	.ds 1
                    00A1    717 G$OV$0$0==.
   0219                     718 _OV::
   0219                     719 	.ds 1
                    00A2    720 G$F1$0$0==.
   021A                     721 _F1::
   021A                     722 	.ds 1
                    00A3    723 G$P$0$0==.
   021B                     724 _P::
   021B                     725 	.ds 1
                    00A4    726 G$CF$0$0==.
   021C                     727 _CF::
   021C                     728 	.ds 1
                    00A5    729 G$CR$0$0==.
   021D                     730 _CR::
   021D                     731 	.ds 1
                    00A6    732 G$CCF4$0$0==.
   021E                     733 _CCF4::
   021E                     734 	.ds 1
                    00A7    735 G$CCF3$0$0==.
   021F                     736 _CCF3::
   021F                     737 	.ds 1
                    00A8    738 G$CCF2$0$0==.
   0220                     739 _CCF2::
   0220                     740 	.ds 1
                    00A9    741 G$CCF1$0$0==.
   0221                     742 _CCF1::
   0221                     743 	.ds 1
                    00AA    744 G$CCF0$0$0==.
   0222                     745 _CCF0::
   0222                     746 	.ds 1
                    00AB    747 G$AD0EN$0$0==.
   0223                     748 _AD0EN::
   0223                     749 	.ds 1
                    00AC    750 G$AD0TM$0$0==.
   0224                     751 _AD0TM::
   0224                     752 	.ds 1
                    00AD    753 G$AD0INT$0$0==.
   0225                     754 _AD0INT::
   0225                     755 	.ds 1
                    00AE    756 G$AD0BUSY$0$0==.
   0226                     757 _AD0BUSY::
   0226                     758 	.ds 1
                    00AF    759 G$AD0WINT$0$0==.
   0227                     760 _AD0WINT::
   0227                     761 	.ds 1
                    00B0    762 G$AD0CM2$0$0==.
   0228                     763 _AD0CM2::
   0228                     764 	.ds 1
                    00B1    765 G$AD0CM1$0$0==.
   0229                     766 _AD0CM1::
   0229                     767 	.ds 1
                    00B2    768 G$AD0CM0$0$0==.
   022A                     769 _AD0CM0::
   022A                     770 	.ds 1
                    00B3    771 G$SPIF$0$0==.
   022B                     772 _SPIF::
   022B                     773 	.ds 1
                    00B4    774 G$WCOL$0$0==.
   022C                     775 _WCOL::
   022C                     776 	.ds 1
                    00B5    777 G$MODF$0$0==.
   022D                     778 _MODF::
   022D                     779 	.ds 1
                    00B6    780 G$RXOVRN$0$0==.
   022E                     781 _RXOVRN::
   022E                     782 	.ds 1
                    00B7    783 G$NSSMD1$0$0==.
   022F                     784 _NSSMD1::
   022F                     785 	.ds 1
                    00B8    786 G$NSSMD0$0$0==.
   0230                     787 _NSSMD0::
   0230                     788 	.ds 1
                    00B9    789 G$TXBMT$0$0==.
   0231                     790 _TXBMT::
   0231                     791 	.ds 1
                    00BA    792 G$SPIEN$0$0==.
   0232                     793 _SPIEN::
   0232                     794 	.ds 1
                            795 ;--------------------------------------------------------
                            796 ; overlayable register banks
                            797 ;--------------------------------------------------------
                            798 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     799 	.ds 8
                            800 ;--------------------------------------------------------
                            801 ; overlayable bit register bank
                            802 ;--------------------------------------------------------
                            803 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     804 bits:
   0020                     805 	.ds 1
                    8000    806 	b0 = bits[0]
                    8100    807 	b1 = bits[1]
                    8200    808 	b2 = bits[2]
                    8300    809 	b3 = bits[3]
                    8400    810 	b4 = bits[4]
                    8500    811 	b5 = bits[5]
                    8600    812 	b6 = bits[6]
                    8700    813 	b7 = bits[7]
                            814 ;--------------------------------------------------------
                            815 ; internal ram data
                            816 ;--------------------------------------------------------
                            817 	.area DSEG    (DATA)
                    0000    818 G$USB_State$0$0==.
   0021                     819 _USB_State::
   0021                     820 	.ds 1
                    0001    821 G$Setup$0$0==.
   0022                     822 _Setup::
   0022                     823 	.ds 8
                    0009    824 G$DataSize$0$0==.
   002A                     825 _DataSize::
   002A                     826 	.ds 2
                    000B    827 G$DataSent$0$0==.
   002C                     828 _DataSent::
   002C                     829 	.ds 2
                    000D    830 G$DataPtr$0$0==.
   002E                     831 _DataPtr::
   002E                     832 	.ds 3
                    0010    833 G$Ep_Status$0$0==.
   0031                     834 _Ep_Status::
   0031                     835 	.ds 3
                    0013    836 LEndpoint1$bOp$1$1==.
   0034                     837 _Endpoint1_bOp_1_1:
   0034                     838 	.ds 1
                    0014    839 LSetVoltage$pData$1$1==.
   0035                     840 _SetVoltage_pData_1_1:
   0035                     841 	.ds 2
                    0016    842 LSetLaser$bState$1$1==.
   0037                     843 _SetLaser_bState_1_1:
   0037                     844 	.ds 1
                    0017    845 LPulseMotor$bMotor$1$1==.
   0038                     846 _PulseMotor_bMotor_1_1:
   0038                     847 	.ds 1
                    0018    848 LPulseMotor$bDir$1$1==.
   0039                     849 _PulseMotor_bDir_1_1:
   0039                     850 	.ds 1
                    0019    851 LEndpoint2$bOp$1$1==.
   003A                     852 _Endpoint2_bOp_1_1:
   003A                     853 	.ds 1
                    001A    854 LReadCurrent$pData$1$1==.
   003B                     855 _ReadCurrent_pData_1_1:
   003B                     856 	.ds 2
                            857 ;--------------------------------------------------------
                            858 ; overlayable items in internal ram 
                            859 ;--------------------------------------------------------
                            860 	.area	OSEG    (OVR,DATA)
                    0000    861 LUsb_Resume$k$1$1==.
   0014                     862 _Usb_Resume_k_1_1::
   0014                     863 	.ds 2
                            864 	.area	OSEG    (OVR,DATA)
                    0000    865 LFifo_Read$uNumBytes$1$1==.
   0014                     866 _Fifo_Read_PARM_2::
   0014                     867 	.ds 2
                    0002    868 LFifo_Read$pData$1$1==.
   0016                     869 _Fifo_Read_PARM_3::
   0016                     870 	.ds 3
                    0005    871 LFifo_Read$i$1$1==.
   0019                     872 _Fifo_Read_i_1_1::
   0019                     873 	.ds 2
                            874 	.area	OSEG    (OVR,DATA)
                    0000    875 LFifo_Write$uNumBytes$1$1==.
   0014                     876 _Fifo_Write_PARM_2::
   0014                     877 	.ds 2
                    0002    878 LFifo_Write$pData$1$1==.
   0016                     879 _Fifo_Write_PARM_3::
   0016                     880 	.ds 3
                            881 ;--------------------------------------------------------
                            882 ; indirectly addressable internal ram data
                            883 ;--------------------------------------------------------
                            884 	.area ISEG    (DATA)
                            885 ;--------------------------------------------------------
                            886 ; absolute internal ram data
                            887 ;--------------------------------------------------------
                            888 	.area IABS    (ABS,DATA)
                            889 	.area IABS    (ABS,DATA)
                            890 ;--------------------------------------------------------
                            891 ; bit data
                            892 ;--------------------------------------------------------
                            893 	.area BSEG    (BIT)
                            894 ;--------------------------------------------------------
                            895 ; paged external ram data
                            896 ;--------------------------------------------------------
                            897 	.area PSEG    (PAG,XDATA)
                            898 ;--------------------------------------------------------
                            899 ; external ram data
                            900 ;--------------------------------------------------------
                            901 	.area XSEG    (XDATA)
                            902 ;--------------------------------------------------------
                            903 ; absolute external ram data
                            904 ;--------------------------------------------------------
                            905 	.area XABS    (ABS,XDATA)
                            906 ;--------------------------------------------------------
                            907 ; external initialized ram data
                            908 ;--------------------------------------------------------
                            909 	.area XISEG   (XDATA)
                            910 	.area HOME    (CODE)
                            911 	.area GSINIT0 (CODE)
                            912 	.area GSINIT1 (CODE)
                            913 	.area GSINIT2 (CODE)
                            914 	.area GSINIT3 (CODE)
                            915 	.area GSINIT4 (CODE)
                            916 	.area GSINIT5 (CODE)
                            917 	.area GSINIT  (CODE)
                            918 	.area GSFINAL (CODE)
                            919 	.area CSEG    (CODE)
                            920 ;--------------------------------------------------------
                            921 ; global & static initialisations
                            922 ;--------------------------------------------------------
                            923 	.area HOME    (CODE)
                            924 	.area GSINIT  (CODE)
                            925 	.area GSFINAL (CODE)
                            926 	.area GSINIT  (CODE)
                    0000    927 	G$Force_Stall$0$0 ==.
                    0000    928 	C$Interrupts.c$50$1$1 ==.
                            929 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:50: BYTE Ep_Status[3] = {EP_IDLE, EP_IDLE, EP_IDLE};
   025A 75 31 00            930 	mov	_Ep_Status,#0x00
   025D 75 32 00            931 	mov	(_Ep_Status + 0x0001),#0x00
   0260 75 33 00            932 	mov	(_Ep_Status + 0x0002),#0x00
                    0009    933 	G$Force_Stall$0$0 ==.
                    0009    934 	C$c8051F320.h$44$1$1 ==.
                            935 ;	c:/SiLabs/MCU/Inc/c8051F320.h:44: sfr P0       = 0x80;                   // Port0
   0263 75 78 80            936 	mov	_P0,#0x80
                    000C    937 	G$Force_Stall$0$0 ==.
                    000C    938 	C$c8051F320.h$45$1$1 ==.
                            939 ;	c:/SiLabs/MCU/Inc/c8051F320.h:45: sfr SP       = 0x81;                   // Stack pointer
   0266 75 79 81            940 	mov	_SP,#0x81
                    000F    941 	G$Force_Stall$0$0 ==.
                    000F    942 	C$c8051F320.h$46$1$1 ==.
                            943 ;	c:/SiLabs/MCU/Inc/c8051F320.h:46: sfr DPL      = 0x82;                   // Data pointer - Low byte
   0269 75 7A 82            944 	mov	_DPL,#0x82
                    0012    945 	G$Force_Stall$0$0 ==.
                    0012    946 	C$c8051F320.h$47$1$1 ==.
                            947 ;	c:/SiLabs/MCU/Inc/c8051F320.h:47: sfr DPH      = 0x83;                   // Data pointer - High byte
   026C 75 7B 83            948 	mov	_DPH,#0x83
                    0015    949 	G$Force_Stall$0$0 ==.
                    0015    950 	C$c8051F320.h$48$1$1 ==.
                            951 ;	c:/SiLabs/MCU/Inc/c8051F320.h:48: sfr PCON     = 0x87;                   // Power control register
   026F 75 7C 87            952 	mov	_PCON,#0x87
                    0018    953 	G$Force_Stall$0$0 ==.
                    0018    954 	C$c8051F320.h$49$1$1 ==.
                            955 ;	c:/SiLabs/MCU/Inc/c8051F320.h:49: sfr TCON     = 0x88;                   // Timer control register
   0272 75 7D 88            956 	mov	_TCON,#0x88
                    001B    957 	G$Force_Stall$0$0 ==.
                    001B    958 	C$c8051F320.h$50$1$1 ==.
                            959 ;	c:/SiLabs/MCU/Inc/c8051F320.h:50: sfr TMOD     = 0x89;                   // Timer mode register
   0275 75 7E 89            960 	mov	_TMOD,#0x89
                    001E    961 	G$Force_Stall$0$0 ==.
                    001E    962 	C$c8051F320.h$51$1$1 ==.
                            963 ;	c:/SiLabs/MCU/Inc/c8051F320.h:51: sfr TL0      = 0x8A;                   // Timer0 - Low byte
   0278 75 7F 8A            964 	mov	_TL0,#0x8A
                    0021    965 	G$Force_Stall$0$0 ==.
                    0021    966 	C$c8051F320.h$52$1$1 ==.
                            967 ;	c:/SiLabs/MCU/Inc/c8051F320.h:52: sfr TL1      = 0x8B;                   // Timer1 - Low byte
   027B 75 80 8B            968 	mov	_TL1,#0x8B
                    0024    969 	G$Force_Stall$0$0 ==.
                    0024    970 	C$c8051F320.h$53$1$1 ==.
                            971 ;	c:/SiLabs/MCU/Inc/c8051F320.h:53: sfr TH0      = 0x8C;                   // Timer0 - High byte
   027E 75 81 8C            972 	mov	_TH0,#0x8C
                    0027    973 	G$Force_Stall$0$0 ==.
                    0027    974 	C$c8051F320.h$54$1$1 ==.
                            975 ;	c:/SiLabs/MCU/Inc/c8051F320.h:54: sfr TH1      = 0x8D;                   // Timer1 - High byte
   0281 75 82 8D            976 	mov	_TH1,#0x8D
                    002A    977 	G$Force_Stall$0$0 ==.
                    002A    978 	C$c8051F320.h$55$1$1 ==.
                            979 ;	c:/SiLabs/MCU/Inc/c8051F320.h:55: sfr CKCON    = 0x8E;                   // Clock control register
   0284 75 83 8E            980 	mov	_CKCON,#0x8E
                    002D    981 	G$Force_Stall$0$0 ==.
                    002D    982 	C$c8051F320.h$56$1$1 ==.
                            983 ;	c:/SiLabs/MCU/Inc/c8051F320.h:56: sfr PSCTL    = 0x8F;                   // Program store r/w control
   0287 75 84 8F            984 	mov	_PSCTL,#0x8F
                    0030    985 	G$Force_Stall$0$0 ==.
                    0030    986 	C$c8051F320.h$57$1$1 ==.
                            987 ;	c:/SiLabs/MCU/Inc/c8051F320.h:57: sfr P1       = 0x90;                   // Port1
   028A 75 85 90            988 	mov	_P1,#0x90
                    0033    989 	G$Force_Stall$0$0 ==.
                    0033    990 	C$c8051F320.h$58$1$1 ==.
                            991 ;	c:/SiLabs/MCU/Inc/c8051F320.h:58: sfr TMR3CN   = 0x91;                   // Timer3 control register
   028D 75 86 91            992 	mov	_TMR3CN,#0x91
                    0036    993 	G$Force_Stall$0$0 ==.
                    0036    994 	C$c8051F320.h$59$1$1 ==.
                            995 ;	c:/SiLabs/MCU/Inc/c8051F320.h:59: sfr TMR3RLL  = 0x92;                   // Timer3 reload register - Low byte
   0290 75 87 92            996 	mov	_TMR3RLL,#0x92
                    0039    997 	G$Force_Stall$0$0 ==.
                    0039    998 	C$c8051F320.h$60$1$1 ==.
                            999 ;	c:/SiLabs/MCU/Inc/c8051F320.h:60: sfr TMR3RLH  = 0x93;                   // Timer3 reload register - High byte
   0293 75 88 93           1000 	mov	_TMR3RLH,#0x93
                    003C   1001 	G$Force_Stall$0$0 ==.
                    003C   1002 	C$c8051F320.h$61$1$1 ==.
                           1003 ;	c:/SiLabs/MCU/Inc/c8051F320.h:61: sfr TMR3L    = 0x94;                   // Timer3 - Low byte
   0296 75 89 94           1004 	mov	_TMR3L,#0x94
                    003F   1005 	G$Force_Stall$0$0 ==.
                    003F   1006 	C$c8051F320.h$62$1$1 ==.
                           1007 ;	c:/SiLabs/MCU/Inc/c8051F320.h:62: sfr TMR3H    = 0x95;                   // Timer3 - High byte
   0299 75 8A 95           1008 	mov	_TMR3H,#0x95
                    0042   1009 	G$Force_Stall$0$0 ==.
                    0042   1010 	C$c8051F320.h$63$1$1 ==.
                           1011 ;	c:/SiLabs/MCU/Inc/c8051F320.h:63: sfr USB0ADR  = 0x96;                   // USB0 address port
   029C 75 8B 96           1012 	mov	_USB0ADR,#0x96
                    0045   1013 	G$Force_Stall$0$0 ==.
                    0045   1014 	C$c8051F320.h$64$1$1 ==.
                           1015 ;	c:/SiLabs/MCU/Inc/c8051F320.h:64: sfr USB0DAT  = 0x97;                   // USB0 data port
   029F 75 8C 97           1016 	mov	_USB0DAT,#0x97
                    0048   1017 	G$Force_Stall$0$0 ==.
                    0048   1018 	C$c8051F320.h$65$1$1 ==.
                           1019 ;	c:/SiLabs/MCU/Inc/c8051F320.h:65: sfr SCON0    = 0x98;                   // UART0 control register
   02A2 75 8D 98           1020 	mov	_SCON0,#0x98
                    004B   1021 	G$Force_Stall$0$0 ==.
                    004B   1022 	C$c8051F320.h$66$1$1 ==.
                           1023 ;	c:/SiLabs/MCU/Inc/c8051F320.h:66: sfr SBUF0    = 0x99;                   // UART0 data buffer register
   02A5 75 8E 99           1024 	mov	_SBUF0,#0x99
                    004E   1025 	G$Force_Stall$0$0 ==.
                    004E   1026 	C$c8051F320.h$67$1$1 ==.
                           1027 ;	c:/SiLabs/MCU/Inc/c8051F320.h:67: sfr CPT1CN   = 0x9A;                   // Comparator1 control register
   02A8 75 8F 9A           1028 	mov	_CPT1CN,#0x9A
                    0051   1029 	G$Force_Stall$0$0 ==.
                    0051   1030 	C$c8051F320.h$68$1$1 ==.
                           1031 ;	c:/SiLabs/MCU/Inc/c8051F320.h:68: sfr CPT0CN   = 0x9B;                   // Comparator0 control register
   02AB 75 90 9B           1032 	mov	_CPT0CN,#0x9B
                    0054   1033 	G$Force_Stall$0$0 ==.
                    0054   1034 	C$c8051F320.h$69$1$1 ==.
                           1035 ;	c:/SiLabs/MCU/Inc/c8051F320.h:69: sfr CPT1MD   = 0x9C;                   // Comparator1 mode selection register
   02AE 75 91 9C           1036 	mov	_CPT1MD,#0x9C
                    0057   1037 	G$Force_Stall$0$0 ==.
                    0057   1038 	C$c8051F320.h$70$1$1 ==.
                           1039 ;	c:/SiLabs/MCU/Inc/c8051F320.h:70: sfr CPT0MD   = 0x9D;                   // Comparator0 mode selection register
   02B1 75 92 9D           1040 	mov	_CPT0MD,#0x9D
                    005A   1041 	G$Force_Stall$0$0 ==.
                    005A   1042 	C$c8051F320.h$71$1$1 ==.
                           1043 ;	c:/SiLabs/MCU/Inc/c8051F320.h:71: sfr CPT1MX   = 0x9E;                   // Comparator1 mux selection register
   02B4 75 93 9E           1044 	mov	_CPT1MX,#0x9E
                    005D   1045 	G$Force_Stall$0$0 ==.
                    005D   1046 	C$c8051F320.h$72$1$1 ==.
                           1047 ;	c:/SiLabs/MCU/Inc/c8051F320.h:72: sfr CPT0MX   = 0x9F;                   // Comparator0 mux selection register
   02B7 75 94 9F           1048 	mov	_CPT0MX,#0x9F
                    0060   1049 	G$Force_Stall$0$0 ==.
                    0060   1050 	C$c8051F320.h$73$1$1 ==.
                           1051 ;	c:/SiLabs/MCU/Inc/c8051F320.h:73: sfr P2       = 0xA0;                   // Port2
   02BA 75 95 A0           1052 	mov	_P2,#0xA0
                    0063   1053 	G$Force_Stall$0$0 ==.
                    0063   1054 	C$c8051F320.h$74$1$1 ==.
                           1055 ;	c:/SiLabs/MCU/Inc/c8051F320.h:74: sfr SPICFG   = 0xA1;                   // SPI0 configuration register
   02BD 75 96 A1           1056 	mov	_SPICFG,#0xA1
                    0066   1057 	G$Force_Stall$0$0 ==.
                    0066   1058 	C$c8051F320.h$75$1$1 ==.
                           1059 ;	c:/SiLabs/MCU/Inc/c8051F320.h:75: sfr SPI0CFG  = 0xA1;                   // SPI0 configuration register
   02C0 75 97 A1           1060 	mov	_SPI0CFG,#0xA1
                    0069   1061 	G$Force_Stall$0$0 ==.
                    0069   1062 	C$c8051F320.h$76$1$1 ==.
                           1063 ;	c:/SiLabs/MCU/Inc/c8051F320.h:76: sfr SPICKR   = 0xA2;                   // SPI0 clock configuration register
   02C3 75 98 A2           1064 	mov	_SPICKR,#0xA2
                    006C   1065 	G$Force_Stall$0$0 ==.
                    006C   1066 	C$c8051F320.h$77$1$1 ==.
                           1067 ;	c:/SiLabs/MCU/Inc/c8051F320.h:77: sfr SPI0CKR  = 0xA2;                   // SPI0 clock configuration register
   02C6 75 99 A2           1068 	mov	_SPI0CKR,#0xA2
                    006F   1069 	G$Force_Stall$0$0 ==.
                    006F   1070 	C$c8051F320.h$78$1$1 ==.
                           1071 ;	c:/SiLabs/MCU/Inc/c8051F320.h:78: sfr SPIDAT   = 0xA3;                   // SPI0 data register
   02C9 75 9A A3           1072 	mov	_SPIDAT,#0xA3
                    0072   1073 	G$Force_Stall$0$0 ==.
                    0072   1074 	C$c8051F320.h$79$1$1 ==.
                           1075 ;	c:/SiLabs/MCU/Inc/c8051F320.h:79: sfr SPI0DAT  = 0xA3;                   // SPI0 data register
   02CC 75 9B A3           1076 	mov	_SPI0DAT,#0xA3
                    0075   1077 	G$Force_Stall$0$0 ==.
                    0075   1078 	C$c8051F320.h$80$1$1 ==.
                           1079 ;	c:/SiLabs/MCU/Inc/c8051F320.h:80: sfr P0MDOUT  = 0xA4;                   // Port0 output mode register
   02CF 75 9C A4           1080 	mov	_P0MDOUT,#0xA4
                    0078   1081 	G$Force_Stall$0$0 ==.
                    0078   1082 	C$c8051F320.h$81$1$1 ==.
                           1083 ;	c:/SiLabs/MCU/Inc/c8051F320.h:81: sfr P1MDOUT  = 0xA5;                   // Port1 output mode register
   02D2 75 9D A5           1084 	mov	_P1MDOUT,#0xA5
                    007B   1085 	G$Force_Stall$0$0 ==.
                    007B   1086 	C$c8051F320.h$82$1$1 ==.
                           1087 ;	c:/SiLabs/MCU/Inc/c8051F320.h:82: sfr P2MDOUT  = 0xA6;                   // Port2 output mode register
   02D5 75 9E A6           1088 	mov	_P2MDOUT,#0xA6
                    007E   1089 	G$Force_Stall$0$0 ==.
                    007E   1090 	C$c8051F320.h$83$1$1 ==.
                           1091 ;	c:/SiLabs/MCU/Inc/c8051F320.h:83: sfr P3MDOUT  = 0xA7;                   // Port3 output mode register
   02D8 75 9F A7           1092 	mov	_P3MDOUT,#0xA7
                    0081   1093 	G$Force_Stall$0$0 ==.
                    0081   1094 	C$c8051F320.h$84$1$1 ==.
                           1095 ;	c:/SiLabs/MCU/Inc/c8051F320.h:84: sfr IE       = 0xA8;                   // Interrupt enable
   02DB 75 A0 A8           1096 	mov	_IE,#0xA8
                    0084   1097 	G$Force_Stall$0$0 ==.
                    0084   1098 	C$c8051F320.h$85$1$1 ==.
                           1099 ;	c:/SiLabs/MCU/Inc/c8051F320.h:85: sfr CLKSEL   = 0xA9;                   // Clock source select
   02DE 75 A1 A9           1100 	mov	_CLKSEL,#0xA9
                    0087   1101 	G$Force_Stall$0$0 ==.
                    0087   1102 	C$c8051F320.h$86$1$1 ==.
                           1103 ;	c:/SiLabs/MCU/Inc/c8051F320.h:86: sfr EMI0CN   = 0xAA;                   // External Memory Interface Control
   02E1 75 A2 AA           1104 	mov	_EMI0CN,#0xAA
                    008A   1105 	G$Force_Stall$0$0 ==.
                    008A   1106 	C$c8051F320.h$87$1$1 ==.
                           1107 ;	c:/SiLabs/MCU/Inc/c8051F320.h:87: sfr P3       = 0xB0;                   // Port3
   02E4 75 A3 B0           1108 	mov	_P3,#0xB0
                    008D   1109 	G$Force_Stall$0$0 ==.
                    008D   1110 	C$c8051F320.h$88$1$1 ==.
                           1111 ;	c:/SiLabs/MCU/Inc/c8051F320.h:88: sfr OSCXCN   = 0xB1;                   // External oscillator control
   02E7 75 A4 B1           1112 	mov	_OSCXCN,#0xB1
                    0090   1113 	G$Force_Stall$0$0 ==.
                    0090   1114 	C$c8051F320.h$89$1$1 ==.
                           1115 ;	c:/SiLabs/MCU/Inc/c8051F320.h:89: sfr OSCICN   = 0xB2;                   // Internal oscillator control
   02EA 75 A5 B2           1116 	mov	_OSCICN,#0xB2
                    0093   1117 	G$Force_Stall$0$0 ==.
                    0093   1118 	C$c8051F320.h$90$1$1 ==.
                           1119 ;	c:/SiLabs/MCU/Inc/c8051F320.h:90: sfr OSCICL   = 0xB3;                   // Internal oscillator calibration
   02ED 75 A6 B3           1120 	mov	_OSCICL,#0xB3
                    0096   1121 	G$Force_Stall$0$0 ==.
                    0096   1122 	C$c8051F320.h$91$1$1 ==.
                           1123 ;	c:/SiLabs/MCU/Inc/c8051F320.h:91: sfr FLSCL    = 0xB6;                   // Flash scale register
   02F0 75 A7 B6           1124 	mov	_FLSCL,#0xB6
                    0099   1125 	G$Force_Stall$0$0 ==.
                    0099   1126 	C$c8051F320.h$92$1$1 ==.
                           1127 ;	c:/SiLabs/MCU/Inc/c8051F320.h:92: sfr FLKEY    = 0xB7;                   // Flash lock & key register
   02F3 75 A8 B7           1128 	mov	_FLKEY,#0xB7
                    009C   1129 	G$Force_Stall$0$0 ==.
                    009C   1130 	C$c8051F320.h$93$1$1 ==.
                           1131 ;	c:/SiLabs/MCU/Inc/c8051F320.h:93: sfr IP       = 0xB8;                   // Interrupt priority
   02F6 75 A9 B8           1132 	mov	_IP,#0xB8
                    009F   1133 	G$Force_Stall$0$0 ==.
                    009F   1134 	C$c8051F320.h$94$1$1 ==.
                           1135 ;	c:/SiLabs/MCU/Inc/c8051F320.h:94: sfr CLKMUL   = 0xB9;                   // Clock multiplier control register
   02F9 75 AA B9           1136 	mov	_CLKMUL,#0xB9
                    00A2   1137 	G$Force_Stall$0$0 ==.
                    00A2   1138 	C$c8051F320.h$95$1$1 ==.
                           1139 ;	c:/SiLabs/MCU/Inc/c8051F320.h:95: sfr AMX0N    = 0xBA;                   // ADC0 mux negative channel selection
   02FC 75 AB BA           1140 	mov	_AMX0N,#0xBA
                    00A5   1141 	G$Force_Stall$0$0 ==.
                    00A5   1142 	C$c8051F320.h$96$1$1 ==.
                           1143 ;	c:/SiLabs/MCU/Inc/c8051F320.h:96: sfr AMX0P    = 0xBB;                   // ADC0 mux positive channel selection
   02FF 75 AC BB           1144 	mov	_AMX0P,#0xBB
                    00A8   1145 	G$Force_Stall$0$0 ==.
                    00A8   1146 	C$c8051F320.h$97$1$1 ==.
                           1147 ;	c:/SiLabs/MCU/Inc/c8051F320.h:97: sfr ADC0CF   = 0xBC;                   // ADC0 configuration
   0302 75 AD BC           1148 	mov	_ADC0CF,#0xBC
                    00AB   1149 	G$Force_Stall$0$0 ==.
                    00AB   1150 	C$c8051F320.h$98$1$1 ==.
                           1151 ;	c:/SiLabs/MCU/Inc/c8051F320.h:98: sfr ADC0L    = 0xBD;                   // ADC0 data low
   0305 75 AE BD           1152 	mov	_ADC0L,#0xBD
                    00AE   1153 	G$Force_Stall$0$0 ==.
                    00AE   1154 	C$c8051F320.h$99$1$1 ==.
                           1155 ;	c:/SiLabs/MCU/Inc/c8051F320.h:99: sfr ADC0H    = 0xBE;                   // ADC0 data high
   0308 75 AF BE           1156 	mov	_ADC0H,#0xBE
                    00B1   1157 	G$Force_Stall$0$0 ==.
                    00B1   1158 	C$c8051F320.h$100$1$1 ==.
                           1159 ;	c:/SiLabs/MCU/Inc/c8051F320.h:100: sfr SMB0CN   = 0xC0;                   // SMBus control
   030B 75 B0 C0           1160 	mov	_SMB0CN,#0xC0
                    00B4   1161 	G$Force_Stall$0$0 ==.
                    00B4   1162 	C$c8051F320.h$101$1$1 ==.
                           1163 ;	c:/SiLabs/MCU/Inc/c8051F320.h:101: sfr SMB0CF   = 0xC1;                   // SMBus configuration
   030E 75 B1 C1           1164 	mov	_SMB0CF,#0xC1
                    00B7   1165 	G$Force_Stall$0$0 ==.
                    00B7   1166 	C$c8051F320.h$102$1$1 ==.
                           1167 ;	c:/SiLabs/MCU/Inc/c8051F320.h:102: sfr SMB0DAT  = 0xC2;                   // SMBus data
   0311 75 B2 C2           1168 	mov	_SMB0DAT,#0xC2
                    00BA   1169 	G$Force_Stall$0$0 ==.
                    00BA   1170 	C$c8051F320.h$103$1$1 ==.
                           1171 ;	c:/SiLabs/MCU/Inc/c8051F320.h:103: sfr ADC0GTL  = 0xC3;                   // ADC0 greater-than data low register
   0314 75 B3 C3           1172 	mov	_ADC0GTL,#0xC3
                    00BD   1173 	G$Force_Stall$0$0 ==.
                    00BD   1174 	C$c8051F320.h$104$1$1 ==.
                           1175 ;	c:/SiLabs/MCU/Inc/c8051F320.h:104: sfr ADC0GTH  = 0xC4;                   // ADC0 greater-than data high register
   0317 75 B4 C4           1176 	mov	_ADC0GTH,#0xC4
                    00C0   1177 	G$Force_Stall$0$0 ==.
                    00C0   1178 	C$c8051F320.h$105$1$1 ==.
                           1179 ;	c:/SiLabs/MCU/Inc/c8051F320.h:105: sfr ADC0LTL  = 0xC5;                   // ADC0 less-than data low register
   031A 75 B5 C5           1180 	mov	_ADC0LTL,#0xC5
                    00C3   1181 	G$Force_Stall$0$0 ==.
                    00C3   1182 	C$c8051F320.h$106$1$1 ==.
                           1183 ;	c:/SiLabs/MCU/Inc/c8051F320.h:106: sfr ADC0LTH  = 0xC6;                   // ADC0 less-than data high register
   031D 75 B6 C6           1184 	mov	_ADC0LTH,#0xC6
                    00C6   1185 	G$Force_Stall$0$0 ==.
                    00C6   1186 	C$c8051F320.h$107$1$1 ==.
                           1187 ;	c:/SiLabs/MCU/Inc/c8051F320.h:107: sfr TMR2CN   = 0xC8;                   // Timer2 control register
   0320 75 B7 C8           1188 	mov	_TMR2CN,#0xC8
                    00C9   1189 	G$Force_Stall$0$0 ==.
                    00C9   1190 	C$c8051F320.h$108$1$1 ==.
                           1191 ;	c:/SiLabs/MCU/Inc/c8051F320.h:108: sfr REG0CN   = 0xC9;                   // Regulator control register
   0323 75 B8 C9           1192 	mov	_REG0CN,#0xC9
                    00CC   1193 	G$Force_Stall$0$0 ==.
                    00CC   1194 	C$c8051F320.h$109$1$1 ==.
                           1195 ;	c:/SiLabs/MCU/Inc/c8051F320.h:109: sfr TMR2RLL  = 0xCA;                   // Timer2 reload register - Low byte
   0326 75 B9 CA           1196 	mov	_TMR2RLL,#0xCA
                    00CF   1197 	G$Force_Stall$0$0 ==.
                    00CF   1198 	C$c8051F320.h$110$1$1 ==.
                           1199 ;	c:/SiLabs/MCU/Inc/c8051F320.h:110: sfr TMR2RLH  = 0xCB;                   // Timer2 reload register - High byte
   0329 75 BA CB           1200 	mov	_TMR2RLH,#0xCB
                    00D2   1201 	G$Force_Stall$0$0 ==.
                    00D2   1202 	C$c8051F320.h$111$1$1 ==.
                           1203 ;	c:/SiLabs/MCU/Inc/c8051F320.h:111: sfr TMR2L    = 0xCC;                   // Timer2 - Low byte
   032C 75 BB CC           1204 	mov	_TMR2L,#0xCC
                    00D5   1205 	G$Force_Stall$0$0 ==.
                    00D5   1206 	C$c8051F320.h$112$1$1 ==.
                           1207 ;	c:/SiLabs/MCU/Inc/c8051F320.h:112: sfr TMR2H    = 0xCD;                   // Timer2 - High byte
   032F 75 BC CD           1208 	mov	_TMR2H,#0xCD
                    00D8   1209 	G$Force_Stall$0$0 ==.
                    00D8   1210 	C$c8051F320.h$113$1$1 ==.
                           1211 ;	c:/SiLabs/MCU/Inc/c8051F320.h:113: sfr PSW      = 0xD0;                   // Program Status Word
   0332 75 BD D0           1212 	mov	_PSW,#0xD0
                    00DB   1213 	G$Force_Stall$0$0 ==.
                    00DB   1214 	C$c8051F320.h$114$1$1 ==.
                           1215 ;	c:/SiLabs/MCU/Inc/c8051F320.h:114: sfr REF0CN   = 0xD1;                   // Voltage reference control register
   0335 75 BE D1           1216 	mov	_REF0CN,#0xD1
                    00DE   1217 	G$Force_Stall$0$0 ==.
                    00DE   1218 	C$c8051F320.h$115$1$1 ==.
                           1219 ;	c:/SiLabs/MCU/Inc/c8051F320.h:115: sfr P0SKIP   = 0xD4;                   // Port0 crossbar skip register
   0338 75 BF D4           1220 	mov	_P0SKIP,#0xD4
                    00E1   1221 	G$Force_Stall$0$0 ==.
                    00E1   1222 	C$c8051F320.h$116$1$1 ==.
                           1223 ;	c:/SiLabs/MCU/Inc/c8051F320.h:116: sfr P1SKIP   = 0xD5;                   // Port1 crossbar skip register
   033B 75 C0 D5           1224 	mov	_P1SKIP,#0xD5
                    00E4   1225 	G$Force_Stall$0$0 ==.
                    00E4   1226 	C$c8051F320.h$117$1$1 ==.
                           1227 ;	c:/SiLabs/MCU/Inc/c8051F320.h:117: sfr P2SKIP   = 0xD6;                   // Port2 crossbar skip register
   033E 75 C1 D6           1228 	mov	_P2SKIP,#0xD6
                    00E7   1229 	G$Force_Stall$0$0 ==.
                    00E7   1230 	C$c8051F320.h$118$1$1 ==.
                           1231 ;	c:/SiLabs/MCU/Inc/c8051F320.h:118: sfr USB0XCN  = 0xD7;                   // USB0 tranceiver control register
   0341 75 C2 D7           1232 	mov	_USB0XCN,#0xD7
                    00EA   1233 	G$Force_Stall$0$0 ==.
                    00EA   1234 	C$c8051F320.h$119$1$1 ==.
                           1235 ;	c:/SiLabs/MCU/Inc/c8051F320.h:119: sfr PCA0CN   = 0xD8;                   // PCA0 control register
   0344 75 C3 D8           1236 	mov	_PCA0CN,#0xD8
                    00ED   1237 	G$Force_Stall$0$0 ==.
                    00ED   1238 	C$c8051F320.h$120$1$1 ==.
                           1239 ;	c:/SiLabs/MCU/Inc/c8051F320.h:120: sfr PCA0MD   = 0xD9;                   // PCA0 mode register
   0347 75 C4 D9           1240 	mov	_PCA0MD,#0xD9
                    00F0   1241 	G$Force_Stall$0$0 ==.
                    00F0   1242 	C$c8051F320.h$121$1$1 ==.
                           1243 ;	c:/SiLabs/MCU/Inc/c8051F320.h:121: sfr PCA0CPM0 = 0xDA;                   // Capture/compare module0 mode
   034A 75 C5 DA           1244 	mov	_PCA0CPM0,#0xDA
                    00F3   1245 	G$Force_Stall$0$0 ==.
                    00F3   1246 	C$c8051F320.h$122$1$1 ==.
                           1247 ;	c:/SiLabs/MCU/Inc/c8051F320.h:122: sfr PCA0CPM1 = 0xDB;                   // Capture/compare module1 mode
   034D 75 C6 DB           1248 	mov	_PCA0CPM1,#0xDB
                    00F6   1249 	G$Force_Stall$0$0 ==.
                    00F6   1250 	C$c8051F320.h$123$1$1 ==.
                           1251 ;	c:/SiLabs/MCU/Inc/c8051F320.h:123: sfr PCA0CPM2 = 0xDC;                   // Capture/compare module2 mode
   0350 75 C7 DC           1252 	mov	_PCA0CPM2,#0xDC
                    00F9   1253 	G$Force_Stall$0$0 ==.
                    00F9   1254 	C$c8051F320.h$124$1$1 ==.
                           1255 ;	c:/SiLabs/MCU/Inc/c8051F320.h:124: sfr PCA0CPM3 = 0xDD;                   // Capture/compare module3 mode
   0353 75 C8 DD           1256 	mov	_PCA0CPM3,#0xDD
                    00FC   1257 	G$Force_Stall$0$0 ==.
                    00FC   1258 	C$c8051F320.h$125$1$1 ==.
                           1259 ;	c:/SiLabs/MCU/Inc/c8051F320.h:125: sfr PCA0CPM4 = 0xDE;                   // Capture/compare module4 mode
   0356 75 C9 DE           1260 	mov	_PCA0CPM4,#0xDE
                    00FF   1261 	G$Force_Stall$0$0 ==.
                    00FF   1262 	C$c8051F320.h$126$1$1 ==.
                           1263 ;	c:/SiLabs/MCU/Inc/c8051F320.h:126: sfr ACC      = 0xE0;                   // Accumulator
   0359 75 CA E0           1264 	mov	_ACC,#0xE0
                    0102   1265 	G$Force_Stall$0$0 ==.
                    0102   1266 	C$c8051F320.h$127$1$1 ==.
                           1267 ;	c:/SiLabs/MCU/Inc/c8051F320.h:127: sfr XBR0     = 0xE1;                   // Port I/O crossbar register 0
   035C 75 CB E1           1268 	mov	_XBR0,#0xE1
                    0105   1269 	G$Force_Stall$0$0 ==.
                    0105   1270 	C$c8051F320.h$128$1$1 ==.
                           1271 ;	c:/SiLabs/MCU/Inc/c8051F320.h:128: sfr XBR1     = 0xE2;                   // Port I/O crossbar register 1
   035F 75 CC E2           1272 	mov	_XBR1,#0xE2
                    0108   1273 	G$Force_Stall$0$0 ==.
                    0108   1274 	C$c8051F320.h$129$1$1 ==.
                           1275 ;	c:/SiLabs/MCU/Inc/c8051F320.h:129: sfr IT01CF   = 0xE4;                   // Int0/int1 configuration register
   0362 75 CD E4           1276 	mov	_IT01CF,#0xE4
                    010B   1277 	G$Force_Stall$0$0 ==.
                    010B   1278 	C$c8051F320.h$130$1$1 ==.
                           1279 ;	c:/SiLabs/MCU/Inc/c8051F320.h:130: sfr EIE1     = 0xE6;                   // Extended interrupt enable 1
   0365 75 CE E6           1280 	mov	_EIE1,#0xE6
                    010E   1281 	G$Force_Stall$0$0 ==.
                    010E   1282 	C$c8051F320.h$131$1$1 ==.
                           1283 ;	c:/SiLabs/MCU/Inc/c8051F320.h:131: sfr EIE2     = 0xE7;                   // Extended interrupt enable 2
   0368 75 CF E7           1284 	mov	_EIE2,#0xE7
                    0111   1285 	G$Force_Stall$0$0 ==.
                    0111   1286 	C$c8051F320.h$132$1$1 ==.
                           1287 ;	c:/SiLabs/MCU/Inc/c8051F320.h:132: sfr ADC0CN   = 0xE8;                   // ADC0 control register
   036B 75 D0 E8           1288 	mov	_ADC0CN,#0xE8
                    0114   1289 	G$Force_Stall$0$0 ==.
                    0114   1290 	C$c8051F320.h$133$1$1 ==.
                           1291 ;	c:/SiLabs/MCU/Inc/c8051F320.h:133: sfr PCA0CPL1 = 0xE9;                   // Capture/compare module1 - Low byte
   036E 75 D1 E9           1292 	mov	_PCA0CPL1,#0xE9
                    0117   1293 	G$Force_Stall$0$0 ==.
                    0117   1294 	C$c8051F320.h$134$1$1 ==.
                           1295 ;	c:/SiLabs/MCU/Inc/c8051F320.h:134: sfr PCA0CPH1 = 0xEA;                   // Capture/compare module1 - High byte
   0371 75 D2 EA           1296 	mov	_PCA0CPH1,#0xEA
                    011A   1297 	G$Force_Stall$0$0 ==.
                    011A   1298 	C$c8051F320.h$135$1$1 ==.
                           1299 ;	c:/SiLabs/MCU/Inc/c8051F320.h:135: sfr PCA0CPL2 = 0xEB;                   // Capture/compare module2 - Low byte
   0374 75 D3 EB           1300 	mov	_PCA0CPL2,#0xEB
                    011D   1301 	G$Force_Stall$0$0 ==.
                    011D   1302 	C$c8051F320.h$136$1$1 ==.
                           1303 ;	c:/SiLabs/MCU/Inc/c8051F320.h:136: sfr PCA0CPH2 = 0xEC;                   // Capture/compare module2 - High byte
   0377 75 D4 EC           1304 	mov	_PCA0CPH2,#0xEC
                    0120   1305 	G$Force_Stall$0$0 ==.
                    0120   1306 	C$c8051F320.h$137$1$1 ==.
                           1307 ;	c:/SiLabs/MCU/Inc/c8051F320.h:137: sfr PCA0CPL3 = 0xED;                   // Capture/compare module3 - Low byte
   037A 75 D5 ED           1308 	mov	_PCA0CPL3,#0xED
                    0123   1309 	G$Force_Stall$0$0 ==.
                    0123   1310 	C$c8051F320.h$138$1$1 ==.
                           1311 ;	c:/SiLabs/MCU/Inc/c8051F320.h:138: sfr PCA0CPH3 = 0xEE;                   // Capture/compare module3 - High byte
   037D 75 D6 EE           1312 	mov	_PCA0CPH3,#0xEE
                    0126   1313 	G$Force_Stall$0$0 ==.
                    0126   1314 	C$c8051F320.h$139$1$1 ==.
                           1315 ;	c:/SiLabs/MCU/Inc/c8051F320.h:139: sfr RSTSRC   = 0xEF;                   // Reset source register
   0380 75 D7 EF           1316 	mov	_RSTSRC,#0xEF
                    0129   1317 	G$Force_Stall$0$0 ==.
                    0129   1318 	C$c8051F320.h$140$1$1 ==.
                           1319 ;	c:/SiLabs/MCU/Inc/c8051F320.h:140: sfr B        = 0xF0;                   // B register
   0383 75 D8 F0           1320 	mov	_B,#0xF0
                    012C   1321 	G$Force_Stall$0$0 ==.
                    012C   1322 	C$c8051F320.h$141$1$1 ==.
                           1323 ;	c:/SiLabs/MCU/Inc/c8051F320.h:141: sfr P0MDIN   = 0xF1;                   // Port0 input mode register
   0386 75 D9 F1           1324 	mov	_P0MDIN,#0xF1
                    012F   1325 	G$Force_Stall$0$0 ==.
                    012F   1326 	C$c8051F320.h$142$1$1 ==.
                           1327 ;	c:/SiLabs/MCU/Inc/c8051F320.h:142: sfr P1MDIN   = 0xF2;                   // Port1 input mode register
   0389 75 DA F2           1328 	mov	_P1MDIN,#0xF2
                    0132   1329 	G$Force_Stall$0$0 ==.
                    0132   1330 	C$c8051F320.h$143$1$1 ==.
                           1331 ;	c:/SiLabs/MCU/Inc/c8051F320.h:143: sfr P2MDIN   = 0xF3;                   // Port2 input mode register
   038C 75 DB F3           1332 	mov	_P2MDIN,#0xF3
                    0135   1333 	G$Force_Stall$0$0 ==.
                    0135   1334 	C$c8051F320.h$144$1$1 ==.
                           1335 ;	c:/SiLabs/MCU/Inc/c8051F320.h:144: sfr P3MDIN   = 0xF4;                   // Port3 input mode register
   038F 75 DC F4           1336 	mov	_P3MDIN,#0xF4
                    0138   1337 	G$Force_Stall$0$0 ==.
                    0138   1338 	C$c8051F320.h$145$1$1 ==.
                           1339 ;	c:/SiLabs/MCU/Inc/c8051F320.h:145: sfr EIP1     = 0xF6;                   // Extended interrupt priority 1
   0392 75 DD F6           1340 	mov	_EIP1,#0xF6
                    013B   1341 	G$Force_Stall$0$0 ==.
                    013B   1342 	C$c8051F320.h$146$1$1 ==.
                           1343 ;	c:/SiLabs/MCU/Inc/c8051F320.h:146: sfr EIP2     = 0xF7;                   // Extended interrupt priority 2
   0395 75 DE F7           1344 	mov	_EIP2,#0xF7
                    013E   1345 	G$Force_Stall$0$0 ==.
                    013E   1346 	C$c8051F320.h$147$1$1 ==.
                           1347 ;	c:/SiLabs/MCU/Inc/c8051F320.h:147: sfr SPI0CN   = 0xF8;                   // SPI0 control register
   0398 75 DF F8           1348 	mov	_SPI0CN,#0xF8
                    0141   1349 	G$Force_Stall$0$0 ==.
                    0141   1350 	C$c8051F320.h$148$1$1 ==.
                           1351 ;	c:/SiLabs/MCU/Inc/c8051F320.h:148: sfr PCA0L    = 0xF9;                   // PCA0 counter/timer - Low byte
   039B 75 E0 F9           1352 	mov	_PCA0L,#0xF9
                    0144   1353 	G$Force_Stall$0$0 ==.
                    0144   1354 	C$c8051F320.h$149$1$1 ==.
                           1355 ;	c:/SiLabs/MCU/Inc/c8051F320.h:149: sfr PCA0H    = 0xFA;                   // PCA0 counter/timer - High byte
   039E 75 E1 FA           1356 	mov	_PCA0H,#0xFA
                    0147   1357 	G$Force_Stall$0$0 ==.
                    0147   1358 	C$c8051F320.h$150$1$1 ==.
                           1359 ;	c:/SiLabs/MCU/Inc/c8051F320.h:150: sfr PCA0CPL0 = 0xFB;                   // Capture/compare module0 - Low byte
   03A1 75 E2 FB           1360 	mov	_PCA0CPL0,#0xFB
                    014A   1361 	G$Force_Stall$0$0 ==.
                    014A   1362 	C$c8051F320.h$151$1$1 ==.
                           1363 ;	c:/SiLabs/MCU/Inc/c8051F320.h:151: sfr PCA0CPH0 = 0xFC;                   // Capture/compare module0 - High byte
   03A4 75 E3 FC           1364 	mov	_PCA0CPH0,#0xFC
                    014D   1365 	G$Force_Stall$0$0 ==.
                    014D   1366 	C$c8051F320.h$152$1$1 ==.
                           1367 ;	c:/SiLabs/MCU/Inc/c8051F320.h:152: sfr PCA0CPL4 = 0xFD;                   // Capture/compare module4 - Low byte
   03A7 75 E4 FD           1368 	mov	_PCA0CPL4,#0xFD
                    0150   1369 	G$Force_Stall$0$0 ==.
                    0150   1370 	C$c8051F320.h$153$1$1 ==.
                           1371 ;	c:/SiLabs/MCU/Inc/c8051F320.h:153: sfr PCA0CPH4 = 0xFE;                   // Capture/compare module4 - High byte
   03AA 75 E5 FE           1372 	mov	_PCA0CPH4,#0xFE
                    0153   1373 	G$Force_Stall$0$0 ==.
                    0153   1374 	C$c8051F320.h$154$1$1 ==.
                           1375 ;	c:/SiLabs/MCU/Inc/c8051F320.h:154: sfr VDM0CN   = 0xFF;                   // Vdd monitor control
   03AD 75 E6 FF           1376 	mov	_VDM0CN,#0xFF
                    0156   1377 	G$Force_Stall$0$0 ==.
                    0156   1378 	C$c8051F320.h$161$1$1 ==.
                           1379 ;	c:/SiLabs/MCU/Inc/c8051F320.h:161: sbit TF1     = 0x8F;                   // Timer1 overflow flag
   03B0 D2 E7              1380 	setb	_TF1
                    0158   1381 	G$Force_Stall$0$0 ==.
                    0158   1382 	C$c8051F320.h$162$1$1 ==.
                           1383 ;	c:/SiLabs/MCU/Inc/c8051F320.h:162: sbit TR1     = 0x8E;                   // Timer1 on/off control
   03B2 D2 E8              1384 	setb	_TR1
                    015A   1385 	G$Force_Stall$0$0 ==.
                    015A   1386 	C$c8051F320.h$163$1$1 ==.
                           1387 ;	c:/SiLabs/MCU/Inc/c8051F320.h:163: sbit TF0     = 0x8D;                   // Timer0 overflow flag
   03B4 D2 E9              1388 	setb	_TF0
                    015C   1389 	G$Force_Stall$0$0 ==.
                    015C   1390 	C$c8051F320.h$164$1$1 ==.
                           1391 ;	c:/SiLabs/MCU/Inc/c8051F320.h:164: sbit TR0     = 0x8C;                   // Timer0 on/off control
   03B6 D2 EA              1392 	setb	_TR0
                    015E   1393 	G$Force_Stall$0$0 ==.
                    015E   1394 	C$c8051F320.h$165$1$1 ==.
                           1395 ;	c:/SiLabs/MCU/Inc/c8051F320.h:165: sbit IE1     = 0x8B;                   // Ext interrupt 1 edge flag
   03B8 D2 EB              1396 	setb	_IE1
                    0160   1397 	G$Force_Stall$0$0 ==.
                    0160   1398 	C$c8051F320.h$166$1$1 ==.
                           1399 ;	c:/SiLabs/MCU/Inc/c8051F320.h:166: sbit IT1     = 0x8A;                   // Ext interrupt 1 type
   03BA D2 EC              1400 	setb	_IT1
                    0162   1401 	G$Force_Stall$0$0 ==.
                    0162   1402 	C$c8051F320.h$167$1$1 ==.
                           1403 ;	c:/SiLabs/MCU/Inc/c8051F320.h:167: sbit IE0     = 0x89;                   // Ext interrupt 0 edge flag
   03BC D2 ED              1404 	setb	_IE0
                    0164   1405 	G$Force_Stall$0$0 ==.
                    0164   1406 	C$c8051F320.h$168$1$1 ==.
                           1407 ;	c:/SiLabs/MCU/Inc/c8051F320.h:168: sbit IT0     = 0x88;                   // Ext interrupt 0 type
   03BE D2 EE              1408 	setb	_IT0
                    0166   1409 	G$Force_Stall$0$0 ==.
                    0166   1410 	C$c8051F320.h$171$1$1 ==.
                           1411 ;	c:/SiLabs/MCU/Inc/c8051F320.h:171: sbit S0MODE  = 0x9F;                   // Serial mode control bit 0
   03C0 D2 EF              1412 	setb	_S0MODE
                    0168   1413 	G$Force_Stall$0$0 ==.
                    0168   1414 	C$c8051F320.h$173$1$1 ==.
                           1415 ;	c:/SiLabs/MCU/Inc/c8051F320.h:173: sbit MCE0    = 0x9D;                   // Multiprocessor communication enable
   03C2 D2 F0              1416 	setb	_MCE0
                    016A   1417 	G$Force_Stall$0$0 ==.
                    016A   1418 	C$c8051F320.h$174$1$1 ==.
                           1419 ;	c:/SiLabs/MCU/Inc/c8051F320.h:174: sbit REN0    = 0x9C;                   // Receive enable
   03C4 D2 F1              1420 	setb	_REN0
                    016C   1421 	G$Force_Stall$0$0 ==.
                    016C   1422 	C$c8051F320.h$175$1$1 ==.
                           1423 ;	c:/SiLabs/MCU/Inc/c8051F320.h:175: sbit TB80    = 0x9B;                   // Transmit bit 8
   03C6 D2 F2              1424 	setb	_TB80
                    016E   1425 	G$Force_Stall$0$0 ==.
                    016E   1426 	C$c8051F320.h$176$1$1 ==.
                           1427 ;	c:/SiLabs/MCU/Inc/c8051F320.h:176: sbit RB80    = 0x9A;                   // Receive bit 8
   03C8 D2 F3              1428 	setb	_RB80
                    0170   1429 	G$Force_Stall$0$0 ==.
                    0170   1430 	C$c8051F320.h$177$1$1 ==.
                           1431 ;	c:/SiLabs/MCU/Inc/c8051F320.h:177: sbit TI0     = 0x99;                   // Transmit interrupt flag
   03CA D2 F4              1432 	setb	_TI0
                    0172   1433 	G$Force_Stall$0$0 ==.
                    0172   1434 	C$c8051F320.h$178$1$1 ==.
                           1435 ;	c:/SiLabs/MCU/Inc/c8051F320.h:178: sbit RI0     = 0x98;                   // Receive interrupt flag
   03CC D2 F5              1436 	setb	_RI0
                    0174   1437 	G$Force_Stall$0$0 ==.
                    0174   1438 	C$c8051F320.h$181$1$1 ==.
                           1439 ;	c:/SiLabs/MCU/Inc/c8051F320.h:181: sbit EA      = 0xAF;                   // Global interrupt enable
   03CE D2 F6              1440 	setb	_EA
                    0176   1441 	G$Force_Stall$0$0 ==.
                    0176   1442 	C$c8051F320.h$182$1$1 ==.
                           1443 ;	c:/SiLabs/MCU/Inc/c8051F320.h:182: sbit ESPI0   = 0xAE;                   // SPI0 interrupt enable
   03D0 D2 F7              1444 	setb	_ESPI0
                    0178   1445 	G$Force_Stall$0$0 ==.
                    0178   1446 	C$c8051F320.h$183$1$1 ==.
                           1447 ;	c:/SiLabs/MCU/Inc/c8051F320.h:183: sbit ET2     = 0xAD;                   // Timer2 interrupt enable
   03D2 D2 F8              1448 	setb	_ET2
                    017A   1449 	G$Force_Stall$0$0 ==.
                    017A   1450 	C$c8051F320.h$184$1$1 ==.
                           1451 ;	c:/SiLabs/MCU/Inc/c8051F320.h:184: sbit ES0     = 0xAC;                   // UART0 interrupt enable
   03D4 D2 F9              1452 	setb	_ES0
                    017C   1453 	G$Force_Stall$0$0 ==.
                    017C   1454 	C$c8051F320.h$185$1$1 ==.
                           1455 ;	c:/SiLabs/MCU/Inc/c8051F320.h:185: sbit ET1     = 0xAB;                   // Timer1 interrupt enable
   03D6 D2 FA              1456 	setb	_ET1
                    017E   1457 	G$Force_Stall$0$0 ==.
                    017E   1458 	C$c8051F320.h$186$1$1 ==.
                           1459 ;	c:/SiLabs/MCU/Inc/c8051F320.h:186: sbit EX1     = 0xAA;                   // External interrupt 1 enable
   03D8 D2 FB              1460 	setb	_EX1
                    0180   1461 	G$Force_Stall$0$0 ==.
                    0180   1462 	C$c8051F320.h$187$1$1 ==.
                           1463 ;	c:/SiLabs/MCU/Inc/c8051F320.h:187: sbit ET0     = 0xA9;                   // Timer0 interrupt enable
   03DA D2 FC              1464 	setb	_ET0
                    0182   1465 	G$Force_Stall$0$0 ==.
                    0182   1466 	C$c8051F320.h$188$1$1 ==.
                           1467 ;	c:/SiLabs/MCU/Inc/c8051F320.h:188: sbit EX0     = 0xA8;                   // External interrupt 0 enable
   03DC D2 FD              1468 	setb	_EX0
                    0184   1469 	G$Force_Stall$0$0 ==.
                    0184   1470 	C$c8051F320.h$192$1$1 ==.
                           1471 ;	c:/SiLabs/MCU/Inc/c8051F320.h:192: sbit PSPI0   = 0xBE;                   // SPI0 interrupt priority
   03DE D2 FE              1472 	setb	_PSPI0
                    0186   1473 	G$Force_Stall$0$0 ==.
                    0186   1474 	C$c8051F320.h$193$1$1 ==.
                           1475 ;	c:/SiLabs/MCU/Inc/c8051F320.h:193: sbit PT2     = 0xBD;                   // Timer2 priority
   03E0 D2 FF              1476 	setb	_PT2
                    0188   1477 	G$Force_Stall$0$0 ==.
                    0188   1478 	C$c8051F320.h$194$1$1 ==.
                           1479 ;	c:/SiLabs/MCU/Inc/c8051F320.h:194: sbit PS0     = 0xBC;                   // UART0 priority
   03E2 D2 00              1480 	setb	_PS0
                    018A   1481 	G$Force_Stall$0$0 ==.
                    018A   1482 	C$c8051F320.h$195$1$1 ==.
                           1483 ;	c:/SiLabs/MCU/Inc/c8051F320.h:195: sbit PT1     = 0xBB;                   // Timer1 priority
   03E4 D2 01              1484 	setb	_PT1
                    018C   1485 	G$Force_Stall$0$0 ==.
                    018C   1486 	C$c8051F320.h$196$1$1 ==.
                           1487 ;	c:/SiLabs/MCU/Inc/c8051F320.h:196: sbit PX1     = 0xBA;                   // External interrupt 1 priority
   03E6 D2 02              1488 	setb	_PX1
                    018E   1489 	G$Force_Stall$0$0 ==.
                    018E   1490 	C$c8051F320.h$197$1$1 ==.
                           1491 ;	c:/SiLabs/MCU/Inc/c8051F320.h:197: sbit PT0     = 0xB9;                   // Timer0 priority
   03E8 D2 03              1492 	setb	_PT0
                    0190   1493 	G$Force_Stall$0$0 ==.
                    0190   1494 	C$c8051F320.h$198$1$1 ==.
                           1495 ;	c:/SiLabs/MCU/Inc/c8051F320.h:198: sbit PX0     = 0xB8;                   // External interrupt 0 priority
   03EA D2 04              1496 	setb	_PX0
                    0192   1497 	G$Force_Stall$0$0 ==.
                    0192   1498 	C$c8051F320.h$201$1$1 ==.
                           1499 ;	c:/SiLabs/MCU/Inc/c8051F320.h:201: sbit MASTER  = 0xC7;                   // Master/slave indicator
   03EC D2 05              1500 	setb	_MASTER
                    0194   1501 	G$Force_Stall$0$0 ==.
                    0194   1502 	C$c8051F320.h$202$1$1 ==.
                           1503 ;	c:/SiLabs/MCU/Inc/c8051F320.h:202: sbit TXMODE  = 0xC6;                   // Transmit mode indicator
   03EE D2 06              1504 	setb	_TXMODE
                    0196   1505 	G$Force_Stall$0$0 ==.
                    0196   1506 	C$c8051F320.h$203$1$1 ==.
                           1507 ;	c:/SiLabs/MCU/Inc/c8051F320.h:203: sbit STA     = 0xC5;                   // Start flag
   03F0 D2 07              1508 	setb	_STA
                    0198   1509 	G$Force_Stall$0$0 ==.
                    0198   1510 	C$c8051F320.h$204$1$1 ==.
                           1511 ;	c:/SiLabs/MCU/Inc/c8051F320.h:204: sbit STO     = 0xC4;                   // Stop flag
   03F2 D2 08              1512 	setb	_STO
                    019A   1513 	G$Force_Stall$0$0 ==.
                    019A   1514 	C$c8051F320.h$205$1$1 ==.
                           1515 ;	c:/SiLabs/MCU/Inc/c8051F320.h:205: sbit ACKRQ   = 0xC3;                   // Acknowledge request
   03F4 D2 09              1516 	setb	_ACKRQ
                    019C   1517 	G$Force_Stall$0$0 ==.
                    019C   1518 	C$c8051F320.h$206$1$1 ==.
                           1519 ;	c:/SiLabs/MCU/Inc/c8051F320.h:206: sbit ARBLOST = 0xC2;                   // Arbitration lost indicator
   03F6 D2 0A              1520 	setb	_ARBLOST
                    019E   1521 	G$Force_Stall$0$0 ==.
                    019E   1522 	C$c8051F320.h$207$1$1 ==.
                           1523 ;	c:/SiLabs/MCU/Inc/c8051F320.h:207: sbit ACK     = 0xC1;                   // Acknowledge flag
   03F8 D2 0B              1524 	setb	_ACK
                    01A0   1525 	G$Force_Stall$0$0 ==.
                    01A0   1526 	C$c8051F320.h$208$1$1 ==.
                           1527 ;	c:/SiLabs/MCU/Inc/c8051F320.h:208: sbit SI      = 0xC0;                   // SMBus interrupt flag
   03FA D2 0C              1528 	setb	_SI
                    01A2   1529 	G$Force_Stall$0$0 ==.
                    01A2   1530 	C$c8051F320.h$211$1$1 ==.
                           1531 ;	c:/SiLabs/MCU/Inc/c8051F320.h:211: sbit TF2H    = 0xCF;                   // Timer2 high byte overflow flag
   03FC D2 0D              1532 	setb	_TF2H
                    01A4   1533 	G$Force_Stall$0$0 ==.
                    01A4   1534 	C$c8051F320.h$212$1$1 ==.
                           1535 ;	c:/SiLabs/MCU/Inc/c8051F320.h:212: sbit TF2L    = 0xCE;                   // Timer2 low byte overflow flag
   03FE D2 0E              1536 	setb	_TF2L
                    01A6   1537 	G$Force_Stall$0$0 ==.
                    01A6   1538 	C$c8051F320.h$213$1$1 ==.
                           1539 ;	c:/SiLabs/MCU/Inc/c8051F320.h:213: sbit TF2LEN  = 0xCD;                   // Timer2 low byte interrupt enable
   0400 D2 0F              1540 	setb	_TF2LEN
                    01A8   1541 	G$Force_Stall$0$0 ==.
                    01A8   1542 	C$c8051F320.h$214$1$1 ==.
                           1543 ;	c:/SiLabs/MCU/Inc/c8051F320.h:214: sbit T2SOF   = 0xCC;                   // Timer2 start-of-frame capture enable
   0402 D2 10              1544 	setb	_T2SOF
                    01AA   1545 	G$Force_Stall$0$0 ==.
                    01AA   1546 	C$c8051F320.h$215$1$1 ==.
                           1547 ;	c:/SiLabs/MCU/Inc/c8051F320.h:215: sbit T2SPLIT = 0xCB;                   // Timer2 split mode enable
   0404 D2 11              1548 	setb	_T2SPLIT
                    01AC   1549 	G$Force_Stall$0$0 ==.
                    01AC   1550 	C$c8051F320.h$216$1$1 ==.
                           1551 ;	c:/SiLabs/MCU/Inc/c8051F320.h:216: sbit TR2     = 0xCA;                   // Timer2 on/off control
   0406 D2 12              1552 	setb	_TR2
                    01AE   1553 	G$Force_Stall$0$0 ==.
                    01AE   1554 	C$c8051F320.h$218$1$1 ==.
                           1555 ;	c:/SiLabs/MCU/Inc/c8051F320.h:218: sbit T2XCLK  = 0xC8;                   // Timer2 external clock select
   0408 D2 13              1556 	setb	_T2XCLK
                    01B0   1557 	G$Force_Stall$0$0 ==.
                    01B0   1558 	C$c8051F320.h$221$1$1 ==.
                           1559 ;	c:/SiLabs/MCU/Inc/c8051F320.h:221: sbit CY      = 0xD7;                   // Carry flag
   040A D2 14              1560 	setb	_CY
                    01B2   1561 	G$Force_Stall$0$0 ==.
                    01B2   1562 	C$c8051F320.h$222$1$1 ==.
                           1563 ;	c:/SiLabs/MCU/Inc/c8051F320.h:222: sbit AC      = 0xD6;                   // Auxiliary carry flag
   040C D2 15              1564 	setb	_AC
                    01B4   1565 	G$Force_Stall$0$0 ==.
                    01B4   1566 	C$c8051F320.h$223$1$1 ==.
                           1567 ;	c:/SiLabs/MCU/Inc/c8051F320.h:223: sbit F0      = 0xD5;                   // User flag 0
   040E D2 16              1568 	setb	_F0
                    01B6   1569 	G$Force_Stall$0$0 ==.
                    01B6   1570 	C$c8051F320.h$224$1$1 ==.
                           1571 ;	c:/SiLabs/MCU/Inc/c8051F320.h:224: sbit RS1     = 0xD4;                   // Register bank select 1
   0410 D2 17              1572 	setb	_RS1
                    01B8   1573 	G$Force_Stall$0$0 ==.
                    01B8   1574 	C$c8051F320.h$225$1$1 ==.
                           1575 ;	c:/SiLabs/MCU/Inc/c8051F320.h:225: sbit RS0     = 0xD3;                   // Register bank select 0
   0412 D2 18              1576 	setb	_RS0
                    01BA   1577 	G$Force_Stall$0$0 ==.
                    01BA   1578 	C$c8051F320.h$226$1$1 ==.
                           1579 ;	c:/SiLabs/MCU/Inc/c8051F320.h:226: sbit OV      = 0xD2;                   // Overflow flag
   0414 D2 19              1580 	setb	_OV
                    01BC   1581 	G$Force_Stall$0$0 ==.
                    01BC   1582 	C$c8051F320.h$227$1$1 ==.
                           1583 ;	c:/SiLabs/MCU/Inc/c8051F320.h:227: sbit F1      = 0xD1;                   // User flag 1
   0416 D2 1A              1584 	setb	_F1
                    01BE   1585 	G$Force_Stall$0$0 ==.
                    01BE   1586 	C$c8051F320.h$228$1$1 ==.
                           1587 ;	c:/SiLabs/MCU/Inc/c8051F320.h:228: sbit P       = 0xD0;                   // Accumulator parity flag
   0418 D2 1B              1588 	setb	_P
                    01C0   1589 	G$Force_Stall$0$0 ==.
                    01C0   1590 	C$c8051F320.h$231$1$1 ==.
                           1591 ;	c:/SiLabs/MCU/Inc/c8051F320.h:231: sbit CF      = 0xDF;                   // PCA0 counter overflow flag
   041A D2 1C              1592 	setb	_CF
                    01C2   1593 	G$Force_Stall$0$0 ==.
                    01C2   1594 	C$c8051F320.h$232$1$1 ==.
                           1595 ;	c:/SiLabs/MCU/Inc/c8051F320.h:232: sbit CR      = 0xDE;                   // PCA0 counter run control
   041C D2 1D              1596 	setb	_CR
                    01C4   1597 	G$Force_Stall$0$0 ==.
                    01C4   1598 	C$c8051F320.h$234$1$1 ==.
                           1599 ;	c:/SiLabs/MCU/Inc/c8051F320.h:234: sbit CCF4    = 0xDC;                   // PCA0 module4 capture/compare flag
   041E D2 1E              1600 	setb	_CCF4
                    01C6   1601 	G$Force_Stall$0$0 ==.
                    01C6   1602 	C$c8051F320.h$235$1$1 ==.
                           1603 ;	c:/SiLabs/MCU/Inc/c8051F320.h:235: sbit CCF3    = 0xDB;                   // PCA0 module3 capture/compare flag
   0420 D2 1F              1604 	setb	_CCF3
                    01C8   1605 	G$Force_Stall$0$0 ==.
                    01C8   1606 	C$c8051F320.h$236$1$1 ==.
                           1607 ;	c:/SiLabs/MCU/Inc/c8051F320.h:236: sbit CCF2    = 0xDA;                   // PCA0 module2 capture/compare flag
   0422 D2 20              1608 	setb	_CCF2
                    01CA   1609 	G$Force_Stall$0$0 ==.
                    01CA   1610 	C$c8051F320.h$237$1$1 ==.
                           1611 ;	c:/SiLabs/MCU/Inc/c8051F320.h:237: sbit CCF1    = 0xD9;                   // PCA0 module1 capture/compare flag
   0424 D2 21              1612 	setb	_CCF1
                    01CC   1613 	G$Force_Stall$0$0 ==.
                    01CC   1614 	C$c8051F320.h$238$1$1 ==.
                           1615 ;	c:/SiLabs/MCU/Inc/c8051F320.h:238: sbit CCF0    = 0xD8;                   // PCA0 module0 capture/compare flag
   0426 D2 22              1616 	setb	_CCF0
                    01CE   1617 	G$Force_Stall$0$0 ==.
                    01CE   1618 	C$c8051F320.h$241$1$1 ==.
                           1619 ;	c:/SiLabs/MCU/Inc/c8051F320.h:241: sbit AD0EN   = 0xEF;                   // ADC0 enable
   0428 D2 23              1620 	setb	_AD0EN
                    01D0   1621 	G$Force_Stall$0$0 ==.
                    01D0   1622 	C$c8051F320.h$242$1$1 ==.
                           1623 ;	c:/SiLabs/MCU/Inc/c8051F320.h:242: sbit AD0TM   = 0xEE;                   // ADC0 track mode
   042A D2 24              1624 	setb	_AD0TM
                    01D2   1625 	G$Force_Stall$0$0 ==.
                    01D2   1626 	C$c8051F320.h$243$1$1 ==.
                           1627 ;	c:/SiLabs/MCU/Inc/c8051F320.h:243: sbit AD0INT  = 0xED;                   // ADC0 converision complete interrupt flag
   042C D2 25              1628 	setb	_AD0INT
                    01D4   1629 	G$Force_Stall$0$0 ==.
                    01D4   1630 	C$c8051F320.h$244$1$1 ==.
                           1631 ;	c:/SiLabs/MCU/Inc/c8051F320.h:244: sbit AD0BUSY = 0xEC;                   // ADC0 busy flag
   042E D2 26              1632 	setb	_AD0BUSY
                    01D6   1633 	G$Force_Stall$0$0 ==.
                    01D6   1634 	C$c8051F320.h$245$1$1 ==.
                           1635 ;	c:/SiLabs/MCU/Inc/c8051F320.h:245: sbit AD0WINT = 0xEB;                   // ADC0 window compare interrupt flag
   0430 D2 27              1636 	setb	_AD0WINT
                    01D8   1637 	G$Force_Stall$0$0 ==.
                    01D8   1638 	C$c8051F320.h$246$1$1 ==.
                           1639 ;	c:/SiLabs/MCU/Inc/c8051F320.h:246: sbit AD0CM2  = 0xEA;                   // ADC0 conversion mode select 2
   0432 D2 28              1640 	setb	_AD0CM2
                    01DA   1641 	G$Force_Stall$0$0 ==.
                    01DA   1642 	C$c8051F320.h$247$1$1 ==.
                           1643 ;	c:/SiLabs/MCU/Inc/c8051F320.h:247: sbit AD0CM1  = 0xE9;                   // ADC0 conversion mode select 1
   0434 D2 29              1644 	setb	_AD0CM1
                    01DC   1645 	G$Force_Stall$0$0 ==.
                    01DC   1646 	C$c8051F320.h$248$1$1 ==.
                           1647 ;	c:/SiLabs/MCU/Inc/c8051F320.h:248: sbit AD0CM0  = 0xE8;                   // ADC0 conversion mode select 0
   0436 D2 2A              1648 	setb	_AD0CM0
                    01DE   1649 	G$Force_Stall$0$0 ==.
                    01DE   1650 	C$c8051F320.h$251$1$1 ==.
                           1651 ;	c:/SiLabs/MCU/Inc/c8051F320.h:251: sbit SPIF    = 0xFF;                   // SPI0 interrupt flag
   0438 D2 2B              1652 	setb	_SPIF
                    01E0   1653 	G$Force_Stall$0$0 ==.
                    01E0   1654 	C$c8051F320.h$252$1$1 ==.
                           1655 ;	c:/SiLabs/MCU/Inc/c8051F320.h:252: sbit WCOL    = 0xFE;                   // SPI0 write collision flag
   043A D2 2C              1656 	setb	_WCOL
                    01E2   1657 	G$Force_Stall$0$0 ==.
                    01E2   1658 	C$c8051F320.h$253$1$1 ==.
                           1659 ;	c:/SiLabs/MCU/Inc/c8051F320.h:253: sbit MODF    = 0xFD;                   // SPI0 mode fault flag
   043C D2 2D              1660 	setb	_MODF
                    01E4   1661 	G$Force_Stall$0$0 ==.
                    01E4   1662 	C$c8051F320.h$254$1$1 ==.
                           1663 ;	c:/SiLabs/MCU/Inc/c8051F320.h:254: sbit RXOVRN  = 0xFC;                   // SPI0 rx overrun flag
   043E D2 2E              1664 	setb	_RXOVRN
                    01E6   1665 	G$Force_Stall$0$0 ==.
                    01E6   1666 	C$c8051F320.h$255$1$1 ==.
                           1667 ;	c:/SiLabs/MCU/Inc/c8051F320.h:255: sbit NSSMD1  = 0xFB;                   // SPI0 slave select mode 1
   0440 D2 2F              1668 	setb	_NSSMD1
                    01E8   1669 	G$Force_Stall$0$0 ==.
                    01E8   1670 	C$c8051F320.h$256$1$1 ==.
                           1671 ;	c:/SiLabs/MCU/Inc/c8051F320.h:256: sbit NSSMD0  = 0xFA;                   // SPI0 slave select mode 0
   0442 D2 30              1672 	setb	_NSSMD0
                    01EA   1673 	G$Force_Stall$0$0 ==.
                    01EA   1674 	C$c8051F320.h$257$1$1 ==.
                           1675 ;	c:/SiLabs/MCU/Inc/c8051F320.h:257: sbit TXBMT   = 0xF9;                   // SPI0 transmit buffer empty
   0444 D2 31              1676 	setb	_TXBMT
                    01EC   1677 	G$Force_Stall$0$0 ==.
                    01EC   1678 	C$c8051F320.h$258$1$1 ==.
                           1679 ;	c:/SiLabs/MCU/Inc/c8051F320.h:258: sbit SPIEN   = 0xF8;                   // SPI0 SPI enable
   0446 D2 32              1680 	setb	_SPIEN
                           1681 ;--------------------------------------------------------
                           1682 ; Home
                           1683 ;--------------------------------------------------------
                           1684 	.area HOME    (CODE)
                           1685 	.area HOME    (CODE)
                           1686 ;--------------------------------------------------------
                           1687 ; code
                           1688 ;--------------------------------------------------------
                           1689 	.area CSEG    (CODE)
                           1690 ;------------------------------------------------------------
                           1691 ;Allocation info for local variables in function 'Usb_ISR'
                           1692 ;------------------------------------------------------------
                           1693 ;bCommon                   Allocated to registers r2 
                           1694 ;bIn                       Allocated to registers r3 
                           1695 ;bOut                      Allocated to registers r4 
                           1696 ;------------------------------------------------------------
                    0000   1697 	G$Usb_ISR$0$0 ==.
                    0000   1698 	C$Interrupts.c$65$0$0 ==.
                           1699 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:65: void Usb_ISR(void) interrupt 8         // Top-level USB ISR
                           1700 ;	-----------------------------------------
                           1701 ;	 function Usb_ISR
                           1702 ;	-----------------------------------------
   08F9                    1703 _Usb_ISR:
                    0002   1704 	ar2 = 0x02
                    0003   1705 	ar3 = 0x03
                    0004   1706 	ar4 = 0x04
                    0005   1707 	ar5 = 0x05
                    0006   1708 	ar6 = 0x06
                    0007   1709 	ar7 = 0x07
                    0000   1710 	ar0 = 0x00
                    0001   1711 	ar1 = 0x01
   08F9 C0 20              1712 	push	bits
   08FB C0 E0              1713 	push	acc
   08FD C0 F0              1714 	push	b
   08FF C0 82              1715 	push	dpl
   0901 C0 83              1716 	push	dph
   0903 C0 02              1717 	push	(0+2)
   0905 C0 03              1718 	push	(0+3)
   0907 C0 04              1719 	push	(0+4)
   0909 C0 05              1720 	push	(0+5)
   090B C0 06              1721 	push	(0+6)
   090D C0 07              1722 	push	(0+7)
   090F C0 00              1723 	push	(0+0)
   0911 C0 01              1724 	push	(0+1)
   0913 C0 D0              1725 	push	psw
   0915 75 D0 00           1726 	mov	psw,#0x00
                    001F   1727 	C$Interrupts.c$68$1$1 ==.
                           1728 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:68: POLL_READ_BYTE(CMINT, bCommon);     // Read all interrupt registers
   0918                    1729 00101$:
   0918 E5 8B              1730 	mov	a,_USB0ADR
   091A 20 E7 FB           1731 	jb	acc.7,00101$
   091D 75 8B 86           1732 	mov	_USB0ADR,#0x86
   0920                    1733 00104$:
   0920 E5 8B              1734 	mov	a,_USB0ADR
   0922 20 E7 FB           1735 	jb	acc.7,00104$
   0925 AA 8C              1736 	mov	r2,_USB0DAT
                    002E   1737 	C$Interrupts.c$69$1$1 ==.
                           1738 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:69: POLL_READ_BYTE(IN1INT, bIn);        // this read also clears the register
   0927                    1739 00107$:
   0927 E5 8B              1740 	mov	a,_USB0ADR
   0929 20 E7 FB           1741 	jb	acc.7,00107$
   092C 75 8B 82           1742 	mov	_USB0ADR,#0x82
   092F                    1743 00110$:
   092F E5 8B              1744 	mov	a,_USB0ADR
   0931 20 E7 FB           1745 	jb	acc.7,00110$
   0934 AB 8C              1746 	mov	r3,_USB0DAT
                    003D   1747 	C$Interrupts.c$70$1$1 ==.
                           1748 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:70: POLL_READ_BYTE(OUT1INT, bOut);
   0936                    1749 00113$:
   0936 E5 8B              1750 	mov	a,_USB0ADR
   0938 20 E7 FB           1751 	jb	acc.7,00113$
   093B 75 8B 84           1752 	mov	_USB0ADR,#0x84
   093E                    1753 00116$:
   093E E5 8B              1754 	mov	a,_USB0ADR
   0940 20 E7 FB           1755 	jb	acc.7,00116$
   0943 AC 8C              1756 	mov	r4,_USB0DAT
                    004C   1757 	C$Interrupts.c$72$2$5 ==.
                           1758 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:72: if (bCommon & rbRSUINT)          // Handle Resume interrupt
   0945 EA                 1759 	mov	a,r2
   0946 30 E1 0F           1760 	jnb	acc.1,00120$
                    0050   1761 	C$Interrupts.c$74$3$6 ==.
                           1762 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:74: Usb_Resume();
   0949 C0 02              1763 	push	ar2
   094B C0 03              1764 	push	ar3
   094D C0 04              1765 	push	ar4
   094F 12 0E F3           1766 	lcall	_Usb_Resume
   0952 D0 04              1767 	pop	ar4
   0954 D0 03              1768 	pop	ar3
   0956 D0 02              1769 	pop	ar2
   0958                    1770 00120$:
                    005F   1771 	C$Interrupts.c$76$2$5 ==.
                           1772 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:76: if (bCommon & rbRSTINT)          // Handle Reset interrupt
   0958 EA                 1773 	mov	a,r2
   0959 30 E2 0F           1774 	jnb	acc.2,00122$
                    0063   1775 	C$Interrupts.c$78$3$7 ==.
                           1776 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:78: Usb_Reset();
   095C C0 02              1777 	push	ar2
   095E C0 03              1778 	push	ar3
   0960 C0 04              1779 	push	ar4
   0962 12 0A 4F           1780 	lcall	_Usb_Reset
   0965 D0 04              1781 	pop	ar4
   0967 D0 03              1782 	pop	ar3
   0969 D0 02              1783 	pop	ar2
   096B                    1784 00122$:
                    0072   1785 	C$Interrupts.c$80$2$5 ==.
                           1786 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:80: if (bIn & rbEP0)                 // Handle Setup packet received
   096B EB                 1787 	mov	a,r3
   096C 30 E0 0F           1788 	jnb	acc.0,00124$
                    0076   1789 	C$Interrupts.c$82$3$8 ==.
                           1790 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:82: Handle_Setup();               // is transmit mode
   096F C0 02              1791 	push	ar2
   0971 C0 03              1792 	push	ar3
   0973 C0 04              1793 	push	ar4
   0975 12 0A 67           1794 	lcall	_Handle_Setup
   0978 D0 04              1795 	pop	ar4
   097A D0 03              1796 	pop	ar3
   097C D0 02              1797 	pop	ar2
   097E                    1798 00124$:
                    0085   1799 	C$Interrupts.c$84$2$5 ==.
                           1800 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:84: if (bIn & rbIN1)                 // Handle In Packet sent, put new data
   097E EB                 1801 	mov	a,r3
   097F 30 E1 0B           1802 	jnb	acc.1,00126$
                    0089   1803 	C$Interrupts.c$86$3$9 ==.
                           1804 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:86: Handle_In1();
   0982 C0 02              1805 	push	ar2
   0984 C0 04              1806 	push	ar4
   0986 12 0C 52           1807 	lcall	_Handle_In1
   0989 D0 04              1808 	pop	ar4
   098B D0 02              1809 	pop	ar2
   098D                    1810 00126$:
                    0094   1811 	C$Interrupts.c$88$2$5 ==.
                           1812 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:88: if (bOut & rbOUT2)               // Handle Out packet received, take data
   098D EC                 1813 	mov	a,r4
   098E 30 E2 07           1814 	jnb	acc.2,00128$
                    0098   1815 	C$Interrupts.c$90$3$10 ==.
                           1816 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:90: Handle_Out2();
   0991 C0 02              1817 	push	ar2
   0993 12 0E 2B           1818 	lcall	_Handle_Out2
   0996 D0 02              1819 	pop	ar2
   0998                    1820 00128$:
                    009F   1821 	C$Interrupts.c$92$2$5 ==.
                           1822 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:92: if (bCommon & rbSUSINT)          // Handle Suspend interrupt
   0998 EA                 1823 	mov	a,r2
   0999 30 E0 03           1824 	jnb	acc.0,00131$
                    00A3   1825 	C$Interrupts.c$94$3$11 ==.
                           1826 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:94: Usb_Suspend();
   099C 12 0E CB           1827 	lcall	_Usb_Suspend
   099F                    1828 00131$:
   099F D0 D0              1829 	pop	psw
   09A1 D0 01              1830 	pop	(0+1)
   09A3 D0 00              1831 	pop	(0+0)
   09A5 D0 07              1832 	pop	(0+7)
   09A7 D0 06              1833 	pop	(0+6)
   09A9 D0 05              1834 	pop	(0+5)
   09AB D0 04              1835 	pop	(0+4)
   09AD D0 03              1836 	pop	(0+3)
   09AF D0 02              1837 	pop	(0+2)
   09B1 D0 83              1838 	pop	dph
   09B3 D0 82              1839 	pop	dpl
   09B5 D0 F0              1840 	pop	b
   09B7 D0 E0              1841 	pop	acc
   09B9 D0 20              1842 	pop	bits
                    00C2   1843 	C$Interrupts.c$97$1$5 ==.
                    00C2   1844 	XG$Usb_ISR$0$0 ==.
   09BB 32                 1845 	reti
                           1846 ;------------------------------------------------------------
                           1847 ;Allocation info for local variables in function 'SPI_ISR'
                           1848 ;------------------------------------------------------------
                           1849 ;RXbyte                    Allocated to registers r2 r3 
                           1850 ;------------------------------------------------------------
                    00C3   1851 	G$SPI_ISR$0$0 ==.
                    00C3   1852 	C$Interrupts.c$108$1$5 ==.
                           1853 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:108: void SPI_ISR() interrupt 6
                           1854 ;	-----------------------------------------
                           1855 ;	 function SPI_ISR
                           1856 ;	-----------------------------------------
   09BC                    1857 _SPI_ISR:
   09BC C0 E0              1858 	push	acc
   09BE C0 F0              1859 	push	b
   09C0 C0 02              1860 	push	ar2
   09C2 C0 03              1861 	push	ar3
   09C4 C0 D0              1862 	push	psw
   09C6 75 D0 00           1863 	mov	psw,#0x00
                    00D0   1864 	C$Interrupts.c$120$1$1 ==.
                           1865 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:120: if ((SPI0CN & 0x80) == 0x80)		// TX complete, byte ready to read
   09C9 74 80              1866 	mov	a,#0x80
   09CB 55 DF              1867 	anl	a,_SPI0CN
   09CD FA                 1868 	mov	r2,a
   09CE BA 80 55           1869 	cjne	r2,#0x80,00114$
                    00D8   1870 	C$Interrupts.c$122$2$2 ==.
                           1871 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:122: SPIF = 0;			// clear interrupt flag
   09D1 C2 2B              1872 	clr	_SPIF
                    00DA   1873 	C$Interrupts.c$124$2$2 ==.
                           1874 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:124: RXbyte = SPI0DAT;	// This could be a byte from the DAC, ADC, or RAM.
   09D3 AA 9B              1875 	mov	r2,_SPI0DAT
   09D5 7B 00              1876 	mov	r3,#0x00
                    00DE   1877 	C$Interrupts.c$125$2$2 ==.
                           1878 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:125: if (Writing_to_ADC > 0)			// ADC
   09D7 C3                 1879 	clr	c
   09D8 E4                 1880 	clr	a
   09D9 95 0A              1881 	subb	a,_Writing_to_ADC
   09DB 74 80              1882 	mov	a,#(0x00 ^ 0x80)
   09DD 85 0B F0           1883 	mov	b,(_Writing_to_ADC + 1)
   09E0 63 F0 80           1884 	xrl	b,#0x80
   09E3 95 F0              1885 	subb	a,b
   09E5 50 1A              1886 	jnc	00111$
                    00EE   1887 	C$Interrupts.c$127$3$3 ==.
                           1888 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:127: SPI_ADC_Bytes++;			// Do not zero in this ISR
   09E7 05 0E              1889 	inc	_SPI_ADC_Bytes
   09E9 E4                 1890 	clr	a
   09EA B5 0E 02           1891 	cjne	a,_SPI_ADC_Bytes,00134$
   09ED 05 0F              1892 	inc	(_SPI_ADC_Bytes + 1)
   09EF                    1893 00134$:
                    00F6   1894 	C$Interrupts.c$128$3$3 ==.
                           1895 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:128: if (SPI_ADC_Bytes == 0)
   09EF E5 0E              1896 	mov	a,_SPI_ADC_Bytes
   09F1 45 0F              1897 	orl	a,(_SPI_ADC_Bytes + 1)
   09F3 70 06              1898 	jnz	00102$
                    00FC   1899 	C$Interrupts.c$129$3$3 ==.
                           1900 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:129: latest_ADC_HighByte = RXbyte;
   09F5 8A 10              1901 	mov	_latest_ADC_HighByte,r2
   09F7 8B 11              1902 	mov	(_latest_ADC_HighByte + 1),r3
   09F9 80 25              1903 	sjmp	00112$
   09FB                    1904 00102$:
                    0102   1905 	C$Interrupts.c$131$3$3 ==.
                           1906 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:131: latest_ADC_LowByte = RXbyte;
   09FB 8A 12              1907 	mov	_latest_ADC_LowByte,r2
   09FD 8B 13              1908 	mov	(_latest_ADC_LowByte + 1),r3
   09FF 80 1F              1909 	sjmp	00112$
   0A01                    1910 00111$:
                    0108   1911 	C$Interrupts.c$133$2$2 ==.
                           1912 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:133: else if (Writing_to_DAC > 0)	// DAC
   0A01 C3                 1913 	clr	c
   0A02 E4                 1914 	clr	a
   0A03 95 08              1915 	subb	a,_Writing_to_DAC
   0A05 74 80              1916 	mov	a,#(0x00 ^ 0x80)
   0A07 85 09 F0           1917 	mov	b,(_Writing_to_DAC + 1)
   0A0A 63 F0 80           1918 	xrl	b,#0x80
   0A0D 95 F0              1919 	subb	a,b
   0A0F 50 0A              1920 	jnc	00104$
                    0118   1921 	C$Interrupts.c$134$2$2 ==.
                           1922 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:134: SPI_DAC_Bytes++;			// Do not zero in this ISR
   0A11 05 0C              1923 	inc	_SPI_DAC_Bytes
   0A13 E4                 1924 	clr	a
                    011B   1925 	C$Interrupts.c$136$2$2 ==.
                           1926 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:136: POLL_WRITE_BYTE(bError, 1);
   0A14 B5 0C 09           1927 	cjne	a,_SPI_DAC_Bytes,00112$
   0A17 05 0D              1928 	inc	(_SPI_DAC_Bytes + 1)
   0A19 80 05              1929 	sjmp	00112$
   0A1B                    1930 00104$:
   0A1B E5 8B              1931 	mov	a,_USB0ADR
   0A1D 20 E7 FB           1932 	jb	acc.7,00104$
   0A20                    1933 00112$:
   0A20 75 8B A2           1934 	mov	_USB0ADR,#0xA2
   0A23 75 8C 01           1935 	mov	_USB0DAT,#0x01
   0A26                    1936 00114$:
                    012D   1937 	C$Interrupts.c$138$1$1 ==.
                           1938 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:138: if ((SPI0CN & 0x40) == 0x40)	// write collision
   0A26 74 40              1939 	mov	a,#0x40
   0A28 55 DF              1940 	anl	a,_SPI0CN
   0A2A FA                 1941 	mov	r2,a
   0A2B BA 40 02           1942 	cjne	r2,#0x40,00116$
                    0135   1943 	C$Interrupts.c$140$2$5 ==.
                           1944 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:140: WCOL = 0;		// clear interrupt flag
   0A2E C2 2C              1945 	clr	_WCOL
   0A30                    1946 00116$:
                    0137   1947 	C$Interrupts.c$142$1$1 ==.
                           1948 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:142: if ((SPI0CN & 0x20) == 0x20)	// mode fault
   0A30 74 20              1949 	mov	a,#0x20
   0A32 55 DF              1950 	anl	a,_SPI0CN
   0A34 FA                 1951 	mov	r2,a
   0A35 BA 20 02           1952 	cjne	r2,#0x20,00118$
                    013F   1953 	C$Interrupts.c$144$2$6 ==.
                           1954 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:144: MODF = 0;		// clear interrupt flag
   0A38 C2 2D              1955 	clr	_MODF
   0A3A                    1956 00118$:
                    0141   1957 	C$Interrupts.c$146$1$1 ==.
                           1958 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:146: if ((SPI0CN & 0x10) == 0x10)	// RX overrun
   0A3A 74 10              1959 	mov	a,#0x10
   0A3C 55 DF              1960 	anl	a,_SPI0CN
   0A3E FA                 1961 	mov	r2,a
   0A3F BA 10 02           1962 	cjne	r2,#0x10,00121$
                    0149   1963 	C$Interrupts.c$148$2$7 ==.
                           1964 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:148: RXOVRN = 0;		// clear interrupt flag
   0A42 C2 2E              1965 	clr	_RXOVRN
   0A44                    1966 00121$:
   0A44 D0 D0              1967 	pop	psw
   0A46 D0 03              1968 	pop	ar3
   0A48 D0 02              1969 	pop	ar2
   0A4A D0 F0              1970 	pop	b
   0A4C D0 E0              1971 	pop	acc
                    0155   1972 	C$Interrupts.c$150$2$1 ==.
                    0155   1973 	XG$SPI_ISR$0$0 ==.
   0A4E 32                 1974 	reti
                           1975 ;	eliminated unneeded push/pop dpl
                           1976 ;	eliminated unneeded push/pop dph
                           1977 ;------------------------------------------------------------
                           1978 ;Allocation info for local variables in function 'Usb_Reset'
                           1979 ;------------------------------------------------------------
                           1980 ;------------------------------------------------------------
                    0156   1981 	G$Usb_Reset$0$0 ==.
                    0156   1982 	C$Interrupts.c$168$2$1 ==.
                           1983 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:168: void Usb_Reset(void)
                           1984 ;	-----------------------------------------
                           1985 ;	 function Usb_Reset
                           1986 ;	-----------------------------------------
   0A4F                    1987 _Usb_Reset:
                    0156   1988 	C$Interrupts.c$170$1$1 ==.
                           1989 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:170: USB_State = DEV_DEFAULT;            // Set device state to default
   0A4F 75 21 02           1990 	mov	_USB_State,#0x02
                    0159   1991 	C$Interrupts.c$172$1$1 ==.
                           1992 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:172: POLL_WRITE_BYTE(POWER, 0x01);       // Clear usb inhibit bit to enable USB
   0A52                    1993 00101$:
   0A52 E5 8B              1994 	mov	a,_USB0ADR
   0A54 20 E7 FB           1995 	jb	acc.7,00101$
   0A57 75 8B 01           1996 	mov	_USB0ADR,#0x01
   0A5A 75 8C 01           1997 	mov	_USB0DAT,#0x01
                    0164   1998 	C$Interrupts.c$175$1$1 ==.
                           1999 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:175: Ep_Status[0] = EP_IDLE;             // Set default Endpoint Status
   0A5D 75 31 00           2000 	mov	_Ep_Status,#0x00
                    0167   2001 	C$Interrupts.c$176$1$1 ==.
                           2002 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:176: Ep_Status[1] = EP_HALT;
   0A60 75 32 03           2003 	mov	(_Ep_Status + 0x0001),#0x03
                    016A   2004 	C$Interrupts.c$177$1$1 ==.
                           2005 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:177: Ep_Status[2] = EP_HALT;
   0A63 75 33 03           2006 	mov	(_Ep_Status + 0x0002),#0x03
                    016D   2007 	C$Interrupts.c$178$1$1 ==.
                    016D   2008 	XG$Usb_Reset$0$0 ==.
   0A66 22                 2009 	ret
                           2010 ;------------------------------------------------------------
                           2011 ;Allocation info for local variables in function 'Handle_Setup'
                           2012 ;------------------------------------------------------------
                           2013 ;ControlReg                Allocated to registers r2 
                           2014 ;TempReg                   Allocated to registers r2 
                           2015 ;------------------------------------------------------------
                    016E   2016 	G$Handle_Setup$0$0 ==.
                    016E   2017 	C$Interrupts.c$193$1$1 ==.
                           2018 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:193: void Handle_Setup(void)
                           2019 ;	-----------------------------------------
                           2020 ;	 function Handle_Setup
                           2021 ;	-----------------------------------------
   0A67                    2022 _Handle_Setup:
                    016E   2023 	C$Interrupts.c$198$1$1 ==.
                           2024 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:198: POLL_WRITE_BYTE(INDEX, 0);          // Set Index to Endpoint Zero
   0A67                    2025 00101$:
   0A67 E5 8B              2026 	mov	a,_USB0ADR
   0A69 20 E7 FB           2027 	jb	acc.7,00101$
   0A6C 75 8B 0E           2028 	mov	_USB0ADR,#0x0E
   0A6F 75 8C 00           2029 	mov	_USB0DAT,#0x00
                    0179   2030 	C$Interrupts.c$199$1$1 ==.
                           2031 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:199: POLL_READ_BYTE(E0CSR, ControlReg);  // Read control register
   0A72                    2032 00104$:
   0A72 E5 8B              2033 	mov	a,_USB0ADR
   0A74 20 E7 FB           2034 	jb	acc.7,00104$
   0A77 75 8B 91           2035 	mov	_USB0ADR,#0x91
   0A7A                    2036 00107$:
   0A7A E5 8B              2037 	mov	a,_USB0ADR
   0A7C 20 E7 FB           2038 	jb	acc.7,00107$
   0A7F AA 8C              2039 	mov	r2,_USB0DAT
                    0188   2040 	C$Interrupts.c$201$1$1 ==.
                           2041 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:201: if (Ep_Status[0] == EP_ADDRESS)     // Handle Status Phase of Set Address
   0A81 74 05              2042 	mov	a,#0x05
   0A83 B5 31 0E           2043 	cjne	a,_Ep_Status,00114$
                    018D   2044 	C$Interrupts.c$204$2$4 ==.
                           2045 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:204: POLL_WRITE_BYTE(FADDR, Setup.wValue.c[LSB]);
   0A86                    2046 00110$:
   0A86 E5 8B              2047 	mov	a,_USB0ADR
   0A88 20 E7 FB           2048 	jb	acc.7,00110$
   0A8B 75 8B 00           2049 	mov	_USB0ADR,#0x00
   0A8E 85 25 8C           2050 	mov	_USB0DAT,(_Setup + 0x0003)
                    0198   2051 	C$Interrupts.c$205$2$4 ==.
                           2052 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:205: Ep_Status[0] = EP_IDLE;
   0A91 75 31 00           2053 	mov	_Ep_Status,#0x00
   0A94                    2054 00114$:
                    019B   2055 	C$Interrupts.c$208$1$1 ==.
                           2056 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:208: if (ControlReg & rbSTSTL)           // If last packet was a sent stall, reset
   0A94 EA                 2057 	mov	a,r2
   0A95 30 E2 0F           2058 	jnb	acc.2,00119$
                    019F   2059 	C$Interrupts.c$210$2$6 ==.
                           2060 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:210: POLL_WRITE_BYTE(E0CSR, 0);
   0A98                    2061 00115$:
   0A98 E5 8B              2062 	mov	a,_USB0ADR
   0A9A 20 E7 FB           2063 	jb	acc.7,00115$
   0A9D 75 8B 11           2064 	mov	_USB0ADR,#0x11
   0AA0 75 8C 00           2065 	mov	_USB0DAT,#0x00
                    01AA   2066 	C$Interrupts.c$211$2$6 ==.
                           2067 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:211: Ep_Status[0] = EP_IDLE;
   0AA3 75 31 00           2068 	mov	_Ep_Status,#0x00
                    01AD   2069 	C$Interrupts.c$212$2$6 ==.
                           2070 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:212: return;
   0AA6 22                 2071 	ret
   0AA7                    2072 00119$:
                    01AE   2073 	C$Interrupts.c$215$1$1 ==.
                           2074 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:215: if (ControlReg & rbSUEND)           // If last setup transaction was ended
   0AA7 EA                 2075 	mov	a,r2
   0AA8 30 E4 19           2076 	jnb	acc.4,00127$
                    01B2   2077 	C$Interrupts.c$217$2$8 ==.
                           2078 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:217: POLL_WRITE_BYTE(E0CSR, rbDATAEND);
   0AAB                    2079 00120$:
   0AAB E5 8B              2080 	mov	a,_USB0ADR
   0AAD 20 E7 FB           2081 	jb	acc.7,00120$
   0AB0 75 8B 11           2082 	mov	_USB0ADR,#0x11
   0AB3 75 8C 08           2083 	mov	_USB0DAT,#0x08
                    01BD   2084 	C$Interrupts.c$218$2$8 ==.
                           2085 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:218: POLL_WRITE_BYTE(E0CSR, rbSSUEND); // Serviced Setup End bit and return EP0
   0AB6                    2086 00123$:
   0AB6 E5 8B              2087 	mov	a,_USB0ADR
   0AB8 20 E7 FB           2088 	jb	acc.7,00123$
   0ABB 75 8B 11           2089 	mov	_USB0ADR,#0x11
   0ABE 75 8C 80           2090 	mov	_USB0DAT,#0x80
                    01C8   2091 	C$Interrupts.c$219$2$8 ==.
                           2092 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:219: Ep_Status[0] = EP_IDLE;          // to idle state
   0AC1 75 31 00           2093 	mov	_Ep_Status,#0x00
   0AC4                    2094 00127$:
                    01CB   2095 	C$Interrupts.c$222$1$1 ==.
                           2096 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:222: if (Ep_Status[0] == EP_IDLE)        // If Endpoint 0 is in idle mode
   0AC4 E5 31              2097 	mov	a,_Ep_Status
   0AC6 60 03              2098 	jz	00204$
   0AC8 02 0B AE           2099 	ljmp	00142$
   0ACB                    2100 00204$:
                    01D2   2101 	C$Interrupts.c$224$2$11 ==.
                           2102 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:224: if (ControlReg & rbOPRDY)        // Make sure that EP 0 has an Out Packet ready from host
   0ACB EA                 2103 	mov	a,r2
   0ACC 20 E0 03           2104 	jb	acc.0,00205$
   0ACF 02 0B AE           2105 	ljmp	00142$
   0AD2                    2106 00205$:
                    01D9   2107 	C$Interrupts.c$226$3$12 ==.
                           2108 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:226: Fifo_Read(FIFO_EP0, 8, (BYTE *)&Setup);
   0AD2 75 16 22           2109 	mov	_Fifo_Read_PARM_3,#_Setup
   0AD5 75 17 00           2110 	mov	(_Fifo_Read_PARM_3 + 1),#0x00
   0AD8 75 18 40           2111 	mov	(_Fifo_Read_PARM_3 + 2),#0x40
   0ADB 75 14 08           2112 	mov	_Fifo_Read_PARM_2,#0x08
   0ADE E4                 2113 	clr	a
   0ADF F5 15              2114 	mov	(_Fifo_Read_PARM_2 + 1),a
   0AE1 75 82 20           2115 	mov	dpl,#0x20
   0AE4 C0 02              2116 	push	ar2
   0AE6 12 0E FF           2117 	lcall	_Fifo_Read
   0AE9 D0 02              2118 	pop	ar2
                    01F2   2119 	C$Interrupts.c$232$3$12 ==.
                           2120 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:232: Setup.wValue.i = Setup.wValue.c[MSB] + 256*Setup.wValue.c[LSB];
   0AEB AB 24              2121 	mov	r3,(_Setup + 0x0002)
   0AED 7C 00              2122 	mov	r4,#0x00
   0AEF AE 25              2123 	mov	r6,(_Setup + 0x0003)
   0AF1 7D 00              2124 	mov	r5,#0x00
   0AF3 ED                 2125 	mov	a,r5
   0AF4 2B                 2126 	add	a,r3
   0AF5 FB                 2127 	mov	r3,a
   0AF6 EE                 2128 	mov	a,r6
   0AF7 3C                 2129 	addc	a,r4
   0AF8 FC                 2130 	mov	r4,a
   0AF9 8B 24              2131 	mov	(_Setup + 0x0002),r3
   0AFB 8C 25              2132 	mov	((_Setup + 0x0002) + 1),r4
                    0204   2133 	C$Interrupts.c$233$3$12 ==.
                           2134 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:233: Setup.wIndex.i = Setup.wIndex.c[MSB] + 256*Setup.wIndex.c[LSB];
   0AFD AB 26              2135 	mov	r3,(_Setup + 0x0004)
   0AFF 7C 00              2136 	mov	r4,#0x00
   0B01 AE 27              2137 	mov	r6,(_Setup + 0x0005)
   0B03 7D 00              2138 	mov	r5,#0x00
   0B05 ED                 2139 	mov	a,r5
   0B06 2B                 2140 	add	a,r3
   0B07 FB                 2141 	mov	r3,a
   0B08 EE                 2142 	mov	a,r6
   0B09 3C                 2143 	addc	a,r4
   0B0A FC                 2144 	mov	r4,a
   0B0B 8B 26              2145 	mov	(_Setup + 0x0004),r3
   0B0D 8C 27              2146 	mov	((_Setup + 0x0004) + 1),r4
                    0216   2147 	C$Interrupts.c$234$3$12 ==.
                           2148 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:234: Setup.wLength.i = Setup.wLength.c[MSB] + 256*Setup.wLength.c[LSB];
   0B0F AB 28              2149 	mov	r3,(_Setup + 0x0006)
   0B11 7C 00              2150 	mov	r4,#0x00
   0B13 AE 29              2151 	mov	r6,(_Setup + 0x0007)
   0B15 7D 00              2152 	mov	r5,#0x00
   0B17 ED                 2153 	mov	a,r5
   0B18 2B                 2154 	add	a,r3
   0B19 FB                 2155 	mov	r3,a
   0B1A EE                 2156 	mov	a,r6
   0B1B 3C                 2157 	addc	a,r4
   0B1C FC                 2158 	mov	r4,a
   0B1D 8B 28              2159 	mov	(_Setup + 0x0006),r3
   0B1F 8C 29              2160 	mov	((_Setup + 0x0006) + 1),r4
                    0228   2161 	C$Interrupts.c$237$3$12 ==.
                           2162 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:237: switch(Setup.bRequest)        // Call correct subroutine to handle each kind of
   0B21 E5 23              2163 	mov	a,(_Setup + 0x0001)
   0B23 FB                 2164 	mov	r3,a
   0B24 24 F4              2165 	add	a,#0xff - 0x0B
   0B26 50 03              2166 	jnc	00206$
   0B28 02 0B A7           2167 	ljmp	00137$
   0B2B                    2168 00206$:
   0B2B EB                 2169 	mov	a,r3
   0B2C 2B                 2170 	add	a,r3
   0B2D 2B                 2171 	add	a,r3
   0B2E 90 0B 32           2172 	mov	dptr,#00207$
   0B31 73                 2173 	jmp	@a+dptr
   0B32                    2174 00207$:
   0B32 02 0B 56           2175 	ljmp	00128$
   0B35 02 0B 5F           2176 	ljmp	00129$
   0B38 02 0B A7           2177 	ljmp	00137$
   0B3B 02 0B 68           2178 	ljmp	00130$
   0B3E 02 0B A7           2179 	ljmp	00137$
   0B41 02 0B 71           2180 	ljmp	00131$
   0B44 02 0B 7A           2181 	ljmp	00132$
   0B47 02 0B A7           2182 	ljmp	00137$
   0B4A 02 0B 83           2183 	ljmp	00133$
   0B4D 02 0B 8C           2184 	ljmp	00134$
   0B50 02 0B 95           2185 	ljmp	00135$
   0B53 02 0B 9E           2186 	ljmp	00136$
                    025D   2187 	C$Interrupts.c$239$4$13 ==.
                           2188 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:239: case GET_STATUS:
   0B56                    2189 00128$:
                    025D   2190 	C$Interrupts.c$240$4$13 ==.
                           2191 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:240: Get_Status();
   0B56 C0 02              2192 	push	ar2
   0B58 12 0F D1           2193 	lcall	_Get_Status
   0B5B D0 02              2194 	pop	ar2
                    0264   2195 	C$Interrupts.c$241$4$13 ==.
                           2196 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:241: break;
                    0264   2197 	C$Interrupts.c$242$4$13 ==.
                           2198 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:242: case CLEAR_FEATURE:
   0B5D 80 4F              2199 	sjmp	00142$
   0B5F                    2200 00129$:
                    0266   2201 	C$Interrupts.c$243$4$13 ==.
                           2202 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:243: Clear_Feature();
   0B5F C0 02              2203 	push	ar2
   0B61 12 10 C8           2204 	lcall	_Clear_Feature
   0B64 D0 02              2205 	pop	ar2
                    026D   2206 	C$Interrupts.c$244$4$13 ==.
                           2207 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:244: break;
                    026D   2208 	C$Interrupts.c$245$4$13 ==.
                           2209 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:245: case SET_FEATURE:
   0B66 80 46              2210 	sjmp	00142$
   0B68                    2211 00130$:
                    026F   2212 	C$Interrupts.c$246$4$13 ==.
                           2213 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:246: Set_Feature();
   0B68 C0 02              2214 	push	ar2
   0B6A 12 11 5C           2215 	lcall	_Set_Feature
   0B6D D0 02              2216 	pop	ar2
                    0276   2217 	C$Interrupts.c$247$4$13 ==.
                           2218 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:247: break;
                    0276   2219 	C$Interrupts.c$248$4$13 ==.
                           2220 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:248: case SET_ADDRESS:
   0B6F 80 3D              2221 	sjmp	00142$
   0B71                    2222 00131$:
                    0278   2223 	C$Interrupts.c$249$4$13 ==.
                           2224 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:249: Set_Address();
   0B71 C0 02              2225 	push	ar2
   0B73 12 11 F0           2226 	lcall	_Set_Address
   0B76 D0 02              2227 	pop	ar2
                    027F   2228 	C$Interrupts.c$250$4$13 ==.
                           2229 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:250: break;
                    027F   2230 	C$Interrupts.c$251$4$13 ==.
                           2231 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:251: case GET_DESCRIPTOR:
   0B78 80 34              2232 	sjmp	00142$
   0B7A                    2233 00132$:
                    0281   2234 	C$Interrupts.c$252$4$13 ==.
                           2235 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:252: Get_Descriptor();
   0B7A C0 02              2236 	push	ar2
   0B7C 12 12 31           2237 	lcall	_Get_Descriptor
   0B7F D0 02              2238 	pop	ar2
                    0288   2239 	C$Interrupts.c$253$4$13 ==.
                           2240 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:253: break;
                    0288   2241 	C$Interrupts.c$254$4$13 ==.
                           2242 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:254: case GET_CONFIGURATION:
   0B81 80 2B              2243 	sjmp	00142$
   0B83                    2244 00133$:
                    028A   2245 	C$Interrupts.c$255$4$13 ==.
                           2246 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:255: Get_Configuration();
   0B83 C0 02              2247 	push	ar2
   0B85 12 13 64           2248 	lcall	_Get_Configuration
   0B88 D0 02              2249 	pop	ar2
                    0291   2250 	C$Interrupts.c$256$4$13 ==.
                           2251 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:256: break;
                    0291   2252 	C$Interrupts.c$257$4$13 ==.
                           2253 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:257: case SET_CONFIGURATION:
   0B8A 80 22              2254 	sjmp	00142$
   0B8C                    2255 00134$:
                    0293   2256 	C$Interrupts.c$258$4$13 ==.
                           2257 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:258: Set_Configuration();
   0B8C C0 02              2258 	push	ar2
   0B8E 12 13 CB           2259 	lcall	_Set_Configuration
   0B91 D0 02              2260 	pop	ar2
                    029A   2261 	C$Interrupts.c$259$4$13 ==.
                           2262 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:259: break;
                    029A   2263 	C$Interrupts.c$260$4$13 ==.
                           2264 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:260: case GET_INTERFACE:
   0B93 80 19              2265 	sjmp	00142$
   0B95                    2266 00135$:
                    029C   2267 	C$Interrupts.c$261$4$13 ==.
                           2268 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:261: Get_Interface();
   0B95 C0 02              2269 	push	ar2
   0B97 12 14 43           2270 	lcall	_Get_Interface
   0B9A D0 02              2271 	pop	ar2
                    02A3   2272 	C$Interrupts.c$262$4$13 ==.
                           2273 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:262: break;
                    02A3   2274 	C$Interrupts.c$263$4$13 ==.
                           2275 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:263: case SET_INTERFACE:
   0B9C 80 10              2276 	sjmp	00142$
   0B9E                    2277 00136$:
                    02A5   2278 	C$Interrupts.c$264$4$13 ==.
                           2279 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:264: Set_Interface();
   0B9E C0 02              2280 	push	ar2
   0BA0 12 14 96           2281 	lcall	_Set_Interface
   0BA3 D0 02              2282 	pop	ar2
                    02AC   2283 	C$Interrupts.c$265$4$13 ==.
                           2284 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:265: break;
                    02AC   2285 	C$Interrupts.c$266$4$13 ==.
                           2286 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:266: default:
   0BA5 80 07              2287 	sjmp	00142$
   0BA7                    2288 00137$:
                    02AE   2289 	C$Interrupts.c$267$4$13 ==.
                           2290 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:267: Force_Stall();          // Send stall to host if invalid request
   0BA7 C0 02              2291 	push	ar2
   0BA9 12 0F B7           2292 	lcall	_Force_Stall
   0BAC D0 02              2293 	pop	ar2
                    02B5   2294 	C$Interrupts.c$269$1$1 ==.
                           2295 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:269: }
   0BAE                    2296 00142$:
                    02B5   2297 	C$Interrupts.c$273$1$1 ==.
                           2298 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:273: if (Ep_Status[0] == EP_TX)          // See if the endpoint has data to transmit to host
   0BAE 74 01              2299 	mov	a,#0x01
   0BB0 B5 31 02           2300 	cjne	a,_Ep_Status,00208$
   0BB3 80 01              2301 	sjmp	00209$
   0BB5                    2302 00208$:
   0BB5 22                 2303 	ret
   0BB6                    2304 00209$:
                    02BD   2305 	C$Interrupts.c$275$2$14 ==.
                           2306 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:275: if (!(ControlReg & rbINPRDY))    // Make sure you don't overwrite last packet
   0BB6 EA                 2307 	mov	a,r2
   0BB7 30 E1 01           2308 	jnb	acc.1,00210$
   0BBA 22                 2309 	ret
   0BBB                    2310 00210$:
                    02C2   2311 	C$Interrupts.c$279$3$15 ==.
                           2312 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:279: POLL_READ_BYTE(E0CSR, ControlReg);
   0BBB                    2313 00143$:
   0BBB E5 8B              2314 	mov	a,_USB0ADR
   0BBD 20 E7 FB           2315 	jb	acc.7,00143$
   0BC0 75 8B 91           2316 	mov	_USB0ADR,#0x91
   0BC3                    2317 00146$:
   0BC3 E5 8B              2318 	mov	a,_USB0ADR
   0BC5 20 E7 FB           2319 	jb	acc.7,00146$
                    02CF   2320 	C$Interrupts.c$282$3$15 ==.
                           2321 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:282: if ((!(ControlReg & rbSUEND)) || (!(ControlReg & rbOPRDY)))
   0BC8 E5 8C              2322 	mov	a,_USB0DAT
   0BCA FA                 2323 	mov	r2,a
   0BCB 30 E4 05           2324 	jnb	acc.4,00157$
   0BCE EA                 2325 	mov	a,r2
   0BCF 30 E0 01           2326 	jnb	acc.0,00214$
   0BD2 22                 2327 	ret
   0BD3                    2328 00214$:
   0BD3                    2329 00157$:
                    02DA   2330 	C$Interrupts.c$286$4$17 ==.
                           2331 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:286: TempReg = rbINPRDY;        // Add In Packet ready flag to E0CSR bitmask
   0BD3 7A 02              2332 	mov	r2,#0x02
                    02DC   2333 	C$Interrupts.c$289$4$17 ==.
                           2334 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:289: if (DataSize >= EP0_PACKET_SIZE)
   0BD5 C3                 2335 	clr	c
   0BD6 E5 2A              2336 	mov	a,_DataSize
   0BD8 94 40              2337 	subb	a,#0x40
   0BDA E5 2B              2338 	mov	a,(_DataSize + 1)
   0BDC 94 00              2339 	subb	a,#0x00
   0BDE 40 3D              2340 	jc	00150$
                    02E7   2341 	C$Interrupts.c$291$5$18 ==.
                           2342 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:291: Fifo_Write(FIFO_EP0, EP0_PACKET_SIZE, (BYTE *)DataPtr);// Put Data on Fifo
   0BE0 75 14 40           2343 	mov	_Fifo_Write_PARM_2,#0x40
   0BE3 E4                 2344 	clr	a
   0BE4 F5 15              2345 	mov	(_Fifo_Write_PARM_2 + 1),a
   0BE6 85 2E 16           2346 	mov	_Fifo_Write_PARM_3,_DataPtr
   0BE9 85 2F 17           2347 	mov	(_Fifo_Write_PARM_3 + 1),(_DataPtr + 1)
   0BEC 85 30 18           2348 	mov	(_Fifo_Write_PARM_3 + 2),(_DataPtr + 2)
   0BEF 75 82 20           2349 	mov	dpl,#0x20
   0BF2 C0 02              2350 	push	ar2
   0BF4 12 0F 75           2351 	lcall	_Fifo_Write
   0BF7 D0 02              2352 	pop	ar2
                    0300   2353 	C$Interrupts.c$292$5$18 ==.
                           2354 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:292: DataPtr  += EP0_PACKET_SIZE;                           // Advance data pointer
   0BF9 74 40              2355 	mov	a,#0x40
   0BFB 25 2E              2356 	add	a,_DataPtr
   0BFD F5 2E              2357 	mov	_DataPtr,a
   0BFF E4                 2358 	clr	a
   0C00 35 2F              2359 	addc	a,(_DataPtr + 1)
   0C02 F5 2F              2360 	mov	(_DataPtr + 1),a
                    030B   2361 	C$Interrupts.c$293$5$18 ==.
                           2362 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:293: DataSize -= EP0_PACKET_SIZE;                           // Decrement data size
   0C04 E5 2A              2363 	mov	a,_DataSize
   0C06 24 C0              2364 	add	a,#0xc0
   0C08 F5 2A              2365 	mov	_DataSize,a
   0C0A E5 2B              2366 	mov	a,(_DataSize + 1)
   0C0C 34 FF              2367 	addc	a,#0xff
   0C0E F5 2B              2368 	mov	(_DataSize + 1),a
                    0317   2369 	C$Interrupts.c$294$5$18 ==.
                           2370 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:294: DataSent += EP0_PACKET_SIZE;                           // Increment data sent counter
   0C10 74 40              2371 	mov	a,#0x40
   0C12 25 2C              2372 	add	a,_DataSent
   0C14 F5 2C              2373 	mov	_DataSent,a
   0C16 E4                 2374 	clr	a
   0C17 35 2D              2375 	addc	a,(_DataSent + 1)
   0C19 F5 2D              2376 	mov	(_DataSent + 1),a
   0C1B 80 1A              2377 	sjmp	00151$
   0C1D                    2378 00150$:
                    0324   2379 	C$Interrupts.c$298$5$19 ==.
                           2380 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:298: Fifo_Write(FIFO_EP0, DataSize, (BYTE *)DataPtr);       // Put Data on Fifo
   0C1D 85 2A 14           2381 	mov	_Fifo_Write_PARM_2,_DataSize
   0C20 85 2B 15           2382 	mov	(_Fifo_Write_PARM_2 + 1),(_DataSize + 1)
   0C23 85 2E 16           2383 	mov	_Fifo_Write_PARM_3,_DataPtr
   0C26 85 2F 17           2384 	mov	(_Fifo_Write_PARM_3 + 1),(_DataPtr + 1)
   0C29 85 30 18           2385 	mov	(_Fifo_Write_PARM_3 + 2),(_DataPtr + 2)
   0C2C 75 82 20           2386 	mov	dpl,#0x20
   0C2F 12 0F 75           2387 	lcall	_Fifo_Write
                    0339   2388 	C$Interrupts.c$299$5$19 ==.
                           2389 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:299: TempReg |= rbDATAEND;                                  // Add Data End bit to bitmask
   0C32 7A 0A              2390 	mov	r2,#0x0A
                    033B   2391 	C$Interrupts.c$300$5$19 ==.
                           2392 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:300: Ep_Status[0] = EP_IDLE;                                // Return EP 0 to idle state
   0C34 75 31 00           2393 	mov	_Ep_Status,#0x00
   0C37                    2394 00151$:
                    033E   2395 	C$Interrupts.c$302$4$17 ==.
                           2396 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:302: if (DataSent == Setup.wLength.i)
   0C37 E5 28              2397 	mov	a,(_Setup + 0x0006)
   0C39 B5 2C 0B           2398 	cjne	a,_DataSent,00154$
   0C3C E5 29              2399 	mov	a,((_Setup + 0x0006) + 1)
   0C3E B5 2D 06           2400 	cjne	a,(_DataSent + 1),00154$
                    0348   2401 	C$Interrupts.c$307$5$20 ==.
                           2402 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:307: TempReg |= rbDATAEND;    // Add Data End bit to mask
   0C41 43 02 08           2403 	orl	ar2,#0x08
                    034B   2404 	C$Interrupts.c$308$5$20 ==.
                           2405 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:308: Ep_Status[0] = EP_IDLE;  // and return Endpoint 0 to an idle state
   0C44 75 31 00           2406 	mov	_Ep_Status,#0x00
                    034E   2407 	C$Interrupts.c$310$4$17 ==.
                           2408 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:310: POLL_WRITE_BYTE(E0CSR, TempReg);                          // Write mask to E0CSR
   0C47                    2409 00154$:
   0C47 E5 8B              2410 	mov	a,_USB0ADR
   0C49 20 E7 FB           2411 	jb	acc.7,00154$
   0C4C 75 8B 11           2412 	mov	_USB0ADR,#0x11
   0C4F 8A 8C              2413 	mov	_USB0DAT,r2
                    0358   2414 	C$Interrupts.c$314$1$1 ==.
                    0358   2415 	XG$Handle_Setup$0$0 ==.
   0C51 22                 2416 	ret
                           2417 ;------------------------------------------------------------
                           2418 ;Allocation info for local variables in function 'Handle_In1'
                           2419 ;------------------------------------------------------------
                           2420 ;ControlReg                Allocated to registers r2 
                           2421 ;------------------------------------------------------------
                    0359   2422 	G$Handle_In1$0$0 ==.
                    0359   2423 	C$Interrupts.c$328$1$1 ==.
                           2424 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:328: void Handle_In1()
                           2425 ;	-----------------------------------------
                           2426 ;	 function Handle_In1
                           2427 ;	-----------------------------------------
   0C52                    2428 _Handle_In1:
                    0359   2429 	C$Interrupts.c$332$1$1 ==.
                           2430 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:332: POLL_WRITE_BYTE(INDEX, 1);           // Set index to endpoint 1 registers
   0C52                    2431 00101$:
   0C52 E5 8B              2432 	mov	a,_USB0ADR
   0C54 20 E7 FB           2433 	jb	acc.7,00101$
   0C57 75 8B 0E           2434 	mov	_USB0ADR,#0x0E
   0C5A 75 8C 01           2435 	mov	_USB0DAT,#0x01
                    0364   2436 	C$Interrupts.c$333$1$1 ==.
                           2437 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:333: POLL_READ_BYTE(EINCSR1, ControlReg); // Read contol register for EP 1
   0C5D                    2438 00104$:
   0C5D E5 8B              2439 	mov	a,_USB0ADR
   0C5F 20 E7 FB           2440 	jb	acc.7,00104$
   0C62 75 8B 91           2441 	mov	_USB0ADR,#0x91
   0C65                    2442 00107$:
   0C65 E5 8B              2443 	mov	a,_USB0ADR
   0C67 20 E7 FB           2444 	jb	acc.7,00107$
   0C6A AA 8C              2445 	mov	r2,_USB0DAT
                    0373   2446 	C$Interrupts.c$335$1$1 ==.
                           2447 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:335: if (Ep_Status[1] == EP_HALT)         // If endpoint is currently halted, 
   0C6C 74 03              2448 	mov	a,#0x03
   0C6E B5 32 0C           2449 	cjne	a,(_Ep_Status + 0x0001),00124$
                    0378   2450 	C$Interrupts.c$338$2$4 ==.
                           2451 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:338: POLL_WRITE_BYTE(EINCSR1, rbInSDSTL);
   0C71                    2452 00110$:
   0C71 E5 8B              2453 	mov	a,_USB0ADR
   0C73 20 E7 FB           2454 	jb	acc.7,00110$
   0C76 75 8B 11           2455 	mov	_USB0ADR,#0x11
   0C79 75 8C 10           2456 	mov	_USB0DAT,#0x10
   0C7C 22                 2457 	ret
   0C7D                    2458 00124$:
                    0384   2459 	C$Interrupts.c$344$2$6 ==.
                           2460 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:344: if (ControlReg & rbInSTSTL)       // Clear sent stall if last packet
   0C7D EA                 2461 	mov	a,r2
   0C7E 30 E5 0B           2462 	jnb	acc.5,00117$
                    0388   2463 	C$Interrupts.c$347$3$7 ==.
                           2464 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:347: POLL_WRITE_BYTE(EINCSR1, rbInCLRDT);
   0C81                    2465 00113$:
   0C81 E5 8B              2466 	mov	a,_USB0ADR
   0C83 20 E7 FB           2467 	jb	acc.7,00113$
   0C86 75 8B 11           2468 	mov	_USB0ADR,#0x11
   0C89 75 8C 40           2469 	mov	_USB0DAT,#0x40
   0C8C                    2470 00117$:
                    0393   2471 	C$Interrupts.c$350$2$6 ==.
                           2472 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:350: if (ControlReg & rbInUNDRUN)      // Clear underrun bit if it was set
   0C8C EA                 2473 	mov	a,r2
   0C8D 30 E2 0B           2474 	jnb	acc.2,00122$
                    0397   2475 	C$Interrupts.c$352$3$9 ==.
                           2476 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:352: POLL_WRITE_BYTE(EINCSR1, 0x00);
   0C90                    2477 00118$:
   0C90 E5 8B              2478 	mov	a,_USB0ADR
   0C92 20 E7 FB           2479 	jb	acc.7,00118$
   0C95 75 8B 11           2480 	mov	_USB0ADR,#0x11
   0C98 75 8C 00           2481 	mov	_USB0DAT,#0x00
   0C9B                    2482 00122$:
                    03A2   2483 	C$Interrupts.c$357$2$6 ==.
                           2484 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:357: Endpoint1();
                    03A2   2485 	C$Interrupts.c$359$1$1 ==.
                    03A2   2486 	XG$Handle_In1$0$0 ==.
   0C9B 02 0C 9E           2487 	ljmp	_Endpoint1
                           2488 ;------------------------------------------------------------
                           2489 ;Allocation info for local variables in function 'Endpoint1'
                           2490 ;------------------------------------------------------------
                           2491 ;bEP                       Allocated to registers 
                           2492 ;uNumBytes                 Allocated to registers 
                           2493 ;bOp                       Allocated with name '_Endpoint1_bOp_1_1'
                           2494 ;------------------------------------------------------------
                    03A5   2495 	G$Endpoint1$0$0 ==.
                    03A5   2496 	C$Interrupts.c$372$1$1 ==.
                           2497 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:372: void Endpoint1()
                           2498 ;	-----------------------------------------
                           2499 ;	 function Endpoint1
                           2500 ;	-----------------------------------------
   0C9E                    2501 _Endpoint1:
                    03A5   2502 	C$Interrupts.c$377$1$1 ==.
                           2503 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:377: BYTE bOp = 0x00;				//Operation to perform
   0C9E 75 34 00           2504 	mov	_Endpoint1_bOp_1_1,#0x00
                    03A8   2505 	C$Interrupts.c$380$1$1 ==.
                           2506 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:380: Fifo_Read(bEP, uNumBytes, &bOp);
   0CA1 75 16 34           2507 	mov	_Fifo_Read_PARM_3,#_Endpoint1_bOp_1_1
   0CA4 75 17 00           2508 	mov	(_Fifo_Read_PARM_3 + 1),#0x00
   0CA7 75 18 40           2509 	mov	(_Fifo_Read_PARM_3 + 2),#0x40
   0CAA 75 14 01           2510 	mov	_Fifo_Read_PARM_2,#0x01
   0CAD E4                 2511 	clr	a
   0CAE F5 15              2512 	mov	(_Fifo_Read_PARM_2 + 1),a
   0CB0 75 82 01           2513 	mov	dpl,#0x01
   0CB3 12 0E FF           2514 	lcall	_Fifo_Read
                    03BD   2515 	C$Interrupts.c$383$1$1 ==.
                           2516 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:383: switch (bOp)
   0CB6 E4                 2517 	clr	a
   0CB7 B5 34 02           2518 	cjne	a,_Endpoint1_bOp_1_1,00110$
   0CBA 80 0E              2519 	sjmp	00101$
   0CBC                    2520 00110$:
   0CBC 74 02              2521 	mov	a,#0x02
   0CBE B5 34 02           2522 	cjne	a,_Endpoint1_bOp_1_1,00111$
   0CC1 80 0A              2523 	sjmp	00102$
   0CC3                    2524 00111$:
   0CC3 74 03              2525 	mov	a,#0x03
                    03CC   2526 	C$Interrupts.c$385$2$2 ==.
                           2527 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:385: case OP_SET_VOLTAGE:
   0CC5 B5 34 0B           2528 	cjne	a,_Endpoint1_bOp_1_1,00105$
   0CC8 80 06              2529 	sjmp	00103$
   0CCA                    2530 00101$:
                    03D1   2531 	C$Interrupts.c$386$2$2 ==.
                           2532 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:386: SetVoltage();
                    03D1   2533 	C$Interrupts.c$387$2$2 ==.
                           2534 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:387: break;
                    03D1   2535 	C$Interrupts.c$389$2$2 ==.
                           2536 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:389: case OP_SET_LASER:
   0CCA 02 0C D4           2537 	ljmp	_SetVoltage
   0CCD                    2538 00102$:
                    03D4   2539 	C$Interrupts.c$390$2$2 ==.
                           2540 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:390: SetLaser();
                    03D4   2541 	C$Interrupts.c$391$2$2 ==.
                           2542 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:391: break;
                    03D4   2543 	C$Interrupts.c$393$2$2 ==.
                           2544 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:393: case OP_PULSE_MOTOR:
   0CCD 02 0D 87           2545 	ljmp	_SetLaser
   0CD0                    2546 00103$:
                    03D7   2547 	C$Interrupts.c$394$2$2 ==.
                           2548 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:394: PulseMotor();
                    03D7   2549 	C$Interrupts.c$396$1$1 ==.
                           2550 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:396: }
                    03D7   2551 	C$Interrupts.c$397$1$1 ==.
                    03D7   2552 	XG$Endpoint1$0$0 ==.
   0CD0 02 0D AB           2553 	ljmp	_PulseMotor
   0CD3                    2554 00105$:
   0CD3 22                 2555 	ret
                           2556 ;------------------------------------------------------------
                           2557 ;Allocation info for local variables in function 'SetVoltage'
                           2558 ;------------------------------------------------------------
                           2559 ;bEP                       Allocated to registers 
                           2560 ;uNumBytes                 Allocated to registers 
                           2561 ;pData                     Allocated with name '_SetVoltage_pData_1_1'
                           2562 ;------------------------------------------------------------
                    03DB   2563 	G$SetVoltage$0$0 ==.
                    03DB   2564 	C$Interrupts.c$422$1$1 ==.
                           2565 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:422: void SetVoltage()
                           2566 ;	-----------------------------------------
                           2567 ;	 function SetVoltage
                           2568 ;	-----------------------------------------
   0CD4                    2569 _SetVoltage:
                    03DB   2570 	C$Interrupts.c$430$1$1 ==.
                           2571 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:430: Fifo_Read(bEP, uNumBytes, pData);
   0CD4 75 16 35           2572 	mov	_Fifo_Read_PARM_3,#_SetVoltage_pData_1_1
   0CD7 75 17 00           2573 	mov	(_Fifo_Read_PARM_3 + 1),#0x00
   0CDA 75 18 40           2574 	mov	(_Fifo_Read_PARM_3 + 2),#0x40
   0CDD 75 14 02           2575 	mov	_Fifo_Read_PARM_2,#0x02
   0CE0 E4                 2576 	clr	a
   0CE1 F5 15              2577 	mov	(_Fifo_Read_PARM_2 + 1),a
   0CE3 75 82 01           2578 	mov	dpl,#0x01
   0CE6 12 0E FF           2579 	lcall	_Fifo_Read
                    03F0   2580 	C$Interrupts.c$433$1$1 ==.
                           2581 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:433: if ((float)*pData > 0)
   0CE9 AA 35              2582 	mov	r2,_SetVoltage_pData_1_1
   0CEB 8A 82              2583 	mov	dpl,r2
   0CED C0 02              2584 	push	ar2
   0CEF 12 15 5A           2585 	lcall	___uchar2fs
   0CF2 AB 82              2586 	mov	r3,dpl
   0CF4 AC 83              2587 	mov	r4,dph
   0CF6 AD F0              2588 	mov	r5,b
   0CF8 FE                 2589 	mov	r6,a
   0CF9 E4                 2590 	clr	a
   0CFA C0 E0              2591 	push	acc
   0CFC C0 E0              2592 	push	acc
   0CFE C0 E0              2593 	push	acc
   0D00 C0 E0              2594 	push	acc
   0D02 8B 82              2595 	mov	dpl,r3
   0D04 8C 83              2596 	mov	dph,r4
   0D06 8D F0              2597 	mov	b,r5
   0D08 EE                 2598 	mov	a,r6
   0D09 12 14 C8           2599 	lcall	___fsgt
   0D0C AB 82              2600 	mov	r3,dpl
   0D0E E5 81              2601 	mov	a,sp
   0D10 24 FC              2602 	add	a,#0xfc
   0D12 F5 81              2603 	mov	sp,a
   0D14 D0 02              2604 	pop	ar2
   0D16 EB                 2605 	mov	a,r3
   0D17 60 0D              2606 	jz	00104$
                    0420   2607 	C$Interrupts.c$435$2$2 ==.
                           2608 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:435: POLL_WRITE_BYTE(bPos, 1);
   0D19                    2609 00101$:
   0D19 E5 8B              2610 	mov	a,_USB0ADR
   0D1B 20 E7 FB           2611 	jb	acc.7,00101$
   0D1E 75 8B A0           2612 	mov	_USB0ADR,#0xA0
   0D21 75 8C 01           2613 	mov	_USB0DAT,#0x01
                    042B   2614 	C$Interrupts.c$439$2$4 ==.
                           2615 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:439: POLL_WRITE_BYTE(bPos, 0);
   0D24 80 0B              2616 	sjmp	00109$
   0D26                    2617 00104$:
   0D26 E5 8B              2618 	mov	a,_USB0ADR
   0D28 20 E7 FB           2619 	jb	acc.7,00104$
   0D2B 75 8B A0           2620 	mov	_USB0ADR,#0xA0
   0D2E 75 8C 00           2621 	mov	_USB0DAT,#0x00
   0D31                    2622 00109$:
                    0438   2623 	C$Interrupts.c$443$1$1 ==.
                           2624 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:443: Writing_to_DAC = 1;
   0D31 75 08 01           2625 	mov	_Writing_to_DAC,#0x01
   0D34 E4                 2626 	clr	a
   0D35 F5 09              2627 	mov	(_Writing_to_DAC + 1),a
                    043E   2628 	C$Interrupts.c$446$1$1 ==.
                           2629 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:446: POLL_WRITE_BYTE(bNotDACCS, 0);	// Select the DAC for SPI communication
   0D37                    2630 00110$:
   0D37 E5 8B              2631 	mov	a,_USB0ADR
   0D39 20 E7 FB           2632 	jb	acc.7,00110$
   0D3C 75 8B 94           2633 	mov	_USB0ADR,#0x94
   0D3F 75 8C 00           2634 	mov	_USB0DAT,#0x00
                    0449   2635 	C$Interrupts.c$447$1$1 ==.
                           2636 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:447: SPI0DAT = 0x00;					// 0x00 = 0000 0000
   0D42 75 9B 00           2637 	mov	_SPI0DAT,#0x00
                    044C   2638 	C$Interrupts.c$448$1$1 ==.
                           2639 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:448: while(SPI_DAC_Bytes != 1) {}	// wait for SPI to finish sending byte
   0D45                    2640 00113$:
   0D45 74 01              2641 	mov	a,#0x01
   0D47 B5 0C 06           2642 	cjne	a,_SPI_DAC_Bytes,00145$
   0D4A E4                 2643 	clr	a
   0D4B B5 0D 02           2644 	cjne	a,(_SPI_DAC_Bytes + 1),00145$
   0D4E 80 02              2645 	sjmp	00146$
   0D50                    2646 00145$:
   0D50 80 F3              2647 	sjmp	00113$
   0D52                    2648 00146$:
                    0459   2649 	C$Interrupts.c$449$1$1 ==.
                           2650 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:449: SPI0DAT = pData[0];			// Upper part of byte
   0D52 8A 9B              2651 	mov	_SPI0DAT,r2
                    045B   2652 	C$Interrupts.c$450$1$1 ==.
                           2653 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:450: while(SPI_DAC_Bytes != 2) {}	// wait for SPI to finish sending byte
   0D54                    2654 00116$:
   0D54 74 02              2655 	mov	a,#0x02
   0D56 B5 0C 06           2656 	cjne	a,_SPI_DAC_Bytes,00147$
   0D59 E4                 2657 	clr	a
   0D5A B5 0D 02           2658 	cjne	a,(_SPI_DAC_Bytes + 1),00147$
   0D5D 80 02              2659 	sjmp	00148$
   0D5F                    2660 00147$:
   0D5F 80 F3              2661 	sjmp	00116$
   0D61                    2662 00148$:
                    0468   2663 	C$Interrupts.c$451$1$1 ==.
                           2664 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:451: SPI0DAT = pData[1];			// Lower part of byte
   0D61 85 36 9B           2665 	mov	_SPI0DAT,(_SetVoltage_pData_1_1 + 0x0001)
                    046B   2666 	C$Interrupts.c$452$1$1 ==.
                           2667 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:452: while(SPI_DAC_Bytes != 3) {}	// wait for SPI to finish sending byte
   0D64                    2668 00119$:
   0D64 74 03              2669 	mov	a,#0x03
   0D66 B5 0C 06           2670 	cjne	a,_SPI_DAC_Bytes,00149$
   0D69 E4                 2671 	clr	a
   0D6A B5 0D 02           2672 	cjne	a,(_SPI_DAC_Bytes + 1),00149$
   0D6D 80 02              2673 	sjmp	00150$
   0D6F                    2674 00149$:
   0D6F 80 F3              2675 	sjmp	00119$
   0D71                    2676 00150$:
                    0478   2677 	C$Interrupts.c$453$1$1 ==.
                           2678 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:453: SPI_DAC_Bytes = 0;				// Reset byte TX counter
   0D71 E4                 2679 	clr	a
   0D72 F5 0C              2680 	mov	_SPI_DAC_Bytes,a
   0D74 F5 0D              2681 	mov	(_SPI_DAC_Bytes + 1),a
                    047D   2682 	C$Interrupts.c$454$1$1 ==.
                           2683 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:454: POLL_WRITE_BYTE(bNotDACCS, 1);	// Deselect the DAC for SPI communication
   0D76                    2684 00122$:
   0D76 E5 8B              2685 	mov	a,_USB0ADR
   0D78 20 E7 FB           2686 	jb	acc.7,00122$
   0D7B 75 8B 94           2687 	mov	_USB0ADR,#0x94
   0D7E 75 8C 01           2688 	mov	_USB0DAT,#0x01
                    0488   2689 	C$Interrupts.c$457$1$1 ==.
                           2690 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:457: Writing_to_DAC = 0;
   0D81 E4                 2691 	clr	a
   0D82 F5 08              2692 	mov	_Writing_to_DAC,a
   0D84 F5 09              2693 	mov	(_Writing_to_DAC + 1),a
                    048D   2694 	C$Interrupts.c$458$1$1 ==.
                    048D   2695 	XG$SetVoltage$0$0 ==.
   0D86 22                 2696 	ret
                           2697 ;------------------------------------------------------------
                           2698 ;Allocation info for local variables in function 'SetLaser'
                           2699 ;------------------------------------------------------------
                           2700 ;bEP                       Allocated to registers 
                           2701 ;uNumBytes                 Allocated to registers 
                           2702 ;bState                    Allocated with name '_SetLaser_bState_1_1'
                           2703 ;------------------------------------------------------------
                    048E   2704 	G$SetLaser$0$0 ==.
                    048E   2705 	C$Interrupts.c$471$1$1 ==.
                           2706 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:471: void SetLaser()
                           2707 ;	-----------------------------------------
                           2708 ;	 function SetLaser
                           2709 ;	-----------------------------------------
   0D87                    2710 _SetLaser:
                    048E   2711 	C$Interrupts.c$476$1$1 ==.
                           2712 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:476: BYTE bState = 0x00;				//State of the Laser to read
   0D87 75 37 00           2713 	mov	_SetLaser_bState_1_1,#0x00
                    0491   2714 	C$Interrupts.c$479$1$1 ==.
                           2715 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:479: Fifo_Read(bEP, uNumBytes, &bState);
   0D8A 75 16 37           2716 	mov	_Fifo_Read_PARM_3,#_SetLaser_bState_1_1
   0D8D 75 17 00           2717 	mov	(_Fifo_Read_PARM_3 + 1),#0x00
   0D90 75 18 40           2718 	mov	(_Fifo_Read_PARM_3 + 2),#0x40
   0D93 75 14 01           2719 	mov	_Fifo_Read_PARM_2,#0x01
   0D96 E4                 2720 	clr	a
   0D97 F5 15              2721 	mov	(_Fifo_Read_PARM_2 + 1),a
   0D99 75 82 01           2722 	mov	dpl,#0x01
   0D9C 12 0E FF           2723 	lcall	_Fifo_Read
                    04A6   2724 	C$Interrupts.c$482$1$1 ==.
                           2725 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:482: POLL_WRITE_BYTE(bLaser, bState);
   0D9F                    2726 00101$:
   0D9F E5 8B              2727 	mov	a,_USB0ADR
   0DA1 20 E7 FB           2728 	jb	acc.7,00101$
   0DA4 75 8B 92           2729 	mov	_USB0ADR,#0x92
   0DA7 85 37 8C           2730 	mov	_USB0DAT,_SetLaser_bState_1_1
                    04B1   2731 	C$Interrupts.c$483$2$2 ==.
                    04B1   2732 	XG$SetLaser$0$0 ==.
   0DAA 22                 2733 	ret
                           2734 ;------------------------------------------------------------
                           2735 ;Allocation info for local variables in function 'PulseMotor'
                           2736 ;------------------------------------------------------------
                           2737 ;bEP                       Allocated to registers 
                           2738 ;uNumBytes                 Allocated to registers 
                           2739 ;bMotor                    Allocated with name '_PulseMotor_bMotor_1_1'
                           2740 ;bDir                      Allocated with name '_PulseMotor_bDir_1_1'
                           2741 ;bMtrStep                  Allocated to registers r2 
                           2742 ;bMtrDir                   Allocated to registers r3 
                           2743 ;uDelay                    Allocated to registers r3 r4 
                           2744 ;------------------------------------------------------------
                    04B2   2745 	G$PulseMotor$0$0 ==.
                    04B2   2746 	C$Interrupts.c$496$2$2 ==.
                           2747 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:496: void PulseMotor()
                           2748 ;	-----------------------------------------
                           2749 ;	 function PulseMotor
                           2750 ;	-----------------------------------------
   0DAB                    2751 _PulseMotor:
                    04B2   2752 	C$Interrupts.c$501$1$2 ==.
                           2753 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:501: BYTE bMotor = MOTOR_X;				//Motor bit to read
   0DAB 75 38 00           2754 	mov	_PulseMotor_bMotor_1_1,#0x00
                    04B5   2755 	C$Interrupts.c$502$1$2 ==.
                           2756 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:502: BYTE bDir = DIR_FWD;				//Direction bit to read
   0DAE 75 39 00           2757 	mov	_PulseMotor_bDir_1_1,#0x00
                    04B8   2758 	C$Interrupts.c$503$1$2 ==.
                           2759 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:503: BYTE bMtrStep = bMtr1Step;			//Motor to step
   0DB1 7A 87              2760 	mov	r2,#0x87
                    04BA   2761 	C$Interrupts.c$504$1$2 ==.
                           2762 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:504: BYTE bMtrDir = bMtr1Dir;			//Direction to step
   0DB3 7B 86              2763 	mov	r3,#0x86
                    04BC   2764 	C$Interrupts.c$508$1$1 ==.
                           2765 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:508: Fifo_Read(bEP, uNumBytes, &bMotor);
   0DB5 75 16 38           2766 	mov	_Fifo_Read_PARM_3,#_PulseMotor_bMotor_1_1
   0DB8 75 17 00           2767 	mov	(_Fifo_Read_PARM_3 + 1),#0x00
   0DBB 75 18 40           2768 	mov	(_Fifo_Read_PARM_3 + 2),#0x40
   0DBE 75 14 01           2769 	mov	_Fifo_Read_PARM_2,#0x01
   0DC1 E4                 2770 	clr	a
   0DC2 F5 15              2771 	mov	(_Fifo_Read_PARM_2 + 1),a
   0DC4 75 82 01           2772 	mov	dpl,#0x01
   0DC7 C0 02              2773 	push	ar2
   0DC9 C0 03              2774 	push	ar3
   0DCB 12 0E FF           2775 	lcall	_Fifo_Read
                    04D5   2776 	C$Interrupts.c$511$1$1 ==.
                           2777 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:511: Fifo_Read(bEP, uNumBytes, &bDir);
   0DCE 75 16 39           2778 	mov	_Fifo_Read_PARM_3,#_PulseMotor_bDir_1_1
   0DD1 75 17 00           2779 	mov	(_Fifo_Read_PARM_3 + 1),#0x00
   0DD4 75 18 40           2780 	mov	(_Fifo_Read_PARM_3 + 2),#0x40
   0DD7 75 14 01           2781 	mov	_Fifo_Read_PARM_2,#0x01
   0DDA E4                 2782 	clr	a
   0DDB F5 15              2783 	mov	(_Fifo_Read_PARM_2 + 1),a
   0DDD 75 82 01           2784 	mov	dpl,#0x01
   0DE0 12 0E FF           2785 	lcall	_Fifo_Read
   0DE3 D0 03              2786 	pop	ar3
   0DE5 D0 02              2787 	pop	ar2
                    04EE   2788 	C$Interrupts.c$514$1$1 ==.
                           2789 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:514: if (bMotor == MOTOR_Y)
   0DE7 74 01              2790 	mov	a,#0x01
   0DE9 B5 38 04           2791 	cjne	a,_PulseMotor_bMotor_1_1,00103$
                    04F3   2792 	C$Interrupts.c$516$2$2 ==.
                           2793 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:516: bMtrStep = bMtr2Step;
   0DEC 7A 84              2794 	mov	r2,#0x84
                    04F5   2795 	C$Interrupts.c$517$2$2 ==.
                           2796 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:517: bMtrDir = bMtr2Dir;
   0DEE 7B 83              2797 	mov	r3,#0x83
                    04F7   2798 	C$Interrupts.c$521$1$1 ==.
                           2799 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:521: POLL_WRITE_BYTE(bMtrDrvrEn, 0x01);
   0DF0                    2800 00103$:
   0DF0 E5 8B              2801 	mov	a,_USB0ADR
   0DF2 20 E7 FB           2802 	jb	acc.7,00103$
   0DF5 75 8B 85           2803 	mov	_USB0ADR,#0x85
   0DF8 75 8C 01           2804 	mov	_USB0DAT,#0x01
                    0502   2805 	C$Interrupts.c$524$1$1 ==.
                           2806 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:524: POLL_WRITE_BYTE(bMtrDir, bDir);
   0DFB                    2807 00106$:
   0DFB E5 8B              2808 	mov	a,_USB0ADR
   0DFD 20 E7 FB           2809 	jb	acc.7,00106$
   0E00 8B 8B              2810 	mov	_USB0ADR,r3
   0E02 85 39 8C           2811 	mov	_USB0DAT,_PulseMotor_bDir_1_1
                    050C   2812 	C$Interrupts.c$527$1$1 ==.
                           2813 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:527: POLL_WRITE_BYTE(bMtrStep, 0x01);
   0E05                    2814 00109$:
   0E05 E5 8B              2815 	mov	a,_USB0ADR
   0E07 20 E7 FB           2816 	jb	acc.7,00109$
   0E0A 8A 8B              2817 	mov	_USB0ADR,r2
   0E0C 75 8C 01           2818 	mov	_USB0DAT,#0x01
                    0516   2819 	C$Interrupts.c$530$2$6 ==.
                           2820 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:530: while (uDelay--);
   0E0F 7B D4              2821 	mov	r3,#0xD4
   0E11 7C 30              2822 	mov	r4,#0x30
   0E13                    2823 00112$:
   0E13 8B 05              2824 	mov	ar5,r3
   0E15 8C 06              2825 	mov	ar6,r4
   0E17 1B                 2826 	dec	r3
   0E18 BB FF 01           2827 	cjne	r3,#0xff,00136$
   0E1B 1C                 2828 	dec	r4
   0E1C                    2829 00136$:
   0E1C ED                 2830 	mov	a,r5
   0E1D 4E                 2831 	orl	a,r6
   0E1E 70 F3              2832 	jnz	00112$
                    0527   2833 	C$Interrupts.c$533$1$1 ==.
                           2834 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:533: POLL_WRITE_BYTE(bMtrStep, 0x00);
   0E20                    2835 00115$:
   0E20 E5 8B              2836 	mov	a,_USB0ADR
   0E22 20 E7 FB           2837 	jb	acc.7,00115$
   0E25 8A 8B              2838 	mov	_USB0ADR,r2
   0E27 75 8C 00           2839 	mov	_USB0DAT,#0x00
                    0531   2840 	C$Interrupts.c$534$2$6 ==.
                    0531   2841 	XG$PulseMotor$0$0 ==.
   0E2A 22                 2842 	ret
                           2843 ;------------------------------------------------------------
                           2844 ;Allocation info for local variables in function 'Handle_Out2'
                           2845 ;------------------------------------------------------------
                           2846 ;Count                     Allocated to registers r2 
                           2847 ;ControlReg                Allocated to registers r2 
                           2848 ;------------------------------------------------------------
                    0532   2849 	G$Handle_Out2$0$0 ==.
                    0532   2850 	C$Interrupts.c$548$2$6 ==.
                           2851 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:548: void Handle_Out2()
                           2852 ;	-----------------------------------------
                           2853 ;	 function Handle_Out2
                           2854 ;	-----------------------------------------
   0E2B                    2855 _Handle_Out2:
                    0532   2856 	C$Interrupts.c$553$1$1 ==.
                           2857 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:553: POLL_WRITE_BYTE(INDEX, 2);          // Set index to endpoint 2 registers
   0E2B                    2858 00101$:
   0E2B E5 8B              2859 	mov	a,_USB0ADR
   0E2D 20 E7 FB           2860 	jb	acc.7,00101$
   0E30 75 8B 0E           2861 	mov	_USB0ADR,#0x0E
   0E33 75 8C 02           2862 	mov	_USB0DAT,#0x02
                    053D   2863 	C$Interrupts.c$554$1$1 ==.
                           2864 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:554: POLL_READ_BYTE(EOUTCSR1, ControlReg);
   0E36                    2865 00104$:
   0E36 E5 8B              2866 	mov	a,_USB0ADR
   0E38 20 E7 FB           2867 	jb	acc.7,00104$
   0E3B 75 8B 94           2868 	mov	_USB0ADR,#0x94
   0E3E                    2869 00107$:
   0E3E E5 8B              2870 	mov	a,_USB0ADR
   0E40 20 E7 FB           2871 	jb	acc.7,00107$
   0E43 AA 8C              2872 	mov	r2,_USB0DAT
                    054C   2873 	C$Interrupts.c$556$1$1 ==.
                           2874 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:556: if (Ep_Status[2] == EP_HALT)        // If endpoint is halted, send a stall
   0E45 74 03              2875 	mov	a,#0x03
   0E47 B5 33 0C           2876 	cjne	a,(_Ep_Status + 0x0002),00134$
                    0551   2877 	C$Interrupts.c$558$2$4 ==.
                           2878 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:558: POLL_WRITE_BYTE(EOUTCSR1, rbOutSDSTL);
   0E4A                    2879 00110$:
   0E4A E5 8B              2880 	mov	a,_USB0ADR
   0E4C 20 E7 FB           2881 	jb	acc.7,00110$
   0E4F 75 8B 14           2882 	mov	_USB0ADR,#0x14
   0E52 75 8C 20           2883 	mov	_USB0DAT,#0x20
   0E55 22                 2884 	ret
   0E56                    2885 00134$:
                    055D   2886 	C$Interrupts.c$563$2$6 ==.
                           2887 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:563: if (ControlReg & rbOutSTSTL)     // Clear sent stall bit if last packet 
   0E56 EA                 2888 	mov	a,r2
   0E57 30 E6 0B           2889 	jnb	acc.6,00118$
                    0561   2890 	C$Interrupts.c$566$3$7 ==.
                           2891 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:566: POLL_WRITE_BYTE(EOUTCSR1, rbOutCLRDT);
   0E5A                    2892 00113$:
   0E5A E5 8B              2893 	mov	a,_USB0ADR
   0E5C 20 E7 FB           2894 	jb	acc.7,00113$
   0E5F 75 8B 14           2895 	mov	_USB0ADR,#0x14
   0E62 75 8C 80           2896 	mov	_USB0DAT,#0x80
                    056C   2897 	C$Interrupts.c$569$2$6 ==.
                           2898 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:569: POLL_READ_BYTE(EOUTCNTL, Count);
   0E65                    2899 00118$:
   0E65 E5 8B              2900 	mov	a,_USB0ADR
   0E67 20 E7 FB           2901 	jb	acc.7,00118$
   0E6A 75 8B 96           2902 	mov	_USB0ADR,#0x96
   0E6D                    2903 00121$:
   0E6D E5 8B              2904 	mov	a,_USB0ADR
   0E6F 20 E7 FB           2905 	jb	acc.7,00121$
   0E72 AA 8C              2906 	mov	r2,_USB0DAT
                    057B   2907 	C$Interrupts.c$570$2$6 ==.
                           2908 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:570: if (Count != EP2_PACKET_SIZE)    // If host did not send correct packet 
   0E74 BA 40 02           2909 	cjne	r2,#0x40,00166$
   0E77 80 0D              2910 	sjmp	00128$
   0E79                    2911 00166$:
                    0580   2912 	C$Interrupts.c$573$3$10 ==.
                           2913 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:573: POLL_WRITE_BYTE(EOUTCNTL, rbOutFLUSH);
   0E79                    2914 00124$:
   0E79 E5 8B              2915 	mov	a,_USB0ADR
   0E7B 20 E7 FB           2916 	jb	acc.7,00124$
   0E7E 75 8B 16           2917 	mov	_USB0ADR,#0x16
   0E81 75 8C 10           2918 	mov	_USB0DAT,#0x10
   0E84 80 03              2919 	sjmp	00130$
   0E86                    2920 00128$:
                    058D   2921 	C$Interrupts.c$577$3$12 ==.
                           2922 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:577: Endpoint2();
   0E86 12 0E 95           2923 	lcall	_Endpoint2
                    0590   2924 	C$Interrupts.c$579$2$6 ==.
                           2925 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:579: POLL_WRITE_BYTE(EOUTCSR1, 0);    // Clear Out Packet ready bit
   0E89                    2926 00130$:
   0E89 E5 8B              2927 	mov	a,_USB0ADR
   0E8B 20 E7 FB           2928 	jb	acc.7,00130$
   0E8E 75 8B 14           2929 	mov	_USB0ADR,#0x14
   0E91 75 8C 00           2930 	mov	_USB0DAT,#0x00
                    059B   2931 	C$Interrupts.c$581$1$1 ==.
                    059B   2932 	XG$Handle_Out2$0$0 ==.
   0E94 22                 2933 	ret
                           2934 ;------------------------------------------------------------
                           2935 ;Allocation info for local variables in function 'Endpoint2'
                           2936 ;------------------------------------------------------------
                           2937 ;bEP                       Allocated to registers 
                           2938 ;uNumBytes                 Allocated to registers 
                           2939 ;bOp                       Allocated with name '_Endpoint2_bOp_1_1'
                           2940 ;------------------------------------------------------------
                    059C   2941 	G$Endpoint2$0$0 ==.
                    059C   2942 	C$Interrupts.c$594$1$1 ==.
                           2943 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:594: void Endpoint2()
                           2944 ;	-----------------------------------------
                           2945 ;	 function Endpoint2
                           2946 ;	-----------------------------------------
   0E95                    2947 _Endpoint2:
                    059C   2948 	C$Interrupts.c$599$1$1 ==.
                           2949 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:599: BYTE bOp = 0x00;				//Operation to perform
   0E95 75 3A 00           2950 	mov	_Endpoint2_bOp_1_1,#0x00
                    059F   2951 	C$Interrupts.c$602$1$1 ==.
                           2952 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:602: Fifo_Read(bEP, uNumBytes, &bOp);
   0E98 75 16 3A           2953 	mov	_Fifo_Read_PARM_3,#_Endpoint2_bOp_1_1
   0E9B 75 17 00           2954 	mov	(_Fifo_Read_PARM_3 + 1),#0x00
   0E9E 75 18 40           2955 	mov	(_Fifo_Read_PARM_3 + 2),#0x40
   0EA1 75 14 01           2956 	mov	_Fifo_Read_PARM_2,#0x01
   0EA4 E4                 2957 	clr	a
   0EA5 F5 15              2958 	mov	(_Fifo_Read_PARM_2 + 1),a
   0EA7 75 82 02           2959 	mov	dpl,#0x02
   0EAA 12 0E FF           2960 	lcall	_Fifo_Read
                    05B4   2961 	C$Interrupts.c$606$1$1 ==.
                           2962 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:606: if (bOp == OP_GET_CURRENT)
   0EAD 74 01              2963 	mov	a,#0x01
   0EAF B5 3A 03           2964 	cjne	a,_Endpoint2_bOp_1_1,00103$
                    05B9   2965 	C$Interrupts.c$607$1$1 ==.
                           2966 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:607: ReadCurrent();
                    05B9   2967 	C$Interrupts.c$608$1$1 ==.
                    05B9   2968 	XG$Endpoint2$0$0 ==.
   0EB2 02 0E B6           2969 	ljmp	_ReadCurrent
   0EB5                    2970 00103$:
   0EB5 22                 2971 	ret
                           2972 ;------------------------------------------------------------
                           2973 ;Allocation info for local variables in function 'ReadCurrent'
                           2974 ;------------------------------------------------------------
                           2975 ;bEP                       Allocated to registers 
                           2976 ;uNumBytes                 Allocated to registers 
                           2977 ;pData                     Allocated with name '_ReadCurrent_pData_1_1'
                           2978 ;------------------------------------------------------------
                    05BD   2979 	G$ReadCurrent$0$0 ==.
                    05BD   2980 	C$Interrupts.c$621$1$1 ==.
                           2981 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:621: void ReadCurrent()
                           2982 ;	-----------------------------------------
                           2983 ;	 function ReadCurrent
                           2984 ;	-----------------------------------------
   0EB6                    2985 _ReadCurrent:
                    05BD   2986 	C$Interrupts.c$631$1$1 ==.
                           2987 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:631: Fifo_Write(bEP, uNumBytes, pData);
   0EB6 75 16 3B           2988 	mov	_Fifo_Write_PARM_3,#_ReadCurrent_pData_1_1
   0EB9 75 17 00           2989 	mov	(_Fifo_Write_PARM_3 + 1),#0x00
   0EBC 75 18 40           2990 	mov	(_Fifo_Write_PARM_3 + 2),#0x40
   0EBF 75 14 02           2991 	mov	_Fifo_Write_PARM_2,#0x02
   0EC2 E4                 2992 	clr	a
   0EC3 F5 15              2993 	mov	(_Fifo_Write_PARM_2 + 1),a
   0EC5 75 82 02           2994 	mov	dpl,#0x02
                    05CF   2995 	C$Interrupts.c$632$1$1 ==.
                    05CF   2996 	XG$ReadCurrent$0$0 ==.
   0EC8 02 0F 75           2997 	ljmp	_Fifo_Write
                           2998 ;------------------------------------------------------------
                           2999 ;Allocation info for local variables in function 'Usb_Suspend'
                           3000 ;------------------------------------------------------------
                           3001 ;------------------------------------------------------------
                    05D2   3002 	G$Usb_Suspend$0$0 ==.
                    05D2   3003 	C$Interrupts.c$645$1$1 ==.
                           3004 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:645: void Usb_Suspend(void)
                           3005 ;	-----------------------------------------
                           3006 ;	 function Usb_Suspend
                           3007 ;	-----------------------------------------
   0ECB                    3008 _Usb_Suspend:
                    05D2   3009 	C$Interrupts.c$649$1$1 ==.
                           3010 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:649: P0MDIN  = 0x00;                     // Port 0 configured as analog input
   0ECB 75 D9 00           3011 	mov	_P0MDIN,#0x00
                    05D5   3012 	C$Interrupts.c$650$1$1 ==.
                           3013 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:650: P1MDIN  = 0x00;                     // Port 1 configured as analog input
   0ECE 75 DA 00           3014 	mov	_P1MDIN,#0x00
                    05D8   3015 	C$Interrupts.c$651$1$1 ==.
                           3016 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:651: P2MDIN  = 0x00;                     // Port 2 configured as analog input
   0ED1 75 DB 00           3017 	mov	_P2MDIN,#0x00
                    05DB   3018 	C$Interrupts.c$652$1$1 ==.
                           3019 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:652: P3MDIN  = 0x00;                     // Port 3 configured as analog input
   0ED4 75 DC 00           3020 	mov	_P3MDIN,#0x00
                    05DE   3021 	C$Interrupts.c$654$1$1 ==.
                           3022 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:654: ADC0CN &= ~0x80;                    // Disable ADC0
   0ED7 53 D0 7F           3023 	anl	_ADC0CN,#0x7F
                    05E1   3024 	C$Interrupts.c$655$1$1 ==.
                           3025 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:655: REF0CN  = 0x00;                     // Disable voltage reference
   0EDA 75 BE 00           3026 	mov	_REF0CN,#0x00
                    05E4   3027 	C$Interrupts.c$657$1$1 ==.
                           3028 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:657: OSCICN |= 0x20;                     // Put oscillator 
   0EDD 43 A5 20           3029 	orl	_OSCICN,#0x20
                    05E7   3030 	C$Interrupts.c$664$1$1 ==.
                           3031 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:664: P0MDIN  = 0xFF;                     // Port 0 configured as analog input
   0EE0 75 D9 FF           3032 	mov	_P0MDIN,#0xFF
                    05EA   3033 	C$Interrupts.c$665$1$1 ==.
                           3034 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:665: P1MDIN  = 0x7F;                     // Port 1 pin 7 set as analog input
   0EE3 75 DA 7F           3035 	mov	_P1MDIN,#0x7F
                    05ED   3036 	C$Interrupts.c$666$1$1 ==.
                           3037 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:666: P2MDIN  = 0xFF;                     // Port 2 configured as analog input
   0EE6 75 DB FF           3038 	mov	_P2MDIN,#0xFF
                    05F0   3039 	C$Interrupts.c$667$1$1 ==.
                           3040 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:667: P3MDIN  = 0xFF;                     // Port 3 configured as analog input
   0EE9 75 DC FF           3041 	mov	_P3MDIN,#0xFF
                    05F3   3042 	C$Interrupts.c$669$1$1 ==.
                           3043 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:669: REF0CN  = 0x0E;                     // Enable voltage reference VREF
   0EEC 75 BE 0E           3044 	mov	_REF0CN,#0x0E
                    05F6   3045 	C$Interrupts.c$670$1$1 ==.
                           3046 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:670: ADC0CN |= 0x80;                     // Re-enable ADC
   0EEF 43 D0 80           3047 	orl	_ADC0CN,#0x80
                    05F9   3048 	C$Interrupts.c$671$1$1 ==.
                    05F9   3049 	XG$Usb_Suspend$0$0 ==.
   0EF2 22                 3050 	ret
                           3051 ;------------------------------------------------------------
                           3052 ;Allocation info for local variables in function 'Usb_Resume'
                           3053 ;------------------------------------------------------------
                           3054 ;k                         Allocated with name '_Usb_Resume_k_1_1'
                           3055 ;------------------------------------------------------------
                    05FA   3056 	G$Usb_Resume$0$0 ==.
                    05FA   3057 	C$Interrupts.c$684$1$1 ==.
                           3058 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:684: void Usb_Resume(void)
                           3059 ;	-----------------------------------------
                           3060 ;	 function Usb_Resume
                           3061 ;	-----------------------------------------
   0EF3                    3062 _Usb_Resume:
                    05FA   3063 	C$Interrupts.c$688$1$1 ==.
                           3064 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:688: k++;
   0EF3 74 01              3065 	mov	a,#0x01
   0EF5 25 14              3066 	add	a,_Usb_Resume_k_1_1
   0EF7 F5 14              3067 	mov	_Usb_Resume_k_1_1,a
   0EF9 E4                 3068 	clr	a
   0EFA 35 15              3069 	addc	a,(_Usb_Resume_k_1_1 + 1)
   0EFC F5 15              3070 	mov	(_Usb_Resume_k_1_1 + 1),a
                    0605   3071 	C$Interrupts.c$691$1$1 ==.
                    0605   3072 	XG$Usb_Resume$0$0 ==.
   0EFE 22                 3073 	ret
                           3074 ;------------------------------------------------------------
                           3075 ;Allocation info for local variables in function 'Fifo_Read'
                           3076 ;------------------------------------------------------------
                           3077 ;uNumBytes                 Allocated with name '_Fifo_Read_PARM_2'
                           3078 ;pData                     Allocated with name '_Fifo_Read_PARM_3'
                           3079 ;addr                      Allocated to registers r2 
                           3080 ;i                         Allocated with name '_Fifo_Read_i_1_1'
                           3081 ;------------------------------------------------------------
                    0606   3082 	G$Fifo_Read$0$0 ==.
                    0606   3083 	C$Interrupts.c$707$1$1 ==.
                           3084 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:707: void Fifo_Read(BYTE addr, unsigned int uNumBytes, BYTE * pData)
                           3085 ;	-----------------------------------------
                           3086 ;	 function Fifo_Read
                           3087 ;	-----------------------------------------
   0EFF                    3088 _Fifo_Read:
   0EFF AA 82              3089 	mov	r2,dpl
                    0608   3090 	C$Interrupts.c$711$1$1 ==.
                           3091 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:711: if (uNumBytes)                         // Check if >0 bytes requested,
   0F01 E5 14              3092 	mov	a,_Fifo_Read_PARM_2
   0F03 45 15              3093 	orl	a,(_Fifo_Read_PARM_2 + 1)
   0F05 60 6D              3094 	jz	00113$
                    060E   3095 	C$Interrupts.c$713$2$2 ==.
                           3096 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:713: USB0ADR = (addr);                   // Set address
   0F07 8A 8B              3097 	mov	_USB0ADR,r2
                    0610   3098 	C$Interrupts.c$714$2$2 ==.
                           3099 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:714: USB0ADR |= 0xC0;                    // Set auto-read and initiate
   0F09 43 8B C0           3100 	orl	_USB0ADR,#0xC0
                    0613   3101 	C$Interrupts.c$718$2$2 ==.
                           3102 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:718: for(i=0;i<uNumBytes-1;i++)
   0F0C E4                 3103 	clr	a
   0F0D FA                 3104 	mov	r2,a
   0F0E FB                 3105 	mov	r3,a
   0F0F E5 14              3106 	mov	a,_Fifo_Read_PARM_2
   0F11 24 FF              3107 	add	a,#0xff
   0F13 FC                 3108 	mov	r4,a
   0F14 E5 15              3109 	mov	a,(_Fifo_Read_PARM_2 + 1)
   0F16 34 FF              3110 	addc	a,#0xff
   0F18 FD                 3111 	mov	r5,a
   0F19 E4                 3112 	clr	a
   0F1A F5 19              3113 	mov	_Fifo_Read_i_1_1,a
   0F1C F5 1A              3114 	mov	(_Fifo_Read_i_1_1 + 1),a
   0F1E                    3115 00109$:
   0F1E A8 19              3116 	mov	r0,_Fifo_Read_i_1_1
   0F20 A9 1A              3117 	mov	r1,(_Fifo_Read_i_1_1 + 1)
   0F22 C3                 3118 	clr	c
   0F23 E8                 3119 	mov	a,r0
   0F24 9C                 3120 	subb	a,r4
   0F25 E9                 3121 	mov	a,r1
   0F26 9D                 3122 	subb	a,r5
   0F27 50 2A              3123 	jnc	00121$
                    0630   3124 	C$Interrupts.c$720$3$3 ==.
                           3125 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:720: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
   0F29                    3126 00101$:
   0F29 E5 8B              3127 	mov	a,_USB0ADR
   0F2B 20 E7 FB           3128 	jb	acc.7,00101$
                    0635   3129 	C$Interrupts.c$721$3$3 ==.
                           3130 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:721: pData[i] = USB0DAT;              // Copy data byte
   0F2E E5 19              3131 	mov	a,_Fifo_Read_i_1_1
   0F30 25 16              3132 	add	a,_Fifo_Read_PARM_3
   0F32 F8                 3133 	mov	r0,a
   0F33 E5 1A              3134 	mov	a,(_Fifo_Read_i_1_1 + 1)
   0F35 35 17              3135 	addc	a,(_Fifo_Read_PARM_3 + 1)
   0F37 F9                 3136 	mov	r1,a
   0F38 AE 18              3137 	mov	r6,(_Fifo_Read_PARM_3 + 2)
   0F3A 88 82              3138 	mov	dpl,r0
   0F3C 89 83              3139 	mov	dph,r1
   0F3E 8E F0              3140 	mov	b,r6
   0F40 E5 8C              3141 	mov	a,_USB0DAT
   0F42 12 14 F8           3142 	lcall	__gptrput
                    064C   3143 	C$Interrupts.c$718$2$2 ==.
                           3144 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:718: for(i=0;i<uNumBytes-1;i++)
   0F45 05 19              3145 	inc	_Fifo_Read_i_1_1
   0F47 E4                 3146 	clr	a
   0F48 B5 19 02           3147 	cjne	a,_Fifo_Read_i_1_1,00125$
   0F4B 05 1A              3148 	inc	(_Fifo_Read_i_1_1 + 1)
   0F4D                    3149 00125$:
   0F4D AA 19              3150 	mov	r2,_Fifo_Read_i_1_1
   0F4F AB 1A              3151 	mov	r3,(_Fifo_Read_i_1_1 + 1)
   0F51 80 CB              3152 	sjmp	00109$
   0F53                    3153 00121$:
   0F53 AA 19              3154 	mov	r2,_Fifo_Read_i_1_1
   0F55 AB 1A              3155 	mov	r3,(_Fifo_Read_i_1_1 + 1)
                    065E   3156 	C$Interrupts.c$724$2$2 ==.
                           3157 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:724: USB0ADR = 0;                           // Clear auto-read
   0F57 75 8B 00           3158 	mov	_USB0ADR,#0x00
                    0661   3159 	C$Interrupts.c$726$2$2 ==.
                           3160 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:726: while(USB0ADR & 0x80);               // Wait for BUSY->'0' (data ready)
   0F5A                    3161 00104$:
   0F5A E5 8B              3162 	mov	a,_USB0ADR
   0F5C 20 E7 FB           3163 	jb	acc.7,00104$
                    0666   3164 	C$Interrupts.c$727$2$2 ==.
                           3165 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:727: pData[i] = USB0DAT;                  // Copy data byte
   0F5F EA                 3166 	mov	a,r2
   0F60 25 16              3167 	add	a,_Fifo_Read_PARM_3
   0F62 FA                 3168 	mov	r2,a
   0F63 EB                 3169 	mov	a,r3
   0F64 35 17              3170 	addc	a,(_Fifo_Read_PARM_3 + 1)
   0F66 FB                 3171 	mov	r3,a
   0F67 AC 18              3172 	mov	r4,(_Fifo_Read_PARM_3 + 2)
   0F69 8A 82              3173 	mov	dpl,r2
   0F6B 8B 83              3174 	mov	dph,r3
   0F6D 8C F0              3175 	mov	b,r4
   0F6F E5 8C              3176 	mov	a,_USB0DAT
                    0678   3177 	C$Interrupts.c$729$2$1 ==.
                    0678   3178 	XG$Fifo_Read$0$0 ==.
   0F71 02 14 F8           3179 	ljmp	__gptrput
   0F74                    3180 00113$:
   0F74 22                 3181 	ret
                           3182 ;------------------------------------------------------------
                           3183 ;Allocation info for local variables in function 'Fifo_Write'
                           3184 ;------------------------------------------------------------
                           3185 ;uNumBytes                 Allocated with name '_Fifo_Write_PARM_2'
                           3186 ;pData                     Allocated with name '_Fifo_Write_PARM_3'
                           3187 ;addr                      Allocated to registers r2 
                           3188 ;i                         Allocated to registers r2 r3 
                           3189 ;------------------------------------------------------------
                    067C   3190 	G$Fifo_Write$0$0 ==.
                    067C   3191 	C$Interrupts.c$745$2$1 ==.
                           3192 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:745: void Fifo_Write(BYTE addr, unsigned int uNumBytes, BYTE * pData)
                           3193 ;	-----------------------------------------
                           3194 ;	 function Fifo_Write
                           3195 ;	-----------------------------------------
   0F75                    3196 _Fifo_Write:
   0F75 AA 82              3197 	mov	r2,dpl
                    067E   3198 	C$Interrupts.c$750$1$1 ==.
                           3199 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:750: if (uNumBytes)
   0F77 E5 14              3200 	mov	a,_Fifo_Write_PARM_2
   0F79 45 15              3201 	orl	a,(_Fifo_Write_PARM_2 + 1)
   0F7B 60 39              3202 	jz	00113$
                    0684   3203 	C$Interrupts.c$752$2$2 ==.
                           3204 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:752: while(USB0ADR & 0x80);              // Wait for BUSY->'0'
   0F7D                    3205 00101$:
   0F7D E5 8B              3206 	mov	a,_USB0ADR
   0F7F 20 E7 FB           3207 	jb	acc.7,00101$
                    0689   3208 	C$Interrupts.c$754$2$2 ==.
                           3209 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:754: USB0ADR = (addr);                   // Set address (mask out bits7-6)
   0F82 8A 8B              3210 	mov	_USB0ADR,r2
                    068B   3211 	C$Interrupts.c$757$2$1 ==.
                           3212 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:757: for(i=0;i<uNumBytes;i++)
   0F84 7A 00              3213 	mov	r2,#0x00
   0F86 7B 00              3214 	mov	r3,#0x00
   0F88                    3215 00109$:
   0F88 8A 04              3216 	mov	ar4,r2
   0F8A 8B 05              3217 	mov	ar5,r3
   0F8C C3                 3218 	clr	c
   0F8D EC                 3219 	mov	a,r4
   0F8E 95 14              3220 	subb	a,_Fifo_Write_PARM_2
   0F90 ED                 3221 	mov	a,r5
   0F91 95 15              3222 	subb	a,(_Fifo_Write_PARM_2 + 1)
   0F93 50 21              3223 	jnc	00113$
                    069C   3224 	C$Interrupts.c$759$3$3 ==.
                           3225 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:759: USB0DAT = pData[i];
   0F95 EA                 3226 	mov	a,r2
   0F96 25 16              3227 	add	a,_Fifo_Write_PARM_3
   0F98 FC                 3228 	mov	r4,a
   0F99 EB                 3229 	mov	a,r3
   0F9A 35 17              3230 	addc	a,(_Fifo_Write_PARM_3 + 1)
   0F9C FD                 3231 	mov	r5,a
   0F9D AE 18              3232 	mov	r6,(_Fifo_Write_PARM_3 + 2)
   0F9F 8C 82              3233 	mov	dpl,r4
   0FA1 8D 83              3234 	mov	dph,r5
   0FA3 8E F0              3235 	mov	b,r6
   0FA5 12 15 65           3236 	lcall	__gptrget
   0FA8 F5 8C              3237 	mov	_USB0DAT,a
                    06B1   3238 	C$Interrupts.c$760$3$3 ==.
                           3239 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:760: while(USB0ADR & 0x80);           // Wait for BUSY->'0' (data ready)
   0FAA                    3240 00104$:
   0FAA E5 8B              3241 	mov	a,_USB0ADR
   0FAC 20 E7 FB           3242 	jb	acc.7,00104$
                    06B6   3243 	C$Interrupts.c$757$2$2 ==.
                           3244 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:757: for(i=0;i<uNumBytes;i++)
   0FAF 0A                 3245 	inc	r2
   0FB0 BA 00 D5           3246 	cjne	r2,#0x00,00109$
   0FB3 0B                 3247 	inc	r3
   0FB4 80 D2              3248 	sjmp	00109$
   0FB6                    3249 00113$:
                    06BD   3250 	C$Interrupts.c$763$2$1 ==.
                    06BD   3251 	XG$Fifo_Write$0$0 ==.
   0FB6 22                 3252 	ret
                           3253 ;------------------------------------------------------------
                           3254 ;Allocation info for local variables in function 'Force_Stall'
                           3255 ;------------------------------------------------------------
                           3256 ;------------------------------------------------------------
                    06BE   3257 	G$Force_Stall$0$0 ==.
                    06BE   3258 	C$Interrupts.c$776$2$1 ==.
                           3259 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:776: void Force_Stall(void)
                           3260 ;	-----------------------------------------
                           3261 ;	 function Force_Stall
                           3262 ;	-----------------------------------------
   0FB7                    3263 _Force_Stall:
                    06BE   3264 	C$Interrupts.c$778$1$1 ==.
                           3265 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:778: POLL_WRITE_BYTE(INDEX, 0);
   0FB7                    3266 00101$:
   0FB7 E5 8B              3267 	mov	a,_USB0ADR
   0FB9 20 E7 FB           3268 	jb	acc.7,00101$
   0FBC 75 8B 0E           3269 	mov	_USB0ADR,#0x0E
   0FBF 75 8C 00           3270 	mov	_USB0DAT,#0x00
                    06C9   3271 	C$Interrupts.c$779$1$1 ==.
                           3272 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:779: POLL_WRITE_BYTE(E0CSR, rbSDSTL);       // Set the send stall bit
   0FC2                    3273 00104$:
   0FC2 E5 8B              3274 	mov	a,_USB0ADR
   0FC4 20 E7 FB           3275 	jb	acc.7,00104$
   0FC7 75 8B 11           3276 	mov	_USB0ADR,#0x11
   0FCA 75 8C 20           3277 	mov	_USB0DAT,#0x20
                    06D4   3278 	C$Interrupts.c$780$1$1 ==.
                           3279 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\Interrupts.c:780: Ep_Status[0] = EP_STALL;               // Put the endpoint in stall status
   0FCD 75 31 04           3280 	mov	_Ep_Status,#0x04
                    06D7   3281 	C$Interrupts.c$781$1$1 ==.
                    06D7   3282 	XG$Force_Stall$0$0 ==.
   0FD0 22                 3283 	ret
                           3284 	.area CSEG    (CODE)
                           3285 	.area CONST   (CODE)
                           3286 	.area XINIT   (CODE)
                           3287 	.area CABS    (ABS,CODE)
