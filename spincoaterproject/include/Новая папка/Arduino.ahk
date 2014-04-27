#include %A_ScriptDir%\include\Serial.ahk
; Arduino AHK Library
arduino_setup(){
	global
	ARDUINO_Settings = %ARDUINO_Port%:baud=%ARDUINO_Baud% parity=%ARDUINO_Parity% data=%ARDUINO_Data% stop=%ARDUINO_Stop% dtr=off ;to=off  xon=off odsr=off octs=off rts=off idsr=off
	ARDUINO_Handle := Serial_Initialize(ARDUINO_Settings)
	arduino_send("")
	SetTimer, arduino_poll_serial, -1

}

arduino_send(data){
	global ARDUINO_Handle
	Serial_Write(ARDUINO_Handle, data)
	sleep, 1
	return arduino_read_raw()
}

arduino_read(){
	global ARDUINO_Handle
	return Serial_Read(ARDUINO_Handle, "0xFF", Bytes_Received)
}

arduino_read_raw(){
	global ARDUINO_Handle
	return Serial_Read_Raw(ARDUINO_Handle, "0xFF", "raw",Bytes_Received)
}

arduino_close(){
	global ARDUINO_Handle
	SetTimer, arduino_poll_serial, Off
	Sleep, 100
	Serial_Close(ARDUINO_Handle)
}

arduino_poll_serial:
	if IsFunc(f:="OnSerialData"){
	SerialData := arduino_read_raw()
	if SerialData {
			%f%(SerialData)
		}
	SetTimer, arduino_poll_serial, -1
	}else{
		MsgBox, OnSerialData function not defined. 
		SetTimer, arduino_poll_serial, Off
		}
return
