Scriptname FM_MCMScript extends SKI_ConfigBase

; Widgets

Import FISSFactory

FM_Follower1WidgetScript Property Follower1Script Auto
FM_Follower2WidgetScript Property Follower2Script Auto
FM_Follower3WidgetScript Property Follower3Script Auto
FM_Follower4WidgetScript Property Follower4Script Auto
FM_Follower5WidgetScript Property Follower5Script Auto
FM_FollowerWageWidgetScript Property WageScript Auto

FM_WidgetManagerScript Property UpdateScript Auto

Int FollowerWidget1
Int FollowerPosX1
Int FollowerPosY1
Int FollowerAnchorH1
Int FollowerAnchorV1
Int FollowerAlpha1
Int FollowerScale1
Int FollowerWidget2
Int FollowerPosX2
Int FollowerPosY2
Int FollowerAnchorH2
Int FollowerAnchorV2
Int FollowerAlpha2
Int FollowerScale2
Int FollowerWidget3
Int FollowerPosX3
Int FollowerPosY3
Int FollowerAnchorH3
Int FollowerAnchorV3
Int FollowerAlpha3
Int FollowerScale3
Int FollowerWidget4
Int FollowerPosX4
Int FollowerPosY4
Int FollowerAnchorH4
Int FollowerAnchorV4
Int FollowerAlpha4
Int FollowerScale4
Int FollowerWidget5
Int FollowerPosX5
Int FollowerPosY5
Int FollowerAnchorH5
Int FollowerAnchorV5
Int FollowerAlpha5
Int FollowerScale5
Int WageWidget
Int WagePosX
Int WagePosY
Int WageAnchorH
Int WageAnchorV
Int WageAlpha
Int WageScale

String[] HAnchorFollowerString1
String[] VAnchorFollowerString1
String[] HAnchorFollowerString2
String[] VAnchorFollowerString2
String[] HAnchorFollowerString3
String[] VAnchorFollowerString3
String[] HAnchorFollowerString4
String[] VAnchorFollowerString4
String[] HAnchorFollowerString5
String[] VAnchorFollowerString5
String[] HAnchorWageString
String[] VAnchorWageString

Int UpdateTimerInt
Int FissLoad
Int FissSave

; combat style variables

string[] CSList1
string[] CSList2
string[] CSList3
string[] CSList4
string[] CSList5
Int CStyle1
Int CStyle2
Int CStyle3
Int CStyle4
Int CStyle5
Int Property CStyleIndex1 Auto
Int Property CStyleIndex2 Auto
Int Property CStyleIndex3 Auto
Int Property CStyleIndex4 Auto
Int Property CStyleIndex5 Auto

Int CSOff1
Int CSDef1
Int CSMel1
Int CSRan1
Int CSMag1
Int CSSta1
Int CSUna1
Int CSDual1
Int CSOff2
Int CSDef2
Int CSMel2
Int CSRan2
Int CSMag2
Int CSSta2
Int CSUna2
Int CSDual2
Int CSOff3
Int CSDef3
Int CSMel3
Int CSRan3
Int CSMag3
Int CSSta3
Int CSUna3
Int CSDual3
Int CSOff4
Int CSDef4
Int CSMel4
Int CSRan4
Int CSMag4
Int CSSta4
Int CSUna4
Int CSDual4
Int CSOff5
Int CSDef5
Int CSMel5
Int CSRan5
Int CSMag5
Int CSSta5
Int CSUna5
Int CSDual5

Bool CSDualToggle1 = false
Bool CSDualToggle2 = false
Bool CSDualToggle3 = false
Bool CSDualToggle4 = false
Bool CSDualToggle5 = false

Float CSOffSlider1 = 23.00
Float CSDefSlider1 = 23.00
Float CSMelSlider1 = 0.00
Float CSRanSlider1 = 0.00
Float CSMagSlider1 = 0.00
Float CSStaSlider1 = 0.00
Float CSUnaSlider1 = 0.00
Float CSOffSlider2 = 23.00
Float CSDefSlider2 = 23.00
Float CSMelSlider2 = 0.00
Float CSRanSlider2 = 0.00
Float CSMagSlider2 = 0.00
Float CSStaSlider2 = 0.00
Float CSUnaSlider2 = 0.00
Float CSOffSlider3 = 23.00
Float CSDefSlider3 = 23.00
Float CSMelSlider3 = 0.00
Float CSRanSlider3 = 0.00
Float CSMagSlider3 = 0.00
Float CSStaSlider3 = 0.00
Float CSUnaSlider3 = 0.00
Float CSOffSlider4 = 23.00
Float CSDefSlider4 = 23.00
Float CSMelSlider4 = 0.00
Float CSRanSlider4 = 0.00
Float CSMagSlider4 = 0.00
Float CSStaSlider4 = 0.00
Float CSUnaSlider4 = 0.00
Float CSOffSlider5 = 23.00
Float CSDefSlider5 = 23.00
Float CSMelSlider5 = 0.00
Float CSRanSlider5 = 0.00
Float CSMagSlider5 = 0.00
Float CSStaSlider5 = 0.00
Float CSUnaSlider5 = 0.00

CombatStyle CS1
CombatStyle CS2
CombatStyle CS3
CombatStyle CS4
CombatStyle CS5

; actor class lists

string[] CList1
string[] CList2
string[] CList3
string[] CList4
string[] CList5
Int Ctyle1
Int Ctyle2
Int Ctyle3
Int Ctyle4
Int Ctyle5
Int Property CtyleIndex1 Auto
Int Property CtyleIndex2 Auto
Int Property CtyleIndex3 Auto
Int Property CtyleIndex4 Auto
Int Property CtyleIndex5 Auto

; Settings

Int BumpTime
Int WeapDraw
Int FollowerSpace
Int FollowerWhistle
Int FollowerDismiss1
Int FollowerDismiss2
Int FollowerDismiss3
Int FollowerDismiss4
Int FollowerDismiss5
Int CarryWeightPointsFollower1
Int CarryWeightPointsFollower2
Int CarryWeightPointsFollower3
Int CarryWeightPointsFollower4
Int CarryWeightPointsFollower5
Int SpeedPointsFollower1
Int SpeedPointsFollower2
Int SpeedPointsFollower3
Int SpeedPointsFollower4
Int SpeedPointsFollower5
Int AggressionFollower1
Int AggressionFollower2
Int AggressionFollower3
Int AggressionFollower4
Int AggressionFollower5
Int ConfidenceFollower1
Int ConfidenceFollower2
Int ConfidenceFollower3
Int ConfidenceFollower4
Int ConfidenceFollower5
Int AssistanceFollower1
Int AssistanceFollower2
Int AssistanceFollower3
Int AssistanceFollower4
Int AssistanceFollower5
Int MoralityFollower1
Int MoralityFollower2
Int MoralityFollower3
Int MoralityFollower4
Int MoralityFollower5
Int ResetAll
Int FollowerAll
Int LightFood1
Int LightFood2
Int LightFood3
Int LightFood4
Int LightFood5

Int F1_Health
Int F1_Stamina
Int F1_Magicka
Int F1_OH
Int F1_TH
Int F1_MM
Int F1_BL
Int F1_SM
Int F1_HA
Int F1_AN
Int F1_CO
Int F1_DE
Int F1_LA
Int F1_PP
Int F1_LP
Int F1_SN
Int F1_AL
Int F1_SP
Int F1_IL
Int F1_RE
Int F1_EN
Int F2_Health
Int F2_Stamina
Int F2_Magicka
Int F2_OH
Int F2_TH
Int F2_MM
Int F2_BL
Int F2_SM
Int F2_HA
Int F2_AN
Int F2_CO
Int F2_DE
Int F2_LA
Int F2_PP
Int F2_LP
Int F2_SN
Int F2_AL
Int F2_SP
Int F2_IL
Int F2_RE
Int F2_EN
Int F3_Health
Int F3_Stamina
Int F3_Magicka
Int F3_OH
Int F3_TH
Int F3_MM
Int F3_BL
Int F3_SM
Int F3_HA
Int F3_AN
Int F3_CO
Int F3_DE
Int F3_LA
Int F3_PP
Int F3_LP
Int F3_SN
Int F3_AL
Int F3_SP
Int F3_IL
Int F3_RE
Int F3_EN
Int F4_Health
Int F4_Stamina
Int F4_Magicka
Int F4_OH
Int F4_TH
Int F4_MM
Int F4_BL
Int F4_SM
Int F4_HA
Int F4_AN
Int F4_CO
Int F4_DE
Int F4_LA
Int F4_PP
Int F4_LP
Int F4_SN
Int F4_AL
Int F4_SP
Int F4_IL
Int F4_RE
Int F4_EN
Int F5_Health
Int F5_Stamina
Int F5_Magicka
Int F5_OH
Int F5_TH
Int F5_MM
Int F5_BL
Int F5_SM
Int F5_HA
Int F5_AN
Int F5_CO
Int F5_DE
Int F5_LA
Int F5_PP
Int F5_LP
Int F5_SN
Int F5_AL
Int F5_SP
Int F5_IL
Int F5_RE
Int F5_EN

Float F1_Health_Slider = 0.00
Float F1_Stamina_Slider = 0.00
Float F1_Magicka_Slider = 0.00
Float F1_OH_Slider = 0.00
Float F1_TH_Slider = 0.00
Float F1_MM_Slider = 0.00
Float F1_BL_Slider = 0.00
Float F1_SM_Slider = 0.00
Float F1_HA_Slider = 0.00
Float F1_AN_Slider = 0.00
Float F1_CO_Slider = 0.00
Float F1_DE_Slider = 0.00
Float F1_LA_Slider = 0.00
Float F1_PP_Slider = 0.00
Float F1_LP_Slider = 0.00
Float F1_SN_Slider = 0.00
Float F1_AL_Slider = 0.00
Float F1_SP_Slider = 0.00
Float F1_IL_Slider = 0.00
Float F1_RE_Slider = 0.00
Float F1_EN_Slider = 0.00
Float F2_Health_Slider = 0.00
Float F2_Stamina_Slider = 0.00
Float F2_Magicka_Slider = 0.00
Float F2_OH_Slider = 0.00
Float F2_TH_Slider = 0.00
Float F2_MM_Slider = 0.00
Float F2_BL_Slider = 0.00
Float F2_SM_Slider = 0.00
Float F2_HA_Slider = 0.00
Float F2_AN_Slider = 0.00
Float F2_CO_Slider = 0.00
Float F2_DE_Slider = 0.00
Float F2_LA_Slider = 0.00
Float F2_PP_Slider = 0.00
Float F2_LP_Slider = 0.00
Float F2_SN_Slider = 0.00
Float F2_AL_Slider = 0.00
Float F2_SP_Slider = 0.00
Float F2_IL_Slider = 0.00
Float F2_RE_Slider = 0.00
Float F2_EN_Slider = 0.00
Float F3_Health_Slider = 0.00
Float F3_Stamina_Slider = 0.00
Float F3_Magicka_Slider = 0.00
Float F3_OH_Slider = 0.00
Float F3_TH_Slider = 0.00
Float F3_MM_Slider = 0.00
Float F3_BL_Slider = 0.00
Float F3_SM_Slider = 0.00
Float F3_HA_Slider = 0.00
Float F3_AN_Slider = 0.00
Float F3_CO_Slider = 0.00
Float F3_DE_Slider = 0.00
Float F3_LA_Slider = 0.00
Float F3_PP_Slider = 0.00
Float F3_LP_Slider = 0.00
Float F3_SN_Slider = 0.00
Float F3_AL_Slider = 0.00
Float F3_SP_Slider = 0.00
Float F3_IL_Slider = 0.00
Float F3_RE_Slider = 0.00
Float F3_EN_Slider = 0.00
Float F4_Health_Slider = 0.00
Float F4_Stamina_Slider = 0.00
Float F4_Magicka_Slider = 0.00
Float F4_OH_Slider = 0.00
Float F4_TH_Slider = 0.00
Float F4_MM_Slider = 0.00
Float F4_BL_Slider = 0.00
Float F4_SM_Slider = 0.00
Float F4_HA_Slider = 0.00
Float F4_AN_Slider = 0.00
Float F4_CO_Slider = 0.00
Float F4_DE_Slider = 0.00
Float F4_LA_Slider = 0.00
Float F4_PP_Slider = 0.00
Float F4_LP_Slider = 0.00
Float F4_SN_Slider = 0.00
Float F4_AL_Slider = 0.00
Float F4_SP_Slider = 0.00
Float F4_IL_Slider = 0.00
Float F4_RE_Slider = 0.00
Float F4_EN_Slider = 0.00
Float F5_Health_Slider = 0.00
Float F5_Stamina_Slider = 0.00
Float F5_Magicka_Slider = 0.00
Float F5_OH_Slider = 0.00
Float F5_TH_Slider = 0.00
Float F5_MM_Slider = 0.00
Float F5_BL_Slider = 0.00
Float F5_SM_Slider = 0.00
Float F5_HA_Slider = 0.00
Float F5_AN_Slider = 0.00
Float F5_CO_Slider = 0.00
Float F5_DE_Slider = 0.00
Float F5_LA_Slider = 0.00
Float F5_PP_Slider = 0.00
Float F5_LP_Slider = 0.00
Float F5_SN_Slider = 0.00
Float F5_AL_Slider = 0.00
Float F5_SP_Slider = 0.00
Float F5_IL_Slider = 0.00
Float F5_RE_Slider = 0.00
Float F5_EN_Slider = 0.00

Bool BumpTimeToggle = false
Bool WeapDrawToggle = false
Bool FollowerWhistleToggle = false
Bool PressedKeyOnceLockBack = false
Bool WeaponDrawn = false
Bool FollowerAllToggle = false
Bool LightFoodToggle1 = false
Bool LightFoodToggle2 = false
Bool LightFoodToggle3 = false
Bool LightFoodToggle4 = false
Bool LightFoodToggle5 = false

Float FollowerSpaceSlider = 192.00
Float CarryWeightPointsFollowerSlider1 = 300.00
Float CarryWeightPointsFollowerSlider2 = 300.00
Float CarryWeightPointsFollowerSlider3 = 300.00
Float CarryWeightPointsFollowerSlider4 = 300.00
Float CarryWeightPointsFollowerSlider5 = 300.00
Float SpeedPointsFollowerSlider1 = 100.00
Float SpeedPointsFollowerSlider2 = 100.00
Float SpeedPointsFollowerSlider3 = 100.00
Float SpeedPointsFollowerSlider4 = 100.00
Float SpeedPointsFollowerSlider5 = 100.00
Float FollowerAggressionSlider1 = 1.00
Float FollowerAggressionSlider2 = 1.00
Float FollowerAggressionSlider3 = 1.00
Float FollowerAggressionSlider4 = 1.00
Float FollowerAggressionSlider5 = 1.00
Float FollowerConfidenceSlider1 = 4.00
Float FollowerConfidenceSlider2 = 4.00
Float FollowerConfidenceSlider3 = 4.00
Float FollowerConfidenceSlider4 = 4.00
Float FollowerConfidenceSlider5 = 4.00
Float FollowerAssistanceSlider1 = 2.00
Float FollowerAssistanceSlider2 = 2.00
Float FollowerAssistanceSlider3 = 2.00
Float FollowerAssistanceSlider4 = 2.00
Float FollowerAssistanceSlider5 = 2.00
Float FollowerMoralitySlider1 = 3.00
Float FollowerMoralitySlider2 = 3.00
Float FollowerMoralitySlider3 = 3.00
Float FollowerMoralitySlider4 = 3.00
Float FollowerMoralitySlider5 = 3.00

; Hotkeys

Int KeyQuickTrade
Int KeyTrade
Int KeyQuickCommand
Int KeyCommand
Int KeyQuickSummon
Int KeySummon
Int KeyQuickRelax
Int KeyRelax
Int KeyQuickAvoid
Int KeyAvoid
Int KeyQuickLookBack
Int KeyLookBack
Int KeyQuickDrawWeapon
Int KeyDrawWeapon
Int KeyQuickWidget
Int KeyWidget
Int KeyQuickMenu
Int KeyMenu
Int KeyQuickMagic
Int KeyMagic

; Properties

Actor Property PlayerREF Auto
Faction Property CurrentFollowerFaction Auto
Faction Property FM_RelaxFaction Auto
Faction Property FM_AvoidCombatFaction Auto
Faction Property DismissedFollowerFaction Auto
VisualEffect Property MGTeleportOutEffect Auto
VisualEffect Property MGTeleportInEffect Auto
ReferenceAlias[] Property AliasArrayCommands Auto
ReferenceAlias Property CameraFollower Auto
ReferenceAlias Property FirstFollower Auto
ReferenceAlias Property SecondFollower Auto
ReferenceAlias Property ThirdFollower Auto
ReferenceAlias Property FourthFollower Auto
ReferenceAlias Property FifthFollower Auto
ReferenceAlias[] Property AliasArray Auto
FormList Property FM_CombatStyleFL Auto
FormList Property FM_CustomStyle1FL Auto
FormList Property FM_CustomStyle2FL Auto
FormList Property FM_CustomStyle3FL Auto
FormList Property FM_CustomStyle4FL Auto
FormList Property FM_CustomStyle5FL Auto
FormList Property FM_ActorFollowerFL Auto
Quest Property DialogueFollower Auto
Class Property CombatWarrior1H Auto
Class Property FM_ClassArcher Auto
Class Property FM_ClassBarbarian Auto
Class Property FM_ClassMagician Auto
Class Property FM_ClassScout Auto
Class Property FM_ClassWarrior Auto
Class Property FM_ClassWizard Auto
Class Property FM_ClassAssassin Auto
Class Property FM_ClassSoldier Auto
Class Property FM_ClassSpellSword Auto
Class Property FM_ClassBard Auto
Class Property FM_ClassMonk Auto
Class Property FM_ClassDragonborn Auto
GlobalVariable Property FM_SICheck Auto
GlobalVariable Property FM_FollowerAllGlobal Auto
Spell Property FM_MakeAnyoneFollowerSpell Auto
Spell Property FM_LightFootSpell Auto
GlobalVariable Property FM_FollowerTradeCheck Auto
GlobalVariable Property FM_WhistleAllow Auto
Sound Property FM_WhistleWaitSM Auto
Sound Property FM_WhistleFollowSM Auto
Sound Property FM_WhistleCommandSM Auto
Sound Property FM_WhistleSummonSM Auto
Sound Property FM_WhistleRelaxSM Auto
Sound Property FM_WhistleAvoidSM Auto
Sound Property FM_WhistleEnterSM Auto
Sound Property FM_WhistleSheatheSM Auto
Sound Property FM_WhistleDrawSM Auto

; actors

Actor akSpeaker
ActorBase Follower1
ActorBase Follower2
ActorBase Follower3
ActorBase Follower4
ActorBase Follower5

; Wage system

FM_WageQuestScript Property WageQuestScript Auto
GlobalVariable Property FM_FollowerMoneyCount Auto
GlobalVariable Property FM_FollowerMoneyThreshold Auto

Int WageSystem
Bool WageSystemToggle = false
Int MoneyCount
Float MoneyCountSlider = 1.0
Int MoneyThresh
Float MoneyThreshSlider = 100.0

Event OnConfigInit()

	HAnchorFollowerString1 = new String[3]
	HAnchorFollowerString1[0] = "Left"
	HAnchorFollowerString1[1] = "Right"
	HAnchorFollowerString1[2] = "Center"
	HAnchorFollowerString2 = new String[3]
	HAnchorFollowerString2[0] = "Left"
	HAnchorFollowerString2[1] = "Right"
	HAnchorFollowerString2[2] = "Center"
	HAnchorFollowerString3 = new String[3]
	HAnchorFollowerString3[0] = "Left"
	HAnchorFollowerString3[1] = "Right"
	HAnchorFollowerString3[2] = "Center"
	HAnchorFollowerString4 = new String[3]
	HAnchorFollowerString4[0] = "Left"
	HAnchorFollowerString4[1] = "Right"
	HAnchorFollowerString4[2] = "Center"
	HAnchorFollowerString5 = new String[3]
	HAnchorFollowerString5[0] = "Left"
	HAnchorFollowerString5[1] = "Right"
	HAnchorFollowerString5[2] = "Center"
	HAnchorWageString = new String[3]
	HAnchorWageString[0] = "Left"
	HAnchorWageString[1] = "Right"
	HAnchorWageString[2] = "Center"	

	VAnchorFollowerString1 = new String[3]
	VAnchorFollowerString1[0] = "Bottom"
	VAnchorFollowerString1[1] = "Top"
	VAnchorFollowerString1[2] = "Center"
	VAnchorFollowerString2 = new String[3]
	VAnchorFollowerString2[0] = "Bottom"
	VAnchorFollowerString2[1] = "Top"
	VAnchorFollowerString2[2] = "Center"	
	VAnchorFollowerString3 = new String[3]
	VAnchorFollowerString3[0] = "Bottom"
	VAnchorFollowerString3[1] = "Top"
	VAnchorFollowerString3[2] = "Center"	
	VAnchorFollowerString4 = new String[3]
	VAnchorFollowerString4[0] = "Bottom"
	VAnchorFollowerString4[1] = "Top"
	VAnchorFollowerString4[2] = "Center"	
	VAnchorFollowerString5 = new String[3]
	VAnchorFollowerString5[0] = "Bottom"
	VAnchorFollowerString5[1] = "Top"
	VAnchorFollowerString5[2] = "Center"
	VAnchorWageString = new String[3]
	VAnchorWageString[0] = "Bottom"
	VAnchorWageString[1] = "Top"
	VAnchorWageString[2] = "Center"	
	
	CSList1 = new string[14]
	CSList1[0] = "Default"	
	CSList1[1] = "Archer"
	CSList1[2] = "Warrior"
	CSList1[3] = "Magician"
	CSList1[4] = "Scout"
	CSList1[5] = "Barbarian"
	CSList1[6] = "Wizard"
	CSList1[7] = "Assassin"
	CSList1[8] = "Monk"
	CSList1[9] = "Spellsword"
	CSList1[10] = "Bard"
	CSList1[11] = "Soldier"
	CSList1[12] = "Dragonborn"
	CSList1[13] = "Custom"	
	CSList2 = new string[14]
	CSList2[0] = "Default"	
	CSList2[1] = "Archer"
	CSList2[2] = "Warrior"
	CSList2[3] = "Magician"
	CSList2[4] = "Scout"
	CSList2[5] = "Barbarian"
	CSList2[6] = "Wizard"
	CSList2[7] = "Assassin"
	CSList2[8] = "Monk"
	CSList2[9] = "Spellsword"
	CSList2[10] = "Bard"
	CSList2[11] = "Soldier"
	CSList2[12] = "Dragonborn"
	CSList2[13] = "Custom"	
	CSList3 = new string[14]
	CSList3[0] = "Default"	
	CSList3[1] = "Archer"
	CSList3[2] = "Warrior"
	CSList3[3] = "Magician"
	CSList3[4] = "Scout"
	CSList3[5] = "Barbarian"
	CSList3[6] = "Wizard"
	CSList3[7] = "Assassin"
	CSList3[8] = "Monk"
	CSList3[9] = "Spellsword"
	CSList3[10] = "Bard"
	CSList3[11] = "Soldier"
	CSList3[12] = "Dragonborn"
	CSList3[13] = "Custom"	
	CSList4 = new string[14]
	CSList4[0] = "Default"	
	CSList4[1] = "Archer"
	CSList4[2] = "Warrior"
	CSList4[3] = "Magician"
	CSList4[4] = "Scout"
	CSList4[5] = "Barbarian"
	CSList4[6] = "Wizard"
	CSList4[7] = "Assassin"
	CSList4[8] = "Monk"
	CSList4[9] = "Spellsword"
	CSList4[10] = "Bard"
	CSList4[11] = "Soldier"
	CSList4[12] = "Dragonborn"
	CSList4[13] = "Custom"	
	CSList5 = new string[14]
	CSList5[0] = "Default"	
	CSList5[1] = "Archer"
	CSList5[2] = "Warrior"
	CSList5[3] = "Magician"
	CSList5[4] = "Scout"
	CSList5[5] = "Barbarian"
	CSList5[6] = "Wizard"
	CSList5[7] = "Assassin"
	CSList5[8] = "Monk"
	CSList5[9] = "Spellsword"
	CSList5[10] = "Bard"
	CSList5[11] = "Soldier"
	CSList5[12] = "Dragonborn"
	CSList5[13] = "Custom"	

	CList1 = new string[13]
	CList1[0] = "Default"	
	CList1[1] = "Archer"
	CList1[2] = "Warrior"
	CList1[3] = "Magician"
	CList1[4] = "Scout"
	CList1[5] = "Barbarian"
	CList1[6] = "Wizard"
	CList1[7] = "Assassin"
	CList1[8] = "Monk"
	CList1[9] = "Spellsword"
	CList1[10] = "Bard"
	CList1[11] = "Soldier"
	CList1[12] = "Dragonborn"
	CList2 = new string[13]
	CList2[0] = "Default"	
	CList2[1] = "Archer"
	CList2[2] = "Warrior"
	CList2[3] = "Magician"
	CList2[4] = "Scout"
	CList2[5] = "Barbarian"
	CList2[6] = "Wizard"
	CList2[7] = "Assassin"
	CList2[8] = "Monk"
	CList2[9] = "Spellsword"
	CList2[10] = "Bard"
	CList2[11] = "Soldier"
	CList2[12] = "Dragonborn"
	CList3 = new string[13]
	CList3[0] = "Default"	
	CList3[1] = "Archer"
	CList3[2] = "Warrior"
	CList3[3] = "Magician"
	CList3[4] = "Scout"
	CList3[5] = "Barbarian"
	CList3[6] = "Wizard"
	CList3[7] = "Assassin"
	CList3[8] = "Monk"
	CList3[9] = "Spellsword"
	CList3[10] = "Bard"
	CList3[11] = "Soldier"
	CList3[12] = "Dragonborn"
	CList4 = new string[13]
	CList4[0] = "Default"	
	CList4[1] = "Archer"
	CList4[2] = "Warrior"
	CList4[3] = "Magician"
	CList4[4] = "Scout"
	CList4[5] = "Barbarian"
	CList4[6] = "Wizard"
	CList4[7] = "Assassin"
	CList4[8] = "Monk"
	CList4[9] = "Spellsword"
	CList4[10] = "Bard"
	CList4[11] = "Soldier"
	CList4[12] = "Dragonborn"
	CList5 = new string[13]
	CList5[0] = "Default"	
	CList5[1] = "Archer"
	CList5[2] = "Warrior"
	CList5[3] = "Magician"
	CList5[4] = "Scout"
	CList5[5] = "Barbarian"
	CList5[6] = "Wizard"
	CList5[7] = "Assassin"
	CList5[8] = "Monk"
	CList5[9] = "Spellsword"
	CList5[10] = "Bard"
	CList5[11] = "Soldier"
	CList5[12] = "Dragonborn"	
	
	RestoreActorValues()
	
EndEvent

Event OnGameReload()
	Parent.OnGameReload()
	RestoreActorValues()
EndEvent

