;drakebd-scripts-rust
;v001

;===============================================================================================

;13.03.2014 прикручиваю нормальную автоотдачу
;08.03.2014 А я всетаки введу разделение и версии. гитхаб всетаки. и ридми напишу.
;07.03.2014
;надо бы разделить скрипты для раст и остальные. с другой стороны, больше одновременных скриптов не айс




;===============================================================================================
;1 Directives

	#SingleInstance Force
	#Persistent

;===============================================================================================
;2 Var
;===============================================================================================
;Settings
	
	xhelmet=575		;координаты шлема, зависят от разрешения
	yhelmet=550		;замутить табличку в патче
	clickdelay=225	;задержка мыши в мс при перетаскивании 
					;предметов. если не цепляет надо увеличить
	enterdelay=150	;задержки консоли и чата
	f1delay=300
	SetDefaultMouseSpeed,0	;скорость движения мышки
							; 0 инстант, 1 быстро, 2 медленно.

;Constants
	cellwidth := 75	;ширина клеточек инвентори
					;вроде не зависит от разрешения       

;Calculable




;Counters
	toggle1=1
	chestcolumns=0
	chestrows=0
	inventorycolumn=0
	inventoryrow=0
	c=0	
	hotkey1reloadcounter=0	
	antirecoil=0
	weaproster=-1
	itisnotweapon=0
	rostermode=0
	lasthotkey=1
	
;vars

	currentantirecoil=230
	currentantirecoilzoomed=420
	currentfirerate=40
	currentammovalue=7
	currentreloadrate=2000
	hotkey1weapon=2
	hotkey5weapon=5
	machinegunmode=1
	hotkey1rostermode=5 ; 0 - disabled, 5 - 5 weaps 9 - 9 weaps
	
	; weaponlist
	;0 - unuswitchable item(medkit)
	;1 - not gun
	;2 - m4
	;3 - p250
	;4 - beretta
	;5 - mp5
	;6 - shotgun
	;7 - revolver
	;8 - bolt
	;9 - pipe
	
;===============================================================================================
;===============================================================================================
;func
;===============================================================================================
;===============================================================================================


;===============================================================================================
;weaponsettings      
;===============================================================================================

beretta()
	{
		global 
		itisnotweapon=0
		currentantirecoil=140
		currentantirecoilzoomed=240
		currentfirerate=40
		currentammovalue=11
		currentreloadrate=2000
		SplashTextOn, ,  , beretta
		sleep 150
		SplashTextOff
		return
	}
;===============================================================================================	
mp5()
	{
		global 
		itisnotweapon=0
		currentantirecoil=75
		currentantirecoilzoomed=100
		currentfirerate=130
		currentammovalue=29
		currentreloadrate=3000
		SplashTextOn, ,  , mp5
		sleep 150
		SplashTextOff
		return
	}
;===============================================================================================	
m4()
	{
		global 
		itisnotweapon=0
		currentantirecoil=100
		currentantirecoilzoomed=120
		currentfirerate=140
		currentammovalue=23
		currentreloadrate=3500
		SplashTextOn, ,  , m4
		sleep 150
		SplashTextOff
		return
	}
;===============================================================================================
	
	

	
noweap()
	{
		global 
		itisnotweapon=1
		currentantirecoil=0
		currentantirecoilzoomed=0
		currentfirerate=10
		currentammovalue=999
		currentreloadrate=0
		SplashTextOn, ,  , noweap
		sleep 150
		SplashTextOff
		return
	}		
;===============================================================================================	
p250()
	{
		global 
		itisnotweapon=0
		currentantirecoil=230
		currentantirecoilzoomed=420
		currentfirerate=40
		currentammovalue=7
		currentreloadrate=2000
		SplashTextOn, ,  , p250
		sleep 150
		SplashTextOff
		return
	}	
;===============================================================================================
	; weaponlist
	;0 - unuswitchable item(medkit)
	;1 - not gun
	;2 - m4
	;3 - p250
	;4 - beretta
	;5 - mp5
	;6 - shotgun
	;7 - revolver
	;8 - bolt
	;9 - pipe
	
