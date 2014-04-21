#NoEnv
SetBatchLines -1
SetFormat, float, .0

LineGraph_ColorInit()
MainGuiNumber = 1

Gui, %MainGuiNumber%:+LastFound ;+Resize
;WinSet, Trans, 255
Hwnd := WinExist()

Gui, %MainGuiNumber%:Show, h320 w400, CPU Graph

;================================
;================================
;LineGraph_Create(Owner_GuiNum
;						, GuiNumber
;						, Window_X
;						, Window_Y
;						, Window_H
;						, Window_W
;						, Resolution
;						, Graph_Min
;						, Graph_Max
;						, Graph_BackgroundColor
;						, Graph_LineColor)
;================================
;================================

GraphGuiNumber 			= 2
Graph_x 					= 50
Graph_y 					= 50
Graph_h 					= 150
Graph_w 					= 300
Graph_NumberOfPoints 	= 100
Graph_Min 					= 0
Graph_Max 					= 100

LineGraph1 := LineGraph_Create(MainGuiNumber
											, GraphGuiNumber
											, Graph_x
											, Graph_y
											, Graph_h
											, Graph_w
											, Graph_NumberOfPoints
											, Graph_Min
											, Graph_Max
											, Black
											, Lime)
;================================

GraphGuiNumber 			= 3
Graph_x 					= 50
Graph_y 					= 225
Graph_h 					= 50
Graph_w 					= 300
Graph_NumberOfPoints 	= 500
Graph_Min 					= 0
Graph_Max 					= 100

LineGraph2 := LineGraph_Create(	MainGuiNumber
												, GraphGuiNumber
												, Graph_x
												, Graph_y
												, Graph_h
												, Graph_w
												, Graph_NumberOfPoints
												, Graph_Min
												, Graph_Max
												, Lime
												, Black)
;================================

Gui, %MainGuiNumber%:+LastFound +AlwaysOnTop

WinSet, Trans, 155

Loop, 
	{
	GoSub, UpdateValues
	Sleep, 100
	}
Return

UpdateValues:
Value1 := GetCPULoad()
LineGraph_Update(LineGraph1, Value1)
LineGraph_Update(LineGraph2, Value1)
return

Esc::
GuiClose:
ExitApp


;=============================================================
;***************************************************************************
;AHK Function
;<Language> 			English
;<OS> 					Windows XP Home
;<AHK Version> 		1.46.08
;
;<Function Name>		LineGraph_ColorInit()
;<Syntax>				LineGraph_ColorInit()
;
;<Parameters> 
;	-	NONE		- XXXXXX
;<Return> 
;	-	Success 	- XXXXXX
;	-	Failure 	- XXXXXX
;
;<Description>
;	- Initializes RGB Color Names
;
;***************************************************************************

LineGraph_ColorInit()
{
Global
Black 	= 000000
Green 	= 008000
Silver 	= C0C0C0
Lime 		= 00FF00
Gray 		= 808080
Olive 		= 808000
White 	= FFFFFF
Yellow 	= FFFF00
Maroon 	= 800000
Navy 	= 000080
Red 		= FF0000
Blue 		= 0000FF
Purple 	= 800080
Teal 		= 008080
Fuchsia 	= FF00FF
Aqua 	= 00FFFF
}

;***************************************************************************
;***************************************************************************
;AHK Function
;<Language> 			English
;<OS> 					Windows XP Home
;<AHK Version> 		1.46.08
;
;<Function Name>		LineGraph_InitGraph()
;<Syntax>				LineGraph_InitGraph(UUID, GuiNumber, Window_X, Window_Y, Window_H, Window_W, Resolution, Graph_Min, Graph_Max, Graph_BackgroundColor, Graph_LineColor)
;
;<Parameters> 
;	- UUID							- The uuid of the graph, as assigned by 'LineGraph_Create'. 
;	- GuiNumber					- The gui number of the graph. 
;	- Window_X						- The 'x' pos of the graph. 
;	- Window_Y						- The 'y' pos of the graph.
;	- Window_H						- The height of the window.
;	- Window_W					- The width of the window.
;	- Resolution						- The number of graphed points in the window
;	- Graph_Min						- The minimum value of the graph '0'
;	- Graph_Max					- The maximum value of the graph '100'
;	- Graph_BackgroundColor	- The RGB background color of the graph
;	- Graph_LineColor				- The RGB color of the line
;
;<Return>  NONE
;	-	Success 	- XXXXXX
;	-	Failure 	- XXXXXX
;
;<Description>
;	-  THIS IS A HELPER FUNCTION MEANT TO ONLY BE CALLED BY 'LineGraph_Create'.
;	- Sets the global variables for the graph 
;
;***************************************************************************