Event OnPageReset(string Page)

	Int FollowerFlag1
	If (Page == "Main Page")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		AddHeaderOption("$Configuration")
		If AliasArray[0].GetActorReference() == none
			FollowerFlag1 = OPTION_FLAG_DISABLED
		EndIf
		BumpTime = AddToggleOption("$FollowerResponse", BumpTimeToggle, FollowerFlag1)
		WeapDraw = AddToggleOption("$FollowerDrawWeapon", WeapDrawToggle, FollowerFlag1)
		FollowerSpace = AddSliderOption("$FollowerDistance", FollowerSpaceSlider, "{0} units", FollowerFlag1)
		If FM_SICheck.GetValueInt() == 0
			FollowerAll = AddToggleOption("$AnyoneFollower", FollowerAllToggle)
		EndIf
		FollowerWhistle = AddToggleOption("$FollowerWhistle", FollowerWhistleToggle, FollowerFlag1)		
		WageSystem = AddToggleOption("$FollowerWageSystem", WageSystemToggle, FollowerFlag1)
		MoneyCount = AddSliderOption("$FollowerLoanCount", MoneyCountSlider, "{0} Gold", FollowerFlag1)
		MoneyThresh = AddSliderOption("$FollowerMoneyThreshold", MoneyThreshSlider, "{0} Gold", FollowerFlag1)		
		UpdateTimerInt = AddSliderOption("$UpdateTimerInterval", UpdateScript.UpdateTimer, "{0} sec.")	
		FISSInterface fiss = FISSFactory.getFISS()
		Int FissFlag = OPTION_FLAG_NONE
		Int LoadSettingsFlag = OPTION_FLAG_NONE
		If !fiss
			FissFlag = OPTION_FLAG_DISABLED
			LoadSettingsFlag = OPTION_FLAG_DISABLED
		Else
			fiss.beginLoad("FMUserSettings.xml")		
			If fiss.endLoad() != ""
				LoadSettingsFlag = OPTION_FLAG_DISABLED
			EndIf
		EndIf		
		FissLoad = AddTextOption("$LoadUserSettings", "Do it!", LoadSettingsFlag)
		FissSave = AddTextOption("$SaveUserSettings", "Do it!", FissFlag)
		SetCursorPosition(1)		
		AddHeaderOption("$KeyMapping")		
		KeyQuickTrade = AddKeyMapOption("$TradeHotkey", KeyTrade)
		KeyQuickCommand = AddKeyMapOption("$CommandHotkey", KeyCommand)
		KeyQuickSummon = AddKeyMapOption("$CallHotkey", KeySummon)
		KeyQuickRelax = AddKeyMapOption("$RelaxHotkey", KeyRelax)
		KeyQuickAvoid = AddKeyMapOption("$AvoidHotkey", KeyAvoid)
		KeyQuickLookBack = AddKeyMapOption("$LookFollowerHotkey", KeyLookBack)
		KeyQuickDrawWeapon = AddKeyMapOption("$DrawHotkey", KeyDrawWeapon)
		KeyQuickWidget = AddKeyMapOption("$WidgetHotkey", KeyWidget)
		KeyQuickMenu = AddKeyMapOption("$SkillHotkey", KeyMenu)
		KeyQuickMagic = AddKeyMapOption("$MagicHotkey", KeyMagic)
		ResetAll = AddTextOption("$ResetHotkeys", "$Clickme")		
	ElseIf (Page == "Widgets")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		AddHeaderOption("$WageWidget")
		WageWidget = AddToggleOption("$ToggleWageCounter", WageScript.Visible)
		WagePosX = AddSliderOption("$LeftPos", WageScript.X, "{0}")
		WagePosY = AddSliderOption("$UpPos", WageScript.Y, "{0}")
		WageAnchorV = AddMenuOption("$VertAnch", VAnchorWageString[VAnchorWageString.Find(WageScript.VAnchor)])		
		WageAnchorH = AddMenuOption("$HoriAnch", HAnchorWageString[HAnchorWageString.Find(WageScript.HAnchor)])
		WageAlpha = AddSliderOption("$Tran", WageScript.Alpha, "{0} %")
		WageScale = AddSliderOption("$Scale", WageScript.Size, "{0} %")
		AddHeaderOption("First Follower Widget")
		FollowerWidget1 = AddToggleOption("Toggle Follower Counter", Follower1Script.Visible)
		FollowerPosX1 = AddSliderOption("$LeftPos", Follower1Script.X, "{0}")
		FollowerPosY1 = AddSliderOption("$UpPos", Follower1Script.Y, "{0}")
		FollowerAnchorV1 = AddMenuOption("$VertAnch", VAnchorFollowerString1[VAnchorFollowerString1.Find(Follower1Script.VAnchor)])		
		FollowerAnchorH1 = AddMenuOption("$HoriAnch", HAnchorFollowerString1[HAnchorFollowerString1.Find(Follower1Script.HAnchor)])
		FollowerAlpha1 = AddSliderOption("$Tran", Follower1Script.Alpha, "{0} %")
		FollowerScale1 = AddSliderOption("$Scale", Follower1Script.Size, "{0} %")		
		AddHeaderOption("Second Follower Widget")
		FollowerWidget2 = AddToggleOption("Toggle Follower Counter", Follower2Script.Visible)
		FollowerPosX2 = AddSliderOption("$LeftPos", Follower2Script.X, "{0}")
		FollowerPosY2 = AddSliderOption("$UpPos", Follower2Script.Y, "{0}")
		FollowerAnchorV2 = AddMenuOption("Vertical-Anchor", VAnchorFollowerString2[VAnchorFollowerString2.Find(Follower2Script.VAnchor)])		
		FollowerAnchorH2 = AddMenuOption("$HoriAnch", HAnchorFollowerString2[HAnchorFollowerString2.Find(Follower2Script.HAnchor)])
		FollowerAlpha2 = AddSliderOption("$Tran", Follower2Script.Alpha, "{0} %")
		FollowerScale2 = AddSliderOption("$Scale", Follower2Script.Size, "{0} %")
		SetCursorPosition(1)		
		AddHeaderOption("Third Follower Widget")
		FollowerWidget3 = AddToggleOption("Toggle Follower Counter", Follower3Script.Visible)
		FollowerPosX3 = AddSliderOption("$LeftPos", Follower3Script.X, "{0}")
		FollowerPosY3 = AddSliderOption("$UpPos", Follower3Script.Y, "{0}")
		FollowerAnchorV3 = AddMenuOption("$VertAnch", VAnchorFollowerString3[VAnchorFollowerString3.Find(Follower3Script.VAnchor)])		
		FollowerAnchorH3 = AddMenuOption("$HoriAnch", HAnchorFollowerString3[HAnchorFollowerString3.Find(Follower3Script.HAnchor)])
		FollowerAlpha3 = AddSliderOption("$Tran", Follower3Script.Alpha, "{0} %")
		FollowerScale3 = AddSliderOption("$Scale", Follower3Script.Size, "{0} %")		
		AddHeaderOption("Fourth Follower Widget")
		FollowerWidget4 = AddToggleOption("Toggle Follower Counter", Follower4Script.Visible)
		FollowerPosX4 = AddSliderOption("$LeftPos", Follower4Script.X, "{0}")
		FollowerPosY4 = AddSliderOption("$UpPos", Follower4Script.Y, "{0}")
		FollowerAnchorV4 = AddMenuOption("$VertAnch", VAnchorFollowerString4[VAnchorFollowerString4.Find(Follower4Script.VAnchor)])		
		FollowerAnchorH4 = AddMenuOption("$HoriAnch", HAnchorFollowerString4[HAnchorFollowerString4.Find(Follower4Script.HAnchor)])
		FollowerAlpha4 = AddSliderOption("$Tran", Follower4Script.Alpha, "{0} %")
		FollowerScale4 = AddSliderOption("$Scale", Follower4Script.Size, "{0} %")		
		AddHeaderOption("Fifth Follower Widget")
		FollowerWidget5 = AddToggleOption("Toggle Follower Counter", Follower5Script.Visible)
		FollowerPosX5 = AddSliderOption("$LeftPos", Follower5Script.X, "{0}")
		FollowerPosY5 = AddSliderOption("$UpPos", Follower5Script.Y, "{0}")
		FollowerAnchorV5 = AddMenuOption("$VertAnch", VAnchorFollowerString5[VAnchorFollowerString5.Find(Follower5Script.VAnchor)])		
		FollowerAnchorH5 = AddMenuOption("$HoriAnch", HAnchorFollowerString5[HAnchorFollowerString5.Find(Follower5Script.HAnchor)])
		FollowerAlpha5 = AddSliderOption("$Tran", Follower5Script.Alpha, "{0} %")
		FollowerScale5 = AddSliderOption("$Scale", Follower5Script.Size, "{0} %")		
	ElseIf (Page == "1st Follower Options")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		AddHeaderOption("$Settings")
		If AliasArray[0].GetActorReference() == none
			FollowerFlag1 = OPTION_FLAG_DISABLED
		EndIf	
		FollowerDismiss1 = AddTextOption("Dismiss first Follower!", "Click me!", FollowerFlag1)		
		Ctyle1 = AddMenuOption("Choose Actor Class", CList1[CtyleIndex1], FollowerFlag1)
		F1_Health = AddSliderOption("First Follower Health", F1_Health_Slider, "{1}", FollowerFlag1)
		F1_Stamina = AddSliderOption("First Follower Stamina", F1_Stamina_Slider, "{1}", FollowerFlag1)
		F1_Magicka = AddSliderOption("First Follower Magicka", F1_Magicka_Slider, "{1}", FollowerFlag1)		
		CarryWeightPointsFollower1 = AddSliderOption("First Follower Carry Weight", CarryWeightPointsFollowerSlider1, "{1}", FollowerFlag1)
		SpeedPointsFollower1 = AddSliderOption("First Follower Speed", SpeedPointsFollowerSlider1, "{1}", FollowerFlag1)
		AggressionFollower1 = AddSliderOption("First Follower Aggression", FollowerAggressionSlider1, "{1}", FollowerFlag1)
		ConfidenceFollower1 = AddSliderOption("First Follower Confidence", FollowerConfidenceSlider1, "{1}", FollowerFlag1)
		AssistanceFollower1 = AddSliderOption("First Follower Assistance", FollowerAssistanceSlider1, "{1}", FollowerFlag1)
		MoralityFollower1 = AddSliderOption("First Follower Morality", FollowerMoralitySlider1, "{1}", FollowerFlag1)
		SetCursorPosition(1)
		AddHeaderOption("Combat Style")
		If AliasArray[0].GetActorReference() == none
			FollowerFlag1 = OPTION_FLAG_DISABLED
		EndIf	
		CStyle1 = AddMenuOption("Choose Combat Style", CSList1[CStyleIndex1], FollowerFlag1)		
		CSOff1 = AddSliderOption("First Offensive Mult", CSOffSlider1, "{1}", FollowerFlag1)
		CSDef1 = AddSliderOption("First Defensive Mult", CSDEfSlider1, "{1}", FollowerFlag1)
		CSMel1 = AddSliderOption("First Melee Percentage", CSMelSlider1, "{1} %", FollowerFlag1)
		CSRan1 = AddSliderOption("First Ranged Percentage", CSRanSlider1, "{1} %", FollowerFlag1)
		CSMag1 = AddSliderOption("First Magic Percentage", CSMagSlider1, "{1} %", FollowerFlag1)
		CSSta1 = AddSliderOption("First Staff Percentage", CSStaSlider1, "{1} %", FollowerFlag1)
		CSUna1 = AddSliderOption("First Unarmed Percentage", CSUnaSlider1, "{1} %", FollowerFlag1)
		CSDual1 = AddToggleOption("First Dual Wielding", CSDualToggle1, FollowerFlag1)
		LightFood1 = AddToggleOption("Light Foot Spell", LightFoodToggle1, FollowerFlag1)		
	ElseIf (Page == "2nd Follower Options")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		AddHeaderOption("$Settings")		
		Int FollowerFlag2
		If AliasArray[1].GetActorReference() == none
			FollowerFlag2 = OPTION_FLAG_DISABLED
		EndIf	
		FollowerDismiss2 = AddTextOption("Dismiss second Follower!", "Click me!", FollowerFlag2)			
		Ctyle2 = AddMenuOption("Choose Actor Class", CList2[CtyleIndex2], FollowerFlag2)
		F2_Health = AddSliderOption("Second Follower Health", F2_Health_Slider, "{1}", FollowerFlag2)
		F2_Stamina = AddSliderOption("Second Follower Stamina", F2_Stamina_Slider, "{1}", FollowerFlag2)
		F2_Magicka = AddSliderOption("Second Follower Magicka", F2_Magicka_Slider, "{1}", FollowerFlag2)		
		CarryWeightPointsFollower2 = AddSliderOption("Second Follower Carry Weight", CarryWeightPointsFollowerSlider2, "{1}", FollowerFlag2)
		SpeedPointsFollower2 = AddSliderOption("Second Follower Speed", SpeedPointsFollowerSlider2, "{1}", FollowerFlag2)
		AggressionFollower2 = AddSliderOption("Second Follower Aggression", FollowerAggressionSlider2, "{1}", FollowerFlag2)
		ConfidenceFollower2 = AddSliderOption("Second Follower Confidence", FollowerConfidenceSlider2, "{1}", FollowerFlag2)
		AssistanceFollower2 = AddSliderOption("Second Follower Assistance", FollowerAssistanceSlider2, "{1}", FollowerFlag2)
		MoralityFollower2 = AddSliderOption("Second Follower Morality", FollowerMoralitySlider2, "{1}", FollowerFlag2)	
		SetCursorPosition(1)
		AddHeaderOption("Combat Style")
		CStyle2 = AddMenuOption("Choose Combat Style", CSList2[CStyleIndex2], FollowerFlag2)		
		CSOff2 = AddSliderOption("Second Offensive Mult", CSOffSlider2, "{1}", FollowerFlag2)
		CSDef2 = AddSliderOption("Second Defensive Mult", CSDefSlider2, "{1}", FollowerFlag2)
		CSMel2 = AddSliderOption("Second Melee Percentage", CSMelSlider2, "{1} %", FollowerFlag2)
		CSRan2 = AddSliderOption("Second Ranged Percentage", CSRanSlider2, "{1} %", FollowerFlag2)
		CSMag2 = AddSliderOption("Second Magic Percentage", CSMagSlider2, "{1} %", FollowerFlag2)
		CSSta2 = AddSliderOption("Second Staff Percentage", CSStaSlider2, "{1} %", FollowerFlag2)
		CSUna2 = AddSliderOption("Second Unarmed Percentage", CSUnaSlider2, "{1} %", FollowerFlag2)
		CSDual2 = AddToggleOption("Second Dual Wielding", CSDualToggle2, FollowerFlag2)
		LightFood2 = AddToggleOption("Light Foot Spell", LightFoodToggle2, FollowerFlag2)		
	ElseIf (Page == "3rd Follower Options")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		AddHeaderOption("$Settings")		
		Int FollowerFlag3
		If AliasArray[2].GetActorReference() == none		
			FollowerFlag3 = OPTION_FLAG_DISABLED
		EndIf	
		FollowerDismiss3 = AddTextOption("Dismiss third Follower!", "Click me!", FollowerFlag3)			
		Ctyle3 = AddMenuOption("Choose Actor Class", CList3[CtyleIndex3], FollowerFlag3)
		F3_Health = AddSliderOption("Third Follower Health", F3_Health_Slider, "{1}", FollowerFlag3)
		F3_Stamina = AddSliderOption("Third Follower Stamina", F3_Stamina_Slider, "{1}", FollowerFlag3)
		F3_Magicka = AddSliderOption("Third Follower Magicka", F3_Magicka_Slider, "{1}", FollowerFlag3)			
		CarryWeightPointsFollower3 = AddSliderOption("Third Follower Carry Weight", CarryWeightPointsFollowerSlider3, "{1}", FollowerFlag3)
		SpeedPointsFollower3 = AddSliderOption("Third Follower Speed", SpeedPointsFollowerSlider3, "{1}", FollowerFlag3)
		AggressionFollower3 = AddSliderOption("Third Follower Aggression", FollowerAggressionSlider3, "{1}", FollowerFlag3)
		ConfidenceFollower3 = AddSliderOption("Third Follower Confidence", FollowerConfidenceSlider3, "{1}", FollowerFlag3)
		AssistanceFollower3 = AddSliderOption("Third Follower Assistance", FollowerAssistanceSlider3, "{1}", FollowerFlag3)
		MoralityFollower3 = AddSliderOption("Third Follower Morality", FollowerMoralitySlider3, "{1}", FollowerFlag3)	
		SetCursorPosition(1)
		AddHeaderOption("Combat Style")
		CStyle3 = AddMenuOption("Choose Combat Style", CSList3[CStyleIndex3], FollowerFlag3)		
		CSOff3 = AddSliderOption("Third Offensive Mult", CSOffSlider3, "{1}", FollowerFlag3)
		CSDef3 = AddSliderOption("Third Defensive Mult", CSDefSlider3, "{1}", FollowerFlag3)
		CSMel3 = AddSliderOption("Third Melee Percentage", CSMelSlider3, "{1} %", FollowerFlag3)
		CSRan3 = AddSliderOption("Third Ranged Percentage", CSRanSlider3, "{1} %", FollowerFlag3)
		CSMag3 = AddSliderOption("Third Magic Percentage", CSMagSlider3, "{1} %", FollowerFlag3)
		CSSta3 = AddSliderOption("Third Staff Percentage", CSStaSlider3, "{1} %", FollowerFlag3)
		CSUna3 = AddSliderOption("Third Unarmed Percentage", CSUnaSlider3, "{1} %", FollowerFlag3)
		CSDual3 = AddToggleOption("Third Dual Wielding", CSDualToggle3, FollowerFlag3)
		LightFood3 = AddToggleOption("Light Foot Spell", LightFoodToggle3, FollowerFlag3)		
	ElseIf (Page == "4th Follower Options")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		AddHeaderOption("$Settings")		
		Int FollowerFlag4
		If AliasArray[3].GetActorReference() == none		
			FollowerFlag4 = OPTION_FLAG_DISABLED
		EndIf	
		FollowerDismiss4 = AddTextOption("Dismiss fourth Follower!", "Click me!", FollowerFlag4)			
		Ctyle4 = AddMenuOption("Choose Actor Class", CList4[CtyleIndex4], FollowerFlag4)
		F4_Health = AddSliderOption("Fourth Follower Health", F4_Health_Slider, "{1}", FollowerFlag4)
		F4_Stamina = AddSliderOption("Fourth Follower Stamina", F4_Stamina_Slider, "{1}", FollowerFlag4)
		F4_Magicka = AddSliderOption("Fourth Follower Magicka", F4_Magicka_Slider, "{1}", FollowerFlag4)		
		CarryWeightPointsFollower4 = AddSliderOption("Fourth Follower Carry Weight", CarryWeightPointsFollowerSlider4, "{1}", FollowerFlag4)
		SpeedPointsFollower4 = AddSliderOption("Fourth Follower Speed", SpeedPointsFollowerSlider4, "{1}", FollowerFlag4)
		AggressionFollower4 = AddSliderOption("Fourth Follower Aggression", FollowerAggressionSlider4, "{1}", FollowerFlag4)
		ConfidenceFollower4 = AddSliderOption("Fourth Follower Confidence", FollowerConfidenceSlider4, "{1}", FollowerFlag4)
		AssistanceFollower4 = AddSliderOption("Fourth Follower Assistance", FollowerAssistanceSlider4, "{1}", FollowerFlag4)
		MoralityFollower4 = AddSliderOption("Fourth Follower Morality", FollowerMoralitySlider4, "{1}", FollowerFlag4)	
		SetCursorPosition(1)
		AddHeaderOption("Combat Style")
		CStyle4 = AddMenuOption("Choose Combat Style", CSList4[CStyleIndex4], FollowerFlag4)		
		CSOff4 = AddSliderOption("Fourth Offensive Mult", CSOffSlider4, "{1}", FollowerFlag4)
		CSDef4 = AddSliderOption("Fourth Defensive Mult", CSDefSlider4, "{1}", FollowerFlag4)
		CSMel4 = AddSliderOption("Fourth Melee Percentage", CSMelSlider4, "{1} %", FollowerFlag4)
		CSRan4 = AddSliderOption("Fourth Ranged Percentage", CSRanSlider4, "{1} %", FollowerFlag4)
		CSMag4 = AddSliderOption("Fourth Magic Percentage", CSMagslider4, "{1} %", FollowerFlag4)
		CSSta4 = AddSliderOption("Fourth Staff Percentage", CSStaSlider4, "{1} %", FollowerFlag4)
		CSUna4 = AddSliderOption("Fourth Unarmed Percentage", CSUnaSlider4, "{1} %", FollowerFlag4)
		CSDual4 = AddToggleOption("Fourth Dual Wielding", CSDualToggle4, FollowerFlag4)	
		LightFood4 = AddToggleOption("Light Foot Spell", LightFoodToggle4, FollowerFlag4)		
	ElseIf (Page == "5th Follower Options")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		AddHeaderOption("$Settings")		
		Int FollowerFlag5
		If AliasArray[4].GetActorReference() == none		
			FollowerFlag5 = OPTION_FLAG_DISABLED
		EndIf	
		FollowerDismiss5 = AddTextOption("Dismiss fifth Follower!", "Click me!", FollowerFlag5)		
		Ctyle5 = AddMenuOption("Choose Actor Class", CList5[CtyleIndex5], FollowerFlag5)
		F5_Health = AddSliderOption("Fifth Follower Health", F5_Health_Slider, "{1}", FollowerFlag5)
		F5_Stamina = AddSliderOption("Fifth Follower Stamina", F5_Stamina_Slider, "{1}", FollowerFlag5)
		F5_Magicka = AddSliderOption("Fifth Follower Magicka", F5_Magicka_Slider, "{1}", FollowerFlag5)		
		CarryWeightPointsFollower5 = AddSliderOption("Fifth Follower Carry Weight", CarryWeightPointsFollowerSlider5, "{1}", FollowerFlag5)
		SpeedPointsFollower5 = AddSliderOption("Fifth Follower Speed", SpeedPointsFollowerSlider5, "{1}", FollowerFlag5)
		AggressionFollower5 = AddSliderOption("Fifth Follower Aggression", FollowerAggressionSlider5, "{1}", FollowerFlag5)
		ConfidenceFollower5 = AddSliderOption("Fifth Follower Confidence", FollowerConfidenceSlider5, "{1}", FollowerFlag5)
		AssistanceFollower5 = AddSliderOption("Fifth Follower Assistance", FollowerAssistanceSlider5, "{1}", FollowerFlag5)
		MoralityFollower5 = AddSliderOption("Fifth Follower Morality", FollowerMoralitySlider5, "{1}", FollowerFlag5)		
		SetCursorPosition(1)
		AddHeaderOption("Combat Style")
		CStyle5 = AddMenuOption("Choose Combat Style", CSList5[CStyleIndex5], FollowerFlag5)		
		CSOff5 = AddSliderOption("Fifth Offensive Mult", CSOffSlider5, "{1}", FollowerFlag5)
		CSDef5 = AddSliderOption("Fifth Defensive Mult", CSDefSlider5, "{1}", FollowerFlag5)
		CSMel5 = AddSliderOption("Fifth Melee Percentage", CSMelSlider5, "{1} %", FollowerFlag5)
		CSRan5 = AddSliderOption("Fifth Ranged Percentage", CSRanSlider5, "{1} %", FollowerFlag5)
		CSMag5 = AddSliderOption("Fifth Magic Percentage", CSMagSlider5, "{1} %", FollowerFlag5)
		CSSta5 = AddSliderOption("Fifth Staff Percentage", CSStaSlider5, "{1} %", FollowerFlag5)
		CSUna5 = AddSliderOption("Fifth Unarmed Percentage", CSUnaSlider5, "{1} %", FollowerFlag5)
		CSDual5 = AddToggleOption("Fifth Dual Wielding", CSDualToggle5, FollowerFlag5)
		LightFood5 = AddToggleOption("Light Foot Spell", LightFoodToggle5, FollowerFlag5)		
	ElseIf (Page == "1st Follower Skills")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		If AliasArray[0].GetActorReference() == none		
			FollowerFlag1 = OPTION_FLAG_DISABLED
		EndIf	
		AddHeaderOption("Combat Skills")		
		F1_OH = AddSliderOption("One Handed Skill", F1_OH_Slider, "{1}", FollowerFlag1)
		F1_TH = AddSliderOption("Two Handed Skill", F1_TH_Slider, "{1}", FollowerFlag1)
		F1_MM = AddSliderOption("Archery Skill", F1_MM_Slider, "{1}", FollowerFlag1)
		F1_BL = AddSliderOption("Block Skill", F1_BL_Slider, "{1}", FollowerFlag1)
		F1_SM = AddSliderOption("Smithing Skill", F1_SM_Slider, "{1}", FollowerFlag1)
		F1_HA = AddSliderOption("Heavy Armor Skill", F1_HA_Slider, "{1}", FollowerFlag1)
		AddHeaderOption("Magical Skills")
		F1_AN = AddSliderOption("Alteration Skill", F1_AN_Slider, "{1}", FollowerFlag1)
		F1_CO = AddSliderOption("Conjuration Skill", F1_CO_Slider, "{1}", FollowerFlag1)
		F1_DE = AddSliderOption("Destruction Skill", F1_DE_Slider, "{1}", FollowerFlag1)
		SetCursorPosition(1)
		AddHeaderOption("Stealth Skills")		
		F1_LA = AddSliderOption("Light Armor Skill", F1_LA_Slider, "{1}", FollowerFlag1)
		F1_PP = AddSliderOption("Pickpocket Skill", F1_PP_Slider, "{1}", FollowerFlag1)
		F1_LP = AddSliderOption("Lockpicking Skill", F1_LP_Slider, "{1}", FollowerFlag1)
		F1_SN = AddSliderOption("Sneak Skill", F1_SN_Slider, "{1}", FollowerFlag1)
		F1_AL = AddSliderOption("Alchemy Skill", F1_AL_Slider, "{1}", FollowerFlag1)
		F1_SP = AddSliderOption("Speech Skill", F1_SP_Slider, "{1}", FollowerFlag1)
		AddHeaderOption("Magical Skills")
		F1_IL = AddSliderOption("Illusion Skill", F1_IL_Slider, "{1}", FollowerFlag1)
		F1_RE = AddSliderOption("Restoration Skill", F1_RE_Slider, "{1}", FollowerFlag1)
		F1_EN = AddSliderOption("Enchantment Skill", F1_EN_Slider, "{1}", FollowerFlag1)		
	ElseIf (Page == "2nd Follower Skills")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		Int FollowerFlag2
		If AliasArray[1].GetActorReference() == none		
			FollowerFlag2 = OPTION_FLAG_DISABLED
		EndIf	
		AddHeaderOption("Combat Skills")		
		F2_OH = AddSliderOption("One Handed Skill", F2_OH_Slider, "{1}", FollowerFlag2)
		F2_TH = AddSliderOption("Two Handed Skill", F2_TH_Slider, "{1}", FollowerFlag2)
		F2_MM = AddSliderOption("Archery Skill", F2_MM_Slider, "{1}", FollowerFlag2)
		F2_BL = AddSliderOption("Block Skill", F2_BL_Slider, "{1}", FollowerFlag2)
		F2_SM = AddSliderOption("Smithing Skill", F2_SM_Slider, "{1}", FollowerFlag2)
		F2_HA = AddSliderOption("Heavy Armor Skill", F2_HA_Slider, "{1}", FollowerFlag2)
		AddHeaderOption("Magical Skills")
		F2_AN = AddSliderOption("Alteration Skill", F2_AN_Slider, "{1}", FollowerFlag2)
		F2_CO = AddSliderOption("Conjuration Skill", F2_CO_Slider, "{1}", FollowerFlag2)
		F2_DE = AddSliderOption("Destruction Skill", F2_DE_Slider, "{1}", FollowerFlag2)
		SetCursorPosition(1)
		AddHeaderOption("Stealth Skills")		
		F2_LA = AddSliderOption("Light Armor Skill", F2_LA_Slider, "{1}", FollowerFlag2)
		F2_PP = AddSliderOption("Pickpocket Skill", F2_PP_Slider, "{1}", FollowerFlag2)
		F2_LP = AddSliderOption("Lockpicking Skill", F2_LP_Slider, "{1}", FollowerFlag2)
		F2_SN = AddSliderOption("Sneak Skill", F2_SN_Slider, "{1}", FollowerFlag2)
		F2_AL = AddSliderOption("Alchemy Skill", F2_AL_Slider, "{1}", FollowerFlag2)
		F2_SP = AddSliderOption("Speech Skill", F2_SP_Slider, "{1}", FollowerFlag2)
		AddHeaderOption("Magical Skills")
		F2_IL = AddSliderOption("Illusion Skill", F2_IL_Slider, "{1}", FollowerFlag2)
		F2_RE = AddSliderOption("Restoration Skill", F2_RE_Slider, "{1}", FollowerFlag2)
		F2_EN = AddSliderOption("Enchantment Skill", F2_EN_Slider, "{1}", FollowerFlag2)
	ElseIf (Page == "3rd Follower Skills")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		Int FollowerFlag3
		If AliasArray[2].GetActorReference() == none		
			FollowerFlag3 = OPTION_FLAG_DISABLED
		EndIf	
		AddHeaderOption("Combat Skills")		
		F3_OH = AddSliderOption("One Handed Skill", F3_OH_Slider, "{1}", FollowerFlag3)
		F3_TH = AddSliderOption("Two Handed Skill", F3_TH_Slider, "{1}", FollowerFlag3)
		F3_MM = AddSliderOption("Archery Skill", F3_MM_Slider, "{1}", FollowerFlag3)
		F3_BL = AddSliderOption("Block Skill", F3_BL_Slider, "{1}", FollowerFlag3)
		F3_SM = AddSliderOption("Smithing Skill", F3_SM_Slider, "{1}", FollowerFlag3)
		F3_HA = AddSliderOption("Heavy Armor Skill", F3_HA_Slider, "{1}", FollowerFlag3)
		AddHeaderOption("Magical Skills")
		F3_AN = AddSliderOption("Alteration Skill", F3_AN_Slider, "{1}", FollowerFlag3)
		F3_CO = AddSliderOption("Conjuration Skill", F3_CO_Slider, "{1}", FollowerFlag3)
		F3_DE = AddSliderOption("Destruction Skill", F3_DE_Slider, "{1}", FollowerFlag3)
		SetCursorPosition(1)
		AddHeaderOption("Stealth Skills")		
		F3_LA = AddSliderOption("Light Armor Skill", F3_LA_Slider, "{1}", FollowerFlag3)
		F3_PP = AddSliderOption("Pickpocket Skill", F3_PP_Slider, "{1}", FollowerFlag3)
		F3_LP = AddSliderOption("Lockpicking Skill", F3_LP_Slider, "{1}", FollowerFlag3)
		F3_SN = AddSliderOption("Sneak Skill", F3_SN_Slider, "{1}", FollowerFlag3)
		F3_AL = AddSliderOption("Alchemy Skill", F3_AL_Slider, "{1}", FollowerFlag3)
		F3_SP = AddSliderOption("Speech Skill", F3_SP_Slider, "{1}", FollowerFlag3)
		AddHeaderOption("Magical Skills")
		F3_IL = AddSliderOption("Illusion Skill", F3_IL_Slider, "{1}", FollowerFlag3)
		F3_RE = AddSliderOption("Restoration Skill", F3_RE_Slider, "{1}", FollowerFlag3)
		F3_EN = AddSliderOption("Enchantment Skill", F3_EN_Slider, "{1}", FollowerFlag3)			
	ElseIf (Page == "4th Follower Skills")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		Int FollowerFlag4
		If AliasArray[3].GetActorReference() == none		
			FollowerFlag4 = OPTION_FLAG_DISABLED
		EndIf
		AddHeaderOption("Combat Skills")		
		F4_OH = AddSliderOption("One Handed Skill", F4_OH_Slider, "{1}", FollowerFlag4)
		F4_TH = AddSliderOption("Two Handed Skill", F4_TH_Slider, "{1}", FollowerFlag4)
		F4_MM = AddSliderOption("Archery Skill", F4_MM_Slider, "{1}", FollowerFlag4)
		F4_BL = AddSliderOption("Block Skill", F4_BL_Slider, "{1}", FollowerFlag4)
		F4_SM = AddSliderOption("Smithing Skill", F4_SM_Slider, "{1}", FollowerFlag4)
		F4_HA = AddSliderOption("Heavy Armor Skill", F4_HA_Slider, "{1}", FollowerFlag4)
		AddHeaderOption("Magical Skills")
		F4_AN = AddSliderOption("Alteration Skill", F4_AN_Slider, "{1}", FollowerFlag4)
		F4_CO = AddSliderOption("Conjuration Skill", F4_CO_Slider, "{1}", FollowerFlag4)
		F4_DE = AddSliderOption("Destruction Skill", F4_DE_Slider, "{1}", FollowerFlag4)
		SetCursorPosition(1)
		AddHeaderOption("Stealth Skills")		
		F4_LA = AddSliderOption("Light Armor Skill", F4_LA_Slider, "{1}", FollowerFlag4)
		F4_PP = AddSliderOption("Pickpocket Skill", F4_PP_Slider, "{1}", FollowerFlag4)
		F4_LP = AddSliderOption("Lockpicking Skill", F4_LP_Slider, "{1}", FollowerFlag4)
		F4_SN = AddSliderOption("Sneak Skill", F4_SN_Slider, "{1}", FollowerFlag4)
		F4_AL = AddSliderOption("Alchemy Skill", F4_AL_Slider, "{1}", FollowerFlag4)
		F4_SP = AddSliderOption("Speech Skill", F4_SP_Slider, "{1}", FollowerFlag4)
		AddHeaderOption("Magical Skills")
		F4_IL = AddSliderOption("Illusion Skill", F4_IL_Slider, "{1}", FollowerFlag4)
		F4_RE = AddSliderOption("Restoration Skill", F4_RE_Slider, "{1}", FollowerFlag4)
		F4_EN = AddSliderOption("Enchantment Skill", F4_EN_Slider, "{1}", FollowerFlag4)	
	ElseIf (Page == "5th Follower Skills")
		SetCursorFillMode(TOP_TO_BOTTOM)
		SetCursorPosition(0)
		Int FollowerFlag5
		If AliasArray[4].GetActorReference() == none
			FollowerFlag5 = OPTION_FLAG_DISABLED
		EndIf
		AddHeaderOption("Combat Skills")		
		F5_OH = AddSliderOption("One Handed Skill", F5_OH_Slider, "{1}", FollowerFlag5)
		F5_TH = AddSliderOption("Two Handed Skill", F5_TH_Slider, "{1}", FollowerFlag5)
		F5_MM = AddSliderOption("Archery Skill", F5_MM_Slider, "{1}", FollowerFlag5)
		F5_BL = AddSliderOption("Block Skill", F5_BL_Slider, "{1}", FollowerFlag5)
		F5_SM = AddSliderOption("Smithing Skill", F5_SM_Slider, "{1}", FollowerFlag5)
		F5_HA = AddSliderOption("Heavy Armor Skill", F5_HA_Slider, "{1}", FollowerFlag5)
		AddHeaderOption("Magical Skills")
		F5_AN = AddSliderOption("Alteration Skill", F5_AN_Slider, "{1}", FollowerFlag5)
		F5_CO = AddSliderOption("Conjuration Skill", F5_CO_Slider, "{1}", FollowerFlag5)
		F5_DE = AddSliderOption("Destruction Skill", F5_DE_Slider, "{1}", FollowerFlag5)
		SetCursorPosition(1)
		AddHeaderOption("Stealth Skills")		
		F5_LA = AddSliderOption("Light Armor Skill", F5_LA_Slider, "{1}", FollowerFlag5)
		F5_PP = AddSliderOption("Pickpocket Skill", F5_PP_Slider, "{1}", FollowerFlag5)
		F5_LP = AddSliderOption("Lockpicking Skill", F5_LP_Slider, "{1}", FollowerFlag5)
		F5_SN = AddSliderOption("Sneak Skill", F5_SN_Slider, "{1}", FollowerFlag5)
		F5_AL = AddSliderOption("Alchemy Skill", F5_AL_Slider, "{1}", FollowerFlag5)
		F5_SP = AddSliderOption("Speech Skill", F5_SP_Slider, "{1}", FollowerFlag5)
		AddHeaderOption("Magical Skills")
		F5_IL = AddSliderOption("Illusion Skill", F5_IL_Slider, "{1}", FollowerFlag5)
		F5_RE = AddSliderOption("Restoration Skill", F5_RE_Slider, "{1}", FollowerFlag5)
		F5_EN = AddSliderOption("Enchantment Skill", F5_EN_Slider, "{1}", FollowerFlag5)		
	EndIf
	
	;RestoreActorValues()	

