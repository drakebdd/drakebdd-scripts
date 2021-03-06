;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Windows XP +??
; Author:         ahklerner / kruzan
;
; Script Function:
;	Arduino GUI Example
;
; set some defaults
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; serial settings
ARDUINO_Port     = COM3
ARDUINO_Baud     = 9600
ARDUINO_Parity   = N
ARDUINO_Data     = 8
ARDUINO_Stop     = 1
temperature = NULL
counterlen:=0
temperaturebackup = asdasdasd
Reply2 = NULL
Reply= NULL
;asdfasdf = asdf
; setup arduino serial communication
arduino_setup()

; *****************GUI CODE***************

Gui, Add, Edit , vMyEdit w500
Gui, Add, Button, Default gButton1_Press, OK
Gui, Add, Text,, Temp. �F :
Gui, Add, Text, vReply,**NO DATA RECEIVED YET**
Gui, Add, Text, vReply2,**NO DATA RECEIVED YET**
; show the gui (it will be auto sized and positioned)
Gosub, ServoSlider
Gui, Show
; Start Polling Serial (every 1ms)
return


OnSerialData(Data){
	UpdateTemperature(Data)
}

UpdateTemperature(SerialData){
	global 
	
	;StringTrimRight, SerialData, SerialData, 2
	limitlen:=15
	
	temperature := (SerialData) ; 
	;lenghtt := StrLen(temperature)
	StringLen, length, temperature
	SetFormat, integer, decimal
	length := length+0
	;StringTrimLeft, length, length, 2
	GuiControl,,Reply, %limitlen% %counterlen% %wowlength% %length% %temperature% 
	;temperaturebackup := temperature
	length := length+0
	limitlen:=limitlen+0
	wowlength := length - 15
		if wowlength>0
	{
	counterlen:=1
	asdfasdf := temperature
	}
	else
		{
	counterlen:=0
	
	}
	
	GuiControl,,Reply2,  %asdfasdf%  


	
	Sleep 10
}
Button1_Press:
GuiControlGet, MyEdit
asdf = % arduino_send(%MyEdit%)
	msgbox , pressed %MyEdit%
return
ServoSlider:
	Gui, Submit, NoHide
	
	UpdateSliderToolTip(ServoSlider)
	;GuiControl,,Position, % arduino_send(ServoSlider)


return
UpdateSliderToolTip(val){
	SetFormat, Integer, DEC
	val += 0
	ToolTip %val% azaza
	SetTimer, tooltip_close, -500
}

tooltip_close:
	ToolTip
return

;*************************************************************************************
; *****Do not edit below this line unless you want to change the core functionality of the script*****
;*************************************************************************************
; called when the gui is closed
;also called when program exits
GuiClose:
OnExit:
	; make sure to cleanly shut down serial port on exit
	arduino_close()
; this is important!! or else theprogram does not end when closed
ExitApp
#include %A_ScriptDir%\include\Arduino.ahk