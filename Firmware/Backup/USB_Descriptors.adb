M:USB_Descriptors
T:FUSB_Descriptors$EP0_COMMAND[({0}S:S$bmRequestType$0$0({1}SC:U),Z,0,0)({1}S:S$bRequest$0$0({1}SC:U),Z,0,0)({2}S:S$wValue$0$0({2}ST__00010000:S),Z,0,0)({4}S:S$wIndex$0$0({2}ST__00010000:S),Z,0,0)({6}S:S$wLength$0$0({2}ST__00010000:S),Z,0,0)]
T:FUSB_Descriptors$__00010000[({0}S:S$i$0$0({2}SI:U),Z,0,0)({0}S:S$c$0$0({2}DA2,SC:U),Z,0,0)]
T:FUSB_Descriptors$DESCRIPTORS[({0}S:S$bStdDevDsc$0$0({18}DA18,SC:U),Z,0,0)({18}S:S$bCfg1$0$0({55}DA55,SC:U),Z,0,0)]
T:FUSB_Descriptors$IF_STATUS[({0}S:S$bNumAlts$0$0({1}SC:U),Z,0,0)({1}S:S$bCurrentAlt$0$0({1}SC:U),Z,0,0)({2}S:S$bIfNumber$0$0({1}SC:U),Z,0,0)]
T:FUSB_Descriptors$EP_STATUS[({0}S:S$bEp$0$0({1}SC:U),Z,0,0)({1}S:S$uNumBytes$0$0({2}SI:U),Z,0,0)({3}S:S$uMaxP$0$0({2}SI:U),Z,0,0)({5}S:S$bEpState$0$0({1}SC:U),Z,0,0)({6}S:S$pData$0$0({3}DG,SV:S),Z,0,0)({9}S:S$wData$0$0({2}ST__00010000:S),Z,0,0)]
T:FUSB_Descriptors$DEVICE_STATUS[({0}S:S$bCurrentConfig$0$0({1}SC:U),Z,0,0)({1}S:S$bDevState$0$0({1}SC:U),Z,0,0)({2}S:S$bRemoteWakeupSupport$0$0({1}SC:U),Z,0,0)({3}S:S$bRemoteWakeupStatus$0$0({1}SC:U),Z,0,0)({4}S:S$bSelfPoweredStatus$0$0({1}SC:U),Z,0,0)({5}S:S$bNumInterf$0$0({1}SC:U),Z,0,0)({6}S:S$bTotalInterfDsc$0$0({1}SC:U),Z,0,0)({7}S:S$pConfig$0$0({3}DG,SC:U),Z,0,0)({10}S:S$IfStatus$0$0({3}DA1,STIF_STATUS:S),Z,0,0)]
S:G$gDescriptorMap$0$0({73}STDESCRIPTORS:S),D,0,0