roster()
{
	global
	weaproster++
	if weaproster = 5
	{
		SplashTextOn, ,  , mp5
		sleep 150
		SplashTextOff
		weaproster=-1
		return	5
	}	
	if weaproster = 0
	{
		SplashTextOn, ,  , medkit
		sleep 150
		SplashTextOff
	}
	if weaproster = 1
	{
		SplashTextOn, ,  , not gun
		sleep 150
		SplashTextOff
	}
	if weaproster = 2
	{
		SplashTextOn, ,  , m4
		sleep 150
		SplashTextOff
	}
	if weaproster = 3
	{
		SplashTextOn, ,  , p250
		sleep 150
		SplashTextOff
	}
	if weaproster = 4
	{
		SplashTextOn, ,  , beretta
		sleep 150
		SplashTextOff
	}
return	weaproster
}
;===============================================================================================
;===============================================================================================
;3 Game binds
;===============================================================================================
;===============================================================================================


 
SetTitleMatchMode, 2	; Make search title in #IfWinActive more flexible

;=================================================================================
; 3.1 Перетаскивалки вещей из ящика(3 на 4 клеток) в инвентори(последние 2 на 6 клеток) и обратно
; У всех кнопок перетаскивания есть одна глобальная настройка - координаты шлема. ее нужно узнать 
; шпионом или попросить у меня и забить в переменные xhelmet  yhelmet в самом верху скрипта
;===========================
;директива если запущен раст
	#IfWinActive PlayRust	
;===========================

;==========
; Из ящика 
;==========

F3::	; Эта кнопка переназначается на любую другую
	chestcolumns=0
	chestrows=0
	inventorycolumn=0
	inventoryrow=3
	с=0
	while chestcolumns<3
	{
		chestrows=0
		while chestrows<4 
		{
			MouseClick, L, xhelmet+675+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  ,  ,  , d
			Sleep clickdelay
			MouseClick, L, xhelmet+225+cellwidth*inventorycolumn , yhelmet+cellwidth*inventoryrow ,  ,  , u
			Sleep 10

			inventorycolumn++
			if inventorycolumn=6
			{
				inventorycolumn=0
				inventoryrow++
			}
			chestrows++
		}
		chestcolumns++
	}

return

;==========
; Из ящика 
;==========

!F3::	; Эта кнопка переназначается на любую другую
	chestcolumns=0
	chestrows=0
	inventorycolumn=0
	inventoryrow=0
	с=0
	while chestcolumns<3
	{
		chestrows=0
		while chestrows<4 
		{
			MouseClick, L, xhelmet+675+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  ,  ,  , d
			Sleep clickdelay
			MouseClick, L, xhelmet+225+cellwidth*inventorycolumn , yhelmet+cellwidth*inventoryrow ,  ,  , u
			Sleep 10

			inventorycolumn++
			if inventorycolumn=6
			{
				inventorycolumn=0
				inventoryrow++
			}
			chestrows++
		}
		chestcolumns++
	}

return
;==============================================================

;==========
; В ящик 
;==========

F4::	; Эта кнопка переназначается на любую другую
	chestcolumns=0
	chestrows=0
	inventorycolumn=0
	inventoryrow=3
	с=0
	while chestcolumns<3
	{
		chestrows=0
		while chestrows<4 
		{
			MouseClick, L,xhelmet+225+cellwidth*inventorycolumn , yhelmet+cellwidth*inventoryrow ,  ,  , d
			Sleep clickdelay
			MouseClick, L, xhelmet+675+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows   ,  ,  , u
			Sleep 10

			inventorycolumn++
			if inventorycolumn=6
			{
				inventorycolumn=0
				inventoryrow++
			}
			chestrows++
		}
		chestcolumns++
	}

return

;===================================================================
; Теперь для раздевания. переносится броня, 6 быстрых слотов и 2 слота из инвентори

;==========
; Из ящика 
;==========

