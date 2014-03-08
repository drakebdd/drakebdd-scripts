

;========================================================================
;07.03.2014
;надо бы разделить скрипты для раст и остальные




;========================
; Directives

	#SingleInstance Force
	#Persistent

;========================
;Var
;========================
;Settings
	xhelmet=575		;координаты шлема, зависят от разрешения
	yhelmet=550		;замутить табличку в патче
	clickdelay=225	;задержка мыши в мс при перетаскивании 
					;предметов. если не цепляет надо увеличить
	enterdelay=150	;задержки консоли и чата
	f1delay=300

;Constants
	cellwidth := 75	;вроде не зависит от разрешения       

;Calculable
	x1 := xhelmet+450+225	;прочистить в патче эту ересь



;Counters
	toggle1=1
	chestcolumns=0
	chestrows=0
	c=0		; multifunctional counter
			;сжечь ересь!!!


;===============================================================================================
;===============================================================================================
;===============================================================================================
;===============================================================================================			
	;Global binds
;===============================================================================================
;===============================================================================================
;===============================================================================================
;===============================================================================================

;key remap

	RWin::Insert

;===============================================================================================
; Чешская раскладка клавиатуры

; cze additional buttons (only Alt)



!a::
Send {U+00E1}
return
!+a::
Send {U+00C1}
Return
!c::
Send {U+010D }
return
!+c::
Send {U+010C }
return
!d::
Send {U+010F }
return
!+d::
Send {U+010E }
return
!e::
Send {U+011B }
return
!+e::
Send {U+011A }
return
!i::
Send {U+00ED }
return
!+i::
Send {U+00CD }
return
!n::
Send {U+0148}
return
!+n::
Send {U+0147}
return
!o::
Send {U+00F3}
return
!+o::
Send {U+00D3}
return
!r::
Send {U+0159}
return
!+r::
Send {U+0158}
return
!s::
Send {U+0161}
return
!+s::
Send {U+0160}
return
!u::
Send {U+016F }
return
!+u::
Send {U+016E }
Return
!y::
Send {U+00FD }
return
!+y::
Send {U+00DD }
return
!z::
Send {U+017E}
return
!+z::
Send {U+017D}
return
;================================================
;cze additional buttons with strange emphasis
;---------------
; e
;---------------
!t::
Send {U+00E9}
return
!+t::
Send {U+00C9}
return
;---------------
; u
;---------------
!x::
Send {U+00FA }
return
!+x::
Send {U+00DA }
return
;=================================================

 

;===============================================================================================
;===============================================================================================
;Game binds
;===============================================================================================
;===============================================================================================


;директивы
 
SetTitleMatchMode, 2	; Make search title in #IfWinActive more flexible

;=================================================================================
; Перетаскивалки вещей из ящика(3 на 4 клеток) в инвентори(последние 2 на 6 клеток) и обратно
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
с=0
while chestcolumns<3
{
chestrows=0
while chestrows<4 
{
if c<6
{
MouseClick, L, x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , d
Sleep clickdelay
MouseClick, L, x1-450+cellwidth*c , yhelmet+150+cellwidth*1 , 1 , 1 , u
Sleep 10
}
else
{
MouseClick, L, x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , d
Sleep clickdelay
MouseClick, L, x1-450+cellwidth*(c-6) , yhelmet+150+cellwidth*2 , 1 , 1 , u
Sleep 10
}
c++
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
с=0
while chestcolumns<3
{
chestrows=0
while chestrows<4 
{
if c<6
{
MouseClick, L,  x1-450+cellwidth*c , yhelmet+150+cellwidth*1  , 1 , 1 , d
Sleep clickdelay
MouseClick, L, x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows, 1 , 1 , u
Sleep 10
}
else
{
MouseClick, L, x1-450+cellwidth*(c-6) , yhelmet+150+cellwidth*2 , 1 , 1 , d
Sleep clickdelay
MouseClick, L, x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , u
Sleep 10
}
c++
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

MouseClick, L, x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , d
Sleep clickdelay
MouseClick, L, x1-450-225 , yhelmet+cellwidth*c , 1 , 1 , u
Sleep 10
}
if (c>3 and c<10)
{
MouseClick, L, x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , d
Sleep clickdelay
MouseClick, L, x1-450+cellwidth*(c-4) , yhelmet+400 , 1 , 1 , u
Sleep 10
}
if (c>9)
{
MouseClick, L, x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , d
Sleep clickdelay
MouseClick, L, x1-450+150+cellwidth*chestrows , yhelmet+150+cellwidth*chestcolumns , 1 , 1 , u
Sleep 10
}
c++
chestrows++
}
chestcolumns++
}

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
MouseClick, L, x1-450-225 , yhelmet+cellwidth*c , 1 , 1 , d
Sleep clickdelay
MouseClick, L, x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , u
Sleep 10
}
if (c>3 and c<10)
{
MouseClick, L, x1-450+cellwidth*(c-4) , yhelmet+400   , 1 , 1 , d
Sleep clickdelay
MouseClick, L,  x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows  , 1 , 1 , u
Sleep 10
}
if (c>9)
{
MouseClick, L,x1-450+150+cellwidth*chestrows , yhelmet+150+cellwidth*chestcolumns   , 1 , 1 , d
Sleep clickdelay
MouseClick, L,  x1+cellwidth*chestcolumns , yhelmet+cellwidth*chestrows, 1 , 1 , u
Sleep 10
}
c++
chestrows++
}
chestcolumns++
}

return

;===================================================================
;А теперь чудесные клавиатурные скрипты
;которые настукивают то что нам настукивать лень
;надо добавить
;/showdamage
;/showmydamage
;/remove

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
    SendInput /tpa Troyan
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
#IfWinActive PlayRust
~*WheelUp::
 
    Send,{F} 
 
    return
 
~*WheelDown::
 
    Send,{G}
 
    return
#IfWinActive
#ifwinactive DOTA 2
;-----------------------------------------------------------------------------------------------
;wheel
;-----------------------------------------------------------------------------------------------
	WheelUp::
		Send {u}
	return
;-----------------------------------------------------------------------------------------------
	WheelDown::
		Send {chestrows}
	return
;-----------------------------------------------------------------------------------------------
	MButton::
		Send {Home}
	return
;-----------------------------------------------------------------------------------------------
#IfWinActive                                                                                                                