EndEvent

Event OnOptionHighlight(int Option)

	If (Option == BumpTime)
		SetInfoText("Enable Followers responding better if they stand in your way and you bump into them! Default: off")
	ElseIf (Option == WeapDraw)
		SetInfoText("Toggle Followers not drawing weapons with you! Default: off")
	ElseIf (Option == FollowerSpace)
		SetInfoText("Adjust distance between you and followers and in between followers!")
	ElseIf (Option == FollowerWhistle)
		SetInfoText("Enable Whistle when using hotkey commands, and not in sneak stance! Default: off")		
	ElseIf (Option == FollowerAll)
		SetInfoText("Adds a lesser power and dialogue option to make anyone Follower!")			
	ElseIf (Option == WageSystem)
		SetInfoText("Toggle Wage system on/off! This will need you to give followers money, food, drinks and time to relax. Default: off")
	ElseIf (Option == MoneyCount)
		SetInfoText("Set up the amount of Gold your followers will gain every hour!")
	ElseIf (Option == MoneyThresh)
		SetInfoText("Set up the threshold of money your follower will leave you!")		
	ElseIf (Option == ResetAll)
		SetInfoText("Reset all Hotkeys. Warning , if you reset and then exit menu without redefining the keys, they will flip back to display the last selected hotkey, without functioning!")
	ElseIf (Option == WageWidget)
		SetInfoText("Turn on/off Wage Counter! Default: on")
	ElseIf (Option == WagePosX)
		SetInfoText("Set the horizontal position of the Wage Widget!")
	ElseIf (Option == WagePosY)
		SetInfoText("Set the vertical position of the Wage Widget!")
	ElseIf (Option == WageAnchorH)
		SetInfoText("Set the horizontal anchor of the Wage Widget! Used for faster replacement ")
	ElseIf (Option == WageAnchorV)
		SetInfoText("Set the vertical anchor of the Wage Widget! Used for faster replacement ")	
	ElseIf (Option == WageAlpha)
		SetInfoText("Set the transparency of the Wage Widget!")
	ElseIf (Option == WageScale)
		SetInfoText("Set the size of the Wage Widget!")			
	ElseIf (Option == KeyQuickTrade)
		SetInfoText("Define your Follower Trade Hotkey!")
	ElseIf (Option == KeyQuickCommand)
		SetInfoText("Define your Follower Command Hotkey!")
	ElseIf (Option == KeyQuickSummon)
		SetInfoText("Define a Hotkey to call/summon your follower!")
	ElseIf (Option == KeyQuickRelax)
		SetInfoText("Define a Hotkey to send your Follower relaxing!")
	ElseIf (Option == KeyQuickAvoid)
		SetInfoText("Define a Hotkey to tell your Follower to avoid combat!")
	ElseIf (Option == KeyQuickLookBack)
		SetInfoText("Define a Hotkey to change camera to Follower!")
	ElseIf (Option == KeyQuickDrawWeapon)
		SetInfoText("Define a Hotkey to make your Follower draw his/her weapon!")
	ElseIf (Option == KeyQuickWidget)
		SetInfoText("Define a Hotkey to toggle Follower Widgets on/off!")
	ElseIf (Option == KeyQuickMenu)
		SetInfoText("Define a Hotkey to activate Follower Statistic Menu!")
	ElseIf (Option == KeyQuickMagic)
		SetInfoText("Define a Hotkey to activate Follower Magic Menu!")		
	Elseif option == FollowerDismiss1
		SetInfoText("Dismiss first Follower!")
	Elseif option == FollowerDismiss2
		SetInfoText("Dismiss second Follower!")	
	Elseif option == FollowerDismiss3
		SetInfoText("Dismiss third Follower!")	
	Elseif option == FollowerDismiss4
		SetInfoText("Dismiss fourth Follower!")	
	Elseif option == FollowerDismiss5
		SetInfoText("Dismiss fifth Follower!")		
	Elseif option == CStyle1
		SetInfoText("Choose Combat Style for this Follower!")
	Elseif option == CStyle2
		SetInfoText("Choose Combat Style for this Follower!")
	Elseif option == CStyle3
		SetInfoText("Choose Combat Style for this Follower!")
	Elseif option == CStyle4
		SetInfoText("Choose Combat Style for this Follower!")
	Elseif option == CStyle5
		SetInfoText("Choose Combat Style for this Follower!")
	Elseif option == Ctyle1
		SetInfoText("Choose Actor Class for this Follower!")
	Elseif option == Ctyle2
		SetInfoText("Choose Actor Class for this Follower!")
	Elseif option == Ctyle3
		SetInfoText("Choose Actor Class for this Follower!")
	Elseif option == Ctyle4
		SetInfoText("Choose Actor Class for this Follower!")
	Elseif option == Ctyle5
		SetInfoText("Choose Actor Class for this Follower!")		
	ElseIf (Option == CarryWeightPointsFollower1)
		SetInfoText("Set Follower Base Carry Weight on first Follower!")
	ElseIf (Option == CarryWeightPointsFollower2)
		SetInfoText("Set Follower Base Carry Weight on second Follower!")
	ElseIf (Option == CarryWeightPointsFollower3)
		SetInfoText("Set Follower Base Carry Weight on third Follower!")
	ElseIf (Option == CarryWeightPointsFollower4)
		SetInfoText("Set Follower Base Carry Weight on third Follower!")
	ElseIf (Option == CarryWeightPointsFollower5)
		SetInfoText("Set Follower Base Carry Weight on third Follower!")		
	ElseIf (Option == SpeedPointsFollower1)
		SetInfoText("Set First Follower Base Speed Multiplier!")
	ElseIf (Option == SpeedPointsFollower2)
		SetInfoText("Set Second Follower Base Speed Multiplier!")
	ElseIf (Option == SpeedPointsFollower3)
		SetInfoText("Set Third Follower Base Speed Multiplier!")
	ElseIf (Option == SpeedPointsFollower4)
		SetInfoText("Set Fourth Follower Base Speed Multiplier!")
	ElseIf (Option == SpeedPointsFollower5)
		SetInfoText("Set Fifth Follower Base Speed Multiplier!")
	ElseIf (Option == AggressionFollower1)
		SetInfoText("Set First Follower Aggression! 0 = Unaggressive (will never attack), 1 = Aggressive (will always attack)!")
	ElseIf (Option == AggressionFollower2)
		SetInfoText("Set Second Follower Aggression! 0 = Unaggressive (will never attack), 1 = Aggressive (will always attack)!")
	ElseIf (Option == AggressionFollower3)
		SetInfoText("Set Third Follower Aggression! 0 = Unaggressive (will never attack), 1 = Aggressive (will always attack)!")
	ElseIf (Option == AggressionFollower4)
		SetInfoText("Set Fourth Follower Aggression! 0 = Unaggressive (will never attack), 1 = Aggressive (will always attack)!")
	ElseIf (Option == AggressionFollower5)
		SetInfoText("Set Fifth Follower Aggression! 0 = Unaggressive (will never attack), 1 = Aggressive (will always attack)!")
	ElseIf (Option == ConfidenceFollower1)
		SetInfoText("Set First Follower Confidence! 0 = Coward (will always flee from battle), 4 = Foolhard (will never flee from battle)!")
	ElseIf (Option == ConfidenceFollower2)
		SetInfoText("Set Second Follower Confidence! 0 = Coward (will always flee from battle), 4 = Foolhard (will never flee from battle)!")
	ElseIf (Option == ConfidenceFollower3)
		SetInfoText("Set Third Follower Confidence! 0 = Coward (will always flee from battle), 4 = Foolhard (will never flee from battle)!")
	ElseIf (Option == ConfidenceFollower4)
		SetInfoText("Set Fourth Follower Confidence! 0 = Coward (will always flee from battle), 4 = Foolhard (will never flee from battle)!")
	ElseIf (Option == ConfidenceFollower5)
		SetInfoText("Set Fifth Follower Confidence! 0 = Coward (will always flee from battle), 4 = Foolhard (will never flee from battle)!")
	ElseIf (Option == AssistanceFollower1)
		SetInfoText("Set First Follower Assistance! 0 = Helps no One (will not enter combat if friends get attacked), 2 = Helps Anyone (will always enter combat if friends get attacked)!")
	ElseIf (Option == AssistanceFollower2)
		SetInfoText("Set Second Follower Assistance! 0 = Helps no One (will not enter combat if friends get attacked), 2 = Helps Anyone (will always enter combat if friends get attacked)!")
	ElseIf (Option == AssistanceFollower3)
		SetInfoText("Set Third Follower Assistance! 0 = Helps no One (will not enter combat if friends get attacked), 2 = Helps Anyone (will always enter combat if friends get attacked)!")
	ElseIf (Option == AssistanceFollower4)
		SetInfoText("Set Fourth Follower Assistance! 0 = Helps no One (will not enter combat if friends get attacked), 2 = Helps Anyone (will always enter combat if friends get attacked)!")
	ElseIf (Option == AssistanceFollower5)
		SetInfoText("Set Fifth Follower Assistance! 0 = Helps no One (will not enter combat if friends get attacked), 2 = Helps Anyone (will always enter combat if friends get attacked)!")
	ElseIf (Option == MoralityFollower1)
		SetInfoText("Set First Follower Morality! 0 = Commits any Crime (won't react to your crimes), 3 = Commits no Crime (will always react to your crimes)!")
	ElseIf (Option == MoralityFollower2)
		SetInfoText("Set Second Follower Morality! 0 = Commits any Crime (won't react to your crimes), 3 = Commits no Crime (will always react to your crimes)!")
	ElseIf (Option == MoralityFollower3)
		SetInfoText("Set Third Follower Morality! 0 = Commits any Crime (won't react to your crimes), 3 = Commits no Crime (will always react to your crimes)!")
	ElseIf (Option == MoralityFollower4)
		SetInfoText("Set Fourth Follower Morality! 0 = Commits any Crime (won't react to your crimes), 3 = Commits no Crime (will always react to your crimes)!")
	ElseIf (Option == MoralityFollower5)
		SetInfoText("Set Fifth Follower Morality! 0 = Commits any Crime (won't react to your crimes), 3 = Commits no Crime (will always react to your crimes)!")
	ElseIf (Option == FollowerWidget1)
		SetInfoText("Turn on/off Follower Counter! Default: on")
	ElseIf (Option == FollowerPosX1)
		SetInfoText("Set the horizontal position of the Follower Widget!")
	ElseIf (Option == FollowerPosY1)
		SetInfoText("Set the vertical position of the Follower Widget!")
	ElseIf (Option == FollowerAnchorH1)
		SetInfoText("Set the horizontal anchor of the Follower Widget! Used for faster replacement ")
	ElseIf (Option == FollowerAnchorV1)
		SetInfoText("Set the vertical anchor of the Follower Widget! Used for faster replacement ")	
	ElseIf (Option == FollowerAlpha1)
		SetInfoText("Set the transparency of the Follower Widget!")
	ElseIf (Option == FollowerScale1)
		SetInfoText("Set the size of the Follower Widget!")	
	ElseIf (Option == FollowerWidget2)
		SetInfoText("Turn on/off Follower Counter! Default: on")
	ElseIf (Option == FollowerPosX2)
		SetInfoText("Set the horizontal position of the Follower Widget!")
	ElseIf (Option == FollowerPosY2)
		SetInfoText("Set the vertical position of the Follower Widget!")
	ElseIf (Option == FollowerAnchorH2)
		SetInfoText("Set the horizontal anchor of the Follower Widget! Used for faster replacement ")
	ElseIf (Option == FollowerAnchorV2)
		SetInfoText("Set the vertical anchor of the Follower Widget! Used for faster replacement ")	
	ElseIf (Option == FollowerAlpha2)
		SetInfoText("Set the transparency of the Follower Widget!")
	ElseIf (Option == FollowerScale2)
		SetInfoText("Set the size of the Follower Widget!")
	ElseIf (Option == FollowerWidget3)
		SetInfoText("Turn on/off Follower Counter! Default: on")
	ElseIf (Option == FollowerPosX3)
		SetInfoText("Set the horizontal position of the Follower Widget!")
	ElseIf (Option == FollowerPosY3)
		SetInfoText("Set the vertical position of the Follower Widget!")
	ElseIf (Option == FollowerAnchorH3)
		SetInfoText("Set the horizontal anchor of the Follower Widget! Used for faster replacement ")
	ElseIf (Option == FollowerAnchorV3)
		SetInfoText("Set the vertical anchor of the Follower Widget! Used for faster replacement ")	
	ElseIf (Option == FollowerAlpha3)
		SetInfoText("Set the transparency of the Follower Widget!")
	ElseIf (Option == FollowerScale3)
		SetInfoText("Set the size of the Follower Widget!")	
	ElseIf (Option == FollowerWidget4)
		SetInfoText("Turn on/off Follower Counter! Default: on")
	ElseIf (Option == FollowerPosX4)
		SetInfoText("Set the horizontal position of the Follower Widget!")
	ElseIf (Option == FollowerPosY4)
		SetInfoText("Set the vertical position of the Follower Widget!")
	ElseIf (Option == FollowerAnchorH4)
		SetInfoText("Set the horizontal anchor of the Follower Widget! Used for faster replacement ")
	ElseIf (Option == FollowerAnchorV4)
		SetInfoText("Set the vertical anchor of the Follower Widget! Used for faster replacement ")	
	ElseIf (Option == FollowerAlpha4)
		SetInfoText("Set the transparency of the Follower Widget!")
	ElseIf (Option == FollowerScale4)
		SetInfoText("Set the size of the Follower Widget!")	
	ElseIf (Option == FollowerWidget5)
		SetInfoText("Turn on/off Follower Counter! Default: on")
	ElseIf (Option == FollowerPosX5)
		SetInfoText("Set the horizontal position of the Follower Widget!")
	ElseIf (Option == FollowerPosY5)
		SetInfoText("Set the vertical position of the Follower Widget!")
	ElseIf (Option == FollowerAnchorH5)
		SetInfoText("Set the horizontal anchor of the Follower Widget! Used for faster replacement ")
	ElseIf (Option == FollowerAnchorV5)
		SetInfoText("Set the vertical anchor of the Follower Widget! Used for faster replacement ")	
	ElseIf (Option == FollowerAlpha5)
		SetInfoText("Set the transparency of the Follower Widget!")
	ElseIf (Option == FollowerScale5)
		SetInfoText("Set the size of the Follower Widget!")		
	ElseIf (Option == LightFood1)
		SetInfoText("Give the light foot spell to this follower, so she/he won't enable traps! Default: off")
	ElseIf (Option == LightFood2)
		SetInfoText("Give the light foot spell to this follower, so she/he won't enable traps! Default: off")
	ElseIf (Option == LightFood3)
		SetInfoText("Give the light foot spell to this follower, so she/he won't enable traps! Default: off")
	ElseIf (Option == LightFood4)
		SetInfoText("Give the light foot spell to this follower, so she/he won't enable traps! Default: off")
	ElseIf (Option == LightFood5)
		SetInfoText("Give the light foot spell to this follower, so she/he won't enable traps! Default: off")		
	ElseIf (Option == UpdateTimerInt)
		SetInfoText("Set the interval of the update script in seconds!")
	ElseIf (Option == FissLoad)
		SetInfoText("Load user preset from .xml!")
	ElseIf (Option == FissSave)
		SetInfoText("Save user preset to .xml!")
	ElseIf (Option == CSOff1)
		SetInfoText("Set Offensive Combat Multiplier of your first Follower!")
	ElseIf (Option == CSDef1)
		SetInfoText("Set Defensive Combat Multiplier of your first Follower!")
	ElseIf (Option == CSMel1)
		SetInfoText("Set Melee Combat Multiplier of your first Follower!")
	ElseIf (Option == CSRan1)
		SetInfoText("Set Ranged Combat Multiplier of your first Follower!")
	ElseIf (Option == CSMag1)
		SetInfoText("Set Magic Combat Multiplier of your first Follower!")
	ElseIf (Option == CSSta1)
		SetInfoText("Set Staff Combat Multiplier of your first Follower!")
	ElseIf (Option == CSUna1)
		SetInfoText("Set Unarmed Combat Multiplier of your first Follower!")
	ElseIf (Option == CSDual1)
		SetInfoText("Toggle Dual Wield capability of your first Follower on this Combat Style! Default: off")
	ElseIf (Option == CSOff2)
		SetInfoText("Set Offensive Combat Multiplier of your second Follower!")
	ElseIf (Option == CSDef2)
		SetInfoText("Set Defensive Combat Multiplier of your second Follower!")
	ElseIf (Option == CSMel2)
		SetInfoText("Set Melee Combat Multiplier of your second Follower!")
	ElseIf (Option == CSRan2)
		SetInfoText("Set Ranged Combat Multiplier of your second Follower!")
	ElseIf (Option == CSMag2)
		SetInfoText("Set Magic Combat Multiplier of your second Follower!")
	ElseIf (Option == CSSta2)
		SetInfoText("Set Staff Combat Multiplier of your second Follower!")
	ElseIf (Option == CSUna2)
		SetInfoText("Set Unarmed Combat Multiplier of your second Follower!")
	ElseIf (Option == CSDual2)
		SetInfoText("Toggle Dual Wield capability of your second Follower on this Combat Style! Default: off")	
	ElseIf (Option == CSOff3)
		SetInfoText("Set Offensive Combat Multiplier of your third Follower!")
	ElseIf (Option == CSDef3)
		SetInfoText("Set Defensive Combat Multiplier of your third Follower!")
	ElseIf (Option == CSMel3)
		SetInfoText("Set Melee Combat Multiplier of your third Follower!")
	ElseIf (Option == CSRan3)
		SetInfoText("Set Ranged Combat Multiplier of your third Follower!")
	ElseIf (Option == CSMag3)
		SetInfoText("Set Magic Combat Multiplier of your third Follower!")
	ElseIf (Option == CSSta3)
		SetInfoText("Set Staff Combat Multiplier of your third Follower!")
	ElseIf (Option == CSUna3)
		SetInfoText("Set Unarmed Combat Multiplier of your third Follower!")
	ElseIf (Option == CSDual3)
		SetInfoText("Toggle Dual Wield capability of your third Follower on this Combat Style! Default: off")
	ElseIf (Option == CSOff4)
		SetInfoText("Set Offensive Combat Multiplier of your fourth Follower!")
	ElseIf (Option == CSDef4)
		SetInfoText("Set Defensive Combat Multiplier of your fourth Follower!")
	ElseIf (Option == CSMel4)
		SetInfoText("Set Melee Combat Multiplier of your fourth Follower!")
	ElseIf (Option == CSRan4)
		SetInfoText("Set Ranged Combat Multiplier of your fourth Follower!")
	ElseIf (Option == CSMag4)
		SetInfoText("Set Magic Combat Multiplier of your fourth Follower!")
	ElseIf (Option == CSSta4)
		SetInfoText("Set Staff Combat Multiplier of your fourth Follower!")
	ElseIf (Option == CSUna4)
		SetInfoText("Set Unarmed Combat Multiplier of your fourth Follower!")
	ElseIf (Option == CSDual4)
		SetInfoText("Toggle Dual Wield capability of your fourth Follower on this Combat Style! Default: off")
	ElseIf (Option == CSOff5)
		SetInfoText("Set Offensive Combat Multiplier of your fifth Follower!")
	ElseIf (Option == CSDef5)
		SetInfoText("Set Defensive Combat Multiplier of your fifth Follower!")
	ElseIf (Option == CSMel5)
		SetInfoText("Set Melee Combat Multiplier of your fifth Follower!")
	ElseIf (Option == CSRan5)
		SetInfoText("Set Ranged Combat Multiplier of your fifth Follower!")
	ElseIf (Option == CSMag5)
		SetInfoText("Set Magic Combat Multiplier of your fifth Follower!")
	ElseIf (Option == CSSta5)
		SetInfoText("Set Staff Combat Multiplier of your fifth Follower!")
	ElseIf (Option == CSUna5)
		SetInfoText("Set Unarmed Combat Multiplier of your fifth Follower!")
	ElseIf (Option == CSDual5)
		SetInfoText("Toggle Dual Wield capability of your fifth Follower on this Combat Style! Default: off")		
	EndIf

EndEvent