F5::

	chestcolumns=0
	chestrows=0
	c=0
	while chestcolumns<3
	{
		chestrows=0
		while chestrows<4 
		{
			if c<4
			{

				MouseClick, L, xhelmet+675+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , d
				Sleep clickdelay
				MouseClick, L, xhelmet , yhelmet+cellwidth*c , 1 , 1 , u
				Sleep 10
			}
			if (c>3 and c<10)
			{
				MouseClick, L, xhelmet+675+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , d
				Sleep clickdelay
				MouseClick, L, xhelmet+225+cellwidth*(c-4) , yhelmet+400 , 1 , 1 , u
				Sleep 10
			}
			if (c>9)
			{
				MouseClick, L, xhelmet+675+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , d
				Sleep clickdelay
				MouseClick, L, xhelmet+225+150+cellwidth*chestrows , yhelmet+150+cellwidth*chestcolumns , 1 , 1 , u
				Sleep 10
			}
			c++
			chestrows++
		}
		chestcolumns++
	}
	с=0
return


;==============================================================
;==========
; В ящик 
;==========
F6::
	chestcolumns=0
	chestrows=0
	c=0
	while chestcolumns<3
	{
		chestrows=0
		while chestrows<4 
		{
			if c<4
			{
				MouseClick, L, xhelmet , yhelmet+cellwidth*c , 1 , 1 , d
				Sleep clickdelay
				MouseClick, L, xhelmet+675+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , u
				Sleep 10
			}
			if (c>3 and c<10)
			{
				MouseClick, L, xhelmet+225+cellwidth*(c-4) , yhelmet+400   , 1 , 1 , d
				Sleep clickdelay
				MouseClick, L,  xhelmet+675+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , u
				Sleep 10
			}
			if (c>9)
			{
				MouseClick, L,xhelmet+225+150+cellwidth*chestrows , yhelmet+150+cellwidth*chestcolumns   , 1 , 1 , d
				Sleep clickdelay
				MouseClick, L,  xhelmet+675+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows, 1 , 1 , u
				Sleep 10
			}
			c++
			chestrows++
		}
		chestcolumns++
	}
	с=0
return

;===================================================================
;3.2 А теперь чудесные клавиатурные скрипты
;которые настукивают то что нам настукивать лень


;суицид
!F11::		;спрячьте от себя подальше, для меня это альт+ф11
    Send,{F1} 
    SendInput suicide
    Sleep, f1delay
    Send,{Enter}
	Sleep, f1delay
	Send,{F1}
return

F2::
	Send,{Enter} 
	Sleep, enterdelay
	SendInput /location
	Sleep, enterdelay
	Send,{Enter}
return

+F2:: ; добавлю ка я на шифт шоудемедж а на альт ремув
	Send,{Enter} 
	Sleep, enterdelay 
	SendInput /showdamage
	Sleep, enterdelay
	Send,{Enter}

return

!F2::
	Send,{Enter} 
	Sleep, enterdelay
	SendInput /remove
	Sleep, enterdelay
	Send,{Enter}
return
; а на альтшифт шоу май демедж
+!F2:: ; добавлю ка я на шифт шоудемедж а на альт ремув
	Send,{Enter} 
	Sleep, enterdelay 
	SendInput /showmydamage
	Sleep, enterdelay
	Send,{Enter}

return

F7::
 
    Send,{Enter} 
	Sleep, enterdelay
    SendInput /tpr Troyan
    Sleep, enterdelay
    Send,{Enter}
 
    return

F8::
 
    Send,{Enter} 
	Sleep, enterdelay
    SendInput /tpaccept
    Sleep, enterdelay
    Send,{Enter}
 
    return
;================================================================
; Переключение бега

;исходный скрипт, который делает вместо кнопки идти кнопку бежать
;#IfWinActive PlayRust	
;MButton::
;    IfWinActive, PlayRust
;    {
;        SendInput, {LShift Down}
;        SendInput, {w Down}
;        return
;    }
;return
; 
;MButton Up::
;    IfWinActive, PlayRust
;    {
;       SendInput, {LShift Up}
;        SendInput, {w Up}
;        return
;    }
;return

; нормальный скрипт, нажал и бежишь.
; есть проблема - чтоы его отключить надо опять нажать капс
; и нельзя чатиться
; в том числе и консольными командами
; это надо пофиксить.