LineGraph_InitGraph(UUID, GuiNumber, Window_X, Window_Y, Window_H, Window_W, Resolution, Graph_Min, Graph_Max, Graph_BackgroundColor, Graph_LineColor)
	{
	Global
	%UUID%_Window_Title						:= UUID
	%UUID%_Window_GuiNumber 				:= GuiNumber
	%UUID%_Window_X 							:= Window_X
	%UUID%_Window_Y 							:= Window_Y
	%UUID%_Window_H 							:= Window_H
	%UUID%_Window_W 							:= Window_W
	
	%UUID%_Graph_BackgroundColor 			:= Graph_BackgroundColor
	%UUID%_Graph_LineColor 					:= Graph_LineColor
	%UUID%_Graph_Resolution 					:= Resolution
	%UUID%_Graph_Min							:= Graph_Min
	%UUID%_Graph_Max							:= Graph_Max
	%UUID%_Graph_Old_X						= 0
	%UUID%_Graph_Old_Y						= 0
	%UUID%_Graph_LineWeight 					= 1
	
	%UUID%_Grid_X									= 0
	%UUID%_Grid_Y									= 0
	}

;***************************************************************************

;***************************************************************************
;AHK Function
;<Language> 			English
;<OS> 					Windows XP Home
;<AHK Version> 		1.46.08
;
;<Function Name>		LineGraph_Create()
;<Syntax>				MyGraph_uuid := LineGraph_Create(Owner_GuiNum, GuiNumber, Window_X, Window_Y, Window_H, Window_W, Resolution, Graph_Min, Graph_Max, Graph_BackgroundColor, Graph_LineColor)

;
;<Parameters> 
;	- Owner_GuiNum				- The Gui number of the Parent window
;	- GuiNumber					- The gui number of the graph. 
;	- Window_X						- The 'x' pos of the graph. 
;	- Window_Y						- The 'y' pos of the graph.
;	- Window_H						- The height of the window.
;	- Window_W					- The width of the window.
;	- Resolution						- The number of graphed points in the window
;	- Graph_Min						- The minimum value of the graph '0%'
;	- Graph_Max					- The maximum value of the graph '100%'
;	- Graph_BackgroundColor	- The RGB background color of the graph
;	- Graph_LineColor				- The RGB color of the line
;<Return> 
;	-	Success 	- The uuid of the graph
;	-	Failure 	- Zero '0'
;
;<Description>
;	- Creates a line graph
;
;***************************************************************************

LineGraph_Create(Owner_GuiNum, GuiNumber, Window_X, Window_Y, Window_H, Window_W, Resolution, Graph_Min, Graph_Max, Graph_BackgroundColor, Graph_LineColor)
	{
	Local UUID, Graph_hwnd, Parent_hwnd, res
	
	UUID			:= uuid()
	UUID_List	.= UUID . ","
	
	LineGraph_InitGraph(UUID, GuiNumber, Window_X, Window_Y, Window_H, Window_W, Resolution, Graph_Min, Graph_Max, Graph_BackgroundColor, Graph_LineColor)
	
	Gui, %GuiNumber%:+owner%Owner_GuiNum% +LastFound +Resize +AlwaysOnTop -Caption +Disabled 
	;This Does Not work for some reason
	;WinSet, Trans, 255
	Graph_hwnd := WinExist()
	
	Gui, %Owner_GuiNum%:+LastFound
	WinSet, Trans, 255
	Parent_hwnd := WinExist()
	
	Gui, %GuiNumber%:Color, %Graph_BackgroundColor%
	Gui, %GuiNumber%:Show, % "x" %UUID%_Window_X " y" %UUID%_Window_Y " w" Window_W " h" Window_H, %UUID%
	
	Res := DllCall("SetParent", "uint", Graph_hwnd, "uint", Parent_hwnd) ; success = handle to previous parent, failure =null 
	If !Res
		MsgBox, SetParent - Error`n---`nSetParent Failed
	
	%UUID%_Grid_X -= _Grid_W - 50

	return UUID
	}

