; drakebd-scripts-insert
;v001
run %A_WorkingDir%\..\..\..\Start , , Min
run %A_WorkingDir%\..\..\..\PortableApps\ThunderbirdPortable\ThunderbirdPortable.exe , , Min
run %A_WorkingDir%\..\..\..\PortableApps\SkypePortable\SkypePortable.exe , , Min
run %A_WorkingDir%\..\..\..\PortableApps\qBittorrentPortable\qBittorrentPortable.exe , , Min UseErrorLevel
if ErrorLevel = ERROR
run %A_WorkingDir%\..\..\..\PortableApps\qBittorrentPortable\qBittorrentPortable.exe , , Min UseErrorLevel
run %A_WorkingDir%\..\..\..\PortableApps\BitTorrentSyncPortable\BitTorrentSyncPortable.exe , , Min UseErrorLevel
if ErrorLevel = ERROR
run %A_WorkingDir%\..\..\..\PortableApps\BitTorrentSyncPortable\BitTorrentSyncPortable.exe , , Min UseErrorLevel
run http://vk.com/im

;========================================================================

;08.03.2014 А я всетаки введу разделение и версии. гитхаб всетаки. и ридми напишу.
;07.03.2014
;надо бы разделить скрипты для раст и остальные. с другой стороны, больше одновременных скриптов не айс




;========================
; Directives

	#SingleInstance Force
	#Persistent


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
Appskey::Insert

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

 

#ifwinactive DOTA 2
;-----------------------------------------------------------------------------------------------
;wheel
;-----------------------------------------------------------------------------------------------
	WheelUp::
		Send {u}
	return
;-----------------------------------------------------------------------------------------------
	WheelDown::
		Send {J}
	return
;-----------------------------------------------------------------------------------------------
	MButton::
		Send {Home}
	return
;-----------------------------------------------------------------------------------------------
#IfWinActive    




#IfWinActive Path of Exile  
  
F2::
BlockInput On
SendInput, {Enter}
sleep, 20
SendInput, {/}oos
SendInput, {Enter}
BlockInput Off
return

F3::
BlockInput On
SendInput, {Enter}
sleep, 20
SendInput, {/}remaining
SendInput, {Enter}
BlockInput Off
return

F4::
BlockInput On
SendInput, {Enter}
sleep, 20
SendInput, {/}itemlevel
SendInput, {Enter}
BlockInput Off
return

#IfWinActive  


#IfWinActive Path of Exile  
F10::
Reload
return







 
F5::
BlockInput On
SendInput, {Enter}
sleep, 20
SendInput, {Up}
SendInput, {Enter}
BlockInput Off
return
return


#IfWinActive                                                                                                         