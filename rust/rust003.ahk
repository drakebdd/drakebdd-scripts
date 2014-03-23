;drakebd-scripts-rust
;v003

;===============================================================================================


;22.03.2014 выделю прицел и бегалку в отдельный файл
;18.03.2014 прикрутил прицел
;14.03.2014 хочу еще версию
;13.03.2014 прикручиваю нормальную автоотдачу
;08.03.2014 А я всетаки введу разделение и версии. гитхаб всетаки. и ридми напишу.
;07.03.2014 надо бы разделить скрипты для раст и остальные. с другой стороны, больше одновременных скриптов не айс













;===============================================================================================
;1 Directives

	#SingleInstance Force
	#Persistent

;===============================================================================================
;2 Var
;===============================================================================================
;Settings
	
	xhelmet=575		;координаты шлема, зависят от разрешения
	yhelmet=550		
	clickdelay=225	;задержка мыши в мс при перетаскивании 
					;предметов. если не цепляет надо увеличить
	enterdelay=150	;задержки консоли и чата
	f1delay=300
	SetDefaultMouseSpeed,0	;скорость движения мышки

yoursense=0.8936728
shootmode=1

;yoursense=4
						; 0 инстант, 1 быстро, 2 медленно.
							
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
;weapon defaults
		hotkey1weapon=2
		hotkey2weapon=0
		hotkey3weapon=0
		hotkey4weapon=0
		hotkey5weapon=0
		hotkey6weapon=4

;Constants
	cellwidth := 75	;ширина клеточек инвентори
					;вроде не зависит от разрешения       
defaultsense=0.8936728
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
	togglecrosshairon=0
	
;vars

	currentantirecoil=0
	currentantirecoilzoomed=0
	currentfirerate=100
	currentammovalue=999
	currentreloadrate=0
resultmove=0
	machinegunmode=1
	hotkey1rostermode=5 ; 0 - disabled, 5 - 5 weaps 9 - 9 weaps
	
Xrust=-9 
Yrust=-9 
Widthrust=1938
Heightrust=1000
	Widthcross=100
Heightcross=100

ListVars
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






F10::
Reload ; перезагрузка скрипта
return


;==========
; Из ящика 
;==========

F3::	
chest2inventory(3)
return


!F3::	
chest2inventory(0)
return

+!F3::
chest2inventory(2)
return
;==============================================================

;==========
; В ящик 
;==========

F4::	
inventory2chest(3)
return

!F4::	
inventory2chest(0)
return

+!F4::	
inventory2chest(2)
return

;===================================================================
; Теперь для раздевания. переносится броня, 6 быстрых слотов и 2 слота из инвентори
;==========
; Из ящика 
;==========
F5::
razdevanie(0)
return

;==========
; В ящик 
;==========
F6::
razdevanie(1)
return
;===================================================================
;3.2 А теперь чудесные клавиатурные скрипты
;которые настукивают то что нам настукивать лень
	
;суицид
+!F1::		;спрячьте от себя подальше, для меня это шифт+альт+ф1
consolesay("suicide")
return

F2::
chatsay("/location")
return

+F2:: 
chatsay("/history")
return

!F2::
chatsay("/remove")
return

+!F2:: 
chatsay("/showmydamage")
Sleep,1000
chatsay("/showdamage")
return

F7::
chatsay("/tpr Troyan")
    return

F8::
chatsay("/tpaccept")
 return
;================================================================
; Переключение бега
;ушло в соседний файл

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



;перезарядка
~r::
    hotkey%lasthotkey%reloadcounter=0
return


;ростеры настроек горячих клавиш
!F7::
hotkey1weapon:=roster()
return
!F8::
hotkey2weapon:=roster()
return
!F9::
hotkey3weapon:=roster()
return
!F10::
hotkey4weapon:=roster()
return
!F11::
hotkey5weapon:=roster()
return
!F12::
hotkey6weapon:=roster()
return
; и они сами
~1::
	lasthotkey=1
weaponnumber2weapon(hotkey1weapon)
return
~2::
	lasthotkey=2
weaponnumber2weapon(hotkey2weapon)
return
~3::
	lasthotkey=3
weaponnumber2weapon(hotkey3weapon)
return
~4::
	lasthotkey=4
weaponnumber2weapon(hotkey4weapon)
return

~5::
	lasthotkey=5
weaponnumber2weapon(hotkey5weapon)
return
~6::
	lasthotkey=6
weaponnumber2weapon(hotkey6weapon)
return
	
	
	
;автоматическая стрельба
Numpad5::
autoshoot()
return
^Numpad5::
autoshoot()
return

; одиночная стрельба

Numpad3::
singleshoot()
return

^Numpad3::
singleshoot()
return
; стрельба с отсечкой по три выстрела
Numpad2::
burstshoot()
return

^Numpad2::
burstshoot()
return

; параметрическая стрельба
Numpad1::
combinedshoot(1)
return
^Numpad1::
combinedshoot(1)
return

		
; подгонка антиотдачи(работает только с shootmode=0)
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



#IfWinActive
;===============================================================================================
;===============================================================================================
;===============================================================================================
;===============================================================================================
;===============================================================================================
;methods
;===============================================================================================
;===============================================================================================
;===============================================================================================
;===============================================================================================
;===============================================================================================



