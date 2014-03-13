if ( WaitForAnyKey( 10000 ) )
	MsgBox, <any key> pressed
else
	MsgBox, [WaitForAnyKey] timeout expired
ExitApp

WaitForAnyKey( p_timeout )
{
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

Wait4MouseMovement:
MouseGetPos,pos1,pos2
last1 = %pos1%
last2 = %pos2%
loop
{
  GetKeyState, RBS, RButton, P ; rbs= Right button state
  GetKeystate, MBS, MButton, p ; Middle...
  GetKeystate, LBS, LButton, p ; Left... 
  GetKeystate, X1BS, XButton1, p ; my 4th mouse button
  GetKeystate, X2BS, XButton2, p ; mt 5th button.
  ButtonState = %RBS%%MBS%%LBS%%X1BS%%X2BS% ;Puts all states in one
  if ButtonState <> UUUUU ; "<>" means  "If not" , so if they are not all up.
    Break
  MouseGetPos,pos1,pos2
  if pos1 <> %last1%
    break
  if pos2 <> %last2%
    break
}
Return