Event OnOptionSelect(int Option)

	If (Option == BumpTime)
		BumpTimeToggle = !BumpTimeToggle
		SetToggleOptionValue(BumpTime, BumpTimeToggle)
		Game.SetGameSettingFloat("fBumpReactionIdealMoveDist", 250.000000)
		Game.SetGameSettingFloat("fBumpReactionMinMoveDist", 250.000000)
		Game.SetGameSettingFloat("fBumpReactionSmallDelayTime", 0.500000)
		Game.SetGameSettingFloat("fBumpReactionSmallWaitTimer", 0.500000)		
		If !BumpTimeToggle
			Game.SetGameSettingFloat("fBumpReactionIdealMoveDist", 125.000000)
			Game.SetGameSettingFloat("fBumpReactionMinMoveDist", 75.000000)
			Game.SetGameSettingFloat("fBumpReactionSmallDelayTime", 1.000000)
			Game.SetGameSettingFloat("fBumpReactionSmallWaitTimer", 3.000000)		
		EndIf
	ElseIf (Option == WeapDraw)
		WeapDrawToggle = !WeapDrawToggle
		SetToggleOptionValue(WeapDraw, WeapDrawToggle)
		Game.SetGameSettingFloat("fAIDistanceTeammateDrawWeapon", 0.000000)		
		If !WeapDrawToggle
			Game.SetGameSettingFloat("fAIDistanceTeammateDrawWeapon", 2000.000000)	
		EndIf
	ElseIf (Option == FollowerWhistle)
		FollowerWhistleToggle = !FollowerWhistleToggle
		SetToggleOptionValue(FollowerWhistle, FollowerWhistleToggle)
		FM_WhistleAllow.SetValueInt(1)		
		If !FollowerWhistleToggle
			FM_WhistleAllow.SetValueInt(0)	
		EndIf		
	ElseIf (Option == FollowerAll)
		FollowerAllToggle = !FollowerAllToggle
		SetToggleOptionValue(FollowerAll, FollowerAllToggle)
		If !PlayerREF.HasSpell(FM_MakeAnyoneFollowerSpell)
			PlayerREF.AddSpell(FM_MakeAnyoneFollowerSpell)
			FM_FollowerAllGlobal.SetValueInt(1)
		EndIf	
		If !FollowerAllToggle
			PlayerREF.RemoveSpell(FM_MakeAnyoneFollowerSpell)
			FM_FollowerAllGlobal.SetValueInt(0)
		EndIf		
	ElseIf (Option == WageSystem)
		WageSystemToggle = !WageSystemToggle
		SetToggleOptionValue(WageSystem, WageSystemToggle)
		WageQuestScript.StartWage()	
		If !WageSystemToggle
			WageQuestScript.StopWage()
		EndIf		
	ElseIf (Option == ResetAll)
		SetKeymapOptionValue(KeyQuickTrade, 0)
		SetKeymapOptionValue(KeyQuickCommand, 0)
		SetKeymapOptionValue(KeyQuickSummon, 0)
		SetKeymapOptionValue(KeyQuickRelax, 0)
		SetKeymapOptionValue(KeyQuickAvoid, 0)
		SetKeymapOptionValue(KeyQuickLookBack, 0)
		SetKeymapOptionValue(KeyQuickDrawWeapon, 0)	
		UnregisterForKey(KeyTrade)
		UnregisterForKey(KeyCommand)
		UnregisterForKey(KeySummon)
		UnregisterForKey(KeyRelax)
		UnregisterForKey(KeyAvoid)		
		UnregisterForKey(KeyLookBack)
		UnregisterForKey(KeyDrawWeapon)
		SetTextOptionValue(Option, "Done, please redefine!")
	ElseIf (Option == WageWidget)
		WageScript.Visible = !WageScript.Visible
		SetToggleOptionValue(Option, WageScript.Visible)		
	ElseIf (Option == FollowerDismiss1)
		DismissFirstFollower()
		SetTextOptionValue(Option, "Done!")		
	ElseIf (Option == FollowerDismiss2)
		DismissSecondFollower()
		SetTextOptionValue(Option, "Done!")			
	ElseIf (Option == FollowerDismiss3)
		DismissThirdFollower()
		SetTextOptionValue(Option, "Done!")			
	ElseIf (Option == FollowerDismiss4)
		DismissFourthFollower()
		SetTextOptionValue(Option, "Done!")			
	ElseIf (Option == FollowerDismiss5)
		DismissFifthFollower()
		SetTextOptionValue(Option, "Done!")		
	ElseIf (Option == FollowerWidget1)
		Follower1Script.Visible = !Follower1Script.Visible
		SetToggleOptionValue(Option, Follower1Script.Visible)
	ElseIf (Option == FollowerWidget2)
		Follower2Script.Visible = !Follower2Script.Visible
		SetToggleOptionValue(Option, Follower2Script.Visible)
	ElseIf (Option == FollowerWidget3)
		Follower3Script.Visible = !Follower3Script.Visible
		SetToggleOptionValue(Option, Follower3Script.Visible)
	ElseIf (Option == FollowerWidget4)
		Follower4Script.Visible = !Follower4Script.Visible
		SetToggleOptionValue(Option, Follower4Script.Visible)
	ElseIf (Option == FollowerWidget5)
		Follower5Script.Visible = !Follower5Script.Visible
		SetToggleOptionValue(Option, Follower5Script.Visible)
	ElseIf (Option == LightFood1)
		LightFoodToggle1 = !LightFoodToggle1
		SetToggleOptionValue(LightFood1, LightFoodToggle1)
		Actor FirstActor = FirstFollower.GetReference() as Actor
		If !FirstActor.HasSpell(FM_LightFootSpell)
			FirstActor.AddSpell(FM_LightFootSpell)
		EndIf	
		If !LightFoodToggle1
			FirstActor.RemoveSpell(FM_LightFootSpell)
		EndIf
	ElseIf (Option == LightFood2)
		LightFoodToggle2 = !LightFoodToggle2
		SetToggleOptionValue(LightFood2, LightFoodToggle2)
		Actor SecondActor = SecondFollower.GetReference() as Actor		
		If !SecondActor.HasSpell(FM_LightFootSpell)
			SecondActor.AddSpell(FM_LightFootSpell)
		EndIf	
		If !LightFoodToggle2
			SecondActor.RemoveSpell(FM_LightFootSpell)
		EndIf	
	ElseIf (Option == LightFood3)
		LightFoodToggle3 = !LightFoodToggle3
		SetToggleOptionValue(LightFood3, LightFoodToggle3)
		Actor ThirdActor = ThirdFollower.GetReference() as Actor			
		If !ThirdActor.HasSpell(FM_LightFootSpell)
			ThirdActor.AddSpell(FM_LightFootSpell)
		EndIf	
		If !LightFoodToggle3
			ThirdActor.RemoveSpell(FM_LightFootSpell)
		EndIf	
	ElseIf (Option == LightFood4)
		LightFoodToggle4 = !LightFoodToggle4
		SetToggleOptionValue(LightFood4, LightFoodToggle4)
		Actor FourthActor = ThirdFollower.GetReference() as Actor		
		If !FourthActor.HasSpell(FM_LightFootSpell)
			FourthActor.AddSpell(FM_LightFootSpell)
		EndIf	
		If !LightFoodToggle4
			FourthActor.RemoveSpell(FM_LightFootSpell)
		EndIf	
	ElseIf (Option == LightFood5)
		LightFoodToggle5 = !LightFoodToggle5
		SetToggleOptionValue(LightFood5, LightFoodToggle5)
		Actor FifthActor = ThirdFollower.GetReference() as Actor		
		If !FifthActor.HasSpell(FM_LightFootSpell)
			FifthActor.AddSpell(FM_LightFootSpell)
		EndIf	
		If !LightFoodToggle5
			FifthActor.RemoveSpell(FM_LightFootSpell)
		EndIf			
	ElseIf (Option == FissLoad)
		FISSInterface fiss = FISSFactory.getFISS()
		If fiss
			fiss.beginLoad("FMUserSettings.xml")		
			SetTextOptionValue(Option, "Done!")
			LoadUserPreset()
		Else
			Debug.Messagebox("FISS not found, load aborted!")
		EndIf	
	ElseIf (Option == FissSave)
		FISSInterface fiss = FISSFactory.getFISS()
		fiss.beginLoad("FMUserSettings.xml")		
		If fiss
			SetTextOptionValue(Option, "Done!")
			SaveUserPreset()
		Else
			Debug.Messagebox("FISS not found, save aborted!")
		EndIf
	ElseIf (Option == CSDual1)
		CS1 = FM_CustomStyle1FL.GetAt(0) as CombatStyle
		CSDualToggle1 = !CSDualToggle1
		SetToggleOptionValue(CSDual1, CSDualToggle1)
		CS1.SetAllowDualWielding(true)	
		If !CSDualToggle1
			CS1.SetAllowDualWielding(false)
		EndIf
	ElseIf (Option == CSDual2)
		CS2 = FM_CustomStyle2FL.GetAt(0) as CombatStyle
		CSDualToggle2 = !CSDualToggle2
		SetToggleOptionValue(CSDual2, CSDualToggle2)
		CS2.SetAllowDualWielding(true)	
		If !CSDualToggle2
			CS2.SetAllowDualWielding(false)
		EndIf
	ElseIf (Option == CSDual3)
		CS3 = FM_CustomStyle3FL.GetAt(0) as CombatStyle
		CSDualToggle3 = !CSDualToggle3
		SetToggleOptionValue(CSDual3, CSDualToggle3)
		CS3.SetAllowDualWielding(true)	
		If !CSDualToggle3
			CS3.SetAllowDualWielding(false)
		EndIf
	ElseIf (Option == CSDual4)
		CS4 = FM_CustomStyle4FL.GetAt(0) as CombatStyle
		CSDualToggle4 = !CSDualToggle4
		SetToggleOptionValue(CSDual4, CSDualToggle4)
		CS4.SetAllowDualWielding(true)	
		If !CSDualToggle4
			CS4.SetAllowDualWielding(false)
		EndIf
	ElseIf (Option == CSDual5)
		CS5 = FM_CustomStyle5FL.GetAt(0) as CombatStyle
		CSDualToggle5 = !CSDualToggle5
		SetToggleOptionValue(CSDual5, CSDualToggle5)
		CS5.SetAllowDualWielding(true)	
		If !CSDualToggle5
			CS5.SetAllowDualWielding(false)
		EndIf		
	EndIf

EndEvent	

Event OnOptionSliderOpen(int Option)

	If (Option == MoneyCount)
		SetSliderDialogStartValue(MoneyCountSlider)
		SetSliderDialogDefaultValue(1.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == MoneyThresh)
		SetSliderDialogStartValue(MoneyThreshSlider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(10.00, 1000.00)
		SetSliderDialogInterval(10.00)
	ElseIf (Option == FollowerSpace)
		SetSliderDialogStartValue(FollowerSpaceSlider)
		SetSliderDialogDefaultValue(192.00)
		SetSliderDialogRange(48.00, 3840.00)
		SetSliderDialogInterval(48.00)		
	ElseIf (Option == WagePosX)
		SetSliderDialogStartValue(WageScript.X)
		SetSliderDialogRange(-100.00, 1380.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(165.00)
	ElseIf (Option == WagePosY)
		SetSliderDialogStartValue(WageScript.Y)
		SetSliderDialogRange(-100.00, 820.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(712.00)	
	ElseIf (Option == WageAlpha)
		SetSliderDialogStartValue(WageScript.Alpha)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == WageScale)
		SetSliderDialogStartValue(WageScript.Size)
		SetSliderDialogRange(1.00, 1000.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == F1_Health)
		SetSliderDialogStartValue(F1_Health_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_Stamina)
		SetSliderDialogStartValue(F1_Stamina_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_Magicka)
		SetSliderDialogStartValue(F1_Magicka_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_Health)
		SetSliderDialogStartValue(F2_Health_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_Stamina)
		SetSliderDialogStartValue(F2_Stamina_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_Magicka)
		SetSliderDialogStartValue(F2_Magicka_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_Health)
		SetSliderDialogStartValue(F3_Health_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_Stamina)
		SetSliderDialogStartValue(F3_Stamina_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_Magicka)
		SetSliderDialogStartValue(F3_Magicka_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_Health)
		SetSliderDialogStartValue(F4_Health_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_Stamina)
		SetSliderDialogStartValue(F4_Stamina_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_Magicka)
		SetSliderDialogStartValue(F4_Magicka_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_Health)
		SetSliderDialogStartValue(F5_Health_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_Stamina)
		SetSliderDialogStartValue(F5_Stamina_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_Magicka)
		SetSliderDialogStartValue(F5_Magicka_Slider)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(1.00, 500.00)
		SetSliderDialogInterval(1.00)		
	ElseIf (Option == CarryWeightPointsFollower1)
		SetSliderDialogStartValue(CarryWeightPointsFollowerSlider1)
		SetSliderDialogDefaultValue(300.00)
		SetSliderDialogRange(0.00, 1000.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == CarryWeightPointsFollower2)
		SetSliderDialogStartValue(CarryWeightPointsFollowerSlider2)
		SetSliderDialogDefaultValue(300.00)
		SetSliderDialogRange(0.00, 1000.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == CarryWeightPointsFollower3)
		SetSliderDialogStartValue(CarryWeightPointsFollowerSlider3)
		SetSliderDialogDefaultValue(300.00)
		SetSliderDialogRange(0.00, 1000.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == CarryWeightPointsFollower4)
		SetSliderDialogStartValue(CarryWeightPointsFollowerSlider4)
		SetSliderDialogDefaultValue(300.00)
		SetSliderDialogRange(0.00, 1000.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == CarryWeightPointsFollower5)
		SetSliderDialogStartValue(CarryWeightPointsFollowerSlider5)
		SetSliderDialogDefaultValue(300.00)
		SetSliderDialogRange(0.00, 1000.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == SpeedPointsFollower1)
		SetSliderDialogStartValue(SpeedPointsFollowerSlider1)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(50.00, 150.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == SpeedPointsFollower2)
		SetSliderDialogStartValue(SpeedPointsFollowerSlider2)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(50.00, 150.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == SpeedPointsFollower3)
		SetSliderDialogStartValue(SpeedPointsFollowerSlider3)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(50.00, 150.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == SpeedPointsFollower4)
		SetSliderDialogStartValue(SpeedPointsFollowerSlider4)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(50.00, 150.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == SpeedPointsFollower5)
		SetSliderDialogStartValue(SpeedPointsFollowerSlider5)
		SetSliderDialogDefaultValue(100.00)
		SetSliderDialogRange(50.00, 150.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AggressionFollower1)
		SetSliderDialogStartValue(FollowerAggressionSlider1)
		SetSliderDialogDefaultValue(1.00)
		SetSliderDialogRange(0.00, 1.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AggressionFollower2)
		SetSliderDialogStartValue(FollowerAggressionSlider2)
		SetSliderDialogDefaultValue(1.00)
		SetSliderDialogRange(0.00, 1.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AggressionFollower3)
		SetSliderDialogStartValue(FollowerAggressionSlider3)
		SetSliderDialogDefaultValue(1.00)
		SetSliderDialogRange(0.00, 1.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AggressionFollower4)
		SetSliderDialogStartValue(FollowerAggressionSlider4)
		SetSliderDialogDefaultValue(1.00)
		SetSliderDialogRange(0.00, 1.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AggressionFollower5)
		SetSliderDialogStartValue(FollowerAggressionSlider5)
		SetSliderDialogDefaultValue(1.00)
		SetSliderDialogRange(0.00, 1.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == ConfidenceFollower1)
		SetSliderDialogStartValue(FollowerConfidenceSlider1)
		SetSliderDialogDefaultValue(4.00)
		SetSliderDialogRange(0.00, 4.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == ConfidenceFollower2)
		SetSliderDialogStartValue(FollowerConfidenceSlider2)
		SetSliderDialogDefaultValue(4.00)
		SetSliderDialogRange(0.00, 4.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == ConfidenceFollower3)
		SetSliderDialogStartValue(FollowerConfidenceSlider3)
		SetSliderDialogDefaultValue(4.00)
		SetSliderDialogRange(0.00, 4.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == ConfidenceFollower4)
		SetSliderDialogStartValue(FollowerConfidenceSlider4)
		SetSliderDialogDefaultValue(4.00)
		SetSliderDialogRange(0.00, 4.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == ConfidenceFollower5)
		SetSliderDialogStartValue(FollowerConfidenceSlider5)
		SetSliderDialogDefaultValue(4.00)
		SetSliderDialogRange(0.00, 4.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AssistanceFollower1)
		SetSliderDialogStartValue(FollowerAssistanceSlider1)
		SetSliderDialogDefaultValue(2.00)
		SetSliderDialogRange(0.00, 2.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AssistanceFollower2)
		SetSliderDialogStartValue(FollowerAssistanceSlider2)
		SetSliderDialogDefaultValue(2.00)
		SetSliderDialogRange(0.00, 2.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AssistanceFollower3)
		SetSliderDialogStartValue(FollowerAssistanceSlider3)
		SetSliderDialogDefaultValue(2.00)
		SetSliderDialogRange(0.00, 2.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AssistanceFollower4)
		SetSliderDialogStartValue(FollowerAssistanceSlider4)
		SetSliderDialogDefaultValue(2.00)
		SetSliderDialogRange(0.00, 2.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == AssistanceFollower5)
		SetSliderDialogStartValue(FollowerAssistanceSlider5)
		SetSliderDialogDefaultValue(2.00)
		SetSliderDialogRange(0.00, 2.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == MoralityFollower1)
		SetSliderDialogStartValue(FollowerMoralitySlider1)
		SetSliderDialogDefaultValue(3.00)
		SetSliderDialogRange(0.00, 3.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == MoralityFollower2)
		SetSliderDialogStartValue(FollowerMoralitySlider2)
		SetSliderDialogDefaultValue(3.00)
		SetSliderDialogRange(0.00, 3.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == MoralityFollower3)
		SetSliderDialogStartValue(FollowerMoralitySlider3)
		SetSliderDialogDefaultValue(3.00)
		SetSliderDialogRange(0.00, 3.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == MoralityFollower4)
		SetSliderDialogStartValue(FollowerMoralitySlider4)
		SetSliderDialogDefaultValue(3.00)
		SetSliderDialogRange(0.00, 3.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == MoralityFollower5)
		SetSliderDialogStartValue(FollowerMoralitySlider5)
		SetSliderDialogDefaultValue(3.00)
		SetSliderDialogRange(0.00, 3.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == FollowerPosX1)
		SetSliderDialogStartValue(Follower1Script.X)
		SetSliderDialogRange(-100.00, 1380.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(165.00)
	ElseIf (Option == FollowerPosY1)
		SetSliderDialogStartValue(Follower1Script.Y)
		SetSliderDialogRange(-100.00, 820.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(712.00)	
	ElseIf (Option == FollowerPosX2)
		SetSliderDialogStartValue(Follower2Script.X)
		SetSliderDialogRange(-100.00, 1380.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(165.00)
	ElseIf (Option == FollowerPosY2)
		SetSliderDialogStartValue(Follower2Script.Y)
		SetSliderDialogRange(-100.00, 820.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(712.00)
	ElseIf (Option == FollowerPosX3)
		SetSliderDialogStartValue(Follower3Script.X)
		SetSliderDialogRange(-100.00, 1380.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(165.00)
	ElseIf (Option == FollowerPosY3)
		SetSliderDialogStartValue(Follower3Script.Y)
		SetSliderDialogRange(-100.00, 820.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(712.00)
	ElseIf (Option == FollowerPosX4)
		SetSliderDialogStartValue(Follower4Script.X)
		SetSliderDialogRange(-100.00, 1380.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(165.00)
	ElseIf (Option == FollowerPosY4)
		SetSliderDialogStartValue(Follower4Script.Y)
		SetSliderDialogRange(-100.00, 820.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(712.00)
	ElseIf (Option == FollowerPosX5)
		SetSliderDialogStartValue(Follower5Script.X)
		SetSliderDialogRange(-100.00, 1380.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(165.00)
	ElseIf (Option == FollowerPosY5)
		SetSliderDialogStartValue(Follower5Script.Y)
		SetSliderDialogRange(-100.00, 820.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(712.00)
	ElseIf (Option == FollowerAlpha1)
		SetSliderDialogStartValue(Follower1Script.Alpha)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == FollowerAlpha2)
		SetSliderDialogStartValue(Follower2Script.Alpha)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == FollowerAlpha3)
		SetSliderDialogStartValue(Follower3Script.Alpha)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)	
	ElseIf (Option == FollowerAlpha4)
		SetSliderDialogStartValue(Follower4Script.Alpha)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == FollowerAlpha5)
		SetSliderDialogStartValue(Follower5Script.Alpha)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == FollowerScale1)
		SetSliderDialogStartValue(Follower1Script.Size)
		SetSliderDialogRange(1.00, 1000.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == FollowerScale2)
		SetSliderDialogStartValue(Follower2Script.Size)
		SetSliderDialogRange(1.00, 1000.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == FollowerScale3)
		SetSliderDialogStartValue(Follower3Script.Size)
		SetSliderDialogRange(1.00, 1000.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == FollowerScale4)
		SetSliderDialogStartValue(Follower4Script.Size)
		SetSliderDialogRange(1.00, 1000.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == FollowerScale5)
		SetSliderDialogStartValue(Follower5Script.Size)
		SetSliderDialogRange(1.00, 1000.00)
		SetSliderDialogInterval(1.00)
		SetSliderDialogDefaultValue(100.00)
	ElseIf (Option == UpdateTimerInt)
		SetSliderDialogStartValue(UpdateScript.UpdateTimer)
		SetSliderDialogRange(0.1, 10.00)
		SetSliderDialogInterval(0.1)
		SetSliderDialogDefaultValue(0.25)
	ElseIf (Option == CSOff1)
		SetSliderDialogStartValue(CSOffSlider1)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSDef1)
		SetSliderDialogStartValue(CSDefSlider1)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSMel1)
		SetSliderDialogStartValue(CSMelSlider1)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSRan1)
		SetSliderDialogStartValue(CSRanSlider1)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSMag1)
		SetSliderDialogStartValue(CSMagSlider1)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSSta1)
		SetSliderDialogStartValue(CSStaSlider1)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSUna1)
		SetSliderDialogStartValue(CSUnaSlider1)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSOff2)
		SetSliderDialogStartValue(CSOffSlider2)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSDef2)
		SetSliderDialogStartValue(CSDefSlider2)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSMel2)
		SetSliderDialogStartValue(CSMelSlider2)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSRan2)
		SetSliderDialogStartValue(CSRanSlider2)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSMag2)
		SetSliderDialogStartValue(CSMagSlider2)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSSta2)
		SetSliderDialogStartValue(CSStaSlider2)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSUna2)
		SetSliderDialogStartValue(CSUnaSlider2)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSOff3)
		SetSliderDialogStartValue(CSOffSlider3)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSDef3)
		SetSliderDialogStartValue(CSDefSlider3)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSMel3)
		SetSliderDialogStartValue(CSMelSlider3)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSRan3)
		SetSliderDialogStartValue(CSRanSlider3)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSMag3)
		SetSliderDialogStartValue(CSMagSlider3)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSSta3)
		SetSliderDialogStartValue(CSStaSlider3)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSUna3)
		SetSliderDialogStartValue(CSUnaSlider3)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSOff4)
		SetSliderDialogStartValue(CSOffSlider4)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSDef4)
		SetSliderDialogStartValue(CSDefSlider4)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSMel4)
		SetSliderDialogStartValue(CSMelSlider4)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSRan4)
		SetSliderDialogStartValue(CSRanSlider4)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSMag4)
		SetSliderDialogStartValue(CSMagSlider4)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSSta4)
		SetSliderDialogStartValue(CSStaSlider4)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSUna4)
		SetSliderDialogStartValue(CSUnaSlider4)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSOff5)
		SetSliderDialogStartValue(CSOffSlider5)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSDef5)
		SetSliderDialogStartValue(CSDefSlider5)
		SetSliderDialogRange(0.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(23.0)
	ElseIf (Option == CSMel5)
		SetSliderDialogStartValue(CSMelSlider5)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSRan5)
		SetSliderDialogStartValue(CSRanSlider5)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSMag5)
		SetSliderDialogStartValue(CSMagSlider5)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSSta5)
		SetSliderDialogStartValue(CSStaSlider5)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == CSUna5)
		SetSliderDialogStartValue(CSUnaSlider5)
		SetSliderDialogRange(-100.00, 100.00)
		SetSliderDialogInterval(1.0)
		SetSliderDialogDefaultValue(0.0)
	ElseIf (Option == F1_OH)
		SetSliderDialogStartValue(F1_OH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_TH)
		SetSliderDialogStartValue(F1_TH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_MM)
		SetSliderDialogStartValue(F1_MM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_BL)
		SetSliderDialogStartValue(F1_BL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_SM)
		SetSliderDialogStartValue(F1_SM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_HA)
		SetSliderDialogStartValue(F1_HA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_AN)
		SetSliderDialogStartValue(F1_AN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_CO)
		SetSliderDialogStartValue(F1_CO_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_DE)
		SetSliderDialogStartValue(F1_DE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_LA)
		SetSliderDialogStartValue(F1_LA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_PP)
		SetSliderDialogStartValue(F1_PP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_LP)
		SetSliderDialogStartValue(F1_LP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_SN)
		SetSliderDialogStartValue(F1_SN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_AL)
		SetSliderDialogStartValue(F1_AL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_SP)
		SetSliderDialogStartValue(F1_SP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_IL)
		SetSliderDialogStartValue(F1_IL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_RE)
		SetSliderDialogStartValue(F1_RE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F1_EN)
		SetSliderDialogStartValue(F1_EN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_OH)
		SetSliderDialogStartValue(F2_OH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_TH)
		SetSliderDialogStartValue(F2_TH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_MM)
		SetSliderDialogStartValue(F2_MM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_BL)
		SetSliderDialogStartValue(F2_BL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_SM)
		SetSliderDialogStartValue(F2_SM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_HA)
		SetSliderDialogStartValue(F2_HA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_AN)
		SetSliderDialogStartValue(F2_AN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_CO)
		SetSliderDialogStartValue(F2_CO_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_DE)
		SetSliderDialogStartValue(F2_DE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_LA)
		SetSliderDialogStartValue(F2_LA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_PP)
		SetSliderDialogStartValue(F2_PP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_LP)
		SetSliderDialogStartValue(F2_LP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_SN)
		SetSliderDialogStartValue(F2_SN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_AL)
		SetSliderDialogStartValue(F2_AL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_SP)
		SetSliderDialogStartValue(F2_SP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_IL)
		SetSliderDialogStartValue(F2_IL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_RE)
		SetSliderDialogStartValue(F2_RE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F2_EN)
		SetSliderDialogStartValue(F2_EN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_OH)
		SetSliderDialogStartValue(F3_OH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_TH)
		SetSliderDialogStartValue(F3_TH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_MM)
		SetSliderDialogStartValue(F3_MM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_BL)
		SetSliderDialogStartValue(F3_BL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_SM)
		SetSliderDialogStartValue(F3_SM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_HA)
		SetSliderDialogStartValue(F3_HA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_AN)
		SetSliderDialogStartValue(F3_AN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_CO)
		SetSliderDialogStartValue(F3_CO_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_DE)
		SetSliderDialogStartValue(F3_DE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_LA)
		SetSliderDialogStartValue(F3_LA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_PP)
		SetSliderDialogStartValue(F3_PP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_LP)
		SetSliderDialogStartValue(F3_LP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_SN)
		SetSliderDialogStartValue(F3_SN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_AL)
		SetSliderDialogStartValue(F3_AL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_SP)
		SetSliderDialogStartValue(F3_SP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_IL)
		SetSliderDialogStartValue(F3_IL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_RE)
		SetSliderDialogStartValue(F3_RE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F3_EN)
		SetSliderDialogStartValue(F3_EN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_OH)
		SetSliderDialogStartValue(F4_OH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_TH)
		SetSliderDialogStartValue(F4_TH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_MM)
		SetSliderDialogStartValue(F4_MM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_BL)
		SetSliderDialogStartValue(F4_BL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_SM)
		SetSliderDialogStartValue(F4_SM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_HA)
		SetSliderDialogStartValue(F4_HA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_AN)
		SetSliderDialogStartValue(F4_AN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_CO)
		SetSliderDialogStartValue(F4_CO_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_DE)
		SetSliderDialogStartValue(F4_DE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_LA)
		SetSliderDialogStartValue(F4_LA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_PP)
		SetSliderDialogStartValue(F4_PP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_LP)
		SetSliderDialogStartValue(F4_LP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_SN)
		SetSliderDialogStartValue(F4_SN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_AL)
		SetSliderDialogStartValue(F4_AL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_SP)
		SetSliderDialogStartValue(F4_SP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_IL)
		SetSliderDialogStartValue(F4_IL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_RE)
		SetSliderDialogStartValue(F4_RE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F4_EN)
		SetSliderDialogStartValue(F4_EN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_OH)
		SetSliderDialogStartValue(F5_OH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_TH)
		SetSliderDialogStartValue(F5_TH_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_MM)
		SetSliderDialogStartValue(F5_MM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_BL)
		SetSliderDialogStartValue(F5_BL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_SM)
		SetSliderDialogStartValue(F5_SM_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_HA)
		SetSliderDialogStartValue(F5_HA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_AN)
		SetSliderDialogStartValue(F5_AN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_CO)
		SetSliderDialogStartValue(F5_CO_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_DE)
		SetSliderDialogStartValue(F5_DE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_LA)
		SetSliderDialogStartValue(F5_LA_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_PP)
		SetSliderDialogStartValue(F5_PP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_LP)
		SetSliderDialogStartValue(F5_LP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_SN)
		SetSliderDialogStartValue(F5_SN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_AL)
		SetSliderDialogStartValue(F5_AL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_SP)
		SetSliderDialogStartValue(F5_SP_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_IL)
		SetSliderDialogStartValue(F5_IL_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_RE)
		SetSliderDialogStartValue(F5_RE_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)
	ElseIf (Option == F5_EN)
		SetSliderDialogStartValue(F5_EN_Slider)
		SetSliderDialogDefaultValue(15.00)
		SetSliderDialogRange(1.00, 100.00)
		SetSliderDialogInterval(1.00)		
	EndIf

