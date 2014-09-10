                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Thu Oct 28 02:55:48 2010
                              5 ;--------------------------------------------------------
                              6 	.module USBStandardRequests
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _ZERO_PACKET
                             13 	.globl _ONES_PACKET
                             14 	.globl _SPIEN
                             15 	.globl _TXBMT
                             16 	.globl _NSSMD0
                             17 	.globl _NSSMD1
                             18 	.globl _RXOVRN
                             19 	.globl _MODF
                             20 	.globl _WCOL
                             21 	.globl _SPIF
                             22 	.globl _AD0CM0
                             23 	.globl _AD0CM1
                             24 	.globl _AD0CM2
                             25 	.globl _AD0WINT
                             26 	.globl _AD0BUSY
                             27 	.globl _AD0INT
                             28 	.globl _AD0TM
                             29 	.globl _AD0EN
                             30 	.globl _CCF0
                             31 	.globl _CCF1
                             32 	.globl _CCF2
                             33 	.globl _CCF3
                             34 	.globl _CCF4
                             35 	.globl _CR
                             36 	.globl _CF
                             37 	.globl _P
                             38 	.globl _F1
                             39 	.globl _OV
                             40 	.globl _RS0
                             41 	.globl _RS1
                             42 	.globl _F0
                             43 	.globl _AC
                             44 	.globl _CY
                             45 	.globl _T2XCLK
                             46 	.globl _TR2
                             47 	.globl _T2SPLIT
                             48 	.globl _T2SOF
                             49 	.globl _TF2LEN
                             50 	.globl _TF2L
                             51 	.globl _TF2H
                             52 	.globl _SI
                             53 	.globl _ACK
                             54 	.globl _ARBLOST
                             55 	.globl _ACKRQ
                             56 	.globl _STO
                             57 	.globl _STA
                             58 	.globl _TXMODE
                             59 	.globl _MASTER
                             60 	.globl _PX0
                             61 	.globl _PT0
                             62 	.globl _PX1
                             63 	.globl _PT1
                             64 	.globl _PS0
                             65 	.globl _PT2
                             66 	.globl _PSPI0
                             67 	.globl _EX0
                             68 	.globl _ET0
                             69 	.globl _EX1
                             70 	.globl _ET1
                             71 	.globl _ES0
                             72 	.globl _ET2
                             73 	.globl _ESPI0
                             74 	.globl _EA
                             75 	.globl _RI0
                             76 	.globl _TI0
                             77 	.globl _RB80
                             78 	.globl _TB80
                             79 	.globl _REN0
                             80 	.globl _MCE0
                             81 	.globl _S0MODE
                             82 	.globl _IT0
                             83 	.globl _IE0
                             84 	.globl _IT1
                             85 	.globl _IE1
                             86 	.globl _TR0
                             87 	.globl _TF0
                             88 	.globl _TR1
                             89 	.globl _TF1
                             90 	.globl _VDM0CN
                             91 	.globl _PCA0CPH4
                             92 	.globl _PCA0CPL4
                             93 	.globl _PCA0CPH0
                             94 	.globl _PCA0CPL0
                             95 	.globl _PCA0H
                             96 	.globl _PCA0L
                             97 	.globl _SPI0CN
                             98 	.globl _EIP2
                             99 	.globl _EIP1
                            100 	.globl _P3MDIN
                            101 	.globl _P2MDIN
                            102 	.globl _P1MDIN
                            103 	.globl _P0MDIN
                            104 	.globl _B
                            105 	.globl _RSTSRC
                            106 	.globl _PCA0CPH3
                            107 	.globl _PCA0CPL3
                            108 	.globl _PCA0CPH2
                            109 	.globl _PCA0CPL2
                            110 	.globl _PCA0CPH1
                            111 	.globl _PCA0CPL1
                            112 	.globl _ADC0CN
                            113 	.globl _EIE2
                            114 	.globl _EIE1
                            115 	.globl _IT01CF
                            116 	.globl _XBR1
                            117 	.globl _XBR0
                            118 	.globl _ACC
                            119 	.globl _PCA0CPM4
                            120 	.globl _PCA0CPM3
                            121 	.globl _PCA0CPM2
                            122 	.globl _PCA0CPM1
                            123 	.globl _PCA0CPM0
                            124 	.globl _PCA0MD
                            125 	.globl _PCA0CN
                            126 	.globl _USB0XCN
                            127 	.globl _P2SKIP
                            128 	.globl _P1SKIP
                            129 	.globl _P0SKIP
                            130 	.globl _REF0CN
                            131 	.globl _PSW
                            132 	.globl _TMR2H
                            133 	.globl _TMR2L
                            134 	.globl _TMR2RLH
                            135 	.globl _TMR2RLL
                            136 	.globl _REG0CN
                            137 	.globl _TMR2CN
                            138 	.globl _ADC0LTH
                            139 	.globl _ADC0LTL
                            140 	.globl _ADC0GTH
                            141 	.globl _ADC0GTL
                            142 	.globl _SMB0DAT
                            143 	.globl _SMB0CF
                            144 	.globl _SMB0CN
                            145 	.globl _ADC0H
                            146 	.globl _ADC0L
                            147 	.globl _ADC0CF
                            148 	.globl _AMX0P
                            149 	.globl _AMX0N
                            150 	.globl _CLKMUL
                            151 	.globl _IP
                            152 	.globl _FLKEY
                            153 	.globl _FLSCL
                            154 	.globl _OSCICL
                            155 	.globl _OSCICN
                            156 	.globl _OSCXCN
                            157 	.globl _P3
                            158 	.globl _EMI0CN
                            159 	.globl _CLKSEL
                            160 	.globl _IE
                            161 	.globl _P3MDOUT
                            162 	.globl _P2MDOUT
                            163 	.globl _P1MDOUT
                            164 	.globl _P0MDOUT
                            165 	.globl _SPI0DAT
                            166 	.globl _SPIDAT
                            167 	.globl _SPI0CKR
                            168 	.globl _SPICKR
                            169 	.globl _SPI0CFG
                            170 	.globl _SPICFG
                            171 	.globl _P2
                            172 	.globl _CPT0MX
                            173 	.globl _CPT1MX
                            174 	.globl _CPT0MD
                            175 	.globl _CPT1MD
                            176 	.globl _CPT0CN
                            177 	.globl _CPT1CN
                            178 	.globl _SBUF0
                            179 	.globl _SCON0
                            180 	.globl _USB0DAT
                            181 	.globl _USB0ADR
                            182 	.globl _TMR3H
                            183 	.globl _TMR3L
                            184 	.globl _TMR3RLH
                            185 	.globl _TMR3RLL
                            186 	.globl _TMR3CN
                            187 	.globl _P1
                            188 	.globl _PSCTL
                            189 	.globl _CKCON
                            190 	.globl _TH1
                            191 	.globl _TH0
                            192 	.globl _TL1
                            193 	.globl _TL0
                            194 	.globl _TMOD
                            195 	.globl _TCON
                            196 	.globl _PCON
                            197 	.globl _DPH
                            198 	.globl _DPL
                            199 	.globl _SP
                            200 	.globl _P0
                            201 	.globl _Get_Status
                            202 	.globl _Clear_Feature
                            203 	.globl _Set_Feature
                            204 	.globl _Set_Address
                            205 	.globl _Get_Descriptor
                            206 	.globl _Get_Configuration
                            207 	.globl _Set_Configuration
                            208 	.globl _Get_Interface
                            209 	.globl _Set_Interface
                            210 ;--------------------------------------------------------
                            211 ; special function registers
                            212 ;--------------------------------------------------------
                            213 	.area RSEG    (DATA)
                    0000    214 G$P0$0$0==.
   0233                     215 _P0::
   0233                     216 	.ds 1
                    0001    217 G$SP$0$0==.
   0234                     218 _SP::
   0234                     219 	.ds 1
                    0002    220 G$DPL$0$0==.
   0235                     221 _DPL::
   0235                     222 	.ds 1
                    0003    223 G$DPH$0$0==.
   0236                     224 _DPH::
   0236                     225 	.ds 1
                    0004    226 G$PCON$0$0==.
   0237                     227 _PCON::
   0237                     228 	.ds 1
                    0005    229 G$TCON$0$0==.
   0238                     230 _TCON::
   0238                     231 	.ds 1
                    0006    232 G$TMOD$0$0==.
   0239                     233 _TMOD::
   0239                     234 	.ds 1
                    0007    235 G$TL0$0$0==.
   023A                     236 _TL0::
   023A                     237 	.ds 1
                    0008    238 G$TL1$0$0==.
   023B                     239 _TL1::
   023B                     240 	.ds 1
                    0009    241 G$TH0$0$0==.
   023C                     242 _TH0::
   023C                     243 	.ds 1
                    000A    244 G$TH1$0$0==.
   023D                     245 _TH1::
   023D                     246 	.ds 1
                    000B    247 G$CKCON$0$0==.
   023E                     248 _CKCON::
   023E                     249 	.ds 1
                    000C    250 G$PSCTL$0$0==.
   023F                     251 _PSCTL::
   023F                     252 	.ds 1
                    000D    253 G$P1$0$0==.
   0240                     254 _P1::
   0240                     255 	.ds 1
                    000E    256 G$TMR3CN$0$0==.
   0241                     257 _TMR3CN::
   0241                     258 	.ds 1
                    000F    259 G$TMR3RLL$0$0==.
   0242                     260 _TMR3RLL::
   0242                     261 	.ds 1
                    0010    262 G$TMR3RLH$0$0==.
   0243                     263 _TMR3RLH::
   0243                     264 	.ds 1
                    0011    265 G$TMR3L$0$0==.
   0244                     266 _TMR3L::
   0244                     267 	.ds 1
                    0012    268 G$TMR3H$0$0==.
   0245                     269 _TMR3H::
   0245                     270 	.ds 1
                    0013    271 G$USB0ADR$0$0==.
   0246                     272 _USB0ADR::
   0246                     273 	.ds 1
                    0014    274 G$USB0DAT$0$0==.
   0247                     275 _USB0DAT::
   0247                     276 	.ds 1
                    0015    277 G$SCON0$0$0==.
   0248                     278 _SCON0::
   0248                     279 	.ds 1
                    0016    280 G$SBUF0$0$0==.
   0249                     281 _SBUF0::
   0249                     282 	.ds 1
                    0017    283 G$CPT1CN$0$0==.
   024A                     284 _CPT1CN::
   024A                     285 	.ds 1
                    0018    286 G$CPT0CN$0$0==.
   024B                     287 _CPT0CN::
   024B                     288 	.ds 1
                    0019    289 G$CPT1MD$0$0==.
   024C                     290 _CPT1MD::
   024C                     291 	.ds 1
                    001A    292 G$CPT0MD$0$0==.
   024D                     293 _CPT0MD::
   024D                     294 	.ds 1
                    001B    295 G$CPT1MX$0$0==.
   024E                     296 _CPT1MX::
   024E                     297 	.ds 1
                    001C    298 G$CPT0MX$0$0==.
   024F                     299 _CPT0MX::
   024F                     300 	.ds 1
                    001D    301 G$P2$0$0==.
   0250                     302 _P2::
   0250                     303 	.ds 1
                    001E    304 G$SPICFG$0$0==.
   0251                     305 _SPICFG::
   0251                     306 	.ds 1
                    001F    307 G$SPI0CFG$0$0==.
   0252                     308 _SPI0CFG::
   0252                     309 	.ds 1
                    0020    310 G$SPICKR$0$0==.
   0253                     311 _SPICKR::
   0253                     312 	.ds 1
                    0021    313 G$SPI0CKR$0$0==.
   0254                     314 _SPI0CKR::
   0254                     315 	.ds 1
                    0022    316 G$SPIDAT$0$0==.
   0255                     317 _SPIDAT::
   0255                     318 	.ds 1
                    0023    319 G$SPI0DAT$0$0==.
   0256                     320 _SPI0DAT::
   0256                     321 	.ds 1
                    0024    322 G$P0MDOUT$0$0==.
   0257                     323 _P0MDOUT::
   0257                     324 	.ds 1
                    0025    325 G$P1MDOUT$0$0==.
   0258                     326 _P1MDOUT::
   0258                     327 	.ds 1
                    0026    328 G$P2MDOUT$0$0==.
   0259                     329 _P2MDOUT::
   0259                     330 	.ds 1
                    0027    331 G$P3MDOUT$0$0==.
   025A                     332 _P3MDOUT::
   025A                     333 	.ds 1
                    0028    334 G$IE$0$0==.
   025B                     335 _IE::
   025B                     336 	.ds 1
                    0029    337 G$CLKSEL$0$0==.
   025C                     338 _CLKSEL::
   025C                     339 	.ds 1
                    002A    340 G$EMI0CN$0$0==.
   025D                     341 _EMI0CN::
   025D                     342 	.ds 1
                    002B    343 G$P3$0$0==.
   025E                     344 _P3::
   025E                     345 	.ds 1
                    002C    346 G$OSCXCN$0$0==.
   025F                     347 _OSCXCN::
   025F                     348 	.ds 1
                    002D    349 G$OSCICN$0$0==.
   0260                     350 _OSCICN::
   0260                     351 	.ds 1
                    002E    352 G$OSCICL$0$0==.
   0261                     353 _OSCICL::
   0261                     354 	.ds 1
                    002F    355 G$FLSCL$0$0==.
   0262                     356 _FLSCL::
   0262                     357 	.ds 1
                    0030    358 G$FLKEY$0$0==.
   0263                     359 _FLKEY::
   0263                     360 	.ds 1
                    0031    361 G$IP$0$0==.
   0264                     362 _IP::
   0264                     363 	.ds 1
                    0032    364 G$CLKMUL$0$0==.
   0265                     365 _CLKMUL::
   0265                     366 	.ds 1
                    0033    367 G$AMX0N$0$0==.
   0266                     368 _AMX0N::
   0266                     369 	.ds 1
                    0034    370 G$AMX0P$0$0==.
   0267                     371 _AMX0P::
   0267                     372 	.ds 1
                    0035    373 G$ADC0CF$0$0==.
   0268                     374 _ADC0CF::
   0268                     375 	.ds 1
                    0036    376 G$ADC0L$0$0==.
   0269                     377 _ADC0L::
   0269                     378 	.ds 1
                    0037    379 G$ADC0H$0$0==.
   026A                     380 _ADC0H::
   026A                     381 	.ds 1
                    0038    382 G$SMB0CN$0$0==.
   026B                     383 _SMB0CN::
   026B                     384 	.ds 1
                    0039    385 G$SMB0CF$0$0==.
   026C                     386 _SMB0CF::
   026C                     387 	.ds 1
                    003A    388 G$SMB0DAT$0$0==.
   026D                     389 _SMB0DAT::
   026D                     390 	.ds 1
                    003B    391 G$ADC0GTL$0$0==.
   026E                     392 _ADC0GTL::
   026E                     393 	.ds 1
                    003C    394 G$ADC0GTH$0$0==.
   026F                     395 _ADC0GTH::
   026F                     396 	.ds 1
                    003D    397 G$ADC0LTL$0$0==.
   0270                     398 _ADC0LTL::
   0270                     399 	.ds 1
                    003E    400 G$ADC0LTH$0$0==.
   0271                     401 _ADC0LTH::
   0271                     402 	.ds 1
                    003F    403 G$TMR2CN$0$0==.
   0272                     404 _TMR2CN::
   0272                     405 	.ds 1
                    0040    406 G$REG0CN$0$0==.
   0273                     407 _REG0CN::
   0273                     408 	.ds 1
                    0041    409 G$TMR2RLL$0$0==.
   0274                     410 _TMR2RLL::
   0274                     411 	.ds 1
                    0042    412 G$TMR2RLH$0$0==.
   0275                     413 _TMR2RLH::
   0275                     414 	.ds 1
                    0043    415 G$TMR2L$0$0==.
   0276                     416 _TMR2L::
   0276                     417 	.ds 1
                    0044    418 G$TMR2H$0$0==.
   0277                     419 _TMR2H::
   0277                     420 	.ds 1
                    0045    421 G$PSW$0$0==.
   0278                     422 _PSW::
   0278                     423 	.ds 1
                    0046    424 G$REF0CN$0$0==.
   0279                     425 _REF0CN::
   0279                     426 	.ds 1
                    0047    427 G$P0SKIP$0$0==.
   027A                     428 _P0SKIP::
   027A                     429 	.ds 1
                    0048    430 G$P1SKIP$0$0==.
   027B                     431 _P1SKIP::
   027B                     432 	.ds 1
                    0049    433 G$P2SKIP$0$0==.
   027C                     434 _P2SKIP::
   027C                     435 	.ds 1
                    004A    436 G$USB0XCN$0$0==.
   027D                     437 _USB0XCN::
   027D                     438 	.ds 1
                    004B    439 G$PCA0CN$0$0==.
   027E                     440 _PCA0CN::
   027E                     441 	.ds 1
                    004C    442 G$PCA0MD$0$0==.
   027F                     443 _PCA0MD::
   027F                     444 	.ds 1
                    004D    445 G$PCA0CPM0$0$0==.
   0280                     446 _PCA0CPM0::
   0280                     447 	.ds 1
                    004E    448 G$PCA0CPM1$0$0==.
   0281                     449 _PCA0CPM1::
   0281                     450 	.ds 1
                    004F    451 G$PCA0CPM2$0$0==.
   0282                     452 _PCA0CPM2::
   0282                     453 	.ds 1
                    0050    454 G$PCA0CPM3$0$0==.
   0283                     455 _PCA0CPM3::
   0283                     456 	.ds 1
                    0051    457 G$PCA0CPM4$0$0==.
   0284                     458 _PCA0CPM4::
   0284                     459 	.ds 1
                    0052    460 G$ACC$0$0==.
   0285                     461 _ACC::
   0285                     462 	.ds 1
                    0053    463 G$XBR0$0$0==.
   0286                     464 _XBR0::
   0286                     465 	.ds 1
                    0054    466 G$XBR1$0$0==.
   0287                     467 _XBR1::
   0287                     468 	.ds 1
                    0055    469 G$IT01CF$0$0==.
   0288                     470 _IT01CF::
   0288                     471 	.ds 1
                    0056    472 G$EIE1$0$0==.
   0289                     473 _EIE1::
   0289                     474 	.ds 1
                    0057    475 G$EIE2$0$0==.
   028A                     476 _EIE2::
   028A                     477 	.ds 1
                    0058    478 G$ADC0CN$0$0==.
   028B                     479 _ADC0CN::
   028B                     480 	.ds 1
                    0059    481 G$PCA0CPL1$0$0==.
   028C                     482 _PCA0CPL1::
   028C                     483 	.ds 1
                    005A    484 G$PCA0CPH1$0$0==.
   028D                     485 _PCA0CPH1::
   028D                     486 	.ds 1
                    005B    487 G$PCA0CPL2$0$0==.
   028E                     488 _PCA0CPL2::
   028E                     489 	.ds 1
                    005C    490 G$PCA0CPH2$0$0==.
   028F                     491 _PCA0CPH2::
   028F                     492 	.ds 1
                    005D    493 G$PCA0CPL3$0$0==.
   0290                     494 _PCA0CPL3::
   0290                     495 	.ds 1
                    005E    496 G$PCA0CPH3$0$0==.
   0291                     497 _PCA0CPH3::
   0291                     498 	.ds 1
                    005F    499 G$RSTSRC$0$0==.
   0292                     500 _RSTSRC::
   0292                     501 	.ds 1
                    0060    502 G$B$0$0==.
   0293                     503 _B::
   0293                     504 	.ds 1
                    0061    505 G$P0MDIN$0$0==.
   0294                     506 _P0MDIN::
   0294                     507 	.ds 1
                    0062    508 G$P1MDIN$0$0==.
   0295                     509 _P1MDIN::
   0295                     510 	.ds 1
                    0063    511 G$P2MDIN$0$0==.
   0296                     512 _P2MDIN::
   0296                     513 	.ds 1
                    0064    514 G$P3MDIN$0$0==.
   0297                     515 _P3MDIN::
   0297                     516 	.ds 1
                    0065    517 G$EIP1$0$0==.
   0298                     518 _EIP1::
   0298                     519 	.ds 1
                    0066    520 G$EIP2$0$0==.
   0299                     521 _EIP2::
   0299                     522 	.ds 1
                    0067    523 G$SPI0CN$0$0==.
   029A                     524 _SPI0CN::
   029A                     525 	.ds 1
                    0068    526 G$PCA0L$0$0==.
   029B                     527 _PCA0L::
   029B                     528 	.ds 1
                    0069    529 G$PCA0H$0$0==.
   029C                     530 _PCA0H::
   029C                     531 	.ds 1
                    006A    532 G$PCA0CPL0$0$0==.
   029D                     533 _PCA0CPL0::
   029D                     534 	.ds 1
                    006B    535 G$PCA0CPH0$0$0==.
   029E                     536 _PCA0CPH0::
   029E                     537 	.ds 1
                    006C    538 G$PCA0CPL4$0$0==.
   029F                     539 _PCA0CPL4::
   029F                     540 	.ds 1
                    006D    541 G$PCA0CPH4$0$0==.
   02A0                     542 _PCA0CPH4::
   02A0                     543 	.ds 1
                    006E    544 G$VDM0CN$0$0==.
   02A1                     545 _VDM0CN::
   02A1                     546 	.ds 1
                            547 ;--------------------------------------------------------
                            548 ; special function bits
                            549 ;--------------------------------------------------------
                            550 	.area RSEG    (DATA)
                    006F    551 G$TF1$0$0==.
   02A2                     552 _TF1::
   02A2                     553 	.ds 1
                    0070    554 G$TR1$0$0==.
   02A3                     555 _TR1::
   02A3                     556 	.ds 1
                    0071    557 G$TF0$0$0==.
   02A4                     558 _TF0::
   02A4                     559 	.ds 1
                    0072    560 G$TR0$0$0==.
   02A5                     561 _TR0::
   02A5                     562 	.ds 1
                    0073    563 G$IE1$0$0==.
   02A6                     564 _IE1::
   02A6                     565 	.ds 1
                    0074    566 G$IT1$0$0==.
   02A7                     567 _IT1::
   02A7                     568 	.ds 1
                    0075    569 G$IE0$0$0==.
   02A8                     570 _IE0::
   02A8                     571 	.ds 1
                    0076    572 G$IT0$0$0==.
   02A9                     573 _IT0::
   02A9                     574 	.ds 1
                    0077    575 G$S0MODE$0$0==.
   02AA                     576 _S0MODE::
   02AA                     577 	.ds 1
                    0078    578 G$MCE0$0$0==.
   02AB                     579 _MCE0::
   02AB                     580 	.ds 1
                    0079    581 G$REN0$0$0==.
   02AC                     582 _REN0::
   02AC                     583 	.ds 1
                    007A    584 G$TB80$0$0==.
   02AD                     585 _TB80::
   02AD                     586 	.ds 1
                    007B    587 G$RB80$0$0==.
   02AE                     588 _RB80::
   02AE                     589 	.ds 1
                    007C    590 G$TI0$0$0==.
   02AF                     591 _TI0::
   02AF                     592 	.ds 1
                    007D    593 G$RI0$0$0==.
   02B0                     594 _RI0::
   02B0                     595 	.ds 1
                    007E    596 G$EA$0$0==.
   02B1                     597 _EA::
   02B1                     598 	.ds 1
                    007F    599 G$ESPI0$0$0==.
   02B2                     600 _ESPI0::
   02B2                     601 	.ds 1
                    0080    602 G$ET2$0$0==.
   02B3                     603 _ET2::
   02B3                     604 	.ds 1
                    0081    605 G$ES0$0$0==.
   02B4                     606 _ES0::
   02B4                     607 	.ds 1
                    0082    608 G$ET1$0$0==.
   02B5                     609 _ET1::
   02B5                     610 	.ds 1
                    0083    611 G$EX1$0$0==.
   02B6                     612 _EX1::
   02B6                     613 	.ds 1
                    0084    614 G$ET0$0$0==.
   02B7                     615 _ET0::
   02B7                     616 	.ds 1
                    0085    617 G$EX0$0$0==.
   02B8                     618 _EX0::
   02B8                     619 	.ds 1
                    0086    620 G$PSPI0$0$0==.
   02B9                     621 _PSPI0::
   02B9                     622 	.ds 1
                    0087    623 G$PT2$0$0==.
   02BA                     624 _PT2::
   02BA                     625 	.ds 1
                    0088    626 G$PS0$0$0==.
   02BB                     627 _PS0::
   02BB                     628 	.ds 1
                    0089    629 G$PT1$0$0==.
   02BC                     630 _PT1::
   02BC                     631 	.ds 1
                    008A    632 G$PX1$0$0==.
   02BD                     633 _PX1::
   02BD                     634 	.ds 1
                    008B    635 G$PT0$0$0==.
   02BE                     636 _PT0::
   02BE                     637 	.ds 1
                    008C    638 G$PX0$0$0==.
   02BF                     639 _PX0::
   02BF                     640 	.ds 1
                    008D    641 G$MASTER$0$0==.
   02C0                     642 _MASTER::
   02C0                     643 	.ds 1
                    008E    644 G$TXMODE$0$0==.
   02C1                     645 _TXMODE::
   02C1                     646 	.ds 1
                    008F    647 G$STA$0$0==.
   02C2                     648 _STA::
   02C2                     649 	.ds 1
                    0090    650 G$STO$0$0==.
   02C3                     651 _STO::
   02C3                     652 	.ds 1
                    0091    653 G$ACKRQ$0$0==.
   02C4                     654 _ACKRQ::
   02C4                     655 	.ds 1
                    0092    656 G$ARBLOST$0$0==.
   02C5                     657 _ARBLOST::
   02C5                     658 	.ds 1
                    0093    659 G$ACK$0$0==.
   02C6                     660 _ACK::
   02C6                     661 	.ds 1
                    0094    662 G$SI$0$0==.
   02C7                     663 _SI::
   02C7                     664 	.ds 1
                    0095    665 G$TF2H$0$0==.
   02C8                     666 _TF2H::
   02C8                     667 	.ds 1
                    0096    668 G$TF2L$0$0==.
   02C9                     669 _TF2L::
   02C9                     670 	.ds 1
                    0097    671 G$TF2LEN$0$0==.
   02CA                     672 _TF2LEN::
   02CA                     673 	.ds 1
                    0098    674 G$T2SOF$0$0==.
   02CB                     675 _T2SOF::
   02CB                     676 	.ds 1
                    0099    677 G$T2SPLIT$0$0==.
   02CC                     678 _T2SPLIT::
   02CC                     679 	.ds 1
                    009A    680 G$TR2$0$0==.
   02CD                     681 _TR2::
   02CD                     682 	.ds 1
                    009B    683 G$T2XCLK$0$0==.
   02CE                     684 _T2XCLK::
   02CE                     685 	.ds 1
                    009C    686 G$CY$0$0==.
   02CF                     687 _CY::
   02CF                     688 	.ds 1
                    009D    689 G$AC$0$0==.
   02D0                     690 _AC::
   02D0                     691 	.ds 1
                    009E    692 G$F0$0$0==.
   02D1                     693 _F0::
   02D1                     694 	.ds 1
                    009F    695 G$RS1$0$0==.
   02D2                     696 _RS1::
   02D2                     697 	.ds 1
                    00A0    698 G$RS0$0$0==.
   02D3                     699 _RS0::
   02D3                     700 	.ds 1
                    00A1    701 G$OV$0$0==.
   02D4                     702 _OV::
   02D4                     703 	.ds 1
                    00A2    704 G$F1$0$0==.
   02D5                     705 _F1::
   02D5                     706 	.ds 1
                    00A3    707 G$P$0$0==.
   02D6                     708 _P::
   02D6                     709 	.ds 1
                    00A4    710 G$CF$0$0==.
   02D7                     711 _CF::
   02D7                     712 	.ds 1
                    00A5    713 G$CR$0$0==.
   02D8                     714 _CR::
   02D8                     715 	.ds 1
                    00A6    716 G$CCF4$0$0==.
   02D9                     717 _CCF4::
   02D9                     718 	.ds 1
                    00A7    719 G$CCF3$0$0==.
   02DA                     720 _CCF3::
   02DA                     721 	.ds 1
                    00A8    722 G$CCF2$0$0==.
   02DB                     723 _CCF2::
   02DB                     724 	.ds 1
                    00A9    725 G$CCF1$0$0==.
   02DC                     726 _CCF1::
   02DC                     727 	.ds 1
                    00AA    728 G$CCF0$0$0==.
   02DD                     729 _CCF0::
   02DD                     730 	.ds 1
                    00AB    731 G$AD0EN$0$0==.
   02DE                     732 _AD0EN::
   02DE                     733 	.ds 1
                    00AC    734 G$AD0TM$0$0==.
   02DF                     735 _AD0TM::
   02DF                     736 	.ds 1
                    00AD    737 G$AD0INT$0$0==.
   02E0                     738 _AD0INT::
   02E0                     739 	.ds 1
                    00AE    740 G$AD0BUSY$0$0==.
   02E1                     741 _AD0BUSY::
   02E1                     742 	.ds 1
                    00AF    743 G$AD0WINT$0$0==.
   02E2                     744 _AD0WINT::
   02E2                     745 	.ds 1
                    00B0    746 G$AD0CM2$0$0==.
   02E3                     747 _AD0CM2::
   02E3                     748 	.ds 1
                    00B1    749 G$AD0CM1$0$0==.
   02E4                     750 _AD0CM1::
   02E4                     751 	.ds 1
                    00B2    752 G$AD0CM0$0$0==.
   02E5                     753 _AD0CM0::
   02E5                     754 	.ds 1
                    00B3    755 G$SPIF$0$0==.
   02E6                     756 _SPIF::
   02E6                     757 	.ds 1
                    00B4    758 G$WCOL$0$0==.
   02E7                     759 _WCOL::
   02E7                     760 	.ds 1
                    00B5    761 G$MODF$0$0==.
   02E8                     762 _MODF::
   02E8                     763 	.ds 1
                    00B6    764 G$RXOVRN$0$0==.
   02E9                     765 _RXOVRN::
   02E9                     766 	.ds 1
                    00B7    767 G$NSSMD1$0$0==.
   02EA                     768 _NSSMD1::
   02EA                     769 	.ds 1
                    00B8    770 G$NSSMD0$0$0==.
   02EB                     771 _NSSMD0::
   02EB                     772 	.ds 1
                    00B9    773 G$TXBMT$0$0==.
   02EC                     774 _TXBMT::
   02EC                     775 	.ds 1
                    00BA    776 G$SPIEN$0$0==.
   02ED                     777 _SPIEN::
   02ED                     778 	.ds 1
                            779 ;--------------------------------------------------------
                            780 ; overlayable register banks
                            781 ;--------------------------------------------------------
                            782 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     783 	.ds 8
                            784 ;--------------------------------------------------------
                            785 ; internal ram data
                            786 ;--------------------------------------------------------
                            787 	.area DSEG    (DATA)
                            788 ;--------------------------------------------------------
                            789 ; overlayable items in internal ram 
                            790 ;--------------------------------------------------------
                            791 	.area OSEG    (OVR,DATA)
                            792 ;--------------------------------------------------------
                            793 ; indirectly addressable internal ram data
                            794 ;--------------------------------------------------------
                            795 	.area ISEG    (DATA)
                            796 ;--------------------------------------------------------
                            797 ; absolute internal ram data
                            798 ;--------------------------------------------------------
                            799 	.area IABS    (ABS,DATA)
                            800 	.area IABS    (ABS,DATA)
                            801 ;--------------------------------------------------------
                            802 ; bit data
                            803 ;--------------------------------------------------------
                            804 	.area BSEG    (BIT)
                            805 ;--------------------------------------------------------
                            806 ; paged external ram data
                            807 ;--------------------------------------------------------
                            808 	.area PSEG    (PAG,XDATA)
                            809 ;--------------------------------------------------------
                            810 ; external ram data
                            811 ;--------------------------------------------------------
                            812 	.area XSEG    (XDATA)
                            813 ;--------------------------------------------------------
                            814 ; absolute external ram data
                            815 ;--------------------------------------------------------
                            816 	.area XABS    (ABS,XDATA)
                            817 ;--------------------------------------------------------
                            818 ; external initialized ram data
                            819 ;--------------------------------------------------------
                            820 	.area XISEG   (XDATA)
                            821 	.area HOME    (CODE)
                            822 	.area GSINIT0 (CODE)
                            823 	.area GSINIT1 (CODE)
                            824 	.area GSINIT2 (CODE)
                            825 	.area GSINIT3 (CODE)
                            826 	.area GSINIT4 (CODE)
                            827 	.area GSINIT5 (CODE)
                            828 	.area GSINIT  (CODE)
                            829 	.area GSFINAL (CODE)
                            830 	.area CSEG    (CODE)
                            831 ;--------------------------------------------------------
                            832 ; global & static initialisations
                            833 ;--------------------------------------------------------
                            834 	.area HOME    (CODE)
                            835 	.area GSINIT  (CODE)
                            836 	.area GSFINAL (CODE)
                            837 	.area GSINIT  (CODE)
                    0000    838 	G$Set_Interface$0$0 ==.
                    0000    839 	C$c8051F320.h$44$3$1 ==.
                            840 ;	c:/SiLabs/MCU/Inc/c8051F320.h:44: sfr P0       = 0x80;                   // Port0
   0448 75 33 80            841 	mov	_P0,#0x80
                    0003    842 	G$Set_Interface$0$0 ==.
                    0003    843 	C$c8051F320.h$45$3$1 ==.
                            844 ;	c:/SiLabs/MCU/Inc/c8051F320.h:45: sfr SP       = 0x81;                   // Stack pointer
   044B 75 34 81            845 	mov	_SP,#0x81
                    0006    846 	G$Set_Interface$0$0 ==.
                    0006    847 	C$c8051F320.h$46$3$1 ==.
                            848 ;	c:/SiLabs/MCU/Inc/c8051F320.h:46: sfr DPL      = 0x82;                   // Data pointer - Low byte
   044E 75 35 82            849 	mov	_DPL,#0x82
                    0009    850 	G$Set_Interface$0$0 ==.
                    0009    851 	C$c8051F320.h$47$3$1 ==.
                            852 ;	c:/SiLabs/MCU/Inc/c8051F320.h:47: sfr DPH      = 0x83;                   // Data pointer - High byte
   0451 75 36 83            853 	mov	_DPH,#0x83
                    000C    854 	G$Set_Interface$0$0 ==.
                    000C    855 	C$c8051F320.h$48$3$1 ==.
                            856 ;	c:/SiLabs/MCU/Inc/c8051F320.h:48: sfr PCON     = 0x87;                   // Power control register
   0454 75 37 87            857 	mov	_PCON,#0x87
                    000F    858 	G$Set_Interface$0$0 ==.
                    000F    859 	C$c8051F320.h$49$3$1 ==.
                            860 ;	c:/SiLabs/MCU/Inc/c8051F320.h:49: sfr TCON     = 0x88;                   // Timer control register
   0457 75 38 88            861 	mov	_TCON,#0x88
                    0012    862 	G$Set_Interface$0$0 ==.
                    0012    863 	C$c8051F320.h$50$3$1 ==.
                            864 ;	c:/SiLabs/MCU/Inc/c8051F320.h:50: sfr TMOD     = 0x89;                   // Timer mode register
   045A 75 39 89            865 	mov	_TMOD,#0x89
                    0015    866 	G$Set_Interface$0$0 ==.
                    0015    867 	C$c8051F320.h$51$3$1 ==.
                            868 ;	c:/SiLabs/MCU/Inc/c8051F320.h:51: sfr TL0      = 0x8A;                   // Timer0 - Low byte
   045D 75 3A 8A            869 	mov	_TL0,#0x8A
                    0018    870 	G$Set_Interface$0$0 ==.
                    0018    871 	C$c8051F320.h$52$3$1 ==.
                            872 ;	c:/SiLabs/MCU/Inc/c8051F320.h:52: sfr TL1      = 0x8B;                   // Timer1 - Low byte
   0460 75 3B 8B            873 	mov	_TL1,#0x8B
                    001B    874 	G$Set_Interface$0$0 ==.
                    001B    875 	C$c8051F320.h$53$3$1 ==.
                            876 ;	c:/SiLabs/MCU/Inc/c8051F320.h:53: sfr TH0      = 0x8C;                   // Timer0 - High byte
   0463 75 3C 8C            877 	mov	_TH0,#0x8C
                    001E    878 	G$Set_Interface$0$0 ==.
                    001E    879 	C$c8051F320.h$54$3$1 ==.
                            880 ;	c:/SiLabs/MCU/Inc/c8051F320.h:54: sfr TH1      = 0x8D;                   // Timer1 - High byte
   0466 75 3D 8D            881 	mov	_TH1,#0x8D
                    0021    882 	G$Set_Interface$0$0 ==.
                    0021    883 	C$c8051F320.h$55$3$1 ==.
                            884 ;	c:/SiLabs/MCU/Inc/c8051F320.h:55: sfr CKCON    = 0x8E;                   // Clock control register
   0469 75 3E 8E            885 	mov	_CKCON,#0x8E
                    0024    886 	G$Set_Interface$0$0 ==.
                    0024    887 	C$c8051F320.h$56$3$1 ==.
                            888 ;	c:/SiLabs/MCU/Inc/c8051F320.h:56: sfr PSCTL    = 0x8F;                   // Program store r/w control
   046C 75 3F 8F            889 	mov	_PSCTL,#0x8F
                    0027    890 	G$Set_Interface$0$0 ==.
                    0027    891 	C$c8051F320.h$57$3$1 ==.
                            892 ;	c:/SiLabs/MCU/Inc/c8051F320.h:57: sfr P1       = 0x90;                   // Port1
   046F 75 40 90            893 	mov	_P1,#0x90
                    002A    894 	G$Set_Interface$0$0 ==.
                    002A    895 	C$c8051F320.h$58$3$1 ==.
                            896 ;	c:/SiLabs/MCU/Inc/c8051F320.h:58: sfr TMR3CN   = 0x91;                   // Timer3 control register
   0472 75 41 91            897 	mov	_TMR3CN,#0x91
                    002D    898 	G$Set_Interface$0$0 ==.
                    002D    899 	C$c8051F320.h$59$3$1 ==.
                            900 ;	c:/SiLabs/MCU/Inc/c8051F320.h:59: sfr TMR3RLL  = 0x92;                   // Timer3 reload register - Low byte
   0475 75 42 92            901 	mov	_TMR3RLL,#0x92
                    0030    902 	G$Set_Interface$0$0 ==.
                    0030    903 	C$c8051F320.h$60$3$1 ==.
                            904 ;	c:/SiLabs/MCU/Inc/c8051F320.h:60: sfr TMR3RLH  = 0x93;                   // Timer3 reload register - High byte
   0478 75 43 93            905 	mov	_TMR3RLH,#0x93
                    0033    906 	G$Set_Interface$0$0 ==.
                    0033    907 	C$c8051F320.h$61$3$1 ==.
                            908 ;	c:/SiLabs/MCU/Inc/c8051F320.h:61: sfr TMR3L    = 0x94;                   // Timer3 - Low byte
   047B 75 44 94            909 	mov	_TMR3L,#0x94
                    0036    910 	G$Set_Interface$0$0 ==.
                    0036    911 	C$c8051F320.h$62$3$1 ==.
                            912 ;	c:/SiLabs/MCU/Inc/c8051F320.h:62: sfr TMR3H    = 0x95;                   // Timer3 - High byte
   047E 75 45 95            913 	mov	_TMR3H,#0x95
                    0039    914 	G$Set_Interface$0$0 ==.
                    0039    915 	C$c8051F320.h$63$3$1 ==.
                            916 ;	c:/SiLabs/MCU/Inc/c8051F320.h:63: sfr USB0ADR  = 0x96;                   // USB0 address port
   0481 75 46 96            917 	mov	_USB0ADR,#0x96
                    003C    918 	G$Set_Interface$0$0 ==.
                    003C    919 	C$c8051F320.h$64$3$1 ==.
                            920 ;	c:/SiLabs/MCU/Inc/c8051F320.h:64: sfr USB0DAT  = 0x97;                   // USB0 data port
   0484 75 47 97            921 	mov	_USB0DAT,#0x97
                    003F    922 	G$Set_Interface$0$0 ==.
                    003F    923 	C$c8051F320.h$65$3$1 ==.
                            924 ;	c:/SiLabs/MCU/Inc/c8051F320.h:65: sfr SCON0    = 0x98;                   // UART0 control register
   0487 75 48 98            925 	mov	_SCON0,#0x98
                    0042    926 	G$Set_Interface$0$0 ==.
                    0042    927 	C$c8051F320.h$66$3$1 ==.
                            928 ;	c:/SiLabs/MCU/Inc/c8051F320.h:66: sfr SBUF0    = 0x99;                   // UART0 data buffer register
   048A 75 49 99            929 	mov	_SBUF0,#0x99
                    0045    930 	G$Set_Interface$0$0 ==.
                    0045    931 	C$c8051F320.h$67$3$1 ==.
                            932 ;	c:/SiLabs/MCU/Inc/c8051F320.h:67: sfr CPT1CN   = 0x9A;                   // Comparator1 control register
   048D 75 4A 9A            933 	mov	_CPT1CN,#0x9A
                    0048    934 	G$Set_Interface$0$0 ==.
                    0048    935 	C$c8051F320.h$68$3$1 ==.
                            936 ;	c:/SiLabs/MCU/Inc/c8051F320.h:68: sfr CPT0CN   = 0x9B;                   // Comparator0 control register
   0490 75 4B 9B            937 	mov	_CPT0CN,#0x9B
                    004B    938 	G$Set_Interface$0$0 ==.
                    004B    939 	C$c8051F320.h$69$3$1 ==.
                            940 ;	c:/SiLabs/MCU/Inc/c8051F320.h:69: sfr CPT1MD   = 0x9C;                   // Comparator1 mode selection register
   0493 75 4C 9C            941 	mov	_CPT1MD,#0x9C
                    004E    942 	G$Set_Interface$0$0 ==.
                    004E    943 	C$c8051F320.h$70$3$1 ==.
                            944 ;	c:/SiLabs/MCU/Inc/c8051F320.h:70: sfr CPT0MD   = 0x9D;                   // Comparator0 mode selection register
   0496 75 4D 9D            945 	mov	_CPT0MD,#0x9D
                    0051    946 	G$Set_Interface$0$0 ==.
                    0051    947 	C$c8051F320.h$71$3$1 ==.
                            948 ;	c:/SiLabs/MCU/Inc/c8051F320.h:71: sfr CPT1MX   = 0x9E;                   // Comparator1 mux selection register
   0499 75 4E 9E            949 	mov	_CPT1MX,#0x9E
                    0054    950 	G$Set_Interface$0$0 ==.
                    0054    951 	C$c8051F320.h$72$3$1 ==.
                            952 ;	c:/SiLabs/MCU/Inc/c8051F320.h:72: sfr CPT0MX   = 0x9F;                   // Comparator0 mux selection register
   049C 75 4F 9F            953 	mov	_CPT0MX,#0x9F
                    0057    954 	G$Set_Interface$0$0 ==.
                    0057    955 	C$c8051F320.h$73$3$1 ==.
                            956 ;	c:/SiLabs/MCU/Inc/c8051F320.h:73: sfr P2       = 0xA0;                   // Port2
   049F 75 50 A0            957 	mov	_P2,#0xA0
                    005A    958 	G$Set_Interface$0$0 ==.
                    005A    959 	C$c8051F320.h$74$3$1 ==.
                            960 ;	c:/SiLabs/MCU/Inc/c8051F320.h:74: sfr SPICFG   = 0xA1;                   // SPI0 configuration register
   04A2 75 51 A1            961 	mov	_SPICFG,#0xA1
                    005D    962 	G$Set_Interface$0$0 ==.
                    005D    963 	C$c8051F320.h$75$3$1 ==.
                            964 ;	c:/SiLabs/MCU/Inc/c8051F320.h:75: sfr SPI0CFG  = 0xA1;                   // SPI0 configuration register
   04A5 75 52 A1            965 	mov	_SPI0CFG,#0xA1
                    0060    966 	G$Set_Interface$0$0 ==.
                    0060    967 	C$c8051F320.h$76$3$1 ==.
                            968 ;	c:/SiLabs/MCU/Inc/c8051F320.h:76: sfr SPICKR   = 0xA2;                   // SPI0 clock configuration register
   04A8 75 53 A2            969 	mov	_SPICKR,#0xA2
                    0063    970 	G$Set_Interface$0$0 ==.
                    0063    971 	C$c8051F320.h$77$3$1 ==.
                            972 ;	c:/SiLabs/MCU/Inc/c8051F320.h:77: sfr SPI0CKR  = 0xA2;                   // SPI0 clock configuration register
   04AB 75 54 A2            973 	mov	_SPI0CKR,#0xA2
                    0066    974 	G$Set_Interface$0$0 ==.
                    0066    975 	C$c8051F320.h$78$3$1 ==.
                            976 ;	c:/SiLabs/MCU/Inc/c8051F320.h:78: sfr SPIDAT   = 0xA3;                   // SPI0 data register
   04AE 75 55 A3            977 	mov	_SPIDAT,#0xA3
                    0069    978 	G$Set_Interface$0$0 ==.
                    0069    979 	C$c8051F320.h$79$3$1 ==.
                            980 ;	c:/SiLabs/MCU/Inc/c8051F320.h:79: sfr SPI0DAT  = 0xA3;                   // SPI0 data register
   04B1 75 56 A3            981 	mov	_SPI0DAT,#0xA3
                    006C    982 	G$Set_Interface$0$0 ==.
                    006C    983 	C$c8051F320.h$80$3$1 ==.
                            984 ;	c:/SiLabs/MCU/Inc/c8051F320.h:80: sfr P0MDOUT  = 0xA4;                   // Port0 output mode register
   04B4 75 57 A4            985 	mov	_P0MDOUT,#0xA4
                    006F    986 	G$Set_Interface$0$0 ==.
                    006F    987 	C$c8051F320.h$81$3$1 ==.
                            988 ;	c:/SiLabs/MCU/Inc/c8051F320.h:81: sfr P1MDOUT  = 0xA5;                   // Port1 output mode register
   04B7 75 58 A5            989 	mov	_P1MDOUT,#0xA5
                    0072    990 	G$Set_Interface$0$0 ==.
                    0072    991 	C$c8051F320.h$82$3$1 ==.
                            992 ;	c:/SiLabs/MCU/Inc/c8051F320.h:82: sfr P2MDOUT  = 0xA6;                   // Port2 output mode register
   04BA 75 59 A6            993 	mov	_P2MDOUT,#0xA6
                    0075    994 	G$Set_Interface$0$0 ==.
                    0075    995 	C$c8051F320.h$83$3$1 ==.
                            996 ;	c:/SiLabs/MCU/Inc/c8051F320.h:83: sfr P3MDOUT  = 0xA7;                   // Port3 output mode register
   04BD 75 5A A7            997 	mov	_P3MDOUT,#0xA7
                    0078    998 	G$Set_Interface$0$0 ==.
                    0078    999 	C$c8051F320.h$84$3$1 ==.
                           1000 ;	c:/SiLabs/MCU/Inc/c8051F320.h:84: sfr IE       = 0xA8;                   // Interrupt enable
   04C0 75 5B A8           1001 	mov	_IE,#0xA8
                    007B   1002 	G$Set_Interface$0$0 ==.
                    007B   1003 	C$c8051F320.h$85$3$1 ==.
                           1004 ;	c:/SiLabs/MCU/Inc/c8051F320.h:85: sfr CLKSEL   = 0xA9;                   // Clock source select
   04C3 75 5C A9           1005 	mov	_CLKSEL,#0xA9
                    007E   1006 	G$Set_Interface$0$0 ==.
                    007E   1007 	C$c8051F320.h$86$3$1 ==.
                           1008 ;	c:/SiLabs/MCU/Inc/c8051F320.h:86: sfr EMI0CN   = 0xAA;                   // External Memory Interface Control
   04C6 75 5D AA           1009 	mov	_EMI0CN,#0xAA
                    0081   1010 	G$Set_Interface$0$0 ==.
                    0081   1011 	C$c8051F320.h$87$3$1 ==.
                           1012 ;	c:/SiLabs/MCU/Inc/c8051F320.h:87: sfr P3       = 0xB0;                   // Port3
   04C9 75 5E B0           1013 	mov	_P3,#0xB0
                    0084   1014 	G$Set_Interface$0$0 ==.
                    0084   1015 	C$c8051F320.h$88$3$1 ==.
                           1016 ;	c:/SiLabs/MCU/Inc/c8051F320.h:88: sfr OSCXCN   = 0xB1;                   // External oscillator control
   04CC 75 5F B1           1017 	mov	_OSCXCN,#0xB1
                    0087   1018 	G$Set_Interface$0$0 ==.
                    0087   1019 	C$c8051F320.h$89$3$1 ==.
                           1020 ;	c:/SiLabs/MCU/Inc/c8051F320.h:89: sfr OSCICN   = 0xB2;                   // Internal oscillator control
   04CF 75 60 B2           1021 	mov	_OSCICN,#0xB2
                    008A   1022 	G$Set_Interface$0$0 ==.
                    008A   1023 	C$c8051F320.h$90$3$1 ==.
                           1024 ;	c:/SiLabs/MCU/Inc/c8051F320.h:90: sfr OSCICL   = 0xB3;                   // Internal oscillator calibration
   04D2 75 61 B3           1025 	mov	_OSCICL,#0xB3
                    008D   1026 	G$Set_Interface$0$0 ==.
                    008D   1027 	C$c8051F320.h$91$3$1 ==.
                           1028 ;	c:/SiLabs/MCU/Inc/c8051F320.h:91: sfr FLSCL    = 0xB6;                   // Flash scale register
   04D5 75 62 B6           1029 	mov	_FLSCL,#0xB6
                    0090   1030 	G$Set_Interface$0$0 ==.
                    0090   1031 	C$c8051F320.h$92$3$1 ==.
                           1032 ;	c:/SiLabs/MCU/Inc/c8051F320.h:92: sfr FLKEY    = 0xB7;                   // Flash lock & key register
   04D8 75 63 B7           1033 	mov	_FLKEY,#0xB7
                    0093   1034 	G$Set_Interface$0$0 ==.
                    0093   1035 	C$c8051F320.h$93$3$1 ==.
                           1036 ;	c:/SiLabs/MCU/Inc/c8051F320.h:93: sfr IP       = 0xB8;                   // Interrupt priority
   04DB 75 64 B8           1037 	mov	_IP,#0xB8
                    0096   1038 	G$Set_Interface$0$0 ==.
                    0096   1039 	C$c8051F320.h$94$3$1 ==.
                           1040 ;	c:/SiLabs/MCU/Inc/c8051F320.h:94: sfr CLKMUL   = 0xB9;                   // Clock multiplier control register
   04DE 75 65 B9           1041 	mov	_CLKMUL,#0xB9
                    0099   1042 	G$Set_Interface$0$0 ==.
                    0099   1043 	C$c8051F320.h$95$3$1 ==.
                           1044 ;	c:/SiLabs/MCU/Inc/c8051F320.h:95: sfr AMX0N    = 0xBA;                   // ADC0 mux negative channel selection
   04E1 75 66 BA           1045 	mov	_AMX0N,#0xBA
                    009C   1046 	G$Set_Interface$0$0 ==.
                    009C   1047 	C$c8051F320.h$96$3$1 ==.
                           1048 ;	c:/SiLabs/MCU/Inc/c8051F320.h:96: sfr AMX0P    = 0xBB;                   // ADC0 mux positive channel selection
   04E4 75 67 BB           1049 	mov	_AMX0P,#0xBB
                    009F   1050 	G$Set_Interface$0$0 ==.
                    009F   1051 	C$c8051F320.h$97$3$1 ==.
                           1052 ;	c:/SiLabs/MCU/Inc/c8051F320.h:97: sfr ADC0CF   = 0xBC;                   // ADC0 configuration
   04E7 75 68 BC           1053 	mov	_ADC0CF,#0xBC
                    00A2   1054 	G$Set_Interface$0$0 ==.
                    00A2   1055 	C$c8051F320.h$98$3$1 ==.
                           1056 ;	c:/SiLabs/MCU/Inc/c8051F320.h:98: sfr ADC0L    = 0xBD;                   // ADC0 data low
   04EA 75 69 BD           1057 	mov	_ADC0L,#0xBD
                    00A5   1058 	G$Set_Interface$0$0 ==.
                    00A5   1059 	C$c8051F320.h$99$3$1 ==.
                           1060 ;	c:/SiLabs/MCU/Inc/c8051F320.h:99: sfr ADC0H    = 0xBE;                   // ADC0 data high
   04ED 75 6A BE           1061 	mov	_ADC0H,#0xBE
                    00A8   1062 	G$Set_Interface$0$0 ==.
                    00A8   1063 	C$c8051F320.h$100$3$1 ==.
                           1064 ;	c:/SiLabs/MCU/Inc/c8051F320.h:100: sfr SMB0CN   = 0xC0;                   // SMBus control
   04F0 75 6B C0           1065 	mov	_SMB0CN,#0xC0
                    00AB   1066 	G$Set_Interface$0$0 ==.
                    00AB   1067 	C$c8051F320.h$101$3$1 ==.
                           1068 ;	c:/SiLabs/MCU/Inc/c8051F320.h:101: sfr SMB0CF   = 0xC1;                   // SMBus configuration
   04F3 75 6C C1           1069 	mov	_SMB0CF,#0xC1
                    00AE   1070 	G$Set_Interface$0$0 ==.
                    00AE   1071 	C$c8051F320.h$102$3$1 ==.
                           1072 ;	c:/SiLabs/MCU/Inc/c8051F320.h:102: sfr SMB0DAT  = 0xC2;                   // SMBus data
   04F6 75 6D C2           1073 	mov	_SMB0DAT,#0xC2
                    00B1   1074 	G$Set_Interface$0$0 ==.
                    00B1   1075 	C$c8051F320.h$103$3$1 ==.
                           1076 ;	c:/SiLabs/MCU/Inc/c8051F320.h:103: sfr ADC0GTL  = 0xC3;                   // ADC0 greater-than data low register
   04F9 75 6E C3           1077 	mov	_ADC0GTL,#0xC3
                    00B4   1078 	G$Set_Interface$0$0 ==.
                    00B4   1079 	C$c8051F320.h$104$3$1 ==.
                           1080 ;	c:/SiLabs/MCU/Inc/c8051F320.h:104: sfr ADC0GTH  = 0xC4;                   // ADC0 greater-than data high register
   04FC 75 6F C4           1081 	mov	_ADC0GTH,#0xC4
                    00B7   1082 	G$Set_Interface$0$0 ==.
                    00B7   1083 	C$c8051F320.h$105$3$1 ==.
                           1084 ;	c:/SiLabs/MCU/Inc/c8051F320.h:105: sfr ADC0LTL  = 0xC5;                   // ADC0 less-than data low register
   04FF 75 70 C5           1085 	mov	_ADC0LTL,#0xC5
                    00BA   1086 	G$Set_Interface$0$0 ==.
                    00BA   1087 	C$c8051F320.h$106$3$1 ==.
                           1088 ;	c:/SiLabs/MCU/Inc/c8051F320.h:106: sfr ADC0LTH  = 0xC6;                   // ADC0 less-than data high register
   0502 75 71 C6           1089 	mov	_ADC0LTH,#0xC6
                    00BD   1090 	G$Set_Interface$0$0 ==.
                    00BD   1091 	C$c8051F320.h$107$3$1 ==.
                           1092 ;	c:/SiLabs/MCU/Inc/c8051F320.h:107: sfr TMR2CN   = 0xC8;                   // Timer2 control register
   0505 75 72 C8           1093 	mov	_TMR2CN,#0xC8
                    00C0   1094 	G$Set_Interface$0$0 ==.
                    00C0   1095 	C$c8051F320.h$108$3$1 ==.
                           1096 ;	c:/SiLabs/MCU/Inc/c8051F320.h:108: sfr REG0CN   = 0xC9;                   // Regulator control register
   0508 75 73 C9           1097 	mov	_REG0CN,#0xC9
                    00C3   1098 	G$Set_Interface$0$0 ==.
                    00C3   1099 	C$c8051F320.h$109$3$1 ==.
                           1100 ;	c:/SiLabs/MCU/Inc/c8051F320.h:109: sfr TMR2RLL  = 0xCA;                   // Timer2 reload register - Low byte
   050B 75 74 CA           1101 	mov	_TMR2RLL,#0xCA
                    00C6   1102 	G$Set_Interface$0$0 ==.
                    00C6   1103 	C$c8051F320.h$110$3$1 ==.
                           1104 ;	c:/SiLabs/MCU/Inc/c8051F320.h:110: sfr TMR2RLH  = 0xCB;                   // Timer2 reload register - High byte
   050E 75 75 CB           1105 	mov	_TMR2RLH,#0xCB
                    00C9   1106 	G$Set_Interface$0$0 ==.
                    00C9   1107 	C$c8051F320.h$111$3$1 ==.
                           1108 ;	c:/SiLabs/MCU/Inc/c8051F320.h:111: sfr TMR2L    = 0xCC;                   // Timer2 - Low byte
   0511 75 76 CC           1109 	mov	_TMR2L,#0xCC
                    00CC   1110 	G$Set_Interface$0$0 ==.
                    00CC   1111 	C$c8051F320.h$112$3$1 ==.
                           1112 ;	c:/SiLabs/MCU/Inc/c8051F320.h:112: sfr TMR2H    = 0xCD;                   // Timer2 - High byte
   0514 75 77 CD           1113 	mov	_TMR2H,#0xCD
                    00CF   1114 	G$Set_Interface$0$0 ==.
                    00CF   1115 	C$c8051F320.h$113$3$1 ==.
                           1116 ;	c:/SiLabs/MCU/Inc/c8051F320.h:113: sfr PSW      = 0xD0;                   // Program Status Word
   0517 75 78 D0           1117 	mov	_PSW,#0xD0
                    00D2   1118 	G$Set_Interface$0$0 ==.
                    00D2   1119 	C$c8051F320.h$114$3$1 ==.
                           1120 ;	c:/SiLabs/MCU/Inc/c8051F320.h:114: sfr REF0CN   = 0xD1;                   // Voltage reference control register
   051A 75 79 D1           1121 	mov	_REF0CN,#0xD1
                    00D5   1122 	G$Set_Interface$0$0 ==.
                    00D5   1123 	C$c8051F320.h$115$3$1 ==.
                           1124 ;	c:/SiLabs/MCU/Inc/c8051F320.h:115: sfr P0SKIP   = 0xD4;                   // Port0 crossbar skip register
   051D 75 7A D4           1125 	mov	_P0SKIP,#0xD4
                    00D8   1126 	G$Set_Interface$0$0 ==.
                    00D8   1127 	C$c8051F320.h$116$3$1 ==.
                           1128 ;	c:/SiLabs/MCU/Inc/c8051F320.h:116: sfr P1SKIP   = 0xD5;                   // Port1 crossbar skip register
   0520 75 7B D5           1129 	mov	_P1SKIP,#0xD5
                    00DB   1130 	G$Set_Interface$0$0 ==.
                    00DB   1131 	C$c8051F320.h$117$3$1 ==.
                           1132 ;	c:/SiLabs/MCU/Inc/c8051F320.h:117: sfr P2SKIP   = 0xD6;                   // Port2 crossbar skip register
   0523 75 7C D6           1133 	mov	_P2SKIP,#0xD6
                    00DE   1134 	G$Set_Interface$0$0 ==.
                    00DE   1135 	C$c8051F320.h$118$3$1 ==.
                           1136 ;	c:/SiLabs/MCU/Inc/c8051F320.h:118: sfr USB0XCN  = 0xD7;                   // USB0 tranceiver control register
   0526 75 7D D7           1137 	mov	_USB0XCN,#0xD7
                    00E1   1138 	G$Set_Interface$0$0 ==.
                    00E1   1139 	C$c8051F320.h$119$3$1 ==.
                           1140 ;	c:/SiLabs/MCU/Inc/c8051F320.h:119: sfr PCA0CN   = 0xD8;                   // PCA0 control register
   0529 75 7E D8           1141 	mov	_PCA0CN,#0xD8
                    00E4   1142 	G$Set_Interface$0$0 ==.
                    00E4   1143 	C$c8051F320.h$120$3$1 ==.
                           1144 ;	c:/SiLabs/MCU/Inc/c8051F320.h:120: sfr PCA0MD   = 0xD9;                   // PCA0 mode register
   052C 75 7F D9           1145 	mov	_PCA0MD,#0xD9
                    00E7   1146 	G$Set_Interface$0$0 ==.
                    00E7   1147 	C$c8051F320.h$121$3$1 ==.
                           1148 ;	c:/SiLabs/MCU/Inc/c8051F320.h:121: sfr PCA0CPM0 = 0xDA;                   // Capture/compare module0 mode
   052F 75 80 DA           1149 	mov	_PCA0CPM0,#0xDA
                    00EA   1150 	G$Set_Interface$0$0 ==.
                    00EA   1151 	C$c8051F320.h$122$3$1 ==.
                           1152 ;	c:/SiLabs/MCU/Inc/c8051F320.h:122: sfr PCA0CPM1 = 0xDB;                   // Capture/compare module1 mode
   0532 75 81 DB           1153 	mov	_PCA0CPM1,#0xDB
                    00ED   1154 	G$Set_Interface$0$0 ==.
                    00ED   1155 	C$c8051F320.h$123$3$1 ==.
                           1156 ;	c:/SiLabs/MCU/Inc/c8051F320.h:123: sfr PCA0CPM2 = 0xDC;                   // Capture/compare module2 mode
   0535 75 82 DC           1157 	mov	_PCA0CPM2,#0xDC
                    00F0   1158 	G$Set_Interface$0$0 ==.
                    00F0   1159 	C$c8051F320.h$124$3$1 ==.
                           1160 ;	c:/SiLabs/MCU/Inc/c8051F320.h:124: sfr PCA0CPM3 = 0xDD;                   // Capture/compare module3 mode
   0538 75 83 DD           1161 	mov	_PCA0CPM3,#0xDD
                    00F3   1162 	G$Set_Interface$0$0 ==.
                    00F3   1163 	C$c8051F320.h$125$3$1 ==.
                           1164 ;	c:/SiLabs/MCU/Inc/c8051F320.h:125: sfr PCA0CPM4 = 0xDE;                   // Capture/compare module4 mode
   053B 75 84 DE           1165 	mov	_PCA0CPM4,#0xDE
                    00F6   1166 	G$Set_Interface$0$0 ==.
                    00F6   1167 	C$c8051F320.h$126$3$1 ==.
                           1168 ;	c:/SiLabs/MCU/Inc/c8051F320.h:126: sfr ACC      = 0xE0;                   // Accumulator
   053E 75 85 E0           1169 	mov	_ACC,#0xE0
                    00F9   1170 	G$Set_Interface$0$0 ==.
                    00F9   1171 	C$c8051F320.h$127$3$1 ==.
                           1172 ;	c:/SiLabs/MCU/Inc/c8051F320.h:127: sfr XBR0     = 0xE1;                   // Port I/O crossbar register 0
   0541 75 86 E1           1173 	mov	_XBR0,#0xE1
                    00FC   1174 	G$Set_Interface$0$0 ==.
                    00FC   1175 	C$c8051F320.h$128$3$1 ==.
                           1176 ;	c:/SiLabs/MCU/Inc/c8051F320.h:128: sfr XBR1     = 0xE2;                   // Port I/O crossbar register 1
   0544 75 87 E2           1177 	mov	_XBR1,#0xE2
                    00FF   1178 	G$Set_Interface$0$0 ==.
                    00FF   1179 	C$c8051F320.h$129$3$1 ==.
                           1180 ;	c:/SiLabs/MCU/Inc/c8051F320.h:129: sfr IT01CF   = 0xE4;                   // Int0/int1 configuration register
   0547 75 88 E4           1181 	mov	_IT01CF,#0xE4
                    0102   1182 	G$Set_Interface$0$0 ==.
                    0102   1183 	C$c8051F320.h$130$3$1 ==.
                           1184 ;	c:/SiLabs/MCU/Inc/c8051F320.h:130: sfr EIE1     = 0xE6;                   // Extended interrupt enable 1
   054A 75 89 E6           1185 	mov	_EIE1,#0xE6
                    0105   1186 	G$Set_Interface$0$0 ==.
                    0105   1187 	C$c8051F320.h$131$3$1 ==.
                           1188 ;	c:/SiLabs/MCU/Inc/c8051F320.h:131: sfr EIE2     = 0xE7;                   // Extended interrupt enable 2
   054D 75 8A E7           1189 	mov	_EIE2,#0xE7
                    0108   1190 	G$Set_Interface$0$0 ==.
                    0108   1191 	C$c8051F320.h$132$3$1 ==.
                           1192 ;	c:/SiLabs/MCU/Inc/c8051F320.h:132: sfr ADC0CN   = 0xE8;                   // ADC0 control register
   0550 75 8B E8           1193 	mov	_ADC0CN,#0xE8
                    010B   1194 	G$Set_Interface$0$0 ==.
                    010B   1195 	C$c8051F320.h$133$3$1 ==.
                           1196 ;	c:/SiLabs/MCU/Inc/c8051F320.h:133: sfr PCA0CPL1 = 0xE9;                   // Capture/compare module1 - Low byte
   0553 75 8C E9           1197 	mov	_PCA0CPL1,#0xE9
                    010E   1198 	G$Set_Interface$0$0 ==.
                    010E   1199 	C$c8051F320.h$134$3$1 ==.
                           1200 ;	c:/SiLabs/MCU/Inc/c8051F320.h:134: sfr PCA0CPH1 = 0xEA;                   // Capture/compare module1 - High byte
   0556 75 8D EA           1201 	mov	_PCA0CPH1,#0xEA
                    0111   1202 	G$Set_Interface$0$0 ==.
                    0111   1203 	C$c8051F320.h$135$3$1 ==.
                           1204 ;	c:/SiLabs/MCU/Inc/c8051F320.h:135: sfr PCA0CPL2 = 0xEB;                   // Capture/compare module2 - Low byte
   0559 75 8E EB           1205 	mov	_PCA0CPL2,#0xEB
                    0114   1206 	G$Set_Interface$0$0 ==.
                    0114   1207 	C$c8051F320.h$136$3$1 ==.
                           1208 ;	c:/SiLabs/MCU/Inc/c8051F320.h:136: sfr PCA0CPH2 = 0xEC;                   // Capture/compare module2 - High byte
   055C 75 8F EC           1209 	mov	_PCA0CPH2,#0xEC
                    0117   1210 	G$Set_Interface$0$0 ==.
                    0117   1211 	C$c8051F320.h$137$3$1 ==.
                           1212 ;	c:/SiLabs/MCU/Inc/c8051F320.h:137: sfr PCA0CPL3 = 0xED;                   // Capture/compare module3 - Low byte
   055F 75 90 ED           1213 	mov	_PCA0CPL3,#0xED
                    011A   1214 	G$Set_Interface$0$0 ==.
                    011A   1215 	C$c8051F320.h$138$3$1 ==.
                           1216 ;	c:/SiLabs/MCU/Inc/c8051F320.h:138: sfr PCA0CPH3 = 0xEE;                   // Capture/compare module3 - High byte
   0562 75 91 EE           1217 	mov	_PCA0CPH3,#0xEE
                    011D   1218 	G$Set_Interface$0$0 ==.
                    011D   1219 	C$c8051F320.h$139$3$1 ==.
                           1220 ;	c:/SiLabs/MCU/Inc/c8051F320.h:139: sfr RSTSRC   = 0xEF;                   // Reset source register
   0565 75 92 EF           1221 	mov	_RSTSRC,#0xEF
                    0120   1222 	G$Set_Interface$0$0 ==.
                    0120   1223 	C$c8051F320.h$140$3$1 ==.
                           1224 ;	c:/SiLabs/MCU/Inc/c8051F320.h:140: sfr B        = 0xF0;                   // B register
   0568 75 93 F0           1225 	mov	_B,#0xF0
                    0123   1226 	G$Set_Interface$0$0 ==.
                    0123   1227 	C$c8051F320.h$141$3$1 ==.
                           1228 ;	c:/SiLabs/MCU/Inc/c8051F320.h:141: sfr P0MDIN   = 0xF1;                   // Port0 input mode register
   056B 75 94 F1           1229 	mov	_P0MDIN,#0xF1
                    0126   1230 	G$Set_Interface$0$0 ==.
                    0126   1231 	C$c8051F320.h$142$3$1 ==.
                           1232 ;	c:/SiLabs/MCU/Inc/c8051F320.h:142: sfr P1MDIN   = 0xF2;                   // Port1 input mode register
   056E 75 95 F2           1233 	mov	_P1MDIN,#0xF2
                    0129   1234 	G$Set_Interface$0$0 ==.
                    0129   1235 	C$c8051F320.h$143$3$1 ==.
                           1236 ;	c:/SiLabs/MCU/Inc/c8051F320.h:143: sfr P2MDIN   = 0xF3;                   // Port2 input mode register
   0571 75 96 F3           1237 	mov	_P2MDIN,#0xF3
                    012C   1238 	G$Set_Interface$0$0 ==.
                    012C   1239 	C$c8051F320.h$144$3$1 ==.
                           1240 ;	c:/SiLabs/MCU/Inc/c8051F320.h:144: sfr P3MDIN   = 0xF4;                   // Port3 input mode register
   0574 75 97 F4           1241 	mov	_P3MDIN,#0xF4
                    012F   1242 	G$Set_Interface$0$0 ==.
                    012F   1243 	C$c8051F320.h$145$3$1 ==.
                           1244 ;	c:/SiLabs/MCU/Inc/c8051F320.h:145: sfr EIP1     = 0xF6;                   // Extended interrupt priority 1
   0577 75 98 F6           1245 	mov	_EIP1,#0xF6
                    0132   1246 	G$Set_Interface$0$0 ==.
                    0132   1247 	C$c8051F320.h$146$3$1 ==.
                           1248 ;	c:/SiLabs/MCU/Inc/c8051F320.h:146: sfr EIP2     = 0xF7;                   // Extended interrupt priority 2
   057A 75 99 F7           1249 	mov	_EIP2,#0xF7
                    0135   1250 	G$Set_Interface$0$0 ==.
                    0135   1251 	C$c8051F320.h$147$3$1 ==.
                           1252 ;	c:/SiLabs/MCU/Inc/c8051F320.h:147: sfr SPI0CN   = 0xF8;                   // SPI0 control register
   057D 75 9A F8           1253 	mov	_SPI0CN,#0xF8
                    0138   1254 	G$Set_Interface$0$0 ==.
                    0138   1255 	C$c8051F320.h$148$3$1 ==.
                           1256 ;	c:/SiLabs/MCU/Inc/c8051F320.h:148: sfr PCA0L    = 0xF9;                   // PCA0 counter/timer - Low byte
   0580 75 9B F9           1257 	mov	_PCA0L,#0xF9
                    013B   1258 	G$Set_Interface$0$0 ==.
                    013B   1259 	C$c8051F320.h$149$3$1 ==.
                           1260 ;	c:/SiLabs/MCU/Inc/c8051F320.h:149: sfr PCA0H    = 0xFA;                   // PCA0 counter/timer - High byte
   0583 75 9C FA           1261 	mov	_PCA0H,#0xFA
                    013E   1262 	G$Set_Interface$0$0 ==.
                    013E   1263 	C$c8051F320.h$150$3$1 ==.
                           1264 ;	c:/SiLabs/MCU/Inc/c8051F320.h:150: sfr PCA0CPL0 = 0xFB;                   // Capture/compare module0 - Low byte
   0586 75 9D FB           1265 	mov	_PCA0CPL0,#0xFB
                    0141   1266 	G$Set_Interface$0$0 ==.
                    0141   1267 	C$c8051F320.h$151$3$1 ==.
                           1268 ;	c:/SiLabs/MCU/Inc/c8051F320.h:151: sfr PCA0CPH0 = 0xFC;                   // Capture/compare module0 - High byte
   0589 75 9E FC           1269 	mov	_PCA0CPH0,#0xFC
                    0144   1270 	G$Set_Interface$0$0 ==.
                    0144   1271 	C$c8051F320.h$152$3$1 ==.
                           1272 ;	c:/SiLabs/MCU/Inc/c8051F320.h:152: sfr PCA0CPL4 = 0xFD;                   // Capture/compare module4 - Low byte
   058C 75 9F FD           1273 	mov	_PCA0CPL4,#0xFD
                    0147   1274 	G$Set_Interface$0$0 ==.
                    0147   1275 	C$c8051F320.h$153$3$1 ==.
                           1276 ;	c:/SiLabs/MCU/Inc/c8051F320.h:153: sfr PCA0CPH4 = 0xFE;                   // Capture/compare module4 - High byte
   058F 75 A0 FE           1277 	mov	_PCA0CPH4,#0xFE
                    014A   1278 	G$Set_Interface$0$0 ==.
                    014A   1279 	C$c8051F320.h$154$3$1 ==.
                           1280 ;	c:/SiLabs/MCU/Inc/c8051F320.h:154: sfr VDM0CN   = 0xFF;                   // Vdd monitor control
   0592 75 A1 FF           1281 	mov	_VDM0CN,#0xFF
                    014D   1282 	G$Set_Interface$0$0 ==.
                    014D   1283 	C$c8051F320.h$161$3$1 ==.
                           1284 ;	c:/SiLabs/MCU/Inc/c8051F320.h:161: sbit TF1     = 0x8F;                   // Timer1 overflow flag
   0595 D2 A2              1285 	setb	_TF1
                    014F   1286 	G$Set_Interface$0$0 ==.
                    014F   1287 	C$c8051F320.h$162$3$1 ==.
                           1288 ;	c:/SiLabs/MCU/Inc/c8051F320.h:162: sbit TR1     = 0x8E;                   // Timer1 on/off control
   0597 D2 A3              1289 	setb	_TR1
                    0151   1290 	G$Set_Interface$0$0 ==.
                    0151   1291 	C$c8051F320.h$163$3$1 ==.
                           1292 ;	c:/SiLabs/MCU/Inc/c8051F320.h:163: sbit TF0     = 0x8D;                   // Timer0 overflow flag
   0599 D2 A4              1293 	setb	_TF0
                    0153   1294 	G$Set_Interface$0$0 ==.
                    0153   1295 	C$c8051F320.h$164$3$1 ==.
                           1296 ;	c:/SiLabs/MCU/Inc/c8051F320.h:164: sbit TR0     = 0x8C;                   // Timer0 on/off control
   059B D2 A5              1297 	setb	_TR0
                    0155   1298 	G$Set_Interface$0$0 ==.
                    0155   1299 	C$c8051F320.h$165$3$1 ==.
                           1300 ;	c:/SiLabs/MCU/Inc/c8051F320.h:165: sbit IE1     = 0x8B;                   // Ext interrupt 1 edge flag
   059D D2 A6              1301 	setb	_IE1
                    0157   1302 	G$Set_Interface$0$0 ==.
                    0157   1303 	C$c8051F320.h$166$3$1 ==.
                           1304 ;	c:/SiLabs/MCU/Inc/c8051F320.h:166: sbit IT1     = 0x8A;                   // Ext interrupt 1 type
   059F D2 A7              1305 	setb	_IT1
                    0159   1306 	G$Set_Interface$0$0 ==.
                    0159   1307 	C$c8051F320.h$167$3$1 ==.
                           1308 ;	c:/SiLabs/MCU/Inc/c8051F320.h:167: sbit IE0     = 0x89;                   // Ext interrupt 0 edge flag
   05A1 D2 A8              1309 	setb	_IE0
                    015B   1310 	G$Set_Interface$0$0 ==.
                    015B   1311 	C$c8051F320.h$168$3$1 ==.
                           1312 ;	c:/SiLabs/MCU/Inc/c8051F320.h:168: sbit IT0     = 0x88;                   // Ext interrupt 0 type
   05A3 D2 A9              1313 	setb	_IT0
                    015D   1314 	G$Set_Interface$0$0 ==.
                    015D   1315 	C$c8051F320.h$171$3$1 ==.
                           1316 ;	c:/SiLabs/MCU/Inc/c8051F320.h:171: sbit S0MODE  = 0x9F;                   // Serial mode control bit 0
   05A5 D2 AA              1317 	setb	_S0MODE
                    015F   1318 	G$Set_Interface$0$0 ==.
                    015F   1319 	C$c8051F320.h$173$3$1 ==.
                           1320 ;	c:/SiLabs/MCU/Inc/c8051F320.h:173: sbit MCE0    = 0x9D;                   // Multiprocessor communication enable
   05A7 D2 AB              1321 	setb	_MCE0
                    0161   1322 	G$Set_Interface$0$0 ==.
                    0161   1323 	C$c8051F320.h$174$3$1 ==.
                           1324 ;	c:/SiLabs/MCU/Inc/c8051F320.h:174: sbit REN0    = 0x9C;                   // Receive enable
   05A9 D2 AC              1325 	setb	_REN0
                    0163   1326 	G$Set_Interface$0$0 ==.
                    0163   1327 	C$c8051F320.h$175$3$1 ==.
                           1328 ;	c:/SiLabs/MCU/Inc/c8051F320.h:175: sbit TB80    = 0x9B;                   // Transmit bit 8
   05AB D2 AD              1329 	setb	_TB80
                    0165   1330 	G$Set_Interface$0$0 ==.
                    0165   1331 	C$c8051F320.h$176$3$1 ==.
                           1332 ;	c:/SiLabs/MCU/Inc/c8051F320.h:176: sbit RB80    = 0x9A;                   // Receive bit 8
   05AD D2 AE              1333 	setb	_RB80
                    0167   1334 	G$Set_Interface$0$0 ==.
                    0167   1335 	C$c8051F320.h$177$3$1 ==.
                           1336 ;	c:/SiLabs/MCU/Inc/c8051F320.h:177: sbit TI0     = 0x99;                   // Transmit interrupt flag
   05AF D2 AF              1337 	setb	_TI0
                    0169   1338 	G$Set_Interface$0$0 ==.
                    0169   1339 	C$c8051F320.h$178$3$1 ==.
                           1340 ;	c:/SiLabs/MCU/Inc/c8051F320.h:178: sbit RI0     = 0x98;                   // Receive interrupt flag
   05B1 D2 B0              1341 	setb	_RI0
                    016B   1342 	G$Set_Interface$0$0 ==.
                    016B   1343 	C$c8051F320.h$181$3$1 ==.
                           1344 ;	c:/SiLabs/MCU/Inc/c8051F320.h:181: sbit EA      = 0xAF;                   // Global interrupt enable
   05B3 D2 B1              1345 	setb	_EA
                    016D   1346 	G$Set_Interface$0$0 ==.
                    016D   1347 	C$c8051F320.h$182$3$1 ==.
                           1348 ;	c:/SiLabs/MCU/Inc/c8051F320.h:182: sbit ESPI0   = 0xAE;                   // SPI0 interrupt enable
   05B5 D2 B2              1349 	setb	_ESPI0
                    016F   1350 	G$Set_Interface$0$0 ==.
                    016F   1351 	C$c8051F320.h$183$3$1 ==.
                           1352 ;	c:/SiLabs/MCU/Inc/c8051F320.h:183: sbit ET2     = 0xAD;                   // Timer2 interrupt enable
   05B7 D2 B3              1353 	setb	_ET2
                    0171   1354 	G$Set_Interface$0$0 ==.
                    0171   1355 	C$c8051F320.h$184$3$1 ==.
                           1356 ;	c:/SiLabs/MCU/Inc/c8051F320.h:184: sbit ES0     = 0xAC;                   // UART0 interrupt enable
   05B9 D2 B4              1357 	setb	_ES0
                    0173   1358 	G$Set_Interface$0$0 ==.
                    0173   1359 	C$c8051F320.h$185$3$1 ==.
                           1360 ;	c:/SiLabs/MCU/Inc/c8051F320.h:185: sbit ET1     = 0xAB;                   // Timer1 interrupt enable
   05BB D2 B5              1361 	setb	_ET1
                    0175   1362 	G$Set_Interface$0$0 ==.
                    0175   1363 	C$c8051F320.h$186$3$1 ==.
                           1364 ;	c:/SiLabs/MCU/Inc/c8051F320.h:186: sbit EX1     = 0xAA;                   // External interrupt 1 enable
   05BD D2 B6              1365 	setb	_EX1
                    0177   1366 	G$Set_Interface$0$0 ==.
                    0177   1367 	C$c8051F320.h$187$3$1 ==.
                           1368 ;	c:/SiLabs/MCU/Inc/c8051F320.h:187: sbit ET0     = 0xA9;                   // Timer0 interrupt enable
   05BF D2 B7              1369 	setb	_ET0
                    0179   1370 	G$Set_Interface$0$0 ==.
                    0179   1371 	C$c8051F320.h$188$3$1 ==.
                           1372 ;	c:/SiLabs/MCU/Inc/c8051F320.h:188: sbit EX0     = 0xA8;                   // External interrupt 0 enable
   05C1 D2 B8              1373 	setb	_EX0
                    017B   1374 	G$Set_Interface$0$0 ==.
                    017B   1375 	C$c8051F320.h$192$3$1 ==.
                           1376 ;	c:/SiLabs/MCU/Inc/c8051F320.h:192: sbit PSPI0   = 0xBE;                   // SPI0 interrupt priority
   05C3 D2 B9              1377 	setb	_PSPI0
                    017D   1378 	G$Set_Interface$0$0 ==.
                    017D   1379 	C$c8051F320.h$193$3$1 ==.
                           1380 ;	c:/SiLabs/MCU/Inc/c8051F320.h:193: sbit PT2     = 0xBD;                   // Timer2 priority
   05C5 D2 BA              1381 	setb	_PT2
                    017F   1382 	G$Set_Interface$0$0 ==.
                    017F   1383 	C$c8051F320.h$194$3$1 ==.
                           1384 ;	c:/SiLabs/MCU/Inc/c8051F320.h:194: sbit PS0     = 0xBC;                   // UART0 priority
   05C7 D2 BB              1385 	setb	_PS0
                    0181   1386 	G$Set_Interface$0$0 ==.
                    0181   1387 	C$c8051F320.h$195$3$1 ==.
                           1388 ;	c:/SiLabs/MCU/Inc/c8051F320.h:195: sbit PT1     = 0xBB;                   // Timer1 priority
   05C9 D2 BC              1389 	setb	_PT1
                    0183   1390 	G$Set_Interface$0$0 ==.
                    0183   1391 	C$c8051F320.h$196$3$1 ==.
                           1392 ;	c:/SiLabs/MCU/Inc/c8051F320.h:196: sbit PX1     = 0xBA;                   // External interrupt 1 priority
   05CB D2 BD              1393 	setb	_PX1
                    0185   1394 	G$Set_Interface$0$0 ==.
                    0185   1395 	C$c8051F320.h$197$3$1 ==.
                           1396 ;	c:/SiLabs/MCU/Inc/c8051F320.h:197: sbit PT0     = 0xB9;                   // Timer0 priority
   05CD D2 BE              1397 	setb	_PT0
                    0187   1398 	G$Set_Interface$0$0 ==.
                    0187   1399 	C$c8051F320.h$198$3$1 ==.
                           1400 ;	c:/SiLabs/MCU/Inc/c8051F320.h:198: sbit PX0     = 0xB8;                   // External interrupt 0 priority
   05CF D2 BF              1401 	setb	_PX0
                    0189   1402 	G$Set_Interface$0$0 ==.
                    0189   1403 	C$c8051F320.h$201$3$1 ==.
                           1404 ;	c:/SiLabs/MCU/Inc/c8051F320.h:201: sbit MASTER  = 0xC7;                   // Master/slave indicator
   05D1 D2 C0              1405 	setb	_MASTER
                    018B   1406 	G$Set_Interface$0$0 ==.
                    018B   1407 	C$c8051F320.h$202$3$1 ==.
                           1408 ;	c:/SiLabs/MCU/Inc/c8051F320.h:202: sbit TXMODE  = 0xC6;                   // Transmit mode indicator
   05D3 D2 C1              1409 	setb	_TXMODE
                    018D   1410 	G$Set_Interface$0$0 ==.
                    018D   1411 	C$c8051F320.h$203$3$1 ==.
                           1412 ;	c:/SiLabs/MCU/Inc/c8051F320.h:203: sbit STA     = 0xC5;                   // Start flag
   05D5 D2 C2              1413 	setb	_STA
                    018F   1414 	G$Set_Interface$0$0 ==.
                    018F   1415 	C$c8051F320.h$204$3$1 ==.
                           1416 ;	c:/SiLabs/MCU/Inc/c8051F320.h:204: sbit STO     = 0xC4;                   // Stop flag
   05D7 D2 C3              1417 	setb	_STO
                    0191   1418 	G$Set_Interface$0$0 ==.
                    0191   1419 	C$c8051F320.h$205$3$1 ==.
                           1420 ;	c:/SiLabs/MCU/Inc/c8051F320.h:205: sbit ACKRQ   = 0xC3;                   // Acknowledge request
   05D9 D2 C4              1421 	setb	_ACKRQ
                    0193   1422 	G$Set_Interface$0$0 ==.
                    0193   1423 	C$c8051F320.h$206$3$1 ==.
                           1424 ;	c:/SiLabs/MCU/Inc/c8051F320.h:206: sbit ARBLOST = 0xC2;                   // Arbitration lost indicator
   05DB D2 C5              1425 	setb	_ARBLOST
                    0195   1426 	G$Set_Interface$0$0 ==.
                    0195   1427 	C$c8051F320.h$207$3$1 ==.
                           1428 ;	c:/SiLabs/MCU/Inc/c8051F320.h:207: sbit ACK     = 0xC1;                   // Acknowledge flag
   05DD D2 C6              1429 	setb	_ACK
                    0197   1430 	G$Set_Interface$0$0 ==.
                    0197   1431 	C$c8051F320.h$208$3$1 ==.
                           1432 ;	c:/SiLabs/MCU/Inc/c8051F320.h:208: sbit SI      = 0xC0;                   // SMBus interrupt flag
   05DF D2 C7              1433 	setb	_SI
                    0199   1434 	G$Set_Interface$0$0 ==.
                    0199   1435 	C$c8051F320.h$211$3$1 ==.
                           1436 ;	c:/SiLabs/MCU/Inc/c8051F320.h:211: sbit TF2H    = 0xCF;                   // Timer2 high byte overflow flag
   05E1 D2 C8              1437 	setb	_TF2H
                    019B   1438 	G$Set_Interface$0$0 ==.
                    019B   1439 	C$c8051F320.h$212$3$1 ==.
                           1440 ;	c:/SiLabs/MCU/Inc/c8051F320.h:212: sbit TF2L    = 0xCE;                   // Timer2 low byte overflow flag
   05E3 D2 C9              1441 	setb	_TF2L
                    019D   1442 	G$Set_Interface$0$0 ==.
                    019D   1443 	C$c8051F320.h$213$3$1 ==.
                           1444 ;	c:/SiLabs/MCU/Inc/c8051F320.h:213: sbit TF2LEN  = 0xCD;                   // Timer2 low byte interrupt enable
   05E5 D2 CA              1445 	setb	_TF2LEN
                    019F   1446 	G$Set_Interface$0$0 ==.
                    019F   1447 	C$c8051F320.h$214$3$1 ==.
                           1448 ;	c:/SiLabs/MCU/Inc/c8051F320.h:214: sbit T2SOF   = 0xCC;                   // Timer2 start-of-frame capture enable
   05E7 D2 CB              1449 	setb	_T2SOF
                    01A1   1450 	G$Set_Interface$0$0 ==.
                    01A1   1451 	C$c8051F320.h$215$3$1 ==.
                           1452 ;	c:/SiLabs/MCU/Inc/c8051F320.h:215: sbit T2SPLIT = 0xCB;                   // Timer2 split mode enable
   05E9 D2 CC              1453 	setb	_T2SPLIT
                    01A3   1454 	G$Set_Interface$0$0 ==.
                    01A3   1455 	C$c8051F320.h$216$3$1 ==.
                           1456 ;	c:/SiLabs/MCU/Inc/c8051F320.h:216: sbit TR2     = 0xCA;                   // Timer2 on/off control
   05EB D2 CD              1457 	setb	_TR2
                    01A5   1458 	G$Set_Interface$0$0 ==.
                    01A5   1459 	C$c8051F320.h$218$3$1 ==.
                           1460 ;	c:/SiLabs/MCU/Inc/c8051F320.h:218: sbit T2XCLK  = 0xC8;                   // Timer2 external clock select
   05ED D2 CE              1461 	setb	_T2XCLK
                    01A7   1462 	G$Set_Interface$0$0 ==.
                    01A7   1463 	C$c8051F320.h$221$3$1 ==.
                           1464 ;	c:/SiLabs/MCU/Inc/c8051F320.h:221: sbit CY      = 0xD7;                   // Carry flag
   05EF D2 CF              1465 	setb	_CY
                    01A9   1466 	G$Set_Interface$0$0 ==.
                    01A9   1467 	C$c8051F320.h$222$3$1 ==.
                           1468 ;	c:/SiLabs/MCU/Inc/c8051F320.h:222: sbit AC      = 0xD6;                   // Auxiliary carry flag
   05F1 D2 D0              1469 	setb	_AC
                    01AB   1470 	G$Set_Interface$0$0 ==.
                    01AB   1471 	C$c8051F320.h$223$3$1 ==.
                           1472 ;	c:/SiLabs/MCU/Inc/c8051F320.h:223: sbit F0      = 0xD5;                   // User flag 0
   05F3 D2 D1              1473 	setb	_F0
                    01AD   1474 	G$Set_Interface$0$0 ==.
                    01AD   1475 	C$c8051F320.h$224$3$1 ==.
                           1476 ;	c:/SiLabs/MCU/Inc/c8051F320.h:224: sbit RS1     = 0xD4;                   // Register bank select 1
   05F5 D2 D2              1477 	setb	_RS1
                    01AF   1478 	G$Set_Interface$0$0 ==.
                    01AF   1479 	C$c8051F320.h$225$3$1 ==.
                           1480 ;	c:/SiLabs/MCU/Inc/c8051F320.h:225: sbit RS0     = 0xD3;                   // Register bank select 0
   05F7 D2 D3              1481 	setb	_RS0
                    01B1   1482 	G$Set_Interface$0$0 ==.
                    01B1   1483 	C$c8051F320.h$226$3$1 ==.
                           1484 ;	c:/SiLabs/MCU/Inc/c8051F320.h:226: sbit OV      = 0xD2;                   // Overflow flag
   05F9 D2 D4              1485 	setb	_OV
                    01B3   1486 	G$Set_Interface$0$0 ==.
                    01B3   1487 	C$c8051F320.h$227$3$1 ==.
                           1488 ;	c:/SiLabs/MCU/Inc/c8051F320.h:227: sbit F1      = 0xD1;                   // User flag 1
   05FB D2 D5              1489 	setb	_F1
                    01B5   1490 	G$Set_Interface$0$0 ==.
                    01B5   1491 	C$c8051F320.h$228$3$1 ==.
                           1492 ;	c:/SiLabs/MCU/Inc/c8051F320.h:228: sbit P       = 0xD0;                   // Accumulator parity flag
   05FD D2 D6              1493 	setb	_P
                    01B7   1494 	G$Set_Interface$0$0 ==.
                    01B7   1495 	C$c8051F320.h$231$3$1 ==.
                           1496 ;	c:/SiLabs/MCU/Inc/c8051F320.h:231: sbit CF      = 0xDF;                   // PCA0 counter overflow flag
   05FF D2 D7              1497 	setb	_CF
                    01B9   1498 	G$Set_Interface$0$0 ==.
                    01B9   1499 	C$c8051F320.h$232$3$1 ==.
                           1500 ;	c:/SiLabs/MCU/Inc/c8051F320.h:232: sbit CR      = 0xDE;                   // PCA0 counter run control
   0601 D2 D8              1501 	setb	_CR
                    01BB   1502 	G$Set_Interface$0$0 ==.
                    01BB   1503 	C$c8051F320.h$234$3$1 ==.
                           1504 ;	c:/SiLabs/MCU/Inc/c8051F320.h:234: sbit CCF4    = 0xDC;                   // PCA0 module4 capture/compare flag
   0603 D2 D9              1505 	setb	_CCF4
                    01BD   1506 	G$Set_Interface$0$0 ==.
                    01BD   1507 	C$c8051F320.h$235$3$1 ==.
                           1508 ;	c:/SiLabs/MCU/Inc/c8051F320.h:235: sbit CCF3    = 0xDB;                   // PCA0 module3 capture/compare flag
   0605 D2 DA              1509 	setb	_CCF3
                    01BF   1510 	G$Set_Interface$0$0 ==.
                    01BF   1511 	C$c8051F320.h$236$3$1 ==.
                           1512 ;	c:/SiLabs/MCU/Inc/c8051F320.h:236: sbit CCF2    = 0xDA;                   // PCA0 module2 capture/compare flag
   0607 D2 DB              1513 	setb	_CCF2
                    01C1   1514 	G$Set_Interface$0$0 ==.
                    01C1   1515 	C$c8051F320.h$237$3$1 ==.
                           1516 ;	c:/SiLabs/MCU/Inc/c8051F320.h:237: sbit CCF1    = 0xD9;                   // PCA0 module1 capture/compare flag
   0609 D2 DC              1517 	setb	_CCF1
                    01C3   1518 	G$Set_Interface$0$0 ==.
                    01C3   1519 	C$c8051F320.h$238$3$1 ==.
                           1520 ;	c:/SiLabs/MCU/Inc/c8051F320.h:238: sbit CCF0    = 0xD8;                   // PCA0 module0 capture/compare flag
   060B D2 DD              1521 	setb	_CCF0
                    01C5   1522 	G$Set_Interface$0$0 ==.
                    01C5   1523 	C$c8051F320.h$241$3$1 ==.
                           1524 ;	c:/SiLabs/MCU/Inc/c8051F320.h:241: sbit AD0EN   = 0xEF;                   // ADC0 enable
   060D D2 DE              1525 	setb	_AD0EN
                    01C7   1526 	G$Set_Interface$0$0 ==.
                    01C7   1527 	C$c8051F320.h$242$3$1 ==.
                           1528 ;	c:/SiLabs/MCU/Inc/c8051F320.h:242: sbit AD0TM   = 0xEE;                   // ADC0 track mode
   060F D2 DF              1529 	setb	_AD0TM
                    01C9   1530 	G$Set_Interface$0$0 ==.
                    01C9   1531 	C$c8051F320.h$243$3$1 ==.
                           1532 ;	c:/SiLabs/MCU/Inc/c8051F320.h:243: sbit AD0INT  = 0xED;                   // ADC0 converision complete interrupt flag
   0611 D2 E0              1533 	setb	_AD0INT
                    01CB   1534 	G$Set_Interface$0$0 ==.
                    01CB   1535 	C$c8051F320.h$244$3$1 ==.
                           1536 ;	c:/SiLabs/MCU/Inc/c8051F320.h:244: sbit AD0BUSY = 0xEC;                   // ADC0 busy flag
   0613 D2 E1              1537 	setb	_AD0BUSY
                    01CD   1538 	G$Set_Interface$0$0 ==.
                    01CD   1539 	C$c8051F320.h$245$3$1 ==.
                           1540 ;	c:/SiLabs/MCU/Inc/c8051F320.h:245: sbit AD0WINT = 0xEB;                   // ADC0 window compare interrupt flag
   0615 D2 E2              1541 	setb	_AD0WINT
                    01CF   1542 	G$Set_Interface$0$0 ==.
                    01CF   1543 	C$c8051F320.h$246$3$1 ==.
                           1544 ;	c:/SiLabs/MCU/Inc/c8051F320.h:246: sbit AD0CM2  = 0xEA;                   // ADC0 conversion mode select 2
   0617 D2 E3              1545 	setb	_AD0CM2
                    01D1   1546 	G$Set_Interface$0$0 ==.
                    01D1   1547 	C$c8051F320.h$247$3$1 ==.
                           1548 ;	c:/SiLabs/MCU/Inc/c8051F320.h:247: sbit AD0CM1  = 0xE9;                   // ADC0 conversion mode select 1
   0619 D2 E4              1549 	setb	_AD0CM1
                    01D3   1550 	G$Set_Interface$0$0 ==.
                    01D3   1551 	C$c8051F320.h$248$3$1 ==.
                           1552 ;	c:/SiLabs/MCU/Inc/c8051F320.h:248: sbit AD0CM0  = 0xE8;                   // ADC0 conversion mode select 0
   061B D2 E5              1553 	setb	_AD0CM0
                    01D5   1554 	G$Set_Interface$0$0 ==.
                    01D5   1555 	C$c8051F320.h$251$3$1 ==.
                           1556 ;	c:/SiLabs/MCU/Inc/c8051F320.h:251: sbit SPIF    = 0xFF;                   // SPI0 interrupt flag
   061D D2 E6              1557 	setb	_SPIF
                    01D7   1558 	G$Set_Interface$0$0 ==.
                    01D7   1559 	C$c8051F320.h$252$3$1 ==.
                           1560 ;	c:/SiLabs/MCU/Inc/c8051F320.h:252: sbit WCOL    = 0xFE;                   // SPI0 write collision flag
   061F D2 E7              1561 	setb	_WCOL
                    01D9   1562 	G$Set_Interface$0$0 ==.
                    01D9   1563 	C$c8051F320.h$253$3$1 ==.
                           1564 ;	c:/SiLabs/MCU/Inc/c8051F320.h:253: sbit MODF    = 0xFD;                   // SPI0 mode fault flag
   0621 D2 E8              1565 	setb	_MODF
                    01DB   1566 	G$Set_Interface$0$0 ==.
                    01DB   1567 	C$c8051F320.h$254$3$1 ==.
                           1568 ;	c:/SiLabs/MCU/Inc/c8051F320.h:254: sbit RXOVRN  = 0xFC;                   // SPI0 rx overrun flag
   0623 D2 E9              1569 	setb	_RXOVRN
                    01DD   1570 	G$Set_Interface$0$0 ==.
                    01DD   1571 	C$c8051F320.h$255$3$1 ==.
                           1572 ;	c:/SiLabs/MCU/Inc/c8051F320.h:255: sbit NSSMD1  = 0xFB;                   // SPI0 slave select mode 1
   0625 D2 EA              1573 	setb	_NSSMD1
                    01DF   1574 	G$Set_Interface$0$0 ==.
                    01DF   1575 	C$c8051F320.h$256$3$1 ==.
                           1576 ;	c:/SiLabs/MCU/Inc/c8051F320.h:256: sbit NSSMD0  = 0xFA;                   // SPI0 slave select mode 0
   0627 D2 EB              1577 	setb	_NSSMD0
                    01E1   1578 	G$Set_Interface$0$0 ==.
                    01E1   1579 	C$c8051F320.h$257$3$1 ==.
                           1580 ;	c:/SiLabs/MCU/Inc/c8051F320.h:257: sbit TXBMT   = 0xF9;                   // SPI0 transmit buffer empty
   0629 D2 EC              1581 	setb	_TXBMT
                    01E3   1582 	G$Set_Interface$0$0 ==.
                    01E3   1583 	C$c8051F320.h$258$3$1 ==.
                           1584 ;	c:/SiLabs/MCU/Inc/c8051F320.h:258: sbit SPIEN   = 0xF8;                   // SPI0 SPI enable
   062B D2 ED              1585 	setb	_SPIEN
                           1586 ;--------------------------------------------------------
                           1587 ; Home
                           1588 ;--------------------------------------------------------
                           1589 	.area HOME    (CODE)
                           1590 	.area HOME    (CODE)
                           1591 ;--------------------------------------------------------
                           1592 ; code
                           1593 ;--------------------------------------------------------
                           1594 	.area CSEG    (CODE)
                           1595 ;------------------------------------------------------------
                           1596 ;Allocation info for local variables in function 'Get_Status'
                           1597 ;------------------------------------------------------------
                           1598 ;------------------------------------------------------------
                    0000   1599 	G$Get_Status$0$0 ==.
                    0000   1600 	C$USBStandardRequests.c$69$0$0 ==.
                           1601 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:69: void Get_Status(void)                  
                           1602 ;	-----------------------------------------
                           1603 ;	 function Get_Status
                           1604 ;	-----------------------------------------
   0FD1                    1605 _Get_Status:
                    0002   1606 	ar2 = 0x02
                    0003   1607 	ar3 = 0x03
                    0004   1608 	ar4 = 0x04
                    0005   1609 	ar5 = 0x05
                    0006   1610 	ar6 = 0x06
                    0007   1611 	ar7 = 0x07
                    0000   1612 	ar0 = 0x00
                    0001   1613 	ar1 = 0x01
                    0000   1614 	C$USBStandardRequests.c$72$1$1 ==.
                           1615 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:72: if (Setup.wValue.c[MSB] || Setup.wValue.c[LSB] ||
   0FD1 E5 24              1616 	mov	a,(_Setup + 0x0002)
   0FD3 70 0F              1617 	jnz	00101$
   0FD5 E5 25              1618 	mov	a,(_Setup + 0x0003)
   0FD7 70 0B              1619 	jnz	00101$
                    0008   1620 	C$USBStandardRequests.c$76$1$1 ==.
                           1621 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:76: Setup.wLength.c[MSB]    || (Setup.wLength.c[LSB] != 2))                                               
   0FD9 E5 28              1622 	mov	a,(_Setup + 0x0006)
   0FDB 70 07              1623 	jnz	00101$
   0FDD 74 02              1624 	mov	a,#0x02
   0FDF B5 29 02           1625 	cjne	a,(_Setup + 0x0007),00162$
   0FE2 80 03              1626 	sjmp	00102$
   0FE4                    1627 00162$:
   0FE4                    1628 00101$:
                    0013   1629 	C$USBStandardRequests.c$78$2$2 ==.
                           1630 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:78: Force_Stall();
   0FE4 12 0F B7           1631 	lcall	_Force_Stall
   0FE7                    1632 00102$:
                    0016   1633 	C$USBStandardRequests.c$82$1$1 ==.
                           1634 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:82: switch(Setup.bmRequestType)                  
   0FE7 AA 22              1635 	mov	r2,_Setup
   0FE9 BA 80 02           1636 	cjne	r2,#0x80,00163$
   0FEC 80 0D              1637 	sjmp	00106$
   0FEE                    1638 00163$:
   0FEE BA 81 02           1639 	cjne	r2,#0x81,00164$
   0FF1 80 28              1640 	sjmp	00111$
   0FF3                    1641 00164$:
   0FF3 BA 82 02           1642 	cjne	r2,#0x82,00165$
   0FF6 80 48              1643 	sjmp	00117$
   0FF8                    1644 00165$:
   0FF8 02 10 AB           1645 	ljmp	00134$
                    002A   1646 	C$USBStandardRequests.c$85$2$3 ==.
                           1647 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:85: case OUT_DEVICE:                          
   0FFB                    1648 00106$:
                    002A   1649 	C$USBStandardRequests.c$86$2$3 ==.
                           1650 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:86: if (Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])
   0FFB E5 26              1651 	mov	a,(_Setup + 0x0004)
   0FFD 70 04              1652 	jnz	00107$
   0FFF E5 27              1653 	mov	a,(_Setup + 0x0005)
   1001 60 06              1654 	jz	00108$
   1003                    1655 00107$:
                    0032   1656 	C$USBStandardRequests.c$89$3$4 ==.
                           1657 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:89: Force_Stall();             
   1003 12 0F B7           1658 	lcall	_Force_Stall
   1006 02 10 AE           1659 	ljmp	00135$
   1009                    1660 00108$:
                    0038   1661 	C$USBStandardRequests.c$95$3$5 ==.
                           1662 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:95: DataPtr = (BYTE*)&ZERO_PACKET;      
   1009 75 2E 9B           1663 	mov	_DataPtr,#_ZERO_PACKET
   100C 75 2F 16           1664 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   100F 75 30 80           1665 	mov	(_DataPtr + 2),#0x80
                    0041   1666 	C$USBStandardRequests.c$96$3$5 ==.
                           1667 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:96: DataSize = 2;                       
   1012 75 2A 02           1668 	mov	_DataSize,#0x02
   1015 E4                 1669 	clr	a
   1016 F5 2B              1670 	mov	(_DataSize + 1),a
                    0047   1671 	C$USBStandardRequests.c$98$2$3 ==.
                           1672 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:98: break;
   1018 02 10 AE           1673 	ljmp	00135$
                    004A   1674 	C$USBStandardRequests.c$101$2$3 ==.
                           1675 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:101: case OUT_INTERFACE:                       
   101B                    1676 00111$:
                    004A   1677 	C$USBStandardRequests.c$103$2$3 ==.
                           1678 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:103: if ((USB_State != DEV_CONFIGURED) ||
   101B 74 04              1679 	mov	a,#0x04
   101D B5 21 08           1680 	cjne	a,_USB_State,00112$
                    004F   1681 	C$USBStandardRequests.c$104$2$3 ==.
                           1682 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:104: Setup.wIndex.c[MSB] || Setup.wIndex.c[LSB])                                                
   1020 E5 26              1683 	mov	a,(_Setup + 0x0004)
   1022 70 04              1684 	jnz	00112$
   1024 E5 27              1685 	mov	a,(_Setup + 0x0005)
   1026 60 06              1686 	jz	00113$
   1028                    1687 00112$:
                    0057   1688 	C$USBStandardRequests.c$107$3$6 ==.
                           1689 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:107: Force_Stall();                      
   1028 12 0F B7           1690 	lcall	_Force_Stall
   102B 02 10 AE           1691 	ljmp	00135$
   102E                    1692 00113$:
                    005D   1693 	C$USBStandardRequests.c$112$3$7 ==.
                           1694 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:112: DataPtr = (BYTE*)&ZERO_PACKET;      
   102E 75 2E 9B           1695 	mov	_DataPtr,#_ZERO_PACKET
   1031 75 2F 16           1696 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   1034 75 30 80           1697 	mov	(_DataPtr + 2),#0x80
                    0066   1698 	C$USBStandardRequests.c$113$3$7 ==.
                           1699 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:113: DataSize = 2;
   1037 75 2A 02           1700 	mov	_DataSize,#0x02
   103A E4                 1701 	clr	a
   103B F5 2B              1702 	mov	(_DataSize + 1),a
                    006C   1703 	C$USBStandardRequests.c$115$2$3 ==.
                           1704 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:115: break;
   103D 02 10 AE           1705 	ljmp	00135$
                    006F   1706 	C$USBStandardRequests.c$118$2$3 ==.
                           1707 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:118: case OUT_ENDPOINT:                        
   1040                    1708 00117$:
                    006F   1709 	C$USBStandardRequests.c$120$2$3 ==.
                           1710 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:120: if ((USB_State != DEV_CONFIGURED) || Setup.wIndex.c[MSB])                   
   1040 74 04              1711 	mov	a,#0x04
   1042 B5 21 04           1712 	cjne	a,_USB_State,00130$
   1045 E5 26              1713 	mov	a,(_Setup + 0x0004)
   1047 60 05              1714 	jz	00131$
   1049                    1715 00130$:
                    0078   1716 	C$USBStandardRequests.c$122$3$8 ==.
                           1717 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:122: Force_Stall();              // otherwise return stall to host
   1049 12 0F B7           1718 	lcall	_Force_Stall
   104C 80 60              1719 	sjmp	00135$
   104E                    1720 00131$:
                    007D   1721 	C$USBStandardRequests.c$127$3$9 ==.
                           1722 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:127: if (Setup.wIndex.c[LSB] == IN_EP1)  
   104E 74 81              1723 	mov	a,#0x81
   1050 B5 27 27           1724 	cjne	a,(_Setup + 0x0005),00128$
                    0082   1725 	C$USBStandardRequests.c$129$4$10 ==.
                           1726 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:129: if (Ep_Status[1] == EP_HALT)
   1053 74 03              1727 	mov	a,#0x03
   1055 B5 32 11           1728 	cjne	a,(_Ep_Status + 0x0001),00119$
                    0087   1729 	C$USBStandardRequests.c$132$5$11 ==.
                           1730 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:132: DataPtr = (BYTE*)&ONES_PACKET;
   1058 75 2E 99           1731 	mov	_DataPtr,#_ONES_PACKET
   105B 75 2F 16           1732 	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
   105E 75 30 80           1733 	mov	(_DataPtr + 2),#0x80
                    0090   1734 	C$USBStandardRequests.c$133$5$11 ==.
                           1735 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:133: DataSize = 2;
   1061 75 2A 02           1736 	mov	_DataSize,#0x02
   1064 E4                 1737 	clr	a
   1065 F5 2B              1738 	mov	(_DataSize + 1),a
   1067 80 45              1739 	sjmp	00135$
   1069                    1740 00119$:
                    0098   1741 	C$USBStandardRequests.c$138$5$12 ==.
                           1742 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:138: DataPtr = (BYTE*)&ZERO_PACKET;
   1069 75 2E 9B           1743 	mov	_DataPtr,#_ZERO_PACKET
   106C 75 2F 16           1744 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   106F 75 30 80           1745 	mov	(_DataPtr + 2),#0x80
                    00A1   1746 	C$USBStandardRequests.c$139$5$12 ==.
                           1747 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:139: DataSize = 2;
   1072 75 2A 02           1748 	mov	_DataSize,#0x02
   1075 E4                 1749 	clr	a
   1076 F5 2B              1750 	mov	(_DataSize + 1),a
   1078 80 34              1751 	sjmp	00135$
   107A                    1752 00128$:
                    00A9   1753 	C$USBStandardRequests.c$146$4$13 ==.
                           1754 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:146: if (Setup.wIndex.c[LSB] == OUT_EP2)
   107A 74 02              1755 	mov	a,#0x02
   107C B5 27 27           1756 	cjne	a,(_Setup + 0x0005),00125$
                    00AE   1757 	C$USBStandardRequests.c$149$5$14 ==.
                           1758 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:149: if (Ep_Status[2] == EP_HALT)
   107F 74 03              1759 	mov	a,#0x03
   1081 B5 33 11           1760 	cjne	a,(_Ep_Status + 0x0002),00122$
                    00B3   1761 	C$USBStandardRequests.c$151$6$15 ==.
                           1762 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:151: DataPtr = (BYTE*)&ONES_PACKET;
   1084 75 2E 99           1763 	mov	_DataPtr,#_ONES_PACKET
   1087 75 2F 16           1764 	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
   108A 75 30 80           1765 	mov	(_DataPtr + 2),#0x80
                    00BC   1766 	C$USBStandardRequests.c$152$6$15 ==.
                           1767 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:152: DataSize = 2;
   108D 75 2A 02           1768 	mov	_DataSize,#0x02
   1090 E4                 1769 	clr	a
   1091 F5 2B              1770 	mov	(_DataSize + 1),a
   1093 80 19              1771 	sjmp	00135$
   1095                    1772 00122$:
                    00C4   1773 	C$USBStandardRequests.c$156$6$16 ==.
                           1774 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:156: DataPtr = (BYTE*)&ZERO_PACKET;
   1095 75 2E 9B           1775 	mov	_DataPtr,#_ZERO_PACKET
   1098 75 2F 16           1776 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   109B 75 30 80           1777 	mov	(_DataPtr + 2),#0x80
                    00CD   1778 	C$USBStandardRequests.c$157$6$16 ==.
                           1779 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:157: DataSize = 2;
   109E 75 2A 02           1780 	mov	_DataSize,#0x02
   10A1 E4                 1781 	clr	a
   10A2 F5 2B              1782 	mov	(_DataSize + 1),a
   10A4 80 08              1783 	sjmp	00135$
   10A6                    1784 00125$:
                    00D5   1785 	C$USBStandardRequests.c$162$5$17 ==.
                           1786 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:162: Force_Stall();       // Send stall if unexpected data
   10A6 12 0F B7           1787 	lcall	_Force_Stall
                    00D8   1788 	C$USBStandardRequests.c$166$2$3 ==.
                           1789 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:166: break;
                    00D8   1790 	C$USBStandardRequests.c$168$2$3 ==.
                           1791 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:168: default:
   10A9 80 03              1792 	sjmp	00135$
   10AB                    1793 00134$:
                    00DA   1794 	C$USBStandardRequests.c$169$2$3 ==.
                           1795 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:169: Force_Stall();
   10AB 12 0F B7           1796 	lcall	_Force_Stall
                    00DD   1797 	C$USBStandardRequests.c$171$1$1 ==.
                           1798 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:171: }
   10AE                    1799 00135$:
                    00DD   1800 	C$USBStandardRequests.c$172$1$1 ==.
                           1801 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:172: if (Ep_Status[0] != EP_STALL)
   10AE 74 04              1802 	mov	a,#0x04
   10B0 B5 31 01           1803 	cjne	a,_Ep_Status,00183$
   10B3 22                 1804 	ret
   10B4                    1805 00183$:
                    00E3   1806 	C$USBStandardRequests.c$176$2$18 ==.
                           1807 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:176: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);        
   10B4                    1808 00136$:
   10B4 E5 46              1809 	mov	a,_USB0ADR
   10B6 20 E7 FB           1810 	jb	acc.7,00136$
   10B9 75 46 11           1811 	mov	_USB0ADR,#0x11
   10BC 75 47 40           1812 	mov	_USB0DAT,#0x40
                    00EE   1813 	C$USBStandardRequests.c$177$2$18 ==.
                           1814 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:177: Ep_Status[0] = EP_TX;                     
   10BF 75 31 01           1815 	mov	_Ep_Status,#0x01
                    00F1   1816 	C$USBStandardRequests.c$178$2$18 ==.
                           1817 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:178: DataSent = 0;
   10C2 E4                 1818 	clr	a
   10C3 F5 2C              1819 	mov	_DataSent,a
   10C5 F5 2D              1820 	mov	(_DataSent + 1),a
                    00F6   1821 	C$USBStandardRequests.c$180$2$1 ==.
                    00F6   1822 	XG$Get_Status$0$0 ==.
   10C7 22                 1823 	ret
                           1824 ;------------------------------------------------------------
                           1825 ;Allocation info for local variables in function 'Clear_Feature'
                           1826 ;------------------------------------------------------------
                           1827 ;------------------------------------------------------------
                    00F7   1828 	G$Clear_Feature$0$0 ==.
                    00F7   1829 	C$USBStandardRequests.c$193$2$1 ==.
                           1830 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:193: void Clear_Feature()                            
                           1831 ;	-----------------------------------------
                           1832 ;	 function Clear_Feature
                           1833 ;	-----------------------------------------
   10C8                    1834 _Clear_Feature:
                    00F7   1835 	C$USBStandardRequests.c$196$1$1 ==.
                           1836 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:196: if ((USB_State != DEV_CONFIGURED)          ||// Send procedural stall if device isn't configured
   10C8 74 04              1837 	mov	a,#0x04
   10CA B5 21 1A           1838 	cjne	a,_USB_State,00122$
                    00FC   1839 	C$USBStandardRequests.c$197$1$1 ==.
                           1840 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:197: (Setup.bmRequestType == IN_DEVICE)         ||// or request is made to host(remote wakeup not supported)
   10CD E5 22              1841 	mov	a,_Setup
   10CF FA                 1842 	mov	r2,a
   10D0 60 15              1843 	jz	00122$
                    0101   1844 	C$USBStandardRequests.c$198$1$1 ==.
                           1845 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:198: (Setup.bmRequestType == IN_INTERFACE)      ||// or request is made to interface
   10D2 BA 01 02           1846 	cjne	r2,#0x01,00165$
   10D5 80 10              1847 	sjmp	00122$
   10D7                    1848 00165$:
                    0106   1849 	C$USBStandardRequests.c$199$1$1 ==.
                           1850 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:199: Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||// or msbs of value or index set to non-zero value
   10D7 E5 24              1851 	mov	a,(_Setup + 0x0002)
   10D9 70 0C              1852 	jnz	00122$
   10DB E5 26              1853 	mov	a,(_Setup + 0x0004)
   10DD 70 08              1854 	jnz	00122$
                    010E   1855 	C$USBStandardRequests.c$200$1$1 ==.
                           1856 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:200: Setup.wLength.c[MSB] || Setup.wLength.c[LSB])// or data length set to non-zero.
   10DF E5 28              1857 	mov	a,(_Setup + 0x0006)
   10E1 70 04              1858 	jnz	00122$
   10E3 E5 29              1859 	mov	a,(_Setup + 0x0007)
   10E5 60 05              1860 	jz	00123$
   10E7                    1861 00122$:
                    0116   1862 	C$USBStandardRequests.c$202$2$2 ==.
                           1863 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:202: Force_Stall();
   10E7 12 0F B7           1864 	lcall	_Force_Stall
   10EA 80 53              1865 	sjmp	00131$
   10EC                    1866 00123$:
                    011B   1867 	C$USBStandardRequests.c$207$2$3 ==.
                           1868 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:207: if ((Setup.bmRequestType == IN_ENDPOINT)&&// Verify that packet was directed at an endpoint
   10EC 74 02              1869 	mov	a,#0x02
   10EE B5 22 4B           1870 	cjne	a,_Setup,00117$
                    0120   1871 	C$USBStandardRequests.c$208$2$3 ==.
                           1872 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:208: (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// the feature selected was HALT_ENDPOINT
   10F1 E5 25              1873 	mov	a,(_Setup + 0x0003)
   10F3 70 47              1874 	jnz	00117$
                    0124   1875 	C$USBStandardRequests.c$209$2$3 ==.
                           1876 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:209: ((Setup.wIndex.c[LSB] == IN_EP1) ||       // and that the request was directed at EP 1 in
   10F5 74 81              1877 	mov	a,#0x81
   10F7 B5 27 02           1878 	cjne	a,(_Setup + 0x0005),00173$
   10FA 80 05              1879 	sjmp	00116$
   10FC                    1880 00173$:
                    012B   1881 	C$USBStandardRequests.c$210$2$3 ==.
                           1882 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:210: (Setup.wIndex.c[LSB] == OUT_EP2)))        // or EP 2 out
   10FC 74 02              1883 	mov	a,#0x02
   10FE B5 27 3B           1884 	cjne	a,(_Setup + 0x0005),00117$
   1101                    1885 00116$:
                    0130   1886 	C$USBStandardRequests.c$212$3$4 ==.
                           1887 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:212: if (Setup.wIndex.c[LSB] == IN_EP1)
   1101 74 81              1888 	mov	a,#0x81
   1103 B5 27 1B           1889 	cjne	a,(_Setup + 0x0005),00107$
                    0135   1890 	C$USBStandardRequests.c$214$4$5 ==.
                           1891 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:214: POLL_WRITE_BYTE (INDEX, 1);         // Clear feature endpoint 1 halt
   1106                    1892 00101$:
   1106 E5 46              1893 	mov	a,_USB0ADR
   1108 20 E7 FB           1894 	jb	acc.7,00101$
   110B 75 46 0E           1895 	mov	_USB0ADR,#0x0E
   110E 75 47 01           1896 	mov	_USB0DAT,#0x01
                    0140   1897 	C$USBStandardRequests.c$215$4$5 ==.
                           1898 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:215: POLL_WRITE_BYTE (EINCSR1, rbInCLRDT);
   1111                    1899 00104$:
   1111 E5 46              1900 	mov	a,_USB0ADR
   1113 20 E7 FB           1901 	jb	acc.7,00104$
   1116 75 46 11           1902 	mov	_USB0ADR,#0x11
   1119 75 47 40           1903 	mov	_USB0DAT,#0x40
                    014B   1904 	C$USBStandardRequests.c$216$4$5 ==.
                           1905 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:216: Ep_Status[1] = EP_IDLE;             // Set endpoint 1 status back to idle
   111C 75 32 00           1906 	mov	(_Ep_Status + 0x0001),#0x00
                    014E   1907 	C$USBStandardRequests.c$220$4$8 ==.
                           1908 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:220: POLL_WRITE_BYTE (INDEX, 2);         // Clear feature endpoint 2 halt
   111F 80 1E              1909 	sjmp	00131$
   1121                    1910 00107$:
   1121 E5 46              1911 	mov	a,_USB0ADR
   1123 20 E7 FB           1912 	jb	acc.7,00107$
   1126 75 46 0E           1913 	mov	_USB0ADR,#0x0E
   1129 75 47 02           1914 	mov	_USB0DAT,#0x02
                    015B   1915 	C$USBStandardRequests.c$221$4$8 ==.
                           1916 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:221: POLL_WRITE_BYTE (EOUTCSR1, rbOutCLRDT);
   112C                    1917 00110$:
   112C E5 46              1918 	mov	a,_USB0ADR
   112E 20 E7 FB           1919 	jb	acc.7,00110$
   1131 75 46 14           1920 	mov	_USB0ADR,#0x14
   1134 75 47 80           1921 	mov	_USB0DAT,#0x80
                    0166   1922 	C$USBStandardRequests.c$222$4$8 ==.
                           1923 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:222: Ep_Status[2] = EP_IDLE;             // Set endpoint 2 status back to idle
   1137 75 33 00           1924 	mov	(_Ep_Status + 0x0002),#0x00
   113A 80 03              1925 	sjmp	00131$
   113C                    1926 00117$:
                    016B   1927 	C$USBStandardRequests.c$227$3$11 ==.
                           1928 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:227: Force_Stall();                         // Send procedural stall
   113C 12 0F B7           1929 	lcall	_Force_Stall
                    016E   1930 	C$USBStandardRequests.c$230$1$1 ==.
                           1931 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:230: POLL_WRITE_BYTE(INDEX, 0);                   // Reset Index to 0
   113F                    1932 00131$:
   113F E5 46              1933 	mov	a,_USB0ADR
   1141 20 E7 FB           1934 	jb	acc.7,00131$
   1144 75 46 0E           1935 	mov	_USB0ADR,#0x0E
   1147 75 47 00           1936 	mov	_USB0DAT,#0x00
                    0179   1937 	C$USBStandardRequests.c$231$1$1 ==.
                           1938 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:231: if (Ep_Status[0] != EP_STALL)
   114A 74 04              1939 	mov	a,#0x04
   114C B5 31 01           1940 	cjne	a,_Ep_Status,00183$
   114F 22                 1941 	ret
   1150                    1942 00183$:
                    017F   1943 	C$USBStandardRequests.c$233$2$13 ==.
                           1944 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:233: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
   1150                    1945 00134$:
   1150 E5 46              1946 	mov	a,_USB0ADR
   1152 20 E7 FB           1947 	jb	acc.7,00134$
   1155 75 46 11           1948 	mov	_USB0ADR,#0x11
   1158 75 47 48           1949 	mov	_USB0DAT,#0x48
                    018A   1950 	C$USBStandardRequests.c$237$3$1 ==.
                    018A   1951 	XG$Clear_Feature$0$0 ==.
   115B 22                 1952 	ret
                           1953 ;------------------------------------------------------------
                           1954 ;Allocation info for local variables in function 'Set_Feature'
                           1955 ;------------------------------------------------------------
                           1956 ;------------------------------------------------------------
                    018B   1957 	G$Set_Feature$0$0 ==.
                    018B   1958 	C$USBStandardRequests.c$250$3$1 ==.
                           1959 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:250: void Set_Feature(void)                          
                           1960 ;	-----------------------------------------
                           1961 ;	 function Set_Feature
                           1962 ;	-----------------------------------------
   115C                    1963 _Set_Feature:
                    018B   1964 	C$USBStandardRequests.c$253$1$1 ==.
                           1965 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:253: if ((USB_State != DEV_CONFIGURED)          ||// Make sure device is configured, setup data
   115C 74 04              1966 	mov	a,#0x04
   115E B5 21 1A           1967 	cjne	a,_USB_State,00122$
                    0190   1968 	C$USBStandardRequests.c$254$1$1 ==.
                           1969 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:254: (Setup.bmRequestType == IN_DEVICE)         ||// is all valid and that request is directed at
   1161 E5 22              1970 	mov	a,_Setup
   1163 FA                 1971 	mov	r2,a
   1164 60 15              1972 	jz	00122$
                    0195   1973 	C$USBStandardRequests.c$255$1$1 ==.
                           1974 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:255: (Setup.bmRequestType == IN_INTERFACE)      ||// an endpoint
   1166 BA 01 02           1975 	cjne	r2,#0x01,00165$
   1169 80 10              1976 	sjmp	00122$
   116B                    1977 00165$:
                    019A   1978 	C$USBStandardRequests.c$256$1$1 ==.
                           1979 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:256: Setup.wValue.c[MSB]  || Setup.wIndex.c[MSB]||
   116B E5 24              1980 	mov	a,(_Setup + 0x0002)
   116D 70 0C              1981 	jnz	00122$
   116F E5 26              1982 	mov	a,(_Setup + 0x0004)
   1171 70 08              1983 	jnz	00122$
                    01A2   1984 	C$USBStandardRequests.c$257$1$1 ==.
                           1985 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:257: Setup.wLength.c[MSB] || Setup.wLength.c[LSB])
   1173 E5 28              1986 	mov	a,(_Setup + 0x0006)
   1175 70 04              1987 	jnz	00122$
   1177 E5 29              1988 	mov	a,(_Setup + 0x0007)
   1179 60 05              1989 	jz	00123$
   117B                    1990 00122$:
                    01AA   1991 	C$USBStandardRequests.c$259$2$2 ==.
                           1992 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:259: Force_Stall();                            // Otherwise send stall to host
   117B 12 0F B7           1993 	lcall	_Force_Stall
   117E 80 53              1994 	sjmp	00131$
   1180                    1995 00123$:
                    01AF   1996 	C$USBStandardRequests.c$264$2$3 ==.
                           1997 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:264: if ((Setup.bmRequestType == IN_ENDPOINT)&&// Make sure endpoint exists and that halt
   1180 74 02              1998 	mov	a,#0x02
   1182 B5 22 4B           1999 	cjne	a,_Setup,00117$
                    01B4   2000 	C$USBStandardRequests.c$265$2$3 ==.
                           2001 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:265: (Setup.wValue.c[LSB] == ENDPOINT_HALT)  &&// endpoint feature is selected
   1185 E5 25              2002 	mov	a,(_Setup + 0x0003)
   1187 70 47              2003 	jnz	00117$
                    01B8   2004 	C$USBStandardRequests.c$266$2$3 ==.
                           2005 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:266: ((Setup.wIndex.c[LSB] == IN_EP1)        ||
   1189 74 81              2006 	mov	a,#0x81
   118B B5 27 02           2007 	cjne	a,(_Setup + 0x0005),00173$
   118E 80 05              2008 	sjmp	00116$
   1190                    2009 00173$:
                    01BF   2010 	C$USBStandardRequests.c$267$2$3 ==.
                           2011 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:267: (Setup.wIndex.c[LSB] == OUT_EP2)))
   1190 74 02              2012 	mov	a,#0x02
   1192 B5 27 3B           2013 	cjne	a,(_Setup + 0x0005),00117$
   1195                    2014 00116$:
                    01C4   2015 	C$USBStandardRequests.c$269$3$4 ==.
                           2016 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:269: if (Setup.wIndex.c[LSB] == IN_EP1)
   1195 74 81              2017 	mov	a,#0x81
   1197 B5 27 1B           2018 	cjne	a,(_Setup + 0x0005),00107$
                    01C9   2019 	C$USBStandardRequests.c$271$4$5 ==.
                           2020 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:271: POLL_WRITE_BYTE (INDEX, 1);         // Set feature endpoint 1 halt
   119A                    2021 00101$:
   119A E5 46              2022 	mov	a,_USB0ADR
   119C 20 E7 FB           2023 	jb	acc.7,00101$
   119F 75 46 0E           2024 	mov	_USB0ADR,#0x0E
   11A2 75 47 01           2025 	mov	_USB0DAT,#0x01
                    01D4   2026 	C$USBStandardRequests.c$272$4$5 ==.
                           2027 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:272: POLL_WRITE_BYTE (EINCSR1, rbInSDSTL);
   11A5                    2028 00104$:
   11A5 E5 46              2029 	mov	a,_USB0ADR
   11A7 20 E7 FB           2030 	jb	acc.7,00104$
   11AA 75 46 11           2031 	mov	_USB0ADR,#0x11
   11AD 75 47 10           2032 	mov	_USB0DAT,#0x10
                    01DF   2033 	C$USBStandardRequests.c$273$4$5 ==.
                           2034 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:273: Ep_Status[1] = EP_HALT;
   11B0 75 32 03           2035 	mov	(_Ep_Status + 0x0001),#0x03
                    01E2   2036 	C$USBStandardRequests.c$277$4$8 ==.
                           2037 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:277: POLL_WRITE_BYTE (INDEX, 2);         // Set feature Ep2 halt
   11B3 80 1E              2038 	sjmp	00131$
   11B5                    2039 00107$:
   11B5 E5 46              2040 	mov	a,_USB0ADR
   11B7 20 E7 FB           2041 	jb	acc.7,00107$
   11BA 75 46 0E           2042 	mov	_USB0ADR,#0x0E
   11BD 75 47 02           2043 	mov	_USB0DAT,#0x02
                    01EF   2044 	C$USBStandardRequests.c$278$4$8 ==.
                           2045 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:278: POLL_WRITE_BYTE (EOUTCSR1, rbOutSDSTL);
   11C0                    2046 00110$:
   11C0 E5 46              2047 	mov	a,_USB0ADR
   11C2 20 E7 FB           2048 	jb	acc.7,00110$
   11C5 75 46 14           2049 	mov	_USB0ADR,#0x14
   11C8 75 47 20           2050 	mov	_USB0DAT,#0x20
                    01FA   2051 	C$USBStandardRequests.c$279$4$8 ==.
                           2052 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:279: Ep_Status[2] = EP_HALT;
   11CB 75 33 03           2053 	mov	(_Ep_Status + 0x0002),#0x03
   11CE 80 03              2054 	sjmp	00131$
   11D0                    2055 00117$:
                    01FF   2056 	C$USBStandardRequests.c$284$3$11 ==.
                           2057 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:284: Force_Stall();                         // Send procedural stall
   11D0 12 0F B7           2058 	lcall	_Force_Stall
                    0202   2059 	C$USBStandardRequests.c$287$1$1 ==.
                           2060 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:287: POLL_WRITE_BYTE(INDEX, 0);
   11D3                    2061 00131$:
   11D3 E5 46              2062 	mov	a,_USB0ADR
   11D5 20 E7 FB           2063 	jb	acc.7,00131$
   11D8 75 46 0E           2064 	mov	_USB0ADR,#0x0E
   11DB 75 47 00           2065 	mov	_USB0DAT,#0x00
                    020D   2066 	C$USBStandardRequests.c$288$1$1 ==.
                           2067 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:288: if (Ep_Status[0] != EP_STALL)
   11DE 74 04              2068 	mov	a,#0x04
   11E0 B5 31 01           2069 	cjne	a,_Ep_Status,00183$
   11E3 22                 2070 	ret
   11E4                    2071 00183$:
                    0213   2072 	C$USBStandardRequests.c$290$2$13 ==.
                           2073 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:290: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
   11E4                    2074 00134$:
   11E4 E5 46              2075 	mov	a,_USB0ADR
   11E6 20 E7 FB           2076 	jb	acc.7,00134$
   11E9 75 46 11           2077 	mov	_USB0ADR,#0x11
   11EC 75 47 48           2078 	mov	_USB0DAT,#0x48
                    021E   2079 	C$USBStandardRequests.c$293$3$1 ==.
                    021E   2080 	XG$Set_Feature$0$0 ==.
   11EF 22                 2081 	ret
                           2082 ;------------------------------------------------------------
                           2083 ;Allocation info for local variables in function 'Set_Address'
                           2084 ;------------------------------------------------------------
                           2085 ;------------------------------------------------------------
                    021F   2086 	G$Set_Address$0$0 ==.
                    021F   2087 	C$USBStandardRequests.c$306$3$1 ==.
                           2088 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:306: void Set_Address(void)                          
                           2089 ;	-----------------------------------------
                           2090 ;	 function Set_Address
                           2091 ;	-----------------------------------------
   11F0                    2092 _Set_Address:
                    021F   2093 	C$USBStandardRequests.c$308$1$1 ==.
                           2094 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:308: if ((Setup.bmRequestType != IN_DEVICE)     ||// Request must be directed to device
   11F0 E5 22              2095 	mov	a,_Setup
   11F2 70 19              2096 	jnz	00101$
                    0223   2097 	C$USBStandardRequests.c$309$1$1 ==.
                           2098 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:309: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// with index and length set to zero.
   11F4 E5 26              2099 	mov	a,(_Setup + 0x0004)
   11F6 70 15              2100 	jnz	00101$
   11F8 E5 27              2101 	mov	a,(_Setup + 0x0005)
   11FA 70 11              2102 	jnz	00101$
                    022B   2103 	C$USBStandardRequests.c$310$1$1 ==.
                           2104 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:310: Setup.wLength.c[MSB] || Setup.wLength.c[LSB]||
   11FC E5 28              2105 	mov	a,(_Setup + 0x0006)
   11FE 70 0D              2106 	jnz	00101$
   1200 E5 29              2107 	mov	a,(_Setup + 0x0007)
   1202 70 09              2108 	jnz	00101$
                    0233   2109 	C$USBStandardRequests.c$311$1$1 ==.
                           2110 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:311: Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] & 0x80))
   1204 E5 24              2111 	mov	a,(_Setup + 0x0002)
   1206 70 05              2112 	jnz	00101$
   1208 E5 25              2113 	mov	a,(_Setup + 0x0003)
   120A 30 E7 03           2114 	jnb	acc.7,00102$
   120D                    2115 00101$:
                    023C   2116 	C$USBStandardRequests.c$313$2$2 ==.
                           2117 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:313: Force_Stall();                             // Send stall if setup data invalid
   120D 12 0F B7           2118 	lcall	_Force_Stall
   1210                    2119 00102$:
                    023F   2120 	C$USBStandardRequests.c$316$1$1 ==.
                           2121 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:316: Ep_Status[0] = EP_ADDRESS;                   // Set endpoint zero to update address next status phase
   1210 75 31 05           2122 	mov	_Ep_Status,#0x05
                    0242   2123 	C$USBStandardRequests.c$317$1$1 ==.
                           2124 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:317: if (Setup.wValue.c[LSB] != 0)
   1213 E5 25              2125 	mov	a,(_Setup + 0x0003)
   1215 60 05              2126 	jz	00110$
                    0246   2127 	C$USBStandardRequests.c$319$2$3 ==.
                           2128 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:319: USB_State = DEV_ADDRESS;                  // Indicate that device state is now address
   1217 75 21 03           2129 	mov	_USB_State,#0x03
   121A 80 03              2130 	sjmp	00111$
   121C                    2131 00110$:
                    024B   2132 	C$USBStandardRequests.c$323$2$4 ==.
                           2133 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:323: USB_State = DEV_DEFAULT;                  // If new address was 0x00, return device to default
   121C 75 21 02           2134 	mov	_USB_State,#0x02
   121F                    2135 00111$:
                    024E   2136 	C$USBStandardRequests.c$325$1$1 ==.
                           2137 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:325: if (Ep_Status[0] != EP_STALL)
   121F 74 04              2138 	mov	a,#0x04
   1221 B5 31 01           2139 	cjne	a,_Ep_Status,00136$
   1224 22                 2140 	ret
   1225                    2141 00136$:
                    0254   2142 	C$USBStandardRequests.c$327$2$5 ==.
                           2143 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:327: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
   1225                    2144 00112$:
   1225 E5 46              2145 	mov	a,_USB0ADR
   1227 20 E7 FB           2146 	jb	acc.7,00112$
   122A 75 46 11           2147 	mov	_USB0ADR,#0x11
   122D 75 47 48           2148 	mov	_USB0DAT,#0x48
                    025F   2149 	C$USBStandardRequests.c$330$3$1 ==.
                    025F   2150 	XG$Set_Address$0$0 ==.
   1230 22                 2151 	ret
                           2152 ;------------------------------------------------------------
                           2153 ;Allocation info for local variables in function 'Get_Descriptor'
                           2154 ;------------------------------------------------------------
                           2155 ;------------------------------------------------------------
                    0260   2156 	G$Get_Descriptor$0$0 ==.
                    0260   2157 	C$USBStandardRequests.c$344$3$1 ==.
                           2158 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:344: void Get_Descriptor(void)                       
                           2159 ;	-----------------------------------------
                           2160 ;	 function Get_Descriptor
                           2161 ;	-----------------------------------------
   1231                    2162 _Get_Descriptor:
                    0260   2163 	C$USBStandardRequests.c$347$1$1 ==.
                           2164 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:347: switch(Setup.wValue.c[MSB])                  // Determine which type of descriptor
   1231 E5 24              2165 	mov	a,(_Setup + 0x0002)
   1233 FA                 2166 	mov	r2,a
   1234 24 FA              2167 	add	a,#0xff - 0x05
   1236 50 03              2168 	jnc	00142$
   1238 02 13 0F           2169 	ljmp	00113$
   123B                    2170 00142$:
   123B EA                 2171 	mov	a,r2
   123C 2A                 2172 	add	a,r2
   123D 2A                 2173 	add	a,r2
   123E 90 12 42           2174 	mov	dptr,#00143$
   1241 73                 2175 	jmp	@a+dptr
   1242                    2176 00143$:
   1242 02 13 0F           2177 	ljmp	00113$
   1245 02 12 54           2178 	ljmp	00101$
   1248 02 12 6B           2179 	ljmp	00102$
   124B 02 12 8F           2180 	ljmp	00103$
   124E 02 12 B7           2181 	ljmp	00104$
   1251 02 12 CD           2182 	ljmp	00105$
                    0283   2183 	C$USBStandardRequests.c$349$2$2 ==.
                           2184 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:349: case DSC_DEVICE:                          // size accordingly
   1254                    2185 00101$:
                    0283   2186 	C$USBStandardRequests.c$350$2$2 ==.
                           2187 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:350: DataPtr = (BYTE*) &DeviceDesc;
   1254 75 2E 10           2188 	mov	_DataPtr,#_DeviceDesc
   1257 75 2F 16           2189 	mov	(_DataPtr + 1),#(_DeviceDesc >> 8)
   125A 75 30 80           2190 	mov	(_DataPtr + 2),#0x80
                    028C   2191 	C$USBStandardRequests.c$351$2$2 ==.
                           2192 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:351: DataSize = DeviceDesc.bLength;
   125D 90 16 10           2193 	mov	dptr,#_DeviceDesc
   1260 E4                 2194 	clr	a
   1261 93                 2195 	movc	a,@a+dptr
   1262 FA                 2196 	mov	r2,a
   1263 8A 2A              2197 	mov	_DataSize,r2
   1265 75 2B 00           2198 	mov	(_DataSize + 1),#0x00
                    0297   2199 	C$USBStandardRequests.c$352$2$2 ==.
                           2200 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:352: break;
   1268 02 13 12           2201 	ljmp	00114$
                    029A   2202 	C$USBStandardRequests.c$354$2$2 ==.
                           2203 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:354: case DSC_CONFIG:
   126B                    2204 00102$:
                    029A   2205 	C$USBStandardRequests.c$355$2$2 ==.
                           2206 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:355: DataPtr = (BYTE*) &ConfigDesc;
   126B 75 2E 22           2207 	mov	_DataPtr,#_ConfigDesc
   126E 75 2F 16           2208 	mov	(_DataPtr + 1),#(_ConfigDesc >> 8)
   1271 75 30 80           2209 	mov	(_DataPtr + 2),#0x80
                    02A3   2210 	C$USBStandardRequests.c$358$2$2 ==.
                           2211 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:358: DataSize = ConfigDesc.wTotalLength.c[MSB] + 256*ConfigDesc.wTotalLength.c[LSB];
   1274 90 16 24           2212 	mov	dptr,#(_ConfigDesc + 0x0002)
   1277 E4                 2213 	clr	a
   1278 93                 2214 	movc	a,@a+dptr
   1279 FA                 2215 	mov	r2,a
   127A 7B 00              2216 	mov	r3,#0x00
   127C 90 16 25           2217 	mov	dptr,#(_ConfigDesc + 0x0003)
   127F E4                 2218 	clr	a
   1280 93                 2219 	movc	a,@a+dptr
   1281 FD                 2220 	mov	r5,a
   1282 7C 00              2221 	mov	r4,#0x00
   1284 EC                 2222 	mov	a,r4
   1285 2A                 2223 	add	a,r2
   1286 F5 2A              2224 	mov	_DataSize,a
   1288 ED                 2225 	mov	a,r5
   1289 3B                 2226 	addc	a,r3
   128A F5 2B              2227 	mov	(_DataSize + 1),a
                    02BB   2228 	C$USBStandardRequests.c$359$2$2 ==.
                           2229 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:359: break;
   128C 02 13 12           2230 	ljmp	00114$
                    02BE   2231 	C$USBStandardRequests.c$361$2$2 ==.
                           2232 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:361: case DSC_STRING:
   128F                    2233 00103$:
                    02BE   2234 	C$USBStandardRequests.c$362$2$2 ==.
                           2235 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:362: DataPtr = StringDescTable[Setup.wValue.c[LSB]];
   128F E5 25              2236 	mov	a,(_Setup + 0x0003)
   1291 75 F0 03           2237 	mov	b,#0x03
   1294 A4                 2238 	mul	ab
   1295 24 90              2239 	add	a,#_StringDescTable
   1297 F8                 2240 	mov	r0,a
   1298 86 2E              2241 	mov	_DataPtr,@r0
   129A 08                 2242 	inc	r0
   129B 86 2F              2243 	mov	(_DataPtr + 1),@r0
   129D 08                 2244 	inc	r0
   129E 86 30              2245 	mov	(_DataPtr + 2),@r0
                    02CF   2246 	C$USBStandardRequests.c$364$2$2 ==.
                           2247 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:364: DataSize = *DataPtr;
   12A0 AA 2E              2248 	mov	r2,_DataPtr
   12A2 AB 2F              2249 	mov	r3,(_DataPtr + 1)
   12A4 AC 30              2250 	mov	r4,(_DataPtr + 2)
   12A6 8A 82              2251 	mov	dpl,r2
   12A8 8B 83              2252 	mov	dph,r3
   12AA 8C F0              2253 	mov	b,r4
   12AC 12 15 65           2254 	lcall	__gptrget
   12AF FA                 2255 	mov	r2,a
   12B0 8A 2A              2256 	mov	_DataSize,r2
   12B2 75 2B 00           2257 	mov	(_DataSize + 1),#0x00
                    02E4   2258 	C$USBStandardRequests.c$365$2$2 ==.
                           2259 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:365: break;
                    02E4   2260 	C$USBStandardRequests.c$367$2$2 ==.
                           2261 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:367: case DSC_INTERFACE:
   12B5 80 5B              2262 	sjmp	00114$
   12B7                    2263 00104$:
                    02E6   2264 	C$USBStandardRequests.c$368$2$2 ==.
                           2265 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:368: DataPtr = (BYTE*) &InterfaceDesc;
   12B7 75 2E 2B           2266 	mov	_DataPtr,#_InterfaceDesc
   12BA 75 2F 16           2267 	mov	(_DataPtr + 1),#(_InterfaceDesc >> 8)
   12BD 75 30 80           2268 	mov	(_DataPtr + 2),#0x80
                    02EF   2269 	C$USBStandardRequests.c$369$2$2 ==.
                           2270 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:369: DataSize = InterfaceDesc.bLength;
   12C0 90 16 2B           2271 	mov	dptr,#_InterfaceDesc
   12C3 E4                 2272 	clr	a
   12C4 93                 2273 	movc	a,@a+dptr
   12C5 FA                 2274 	mov	r2,a
   12C6 8A 2A              2275 	mov	_DataSize,r2
   12C8 75 2B 00           2276 	mov	(_DataSize + 1),#0x00
                    02FA   2277 	C$USBStandardRequests.c$370$2$2 ==.
                           2278 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:370: break;
                    02FA   2279 	C$USBStandardRequests.c$372$2$2 ==.
                           2280 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:372: case DSC_ENDPOINT:
   12CB 80 45              2281 	sjmp	00114$
   12CD                    2282 00105$:
                    02FC   2283 	C$USBStandardRequests.c$373$2$2 ==.
                           2284 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:373: if ((Setup.wValue.c[LSB] == IN_EP1) ||
   12CD 74 81              2285 	mov	a,#0x81
   12CF B5 25 02           2286 	cjne	a,(_Setup + 0x0003),00144$
   12D2 80 05              2287 	sjmp	00109$
   12D4                    2288 00144$:
                    0303   2289 	C$USBStandardRequests.c$374$2$2 ==.
                           2290 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:374: (Setup.wValue.c[LSB] == OUT_EP2))
   12D4 74 02              2291 	mov	a,#0x02
   12D6 B5 25 31           2292 	cjne	a,(_Setup + 0x0003),00110$
   12D9                    2293 00109$:
                    0308   2294 	C$USBStandardRequests.c$376$3$3 ==.
                           2295 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:376: if (Setup.wValue.c[LSB] == IN_EP1)
   12D9 74 81              2296 	mov	a,#0x81
   12DB B5 25 16           2297 	cjne	a,(_Setup + 0x0003),00107$
                    030D   2298 	C$USBStandardRequests.c$378$4$4 ==.
                           2299 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:378: DataPtr = (BYTE*) &Endpoint1Desc;
   12DE 75 2E 34           2300 	mov	_DataPtr,#_Endpoint1Desc
   12E1 75 2F 16           2301 	mov	(_DataPtr + 1),#(_Endpoint1Desc >> 8)
   12E4 75 30 80           2302 	mov	(_DataPtr + 2),#0x80
                    0316   2303 	C$USBStandardRequests.c$379$4$4 ==.
                           2304 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:379: DataSize = Endpoint1Desc.bLength;
   12E7 90 16 34           2305 	mov	dptr,#_Endpoint1Desc
   12EA E4                 2306 	clr	a
   12EB 93                 2307 	movc	a,@a+dptr
   12EC FA                 2308 	mov	r2,a
   12ED 8A 2A              2309 	mov	_DataSize,r2
   12EF 75 2B 00           2310 	mov	(_DataSize + 1),#0x00
   12F2 80 1E              2311 	sjmp	00114$
   12F4                    2312 00107$:
                    0323   2313 	C$USBStandardRequests.c$383$4$5 ==.
                           2314 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:383: DataPtr = (BYTE*) &Endpoint2Desc;
   12F4 75 2E 3B           2315 	mov	_DataPtr,#_Endpoint2Desc
   12F7 75 2F 16           2316 	mov	(_DataPtr + 1),#(_Endpoint2Desc >> 8)
   12FA 75 30 80           2317 	mov	(_DataPtr + 2),#0x80
                    032C   2318 	C$USBStandardRequests.c$384$4$5 ==.
                           2319 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:384: DataSize = Endpoint2Desc.bLength;
   12FD 90 16 3B           2320 	mov	dptr,#_Endpoint2Desc
   1300 E4                 2321 	clr	a
   1301 93                 2322 	movc	a,@a+dptr
   1302 FA                 2323 	mov	r2,a
   1303 8A 2A              2324 	mov	_DataSize,r2
   1305 75 2B 00           2325 	mov	(_DataSize + 1),#0x00
   1308 80 08              2326 	sjmp	00114$
   130A                    2327 00110$:
                    0339   2328 	C$USBStandardRequests.c$389$3$6 ==.
                           2329 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:389: Force_Stall();
   130A 12 0F B7           2330 	lcall	_Force_Stall
                    033C   2331 	C$USBStandardRequests.c$391$2$2 ==.
                           2332 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:391: break;
                    033C   2333 	C$USBStandardRequests.c$393$2$2 ==.
                           2334 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:393: default:
   130D 80 03              2335 	sjmp	00114$
   130F                    2336 00113$:
                    033E   2337 	C$USBStandardRequests.c$394$2$2 ==.
                           2338 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:394: Force_Stall();                         // Send Stall if unsupported request
   130F 12 0F B7           2339 	lcall	_Force_Stall
                    0341   2340 	C$USBStandardRequests.c$396$1$1 ==.
                           2341 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:396: }
   1312                    2342 00114$:
                    0341   2343 	C$USBStandardRequests.c$398$1$1 ==.
                           2344 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:398: if (Setup.wValue.c[MSB] == DSC_DEVICE ||     // Verify that the requested descriptor is
   1312 74 01              2345 	mov	a,#0x01
   1314 B5 24 02           2346 	cjne	a,(_Setup + 0x0002),00149$
   1317 80 1A              2347 	sjmp	00118$
   1319                    2348 00149$:
                    0348   2349 	C$USBStandardRequests.c$399$1$1 ==.
                           2350 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:399: Setup.wValue.c[MSB] == DSC_CONFIG     ||     // valid
   1319 74 02              2351 	mov	a,#0x02
   131B B5 24 02           2352 	cjne	a,(_Setup + 0x0002),00150$
   131E 80 13              2353 	sjmp	00118$
   1320                    2354 00150$:
                    034F   2355 	C$USBStandardRequests.c$400$1$1 ==.
                           2356 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:400: Setup.wValue.c[MSB] == DSC_STRING     ||
   1320 74 03              2357 	mov	a,#0x03
   1322 B5 24 02           2358 	cjne	a,(_Setup + 0x0002),00151$
   1325 80 0C              2359 	sjmp	00118$
   1327                    2360 00151$:
                    0356   2361 	C$USBStandardRequests.c$401$1$1 ==.
                           2362 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:401: Setup.wValue.c[MSB] == DSC_INTERFACE  ||
   1327 74 04              2363 	mov	a,#0x04
   1329 B5 24 02           2364 	cjne	a,(_Setup + 0x0002),00152$
   132C 80 05              2365 	sjmp	00118$
   132E                    2366 00152$:
                    035D   2367 	C$USBStandardRequests.c$402$1$1 ==.
                           2368 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:402: Setup.wValue.c[MSB] == DSC_ENDPOINT)
   132E 74 05              2369 	mov	a,#0x05
   1330 B5 24 17           2370 	cjne	a,(_Setup + 0x0002),00119$
   1333                    2371 00118$:
                    0362   2372 	C$USBStandardRequests.c$404$2$7 ==.
                           2373 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:404: if ((Setup.wLength.c[LSB] < DataSize) &&
   1333 AA 29              2374 	mov	r2,(_Setup + 0x0007)
   1335 7B 00              2375 	mov	r3,#0x00
   1337 C3                 2376 	clr	c
   1338 EA                 2377 	mov	a,r2
   1339 95 2A              2378 	subb	a,_DataSize
   133B EB                 2379 	mov	a,r3
   133C 95 2B              2380 	subb	a,(_DataSize + 1)
   133E 50 0A              2381 	jnc	00119$
                    036F   2382 	C$USBStandardRequests.c$405$2$7 ==.
                           2383 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:405: (Setup.wLength.c[MSB] == 0))
   1340 E5 28              2384 	mov	a,(_Setup + 0x0006)
   1342 70 06              2385 	jnz	00119$
                    0373   2386 	C$USBStandardRequests.c$407$3$8 ==.
                           2387 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:407: DataSize = Setup.wLength.i;       // Send only requested amount of data
   1344 85 28 2A           2388 	mov	_DataSize,(_Setup + 0x0006)
   1347 85 29 2B           2389 	mov	(_DataSize + 1),((_Setup + 0x0006) + 1)
   134A                    2390 00119$:
                    0379   2391 	C$USBStandardRequests.c$410$1$1 ==.
                           2392 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:410: if (Ep_Status[0] != EP_STALL)                // Make sure endpoint not in stall mode
   134A 74 04              2393 	mov	a,#0x04
   134C B5 31 01           2394 	cjne	a,_Ep_Status,00157$
   134F 22                 2395 	ret
   1350                    2396 00157$:
                    037F   2397 	C$USBStandardRequests.c$412$2$9 ==.
                           2398 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:412: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);          // Service Setup Packet
   1350                    2399 00124$:
   1350 E5 46              2400 	mov	a,_USB0ADR
   1352 20 E7 FB           2401 	jb	acc.7,00124$
   1355 75 46 11           2402 	mov	_USB0ADR,#0x11
   1358 75 47 40           2403 	mov	_USB0DAT,#0x40
                    038A   2404 	C$USBStandardRequests.c$413$2$9 ==.
                           2405 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:413: Ep_Status[0] = EP_TX;                      // Put endpoint in transmit mode
   135B 75 31 01           2406 	mov	_Ep_Status,#0x01
                    038D   2407 	C$USBStandardRequests.c$414$2$9 ==.
                           2408 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:414: DataSent = 0;                              // Reset Data Sent counter
   135E E4                 2409 	clr	a
   135F F5 2C              2410 	mov	_DataSent,a
   1361 F5 2D              2411 	mov	(_DataSent + 1),a
                    0392   2412 	C$USBStandardRequests.c$416$2$1 ==.
                    0392   2413 	XG$Get_Descriptor$0$0 ==.
   1363 22                 2414 	ret
                           2415 ;------------------------------------------------------------
                           2416 ;Allocation info for local variables in function 'Get_Configuration'
                           2417 ;------------------------------------------------------------
                           2418 ;------------------------------------------------------------
                    0393   2419 	G$Get_Configuration$0$0 ==.
                    0393   2420 	C$USBStandardRequests.c$429$2$1 ==.
                           2421 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:429: void Get_Configuration(void)                   
                           2422 ;	-----------------------------------------
                           2423 ;	 function Get_Configuration
                           2424 ;	-----------------------------------------
   1364                    2425 _Get_Configuration:
                    0393   2426 	C$USBStandardRequests.c$431$1$1 ==.
                           2427 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:431: if ((Setup.bmRequestType != OUT_DEVICE)    ||// This request must be directed to the device
   1364 74 80              2428 	mov	a,#0x80
   1366 B5 22 1B           2429 	cjne	a,_Setup,00105$
                    0398   2430 	C$USBStandardRequests.c$432$1$1 ==.
                           2431 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:432: Setup.wValue.c[MSB]  || Setup.wValue.c[LSB]||// with value word set to zero
   1369 E5 24              2432 	mov	a,(_Setup + 0x0002)
   136B 70 17              2433 	jnz	00105$
   136D E5 25              2434 	mov	a,(_Setup + 0x0003)
   136F 70 13              2435 	jnz	00105$
                    03A0   2436 	C$USBStandardRequests.c$433$1$1 ==.
                           2437 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:433: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// and index set to zero
   1371 E5 26              2438 	mov	a,(_Setup + 0x0004)
   1373 70 0F              2439 	jnz	00105$
   1375 E5 27              2440 	mov	a,(_Setup + 0x0005)
   1377 70 0B              2441 	jnz	00105$
                    03A8   2442 	C$USBStandardRequests.c$434$1$1 ==.
                           2443 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:434: Setup.wLength.c[MSB] || (Setup.wLength.c[LSB] != 1))// and setup length set to one
   1379 E5 28              2444 	mov	a,(_Setup + 0x0006)
   137B 70 07              2445 	jnz	00105$
   137D 74 01              2446 	mov	a,#0x01
   137F B5 29 02           2447 	cjne	a,(_Setup + 0x0007),00138$
   1382 80 05              2448 	sjmp	00106$
   1384                    2449 00138$:
   1384                    2450 00105$:
                    03B3   2451 	C$USBStandardRequests.c$436$2$2 ==.
                           2452 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:436: Force_Stall();                            // Otherwise send a stall to host
   1384 12 0F B7           2453 	lcall	_Force_Stall
   1387 80 28              2454 	sjmp	00107$
   1389                    2455 00106$:
                    03B8   2456 	C$USBStandardRequests.c$441$2$3 ==.
                           2457 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:441: if (USB_State == DEV_CONFIGURED)          // If the device is configured, then return value 0x01
   1389 74 04              2458 	mov	a,#0x04
   138B B5 21 0F           2459 	cjne	a,_USB_State,00102$
                    03BD   2460 	C$USBStandardRequests.c$443$3$4 ==.
                           2461 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:443: DataPtr = (BYTE*)&ONES_PACKET;
   138E 75 2E 99           2462 	mov	_DataPtr,#_ONES_PACKET
   1391 75 2F 16           2463 	mov	(_DataPtr + 1),#(_ONES_PACKET >> 8)
   1394 75 30 80           2464 	mov	(_DataPtr + 2),#0x80
                    03C6   2465 	C$USBStandardRequests.c$444$3$4 ==.
                           2466 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:444: DataSize = 1;
   1397 75 2A 01           2467 	mov	_DataSize,#0x01
   139A E4                 2468 	clr	a
   139B F5 2B              2469 	mov	(_DataSize + 1),a
   139D                    2470 00102$:
                    03CC   2471 	C$USBStandardRequests.c$446$2$3 ==.
                           2472 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:446: if (USB_State == DEV_ADDRESS)             // If the device is in address state, it is not
   139D 74 03              2473 	mov	a,#0x03
   139F B5 21 0F           2474 	cjne	a,_USB_State,00107$
                    03D1   2475 	C$USBStandardRequests.c$448$3$5 ==.
                           2476 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:448: DataPtr = (BYTE*)&ZERO_PACKET;
   13A2 75 2E 9B           2477 	mov	_DataPtr,#_ZERO_PACKET
   13A5 75 2F 16           2478 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   13A8 75 30 80           2479 	mov	(_DataPtr + 2),#0x80
                    03DA   2480 	C$USBStandardRequests.c$449$3$5 ==.
                           2481 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:449: DataSize = 1;
   13AB 75 2A 01           2482 	mov	_DataSize,#0x01
   13AE E4                 2483 	clr	a
   13AF F5 2B              2484 	mov	(_DataSize + 1),a
   13B1                    2485 00107$:
                    03E0   2486 	C$USBStandardRequests.c$452$1$1 ==.
                           2487 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:452: if (Ep_Status[0] != EP_STALL)
   13B1 74 04              2488 	mov	a,#0x04
   13B3 B5 31 01           2489 	cjne	a,_Ep_Status,00143$
   13B6 22                 2490 	ret
   13B7                    2491 00143$:
                    03E6   2492 	C$USBStandardRequests.c$454$2$6 ==.
                           2493 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:454: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Out Packet bit
   13B7                    2494 00114$:
   13B7 E5 46              2495 	mov	a,_USB0ADR
   13B9 20 E7 FB           2496 	jb	acc.7,00114$
   13BC 75 46 11           2497 	mov	_USB0ADR,#0x11
   13BF 75 47 40           2498 	mov	_USB0DAT,#0x40
                    03F1   2499 	C$USBStandardRequests.c$455$2$6 ==.
                           2500 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:455: Ep_Status[0] = EP_TX;                     // Put endpoint into transmit mode
   13C2 75 31 01           2501 	mov	_Ep_Status,#0x01
                    03F4   2502 	C$USBStandardRequests.c$456$2$6 ==.
                           2503 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:456: DataSent = 0;                             // Reset Data Sent counter to zero
   13C5 E4                 2504 	clr	a
   13C6 F5 2C              2505 	mov	_DataSent,a
   13C8 F5 2D              2506 	mov	(_DataSent + 1),a
                    03F9   2507 	C$USBStandardRequests.c$458$2$1 ==.
                    03F9   2508 	XG$Get_Configuration$0$0 ==.
   13CA 22                 2509 	ret
                           2510 ;------------------------------------------------------------
                           2511 ;Allocation info for local variables in function 'Set_Configuration'
                           2512 ;------------------------------------------------------------
                           2513 ;------------------------------------------------------------
                    03FA   2514 	G$Set_Configuration$0$0 ==.
                    03FA   2515 	C$USBStandardRequests.c$471$2$1 ==.
                           2516 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:471: void Set_Configuration(void)                   
                           2517 ;	-----------------------------------------
                           2518 ;	 function Set_Configuration
                           2519 ;	-----------------------------------------
   13CB                    2520 _Set_Configuration:
                    03FA   2521 	C$USBStandardRequests.c$474$1$1 ==.
                           2522 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:474: if ((USB_State == DEV_DEFAULT)             ||// Device must be addressed before configured
   13CB 74 02              2523 	mov	a,#0x02
   13CD B5 21 02           2524 	cjne	a,_USB_State,00146$
   13D0 80 1E              2525 	sjmp	00113$
   13D2                    2526 00146$:
                    0401   2527 	C$USBStandardRequests.c$475$1$1 ==.
                           2528 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:475: (Setup.bmRequestType != IN_DEVICE)         ||// and request recipient must be the device
   13D2 E5 22              2529 	mov	a,_Setup
   13D4 70 1A              2530 	jnz	00113$
                    0405   2531 	C$USBStandardRequests.c$476$1$1 ==.
                           2532 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:476: Setup.wIndex.c[MSB]  || Setup.wIndex.c[LSB]||// the index and length words must be zero
   13D6 E5 26              2533 	mov	a,(_Setup + 0x0004)
   13D8 70 16              2534 	jnz	00113$
   13DA E5 27              2535 	mov	a,(_Setup + 0x0005)
   13DC 70 12              2536 	jnz	00113$
                    040D   2537 	C$USBStandardRequests.c$477$1$1 ==.
                           2538 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:477: Setup.wLength.c[MSB] || Setup.wLength.c[LSB] ||
   13DE E5 28              2539 	mov	a,(_Setup + 0x0006)
   13E0 70 0E              2540 	jnz	00113$
   13E2 E5 29              2541 	mov	a,(_Setup + 0x0007)
   13E4 70 0A              2542 	jnz	00113$
                    0415   2543 	C$USBStandardRequests.c$478$1$1 ==.
                           2544 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:478: Setup.wValue.c[MSB]  || (Setup.wValue.c[LSB] > 1))// This software only supports config = 0,1
   13E6 E5 24              2545 	mov	a,(_Setup + 0x0002)
   13E8 70 06              2546 	jnz	00113$
   13EA E5 25              2547 	mov	a,(_Setup + 0x0003)
   13EC 24 FE              2548 	add	a,#0xff - 0x01
   13EE 50 05              2549 	jnc	00114$
   13F0                    2550 00113$:
                    041F   2551 	C$USBStandardRequests.c$480$2$2 ==.
                           2552 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:480: Force_Stall();                            // Send stall if setup data is invalid
   13F0 12 0F B7           2553 	lcall	_Force_Stall
   13F3 80 3C              2554 	sjmp	00115$
   13F5                    2555 00114$:
                    0424   2556 	C$USBStandardRequests.c$485$2$3 ==.
                           2557 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:485: if (Setup.wValue.c[LSB] > 0)              // Any positive configuration request
   13F5 E5 25              2558 	mov	a,(_Setup + 0x0003)
   13F7 60 2F              2559 	jz	00111$
                    0428   2560 	C$USBStandardRequests.c$487$3$4 ==.
                           2561 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:487: USB_State = DEV_CONFIGURED;
   13F9 75 21 04           2562 	mov	_USB_State,#0x04
                    042B   2563 	C$USBStandardRequests.c$488$3$4 ==.
                           2564 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:488: Ep_Status[1] = EP_IDLE;                // Set endpoint status to idle (enabled)
   13FC 75 32 00           2565 	mov	(_Ep_Status + 0x0001),#0x00
                    042E   2566 	C$USBStandardRequests.c$489$3$4 ==.
                           2567 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:489: Ep_Status[2] = EP_IDLE;
   13FF 75 33 00           2568 	mov	(_Ep_Status + 0x0002),#0x00
                    0431   2569 	C$USBStandardRequests.c$490$3$4 ==.
                           2570 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:490: POLL_WRITE_BYTE(INDEX, 1);             // Change index to endpoint 1
   1402                    2571 00101$:
   1402 E5 46              2572 	mov	a,_USB0ADR
   1404 20 E7 FB           2573 	jb	acc.7,00101$
   1407 75 46 0E           2574 	mov	_USB0ADR,#0x0E
   140A 75 47 01           2575 	mov	_USB0DAT,#0x01
                    043C   2576 	C$USBStandardRequests.c$491$3$4 ==.
                           2577 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:491: POLL_WRITE_BYTE(EINCSR2, rbInDIRSEL);  // Set DIRSEL to indicate endpoint 1 is IN
   140D                    2578 00104$:
   140D E5 46              2579 	mov	a,_USB0ADR
   140F 20 E7 FB           2580 	jb	acc.7,00104$
   1412 75 46 12           2581 	mov	_USB0ADR,#0x12
   1415 75 47 20           2582 	mov	_USB0DAT,#0x20
                    0447   2583 	C$USBStandardRequests.c$492$3$4 ==.
                           2584 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:492: Handle_In1();                          // Put first data packet on fifo
   1418 12 0C 52           2585 	lcall	_Handle_In1
                    044A   2586 	C$USBStandardRequests.c$493$3$4 ==.
                           2587 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:493: POLL_WRITE_BYTE(INDEX, 0);             // Set index back to endpoint 0
   141B                    2588 00107$:
   141B E5 46              2589 	mov	a,_USB0ADR
   141D 20 E7 FB           2590 	jb	acc.7,00107$
   1420 75 46 0E           2591 	mov	_USB0ADR,#0x0E
   1423 75 47 00           2592 	mov	_USB0DAT,#0x00
   1426 80 09              2593 	sjmp	00115$
   1428                    2594 00111$:
                    0457   2595 	C$USBStandardRequests.c$497$3$8 ==.
                           2596 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:497: USB_State = DEV_ADDRESS;               // Unconfigures device by setting state to
   1428 75 21 03           2597 	mov	_USB_State,#0x03
                    045A   2598 	C$USBStandardRequests.c$498$3$8 ==.
                           2599 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:498: Ep_Status[1] = EP_HALT;                // address, and changing endpoint 1 and 2
   142B 75 32 03           2600 	mov	(_Ep_Status + 0x0001),#0x03
                    045D   2601 	C$USBStandardRequests.c$499$3$8 ==.
                           2602 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:499: Ep_Status[2] = EP_HALT;                // status to halt
   142E 75 33 03           2603 	mov	(_Ep_Status + 0x0002),#0x03
   1431                    2604 00115$:
                    0460   2605 	C$USBStandardRequests.c$502$1$1 ==.
                           2606 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:502: if (Ep_Status[0] != EP_STALL)
   1431 74 04              2607 	mov	a,#0x04
   1433 B5 31 01           2608 	cjne	a,_Ep_Status,00158$
   1436 22                 2609 	ret
   1437                    2610 00158$:
                    0466   2611 	C$USBStandardRequests.c$504$2$9 ==.
                           2612 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:504: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));
   1437                    2613 00123$:
   1437 E5 46              2614 	mov	a,_USB0ADR
   1439 20 E7 FB           2615 	jb	acc.7,00123$
   143C 75 46 11           2616 	mov	_USB0ADR,#0x11
   143F 75 47 48           2617 	mov	_USB0DAT,#0x48
                    0471   2618 	C$USBStandardRequests.c$507$3$1 ==.
                    0471   2619 	XG$Set_Configuration$0$0 ==.
   1442 22                 2620 	ret
                           2621 ;------------------------------------------------------------
                           2622 ;Allocation info for local variables in function 'Get_Interface'
                           2623 ;------------------------------------------------------------
                           2624 ;------------------------------------------------------------
                    0472   2625 	G$Get_Interface$0$0 ==.
                    0472   2626 	C$USBStandardRequests.c$521$3$1 ==.
                           2627 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:521: void Get_Interface(void)                        
                           2628 ;	-----------------------------------------
                           2629 ;	 function Get_Interface
                           2630 ;	-----------------------------------------
   1443                    2631 _Get_Interface:
                    0472   2632 	C$USBStandardRequests.c$524$1$1 ==.
                           2633 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:524: if ((USB_State != DEV_CONFIGURED)      ||    // If device is not configured
   1443 74 04              2634 	mov	a,#0x04
   1445 B5 21 20           2635 	cjne	a,_USB_State,00101$
                    0477   2636 	C$USBStandardRequests.c$525$1$1 ==.
                           2637 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:525: (Setup.bmRequestType != OUT_INTERFACE) ||    // or recipient is not an interface
   1448 74 81              2638 	mov	a,#0x81
   144A B5 22 1B           2639 	cjne	a,_Setup,00101$
                    047C   2640 	C$USBStandardRequests.c$526$1$1 ==.
                           2641 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:526: Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||// or non-zero value or index fields
   144D E5 24              2642 	mov	a,(_Setup + 0x0002)
   144F 70 17              2643 	jnz	00101$
   1451 E5 25              2644 	mov	a,(_Setup + 0x0003)
   1453 70 13              2645 	jnz	00101$
                    0484   2646 	C$USBStandardRequests.c$527$1$1 ==.
                           2647 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:527: Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB] ||// or data length not equal to one
   1455 E5 26              2648 	mov	a,(_Setup + 0x0004)
   1457 70 0F              2649 	jnz	00101$
   1459 E5 27              2650 	mov	a,(_Setup + 0x0005)
   145B 70 0B              2651 	jnz	00101$
                    048C   2652 	C$USBStandardRequests.c$528$1$1 ==.
                           2653 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:528: Setup.wLength.c[MSB] ||(Setup.wLength.c[LSB] != 1))
   145D E5 28              2654 	mov	a,(_Setup + 0x0006)
   145F 70 07              2655 	jnz	00101$
   1461 74 01              2656 	mov	a,#0x01
   1463 B5 29 02           2657 	cjne	a,(_Setup + 0x0007),00136$
   1466 80 05              2658 	sjmp	00102$
   1468                    2659 00136$:
   1468                    2660 00101$:
                    0497   2661 	C$USBStandardRequests.c$530$2$2 ==.
                           2662 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:530: Force_Stall();                            // Then return stall due to invalid request
   1468 12 0F B7           2663 	lcall	_Force_Stall
   146B 80 0F              2664 	sjmp	00103$
   146D                    2665 00102$:
                    049C   2666 	C$USBStandardRequests.c$535$2$3 ==.
                           2667 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:535: DataPtr = (BYTE*)&ZERO_PACKET;            // Otherwise, return 0x00 to host
   146D 75 2E 9B           2668 	mov	_DataPtr,#_ZERO_PACKET
   1470 75 2F 16           2669 	mov	(_DataPtr + 1),#(_ZERO_PACKET >> 8)
   1473 75 30 80           2670 	mov	(_DataPtr + 2),#0x80
                    04A5   2671 	C$USBStandardRequests.c$536$2$3 ==.
                           2672 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:536: DataSize = 1;
   1476 75 2A 01           2673 	mov	_DataSize,#0x01
   1479 E4                 2674 	clr	a
   147A F5 2B              2675 	mov	(_DataSize + 1),a
   147C                    2676 00103$:
                    04AB   2677 	C$USBStandardRequests.c$538$1$1 ==.
                           2678 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:538: if (Ep_Status[0] != EP_STALL)
   147C 74 04              2679 	mov	a,#0x04
   147E B5 31 01           2680 	cjne	a,_Ep_Status,00137$
   1481 22                 2681 	ret
   1482                    2682 00137$:
                    04B1   2683 	C$USBStandardRequests.c$540$2$4 ==.
                           2684 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:540: POLL_WRITE_BYTE(E0CSR, rbSOPRDY);         // Set Serviced Setup packet, put endpoint in transmit
   1482                    2685 00111$:
   1482 E5 46              2686 	mov	a,_USB0ADR
   1484 20 E7 FB           2687 	jb	acc.7,00111$
   1487 75 46 11           2688 	mov	_USB0ADR,#0x11
   148A 75 47 40           2689 	mov	_USB0DAT,#0x40
                    04BC   2690 	C$USBStandardRequests.c$541$2$4 ==.
                           2691 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:541: Ep_Status[0] = EP_TX;                     // mode and reset Data sent counter
   148D 75 31 01           2692 	mov	_Ep_Status,#0x01
                    04BF   2693 	C$USBStandardRequests.c$542$2$4 ==.
                           2694 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:542: DataSent = 0;
   1490 E4                 2695 	clr	a
   1491 F5 2C              2696 	mov	_DataSent,a
   1493 F5 2D              2697 	mov	(_DataSent + 1),a
                    04C4   2698 	C$USBStandardRequests.c$544$2$1 ==.
                    04C4   2699 	XG$Get_Interface$0$0 ==.
   1495 22                 2700 	ret
                           2701 ;------------------------------------------------------------
                           2702 ;Allocation info for local variables in function 'Set_Interface'
                           2703 ;------------------------------------------------------------
                           2704 ;------------------------------------------------------------
                    04C5   2705 	G$Set_Interface$0$0 ==.
                    04C5   2706 	C$USBStandardRequests.c$557$2$1 ==.
                           2707 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:557: void Set_Interface(void)
                           2708 ;	-----------------------------------------
                           2709 ;	 function Set_Interface
                           2710 ;	-----------------------------------------
   1496                    2711 _Set_Interface:
                    04C5   2712 	C$USBStandardRequests.c$562$1$1 ==.
                           2713 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:562: if ((Setup.bmRequestType != IN_INTERFACE)  ||
   1496 74 01              2714 	mov	a,#0x01
   1498 B5 22 18           2715 	cjne	a,_Setup,00101$
                    04CA   2716 	C$USBStandardRequests.c$563$1$1 ==.
                           2717 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:563: Setup.wLength.c[MSB] ||Setup.wLength.c[LSB]|| 
   149B E5 28              2718 	mov	a,(_Setup + 0x0006)
   149D 70 14              2719 	jnz	00101$
   149F E5 29              2720 	mov	a,(_Setup + 0x0007)
   14A1 70 10              2721 	jnz	00101$
                    04D2   2722 	C$USBStandardRequests.c$564$1$1 ==.
                           2723 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:564: Setup.wValue.c[MSB]  ||Setup.wValue.c[LSB] ||
   14A3 E5 24              2724 	mov	a,(_Setup + 0x0002)
   14A5 70 0C              2725 	jnz	00101$
   14A7 E5 25              2726 	mov	a,(_Setup + 0x0003)
   14A9 70 08              2727 	jnz	00101$
                    04DA   2728 	C$USBStandardRequests.c$565$1$1 ==.
                           2729 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:565: Setup.wIndex.c[MSB]  ||Setup.wIndex.c[LSB])
   14AB E5 26              2730 	mov	a,(_Setup + 0x0004)
   14AD 70 04              2731 	jnz	00101$
   14AF E5 27              2732 	mov	a,(_Setup + 0x0005)
   14B1 60 03              2733 	jz	00102$
   14B3                    2734 00101$:
                    04E2   2735 	C$USBStandardRequests.c$568$2$2 ==.
                           2736 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:568: Force_Stall();                            
   14B3 12 0F B7           2737 	lcall	_Force_Stall
   14B6                    2738 00102$:
                    04E5   2739 	C$USBStandardRequests.c$570$1$1 ==.
                           2740 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:570: if (Ep_Status[0] != EP_STALL)
   14B6 74 04              2741 	mov	a,#0x04
   14B8 B5 31 01           2742 	cjne	a,_Ep_Status,00132$
   14BB 22                 2743 	ret
   14BC                    2744 00132$:
                    04EB   2745 	C$USBStandardRequests.c$573$2$3 ==.
                           2746 ;	C:\Users\rdherric\Documents\RDH2\Projects\SHArK\trunk\Firmware\USBStandardRequests.c:573: POLL_WRITE_BYTE(E0CSR, (rbSOPRDY | rbDATAEND));                                             
   14BC                    2747 00109$:
   14BC E5 46              2748 	mov	a,_USB0ADR
   14BE 20 E7 FB           2749 	jb	acc.7,00109$
   14C1 75 46 11           2750 	mov	_USB0ADR,#0x11
   14C4 75 47 48           2751 	mov	_USB0DAT,#0x48
                    04F6   2752 	C$USBStandardRequests.c$575$3$1 ==.
                    04F6   2753 	XG$Set_Interface$0$0 ==.
   14C7 22                 2754 	ret
                           2755 	.area CSEG    (CODE)
                           2756 	.area CONST   (CODE)
                    0000   2757 G$ONES_PACKET$0$0 == .
   1699                    2758 _ONES_PACKET:
   1699 01                 2759 	.db #0x01
   169A 00                 2760 	.db #0x00
                    0002   2761 G$ZERO_PACKET$0$0 == .
   169B                    2762 _ZERO_PACKET:
   169B 00                 2763 	.db #0x00
   169C 00                 2764 	.db #0x00
                           2765 	.area XINIT   (CODE)
                           2766 	.area CABS    (ABS,CODE)