CapsLock::
if toggle1=1
{
	SendInput, {LShift Down}
	SendInput, {w Down}
	toggle1=0
}
else
{        
	SendInput, {LShift Up}
	SendInput, {w Up}
	toggle1=1
}
return
 

;=================================================================
; ебанутая моргалка фонариком или прицелом
; я имею в виду, переназначение колесика мыши
; помните что вам им еще ящики смотреть
#IfWinActive PlayRust	
~*WheelUp::
 
    Send,{F} 
 
    return
 
~*WheelDown::
 
    Send,{G}
 
    return

; антиотдача

NumpadAdd::
antirecoil+=5
SplashTextOn, ,  , %antirecoil%
sleep 150
SplashTextOff
return
NumpadSub::
antirecoil-=5
SplashTextOn, ,  , %antirecoil%
sleep 150
SplashTextOff
return

;перезарядка
~r::
    hotkey%lasthotkey%reloadcounter=0
return
; ща буду мутить выбор оружия. ох хочется как у людей но придетса по китайски.
; ща буду мутить выбор оружия. ох хочется как у людей но придетса по китайски.
; ща буду мутить выбор оружия. ох хочется как у людей но придетса по китайски.
; ща буду мутить выбор оружия. ох хочется как у людей но придетса по китайски.
; ща буду мутить выбор оружия. ох хочется как у людей но придетса по китайски.
;ростеры настроек горячих клавиш
F9::
hotkey1weapon:=roster()
SplashTextOn, ,  , roster off %weaproster%  %hotkey1weapon%
		sleep 150
		SplashTextOff
return

F10::
hotkey5weapon:=roster()
SplashTextOn, ,  , roster off %weaproster%  %hotkey5weapon%
		sleep 150
		SplashTextOff
return


	; weaponlist
	;0 - unuswitchable item(medkit)
	;1 - not gun
	;2 - m4
	;3 - p250
	;4 - beretta
	;5 - mp5
	;6 - shotgun
	;7 - revolver
	;8 - bolt
	;9 - pipe
~1::
	lasthotkey=1
;	hotkey1reloadcounter=0
		if hotkey1weapon = 0
			noweap()
		if hotkey1weapon = 1
			noweap()
		if hotkey1weapon = 2
			m4()
		if hotkey1weapon = 3
			p250()
		if hotkey1weapon = 4
			beretta()
		if hotkey1weapon = 5
			mp5()
return

~5::
	lasthotkey=5
;	hotkey%lasthotkey%reloadcounter=0
		if hotkey5weapon = 0
			noweap()
		if hotkey5weapon = 1
			noweap()
		if hotkey5weapon = 2
			m4()
		if hotkey5weapon = 3
			p250()
		if hotkey5weapon = 4
			beretta()
		if hotkey5weapon = 5
			mp5()
return
	
	
	
	
Numpad5::
	

	While (GetKeyState("Numpad5","P"))
	{
		GetKeyState, state, RButton
		if state = D
		{
			antirecoil=%currentantirecoilzoomed%
		}
		else 
		{
			antirecoil=%currentantirecoil%  
		}
		DllCall("mouse_event", uint, 1, int, 0, int,antirecoil)
		Send {Blind}{LButton}
    	hotkey%lasthotkey%reloadcounter+=1
		


		if hotkey%lasthotkey%reloadcounter > %currentammovalue%
		{
			if machinegunmode = 1
			{
			Send 5
			lasthotkey=5
					if hotkey5weapon = 0
			noweap()
		if hotkey5weapon = 1
			noweap()
		if hotkey5weapon = 2
			m4()
		if hotkey5weapon = 3
			p250()
		if hotkey5weapon = 4
			beretta()
		if hotkey5weapon = 5
			mp5()
			Sleep 1200
			}
			else
			{
			loop,5
			{
				Send {Insert}
				Sleep 10
			}
			Sleep, %currentreloadrate%
			hotkey%lasthotkey%reloadcounter=0
			}
		}
		Sleep, %currentfirerate%

	}
return






#IfWinActive














                                                                                          