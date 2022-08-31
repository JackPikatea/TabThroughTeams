#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

started := false

menu, tray, icon, %A_WinDir%\system32\shell32.dll, 26
menu, tray, NoStandard 
menu, tray, add, Info, info
menu, tray, add, Exit, closeall
menu, tray, tip, TabThroughTeams 1.0

#IfWinActive ahk_exe Teams.exe
Tab::
send {Alt down}
sleep, 10
send {Numpad0 down}
sleep, 10
send {Numpad9 up}
sleep, 10
send {Numpad9 down}
sleep, 10
send {Numpad9 up}
sleep, 10
send {Alt up}

closeall:
    exitapp

info:
    Run, https://www.github.com/JackPikatea/TabThroughTeams