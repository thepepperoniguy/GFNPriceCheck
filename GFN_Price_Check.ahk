	;########################## This macro will not work out of the box
	;########################## Check out the set up tutorial on my GitHub Page
	;########################## https://github.com/thepepperoniguy/GFNPriceCheck
	
url := "http://dontpad.com/poetest123" ; Choose an unique address

F6::copyItem() ;F6 is the key I am using to start this macro, change to whatever you like
F5::gotoHideout() ;F5 is the key I am using to quickly teleport to my hideout, change to whatever you like

gotoHideout(){

	Send {enter}
	sleep 20
	Send /hideout	
	sleep 20
	Send {enter}
}

copyItem(){
	static HTTP := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	global url
	
	;########################## This portion of the script is used to copy the data of the item you want to price check, do not change this
	SendInput, !^c
	sleep 70
	;########################## 
	
	sleep 70 
	Send {F7} ;sleep is just a delay, F7 is my keybind of choice to open the steam overlay, change to whatever you like
	sleep 70
	
	;########################## This portion is used to click on the "web browser" button inside the steam overlay
	CoordMode, Mouse, Screen
	Click, 738, 1029
	sleep 1500
	;##########################
	
	;########################## This is used to click anywhere inside the dontpad page, CTRL+A to select all the already existing text(if there is any), then CTRL+V to paste the previously copied item data
	Click, 914, 428
	sendinput {ctrl down} {a down}
	sleep 70
	sendinput {a up}{ctrl up}
	sleep 70
	sendinput {ctrl down} {v down}
	sleep 70
	sendinput {v up}{ctrl up}
	;##########################
	sleep 700
	
	;########################## this copies the content of the dontpad.com page into your clipboard 
	HTTP.Open("GET", url)
	HTTP.Send()
	RegExMatch(HTTP.ResponseText(), "<textarea id=""text"">(.*)</textarea>", out)
	;##########################
	
	;########################## saves current clipboard and clears it
	saved := clipboard
	clipboard := ""
	;##########################
	
	;########################## opens a dummy transparent window with the name "Path of Exile" to trick awakened poe trade into thinking it's focused on the poe window.
	Gui, New,, Path of Exile
	Gui, Color, 0x000000
	Gui, +AlwaysOnTop -Border +LastFound -SysMenu +Owner -Caption
	WinSet, TransColor, 0x000000 255
	Gui, Margin, 10, 10
	Gui, Show, maximize Center
	;##########################

	;########################## Waits for The window to be created, sends Awakened ctrl + alt + d and puts the data in the clipboard for awakened to parse
	;########################## When the window is changed it restores the previous clipboard and destroys the window
	WinWaitActive, Path of Exile,, 2
	Sleep 250
	SendInput, ^!d
	sleep 55
	clipboard := out1
	while WinActive("Path of Exile"){
		sleep 200
		}
	clipboard := saved
  	WinGetTitle, Title, Path of Exile
	WinKill, %Title%
	;##########################
	}
