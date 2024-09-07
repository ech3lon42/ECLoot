#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Initialize the toggle state (off by default)
toggle := false

; F2 as toggle key for the Numpad
~F2::
    toggle := !toggle
    if (toggle) {
        OSD("NUM ON")
    } else {
        OSD("NUM OFF")
    }
return

OSD(text)
{
	#Persistent
	; borderless, no progressbar, font size 25, color text 009900
	Progress, hide Y100 X200 W500 b zh0 cwFFFFFF FM50 CT00BB00,, %text%, AutoHotKeyProgressBar, Backlash BRK
	WinSet, TransColor, FFFFFF 255, AutoHotKeyProgressBar
	Progress, show
	SetTimer, RemoveToolTip, 1500

	Return


RemoveToolTip:
	SetTimer, RemoveToolTip, Off
	Progress, Off
	return
}

; CTRL+9 Suspend/Unsuspend the script
~^9::
	Suspend
	if (A_IsSuspended) {
		suspended := 1
		OSD("Script Disabled")
	}
	else {
		suspended := 0
		OSD("Script Enabled")
	}
return

#If (toggle)
    0::Numpad0
    +::NumpadAdd
    -::NumpadSub
    n::NumpadMult
    m::NumpadDiv
    Enter::NumpadEnter
    Insert::Numpad7
    Home::Numpad8
    PgUp::Numpad9
    Delete::Numpad4
    End::Numpad5
    PgDn::Numpad6
    Left::Numpad1
    Down::Numpad2
    Right::Numpad3
    b::NumpadDot
#If



