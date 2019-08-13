﻿; Map the PrintScreen and ScrollLock keys to volume down and up
PrintScreen::Volume_Down
ScrollLock::Volume_Up

; Map the Puase/Break key to the Play/Pause toggle
Pause::Media_Play_Pause

; Map the context menu key + L to mimic the Win+L (lock workstation) shortcut.
; NOTE: I'm not sure why the "Send RWin" step is needed, but without it, the workstation locks
; again whenever the "L" key is pressed (even by itself)
AppsKey & l::
  Send {RWin Down}{RWin Up}
  DllCall("user32.dll\LockWorkStation")
  return

; Map the fingerprint sensor + "." key to Win+".", which shows the Emoji picker
AppsKey & .::Send {RWin Down}{. Down}{. Up}{RWin Up}

; Map the context menu key + arrow keys to Ctrl+Arrow combinations
AppsKey & Left::Send {RControl Down}{Left}{RControl Up}
AppsKey & Right::Send {RControl Down}{Right}{RControl Up}
AppsKey & Up::Send {RControl Down}{Up}{RControl Up}
AppsKey & Down::Send {RControl Down}{Down}{RControl Up}

#if GetKeyState("Shift", "P")
  AppsKey & Left::Send {RControl Down}{RShift Down}{Left}{RControl Up}{RShift Up}
  AppsKey & Right::Send {RControl Down}{RShift Down}{Right}{RControl Up}{RShift Up}
  AppsKey & Up::Send {RControl Down}{RShift Down}{Up}{RControl Up}{RShift Up}
  AppsKey & Down::Send {RControl Down}{RShift Down}{Down}{RControl Up}{RShift Up}
#if
