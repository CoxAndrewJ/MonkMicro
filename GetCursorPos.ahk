#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.

MsgBox, "Hit space when you have your cursor positioned, and space to close the dialogue boxes"
KeyWait, Space, d

MouseGetPos, mouseX, mouseY

MsgBox, "X coordinate: %mouseX%"
MsgBox, "Y coordinate: %mouseY%"

ExitApp