EndEvent

Event OnOptionSliderAccept(int Option, float Value)
	
	If (Option == MoneyCount)
		MoneyCountSlider = Value
		SetSliderOptionValue(MoneyCount, MoneyCountSlider, "{1}")
		FM_FollowerMoneyCount.SetValue(Value)
	ElseIf (Option == MoneyThresh)		
		MoneyThreshSlider = Value
		SetSliderOptionValue(MoneyThresh, MoneyThreshSlider, "{1}")
		FM_FollowerMoneyThreshold.SetValue(Value)
	ElseIf (Option == FollowerSpace)		
		FollowerSpaceSlider = Value
		SetSliderOptionValue(FollowerSpace, FollowerSpaceSlider, "{1}")
		Game.SetGameSettingFloat("fFollowSpaceBetweenFollowers", Value)		
	ElseIf (Option == WagePosX)
		WageScript.SetX(Value)
		SetSliderOptionValue(Option, WageScript.X, "{0}")
	ElseIf (Option == WagePosY)
		WageScript.SetY(Value)
		SetSliderOptionValue(Option, WageScript.Y, "{0}")
	ElseIf (Option == WageAlpha)
		WageScript.SetTransparency(Value)
		SetSliderOptionValue(Option, WageScript.Alpha, "{0}")
	ElseIf (Option == WageScale)
		WageScript.Size = Value as Int
		SetSliderOptionValue(Option, WageScript.Size, "{0}%")
		ForcePageReset()
	ElseIf (Option == F1_Health)
		F1_Health_Slider = Value
		SetSliderOptionValue(F1_Health, F1_Health_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Health", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_Stamina)
		F1_Stamina_Slider = Value
		SetSliderOptionValue(F1_Stamina, F1_Stamina_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Stamina", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_Magicka)
		F1_Magicka_Slider = Value
		SetSliderOptionValue(F1_Magicka, F1_Magicka_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Magicka", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F2_Health)
		F2_Health_Slider = Value
		SetSliderOptionValue(F2_Health, F2_Health_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Health", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_Stamina)
		F2_Stamina_Slider = Value
		SetSliderOptionValue(F2_Stamina, F2_Stamina_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Stamina", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_Magicka)
		F2_Magicka_Slider = Value
		SetSliderOptionValue(F2_Magicka, F2_Magicka_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Magicka", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F3_Health)
		F3_Health_Slider = Value
		SetSliderOptionValue(F3_Health, F3_Health_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Health", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_Stamina)
		F3_Stamina_Slider = Value
		SetSliderOptionValue(F3_Stamina, F3_Stamina_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Stamina", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_Magicka)
		F3_Magicka_Slider = Value
		SetSliderOptionValue(F3_Magicka, F3_Magicka_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Magicka", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F4_Health)
		F4_Health_Slider = Value
		SetSliderOptionValue(F4_Health, F4_Health_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Health", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_Stamina)
		F4_Stamina_Slider = Value
		SetSliderOptionValue(F4_Stamina, F4_Stamina_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Stamina", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_Magicka)
		F4_Magicka_Slider = Value
		SetSliderOptionValue(F4_Magicka, F4_Magicka_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Magicka", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F5_Health)
		F5_Health_Slider = Value
		SetSliderOptionValue(F5_Health, F5_Health_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Health", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_Stamina)
		F5_Stamina_Slider = Value
		SetSliderOptionValue(F5_Stamina, F5_Stamina_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Stamina", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_Magicka)
		F5_Magicka_Slider = Value
		SetSliderOptionValue(F5_Magicka, F5_Magicka_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Magicka", Value)
		ElseIf AliasArray[4] == none
		EndIf		
	ElseIf (Option == CarryWeightPointsFollower1)
		CarryWeightPointsFollowerSlider1 = Value
		SetSliderOptionValue(CarryWeightPointsFollower1, CarryWeightPointsFollowerSlider1, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("CarryWeight", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == CarryWeightPointsFollower2)
		CarryWeightPointsFollowerSlider2 = Value
		SetSliderOptionValue(CarryWeightPointsFollower2, CarryWeightPointsFollowerSlider2, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("CarryWeight", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == CarryWeightPointsFollower3)
		CarryWeightPointsFollowerSlider3 = Value
		SetSliderOptionValue(CarryWeightPointsFollower3, CarryWeightPointsFollowerSlider3, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("CarryWeight", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == CarryWeightPointsFollower4)
		CarryWeightPointsFollowerSlider4 = Value
		SetSliderOptionValue(CarryWeightPointsFollower4, CarryWeightPointsFollowerSlider4, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("CarryWeight", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == CarryWeightPointsFollower5)
		CarryWeightPointsFollowerSlider5 = Value
		SetSliderOptionValue(CarryWeightPointsFollower5, CarryWeightPointsFollowerSlider5, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("CarryWeight", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == SpeedPointsFollower1)
		SpeedPointsFollowerSlider1 = Value
		SetSliderOptionValue(SpeedPointsFollower1, SpeedPointsFollowerSlider1, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("SpeedMult", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == SpeedPointsFollower2)
		SpeedPointsFollowerSlider2 = Value
		SetSliderOptionValue(SpeedPointsFollower2, SpeedPointsFollowerSlider2, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("SpeedMult", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == SpeedPointsFollower3)
		SpeedPointsFollowerSlider3 = Value
		SetSliderOptionValue(SpeedPointsFollower3, SpeedPointsFollowerSlider3, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("SpeedMult", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == SpeedPointsFollower4)
		SpeedPointsFollowerSlider4 = Value
		SetSliderOptionValue(SpeedPointsFollower4, SpeedPointsFollowerSlider4, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("SpeedMult", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == SpeedPointsFollower5)
		SpeedPointsFollowerSlider5 = Value
		SetSliderOptionValue(SpeedPointsFollower5, SpeedPointsFollowerSlider5, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("SpeedMult", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == AggressionFollower1)
		FollowerAggressionSlider1 = Value
		SetSliderOptionValue(AggressionFollower1, FollowerAggressionSlider1, "{1}")
		If AliasArray[0]  != none
			AliasArray[0].GetActorReference().SetActorValue("Aggression", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == AggressionFollower2)
		FollowerAggressionSlider2 = Value
		SetSliderOptionValue(AggressionFollower2, FollowerAggressionSlider2, "{1}")
		If AliasArray[1]  != none
			AliasArray[1].GetActorReference().SetActorValue("Aggression", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == AggressionFollower3)
		FollowerAggressionSlider3 = Value
		SetSliderOptionValue(AggressionFollower3, FollowerAggressionSlider3, "{1}")
		If AliasArray[2]  != none
			AliasArray[2].GetActorReference().SetActorValue("Aggression", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == AggressionFollower4)
		FollowerAggressionSlider4 = Value
		SetSliderOptionValue(AggressionFollower4, FollowerAggressionSlider4, "{1}")
		If AliasArray[3]  != none
			AliasArray[3].GetActorReference().SetActorValue("Aggression", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == AggressionFollower5)
		FollowerAggressionSlider5 = Value
		SetSliderOptionValue(AggressionFollower5, FollowerAggressionSlider5, "{1}")
		If AliasArray[4]  != none
			AliasArray[4].GetActorReference().SetActorValue("Aggression", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == ConfidenceFollower1)
		FollowerConfidenceSlider1 = Value
		SetSliderOptionValue(ConfidenceFollower1, FollowerConfidenceSlider1, "{1}")
		If AliasArray[0] != none		
			AliasArray[0].GetActorReference().SetActorValue("Confidence", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == ConfidenceFollower2)
		FollowerConfidenceSlider2 = Value
		SetSliderOptionValue(ConfidenceFollower2, FollowerConfidenceSlider2, "{1}")
		If AliasArray[1] != none		
			AliasArray[1].GetActorReference().SetActorValue("Confidence", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == ConfidenceFollower3)
		FollowerConfidenceSlider3 = Value
		SetSliderOptionValue(ConfidenceFollower3, FollowerConfidenceSlider3, "{1}")
		If AliasArray[2] != none		
			AliasArray[2].GetActorReference().SetActorValue("Confidence", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == ConfidenceFollower4)
		FollowerConfidenceSlider4 = Value
		SetSliderOptionValue(ConfidenceFollower4, FollowerConfidenceSlider4, "{1}")
		If AliasArray[3] != none		
			AliasArray[3].GetActorReference().SetActorValue("Confidence", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == ConfidenceFollower5)
		FollowerConfidenceSlider5 = Value
		SetSliderOptionValue(ConfidenceFollower5, FollowerConfidenceSlider5, "{1}")
		If AliasArray[4] != none		
			AliasArray[4].GetActorReference().SetActorValue("Confidence", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == AssistanceFollower1)
		FollowerAssistanceSlider1 = Value
		SetSliderOptionValue(AssistanceFollower1, FollowerAssistanceSlider1, "{1}")
		If AliasArray[0] != none		
			AliasArray[0].GetActorReference().SetActorValue("Assistance", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == AssistanceFollower2)
		FollowerAssistanceSlider2 = Value
		SetSliderOptionValue(AssistanceFollower2, FollowerAssistanceSlider2, "{1}")
		If AliasArray[1] != none		
			AliasArray[1].GetActorReference().SetActorValue("Assistance", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == AssistanceFollower3)
		FollowerAssistanceSlider3 = Value
		SetSliderOptionValue(AssistanceFollower3, FollowerAssistanceSlider3, "{1}")
		If AliasArray[2] != none		
			AliasArray[2].GetActorReference().SetActorValue("Assistance", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == AssistanceFollower4)
		FollowerAssistanceSlider4 = Value
		SetSliderOptionValue(AssistanceFollower4, FollowerAssistanceSlider4, "{1}")
		If AliasArray[3] != none		
			AliasArray[3].GetActorReference().SetActorValue("Assistance", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == AssistanceFollower5)
		FollowerAssistanceSlider5 = Value
		SetSliderOptionValue(AssistanceFollower5, FollowerAssistanceSlider5, "{1}")
		If AliasArray[4] != none		
			AliasArray[4].GetActorReference().SetActorValue("Assistance", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == MoralityFollower1)
		FollowerMoralitySlider1 = Value
		SetSliderOptionValue(MoralityFollower1, FollowerMoralitySlider1, "{1}")
		If AliasArray[0] != none		
			AliasArray[0].GetActorReference().SetActorValue("Morality", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == MoralityFollower2)
		FollowerMoralitySlider2 = Value
		SetSliderOptionValue(MoralityFollower2, FollowerMoralitySlider2, "{1}")
		If AliasArray[1] != none		
			AliasArray[1].GetActorReference().SetActorValue("Morality", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == MoralityFollower3)
		FollowerMoralitySlider3 = Value
		SetSliderOptionValue(MoralityFollower3, FollowerMoralitySlider3, "{1}")
		If AliasArray[2] != none		
			AliasArray[2].GetActorReference().SetActorValue("Morality", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == MoralityFollower4)
		FollowerMoralitySlider4 = Value
		SetSliderOptionValue(MoralityFollower4, FollowerMoralitySlider4, "{1}")
		If AliasArray[3] != none		
			AliasArray[3].GetActorReference().SetActorValue("Morality", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == MoralityFollower5)
		FollowerMoralitySlider5 = Value
		SetSliderOptionValue(MoralityFollower5, FollowerMoralitySlider5, "{1}")
		If AliasArray[4] != none		
			AliasArray[4].GetActorReference().SetActorValue("Morality", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == FollowerPosX1)
		Follower1Script.SetX(Value)
		SetSliderOptionValue(Option, Follower1Script.X, "{0}")
	ElseIf (Option == FollowerPosY1)
		Follower1Script.SetY(Value)
		SetSliderOptionValue(Option, Follower1Script.Y, "{0}")
	ElseIf (Option == FollowerPosX2)
		Follower2Script.SetX(Value)
		SetSliderOptionValue(Option, Follower2Script.X, "{0}")
	ElseIf (Option == FollowerPosY2)
		Follower2Script.SetY(Value)
		SetSliderOptionValue(Option, Follower2Script.Y, "{0}")
	ElseIf (Option == FollowerPosX3)
		Follower3Script.SetX(Value)
		SetSliderOptionValue(Option, Follower3Script.X, "{0}")
	ElseIf (Option == FollowerPosY3)
		Follower3Script.SetY(Value)
		SetSliderOptionValue(Option, Follower3Script.Y, "{0}")
	ElseIf (Option == FollowerPosX4)
		Follower4Script.SetX(Value)
		SetSliderOptionValue(Option, Follower4Script.X, "{0}")
	ElseIf (Option == FollowerPosY4)
		Follower4Script.SetY(Value)
		SetSliderOptionValue(Option, Follower4Script.Y, "{0}")
	ElseIf (Option == FollowerPosX5)
		Follower5Script.SetX(Value)
		SetSliderOptionValue(Option, Follower5Script.X, "{0}")
	ElseIf (Option == FollowerPosY5)
		Follower5Script.SetY(Value)
		SetSliderOptionValue(Option, Follower5Script.Y, "{0}")
	ElseIf (Option == FollowerAlpha1)
		Follower1Script.SetTransparency(Value)
		SetSliderOptionValue(Option, Follower1Script.Alpha, "{0}")
	ElseIf (Option == FollowerAlpha2)
		Follower2Script.SetTransparency(Value)
		SetSliderOptionValue(Option, Follower2Script.Alpha, "{0}")
	ElseIf (Option == FollowerAlpha3)
		Follower3Script.SetTransparency(Value)
		SetSliderOptionValue(Option, Follower3Script.Alpha, "{0}")
	ElseIf (Option == FollowerAlpha4)
		Follower4Script.SetTransparency(Value)
		SetSliderOptionValue(Option, Follower4Script.Alpha, "{0}")
	ElseIf (Option == FollowerAlpha5)
		Follower5Script.SetTransparency(Value)
		SetSliderOptionValue(Option, Follower5Script.Alpha, "{0}")
	ElseIf (Option == FollowerScale1)
		Follower1Script.Size = Value as Int
		SetSliderOptionValue(Option, Follower1Script.Size, "{0}%")
		ForcePageReset()
	ElseIf (Option == FollowerScale2)
		Follower2Script.Size = Value as Int
		SetSliderOptionValue(Option, Follower2Script.Size, "{0}%")
		ForcePageReset()
	ElseIf (Option == FollowerScale3)
		Follower3Script.Size = Value as Int
		SetSliderOptionValue(Option, Follower3Script.Size, "{0}%")
		ForcePageReset()
	ElseIf (Option == FollowerScale4)
		Follower4Script.Size = Value as Int
		SetSliderOptionValue(Option, Follower4Script.Size, "{0}%")
		ForcePageReset()
	ElseIf (Option == FollowerScale5)
		Follower5Script.Size = Value as Int
		SetSliderOptionValue(Option, Follower5Script.Size, "{0}%")
		ForcePageReset()
	ElseIf (Option == UpdateTimerInt)
		UpdateScript.UpdateTimer = Value
		SetSliderOptionValue(Option, UpdateScript.UpdateTimer, "{0} sec.")
		ForcePageReset()
	ElseIf (Option == CSOff1)
		CS1 = FM_CustomStyle1FL.GetAt(0) as CombatStyle	
		CSOffSlider1 = Value
		SetSliderOptionValue(CSOff1, CSOffSlider1, "{1}")
		CS1.SetOffensiveMult(Value)
	ElseIf (Option == CSDef1)
		CS1 = FM_CustomStyle1FL.GetAt(0) as CombatStyle	
		CSDefSlider1 = Value
		SetSliderOptionValue(CSDef1, CSDefSlider1, "{1}")
		CS1.SetDefensiveMult(Value)
	ElseIf (Option == CSMel1)
		CS1 = FM_CustomStyle1FL.GetAt(0) as CombatStyle	
		CSMelSlider1 = Value
		SetSliderOptionValue(CSMel1, CSMelSlider1, "{1}")
		CS1.SetMeleeMult(Value)	
	ElseIf (Option == CSRan1)
		CS1 = FM_CustomStyle1FL.GetAt(0) as CombatStyle	
		CSRanSlider1 = Value
		SetSliderOptionValue(CSRan1, CSRanSlider1, "{1}")
		CS1.SetRangedMult(Value)
	ElseIf (Option == CSMag1)
		CS1 = FM_CustomStyle1FL.GetAt(0) as CombatStyle	
		CSMagSlider1 = Value
		SetSliderOptionValue(CSMag1, CSMagSlider1, "{1}")
		CS1.SetMagicMult(Value)
	ElseIf (Option == CSSta1)
		CS1 = FM_CustomStyle1FL.GetAt(0) as CombatStyle	
		CSStaSlider1 = Value
		SetSliderOptionValue(CSSta1, CSStaSlider1, "{1}")
		CS1.SetStaffMult(Value)
	ElseIf (Option == CSUna1)
		CS1 = FM_CustomStyle1FL.GetAt(0) as CombatStyle	
		CSUnaSlider1 = Value
		SetSliderOptionValue(CSUna1, CSUnaSlider1, "{1}")
		CS1.SetUnarmedMult(Value)
	ElseIf (Option == CSOff2)
		CS2 = FM_CustomStyle2FL.GetAt(0) as CombatStyle	
		CSOffSlider2 = Value
		SetSliderOptionValue(CSOff2, CSOffSlider2, "{1}")
		CS2.SetOffensiveMult(Value)
	ElseIf (Option == CSDef2)
		CS2 = FM_CustomStyle2FL.GetAt(0) as CombatStyle	
		CSDefSlider2 = Value
		SetSliderOptionValue(CSDef2, CSDefSlider2, "{1}")
		CS2.SetDefensiveMult(Value)
	ElseIf (Option == CSMel2)
		CS2 = FM_CustomStyle2FL.GetAt(0) as CombatStyle	
		CSMelSlider2 = Value
		SetSliderOptionValue(CSMel2, CSMelSlider2, "{1}")
		CS2.SetMeleeMult(Value)	
	ElseIf (Option == CSRan2)
		CS2 = FM_CustomStyle2FL.GetAt(0) as CombatStyle	
		CSRanSlider2 = Value
		SetSliderOptionValue(CSRan2, CSRanSlider2, "{1}")
		CS2.SetRangedMult(Value)
	ElseIf (Option == CSMag2)
		CS2 = FM_CustomStyle2FL.GetAt(0) as CombatStyle	
		CSMagSlider2 = Value
		SetSliderOptionValue(CSMag2, CSMagSlider2, "{1}")
		CS2.SetMagicMult(Value)
	ElseIf (Option == CSSta2)
		CS2 = FM_CustomStyle2FL.GetAt(0) as CombatStyle	
		CSStaSlider2 = Value
		SetSliderOptionValue(CSSta2, CSStaSlider2, "{1}")
		CS2.SetStaffMult(Value)
	ElseIf (Option == CSUna2)
		CS2 = FM_CustomStyle2FL.GetAt(0) as CombatStyle	
		CSUnaSlider2 = Value
		SetSliderOptionValue(CSUna2, CSUnaSlider2, "{1}")
		CS2.SetUnarmedMult(Value)
	ElseIf (Option == CSOff3)
		CS3 = FM_CustomStyle3FL.GetAt(0) as CombatStyle	
		CSOffSlider3 = Value
		SetSliderOptionValue(CSOff3, CSOffSlider3, "{1}")
		CS3.SetOffensiveMult(Value)
	ElseIf (Option == CSDef3)
		CS3 = FM_CustomStyle3FL.GetAt(0) as CombatStyle	
		CSDefSlider3 = Value
		SetSliderOptionValue(CSDef3, CSDefSlider3, "{1}")
		CS3.SetDefensiveMult(Value)
	ElseIf (Option == CSMel3)
		CS3 = FM_CustomStyle3FL.GetAt(0) as CombatStyle	
		CSMelSlider3 = Value
		SetSliderOptionValue(CSMel3, CSMelSlider3, "{1}")
		CS3.SetMeleeMult(Value)	
	ElseIf (Option == CSRan3)
		CS3 = FM_CustomStyle3FL.GetAt(0) as CombatStyle	
		CSRanSlider3 = Value
		SetSliderOptionValue(CSRan3, CSRanSlider3, "{1}")
		CS3.SetRangedMult(Value)
	ElseIf (Option == CSMag3)
		CS3 = FM_CustomStyle3FL.GetAt(0) as CombatStyle	
		CSMagSlider3 = Value
		SetSliderOptionValue(CSMag3, CSMagSlider3, "{1}")
		CS3.SetMagicMult(Value)
	ElseIf (Option == CSSta3)
		CS3 = FM_CustomStyle3FL.GetAt(0) as CombatStyle	
		CSStaSlider3 = Value
		SetSliderOptionValue(CSSta3, CSStaSlider3, "{1}")
		CS3.SetStaffMult(Value)
	ElseIf (Option == CSUna3)
		CS3 = FM_CustomStyle3FL.GetAt(0) as CombatStyle	
		CSUnaSlider3 = Value
		SetSliderOptionValue(CSUna3, CSUnaSlider3, "{1}")
		CS3.SetUnarmedMult(Value)
	ElseIf (Option == CSOff4)
		CS4 = FM_CustomStyle4FL.GetAt(0) as CombatStyle	
		CSOffSlider4 = Value
		SetSliderOptionValue(CSOff4, CSOffSlider4, "{1}")
		CS4.SetOffensiveMult(Value)
	ElseIf (Option == CSDef4)
		CS4 = FM_CustomStyle4FL.GetAt(0) as CombatStyle	
		CSDefSlider4 = Value
		SetSliderOptionValue(CSDef4, CSDefSlider4, "{1}")
		CS4.SetDefensiveMult(Value)
	ElseIf (Option == CSMel4)
		CS4 = FM_CustomStyle4FL.GetAt(0) as CombatStyle	
		CSMelSlider4 = Value
		SetSliderOptionValue(CSMel4, CSMelSlider4, "{1}")
		CS4.SetMeleeMult(Value)	
	ElseIf (Option == CSRan4)
		CS4 = FM_CustomStyle4FL.GetAt(0) as CombatStyle	
		CSRanSlider4 = Value
		SetSliderOptionValue(CSRan4, CSRanSlider4, "{1}")
		CS4.SetRangedMult(Value)
	ElseIf (Option == CSMag4)
		CS4 = FM_CustomStyle4FL.GetAt(0) as CombatStyle	
		CSMagSlider4 = Value
		SetSliderOptionValue(CSMag4, CSMagSlider4, "{1}")
		CS4.SetMagicMult(Value)
	ElseIf (Option == CSSta4)
		CS4 = FM_CustomStyle4FL.GetAt(0) as CombatStyle	
		CSStaSlider4 = Value
		SetSliderOptionValue(CSSta4, CSStaSlider4, "{1}")
		CS4.SetStaffMult(Value)
	ElseIf (Option == CSUna4)
		CS4 = FM_CustomStyle4FL.GetAt(0) as CombatStyle	
		CSUnaSlider4 = Value
		SetSliderOptionValue(CSUna4, CSUnaSlider4, "{1}")
		CS4.SetUnarmedMult(Value)
	ElseIf (Option == CSOff5)
		CS5 = FM_CustomStyle5FL.GetAt(0) as CombatStyle	
		CSOffSlider5 = Value
		SetSliderOptionValue(CSOff5, CSOffSlider5, "{1}")
		CS5.SetOffensiveMult(Value)
	ElseIf (Option == CSDef5)
		CS5 = FM_CustomStyle5FL.GetAt(0) as CombatStyle	
		CSDefSlider5 = Value
		SetSliderOptionValue(CSDef5, CSDefSlider5, "{1}")
		CS5.SetDefensiveMult(Value)
	ElseIf (Option == CSMel5)
		CS5 = FM_CustomStyle5FL.GetAt(0) as CombatStyle	
		CSMelSlider5 = Value
		SetSliderOptionValue(CSMel5, CSMelSlider5, "{1}")
		CS5.SetMeleeMult(Value)	
	ElseIf (Option == CSRan5)
		CS5 = FM_CustomStyle5FL.GetAt(0) as CombatStyle	
		CSRanSlider5 = Value
		SetSliderOptionValue(CSRan5, CSRanSlider5, "{1}")
		CS5.SetRangedMult(Value)
	ElseIf (Option == CSMag5)
		CS5 = FM_CustomStyle5FL.GetAt(0) as CombatStyle	
		CSMagSlider5 = Value
		SetSliderOptionValue(CSMag5, CSMagSlider5, "{1}")
		CS5.SetMagicMult(Value)
	ElseIf (Option == CSSta5)
		CS5 = FM_CustomStyle5FL.GetAt(0) as CombatStyle	
		CSStaSlider5 = Value
		SetSliderOptionValue(CSSta5, CSStaSlider5, "{1}")
		CS5.SetStaffMult(Value)
	ElseIf (Option == CSUna5)
		CS5 = FM_CustomStyle5FL.GetAt(0) as CombatStyle	
		CSUnaSlider5 = Value
		SetSliderOptionValue(CSUna5, CSUnaSlider5, "{1}")
		CS5.SetUnarmedMult(Value)
	ElseIf (Option == F1_OH)
		F1_OH_Slider = Value
		SetSliderOptionValue(F1_OH, F1_OH_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("OneHanded", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_TH)
		F1_TH_Slider = Value
		SetSliderOptionValue(F1_TH, F1_TH_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("TwoHanded", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_MM)
		F1_MM_Slider = Value
		SetSliderOptionValue(F1_MM, F1_MM_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Marksman", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_BL)
		F1_BL_Slider = Value
		SetSliderOptionValue(F1_BL, F1_BL_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Block", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_SM)
		F1_SM_Slider = Value
		SetSliderOptionValue(F1_SM, F1_SM_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Smithing", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_HA)
		F1_HA_Slider = Value
		SetSliderOptionValue(F1_HA, F1_HA_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("HeavyArmor", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_AN)
		F1_AN_Slider = Value
		SetSliderOptionValue(F1_AN, F1_AN_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Alteration", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_CO)
		F1_CO_Slider = Value
		SetSliderOptionValue(F1_CO, F1_CO_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Conjuration", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_DE)
		F1_DE_Slider = Value
		SetSliderOptionValue(F1_DE, F1_DE_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Destruction", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_LA)
		F1_LA_Slider = Value
		SetSliderOptionValue(F1_LA, F1_LA_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("LightArmor", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_PP)
		F1_PP_Slider = Value
		SetSliderOptionValue(F1_PP, F1_PP_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Pickpocket", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_LP)
		F1_LP_Slider = Value
		SetSliderOptionValue(F1_LP, F1_LP_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Lockpicking", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_SN)
		F1_SN_Slider = Value
		SetSliderOptionValue(F1_SN, F1_SN_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Sneak", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_AL)
		F1_AL_Slider = Value
		SetSliderOptionValue(F1_AL, F1_AL_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Alchemy", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_SP)
		F1_SP_Slider = Value
		SetSliderOptionValue(F1_SP, F1_SP_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Speechcraft ", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_IL)
		F1_IL_Slider = Value
		SetSliderOptionValue(F1_IL, F1_IL_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Illusion", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_RE)
		F1_RE_Slider = Value
		SetSliderOptionValue(F1_RE, F1_RE_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Restoration", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F1_EN)
		F1_EN_Slider = Value
		SetSliderOptionValue(F1_EN, F1_EN_Slider, "{1}")
		If AliasArray[0] != none
			AliasArray[0].GetActorReference().SetActorValue("Enchanting", Value)
		ElseIf AliasArray[0] == none
		EndIf
	ElseIf (Option == F2_OH)
		F2_OH_Slider = Value
		SetSliderOptionValue(F2_OH, F2_OH_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("OneHanded", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_TH)
		F2_TH_Slider = Value
		SetSliderOptionValue(F2_TH, F2_TH_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("TwoHanded", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_MM)
		F2_MM_Slider = Value
		SetSliderOptionValue(F2_MM, F2_MM_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Marksman", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_BL)
		F2_BL_Slider = Value
		SetSliderOptionValue(F2_BL, F2_BL_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Block", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_SM)
		F2_SM_Slider = Value
		SetSliderOptionValue(F2_SM, F2_SM_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Smithing", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_HA)
		F2_HA_Slider = Value
		SetSliderOptionValue(F2_HA, F2_HA_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("HeavyArmor", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_AN)
		F2_AN_Slider = Value
		SetSliderOptionValue(F2_AN, F2_AN_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Alteration", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_CO)
		F2_CO_Slider = Value
		SetSliderOptionValue(F2_CO, F2_CO_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Conjuration", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_DE)
		F2_DE_Slider = Value
		SetSliderOptionValue(F2_DE, F2_DE_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Destruction", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_LA)
		F2_LA_Slider = Value
		SetSliderOptionValue(F2_LA, F2_LA_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("LightArmor", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_PP)
		F2_PP_Slider = Value
		SetSliderOptionValue(F2_PP, F2_PP_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Pickpocket", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_LP)
		F2_LP_Slider = Value
		SetSliderOptionValue(F2_LP, F2_LP_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Lockpicking", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_SN)
		F2_SN_Slider = Value
		SetSliderOptionValue(F2_SN, F2_SN_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Sneak", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_AL)
		F2_AL_Slider = Value
		SetSliderOptionValue(F2_AL, F2_AL_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Alchemy", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_SP)
		F2_SP_Slider = Value
		SetSliderOptionValue(F2_SP, F2_SP_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Speechcraft ", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_IL)
		F2_IL_Slider = Value
		SetSliderOptionValue(F2_IL, F2_IL_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Illusion", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_RE)
		F2_RE_Slider = Value
		SetSliderOptionValue(F2_RE, F2_RE_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Restoration", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F2_EN)
		F2_EN_Slider = Value
		SetSliderOptionValue(F2_EN, F2_EN_Slider, "{1}")
		If AliasArray[1] != none
			AliasArray[1].GetActorReference().SetActorValue("Enchanting", Value)
		ElseIf AliasArray[1] == none
		EndIf
	ElseIf (Option == F3_OH)
		F3_OH_Slider = Value
		SetSliderOptionValue(F3_OH, F3_OH_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("OneHanded", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_TH)
		F3_TH_Slider = Value
		SetSliderOptionValue(F3_TH, F3_TH_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("TwoHanded", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_MM)
		F3_MM_Slider = Value
		SetSliderOptionValue(F3_MM, F3_MM_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Marksman", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_BL)
		F3_BL_Slider = Value
		SetSliderOptionValue(F3_BL, F3_BL_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Block", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_SM)
		F3_SM_Slider = Value
		SetSliderOptionValue(F3_SM, F3_SM_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Smithing", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_HA)
		F3_HA_Slider = Value
		SetSliderOptionValue(F3_HA, F3_HA_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("HeavyArmor", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_AN)
		F3_AN_Slider = Value
		SetSliderOptionValue(F3_AN, F3_AN_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Alteration", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_CO)
		F3_CO_Slider = Value
		SetSliderOptionValue(F3_CO, F3_CO_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Conjuration", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_DE)
		F3_DE_Slider = Value
		SetSliderOptionValue(F3_DE, F3_DE_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Destruction", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_LA)
		F3_LA_Slider = Value
		SetSliderOptionValue(F3_LA, F3_LA_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("LightArmor", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_PP)
		F3_PP_Slider = Value
		SetSliderOptionValue(F3_PP, F3_PP_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Pickpocket", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_LP)
		F3_LP_Slider = Value
		SetSliderOptionValue(F3_LP, F3_LP_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Lockpicking", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_SN)
		F3_SN_Slider = Value
		SetSliderOptionValue(F3_SN, F3_SN_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Sneak", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_AL)
		F3_AL_Slider = Value
		SetSliderOptionValue(F3_AL, F3_AL_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Alchemy", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_SP)
		F3_SP_Slider = Value
		SetSliderOptionValue(F3_SP, F3_SP_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Speechcraft ", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_IL)
		F3_IL_Slider = Value
		SetSliderOptionValue(F3_IL, F3_IL_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Illusion", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_RE)
		F3_RE_Slider = Value
		SetSliderOptionValue(F3_RE, F3_RE_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Restoration", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F3_EN)
		F3_EN_Slider = Value
		SetSliderOptionValue(F3_EN, F3_EN_Slider, "{1}")
		If AliasArray[2] != none
			AliasArray[2].GetActorReference().SetActorValue("Enchanting", Value)
		ElseIf AliasArray[2] == none
		EndIf
	ElseIf (Option == F4_OH)
		F4_OH_Slider = Value
		SetSliderOptionValue(F4_OH, F4_OH_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("OneHanded", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_TH)
		F4_TH_Slider = Value
		SetSliderOptionValue(F4_TH, F4_TH_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("TwoHanded", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_MM)
		F4_MM_Slider = Value
		SetSliderOptionValue(F4_MM, F4_MM_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Marksman", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_BL)
		F4_BL_Slider = Value
		SetSliderOptionValue(F4_BL, F4_BL_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Block", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_SM)
		F4_SM_Slider = Value
		SetSliderOptionValue(F4_SM, F4_SM_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Smithing", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_HA)
		F4_HA_Slider = Value
		SetSliderOptionValue(F4_HA, F4_HA_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("HeavyArmor", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_AN)
		F4_AN_Slider = Value
		SetSliderOptionValue(F4_AN, F4_AN_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Alteration", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_CO)
		F4_CO_Slider = Value
		SetSliderOptionValue(F4_CO, F4_CO_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Conjuration", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_DE)
		F4_DE_Slider = Value
		SetSliderOptionValue(F4_DE, F4_DE_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Destruction", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_LA)
		F4_LA_Slider = Value
		SetSliderOptionValue(F4_LA, F4_LA_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("LightArmor", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_PP)
		F4_PP_Slider = Value
		SetSliderOptionValue(F4_PP, F4_PP_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Pickpocket", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_LP)
		F4_LP_Slider = Value
		SetSliderOptionValue(F4_LP, F4_LP_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Lockpicking", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_SN)
		F4_SN_Slider = Value
		SetSliderOptionValue(F4_SN, F4_SN_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Sneak", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_AL)
		F4_AL_Slider = Value
		SetSliderOptionValue(F4_AL, F4_AL_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Alchemy", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_SP)
		F4_SP_Slider = Value
		SetSliderOptionValue(F4_SP, F4_SP_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Speechcraft ", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_IL)
		F4_IL_Slider = Value
		SetSliderOptionValue(F4_IL, F4_IL_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Illusion", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_RE)
		F4_RE_Slider = Value
		SetSliderOptionValue(F4_RE, F4_RE_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Restoration", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F4_EN)
		F4_EN_Slider = Value
		SetSliderOptionValue(F4_EN, F4_EN_Slider, "{1}")
		If AliasArray[3] != none
			AliasArray[3].GetActorReference().SetActorValue("Enchanting", Value)
		ElseIf AliasArray[3] == none
		EndIf
	ElseIf (Option == F5_OH)
		F5_OH_Slider = Value
		SetSliderOptionValue(F5_OH, F5_OH_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("OneHanded", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_TH)
		F5_TH_Slider = Value
		SetSliderOptionValue(F5_TH, F5_TH_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("TwoHanded", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_MM)
		F5_MM_Slider = Value
		SetSliderOptionValue(F5_MM, F5_MM_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Marksman", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_BL)
		F5_BL_Slider = Value
		SetSliderOptionValue(F5_BL, F5_BL_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Block", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_SM)
		F5_SM_Slider = Value
		SetSliderOptionValue(F5_SM, F5_SM_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Smithing", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_HA)
		F5_HA_Slider = Value
		SetSliderOptionValue(F5_HA, F5_HA_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("HeavyArmor", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_AN)
		F5_AN_Slider = Value
		SetSliderOptionValue(F5_AN, F5_AN_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Alteration", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_CO)
		F5_CO_Slider = Value
		SetSliderOptionValue(F5_CO, F5_CO_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Conjuration", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_DE)
		F5_DE_Slider = Value
		SetSliderOptionValue(F5_DE, F5_DE_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Destruction", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_LA)
		F5_LA_Slider = Value
		SetSliderOptionValue(F5_LA, F5_LA_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("LightArmor", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_PP)
		F5_PP_Slider = Value
		SetSliderOptionValue(F5_PP, F5_PP_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Pickpocket", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_LP)
		F5_LP_Slider = Value
		SetSliderOptionValue(F5_LP, F5_LP_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Lockpicking", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_SN)
		F5_SN_Slider = Value
		SetSliderOptionValue(F5_SN, F5_SN_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Sneak", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_AL)
		F5_AL_Slider = Value
		SetSliderOptionValue(F5_AL, F5_AL_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Alchemy", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_SP)
		F5_SP_Slider = Value
		SetSliderOptionValue(F5_SP, F5_SP_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Speechcraft ", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_IL)
		F5_IL_Slider = Value
		SetSliderOptionValue(F5_IL, F5_IL_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Illusion", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_RE)
		F5_RE_Slider = Value
		SetSliderOptionValue(F5_RE, F5_RE_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Restoration", Value)
		ElseIf AliasArray[4] == none
		EndIf
	ElseIf (Option == F5_EN)
		F5_EN_Slider = Value
		SetSliderOptionValue(F5_EN, F5_EN_Slider, "{1}")
		If AliasArray[4] != none
			AliasArray[4].GetActorReference().SetActorValue("Enchanting", Value)
		ElseIf AliasArray[4] == none
		EndIf		
	EndIf

EndEvent		

Event OnOptionMenuOpen(Int Option)

	If (Option == WageAnchorH)
		SetMenuDialogStartIndex(HAnchorWageString.Find(WageScript.HAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(HAnchorWageString)
	ElseIf (Option == WageAnchorV)
		SetMenuDialogStartIndex(VAnchorWageString.Find(WageScript.VAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(VAnchorWageString)
	ElseIf (Option == FollowerAnchorH1)
		SetMenuDialogStartIndex(HAnchorFollowerString1.Find(Follower1Script.HAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(HAnchorFollowerString1)
	ElseIf (Option == FollowerAnchorV1)
		SetMenuDialogStartIndex(VAnchorFollowerString1.Find(Follower1Script.VAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(VAnchorFollowerString1)
	ElseIf (Option == FollowerAnchorH2)
		SetMenuDialogStartIndex(HAnchorFollowerString2.Find(Follower2Script.HAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(HAnchorFollowerString2)
	ElseIf (Option == FollowerAnchorV2)
		SetMenuDialogStartIndex(VAnchorFollowerString2.Find(Follower2Script.VAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(VAnchorFollowerString2)
	ElseIf (Option == FollowerAnchorH3)
		SetMenuDialogStartIndex(HAnchorFollowerString3.Find(Follower3Script.HAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(HAnchorFollowerString3)
	ElseIf (Option == FollowerAnchorV3)
		SetMenuDialogStartIndex(VAnchorFollowerString3.Find(Follower3Script.VAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(VAnchorFollowerString3)
	ElseIf (Option == FollowerAnchorH4)
		SetMenuDialogStartIndex(HAnchorFollowerString4.Find(Follower4Script.HAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(HAnchorFollowerString4)
	ElseIf (Option == FollowerAnchorV4)
		SetMenuDialogStartIndex(VAnchorFollowerString4.Find(Follower4Script.VAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(VAnchorFollowerString4)
	ElseIf (Option == FollowerAnchorH5)
		SetMenuDialogStartIndex(HAnchorFollowerString5.Find(Follower5Script.HAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(HAnchorFollowerString5)
	ElseIf (Option == FollowerAnchorV5)
		SetMenuDialogStartIndex(VAnchorFollowerString5.Find(Follower5Script.VAnchor))
		SetMenuDialogDefaultIndex(0)
		SetMenuDialogOptions(VAnchorFollowerString5)
	ElseIf option == CStyle1
		SetMenuDialogOptions(CSList1)
		SetMenuDialogStartIndex(CStyleIndex1)
		SetMenuDialogDefaultIndex(0)
	ElseIf option == CStyle2
		SetMenuDialogOptions(CSList2)
		SetMenuDialogStartIndex(CStyleIndex2)
		SetMenuDialogDefaultIndex(0)
	ElseIf option == CStyle3
		SetMenuDialogOptions(CSList3)
		SetMenuDialogStartIndex(CStyleIndex3)
		SetMenuDialogDefaultIndex(0)
	ElseIf option == CStyle4
		SetMenuDialogOptions(CSList4)
		SetMenuDialogStartIndex(CStyleIndex4)
		SetMenuDialogDefaultIndex(0)
	ElseIf option == CStyle5
		SetMenuDialogOptions(CSList5)
		SetMenuDialogStartIndex(CStyleIndex5)
		SetMenuDialogDefaultIndex(0)
	ElseIf option == Ctyle1
		SetMenuDialogOptions(CList1)
		SetMenuDialogStartIndex(CtyleIndex1)
		SetMenuDialogDefaultIndex(0)
	ElseIf option == Ctyle2
		SetMenuDialogOptions(CList2)
		SetMenuDialogStartIndex(CtyleIndex2)
		SetMenuDialogDefaultIndex(0)
	ElseIf option == Ctyle3
		SetMenuDialogOptions(CList3)
		SetMenuDialogStartIndex(CtyleIndex3)
		SetMenuDialogDefaultIndex(0)
	ElseIf option == Ctyle4
		SetMenuDialogOptions(CList4)
		SetMenuDialogStartIndex(CtyleIndex4)
		SetMenuDialogDefaultIndex(0)
	ElseIf option == Ctyle5
		SetMenuDialogOptions(CList5)
		SetMenuDialogStartIndex(CtyleIndex5)
		SetMenuDialogDefaultIndex(0)			
	EndIf

EndEvent

Event OnOptionMenuAccept(Int Option, Int Index)

	If (Option == WageAnchorH)
		WageScript.HAnchor = HAnchorWageString[Index]
		SetMenuOptionValue(Option, HAnchorWageString[HAnchorWageString.Find(WageScript.HAnchor)])
		If Index == 0
			WageScript.X = 10
			ForcePageReset()
		ElseIf Index == 1
			WageScript.X = 1270
			ForcePageReset()
		ElseIf Index == 2
			WageScript.X = 630
			ForcePageReset()			
		EndIf	
	ElseIf (Option == WageAnchorV)
		WageScript.VAnchor = VAnchorWageString[Index]
		SetMenuOptionValue(Option, VAnchorWageString[VAnchorWageString.Find(WageScript.VAnchor)])
		If Index == 0
			WageScript.Y = 710
			ForcePageReset()
		ElseIf Index == 1
			WageScript.Y = 10
			ForcePageReset()
		ElseIf Index == 2
			WageScript.Y = 350
			ForcePageReset()			
		EndIf
	ElseIf (Option == FollowerAnchorH1)
		Follower1Script.HAnchor = HAnchorFollowerString1[Index]
		SetMenuOptionValue(Option, HAnchorFollowerString1[HAnchorFollowerString1.Find(Follower1Script.HAnchor)])
		If Index == 0
			Follower1Script.X = 10
			ForcePageReset()
		ElseIf Index == 1
			Follower1Script.X = 1270
			ForcePageReset()
		ElseIf Index == 2
			Follower1Script.X = 630
			ForcePageReset()			
		EndIf	
	ElseIf (Option == FollowerAnchorV1)
		Follower1Script.VAnchor = VAnchorFollowerString1[Index]
		SetMenuOptionValue(Option, VAnchorFollowerString1[VAnchorFollowerString1.Find(Follower1Script.VAnchor)])
		If Index == 0
			Follower1Script.Y = 710
			ForcePageReset()
		ElseIf Index == 1
			Follower1Script.Y = 10
			ForcePageReset()
		ElseIf Index == 2
			Follower1Script.Y = 350
			ForcePageReset()			
		EndIf		
	ElseIf (Option == FollowerAnchorH2)
		Follower2Script.HAnchor = HAnchorFollowerString2[Index]
		SetMenuOptionValue(Option, HAnchorFollowerString2[HAnchorFollowerString2.Find(Follower2Script.HAnchor)])
		If Index == 0
			Follower2Script.X = 10
			ForcePageReset()
		ElseIf Index == 1
			Follower2Script.X = 1270
			ForcePageReset()
		ElseIf Index == 2
			Follower2Script.X = 630
			ForcePageReset()			
		EndIf	
	ElseIf (Option == FollowerAnchorV2)
		Follower2Script.VAnchor = VAnchorFollowerString2[Index]
		SetMenuOptionValue(Option, VAnchorFollowerString2[VAnchorFollowerString2.Find(Follower2Script.VAnchor)])
		If Index == 0
			Follower2Script.Y = 710
			ForcePageReset()
		ElseIf Index == 1
			Follower2Script.Y = 10
			ForcePageReset()
		ElseIf Index == 2
			Follower2Script.Y = 350
			ForcePageReset()			
		EndIf	
	ElseIf (Option == FollowerAnchorH3)
		Follower3Script.HAnchor = HAnchorFollowerString3[Index]
		SetMenuOptionValue(Option, HAnchorFollowerString3[HAnchorFollowerString3.Find(Follower3Script.HAnchor)])
		If Index == 0
			Follower3Script.X = 10
			ForcePageReset()
		ElseIf Index == 1
			Follower3Script.X = 1270
			ForcePageReset()
		ElseIf Index == 2
			Follower3Script.X = 630
			ForcePageReset()			
		EndIf	
	ElseIf (Option == FollowerAnchorV3)
		Follower3Script.VAnchor = VAnchorFollowerString3[Index]
		SetMenuOptionValue(Option, VAnchorFollowerString3[VAnchorFollowerString3.Find(Follower3Script.VAnchor)])
		If Index == 0
			Follower3Script.Y = 710
			ForcePageReset()
		ElseIf Index == 1
			Follower3Script.Y = 10
			ForcePageReset()
		ElseIf Index == 2
			Follower3Script.Y = 350
			ForcePageReset()			
		EndIf
	ElseIf (Option == FollowerAnchorH4)
		Follower4Script.HAnchor = HAnchorFollowerString4[Index]
		SetMenuOptionValue(Option, HAnchorFollowerString4[HAnchorFollowerString4.Find(Follower4Script.HAnchor)])
		If Index == 0
			Follower4Script.X = 10
			ForcePageReset()
		ElseIf Index == 1
			Follower4Script.X = 1270
			ForcePageReset()
		ElseIf Index == 2
			Follower4Script.X = 630
			ForcePageReset()			
		EndIf	
	ElseIf (Option == FollowerAnchorV4)
		Follower4Script.VAnchor = VAnchorFollowerString4[Index]
		SetMenuOptionValue(Option, VAnchorFollowerString4[VAnchorFollowerString4.Find(Follower4Script.VAnchor)])
		If Index == 0
			Follower4Script.Y = 710
			ForcePageReset()
		ElseIf Index == 1
			Follower4Script.Y = 10
			ForcePageReset()
		ElseIf Index == 2
			Follower4Script.Y = 350
			ForcePageReset()			
		EndIf
	ElseIf (Option == FollowerAnchorH5)
		Follower5Script.HAnchor = HAnchorFollowerString5[Index]
		SetMenuOptionValue(Option, HAnchorFollowerString5[HAnchorFollowerString5.Find(Follower5Script.HAnchor)])
		If Index == 0
			Follower5Script.X = 10
			ForcePageReset()
		ElseIf Index == 1
			Follower5Script.X = 1270
			ForcePageReset()
		ElseIf Index == 2
			Follower5Script.X = 630
			ForcePageReset()			
		EndIf	
	ElseIf (Option == FollowerAnchorV5)
		Follower5Script.VAnchor = VAnchorFollowerString5[Index]
		SetMenuOptionValue(Option, VAnchorFollowerString5[VAnchorFollowerString5.Find(Follower5Script.VAnchor)])
		If Index == 0
			Follower5Script.Y = 710
			ForcePageReset()
		ElseIf Index == 1
			Follower5Script.Y = 10
			ForcePageReset()
		ElseIf Index == 2
			Follower5Script.Y = 350
			ForcePageReset()			
		EndIf
	ElseIf Option == CStyle1
		CStyleIndex1 = index
		SetMenuOptionValue(CStyle1, CSList1[CStyleIndex1])
		Follower1 = FirstFollower.GetReference().GetBaseObject() as ActorBase		
		If CStyleIndex1 == 0				
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex1 == 1
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex1 == 2	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex1 == 3	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex1 == 4	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex1 == 5	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex1 == 6	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex1 == 7	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex1 == 8	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex1 == 9	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex1 == 10	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex1 == 11	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)	
		ElseIf CStyleIndex1 == 12	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex1 == 13	
			Follower1.SetCombatStyle(FM_CustomStyle1FL.GetAt(0) as CombatStyle)			
		EndIf
	ElseIf Option == CStyle2
		CStyleIndex2 = index
		SetMenuOptionValue(CStyle2, CSList2[CStyleIndex2])
		Follower2 = SecondFollower.GetReference().GetBaseObject() as ActorBase		
		If CStyleIndex2 == 0				
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex2 == 1
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex2 == 2	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex2 == 3	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex2 == 4	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex2 == 5	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex2 == 6	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex2 == 7	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex2 == 8	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex2 == 9	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex2 == 10	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex2 == 11	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)
		ElseIf CStyleIndex2 == 12	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex2 == 13	
			Follower2.SetCombatStyle(FM_CustomStyle2FL.GetAt(0) as CombatStyle)			
		EndIf
	ElseIf Option == CStyle3
		CStyleIndex3 = index
		SetMenuOptionValue(CStyle3, CSList3[CStyleIndex3])
		Follower3 = ThirdFollower.GetReference().GetBaseObject() as ActorBase		
		If CStyleIndex3 == 0				
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex3 == 1
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex3 == 2	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex3 == 3	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex3 == 4	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex3 == 5	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex3 == 6	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex3 == 7	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex3 == 8	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex3 == 9	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex3 == 10	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex3 == 11	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)
		ElseIf CStyleIndex3 == 12	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex3 == 13	
			Follower3.SetCombatStyle(FM_CustomStyle3FL.GetAt(0) as CombatStyle)			
		EndIf
	ElseIf Option == CStyle4
		CStyleIndex4 = index
		SetMenuOptionValue(CStyle4, CSList4[CStyleIndex4])
		Follower4 = FourthFollower.GetReference().GetBaseObject() as ActorBase		
		If CStyleIndex4 == 0				
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex4 == 1
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex4 == 2	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex4 == 3	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex4 == 4	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex4 == 5	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex4 == 6	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex4 == 7	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex4 == 8	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex4 == 9	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex4 == 10	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex4 == 11	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)
		ElseIf CStyleIndex4 == 12	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex4 == 13	
			Follower4.SetCombatStyle(FM_CustomStyle4FL.GetAt(0) as CombatStyle)			
		EndIf
	ElseIf Option == CStyle5
		CStyleIndex5 = index
		SetMenuOptionValue(CStyle5, CSList5[CStyleIndex5])
		Follower5 = FifthFollower.GetReference().GetBaseObject() as ActorBase		
		If CStyleIndex5 == 0				
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex5 == 1
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex5 == 2	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex5 == 3	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex5 == 4	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex5 == 5	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex5 == 6	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex5 == 7	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex5 == 8	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex5 == 9	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex5 == 10	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex5 == 11	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)	
		ElseIf CStyleIndex5 == 12	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex5 == 13	
			Follower5.SetCombatStyle(FM_CustomStyle5FL.GetAt(0) as CombatStyle)			
		EndIf
	ElseIf Option == Ctyle1
		CtyleIndex1 = index
		SetMenuOptionValue(Ctyle1, CList1[CtyleIndex1])
		Follower1 = FirstFollower.GetReference().GetBaseObject() as ActorBase		
		If CtyleIndex1 == 0
			Follower1.SetClass(CombatWarrior1H)		
		ElseIf CtyleIndex1 == 1							
			Follower1.SetClass(FM_ClassArcher)				
		ElseIf CtyleIndex1 == 2
			Follower1.SetClass(FM_ClassWarrior)							
		ElseIf CtyleIndex1 == 3	
			Follower1.SetClass(FM_ClassMagician)	
		ElseIf CtyleIndex1 == 4	
			Follower1.SetClass(FM_ClassScout)	
		ElseIf CtyleIndex1 == 5	
			Follower1.SetClass(FM_ClassBarbarian)	
		ElseIf CtyleIndex1 == 6	
			Follower1.SetClass(FM_ClassWizard)	
		ElseIf CtyleIndex1 == 7	
			Follower1.SetClass(FM_ClassAssassin)	
		ElseIf CtyleIndex1 == 8	
			Follower1.SetClass(FM_ClassMonk)	
		ElseIf CtyleIndex1 == 9	
			Follower1.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex1 == 10	
			Follower1.SetClass(FM_ClassBard)	
		ElseIf CtyleIndex1 == 11	
			Follower1.SetClass(FM_ClassSoldier)	
		ElseIf CtyleIndex1 == 12	
			Follower1.SetClass(FM_ClassDragonborn)			
		EndIf
	ElseIf Option == Ctyle2
		CtyleIndex2 = index
		SetMenuOptionValue(Ctyle2, CList2[CtyleIndex2])
		Follower2 = SecondFollower.GetReference().GetBaseObject() as ActorBase		
		If CtyleIndex2 == 0
			Follower2.SetClass(CombatWarrior1H)		
		ElseIf CtyleIndex2 == 1							
			Follower2.SetClass(FM_ClassArcher)				
		ElseIf CtyleIndex2 == 2
			Follower2.SetClass(FM_ClassWarrior)							
		ElseIf CtyleIndex2 == 3	
			Follower2.SetClass(FM_ClassMagician)	
		ElseIf CtyleIndex2 == 4	
			Follower2.SetClass(FM_ClassScout)	
		ElseIf CtyleIndex2 == 5	
			Follower2.SetClass(FM_ClassBarbarian)	
		ElseIf CtyleIndex2 == 6	
			Follower2.SetClass(FM_ClassWizard)	
		ElseIf CtyleIndex2 == 7	
			Follower2.SetClass(FM_ClassAssassin)	
		ElseIf CtyleIndex2 == 8	
			Follower2.SetClass(FM_ClassMonk)	
		ElseIf CtyleIndex2 == 9	
			Follower2.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex2 == 10	
			Follower2.SetClass(FM_ClassBard)	
		ElseIf CtyleIndex2 == 11	
			Follower2.SetClass(FM_ClassSoldier)	
		ElseIf CtyleIndex2 == 12	
			Follower2.SetClass(FM_ClassDragonborn)			
		EndIf
	ElseIf Option == Ctyle3
		CtyleIndex3 = index
		SetMenuOptionValue(Ctyle3, Clist3[CtyleIndex3])
		Follower3 = ThirdFollower.GetReference().GetBaseObject() as ActorBase		
		If CtyleIndex3 == 0
			Follower3.SetClass(CombatWarrior1H)		
		ElseIf CtyleIndex3 == 1							
			Follower3.SetClass(FM_ClassArcher)				
		ElseIf CtyleIndex3 == 2
			Follower3.SetClass(FM_ClassWarrior)							
		ElseIf CtyleIndex3 == 3	
			Follower3.SetClass(FM_ClassMagician)	
		ElseIf CtyleIndex3 == 4	
			Follower3.SetClass(FM_ClassScout)	
		ElseIf CtyleIndex3 == 5	
			Follower3.SetClass(FM_ClassBarbarian)	
		ElseIf CtyleIndex3 == 6	
			Follower3.SetClass(FM_ClassWizard)	
		ElseIf CtyleIndex3 == 7	
			Follower3.SetClass(FM_ClassAssassin)	
		ElseIf CtyleIndex3 == 8	
			Follower3.SetClass(FM_ClassMonk)	
		ElseIf CtyleIndex3 == 9	
			Follower3.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex3 == 10	
			Follower3.SetClass(FM_ClassBard)	
		ElseIf CtyleIndex3 == 11	
			Follower3.SetClass(FM_ClassSoldier)	
		ElseIf CtyleIndex3 == 12	
			Follower3.SetClass(FM_ClassDragonborn)			
		EndIf
	ElseIf Option == Ctyle4
		CtyleIndex4 = index
		SetMenuOptionValue(Ctyle4, CList4[CtyleIndex4])
		Follower4 = FourthFollower.GetReference().GetBaseObject() as ActorBase		
		If CtyleIndex4 == 0
			Follower4.SetClass(CombatWarrior1H)		
		ElseIf CtyleIndex4 == 1							
			Follower4.SetClass(FM_ClassArcher)				
		ElseIf CtyleIndex4 == 2
			Follower4.SetClass(FM_ClassWarrior)							
		ElseIf CtyleIndex4 == 3	
			Follower4.SetClass(FM_ClassMagician)	
		ElseIf CtyleIndex4 == 4	
			Follower4.SetClass(FM_ClassScout)	
		ElseIf CtyleIndex4 == 5	
			Follower4.SetClass(FM_ClassBarbarian)	
		ElseIf CtyleIndex4 == 6	
			Follower4.SetClass(FM_ClassWizard)	
		ElseIf CtyleIndex4 == 7	
			Follower4.SetClass(FM_ClassAssassin)	
		ElseIf CtyleIndex4 == 8	
			Follower4.SetClass(FM_ClassMonk)	
		ElseIf CtyleIndex4 == 9	
			Follower4.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex4 == 10	
			Follower4.SetClass(FM_ClassBard)	
		ElseIf CtyleIndex4 == 11	
			Follower4.SetClass(FM_ClassSoldier)	
		ElseIf CtyleIndex4 == 12	
			Follower4.SetClass(FM_ClassDragonborn)			
		EndIf
	ElseIf Option == Ctyle5
		CtyleIndex5 = index
		SetMenuOptionValue(Ctyle5, CList5[CtyleIndex5])
		Follower5 = FifthFollower.GetReference().GetBaseObject() as ActorBase		
		If CtyleIndex5 == 0
			Follower5.SetClass(CombatWarrior1H)		
		ElseIf CtyleIndex5 == 1							
			Follower5.SetClass(FM_ClassArcher)				
		ElseIf CtyleIndex5 == 2
			Follower5.SetClass(FM_ClassWarrior)							
		ElseIf CtyleIndex5 == 3	
			Follower5.SetClass(FM_ClassMagician)	
		ElseIf CtyleIndex5 == 4	
			Follower5.SetClass(FM_ClassScout)	
		ElseIf CtyleIndex5 == 5	
			Follower5.SetClass(FM_ClassBarbarian)	
		ElseIf CtyleIndex5 == 6	
			Follower5.SetClass(FM_ClassWizard)	
		ElseIf CtyleIndex5 == 7	
			Follower5.SetClass(FM_ClassAssassin)	
		ElseIf CtyleIndex5 == 8	
			Follower5.SetClass(FM_ClassMonk)	
		ElseIf CtyleIndex5 == 9	
			Follower5.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex5 == 10	
			Follower5.SetClass(FM_ClassBard)	
		ElseIf CtyleIndex5 == 11	
			Follower5.SetClass(FM_ClassSoldier)	
		ElseIf CtyleIndex5 == 12	
			Follower5.SetClass(FM_ClassDragonborn)			
		EndIf		
	EndIf

EndEvent

Event OnOptionKeyMapChange(int a_option, int a_keyCode, string a_conflictControl, string a_conflictName)

	If a_option == KeyQuickTrade
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeyTrade = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeyTrade)			
		EndIf
	ElseIf a_option == KeyQuickCommand
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeyCommand = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeyCommand)			
		EndIf
	ElseIf a_option == KeyQuickSummon
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeySummon = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeySummon)			
		EndIf
	ElseIf a_option == KeyQuickRelax
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeyRelax = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeyRelax)			
		EndIf
	ElseIf a_option == KeyQuickAvoid
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeyAvoid = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeyAvoid)			
		EndIf
	ElseIf a_option == KeyQuickLookBack
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeyLookBack = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeyLookBack)			
		EndIf
	ElseIf a_option == KeyQuickDrawWeapon
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeyDrawWeapon = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeyDrawWeapon)			
		EndIf
	ElseIf a_option == KeyQuickWidget
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeyWidget = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeyWidget)			
		EndIf
	ElseIf a_option == KeyQuickMenu
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeyMenu = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeyMenu)			
		EndIf
	ElseIf a_option == KeyQuickMagic
		bool Continue = true
		If (a_conflictControl != "")
			string msg
			If (a_conflictName != "")
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n(" + a_conflictName + ")\n\nAre you sure you want to continue?"
			Else
				msg = "This key is already mapped to:\n'" + a_conflictControl + "'\n\nAre you sure you want to continue?"
			EndIf
			Continue = ShowMessage(msg, true, "Yes", "No")
		EndIf
		If (Continue)
			KeyMagic = a_keyCode
			SetKeymapOptionValue(a_option, a_keyCode)
			RegisterForKey(KeyMagic)			
		EndIf			
	EndIf

EndEvent

Event OnKeyDown(Int aiKeyCode)

	If aiKeyCode == KeyTrade && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		FM_FollowerTradeCheck.SetValueInt(1)	
		FollowerTradeFirst()
	EndIf
	If aiKeyCode == KeySummon && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		SummonFollower()
	EndIf
	If aiKeyCode == KeyRelax && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		RelaxFollower()
	EndIf
	If aiKeyCode == KeyAvoid && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		NoCombatFollower()
	EndIf
	If aiKeyCode == KeyLookBack && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		If PressedKeyOnceLockBack == false
			LookBackFollower()
		ElseIf PressedKeyOnceLockBack == true
			LookBackFollowerReturn()
		EndIf	
	EndIf
	If aiKeyCode == KeyDrawWeapon && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		FollowerCommandFirst()
	EndIf
	If aiKeyCode == KeyWidget && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		ToggleWidget()
	EndIf
	If aiKeyCode == KeyMenu && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		FM_MenuBase StatsMenu = FM_GetDefaultMenu("FM_MenuFollower")
		If StatsMenu
			StatsMenu.OpenMenu()
		Endif	
	EndIf
	;If aiKeyCode == KeyMagic && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
	;	Actor FollowerActor = FirstFollower.GetReference() as Actor	
	;	FM_MenuBase MagicMenu = FM_GetDefaultMenu("FM_MenuMagic")
	;	if MagicMenu
	;		MagicMenu.SetPropertyForm("receivingActor", PlayerREF)
	;		MagicMenu.OpenMenu(FollowerActor)
	;	Endif	
	;EndIf		

EndEvent

Event OnKeyUp(Int aiKeyCode, Float HoldTime)

	If aiKeyCode == KeyTrade && UI.IsMenuOpen("ContainerMenu")
		If HoldTime >= 1 && HoldTime < 2
			FM_FollowerTradeCheck.SetValueInt(2)		
			FollowerTradeSecond()
		ElseIf HoldTime >= 2 && HoldTime < 3
			FM_FollowerTradeCheck.SetValueInt(3)		
			FollowerTradeThird()
		ElseIf HoldTime >= 3 && HoldTime < 4
			FM_FollowerTradeCheck.SetValueInt(4)		
			FollowerTradeFourth()
		ElseIf HoldTime >= 4 && HoldTime < 5
			FM_FollowerTradeCheck.SetValueInt(5)		
			FollowerTradeFifth()			
		ElseIf HoldTime < 1 && HoldTime != 1
			FM_FollowerTradeCheck.SetValueInt(1)		
			FollowerTradeFirst()
		EndIf	
	EndIf
	If aiKeyCode == KeyCommand && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		If HoldTime >= 1 && HoldTime < 2
			FollowerCommandFirst()
		ElseIf HoldTime >= 2 && HoldTime < 3
 			FollowerCommandSecond()
		ElseIf HoldTime >= 3 && HoldTime < 4
 			FollowerCommandThird()	
		ElseIf HoldTime >= 4 && HoldTime < 5
 			FollowerCommandFourth()	
		ElseIf HoldTime >= 5 && HoldTime < 6
 			FollowerCommandFifth()				
		ElseIf HoldTime < 1 && HoldTime != 1 
			FollowerWait()
		EndIf
	EndIf
	If aiKeyCode == KeyLookBack && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		If HoldTime >= 1
			LookBackFollowerReturn()
		EndIf	
	EndIf
	If aiKeyCode == KeyMagic && (!Utility.IsInMenuMode() && !UI.IsTextInputEnabled())
		If HoldTime >= 0 && HoldTime < 1
			Actor FollowerActor = FirstFollower.GetReference() as Actor	
			FM_MenuBase MagicMenu = FM_GetDefaultMenu("FM_MenuMagic")
			if MagicMenu
				MagicMenu.SetPropertyForm("receivingActor", PlayerREF)
				MagicMenu.OpenMenu(FollowerActor)
			Endif
		ElseIf HoldTime >= 1 && HoldTime < 2
			Actor FollowerActor = SecondFollower.GetReference() as Actor	
			FM_MenuBase MagicMenu = FM_GetDefaultMenu("FM_MenuMagic")
			if MagicMenu
				MagicMenu.SetPropertyForm("receivingActor", PlayerREF)
				MagicMenu.OpenMenu(FollowerActor)
			Endif
		ElseIf HoldTime >= 2 && HoldTime < 3
			Actor FollowerActor = ThirdFollower.GetReference() as Actor	
			FM_MenuBase MagicMenu = FM_GetDefaultMenu("FM_MenuMagic")
			if MagicMenu
				MagicMenu.SetPropertyForm("receivingActor", PlayerREF)
				MagicMenu.OpenMenu(FollowerActor)
			Endif
		ElseIf HoldTime >= 3 && HoldTime < 4
			Actor FollowerActor = FourthFollower.GetReference() as Actor	
			FM_MenuBase MagicMenu = FM_GetDefaultMenu("FM_MenuMagic")
			if MagicMenu
				MagicMenu.SetPropertyForm("receivingActor", PlayerREF)
				MagicMenu.OpenMenu(FollowerActor)
			Endif
		ElseIf HoldTime >= 4 && HoldTime < 5
			Actor FollowerActor = FifthFollower.GetReference() as Actor	
			FM_MenuBase MagicMenu = FM_GetDefaultMenu("FM_MenuMagic")
			if MagicMenu
				MagicMenu.SetPropertyForm("receivingActor", PlayerREF)
				MagicMenu.OpenMenu(FollowerActor)
			Endif				
		EndIf
	EndIf	

EndEvent

FM_MenuBase Function FM_GetDefaultMenu(string menuName)
	
	return FM_MenuAddition.GetMenu(menuName)
	
EndFunction

Function RestoreActorValues()

	If !BumpTimeToggle
		Game.SetGameSettingFloat("fBumpReactionIdealMoveDist", 125.000000)
		Game.SetGameSettingFloat("fBumpReactionMinMoveDist", 75.000000)
		Game.SetGameSettingFloat("fBumpReactionSmallDelayTime", 1.000000)
		Game.SetGameSettingFloat("fBumpReactionSmallWaitTimer", 3.000000)
	ElseIf BumpTimeToggle
		Game.SetGameSettingFloat("fBumpReactionIdealMoveDist", 250.000000)
		Game.SetGameSettingFloat("fBumpReactionMinMoveDist", 150.000000)
		Game.SetGameSettingFloat("fBumpReactionSmallDelayTime", 0.500000)
		Game.SetGameSettingFloat("fBumpReactionSmallWaitTimer", 0.500000)		
	EndIf	
	If !WeapDrawToggle
		Game.SetGameSettingFloat("fAIDistanceTeammateDrawWeapon", 2000.000000)
	ElseIf WeapDrawToggle
		Game.SetGameSettingFloat("fAIDistanceTeammateDrawWeapon", 0.000000)		
	EndIf
	Game.SetGameSettingFloat("fFollowSpaceBetweenFollowers", FollowerSpaceSlider)	
	If AliasArray[0].GetActorReference() != none
		AliasArray[0].GetActorReference().SetActorValue("CarryWeight", CarryWeightPointsFollowerSlider1)
		AliasArray[0].GetActorReference().SetActorValue("SpeedMult", SpeedPointsFollowerSlider1)
		AliasArray[0].GetActorReference().SetActorValue("Aggression", FollowerAggressionSlider1)
		AliasArray[0].GetActorReference().SetActorValue("Confidence", FollowerConfidenceSlider1)
		AliasArray[0].GetActorReference().SetActorValue("Assistance", FollowerAssistanceSlider1)
		AliasArray[0].GetActorReference().SetActorValue("Morality", FollowerMoralitySlider1)	
	ElseIf AliasArray[0].GetActorReference() == none
	EndIf
	If AliasArray[1].GetActorReference() != none
		AliasArray[1].GetActorReference().SetActorValue("CarryWeight", CarryWeightPointsFollowerSlider2)
		AliasArray[1].GetActorReference().SetActorValue("SpeedMult", SpeedPointsFollowerSlider2)
		AliasArray[1].GetActorReference().SetActorValue("Aggression", FollowerAggressionSlider2)
		AliasArray[1].GetActorReference().SetActorValue("Confidence", FollowerConfidenceSlider2)
		AliasArray[1].GetActorReference().SetActorValue("Assistance", FollowerAssistanceSlider2)
		AliasArray[1].GetActorReference().SetActorValue("Morality", FollowerMoralitySlider2)	
	ElseIf AliasArray[1].GetActorReference() == none
	EndIf
	If AliasArray[2].GetActorReference() != none
		AliasArray[2].GetActorReference().SetActorValue("CarryWeight", CarryWeightPointsFollowerSlider3)
		AliasArray[2].GetActorReference().SetActorValue("SpeedMult", SpeedPointsFollowerSlider3)
		AliasArray[2].GetActorReference().SetActorValue("Aggression", FollowerAggressionSlider3)
		AliasArray[2].GetActorReference().SetActorValue("Confidence", FollowerConfidenceSlider3)
		AliasArray[2].GetActorReference().SetActorValue("Assistance", FollowerAssistanceSlider3)
		AliasArray[2].GetActorReference().SetActorValue("Morality", FollowerMoralitySlider3)	
	ElseIf AliasArray[2].GetActorReference() == none
	EndIf
	If AliasArray[3].GetActorReference() != none
		AliasArray[3].GetActorReference().SetActorValue("CarryWeight", CarryWeightPointsFollowerSlider4)
		AliasArray[3].GetActorReference().SetActorValue("SpeedMult", SpeedPointsFollowerSlider4)
		AliasArray[3].GetActorReference().SetActorValue("Aggression", FollowerAggressionSlider4)
		AliasArray[3].GetActorReference().SetActorValue("Confidence", FollowerConfidenceSlider4)
		AliasArray[3].GetActorReference().SetActorValue("Assistance", FollowerAssistanceSlider4)
		AliasArray[3].GetActorReference().SetActorValue("Morality", FollowerMoralitySlider4)	
	ElseIf AliasArray[3].GetActorReference() == none
	EndIf
	If AliasArray[4].GetActorReference() != none
		AliasArray[4].GetActorReference().SetActorValue("CarryWeight", CarryWeightPointsFollowerSlider5)
		AliasArray[4].GetActorReference().SetActorValue("SpeedMult", SpeedPointsFollowerSlider5)
		AliasArray[4].GetActorReference().SetActorValue("Aggression", FollowerAggressionSlider5)
		AliasArray[4].GetActorReference().SetActorValue("Confidence", FollowerConfidenceSlider5)
		AliasArray[4].GetActorReference().SetActorValue("Assistance", FollowerAssistanceSlider5)
		AliasArray[4].GetActorReference().SetActorValue("Morality", FollowerMoralitySlider5)	
	ElseIf AliasArray[4].GetActorReference() == none
	EndIf
	
	If FirstFollower.GetReference() != none
		Follower1 = FirstFollower.GetReference().GetBaseObject() as ActorBase
	EndIf
	If SecondFollower.GetReference() != none
		Follower2 = SecondFollower.GetReference().GetBaseObject() as ActorBase
	EndIf
	If ThirdFollower.GetReference() != none
		Follower3 = ThirdFollower.GetReference().GetBaseObject() as ActorBase
	EndIf
	If FourthFollower.GetReference() != none
		Follower4 = FourthFollower.GetReference().GetBaseObject() as ActorBase
	EndIf
	If FifthFollower.GetReference() != none
		Follower5 = FifthFollower.GetReference().GetBaseObject() as ActorBase
	EndIf
	
	If Follower1 != none
		If CStyleIndex1 == 0				
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex1 == 1
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex1 == 2	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex1 == 3	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex1 == 4	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex1 == 5	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex1 == 6	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex1 == 7	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex1 == 8	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex1 == 9	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex1 == 10	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex1 == 11	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)
		ElseIf CStyleIndex1 == 12	
			Follower1.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex1 == 13	
			Follower1.SetCombatStyle(FM_CustomStyle1FL.GetAt(0) as CombatStyle)		
		EndIf
	EndIf
	
	If Follower2 != none
		If CStyleIndex2 == 0				
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex2 == 1
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex2 == 2	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex2 == 3	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex2 == 4	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex2 == 5	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex2 == 6	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex2 == 7	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex2 == 8	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex2 == 9	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex2 == 10	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex2 == 11	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)
		ElseIf CStyleIndex2 == 12	
			Follower2.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex2 == 13	
			Follower2.SetCombatStyle(FM_CustomStyle2FL.GetAt(0) as CombatStyle)		
		EndIf			
	EndIf
	
	If Follower3 != none
		If CStyleIndex3 == 0				
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex3 == 1
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex3 == 2	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex3 == 3	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex3 == 4	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex3 == 5	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex3 == 6	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex3 == 7	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex3 == 8	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex3 == 9	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex3 == 10	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex3 == 11	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)
		ElseIf CStyleIndex3 == 12	
			Follower3.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex3 == 13	
			Follower3.SetCombatStyle(FM_CustomStyle3FL.GetAt(0) as CombatStyle)			
		EndIf
	EndIf
		
	If Follower4 != none	
		If CStyleIndex4 == 0				
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex4 == 1
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex4 == 2	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex4 == 3	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex4 == 4	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex4 == 5	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex4 == 6	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex4 == 7	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex4 == 8	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex4 == 9	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex4 == 10	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex4 == 11	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)
		ElseIf CStyleIndex4 == 12	
			Follower4.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex4 == 13	
			Follower4.SetCombatStyle(FM_CustomStyle4FL.GetAt(0) as CombatStyle)			
		EndIf
	EndIf

	If Follower5 != none
		If CStyleIndex5 == 0				
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(0) as CombatStyle)				
		ElseIf CStyleIndex5 == 1
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(1) as CombatStyle)							
		ElseIf CStyleIndex5 == 2	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(2) as CombatStyle)
		ElseIf CStyleIndex5 == 3	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(3) as CombatStyle)
		ElseIf CStyleIndex5 == 4	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(4) as CombatStyle)
		ElseIf CStyleIndex5 == 5	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(5) as CombatStyle)
		ElseIf CStyleIndex5 == 6	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(6) as CombatStyle)
		ElseIf CStyleIndex5 == 7	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(7) as CombatStyle)
		ElseIf CStyleIndex5 == 8	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(8) as CombatStyle)
		ElseIf CStyleIndex5 == 9	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(9) as CombatStyle)
		ElseIf CStyleIndex5 == 10	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(10) as CombatStyle)
		ElseIf CStyleIndex5 == 11	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(11) as CombatStyle)
		ElseIf CStyleIndex5 == 12	
			Follower5.SetCombatStyle(FM_CombatStyleFL.GetAt(12) as CombatStyle)
		ElseIf CStyleIndex5 == 13	
			Follower5.SetCombatStyle(FM_CustomStyle5FL.GetAt(0) as CombatStyle)			
		EndIf
	EndIf	
	
	If Follower1 != none
		If CtyleIndex1 == 0				
			Follower1.SetClass(CombatWarrior1H)
		ElseIf CtyleIndex1 == 1				
			Follower1.SetClass(FM_ClassArcher)	
		ElseIf CtyleIndex1 == 2				
			Follower1.SetClass(FM_ClassWarrior)
		ElseIf CtyleIndex1 == 3
			Follower1.SetClass(FM_ClassMagician)
		ElseIf CtyleIndex1 == 4	
			Follower1.SetClass(FM_ClassScout)
		ElseIf CtyleIndex1 == 5
			Follower1.SetClass(FM_ClassBarbarian)
		ElseIf CtyleIndex1 == 6
			Follower1.SetClass(FM_ClassWizard)
		ElseIf CtyleIndex1 == 7
			Follower1.SetClass(FM_ClassAssassin)
		ElseIf CtyleIndex1 == 8
			Follower1.SetClass(FM_ClassMonk)
		ElseIf CtyleIndex1 == 9
			Follower1.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex1 == 10
			Follower1.SetClass(FM_ClassBard)
		ElseIf CtyleIndex1 == 11
			Follower1.SetClass(FM_ClassSoldier)
		ElseIf CtyleIndex1 == 12	
			Follower1.SetClass(FM_ClassDragonborn)
		EndIf
	EndIf

	If Follower2 != none	
		If CtyleIndex2 == 0				
			Follower2.SetClass(CombatWarrior1H)	
		ElseIf CtyleIndex2 == 1				
			Follower2.SetClass(FM_ClassArcher)				
		ElseIf CtyleIndex2 == 2				
			Follower2.SetClass(FM_ClassWarrior)
		ElseIf CtyleIndex2 == 3				
			Follower2.SetClass(FM_ClassMagician)	
		ElseIf CtyleIndex2 == 4				
			Follower2.SetClass(FM_ClassScout)	
		ElseIf CtyleIndex2 == 5				
			Follower2.SetClass(FM_ClassBarbarian)	
		ElseIf CtyleIndex2 == 6				
			Follower2.SetClass(FM_ClassWizard)	
		ElseIf CtyleIndex2 == 7				
			Follower2.SetClass(FM_ClassAssassin)	
		ElseIf CtyleIndex2 == 8				
			Follower2.SetClass(FM_ClassMonk)	
		ElseIf CtyleIndex2 == 9				
			Follower2.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex2 == 10				
			Follower2.SetClass(FM_ClassBard)	
		ElseIf CtyleIndex2 == 11				
			Follower2.SetClass(FM_ClassSoldier)	
		ElseIf CtyleIndex2 == 12				
			Follower2.SetClass(FM_ClassDragonborn)
		EndIf	
	EndIf
	
	If Follower3 != none
		If CtyleIndex3 == 0				
			Follower3.SetClass(CombatWarrior1H)	
		ElseIf CtyleIndex3 == 1				
			Follower3.SetClass(FM_ClassArcher)				
		ElseIf CtyleIndex3 == 2				
			Follower3.SetClass(FM_ClassWarrior)
		ElseIf CtyleIndex3 == 3				
			Follower3.SetClass(FM_ClassMagician)	
		ElseIf CtyleIndex3 == 4				
			Follower3.SetClass(FM_ClassScout)	
		ElseIf CtyleIndex3 == 5				
			Follower3.SetClass(FM_ClassBarbarian)	
		ElseIf CtyleIndex3 == 6				
			Follower3.SetClass(FM_ClassWizard)	
		ElseIf CtyleIndex3 == 7				
			Follower3.SetClass(FM_ClassAssassin)	
		ElseIf CtyleIndex3 == 8				
			Follower3.SetClass(FM_ClassMonk)	
		ElseIf CtyleIndex3 == 9				
			Follower3.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex3 == 10				
			Follower3.SetClass(FM_ClassBard)	
		ElseIf CtyleIndex3 == 11				
			Follower3.SetClass(FM_ClassSoldier)	
		ElseIf CtyleIndex3 == 12				
			Follower3.SetClass(FM_ClassDragonborn)
		EndIf			
	EndIf
	
	If Follower4 != none	
		If CtyleIndex4 == 0				
			Follower4.SetClass(CombatWarrior1H)
		ElseIf CtyleIndex4 == 1				
			Follower4.SetClass(FM_ClassArcher)				
		ElseIf CtyleIndex4 == 2				
			Follower4.SetClass(FM_ClassWarrior)
		ElseIf CtyleIndex4 == 3				
			Follower4.SetClass(FM_ClassMagician)	
		ElseIf CtyleIndex4 == 4				
			Follower4.SetClass(FM_ClassScout)	
		ElseIf CtyleIndex4 == 5				
			Follower4.SetClass(FM_ClassBarbarian)	
		ElseIf CtyleIndex4 == 6				
			Follower4.SetClass(FM_ClassWizard)	
		ElseIf CtyleIndex4 == 7				
			Follower4.SetClass(FM_ClassAssassin)	
		ElseIf CtyleIndex4 == 8				
			Follower4.SetClass(FM_ClassMonk)	
		ElseIf CtyleIndex4 == 9				
			Follower4.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex4 == 10				
			Follower4.SetClass(FM_ClassBard)	
		ElseIf CtyleIndex4 == 11				
			Follower4.SetClass(FM_ClassSoldier)	
		ElseIf CtyleIndex4 == 12				
			Follower4.SetClass(FM_ClassDragonborn)	
		EndIf		
	EndIf
	
	If Follower5 != none	
		If CtyleIndex5 == 0				
			Follower5.SetClass(CombatWarrior1H)
		ElseIf CtyleIndex5 == 1				
			Follower5.SetClass(FM_ClassArcher)				
		ElseIf CtyleIndex5 == 2				
			Follower5.SetClass(FM_ClassWarrior)
		ElseIf CtyleIndex5 == 3				
			Follower5.SetClass(FM_ClassMagician)	
		ElseIf CtyleIndex5 == 4				
			Follower5.SetClass(FM_ClassScout)	
		ElseIf CtyleIndex5 == 5				
			Follower5.SetClass(FM_ClassBarbarian)	
		ElseIf CtyleIndex5 == 6				
			Follower5.SetClass(FM_ClassWizard)	
		ElseIf CtyleIndex5 == 7				
			Follower5.SetClass(FM_ClassAssassin)	
		ElseIf CtyleIndex5 == 8				
			Follower5.SetClass(FM_ClassMonk)	
		ElseIf CtyleIndex5 == 9				
			Follower5.SetClass(FM_ClassSpellSword)	
		ElseIf CtyleIndex5 == 10				
			Follower5.SetClass(FM_ClassBard)	
		ElseIf CtyleIndex5 == 11				
			Follower5.SetClass(FM_ClassSoldier)	
		ElseIf CtyleIndex5 == 12				
			Follower5.SetClass(FM_ClassDragonborn)	
		EndIf
	EndIf
	
	CS1 = FM_CustomStyle1FL.GetAt(0) as CombatStyle
	CS2 = FM_CustomStyle2FL.GetAt(0) as CombatStyle	
	CS3 = FM_CustomStyle3FL.GetAt(0) as CombatStyle	
	CS4 = FM_CustomStyle4FL.GetAt(0) as CombatStyle	
	CS5 = FM_CustomStyle5FL.GetAt(0) as CombatStyle		

	If CSDualToggle1
		CS1.SetAllowDualWielding(true)
	ElseIf !CSDualToggle1
		CS1.SetAllowDualWielding(False)
	EndIf
	If CSDualToggle2
		CS2.SetAllowDualWielding(true)
	ElseIf !CSDualToggle2
		CS2.SetAllowDualWielding(False)
	EndIf
	If CSDualToggle3
		CS3.SetAllowDualWielding(true)
	ElseIf !CSDualToggle3
		CS3.SetAllowDualWielding(False)
	EndIf
	If CSDualToggle4
		CS4.SetAllowDualWielding(true)
	ElseIf !CSDualToggle4
		CS4.SetAllowDualWielding(False)
	EndIf
	If CSDualToggle5
		CS5.SetAllowDualWielding(true)
	ElseIf !CSDualToggle5
		CS5.SetAllowDualWielding(False)
	EndIf
	CS1.SetOffensiveMult(CSOffSlider1)
	CS1.SetDefensiveMult(CSDefSlider1)
	CS1.SetMeleeMult(CSMelSlider1)
	CS1.SetRangedMult(CSRanSlider1)
	CS1.SetMagicMult(CSMagSlider1)
	CS1.SetStaffMult(CSStaSlider1)
	CS1.SetUnarmedMult(CSUnaSlider1)
	CS2.SetOffensiveMult(CSOffSlider2)
	CS2.SetDefensiveMult(CSDefSlider2)
	CS2.SetMeleeMult(CSMelSlider2)
	CS2.SetRangedMult(CSRanSlider2)
	CS2.SetMagicMult(CSMagSlider2)
	CS2.SetStaffMult(CSStaSlider2)
	CS2.SetUnarmedMult(CSUnaSlider2)
	CS3.SetOffensiveMult(CSOffSlider3)
	CS3.SetDefensiveMult(CSDefSlider3)
	CS3.SetMeleeMult(CSMelSlider3)
	CS3.SetRangedMult(CSRanSlider3)
	CS3.SetMagicMult(CSMagSlider3)
	CS3.SetStaffMult(CSStaSlider3)
	CS3.SetUnarmedMult(CSUnaSlider3)
	CS4.SetOffensiveMult(CSOffSlider4)
	CS4.SetDefensiveMult(CSDefSlider4)
	CS4.SetMeleeMult(CSMelSlider4)
	CS4.SetRangedMult(CSRanSlider4)
	CS4.SetMagicMult(CSMagSlider4)
	CS4.SetStaffMult(CSStaSlider4)
	CS4.SetUnarmedMult(CSUnaSlider4)
	CS5.SetOffensiveMult(CSOffSlider5)
	CS5.SetDefensiveMult(CSDefSlider5)
	CS5.SetMeleeMult(CSMelSlider5)
	CS5.SetRangedMult(CSRanSlider5)
	CS5.SetMagicMult(CSMagSlider5)
	CS5.SetStaffMult(CSStaSlider5)
	CS5.SetUnarmedMult(CSUnaSlider5)	
	
	InitKeys()	

EndFunction

Function InitKeys(Int aiDXScanCode = 0)

	RegisterForKey(KeyTrade)
	RegisterForKey(KeyCommand)
 	RegisterForKey(KeySummon)
	RegisterForKey(KeyRelax)
 	RegisterForKey(KeyAvoid)
	RegisterForKey(KeyLookBack)
	RegisterForKey(KeyDrawWeapon)
	RegisterForKey(KeyWidget)
		
EndFunction

Function DismissFirstFollower()

	akSpeaker = FirstFollower.GetReference() as Actor
	If !(akspeaker.IsInFaction(DismissedFollowerFaction))
	  (DialogueFollower as DialogueFollowerScript).DismissFollower(0, 0, akSpeaker as ObjectReference)
	EndIf

EndFunction

Function DismissSecondFollower()

	akSpeaker = SecondFollower.GetReference() as Actor
	If !(akspeaker.IsInFaction(DismissedFollowerFaction))
	  (DialogueFollower as DialogueFollowerScript).DismissFollower(0, 0, akSpeaker as ObjectReference)
	EndIf

EndFunction

Function DismissThirdFollower()

	akSpeaker = ThirdFollower.GetReference() as Actor
	If !(akspeaker.IsInFaction(DismissedFollowerFaction))
	  (DialogueFollower as DialogueFollowerScript).DismissFollower(0, 0, akSpeaker as ObjectReference)
	EndIf

EndFunction

Function DismissFourthFollower()

	akSpeaker = FourthFollower.GetReference() as Actor
	If !(akspeaker.IsInFaction(DismissedFollowerFaction))
	  (DialogueFollower as DialogueFollowerScript).DismissFollower(0, 0, akSpeaker as ObjectReference)
	EndIf

EndFunction

Function DismissFifthFollower()

	akSpeaker = FifthFollower.GetReference() as Actor
	If !(akspeaker.IsInFaction(DismissedFollowerFaction))
	  (DialogueFollower as DialogueFollowerScript).DismissFollower(0, 0, akSpeaker as ObjectReference)
	EndIf

EndFunction

Function FollowerTradeFirst()
	If FirstFollower.GetActorReference() != none
		If FirstFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && FirstFollower.GetActorReference().GetDistance(PlayerREF) <= 500
			FirstFollower.GetActorReference().OpenInventory()
		EndIf
	EndIf	
EndFunction

Function FollowerTradeSecond()
	Int AbortKey = Input.GetMappedKey("Tween Menu")
	Input.TapKey(AbortKey)
	If SecondFollower.GetActorReference() != none	
		If SecondFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && SecondFollower.GetActorReference().GetDistance(PlayerREF) <= 500
			SecondFollower.GetActorReference().OpenInventory()
		EndIf
	EndIf
EndFunction

Function FollowerTradeThird()
	Int AbortKey = Input.GetMappedKey("Tween Menu")
	Input.TapKey(AbortKey)
	If ThirdFollower.GetActorReference() != none	
		If ThirdFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && ThirdFollower.GetActorReference().GetDistance(PlayerREF) <= 500
			ThirdFollower.GetActorReference().OpenInventory()
		EndIf
	EndIf
EndFunction

Function FollowerTradeFourth()
	Int AbortKey = Input.GetMappedKey("Tween Menu")
	Input.TapKey(AbortKey)
	If FourthFollower.GetActorReference() != none	
		If FourthFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && FourthFollower.GetActorReference().GetDistance(PlayerREF) <= 500
			FourthFollower.GetActorReference().OpenInventory()
		EndIf
	EndIf
EndFunction

Function FollowerTradeFifth()	
	Int AbortKey = Input.GetMappedKey("Tween Menu")
	Input.TapKey(AbortKey)
	If FifthFollower.GetActorReference() != none	
		If FifthFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && FifthFollower.GetActorReference().GetDistance(PlayerREF) <= 500
			FifthFollower.GetActorReference().OpenInventory()
		EndIf
	EndIf
EndFunction

Function FollowerWait(Int aiIndex = 5)
	UnregisterForKey(KeyCommand)
	While (aiIndex > 0)
		aiIndex -= 1
		Actor ActorRef = AliasArray[aiIndex].GetActorReference() as Actor
		If ActorRef != none	
			If ActorRef.GetActorValue("WaitingForPlayer") == 0 && ActorRef.GetDistance(PlayerREF) <= 2000
				If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
					FM_WhistleWaitSM.Play(PlayerREF)
				EndIf
				Debug.Notification("Follower waits for you") 
				ActorRef.RegisterForUpdateGameTime(72)
				ActorRef.SetActorValue("WaitingForPlayer", 1)
				ActorRef.EvaluatePackage()
			ElseIf ActorRef.GetActorValue("WaitingForPlayer") == 1 && ActorRef.GetDistance(PlayerREF) <= 2000
				If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
					FM_WhistleFollowSM.Play(PlayerREF)
				EndIf
				Debug.Notification("Follower follows you")			
				ActorRef.UnRegisterForUpdate()
				ActorRef.SetActorValue("WaitingForPlayer", 0)
				ActorRef.EvaluatePackage()
			EndIf
		EndIf
	EndWhile
	RegisterForKey(KeyCommand)
EndFunction

Function FollowerCommandFirst()
	If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
		FM_WhistleCommandSM.Play(PlayerREF)
	EndIf
	If FirstFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && FirstFollower.GetActorReference().GetDistance(PlayerREF) <= 2000
		FirstFollower.GetActorReference().SetDoingFavor()			
	EndIf
EndFunction

Function FollowerCommandSecond()
	If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
		FM_WhistleCommandSM.Play(PlayerREF)
	EndIf
	If SecondFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && SecondFollower.GetActorReference().GetDistance(PlayerREF) <= 2000
		SecondFollower.GetActorReference().SetDoingFavor()			
	EndIf
EndFunction

Function FollowerCommandThird()
	If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
		FM_WhistleCommandSM.Play(PlayerREF)
	EndIf
	If ThirdFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && ThirdFollower.GetActorReference().GetDistance(PlayerREF) <= 2000
		ThirdFollower.GetActorReference().SetDoingFavor()			
	EndIf
EndFunction

Function FollowerCommandFourth()
	If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
		FM_WhistleCommandSM.Play(PlayerREF)
	EndIf
	If FourthFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && FourthFollower.GetActorReference().GetDistance(PlayerREF) <= 2000
		FourthFollower.GetActorReference().SetDoingFavor()			
	EndIf
EndFunction

Function FollowerCommandFifth()
	If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
		FM_WhistleCommandSM.Play(PlayerREF)
	EndIf
	If FifthFollower.GetActorReference().IsInFaction(CurrentFollowerFaction) && FifthFollower.GetActorReference().GetDistance(PlayerREF) <= 2000
		FifthFollower.GetActorReference().SetDoingFavor()			
	EndIf
EndFunction

Function SummonFollower(Int aiIndex = 5)
	UnregisterForKey(KeySummon)
	If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
		FM_WhistleSummonSM.Play(PlayerREF)
	EndIf	
	While (aiIndex > 0)
		aiIndex -= 1
		Actor ActorRef = AliasArray[aiIndex].GetActorReference() as Actor
		If ActorRef != none		
			If ActorRef.IsInFaction(CurrentFollowerFaction)
				ActorRef.SetAlpha(0, false)
				ActorRef.MoveTo(PlayerREF)
				MGTeleportInEffect.Play(ActorRef, 2)
				ActorRef.SetAlpha(1, true)
			EndIf
		EndIf	
	EndWhile
	RegisterForKey(KeySummon)
EndFunction

Function RelaxFollower(Int aiIndex = 5)
	UnregisterForKey(KeyRelax)
	While (aiIndex > 0)
		aiIndex -= 1
		Actor ActorRef = AliasArray[aiIndex].GetActorReference() as Actor
		If ActorRef != none		
			If ActorRef.IsInFaction(FM_RelaxFaction) == 0 && ActorRef.GetDistance(PlayerREF) <= 2000 && ActorRef.GetAv("WaitingForPlayer") == 0
				Debug.Notification("Follower relaxes")
				ActorRef.AddToFaction(FM_RelaxFaction)
				ActorRef.EvaluatePackage()			
			ElseIf ActorRef.IsInFaction(FM_RelaxFaction) == 1 && ActorRef.GetDistance(PlayerREF) <= 2000 && ActorRef.GetAv("WaitingForPlayer") == 0
				If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
					FM_WhistleRelaxSM.Play(PlayerREF)
				EndIf
				Debug.Notification("Follower is relaxed")
				ActorRef.RemoveFromFaction(FM_RelaxFaction)
				ActorRef.EvaluatePackage()					
			EndIf
		EndIf	
	EndWhile
	RegisterForKey(KeyRelax)
EndFunction

Function NoCombatFollower(Int aiIndex = 5)
	UnregisterForKey(KeyAvoid)
	While (aiIndex > 0)
		aiIndex -= 1
		Actor ActorRef = AliasArray[aiIndex].GetActorReference() as Actor
		If ActorRef != none		
			If ActorRef.IsInFaction(FM_AvoidCombatFaction) == 0 && ActorRef.GetDistance(PlayerREF) <= 2000 && ActorRef.GetAv("WaitingForPlayer") == 0
				If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
					FM_WhistleAvoidSM.Play(PlayerREF)
				EndIf				
				Debug.Notification("Follower avoids combat")
				ActorRef.AddToFaction(FM_AvoidCombatFaction)
				ActorRef.EvaluatePackage()
			ElseIf ActorRef.IsInFaction(FM_AvoidCombatFaction) == 1 && ActorRef.GetDistance(PlayerREF) <= 2000 && ActorRef.GetAv("WaitingForPlayer") == 0
				If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
					FM_WhistleEnterSM.Play(PlayerREF)
				EndIf	
				Debug.Notification("Follower will enter combat")
				ActorRef.RemoveFromFaction(FM_AvoidCombatFaction)
				ActorRef.EvaluatePackage()
			EndIf
		EndIf	
	EndWhile
	RegisterForKey(KeyAvoid)
EndFunction

Function LookBackFollower(Int aiIndex = 5)
	UnregisterForKey(KeyLookBack)
	While (aiIndex > 0)
		aiIndex -= 1
		Actor ActorRef = AliasArray[aiIndex].GetActorReference() as Actor
		If ActorRef != none			
			If ActorRef.IsInFaction(CurrentFollowerFaction)
				Game.SetCameraTarget(CameraFollower.GetActorReference())
				Game.ForceThirdPerson()
			EndIf
		EndIf	
	EndWhile
	PressedKeyOnceLockBack = true
	RegisterForKey(KeyLookBack)
EndFunction

Function LookBackFollowerReturn(Int aiIndex = 5)
	Game.SetCameraTarget(PlayerREF)
	Game.ForceFirstPerson()
	PressedKeyOnceLockBack = false
EndFunction

Function DrawWeaponFollower(Int aiIndex = 5)
	UnregisterForKey(KeyDrawWeapon)
	While (aiIndex > 0)
		aiIndex -= 1
		Actor ActorRef = AliasArray[aiIndex].GetActorReference() as Actor
		If ActorRef != none			
			If ActorRef.IsInFaction(CurrentFollowerFaction)
				If !ActorRef.IsWeaponDrawn()
					If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
						FM_WhistleDrawSM.Play(PlayerREF)
					EndIf					
					Game.SetGameSettingFloat("fAIDistanceTeammateDrawWeapon", 2000.0)			
					ActorRef.DrawWeapon()
					PlayerREF.DrawWeapon()
					Debug.Notification("Follower draws weapon with you!")					
				ElseIf ActorRef.IsWeaponDrawn()
					If FM_WhistleAllow.GetValueInt() == 1 && !PlayerREF.IsSneaking()
						FM_WhistleSheatheSM.Play(PlayerREF)
					EndIf				
					ActorRef.SheatheWeapon()
					PlayerREF.SheatheWeapon()
					Game.SetGameSettingFloat("fAIDistanceTeammateDrawWeapon", 0.0)
					Debug.Notification("Follower does not draw weapon with you!")						
				EndIf
			EndIf
		EndIf	
	EndWhile
	RegisterForKey(KeyDrawWeapon)
EndFunction

Function ToggleWidget()

	Bool DoOnce = false
	If DoOnce == false
		WageScript.Visible = !WageScript.Visible
		SetToggleOptionValue(WageWidget, WageScript.Visible)	
		Follower1Script.Visible = !Follower1Script.Visible
		SetToggleOptionValue(FollowerWidget1, Follower1Script.Visible)
		Follower2Script.Visible = !Follower2Script.Visible
		SetToggleOptionValue(FollowerWidget2, Follower2Script.Visible)
		Follower3Script.Visible = !Follower3Script.Visible
		SetToggleOptionValue(FollowerWidget3, Follower3Script.Visible)
		Follower4Script.Visible = !Follower4Script.Visible
		SetToggleOptionValue(FollowerWidget4, Follower4Script.Visible)
		Follower5Script.Visible = !Follower5Script.Visible
		SetToggleOptionValue(FollowerWidget5, Follower5Script.Visible)		
		DoOnce = true
	ElseIf DoOnce == true
		WageScript.Visible = WageScript.Visible
		SetToggleOptionValue(WageWidget, !WageScript.Visible)	
		Follower1Script.Visible = Follower1Script.Visible
		SetToggleOptionValue(FollowerWidget1, !Follower1Script.Visible)
		Follower2Script.Visible = Follower2Script.Visible
		SetToggleOptionValue(FollowerWidget2, !Follower2Script.Visible)	
		Follower3Script.Visible = Follower3Script.Visible
		SetToggleOptionValue(FollowerWidget3, !Follower3Script.Visible)	
		Follower4Script.Visible = Follower4Script.Visible
		SetToggleOptionValue(FollowerWidget4, !Follower4Script.Visible)	
		Follower5Script.Visible = Follower5Script.Visible
		SetToggleOptionValue(FollowerWidget5, !Follower5Script.Visible)			
		DoOnce = false		
	EndIf
	
EndFunction

Function LoadUserPreset()

	FISSInterface fiss = FISSFactory.getFISS()
	fiss.beginLoad("FMUserSettings.xml")

	WageWidget = fiss.loadInt("FISS_WageWidget")
	WageScript.Visible = fiss.loadBool("FISS_WageWidgetScript")
	WagePosX = fiss.loadInt("FISS_WagePosX")
	WageScript.X = fiss.loadFloat("FISS_WagePosXScript")
	WagePosY = fiss.loadInt("FISS_WagePosY")
	WageScript.Y = fiss.loadFloat("FISS_WagePosYScript")
	WageAlpha = fiss.loadInt("FISS_WageAlpha")
	WageScript.Alpha = fiss.loadFloat("FISS_WageAlphaScript")
	WageScale = fiss.loadInt("FISS_WageScale")
	WageScript.Size = fiss.loadInt("FISS_WageScaleScript")	
	FollowerWidget1 = fiss.loadInt("FISS_FollowerWidget1")
	Follower1Script.Visible = fiss.loadBool("FISS_FollowerWidgetScript1")
	FollowerPosX1 = fiss.loadInt("FISS_FollowerPosX1")
	Follower1Script.X = fiss.loadFloat("FISS_FollowerPosXScript1")
	FollowerPosY1 = fiss.loadInt("FISS_FollowerPosY1")
	Follower1Script.Y = fiss.loadFloat("FISS_FollowerPosYScript1")
	FollowerAlpha1 = fiss.loadInt("FISS_FollowerAlpha1")
	Follower1Script.Alpha = fiss.loadFloat("FISS_FollowerAlphaScript1")
	FollowerScale1 = fiss.loadInt("FISS_FollowerScale1")
	Follower1Script.Size = fiss.loadInt("FISS_FollowerScaleScript1")
	FollowerWidget2 = fiss.loadInt("FISS_FollowerWidget2")
	Follower2Script.Visible = fiss.loadBool("FISS_FollowerWidgetScript2")
	FollowerPosX2 = fiss.loadInt("FISS_FollowerPosX2")
	Follower2Script.X = fiss.loadFloat("FISS_FollowerPosXScript2")
	FollowerPosY2 = fiss.loadInt("FISS_FollowerPosY2")
	Follower2Script.Y = fiss.loadFloat("FISS_FollowerPosYScript2")
	FollowerAlpha2 = fiss.loadInt("FISS_FollowerAlpha2")
	Follower2Script.Alpha = fiss.loadFloat("FISS_FollowerAlphaScript2")
	FollowerScale2 = fiss.loadInt("FISS_FollowerScale2")
	Follower2Script.Size = fiss.loadInt("FISS_FollowerScaleScript2")
	FollowerWidget3 = fiss.loadInt("FISS_FollowerWidget3")
	Follower3Script.Visible = fiss.loadBool("FISS_FollowerWidgetScript3")
	FollowerPosX3 = fiss.loadInt("FISS_FollowerPosX3")
	Follower3Script.X = fiss.loadFloat("FISS_FollowerPosXScript3")
	FollowerPosY3 = fiss.loadInt("FISS_FollowerPosY3")
	Follower3Script.Y = fiss.loadFloat("FISS_FollowerPosYScript3")
	FollowerAlpha3 = fiss.loadInt("FISS_FollowerAlpha3")
	Follower3Script.Alpha = fiss.loadFloat("FISS_FollowerAlphaScript3")
	FollowerScale3 = fiss.loadInt("FISS_FollowerScale3")
	Follower3Script.Size = fiss.loadInt("FISS_FollowerScaleScript3")
	FollowerWidget4 = fiss.loadInt("FISS_FollowerWidget4")
	Follower4Script.Visible = fiss.loadBool("FISS_FollowerWidgetScript4")
	FollowerPosX4 = fiss.loadInt("FISS_FollowerPosX4")
	Follower4Script.X = fiss.loadFloat("FISS_FollowerPosXScript4")
	FollowerPosY4 = fiss.loadInt("FISS_FollowerPosY4")
	Follower4Script.Y = fiss.loadFloat("FISS_FollowerPosYScript4")
	FollowerAlpha4 = fiss.loadInt("FISS_FollowerAlpha4")
	Follower4Script.Alpha = fiss.loadFloat("FISS_FollowerAlphaScript4")
	FollowerScale4 = fiss.loadInt("FISS_FollowerScale4")
	Follower4Script.Size = fiss.loadInt("FISS_FollowerScaleScript4")
	FollowerWidget5 = fiss.loadInt("FISS_FollowerWidget5")
	Follower5Script.Visible = fiss.loadBool("FISS_FollowerWidgetScript5")
	FollowerPosX5 = fiss.loadInt("FISS_FollowerPosX5")
	Follower5Script.X = fiss.loadFloat("FISS_FollowerPosXScript5")
	FollowerPosY5 = fiss.loadInt("FISS_FollowerPosY5")
	Follower5Script.Y = fiss.loadFloat("FISS_FollowerPosYScript5")
	FollowerAlpha5 = fiss.loadInt("FISS_FollowerAlpha5")
	Follower5Script.Alpha = fiss.loadFloat("FISS_FollowerAlphaScript5")
	FollowerScale5 = fiss.loadInt("FISS_FollowerScale5")
	Follower5Script.Size = fiss.loadInt("FISS_FollowerScaleScript5")		

EndFunction

Function SaveUserPreset()

	FISSInterface fiss = FISSFactory.getFISS()
	fiss.beginSave("FMUserSettings.xml", " Follower Mod")
	
	fiss.saveInt("FISS_WageWidget", WageWidget)
	fiss.saveBool("FISS_WageWidgetScript", WageScript.Visible)
	fiss.saveInt("FISS_WagePosX", WagePosX)
	fiss.saveFloat("FISS_WagePosXScript", WageScript.X)
	fiss.saveInt("FISS_WagePosY", WagePosY)
	fiss.saveFloat("FISS_WagePosYScript", WageScript.Y)
	fiss.saveInt("FISS_WageAlpha", WageAlpha)
	fiss.saveFloat("FISS_WageAlphaScript", WageScript.Alpha)
	fiss.saveInt("FISS_WageScale", WageScale)
	fiss.saveInt("FISS_WageScaleScript", WageScript.Size)
	fiss.saveInt("FISS_FollowerWidget1", FollowerWidget1)
	fiss.saveBool("FISS_FollowerWidgetScript1", Follower1Script.Visible)
	fiss.saveInt("FISS_FollowerPosX1", FollowerPosX1)
	fiss.saveFloat("FISS_FollowerPosXScript1", Follower1Script.X)
	fiss.saveInt("FISS_FollowerPosY1", FollowerPosY1)
	fiss.saveFloat("FISS_FollowerPosYScript1", Follower1Script.Y)
	fiss.saveInt("FISS_FollowerAlpha1", FollowerAlpha1)
	fiss.saveFloat("FISS_FollowerAlphaScript1", Follower1Script.Alpha)
	fiss.saveInt("FISS_FollowerScale1", FollowerScale1)
	fiss.saveInt("FISS_FollowerScaleScript1", Follower1Script.Size)	
	fiss.saveInt("FISS_FollowerWidget2", FollowerWidget2)
	fiss.saveBool("FISS_FollowerWidgetScript2", Follower2Script.Visible)
	fiss.saveInt("FISS_FollowerPosX2", FollowerPosX2)
	fiss.saveFloat("FISS_FollowerPosXScript2", Follower2Script.X)
	fiss.saveInt("FISS_FollowerPosY2", FollowerPosY2)
	fiss.saveFloat("FISS_FollowerPosYScript2", Follower2Script.Y)
	fiss.saveInt("FISS_FollowerAlpha2", FollowerAlpha2)
	fiss.saveFloat("FISS_FollowerAlphaScript2", Follower2Script.Alpha)
	fiss.saveInt("FISS_FollowerScale2", FollowerScale2)
	fiss.saveInt("FISS_FollowerScaleScript2", Follower2Script.Size)
	fiss.saveInt("FISS_FollowerWidget3", FollowerWidget3)
	fiss.saveBool("FISS_FollowerWidgetScript3", Follower3Script.Visible)
	fiss.saveInt("FISS_FollowerPosX3", FollowerPosX3)
	fiss.saveFloat("FISS_FollowerPosXScript3", Follower3Script.X)
	fiss.saveInt("FISS_FollowerPosY3", FollowerPosY3)
	fiss.saveFloat("FISS_FollowerPosYScript3", Follower3Script.Y)
	fiss.saveInt("FISS_FollowerAlpha3", FollowerAlpha3)
	fiss.saveFloat("FISS_FollowerAlphaScript3", Follower3Script.Alpha)
	fiss.saveInt("FISS_FollowerScale3", FollowerScale3)
	fiss.saveInt("FISS_FollowerScaleScript3", Follower3Script.Size)
	fiss.saveInt("FISS_FollowerWidget4", FollowerWidget4)
	fiss.saveBool("FISS_FollowerWidgetScript4", Follower4Script.Visible)
	fiss.saveInt("FISS_FollowerPosX4", FollowerPosX4)
	fiss.saveFloat("FISS_FollowerPosXScript4", Follower4Script.X)
	fiss.saveInt("FISS_FollowerPosY4", FollowerPosY4)
	fiss.saveFloat("FISS_FollowerPosYScript4", Follower4Script.Y)
	fiss.saveInt("FISS_FollowerAlpha4", FollowerAlpha4)
	fiss.saveFloat("FISS_FollowerAlphaScript4", Follower4Script.Alpha)
	fiss.saveInt("FISS_FollowerScale4", FollowerScale4)
	fiss.saveInt("FISS_FollowerScaleScript4", Follower4Script.Size)
	fiss.saveInt("FISS_FollowerWidget5", FollowerWidget5)
	fiss.saveBool("FISS_FollowerWidgetScript5", Follower5Script.Visible)
	fiss.saveInt("FISS_FollowerPosX5", FollowerPosX5)
	fiss.saveFloat("FISS_FollowerPosXScript5", Follower5Script.X)
	fiss.saveInt("FISS_FollowerPosY5", FollowerPosY5)
	fiss.saveFloat("FISS_FollowerPosYScript5", Follower5Script.Y)
	fiss.saveInt("FISS_FollowerAlpha5", FollowerAlpha5)
	fiss.saveFloat("FISS_FollowerAlphaScript5", Follower5Script.Alpha)
	fiss.saveInt("FISS_FollowerScale5", FollowerScale5)
	fiss.saveInt("FISS_FollowerScaleScript5", Follower5Script.Size)	
	
	String saveResult = fiss.endSave()
	
EndFunction	