;***************************************************************************
;***************************************************************************
;AHK Function
;Language - English
;OS - Windows XP Home
;AHK Version - 1.46.08
;***************************************************************************
;Function Name - LineGraph_Get_Hwnd()
;Syntax - Graph_hwnd := LineGraph_Get_Hwnd(uuid)
;Parameters - 
;	- uuid 		- The uuid of the graph control, as assigned by 'LineGraph_Create'
;Return - 
;	- Success 	- The hwnd (uinque window handle) of the line graph control.
;	- Failure 		- Not Yet Complete
;***************************************************************************
;***************************************************************************
LineGraph_Get_Hwnd(uuid)
	{
	Transform, GuiNum, Deref, % %UUID%_Window_GuiNumber
	Gui, %GuiNum%:+LastFound
	Return WinExist()
	}


;=============================================================

;=============================================================
;***************************************************************************
;AHK Function
;<Language> 			English
;<OS> 					Windows XP Home
;<AHK Version> 		1.46.08
;
;<Function Name>		LineGraph_Update()
;<Syntax>				LineGraph_Update(GraphUUID, Value)
;
;<Parameters> 
;	- GraphUUID	- The uuid of the graph, as assigned by 'LineGraph_Create'
;	- Value			- The value to graph
;
;<Return> NONE
;
;<Description>
;	- Adds another point to the graph
;
;***************************************************************************

LineGraph_Update(GraphUUID, Value)
	{
	Global
	
	;Move 'X' to the next position
	%GraphUUID%_Grid_X += %GraphUUID%_Window_W / %GraphUUID%_Graph_Resolution
	
	;Calculate the y coordinate... 'value' % of 'Max' 
	%GraphUUID%_Grid_Y := (%GraphUUID%_Window_H * Value ) / %GraphUUID%_Graph_Max 
	
	;This makes the graph go from the bottom-up instead of top-down
	%GraphUUID%_Grid_Y := %GraphUUID%_Window_H - %GraphUUID%_Grid_Y 
	
	; If the next point will be off screen, Set 'x' to zero and rewraw the screen
	If (%GraphUUID%_Grid_X > %GraphUUID%_Window_W) {
		%GraphUUID%_Grid_X := 0
		WinSet, Redraw, , % "ahk_id " LineGraph_Get_Hwnd(Graphuuid)
		}

	; Graph the coordinates
	
	Canvas_SetPixel(GraphUUID, %GraphUUID%_Grid_X - 1, %GraphUUID%_Grid_Y - 1, %GraphUUID%_Graph_LineWeight, %GraphUUID%_Graph_LineColor)
		
	; draw a line from the last graphed point to this one
	; Only if it is not the first coordinate on the screen
	If (%GraphUUID%_Grid_X != 0)
		Canvas_DrawLine(GraphUUID, %GraphUUID%_Old_Grid_X, %GraphUUID%_Old_Grid_Y, %GraphUUID%_Grid_X, %GraphUUID%_Grid_Y, %GraphUUID%_Graph_LineWeight, %GraphUUID%_Graph_LineColor)
	
	%GraphUUID%_Old_Grid_X := %GraphUUID%_Grid_X
	%GraphUUID%_Old_Grid_Y := %GraphUUID%_Grid_Y
	}

;=============================================================
;***************************************************************************
;AHK Function
;<Language> 			English
;<OS> 					Windows XP Home
;<AHK Version> 		1.46.08
;
;<Function Name>		Canvas_SetPixel()
;<Syntax>				Canvas_SetPixel(uuid, x, y [, s, color_RGB, h, w])
;
;<Parameters> 
;		**Required**
;	- uuid			- The uuid of the graph to draw on, as assigned by 'LineGraph_Create'
;	- x				- The 'x' position of the area to draw
;	- y				- The 'y' position of the area to draw
;		**Optional**
;	- s				- Size. In Pixels.
;	- color_RGB	- Color in RGB
;	- h				- Height
;	- w			- Width
;<Return> 
;	-	Success 	- XXXXXX
;	-	Failure 	- XXXXXX
;
;<Description>
;	- 
;
;***************************************************************************

Canvas_SetPixel(uuid, x, y, s=1, color_RGB=000000, h=1, w=1)
	{
	;global Center_x, Center_y, Last_Center_x, Last_Center_y ; , origin_x, origin_y
	;Global
	
	hw_canvas := LineGraph_Get_Hwnd(uuid)
	
	VarSetCapacity(Rect, 16, 0)  ; Set capacity to hold four 4-byte integers and initialize them all to zero.
	InsertInteger(x, Rect, 0)  ; The first integer in the structure is "rect.left".
	InsertInteger(y, Rect, 4)  ; The second integer in the structure is "rect.top".
	InsertInteger(x + s, Rect, 8)  ; The third integer in the structure is "rect.right".
	InsertInteger(y + s, Rect, 12) ; The fourth integer in the structure is "rect.bottom".
	
	
	hDC 						:= DllCall("GetDC", UInt, hw_canvas)  ; Pass zero to get the desktop's device context.
	hBrush 					:= DllCall("CreateSolidBrush", UInt, Convert_BGR(color_RGB))  ; Create a brush (In BGR format).
	DllCall("FillRect", UInt, hDC, Str, Rect, UInt, hBrush)  ; Fill the specified rectangle using the brush above.
	DllCall("ReleaseDC", UInt, 0, UInt, hDC)  ; Clean-up.
	DllCall("DeleteObject", UInt, hBrush)  ; Clean-up.
	
	}

