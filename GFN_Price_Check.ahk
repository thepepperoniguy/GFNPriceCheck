	;########################## This macro will not work out of the box
	;########################## Check out the set up tutorial on my GitHub Page
	;########################## https://github.com/thepepperoniguy/GFNPriceCheck
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
	
	;########################## this is the link you set as home page in your steam browser during the setup
	user_chosen_site := "http://dontpad.com/whateveryouwanthere"

	;########################## this copies the content of the dontpad.com page into your clipboard 
	static HTTP := ComObjCreate("WinHttp.WinHttpRequest.5.1")
	HTTP.Open("GET", user_chosen_site)
	HTTP.Send()
	RegExMatch(HTTP.ResponseText(), "<textarea id=""text"">(.*)</textarea>", out)
	clipboard := out1
	;##########################
	
	;########################## opens a windows with the name "Path of Exile" to trick awakened poe trade into thinking it's focused on the poe window.
	Gui, Destroy
	Gui, New,, Path of Exile
	Gui, Margin, 10, 10
	Gui, Add, Edit, ReadOnly ,%clipboard%
	Gui, Show, maximize Center
	;##########################

	sleep 300
	Send, ^d
	sleep 70
	}
