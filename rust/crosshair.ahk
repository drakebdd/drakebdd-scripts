;=================================================================================
; прицел. сюда он ушел для простоты распостранения чисто прицела
;=================================================================================
	#SingleInstance Force
	#Persistent
;=================================================================================
;настройки - смещение прицела
xtune=-9
ytune=8
Xrust=-9 
Yrust=-9 
Widthrust=1938
Heightrust=1000
	Widthcross=100
Heightcross=100
;триггер прицела
togglecrosshairon=0
;распознавалка окна
SetTitleMatchMode, 2	
; какую иконку показывать в трее
Menu, Tray, Icon, shell32.dll, 44
;=================================================================================


;настройки гуи
Gui +E0x20 -Caption +LastFound +ToolWindow +AlwaysOnTop
Gui, Add, Picture,+BackgroundTrans, %A_ScriptDir%\crosshair.png
WinSet, Transparent, 20
Gui, Color, EEAA99
Gui +LastFound 
WinSet, TransColor, EEAA99

;=================================================================================
; горячая клавиша для показывания и непоказывания прицела
!F5::
togglecrosshair()
return
;=================================================================================
; Бегалка
; нормальный скрипт, нажал и бежишь.
; есть проблема - чтоы его отключить надо опять нажать капс
; и нельзя чатиться
; в том числе и консольными командами
; это надо пофиксить.

#IfWinActive PlayRust
CapsLock::
permarun()
return
#IfWinActive
;=================================================================================

;методы

;=================================================================================

WaitForAnyKey( p_timeout )
{global
	start := A_TickCount

	loop,
	{
		if ( idle > A_TimeIdlePhysical )
			return, true
		else if ( A_TickCount-start >= p_timeout )
			return, false
	
		idle := A_TimeIdlePhysical

		Sleep, 10
	}
}
;=================================================================================
togglecrosshair()
{

global
if togglecrosshairon=0

{
		SplashTextOn, ,  , crosshairon
		sleep 150
		SplashTextOff
WinGetPos, Xrust, Yrust, Widthrust, Heightrust, PlayRust
Gui Show, w100 h100 , cross
    WinGetPos,,, Widthcross, Heightcross, cross
    WinMove, cross,, (Widthrust/2)-(Widthcross/2)+xtune, (Heightrust/2)-(Heightcross/2)+ytune

togglecrosshairon=1
}
else
{
GuiControl, Hide, cross
togglecrosshairon=0
SplashTextOn, ,  , crosshairoff
		sleep 150
		SplashTextOff

}
return
}
;=================================================================================
permarun()
{
	SendInput, {LShift Down}
	SendInput, {w Down}
Sleep 500
if ( WaitForAnyKey( 1000000 ) )
{
		SendInput, {LShift Up}
	SendInput, {w Up}

	
}
else
{	
		SendInput, {LShift Up}
	SendInput, {w Up}
	}

return
}

;=================================================================================
;шлак который нужно будет удалить
;/if toggle1=1
;/{
;	/SendInput, {LShift Down}
;	/SendInput, {w Down}
;	/toggle1=0
;/;}
;/else
;/{        /;
;	SendInput, {LShift Up}
;	SendInput, {w Up}
;	toggle1=1
;}