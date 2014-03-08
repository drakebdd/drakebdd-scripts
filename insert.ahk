

;========================================================================
;07.03.2014
;���� �� ��������� ������� ��� ���� � ���������




;========================
; Directives

	#SingleInstance Force
	#Persistent

;========================
;Var
;========================
;Settings
	xhelmet=575		;���������� �����, ������� �� ����������
	yhelmet=550		;�������� �������� � �����
	clickdelay=225	;�������� ���� � �� ��� �������������� 
					;���������. ���� �� ������� ���� ���������

;Constants
	cellwidth := 75	;����� �� ������� �� ����������       

;Calculable
	x1 := xhelmet+450+225	;���������� � ����� ��� �����



;Counters
	toggle1=1
	chestcolumns=0
	chestrows=0
	c=0		; multifunctional counter



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
; ������� ��������� ����������

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



 
SetTitleMatchMode, 2	; Make search title in #IfWinActive more flexible

;=================================================================================
; �������������� ����� �� �����(3 �� 4 ������) � ���������(��������� 2 �� 6 ������) � �������
; � ���� ������ �������������� ���� ���� ���������� ��������� - ���������� �����. �� ����� ������ 
; ������� ��� ��������� � ���� � ������ � ���������� xhelmet  yhelmet � ����� ����� �������
;===========================
;��������� ���� ������� ����
	#IfWinActive PlayRust	
;===========================

;==========
; �� ����� 
;==========

F3::	; ��� ������ ��������������� �� ����� ������
chestcolumns=0
chestrows=0
�=0
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
; � ���� 
;==========

F4::	; ��� ������ ��������������� �� ����� ������
chestcolumns=0
chestrows=0
�=0
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
; ������ ��� ����������. ����������� �����, 6 ������� ������ � 2 ����� �� ���������

;==========
; �� ����� 
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
; � ���� 
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
;� ������ �������� ������������ �������
;������� ����������� �� ��� ��� ����������� ����
;���� ��������
;/showdamage
;/showmydamage
;/remove

;������
!F11::;�������� �� ���� ��������, ��� ���� ��� ����+�11
    Send,{F1} 
    SendInput suicide
    Sleep, 300
    Send,{Enter}
	Sleep, 300
	Send,{F1}
return

F2::
 
    Send,{Enter} 
	Sleep, 150
    SendInput /location
    Sleep, 150
    Send,{Enter}
 
    return

F7::
 
    Send,{Enter} 
	Sleep, 150
    SendInput /tpa Troyan
    Sleep, 150
    Send,{Enter}
 
    return

F8::
 
    Send,{Enter} 
	Sleep, 150
    SendInput /tpaccept
    Sleep, 150
    Send,{Enter}
 
    return
;================================================================
; ������������ ����
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
; �������� �������� ��������� ��� ��������
; � ���� � ����, �������������� �������� ����
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