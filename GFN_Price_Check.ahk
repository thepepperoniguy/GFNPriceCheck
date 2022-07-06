	;########################## This macro will not work out of the box
	;########################## Watch my video to see how the setup works
	;########################## <yt video link will be here>
F6::copyItem() ;F6 is the key I am using to start this macro, change to whatever you like
F5::gotoHideout() ;F6 is the key I am using to quickly teleport to my hideout, change to whatever you like

gotoHideout(){

	Send {enter}
	sleep 20
	Send /hideout	
	sleep 20
	Send {enter}
}

copyItem(){

	;########################## This portion of the script is used to copy the data of the item you want to price check, do not change this
	sendinput {alt down} {ctrl down} {c down}
	sleep 70
	sendinput {c up} {alt up} {ctrl up}
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
	
	;########################## opens your dontpad url of choice in google chrome, i believe other browsers can be used as long as you replace "chrome.exe" with your browser of choice executable
	;########################## please replace the dontpad url with literally anything you want, for example: http://dontpad.com/canfinallypricecheck, whatever you write here, dontpad will open an empty page where you can write text
	Run chrome.exe http://dontpad.com/mihgeorgepoetrade
	sleep 1500
	;##########################
	
	Click, 914, 428
	sleep 70
	SendInput, {ctrl down} {a down}
	sleep 70
	SendInput, {a up} {ctrl up}
	sleep 70	
	SendInput, {ctrl down} {d down}
	sleep 70
	SendInput, {d up} {ctrl up}
	}