;=============================================================

Convert_BGR(RGB)
	{
	StringLeft, r, RGB, 2
	StringMid, g, RGB, 3, 2
	StringRight, b, RGB, 2
	Return, "0x" . b . g . r
	}

;=============================================================

InsertInteger(pInteger, ByRef pDest, pOffset = 0, pSize = 4)
; The caller must ensure that pDest has sufficient capacity.  To preserve any existing contents in pDest,
; only pSize number of bytes starting at pOffset are altered in it.
{
    Loop %pSize%  ; Copy each byte in the integer into the structure as raw binary data.
        DllCall("RtlFillMemory", "UInt", &pDest + pOffset + A_Index-1, "UInt", 1, "UChar", pInteger >> 8*(A_Index-1) & 0xFF)
}

;=============================================================

Canvas_DrawLine(uuid, p_x1, p_y1, p_x2, p_y2, p_w, p_color) ; r,angle,width,color) 
	{
	p_x1 -= 1, p_y1 -= 1, p_x2 -= 1, p_y2 -= 1
	
	hw_canvas := LineGraph_Get_Hwnd(uuid)
	
	hDC := DllCall("GetDC", UInt, hw_canvas)
	hCurrPen := DllCall("CreatePen", UInt, 0, UInt, p_w, UInt, Convert_BGR(p_color))
	DllCall("SelectObject", UInt,hdc, UInt,hCurrPen)
	DllCall("gdi32.dll\MoveToEx", UInt, hdc, Uint,p_x1, Uint, p_y1, Uint, 0 )
	DllCall("gdi32.dll\LineTo", UInt, hdc, Uint, p_x2, Uint, p_y2 )
	DllCall("ReleaseDC", UInt, 0, UInt, hDC)  ; Clean-up.
	DllCall("DeleteObject", UInt,hCurrPen)
	}

;============================================================

GetCPULoad() ; By Skan on the AHK Forum
{
  Global
  SetBatchLines, -1
  IdleTime0 = %IdleTime%  ; Save previous values
  Tick0 = %Tick%
  VarSetCapacity(IdleTicks,8,0) ; NOTE: this is required!
  DllCall("kernel32.dll\GetSystemTimes", "uint",&IdleTicks, "uint",0, "uint",0)
  IdleTime := *(&IdleTicks)
  Loop 7                  ; Ticks when Windows was idle
    IdleTime += *( &IdleTicks + A_Index ) << ( 8 * A_Index )
  Tick := A_TickCount     ; Ticks all together
  load := 100 - 0.01*(IdleTime - IdleTime0)/(Tick - Tick0)
  Return, load
}

;============================================================

uuid() { ; v1.0 - by Titan - AHK Forum
	static n, l
	n += l = A_Now
	f := A_FormatInteger, t := A_Now, s := "-"
	SetFormat, Integer, H
	t -= 1970, s
	t := (t . A_MSec) * 10000 + 122192928000000000
	Random, x, 0x100, 0xfff
	Random, y, 0x10000, 0xfffff
	Random, z, 0x100000, 0xffffff
	l := A_Now, t += n
	SetFormat, Integer, %f%
	
	qwert := SubStr(t, 10) . s . SubStr(t, 6, 4) . s . 1 . SubStr(t, 3, 3)
		. s . 9 . SubStr(x, 3) . s . 1 . SubStr(y, 3). SubStr(z, 3)
	
	StringReplace, qwert, qwert, -, , All
	Return qwert
}

;==============================================================

Set_Parent_by_id(Owner_hwnd, Gui_Number) ; title text is the start of the title of the window, gui number is e.g. 99 
{ 
  Gui, %Gui_Number%: +LastFound 
  Owned_hwnd := WinExist()
  Return DllCall("SetParent", "uint", Owned_hwnd, "uint", Owner_hwnd) ; success = handle to previous parent, failure =null 
} 