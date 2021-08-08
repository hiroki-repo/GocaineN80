dim paramptr,64
bload "MEM:ORY",paramptr
#module lexiconbricksplg
#deffunc local lexiconbrickspi
if initive=0{
dupptr sclfuncaddrlist,paramptr@(7),1024,1
}
initive=1
return
#deffunc jstick var prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_1
gosub sclfuncaddrlist(6)
prm_0=stat
return
#deffunc joyGetPosEx array prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_1
lpoke pluginparam(121),0,varptr(prm_0)
gosub sclfuncaddrlist(4)
return
#deffunc pluginload str prm_0
prm_0k=prm_0
lpoke pluginparam(120),0,varptr(prm_0k)
goto sclfuncaddrlist(5)
#defcfunc vmempeek int prm_0
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
goto sclfuncaddrlist(2)
return
#deffunc vmempoke int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
gosub sclfuncaddrlist(3)
return
#deffunc vcpuint int prm_0
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
gosub sclfuncaddrlist(0)
return
#deffunc vcpunmint
gosub sclfuncaddrlist(1)
return
#deffunc arduino_init int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
goto sclfuncaddrlist(7)
#deffunc arduino_bye
goto sclfuncaddrlist(8)
#deffunc arduino_query
goto sclfuncaddrlist(9)
#deffunc delay int prm_0
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
goto sclfuncaddrlist(10)
#deffunc pinmode int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
goto sclfuncaddrlist(11)
#deffunc digitalWrite int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
goto sclfuncaddrlist(12)
#deffunc analogWrite int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
goto sclfuncaddrlist(13)
#defcfunc digitalRead int prm_0
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
goto sclfuncaddrlist(14)
#defcfunc analogRead int prm_0
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
goto sclfuncaddrlist(15)
#deffunc analogReport int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
goto sclfuncaddrlist(16)
#deffunc digitalReport int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
goto sclfuncaddrlist(17)
#deffunc analogInterval int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
goto sclfuncaddrlist(18)
#deffunc arduino_exec
goto sclfuncaddrlist(19)
#defcfunc local __fcn_arduino_error
goto sclfuncaddrlist(20)
#defcfunc local __fcn_arduino_stat
goto sclfuncaddrlist(21)
#defcfunc local __fcn_arduino_ready
goto sclfuncaddrlist(22)
#defcfunc local __fcn_arduino_rx
goto sclfuncaddrlist(23)
#defcfunc viopeek int prm_0
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
goto sclfuncaddrlist(24)
return
#deffunc viopoke int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
gosub sclfuncaddrlist(25)
return
#defcfunc local __fcn_arduino_firm_ver
goto sclfuncaddrlist(26)
#deffunc retioportive int prm_0
dupptr pluginconf,paramptr@(0),128*4,4
if paramptr@(1)=0x11 or paramptr@(1)=0x13{
lpoke pluginconf(4),0,prm_0
lpoke pluginconf(5),0,1
}
return
#defcfunc getioportive
dupptr pluginconf,paramptr@(0),128*4,4
if paramptr@(1)=0x10 or paramptr@(1)=0x12{
return pluginconf(4)
}
return -1
#defcfunc z80stackpeek int prm_0,int prm_1
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
goto sclfuncaddrlist(28)
return
#deffunc z80stackpoke int prm_0,int prm_1,int prm_2
dupptr pluginparam,paramptr@(6),128*4,4
lpoke pluginparam(120),0,prm_0
lpoke pluginparam(121),0,prm_1
lpoke pluginparam(122),0,prm_2
goto sclfuncaddrlist(29)
return
#global
#define arduino_error __fcn_arduino_error@lexiconbricksplg()
#define arduino_stat __fcn_arduino_stat@lexiconbricksplg()
#define arduino_ready __fcn_arduino_ready@lexiconbricksplg()
#define arduino_rx __fcn_arduino_rx@lexiconbricksplg()
#define arduino_firm_ver __fcn_arduino_firm_ver@lexiconbricksplg()
lexiconbrickspi@lexiconbricksplg
entryp paramptr(1)
return
