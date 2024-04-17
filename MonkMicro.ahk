;This is a Script to assist with Monk Micro is Age of Empires 2
;Not intended for use in competetive play, as it gives an unfair advantage.
;
;Being able to edit what keys to press coming soon!
;
;Specifically, the hotkey is configured to be two inputs at once in order to execute
;
; Author -- Andrew "TooManyVariables" Cox

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Persistent ; Ensures run scripts indefinitely

; BLOCK INPUT WILL NOT WORK WITHOUT RUNNING AS ADMIN ON WINDOWS 10
if not A_IsAdmin
	Run *RunAs "%A_ScriptFullPath%"


; Global variables
monkIconX := 317
monkIconY := 935

hotKey1 := "A"
hotKey2 := "D"


While(1){
	
	; MsgBox, %isActive% ; (didn't work)BlockInput, Off ; Used to prevent a loop from ocurring
	;MsgBox, % GetKeyState("D", "P")

	if GetKeyState(%hotKey1%, "P") && GetKeyState(%hotKey2%, "P") { ; && !isActive{
		Sleep, 1
		BlockInput, On 
	
		MouseGetPos, mouseX, mouseY ;
		Send "{Ctrl Down}"
			Sleep, 5
		
		MouseMove, monkIconX, monkIconY
		Send "{LButton Down}"
			Sleep, 2
		Send "{LButton Up}"
			Sleep, 2
		
		Send "{Ctrl Up}"
		MouseMove, mouseX, mouseY
			Sleep, 2
		
		;For some reason the script continues to think A and D are pressed down. Weird.
		Send "{A up}" 
		Send "{D up}"
		
		BlockInput, Off 
		
	}
}




