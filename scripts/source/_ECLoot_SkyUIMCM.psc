ScriptName _ECLoot_SkyUIMCM Extends SKI_ConfigBase

GlobalVariable property _ECL_SaveOutfitHotkey auto
ReferenceAlias property PlayerAlias auto

int Gameplay_ECLSaveOutfitHotkey_OID

Event OnConfigInit()
	Pages = new string[1]
	Pages[0] = "$ECLMainPage"
endEvent

int function GetVersion()
	return 1
endFunction

Event OnVersionUpdate(int a_version)
	; pass
EndEvent

event OnPageReset(string page)
	if !Pages
		OnConfigInit()
	endif

	if page == "$ECLMainPage"
		PageReset_Gameplay()
	endif
endEvent

event OnOptionHighlight(int option)
	if option == Gameplay_ECLSaveOutfitHotkey_OID
		SetInfoText("$ECLSaveOutfitHotkeyHighlight")
	endif
endEvent

function PageReset_Gameplay()
	SetCursorFillMode(TOP_TO_BOTTOM)

	AddHeaderOption("$ECLHotkeysHeader")
	Gameplay_ECLSaveOutfitHotkey_OID = AddKeyMapOption("$ECLSaveOutfitHotkey", _ECL_SaveOutfitHotkey.GetValueInt())
endFunction

event OnOptionKeyMapChange(int option, int keyCode, string conflictControl, string conflictName)
	bool success
	if option == Gameplay_ECLSaveOutfitHotkey_OID
		SetKey(_ECL_SaveOutfitHotkey, keyCode, conflictControl, conflictName)
	endif
endEvent

function SetKey(GlobalVariable akGlobal, int keyCode, string conflictControl, string conflictName)
	if conflictControl != ""
		if conflictName != ""
			bool b = ShowMessage("This key is already bound to " + conflictControl + " in " + conflictName + ". Undesirable behavior may occur; use with caution, or assign to a different control.")
			if b
				akGlobal.SetValueInt(keyCode)
				(PlayerAlias as _ECLoot_PlayerAlias).RegisterForKey(akGlobal.GetValueInt())
				ForcePageReset()
			endif
		else
			ShowMessage("This key is already bound to " + conflictControl + " in Skyrim. Please select a different key.")
		endif
	else
		akGlobal.SetValueInt(keyCode)
		(PlayerAlias as _ECLoot_PlayerAlias).RegisterForKey(akGlobal.GetValueInt())
		ForcePageReset()
	endif
endFunction

event OnOptionDefault(int option)
	if option == Gameplay_ECLSaveOutfitHotkey_OID
		_ECL_SaveOutfitHotkey.SetValue(0)
		(PlayerAlias as _ECLoot_PlayerAlias).UnregisterForKey(_ECL_SaveOutfitHotkey.GetValueInt())
		ForcePageReset()
	endif
endEvent

string function GetCustomControl(int keyCode)
	if (keyCode == _ECL_SaveOutfitHotkey.GetValueInt())
		return "Create Outfit from your currently equipped Gear"
	else
		return ""
	endIf
endFunction