;===============================================================================================
combinedshoot(shootmode)
{
global
if shootmode=0
Send Click
else
if shootmode=1
 singleshoot()
 else
 if shootmode=2
 burstshoot()
  else
   if shootmode=3
 autoshoot()
 return
 }
 ;===============================================================================================
 reloadifnoammo()
 {global
 	if hotkey%lasthotkey%reloadcounter > %currentammovalue%
		{
			if machinegunmode = 5
			{
			Send 5
			lasthotkey=5
			weaponnumber2weapon(hotkey5weapon)
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
 return
 }
 ;===============================================================================================
 zoomdetect()
{global
GetKeyState, state, RButton
		if state = D
		{
			antirecoil=%currentantirecoilzoomed%
		}
		else 
		{
			antirecoil=%currentantirecoil%  
		}
}	
;===============================================================================================
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 ;===============================================================================================
burstshoot()
{global
thishk=%A_ThisHotkey%

loop, 3
{
zoomdetect()
	
		Send {Blind}{LButton}
		DllCall("mouse_event", uint, 1, int, 0, int,antirecoil)
		
    	hotkey%lasthotkey%reloadcounter+=1
 reloadifnoammo()

		Sleep, %currentfirerate%
		
		}
		
		While (GetKeyState(thishk,"P"))
		{
		Sleep 10
		}
	}
	;===============================================================================================
singleshoot()
{global
thishk=%A_ThisHotkey%
zoomdetect()
		Send {Blind}{LButton}
		DllCall("mouse_event", uint, 1, int, 0, int,antirecoil)
		
    	hotkey%lasthotkey%reloadcounter+=1
		
 reloadifnoammo()
		While (GetKeyState(thishk,"P"))
		{
		Sleep 10
		}
	
	
	return	
	}
	;===============================================================================================
autoshoot()
{global
thishk=%A_ThisHotkey%
	While (GetKeyState(thishk,"P"))
	{
zoomdetect()
		Send {Blind}{LButton}
		DllCall("mouse_event", uint, 1, int, 0, int,antirecoil)
		
    	hotkey%lasthotkey%reloadcounter+=1
		
 reloadifnoammo()		
Sleep, %currentfirerate%
		}
		
	
return
}
;===============================================================================================
senseajust(tablemove)
{global
sensecoefficient = %defaultsense%/%yoursense%
resultmove = %tablemove%*%sensecoefficient%
return resultmove
}
;===============================================================================================

;===============================================================================================
CenterWindow(WinTitle)
{
    WinGetPos,,, Width, Height, %WinTitle%
    WinMove, %WinTitle%,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
}

;===============================================================================================
consolesay(whattosay)
{
global
    Send,{F1} 
	Sleep, f1delay
    SendInput, %whattosay%
    Sleep, f1delay
    Send,{Enter}
	Sleep, f1delay
	Send,{F1}
	return
	}
;===============================================================================================
chatsay(whattosay)
	{
	global
		Send,{Enter} 
	Sleep, enterdelay
	SendInput %whattosay%
	Sleep, enterdelay
	Send,{Enter}
	return
	}
;===============================================================================================
;===============================================================================================	
beretta()
	{
		global 
		itisnotweapon=0
		currentantirecoil:=senseajust(140)
		currentantirecoilzoomed:=senseajust(240)
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
		currentantirecoil:=senseajust(75)
		currentantirecoilzoomed:=senseajust(100)
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
		currentantirecoil:=senseajust(100)
		currentantirecoilzoomed:=senseajust(120)
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
		currentantirecoil:=senseajust(0)
		currentantirecoilzoomed:=senseajust(0)
		currentfirerate=10
		currentammovalue=999
		currentreloadrate=0
		SplashTextOn, ,  , noweap
		sleep 150
		SplashTextOff
		return
	}
;===============================================================================================
medkit()
	{
		global 

		return
	}			
;===============================================================================================	
p250()
	{
		global 
		itisnotweapon=0
		currentantirecoil:=senseajust(230)
		currentantirecoilzoomed:=senseajust(420)
		currentfirerate=40
		currentammovalue=7
		currentreloadrate=2000
		SplashTextOn, ,  , p250
		sleep 150
		SplashTextOff
		return
	}	
;===============================================================================================
;===============================================================================================	
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
weaponnumber2weapon(weaponnumber)
	{
		if weaponnumber = 0
			medkit()
		if weaponnumber = 1
			noweap()
		if weaponnumber = 2
			m4()
		if weaponnumber = 3
			p250()
		if weaponnumber = 4
			beretta()
		if weaponnumber = 5
			mp5()
	return
	}
;===============================================================================================	
;===============================================================================================
inventory2chest(inventoryrow)
{
global 
	chestcolumns=0
	chestrows=0
	inventorycolumn=0
	
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
}	
;===============================================================================================
chest2inventory(inventoryrow)
{
global 
	chestcolumns=0
	chestrows=0
	inventorycolumn=0
	
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
}
;===============================================================================================
;===============================================================================================
razdevanie(inchest)
{
global
if inchest=0
{
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
}
else
{
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
}
}
;===============================================================================================
;===============================================================================================








                                                                                          