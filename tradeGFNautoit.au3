	#WinActivateForce
	#RequireAdmin

	#include <AutoItConstants.au3>
	Run("C:\Users\p\AppData\Local\Programs\Awakened PoE Trade\Awakened PoE Trade.exe")
   

	HotKeySet("{F6}", "copyItem") ; 
	HotKeySet("{F5}", "gotoHideout") ;
	HotKeySet("{F9}", "lasty") 
	HotKeySet("{F11}", "ExitScript")
	Func ExitScript()
		Exit
	EndFunc

	While 1
		Sleep(100)
	WEnd

	Func lasty()
		Send("{CTRL down}{ENTER down}")
		Sleep(20)
		Send("{ENTER up}{CTRL up}")
		Sleep(20)
		Send("ty and gl")
		Sleep(20)
		Send("{ENTER}")
	EndFunc

	Func gotoHideout()
		Send("{ENTER}")
		Sleep(20)
		Send("/hideout")
		Sleep(20)
		Send("{ENTER}")
	EndFunc

	Func copyItem()
		Opt("SendKeyDelay", 150)
		Sleep(150)
		Send("!^c")
		Sleep(50)
		Send("{F7}")
		Sleep(500)
		MouseMove(491, 429, 1)
		Sleep(20)
		MouseClick("left", 491, 429) ; 
		Sleep(50)
		Send("^a")
		Sleep(40)
		Send("^v")
		Sleep(50)
		Send("{ESC}")
		Sleep(50)
		WinActivate("Thisisitforpoe2 | Dontpad – Mozilla Firefox")
		Sleep(1000)
		WinActivate("Thisisitforpoe2 | Dontpad – Mozilla Firefox")
		Sleep(200)
		
		;copy local:
  ClipPut("")

While 1
    Send("^a")
    Sleep(10)
    Send("^c")
    $clipboardContent = ClipGet()
    If StringLeft($clipboardContent, 4) = "Item" Then
        ExitLoop
    ElseIf $clipboardContent <> "" Then
		MsgBox(16, "Fehlermeldung", "Text fängt nicht mit 'Item' an. Script wurde beendet")
        Exit
    EndIf
    Sleep(200) 
WEnd

		Sleep(50)
		Send("{BACKSPACE}")
		Sleep(150)
		WinActivate("Path of Exile bei GeForce NOW")
			Do
		$foundpixel = PixelGetColor (21, 123)
		Sleep(50)
	Until $foundpixel <> 0xFFFFFF
		Sleep(100)
		Send("+{SPACE}")
		Sleep(100)
		MouseClick("left", 120, 100) 
		Sleep(100)
		Send("^v")
		Opt("SendKeyDelay", 0)
	EndFunc
