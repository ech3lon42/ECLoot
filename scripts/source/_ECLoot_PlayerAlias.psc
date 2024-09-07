ScriptName _ECLoot_PlayerAlias Extends ReferenceAlias

import CommonECUtil
import JsonUtil

;https://github.com/SilverIce/JContainers/blob/develop/JC.md

Form[] property currentItems Auto
;Armor[] property pantsEquippedPlayer Auto
;Armor[] property pantsEquippedTarget Auto
Armor[] property rings Auto
Armor[] property amulets Auto
Armor[] property circlets Auto
Armor[] property gloves Auto
Armor[] property boots Auto
Armor[] property hairs Auto
Armor[] property chests Auto
Armor[] property earrings Auto
Armor[] property pants Auto
Armor[] property unk1 Auto
Armor[] property unk2 Auto
Armor[] property unk3 Auto
Armor[] property unk4 Auto
Armor[] property unk5 Auto
Armor[] property unk6 Auto
Armor[] property unk7 Auto
Armor[] property unk8 Auto
Armor[] property rings2 Auto
Armor[] property amulets2 Auto
Armor[] property circlets2 Auto
Armor[] property gloves2 Auto
Armor[] property boots2 Auto
Armor[] property hairs2 Auto
Armor[] property chests2 Auto
Armor[] property earrings2 Auto
Armor[] property pants2 Auto
Armor[] property unk12 Auto
Armor[] property unk22 Auto
Armor[] property unk32 Auto
Armor[] property unk42 Auto
Armor[] property unk52 Auto
Armor[] property unk62 Auto
Armor[] property unk72 Auto
Armor[] property unk82 Auto
Armor[] property rings3 Auto
Armor[] property amulets3 Auto
Armor[] property circlets3 Auto
Armor[] property gloves3 Auto
Armor[] property boots3 Auto
Armor[] property hairs3 Auto
Armor[] property chests3 Auto
Armor[] property earrings3 Auto
Armor[] property pants3 Auto
Armor[] property unk13 Auto
Armor[] property unk23 Auto
Armor[] property unk33 Auto
Armor[] property unk43 Auto
Armor[] property unk53 Auto
Armor[] property unk63 Auto
Armor[] property unk73 Auto
Armor[] property unk83 Auto
Armor property lastEquippedItem Auto
Actor property PlayerRef Auto
GlobalVariable property _ECL_SaveOutfitHotkey auto

bool setupComplete = false
bool setupRunning = false
bool isDisabled = false
bool affectCrosshair = false
bool affectMark = false
bool isModifierKeyDown = false
bool isModifierKey2Down = false
bool isModifierKey3Down = false
bool isExtraMode = false
bool isEquipModeOutfit = true
bool isFavoritesMode = false

int[] count
int[] index
int[] favindex
String[] name
String[] modeDescriptions
int[] selection1
int[] selection2
int[] selection3

int typeRing = 0
int typeAmulet = 1
int typeCirclet = 2
int typeGlove = 3
int typeBoots = 4
int typeHair = 5
int typeChest = 6
int typeEarring = 7
int typePants = 8
int typeUnk1 = 9
int typeUnk2 = 10
int typeUnk3 = 11
int typeUnk4 = 12
int typeUnk5 = 13
int typeUnk6 = 14
int typeUnk7 = 15
int typeUnk8 = 16

int[] slotmasksRing
int[] slotmasksAmulet
int[] slotmasksCirclet
int[] slotmasksGlove
int[] slotmasksBoots
int[] slotmasksHair
int[] slotmasksChest
int[] slotmasksEarring
int[] slotmasksPants
int[] slotmasksShield
int[] slotmasksUnk1
int[] slotmasksUnk2
int[] slotmasksUnk3
int[] slotmasksUnk4
int[] slotmasksUnk5
int[] slotmasksUnk6
int[] slotmasksUnk7
int[] slotmasksUnk8


int loadedItems = 0
int totalItems = 0
int totalItemsArmor = 0
int totalItemsIndoors = 0
int totalItemsSexy = 0

int array1Max = 127
int array2Max = 254
int array3Max = 381

int fileIndex = 0
int fileIndexIndoors = 0
int fileIndexArmor = 0
int fileIndexSexy = 0

int totalFiles = 0
int totalFilesArmor = 0
int totalFilesSexy = 0
int totalFilesIndoors = 0

string folder = "../../../ECLootSavedOutfits/"
string folderIndoors = "../../../ECLootSavedOutfits/indoors/"
string folderSexy = "../../../ECLootSavedOutfits/sexy/"
string folderArmor = "../../../ECLootSavedOutfits/armor/"

Actor crosshairRef = None
Actor markRef = None

;int miscIndex = 0
;int circletIndex = 0
int menuMode = 1
int numModes = 6

function resetAll()
    setupComplete = false
    setupRunning = false
    setupSlotmasks()
    count = new int[128]
    index = new int[128]
    name = new String[128]
    modeDescriptions = new String[128]
    selection1 = new int[128]
    selection2 = new int[128]
    selection3 = new int[128]
    rings = new Armor[128]
    amulets = new Armor[128]
    circlets = new Armor[128]
    gloves = new Armor[128]
    boots = new Armor[128]
	hairs = new Armor[128]
    chests = new Armor[128]
    earrings = new Armor[128]
    pants = new Armor[128]
    unk1 = new Armor[128]
    unk2 = new Armor[128]
    unk3 = new Armor[128]
    unk4 = new Armor[128]
    unk5 = new Armor[128]
    unk6 = new Armor[128]
    unk7 = new Armor[128]
    unk8 = new Armor[128]
    rings2 = new Armor[128]
    amulets2 = new Armor[128]
    circlets2 = new Armor[128]
    gloves2 = new Armor[128]
    boots2 = new Armor[128]
    hairs2 = new Armor[128]
    chests2 = new Armor[128]
    earrings2 = new Armor[128]
    pants2 = new Armor[128]
    unk12 = new Armor[128]
    unk22 = new Armor[128]
    unk32 = new Armor[128]
    unk42 = new Armor[128]
    unk52 = new Armor[128]
    unk62 = new Armor[128]
    unk72 = new Armor[128]
    unk82 = new Armor[128]
    rings3 = new Armor[128]
    amulets3 = new Armor[128]
    circlets3 = new Armor[128]
    gloves3 = new Armor[128]
    boots3 = new Armor[128]
    hairs3 = new Armor[128]
    chests3 = new Armor[128]
    earrings3 = new Armor[128]
    pants3 = new Armor[128]
    unk13 = new Armor[128]
    unk23 = new Armor[128]
    unk33 = new Armor[128]
    unk43 = new Armor[128]
    unk53 = new Armor[128]
    unk63 = new Armor[128]
    unk73 = new Armor[128]
    unk83 = new Armor[128]
    lastEquippedItem = none
    index[typeRing] = 0
    index[typeAmulet] = 0
    index[typeCirclet] = 0
    index[typeGlove] = 0
    index[typeBoots] = 0
	index[typeHair] = 0
    index[typeChest] = 0
    index[typeEarring] = 0
    index[typePants] = 0
    index[typeUnk1] = 0
    index[typeUnk2] = 0
    index[typeUnk3] = 0
    index[typeUnk4] = 0
    index[typeUnk5] = 0
    index[typeUnk6] = 0
    index[typeUnk7] = 0
    index[typeUnk8] = 0
    favindex[typeRing] = 0
    favindex[typeAmulet] = 0
    favindex[typeCirclet] = 0
    favindex[typeGlove] = 0
    favindex[typeBoots] = 0
	favindex[typeHair] = 0
    favindex[typeChest] = 0
    favindex[typeEarring] = 0
    favindex[typePants] = 0
    favindex[typeUnk1] = 0
    favindex[typeUnk2] = 0
    favindex[typeUnk3] = 0
    favindex[typeUnk4] = 0
    favindex[typeUnk5] = 0
    favindex[typeUnk6] = 0
    favindex[typeUnk7] = 0
    favindex[typeUnk8] = 0
    count[typeRing] = 0
    count[typeAmulet] = 0
    count[typeCirclet] = 0
    count[typeGlove] = 0
    count[typeBoots] = 0
    count[typeHair] = 0
    count[typeChest] = 0
    count[typeEarring] = 0
    count[typePants] = 0
    count[typeUnk1] = 0
    count[typeUnk2] = 0
    count[typeUnk3] = 0
    count[typeUnk4] = 0
    count[typeUnk5] = 0
    count[typeUnk6] = 0
    count[typeUnk7] = 0
    count[typeUnk8] = 0
    name[0]  = "Ring"
    name[1]  = "Amulet"
    name[2]  = "Circlet"
    name[3]  = "Glove"
    name[4]  = "Boots"
    name[5]  = "Hair"
    name[6]  = "Chest"
    name[7]  = "Earring"
    name[8]  = "Pants"
    name[9]  = "Unk1"
    name[10] = "Unk2"
    name[11] = "Unk3"
    name[12] = "Unk4"
    name[13] = "Unk5"
    name[14] = "Unk6"
    name[15] = "Unk7"
    name[16] = "Unk8"

    modeDescriptions[0] = "Chest (7,9), Gloves (4,6), Boots (1,3)"
    modeDescriptions[1] = "Hair (7,9), Amulet (4,6), Earrings (1,3)"
    modeDescriptions[2] = "Ring (7,9), Circlet (4,6), Pants (1,3)"
    modeDescriptions[3] = "Unk1 (7,9), Unk2 (4,6), Unk3 (1,3)"
    modeDescriptions[4] = "Unk4 (7,9), Unk5 (4,6), Unk6 (1,3)"
    modeDescriptions[5] = "Unk7 (7,9), Unk8 (4,6)"

endfunction

function setupSlotmasks()
    trace("Setting up Slotmasks")
    slotmasksRing = new int[20]
    slotmasksAmulet = new int[20]
    slotmasksCirclet = new int[20]
    slotmasksGlove = new int[20]
    slotmasksBoots = new int[20]
    slotmasksHair = new int[20]
    slotmasksChest = new int[20]
    slotmasksEarring = new int[20]
    slotmasksPants = new int[20]
    slotmasksShield = new int[20]
    slotmasksUnk1 = new int[20]
    slotmasksUnk2 = new int[20]
    slotmasksUnk3 = new int[20]
    slotmasksUnk4 = new int[20]
    slotmasksUnk5 = new int[20]
    slotmasksUnk6 = new int[20]
    slotmasksUnk7 = new int[20]
    slotmasksUnk8 = new int[20]

    slotmasksRing[0] = 0x00000040
    slotmasksRing[1] = Armor.GetMaskForSlot(60)
    slotmasksAmulet[0] = 0x00000020
    slotmasksCirclet[0] = 0x00001000
    slotmasksGlove[0] = 0x00000008
    slotmasksBoots[0] = 0x00000080
    slotmasksHair[0] = Armor.GetMaskForSlot(31)
    slotmasksChest[0] = Armor.GetMaskForSlot(32)
    slotmasksChest[1] = Armor.GetMaskForSlot(52)
    slotmasksChest[2] = 0x00000004 + 0x00400000 
    slotmasksEarring[0] = Armor.GetMaskForSlot(43)
    slotmasksEarring[1] = Armor.GetMaskForSlot(45)
    slotmasksEarring[2] = Armor.GetMaskForSlot(55)
    slotmasksPants[0] = 0x00000200
    slotmasksShield[0] = 0x00000200
    slotmasksUnk1[0] = 0x00008000
    slotmasksUnk2[0] = 0x00010000
    slotmasksUnk3[0] = 0x00040000
    slotmasksUnk4[0] = 0x00080000
    slotmasksUnk5[0] = 0x00400000
    slotmasksUnk6[0] = 0x04000000
    slotmasksUnk7[0] = 0x08000000
    slotmasksUnk8[0] = 0x40000000
endfunction

bool function isSlotmaskOfType(int islotmask, int itype)
    if (itype == typeRing)
        if (slotmasksRing[0] == islotmask || slotmasksRing[1] == islotmask)
            return true
        endif
    elseif (itype == typeAmulet)
        if (slotmasksAmulet[0] == islotmask)
            return true
        endif
    elseif (itype == typeCirclet)
        if (slotmasksCirclet[0] == islotmask)
            return true
        endif
    elseif (itype == typeGlove)
        if (slotmasksGlove[0] == islotmask)
            return true
        endif
    elseif (itype == typeBoots)
        if (slotmasksBoots[0] == islotmask)
            return true
        endif
    elseif (itype == typeHair)
        if (slotmasksHair[0] == islotmask)
            return true
        endif
    elseif (itype == typeChest)
        if (slotmasksChest[0] == islotmask || slotmasksChest[1] == islotmask || slotmasksChest[2] == islotmask)
            return true
        endif
    elseif (itype == typeEarring)
        if (slotmasksEarring[0] == islotmask || slotmasksEarring[1] == islotmask || slotmasksEarring[2] == islotmask)
            return true
        endif
    elseif (itype == typePants)
        if (slotmasksPants[0] == islotmask)
            return true
        endif
    elseif (itype == typeUnk1)
        if (slotmasksUnk1[0] == islotmask)
            return true
        endif
    elseif (itype == typeUnk2)
        if (slotmasksUnk2[0] == islotmask)
            return true
        endif
    elseif (itype == typeUnk3)
        if (slotmasksUnk3[0] == islotmask)
            return true
        endif
    elseif (itype == typeUnk4)
        if (slotmasksUnk4[0] == islotmask)
            return true
        endif
    elseif (itype == typeUnk5)
        if (slotmasksUnk5[0] == islotmask)
            return true
        endif
    elseif (itype == typeUnk6)
        if (slotmasksUnk6[0] == islotmask)
            return true
        endif
    elseif (itype == typeUnk7)
        if (slotmasksUnk7[0] == islotmask)
            return true
        endif
    elseif (itype == typeUnk8)
        if (slotmasksUnk8[0] == islotmask)
            return true
        endif
    endif

    return false
endfunction

bool function isGlove(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeGlove)) ; Gloves
        return True
    endif
    return False
endfunction

bool function isBoots(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeBoots)) ; Boots
        return True
    endif
    return False
endfunction

bool function isHair(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeHair)) ; Hairs
        return True
    endif
    return False
endfunction

bool function isChest(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeChest)) ; Chests
        return True
    endif
    return False
endfunction

bool function isAmulet(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeChest)) ; Amulets
        return True
    endif
    return False
endfunction

bool function isRing(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeRing)) ; Rings
        return True
    endif
    return False
endfunction

bool function isCirclet(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeCirclet)) ; Circlets
        return True
    endif
    return False
endfunction

bool function isEarring(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeEarring)) ; Earrings
        return True
    endif
    return False
endfunction

bool function isUnk1(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeUnk1)) ; Unk1
        return True
    endif
    return False
endfunction

bool function isUnk2(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeUnk2)) ; Unk2
        return True
    endif
    return False
endfunction

bool function isUnk3(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeUnk3)) ; Unk3
        return True
    endif
    return False
endfunction

bool function isUnk4(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeUnk4)) ; Unk4
        return True
    endif
    return False
endfunction

bool function isUnk5(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeUnk5)) ; Unk5
        return True
    endif
    return False
endfunction

bool function isUnk6(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeUnk6)) ; Unk6
        return True
    endif
    return False
endfunction

bool function isUnk7(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeUnk7)) ; Unk7
        return True
    endif
    return False
endfunction

bool function isUnk8(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    int slotmask = item.GetSlotMask()
    trace("item " + item.GetName() + " has slotmask: " + slotmask)
    if (isSlotmaskOfType(slotmask, typeUnk8)) ; Unk8
        return True
    endif
    return False
endfunction

bool function isPants(Armor item)
    if (item == none)
        trace("Armor item was none")
        return False
    endif
    
    String itemname = item.GetName()
    bool found = false
    if (StringUtil.Find(itemname, "pants", 0) >= 0)
        found = True
    elseif (StringUtil.Find(itemname, "panties", 0) >= 0)
        found = True
    elseif (StringUtil.Find(itemname, "panty", 0) >= 0)
        found = True
    elseif (StringUtil.Find(itemname, "thong", 0) >= 0)
        found = True
    endif

    if found 
        trace("item " + item.GetName() + " matched name search for pants.")
        return True
    endif
    
    return False
endfunction

;circlet 42
;random ring=36 or 60, amulet 35, boots 37 or 38, gloves 33 or 34, 
; misc 45 (e.g. gorget), 
function setupRandomEquip()
    log("Running Setup")
    setupRunning = true
    setupSlotmasks()
    count = new int[128]
    index = new int[128]
    favindex = new int[128]
    name = new String[128]
    selection1 = new int[128]
    selection2 = new int[128]
    selection3 = new int[128]
    modeDescriptions = new String[128]
    rings = new Armor[128]
    amulets = new Armor[128]
    circlets = new Armor[128]
    gloves = new Armor[128]
    boots = new Armor[128]
    hairs = new Armor[128]
    chests = new Armor[128]
    earrings = new Armor[128]
    pants = new Armor[128]
    unk1 = new Armor[128]
    unk2 = new Armor[128]
    unk3 = new Armor[128]
    unk4 = new Armor[128]
    unk5 = new Armor[128]
    unk6 = new Armor[128]
    unk7 = new Armor[128]
    unk8 = new Armor[128]
    rings2 = new Armor[128]
    amulets2 = new Armor[128]
    circlets2 = new Armor[128]
    gloves2 = new Armor[128]
    boots2 = new Armor[128]
    hairs2 = new Armor[128]
    chests2 = new Armor[128]
    earrings2 = new Armor[128]
    pants2 = new Armor[128]
    unk12 = new Armor[128]
    unk22 = new Armor[128]
    unk32 = new Armor[128]
    unk42 = new Armor[128]
    unk52 = new Armor[128]
    unk62 = new Armor[128]
    unk72 = new Armor[128]
    unk82 = new Armor[128]
    rings3 = new Armor[128]
    amulets3 = new Armor[128]
    circlets3 = new Armor[128]
    gloves3 = new Armor[128]
    boots3 = new Armor[128]
    hairs3 = new Armor[128]
    chests3 = new Armor[128]
    earrings3 = new Armor[128]
    pants3 = new Armor[128]
    unk13 = new Armor[128]
    unk23 = new Armor[128]
    unk33 = new Armor[128]
    unk43 = new Armor[128]
    unk53 = new Armor[128]
    unk63 = new Armor[128]
    unk73 = new Armor[128]
    unk83 = new Armor[128]
    lastEquippedItem = none
    int numItems = PlayerRef.GetNumItems()
    ;log("Player ItemCount " + numItems)
    int i = 0
    Form item
    Armor armorItem
    int slotmask = 0


    name[0]  = "Ring"
    name[1]  = "Amulet"
    name[2]  = "Circlet"
    name[3]  = "Glove"
    name[4]  = "Boots"
    name[5]  = "Hair"
    name[6]  = "Chest"
    name[7]  = "Earring"
    name[8]  = "Pants"
    name[9]  = "Unk1"
    name[10] = "Unk2"
    name[11] = "Unk3"
    name[12] = "Unk4"
    name[13] = "Unk5"
    name[14] = "Unk6"
    name[15] = "Unk7"
    name[16] = "Unk8"

    modeDescriptions[0] = "Chest (7,9), Gloves (4,6), Boots (1,3)"
    modeDescriptions[1] = "Hair (7,9), Amulet (4,6), Earrings (1,3)"
    modeDescriptions[2] = "Ring (7,9), Circlet (4,6), Pants (1,3)"
    modeDescriptions[3] = "Unk1 (7,9), Unk2 (4,6), Unk3 (1,3)"
    modeDescriptions[4] = "Unk4 (7,9), Unk5 (4,6), Unk6 (1,3)"
    modeDescriptions[5] = "Unk7 (7,9), Unk8 (4,6)"


    totalItems = numItems
    while i < numItems
        item = PlayerRef.GetNthForm(i)
        armorItem = item as Armor
        slotmask = 0

        loadedItems = i

        if !IsNone(armorItem)
            slotmask = armorItem.GetSlotMask()
            trace("item " + item.GetName() + " has slotmask: " + slotmask)
            if (isSlotmaskOfType(slotmask, typeGlove)) ; Gloves
                trace("item " + item.GetName() + " matched slot mask of type glove.")
                If count[typeGlove] < array1Max
                    gloves[count[typeGlove]] = armorItem
                    trace("Set Armor Item " + item.GetName() + " in array gloves[ " + count[typeGlove] + "]. Result: " + gloves[count[typeGlove]].GetName())
                    count[typeGlove] = count[typeGlove] + 1
                elseif count[typeGlove] < array2Max
                    gloves2[count[typeGlove] - array1Max] = armorItem
                    trace("Set Armor Item " + item.GetName() + " in array gloves[ " + count[typeGlove] + "]. Result: " + gloves[count[typeGlove]].GetName())
                    count[typeGlove] = count[typeGlove] + 1
                elseif count[typeGlove] < array3Max
                    gloves3[count[typeGlove] - array2Max] = armorItem
                    trace("Set Armor Item " + item.GetName() + " in array gloves[ " + count[typeGlove] + "]. Result: " + gloves[count[typeGlove]].GetName())
                    count[typeGlove] = count[typeGlove] + 1
                endIf
                
            elseif (isSlotmaskOfType(slotmask, typeBoots)) ; Boots
                trace("item " + item.GetName() + " matched slot mask of type boots.")
                If count[typeBoots] < array1Max
                    boots[count[typeBoots]] = armorItem
                    count[typeBoots] = count[typeBoots] + 1
                elseif count[typeBoots] < array2Max
                    boots2[count[typeBoots] - array1Max] = armorItem
                    count[typeBoots] = count[typeBoots] + 1
                elseif count[typeBoots] < array3Max
                    boots3[count[typeBoots] - array2Max] = armorItem
                    count[typeBoots] = count[typeBoots] + 1
                endIf
				
            elseif (isSlotmaskOfType(slotmask, typeHair)) ; hair
                trace("item " + item.GetName() + " matched slot mask of type hair.")
                If count[typeHair] < array1Max
                    hairs[count[typeHair]] = armorItem
                    count[typeHair] = count[typeHair] + 1
                elseif count[typeHair] < array2Max
                    hairs2[count[typeHair] - array1Max] = armorItem
                    count[typeHair] = count[typeHair] + 1
                elseif count[typeHair] < array3Max
                    hairs3[count[typeHair] - array2Max] = armorItem
                    count[typeHair] = count[typeHair] + 1
                endIf
				
            elseif (isSlotmaskOfType(slotmask, typeChest)) ; chests
                trace("item " + item.GetName() + " matched slot mask of type chest.")
                If count[typeChest] < array1Max
                    chests[count[typeChest]] = armorItem
                    count[typeChest] = count[typeChest] + 1
                elseif count[typeChest] < array2Max
                    chests2[count[typeChest] - array1Max] = armorItem
                    count[typeChest] = count[typeChest] + 1
                elseif count[typeChest] < array3Max
                    chests3[count[typeChest] - array2Max] = armorItem
                    count[typeChest] = count[typeChest] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeAmulet)) ; amulets
                trace("item " + item.GetName() + " matched slot mask of type amulet.")
                If count[typeAmulet] < array1Max
                    amulets[count[typeAmulet]] = armorItem
                    count[typeAmulet] = count[typeAmulet] + 1
                elseif count[typeAmulet] < array2Max
                    amulets2[count[typeAmulet] - array1Max] = armorItem
                    count[typeAmulet] = count[typeAmulet] + 1
                elseif count[typeAmulet] < array3Max
                    amulets3[count[typeAmulet] - array2Max] = armorItem
                    count[typeAmulet] = count[typeAmulet] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeRing)) ; rings
                trace("item " + item.GetName() + " matched slot mask of type ring.")
                If count[typeRing] < array1Max
                    rings[count[typeRing]] = armorItem
                    count[typeRing] = count[typeRing] + 1
                elseif count[typeRing] < array2Max
                    rings2[count[typeRing] - array1Max] = armorItem
                    count[typeRing] = count[typeRing] + 1
                elseif count[typeRing] < array3Max
                    rings3[count[typeRing] - array2Max] = armorItem
                    count[typeRing] = count[typeRing] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeCirclet)) ; circlets
                trace("item " + item.GetName() + " matched slot mask of type circlet.")
                If count[typeCirclet] < array1Max
                    circlets[count[typeCirclet]] = armorItem
                    count[typeCirclet] = count[typeCirclet] + 1
                elseif count[typeCirclet] < array2Max
                    circlets2[count[typeCirclet] - array1Max] = armorItem
                    count[typeCirclet] = count[typeCirclet] + 1
                elseif count[typeCirclet] < array3Max
                    circlets3[count[typeCirclet] - array2Max] = armorItem
                    count[typeCirclet] = count[typeCirclet] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeEarring)) ; earrings
                trace("item " + item.GetName() + " matched slot mask of type earring.")
                If count[typeEarring] < array1Max
                    earrings[count[typeEarring]] = armorItem
                    count[typeEarring] = count[typeEarring] + 1
                elseif count[typeEarring] < array2Max
                    earrings2[count[typeEarring] - array1Max] = armorItem
                    count[typeEarring] = count[typeEarring] + 1
                elseif count[typeEarring] < array3Max
                    earrings3[count[typeEarring] - array2Max] = armorItem
                    count[typeEarring] = count[typeEarring] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeUnk1)) ; unk1
                trace("item " + item.GetName() + " matched slot mask of type unk1.")
                If count[typeUnk1] < array1Max
                    unk1[count[typeUnk1]] = armorItem
                    count[typeUnk1] = count[typeUnk1] + 1
                elseif count[typeUnk1] < array2Max
                    unk12[count[typeUnk1] - array1Max] = armorItem
                    count[typeUnk1] = count[typeUnk1] + 1
                elseif count[typeUnk1] < array3Max
                    unk13[count[typeUnk1] - array2Max] = armorItem
                    count[typeUnk1] = count[typeUnk1] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeUnk2)) ; unk2
                trace("item " + item.GetName() + " matched slot mask of type unk2.")
                If count[typeUnk2] < array1Max
                    unk2[count[typeUnk2]] = armorItem
                    count[typeUnk2] = count[typeUnk2] + 1
                elseif count[typeUnk2] < array2Max
                    unk22[count[typeUnk2] - array1Max] = armorItem
                    count[typeUnk2] = count[typeUnk2] + 1
                elseif count[typeUnk2] < array3Max
                    unk23[count[typeUnk2] - array2Max] = armorItem
                    count[typeUnk2] = count[typeUnk2] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeUnk3)) ; unk3
                trace("item " + item.GetName() + " matched slot mask of type unk3.")
                If count[typeUnk3] < array1Max
                    unk3[count[typeUnk3]] = armorItem
                    count[typeUnk3] = count[typeUnk3] + 1
                elseif count[typeUnk3] < array2Max
                    unk32[count[typeUnk3] - array1Max] = armorItem
                    count[typeUnk3] = count[typeUnk3] + 1
                elseif count[typeUnk3] < array3Max
                    unk33[count[typeUnk3] - array2Max] = armorItem
                    count[typeUnk3] = count[typeUnk3] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeUnk4)) ; unk4
                trace("item " + item.GetName() + " matched slot mask of type unk4.")
                If count[typeUnk4] < array1Max
                    unk4[count[typeUnk4]] = armorItem
                    count[typeUnk4] = count[typeUnk4] + 1
                elseif count[typeUnk4] < array2Max
                    unk42[count[typeUnk4] - array1Max] = armorItem
                    count[typeUnk4] = count[typeUnk4] + 1
                elseif count[typeUnk4] < array3Max
                    unk43[count[typeUnk4] - array2Max] = armorItem
                    count[typeUnk4] = count[typeUnk4] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeUnk5)) ; unk5
                trace("item " + item.GetName() + " matched slot mask of type unk5.")
                If count[typeUnk5] < array1Max
                    unk5[count[typeUnk5]] = armorItem
                    count[typeUnk5] = count[typeUnk5] + 1
                elseif count[typeUnk5] < array2Max
                    unk52[count[typeUnk5] - array1Max] = armorItem
                    count[typeUnk5] = count[typeUnk5] + 1
                elseif count[typeUnk5] < array3Max
                    unk53[count[typeUnk5] - array2Max] = armorItem
                    count[typeUnk5] = count[typeUnk5] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeUnk6)) ; unk6
                trace("item " + item.GetName() + " matched slot mask of type unk6.")
                If count[typeUnk6] < array1Max
                    unk6[count[typeUnk6]] = armorItem
                    count[typeUnk6] = count[typeUnk6] + 1
                elseif count[typeUnk6] < array2Max
                    unk62[count[typeUnk6] - array1Max] = armorItem
                    count[typeUnk6] = count[typeUnk6] + 1
                elseif count[typeUnk6] < array3Max
                    unk63[count[typeUnk6] - array2Max] = armorItem
                    count[typeUnk6] = count[typeUnk6] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeUnk7)) ; unk7
                trace("item " + item.GetName() + " matched slot mask of type unk7.")
                If count[typeUnk7] < array1Max
                    unk7[count[typeUnk7]] = armorItem
                    count[typeUnk7] = count[typeUnk7] + 1
                elseif count[typeUnk7] < array2Max
                    unk72[count[typeUnk7] - array1Max] = armorItem
                    count[typeUnk7] = count[typeUnk7] + 1
                elseif count[typeUnk7] < array3Max
                    unk73[count[typeUnk7] - array2Max] = armorItem
                    count[typeUnk7] = count[typeUnk7] + 1
                endIf

            elseif (isSlotmaskOfType(slotmask, typeUnk8)) ; unk8
                trace("item " + item.GetName() + " matched slot mask of type unk8.")
                If count[typeUnk8] < array1Max
                    unk8[count[typeUnk8]] = armorItem
                    count[typeUnk8] = count[typeUnk8] + 1
                elseif count[typeUnk8] < array2Max
                    unk82[count[typeUnk8] - array1Max] = armorItem
                    count[typeUnk8] = count[typeUnk8] + 1
                elseif count[typeUnk8] < array3Max
                    unk83[count[typeUnk8] - array2Max] = armorItem
                    count[typeUnk8] = count[typeUnk8] + 1
                endIf


            else
                String itemname = armorItem.GetName()
                bool found = false
                if (StringUtil.Find(itemname, "pants", 0) >= 0)
                    found = True
                elseif (StringUtil.Find(itemname, "panties", 0) >= 0)
                    found = True
                elseif (StringUtil.Find(itemname, "panty", 0) >= 0)
                    found = True
                elseif (StringUtil.Find(itemname, "skirt", 0) >= 0)
                    found = True
                 elseif (StringUtil.Find(itemname, "trousers", 0) >= 0)
                    found = True
                endif

                if found 
                    trace("item " + item.GetName() + " matched name search for pants.")
                    If count[typePants] < array1Max
                        pants[count[typePants]] = armorItem
                        count[typePants] = count[typePants] + 1
                    elseif count[typePants] < array2Max
                        pants2[count[typePants] - array1Max] = armorItem
                        count[typePants] = count[typePants] + 1
                    elseif count[typePants] < array3Max
                        pants3[count[typePants] - array2Max] = armorItem
                        count[typePants] = count[typePants] + 1
                    endIf
                endif
            endif
        endif
        i += 1
    endwhile
    setupComplete = true
    setupRunning = false
    log("Random Equip Loaded ( Ha " + count[typeHair] + ", Ch " + count[typeChest] + ", Gl " + count[typeGlove] + ", Bo " + count[typeBoots] + ", Amu " + count[typeAmulet] + ", Ri " +  count[typeRing] + ", Ci " + count[typeCirclet] + ", Ear " + count[typeEarring] + ", Pa " + count[typePants] + ")")
    log("Extras Loaded (" + count[typeUnk1] + ", " + count[typeUnk2] + ", " + count[typeUnk3] + ", " + count[typeUnk4] + ", " +  count[typeUnk5] + ", " + count[typeUnk6] + ", " + count[typeUnk7] + ", " + count[typeUnk8] + ")")
    log("Setup Finished.")
    trace("Num Hairs: " + count[typeHair])
    trace("Num Chests: " + count[typeChest])
    trace("Num Gloves: " + count[typeGlove])
    trace("Num Boots: " + count[typeBoots])
    trace("Num Amulets: " + count[typeAmulet])
    trace("Num Rings: " + count[typeRing])
    trace("Num Circlets: " + count[typeCirclet])
    trace("Num Earrings: " + count[typeEarring])
    trace("Num Pants: " + count[typePants])
    trace("Num Unk1: " + count[typeUnk1])
    trace("Num Unk2: " + count[typeUnk2])
    trace("Num Unk3: " + count[typeUnk3])
    trace("Num Unk4: " + count[typeUnk4])
    trace("Num Unk5: " + count[typeUnk5])
    trace("Num Unk6: " + count[typeUnk6])
    trace("Num Unk7: " + count[typeUnk7])
    trace("Num Unk8: " + count[typeUnk8])
endfunction

Event OnInit()
    if(PlayerRef == none)
        PlayerRef = Game.GetPlayer()
    endif
    RegisterForCrosshairRef()
    if !self.GetOwningQuest().IsRunning()
        self.GetOwningQuest().Start()
        log("Quest started")
    else
        currentItems = new Form[128]
        log("Init")
        if (!setupRunning)
            registerKeys()
            setupRandomEquip()
        endif
        
        ; GetPlayerEquippedItems()
    endif
EndEvent

Event OnPlayerLoadGame()
    if(PlayerRef == none)
        PlayerRef = Game.GetPlayer()
    endif
    RegisterForCrosshairRef()
    currentItems = new Form[128]
    resetAll()
    int saveOutfitHotkey = _ECL_SaveOutfitHotkey.GetValueInt()
    log("Game Loaded")
    if (!setupRunning)
        registerKeys()
        setupRandomEquip()
    endif
    if saveOutfitHotkey != 0
        self.RegisterForKey(saveOutfitHotkey)
    endif
    
    ; GetPlayerEquippedItems()
EndEvent

Event OnCrosshairRefChange(ObjectReference ref)
    crosshairRef = none
    if ref != none
        if ref.GetVoiceType() != none
            crosshairRef = ref as Actor
            ; lastRef = ref as Actor

            trace("Target Actor: "+ crosshairRef.GetActorBase().GetName())
            ; log("Target Actor Base: "+ crosshairRef.GetActorBase().GetName())
        endIf
    endIf
EndEvent

bool function ActorEquipItem(Armor armoritem)
    Actor ref = getCurrentRef()
    if (ref == none)
        trace("getCurrentRef returned none. Aborting equipItem() Call.")
        return false
    else
        trace("getCurrentRef returned " + ref.GetActorBase().GetName())
    endif

    trace("Attempting to equip item " + armoritem.GetName() + " on reference: " + ref.GetActorBase().GetName())
    ref.equipItem(armoritem)

    return true
endfunction

Actor function getCurrentRef()
    if (affectMark)
        return markRef
    elseif (!affectcrosshair)
        return PlayerRef
    elseif (affectCrosshair && crosshairRef != none)
        return crosshairRef
    ; elseif (affectCrosshair && crosshairRef == none && lastRef != none)
    ;     return lastRef
    else
        return none
    endif
endfunction

; int typeRing = 0
; int typeAmulet = 1
; int typeCirclet = 2
; int typeGlove = 3
; int typeBoots = 4
; int typeHair = 5
; int typeChest = 6
; int typeEarring = 7
; int typePants = 8
; int typeUnk1 = 9
; int typeUnk2 = 10
; int typeUnk3 = 11
; int typeUnk4 = 12
; int typeUnk5 = 13
; int typeUnk6 = 14
; int typeUnk7 = 15
; int typeUnk8 = 16
Armor function getArmorOfType(int itemtype, int itemindex)
    if itemtype == typeRing
        if (itemindex < array1Max)
            return rings[itemindex]
        elseif (itemindex < array2Max)
            return rings2[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return rings3[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeAmulet
        if (itemindex < array1Max)
            return amulets[itemindex]
        elseif (itemindex < array2Max)
            return amulets2[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return amulets3[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeCirclet
        if (itemindex < array1Max)
            return circlets[itemindex]
        elseif (itemindex < array2Max)
            return circlets2[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return circlets3[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeGlove
        if (itemindex < array1Max)
            return gloves[itemindex]
        elseif (itemindex < array2Max)
            return gloves2[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return gloves3[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeBoots
        if (itemindex < array1Max)
            return boots[itemindex]
        elseif (itemindex < array2Max)
            return boots2[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return boots3[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeHair
        if (itemindex < array1Max)
            return hairs[itemindex]
        elseif (itemindex < array2Max)
            return hairs2[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return hairs3[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeChest
        if (itemindex < array1Max)
            return chests[itemindex]
        elseif (itemindex < array2Max)
            return chests2[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return chests3[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeEarring
        if (itemindex < array1Max)
            return earrings[itemindex]
        elseif (itemindex < array2Max)
            return earrings2[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return earrings3[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typePants
        if (itemindex < array1Max)
            return pants[itemindex]
        elseif (itemindex < array2Max)
            return pants2[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return pants3[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeUnk1
        if (itemindex < array1Max)
            return unk1[itemindex]
        elseif (itemindex < array2Max)
            return unk12[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return unk13[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeUnk2
        if (itemindex < array1Max)
            return unk2[itemindex]
        elseif (itemindex < array2Max)
            return unk22[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return unk23[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeUnk3
        if (itemindex < array1Max)
            return unk3[itemindex]
        elseif (itemindex < array2Max)
            return unk32[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return unk33[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeUnk4
        if (itemindex < array1Max)
            return unk4[itemindex]
        elseif (itemindex < array2Max)
            return unk42[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return unk43[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeUnk5
        if (itemindex < array1Max)
            return unk5[itemindex]
        elseif (itemindex < array2Max)
            return unk52[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return unk53[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeUnk6
        if (itemindex < array1Max)
            return unk6[itemindex]
        elseif (itemindex < array2Max)
            return unk62[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return unk63[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeUnk7
        if (itemindex < array1Max)
            return unk7[itemindex]
        elseif (itemindex < array2Max)
            return unk72[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return unk73[itemindex - array2Max]
        else
            return none
        endif
    elseif itemtype == typeUnk8
        if (itemindex < array1Max)
            return unk8[itemindex]
        elseif (itemindex < array2Max)
            return unk82[itemindex - array1Max]
        elseif (itemindex < array3Max)
            return unk83[itemindex - array2Max]
        else
            return none
        endif
    else 
        return none
    endif
endfunction

function EquipNext(int itype)
    trace("EquipNext() was called for itype " + itype + " (" + name[itype] + ")")
    if (!setupComplete)
        trace("Still waiting on Setup, Return from EquipNext().")
        return
    endif

    if (isFavoritesMode)
        EquipNextFromFavorites(itype)
    else
        EquipNextFromInventory(itype)
    endif
endfunction

function EquipNextFromFavorites(int itype)
    trace("Equip next from Favorites with itype " + itype + " (" + name[itype] + ")")
    int numFavorites = CountFavorites(itype)
    trace("Found " + numFavorites + " Favorites for itype " + itype)
    if (numFavorites <= 0)
        trace("No Favorites found for itype " + itype)
        return
    endif
    
    trace("Current index for itype " + itype + " is " + favindex[itype])
    ; increment favindex for itype
    favindex[itype] = favindex[itype] + 1
    ; if new index is larger than numFavorites - 1 then reset to 0
    if (favindex[itype] > (numFavorites - 1))
        favindex[itype] = 0
    endif
    
    trace("New index for itype " + itype + " is " + favindex[itype])
    ; get the form at that index from FormList
    Armor favArmor = GetFavoriteFormAtIndex(favindex[itype], itype) as Armor
    if (favArmor == none)
        trace("Could not get Favorite Armor for " + itype + " at index " + favindex[itype])
        return
    endif
    
    trace("Now equipping Favorite Armor " + favArmor.GetName())
    
    if (!ActorEquipItem(favArmor))
        trace("Failed to equip item (" + favArmor.GetName())
    else
        trace("Equipped Favorite Armor " + favArmor.GetName())
        lastEquippedItem = favArmor
        trace("Set lastEquippedItem to " + favArmor.GetName())
    endif
endfunction

function EquipNextFromInventory(int itype)
    int priorIndex = index[itype]
    trace("prior index is " + priorIndex)
    trace("count[itype] is " + count[itype])
    if count[itype] > 0
        index[itype] = index[itype] + 1
        trace("index[itype] is " + index[itype])
        if index[itype] >= count[itype]
            index[itype] = 0
            trace("set index[itype] to 0")
        endif
        ;log("Equipping " + name[itype] + ": " + gloveIndex)
        trace("Getting armor for itype " + itype + " and index[itype] " + index[itype])
        Armor item = getArmorOfType(itype, index[itype])
        if (item == none)
            trace("Armor item was none")
            return
        else
            trace("Armor item set to " + item.GetName())
        endif

        trace("Calling ActorEquipItem for item " + item.GetName())
        
        if (!ActorEquipItem(item))
            trace("Failed to equip item (" + item.GetName() + ", setting index[itype] (" + index[itype] + ") to priorindex (" + priorIndex + ")")
            index[itype] = priorIndex
        else
            trace("Equipped Item name[itype] (" + name[itype] + "), index[itype] (" + index[itype] + "), count[itype] (" + count[itype] + "), item (" + item.GetName() + ")")
            lastEquippedItem = item
            trace("Set lastEquippedItem to " + item.GetName())
            ; PrintNotification(name[itype], index[itype], count[itype], item)
        endif
    endif
endfunction

function EquipPrev(int itype)
    trace("EquipPrev() was called for itype " + itype + " (" + name[itype] + ")")
    if (!setupComplete)
        trace("Still waiting on Setup, Return from EquipPrev().")
        return
    endif
    
    if (isFavoritesMode)
        EquipPrevFromFavorites(itype)
    else
        EquipPrevFromInventory(itype)
    endif
endfunction

function EquipPrevFromFavorites(int itype)
    ; favindex[itype]
    trace("Equip prev from Favorites with itype " + itype + " (" + name[itype] + ")")
    int numFavorites = CountFavorites(itype)
    trace("Found " + numFavorites + " Favorites for itype " + itype)
    if (numFavorites <= 0)
        trace("No Favorites found for itype " + itype)
        return
    endif
    
    trace("Current index for itype " + itype + " is " + favindex[itype])
    ; decrement favindex for itype
    favindex[itype] = favindex[itype] - 1
    ; if new index is negative number then reset to max (i.e. numFavorites - 1)
    if (favindex[itype] < 0)
        favindex[itype] = numFavorites - 1
    endif
    
    trace("New index for itype " + itype + " is " + favindex[itype])
    ; get the form at that index from FormList
    Armor favArmor = GetFavoriteFormAtIndex(favindex[itype], itype) as Armor
    if (favArmor == none)
        trace("Could not get Favorite Armor for " + itype + " at index " + favindex[itype])
        return
    endif
    
    trace("Now equipping Favorite Armor " + favArmor.GetName())
    
    if (!ActorEquipItem(favArmor))
        trace("Failed to equip item (" + favArmor.GetName())
    else
        trace("Equipped Favorite Armor " + favArmor.GetName())
        lastEquippedItem = favArmor
        trace("Set lastEquippedItem to " + favArmor.GetName())
    endif
endfunction

function EquipPrevFromInventory(int itype)
    int priorIndex = index[itype]
    trace("prior index is " + priorIndex)
    trace("count[itype] is " + count[itype])
    if count[itype] > 0
        index[itype] = index[itype] - 1
        trace("index[itype] is " + index[itype])
        if index[itype] < 0
            index[itype] = count[itype] - 1
            trace("set index[itype] to 0")
        endif
        ;log("Equipping " + name[itype] + ": " + gloveIndex)
        trace("Getting armor for itype " + itype + " and index[itype] " + index[itype])
        Armor item = getArmorOfType(itype, index[itype])
        if (item == none)
            trace("Armor item was none")
            return
        else
            trace("Armor item set to " + item.GetName())
        endif

        trace("Calling ActorEquipItem for item " + item.GetName())
        
        if (!ActorEquipItem(item))
            trace("Failed to equip item (" + item.GetName() + ", setting index[itype] (" + index[itype] + ") to priorindex (" + priorIndex + ")")
            index[itype] = priorIndex
        else
            trace("Equipped Item name[itype] (" + name[itype] + "), index[itype] (" + index[itype] + "), count[itype] (" + count[itype] + "), item (" + item.GetName() + ")")
            lastEquippedItem = item
            trace("Set lastEquippedItem to " + item.GetName())
            ; PrintNotification(name[itype], index[itype], count[itype], item)
        endif
    endif
endfunction

Form function GetFavoriteFormAtIndex(int i, int itype)
    if (setupComplete)   
        string filename = "../../../ECLootSavedOutfits/favorites/"
        
        filename = GetFilenameForIType(itype, filename)
        
        if (filename == "")
            return none
        endif
        
        return JsonUtil.FormListGet(filename, "items", i)
    endif
    
    return none
endfunction

int function CountFavorites(int itype)
    if (setupComplete)   
        string filename = "../../../ECLootSavedOutfits/favorites/"
        
        filename = GetFilenameForIType(itype, filename)
        
        if (filename == "")
            return -1
        endif
        
        return JsonUtil.FormListCount(filename, "items")
    endif
    
    return -1
endfunction

function SaveToFile(Armor item, String filename)
    if (item != none)
        if (filename != "")
            JsonUtil.FormListAdd(filename, "items", item, false)
            JsonUtil.Save(filename)
            log("Favorite Saved - " + item.GetName())
        endif
    endif
endfunction

function RemoveFromFile(Armor item, String filename)
    if (item != none)
        if (filename != "")
            JsonUtil.FormListRemove(filename, "items", item, true)
            JsonUtil.Save(filename)
            log("Favorite Removed - " + item.GetName())
        endif
    endif
endfunction

function AddFavorite()
    if (setupComplete)
        if lastEquippedItem != none
            string filename = "../../../ECLootSavedOutfits/favorites/"
            
            filename = GetFilenameForItem(lastEquippedItem, filename)
            SaveToFile(lastEquippedItem, filename)
        endif
    endif
endfunction

function RemoveFavorite()
    if (setupComplete)
        if lastEquippedItem != none
            string filename = "../../../ECLootSavedOutfits/favorites/"
            
            filename = GetFilenameForItem(lastEquippedItem, filename)
            RemoveFromFile(lastEquippedItem, filename)
        endif
    endif
endfunction

String function GetFilenameForItem(Armor item, String filename)
    if (isGlove(item)) ; Gloves
        filename += "gloves"
    elseif (isBoots(item)) ; Boots
        filename += "boots"
    elseif (isHair(item)) ; hair
        filename += "hairs"
    elseif (isChest(item)) ; chests
        filename += "chests"
    elseif (isAmulet(item)) ; amulets
        filename += "amulets"
    elseif (isRing(item)) ; rings
        filename += "rings"
    elseif (isCirclet(item)) ; circlets
        filename += "circlets"
    elseif (isEarring(item)) ; earrings
        filename += "earrings"
    elseif (isUnk1(item)) ; unk1
        filename += "unk1"
    elseif (isUnk2(item)) ; unk2
        filename += "unk2"
    elseif (isUnk3(item)) ; unk3
        filename += "unk3"
    elseif (isUnk4(item)) ; unk4
        filename += "unk4"
    elseif (isUnk5(item)) ; unk5
        filename += "unk5"
    elseif (isUnk6(item)) ; unk6
        filename += "unk6"
    elseif (isUnk7(item)) ; unk7
        filename += "unk7"
    elseif (isUnk8(item)) ; unk8
        filename += "unk8"
    elseif (isPants(item)) ; Pants
        filename += "pants"
    else
        filename += "unknown"
    endif
    
    return filename
endfunction

String function GetFilenameForIType(int itype, string filename)
    if (itype == typeGlove) ; Gloves
        filename += "gloves"
    elseif (itype == typeBoots) ; Boots
        filename += "boots"
    elseif (itype == typeHair) ; hair
        filename += "hairs"
    elseif (itype == typeChest) ; chests
        filename += "chests"
    elseif (itype == typeAmulet) ; amulets
        filename += "amulets"
    elseif (itype == typeRing) ; rings
        filename += "rings"
    elseif (itype == typeCirclet) ; circlets
        filename += "circlets"
    elseif (itype == typeEarring) ; earrings
        filename += "earrings"
    elseif (itype == typeUnk1) ; unk1
        filename += "unk1"
    elseif (itype == typeUnk2) ; unk2
        filename += "unk2"
    elseif (itype == typeUnk3) ; unk3
        filename += "unk3"
    elseif (itype == typeUnk4) ; unk4
        filename += "unk4"
    elseif (itype == typeUnk5) ; unk5
        filename += "unk5"
    elseif (itype == typeUnk6) ; unk6
        filename += "unk6"
    elseif (itype == typeUnk7) ; unk7
        filename += "unk7"
    elseif (itype == typeUnk8) ; unk8
        filename += "unk8"
    elseif (itype == typePants) ; Pants
        filename += "pants"
    else
        filename += "unknown"
    endif
    
    return filename
endfunction

function ClearLastItem()
    if (setupComplete)
        if lastEquippedItem != none
            if (affectMark && markRef != none)
                markRef.unequipitem(lastEquippedItem)
                log("Mark Unequipped: " + lastEquippedItem.getName())
                lastEquippedItem = none
            elseif (affectCrosshair && crosshairRef != none)
                crosshairRef.unequipitem(lastEquippedItem)
                log("Target Unequipped: " + lastEquippedItem.getName())
                lastEquippedItem = none
            Else
                PlayerRef.unequipitem(lastEquippedItem)
                log("Player Unequipped: " + lastEquippedItem.getName())
                lastEquippedItem = none
            Endif
        Else
            log("Cannot unequip last item because no item was equipped.")
        endif
    Else
        log("Please wait for the setup process to complete and try again.")
    endif
endfunction



function UnequipSlot(int mask)
    Actor ref = getCurrentRef()
    if (ref == none)
        return
    endif

    Armor item = ref.GetWornForm(mask) as Armor
    if (item != none)
        ref.UnequipItem(item)
    endif
endfunction

function UnequipPants(Actor ref)
    if count[typePants] < 1
        log("ECL did not find any pants to unequip.")
        Return
    endif

    int counter = 0
    Armor item = pants[counter]

    While counter < count[typePants]
        item = pants[counter]
        ref.UnequipItem(item)

        counter = counter + 1
    EndWhile
    log("Unequipped Pants")
endfunction

function RefUnequipSlotmask(Actor ref, int slotmask)
    Armor item = ref.GetWornForm(slotmask) as Armor
    if (item != none)
        ref.UnequipItem(item)
    endif
endfunction

function Unequip(int itype)
    Actor ref = getCurrentRef()
    if (ref == none)
        return
    endif

    if (itype == typeGlove)
        RefUnequipSlotmask(ref, 0x00000008)
    elseif (itype == typeCirclet)
        RefUnequipSlotmask(ref, 0x00001000)
    elseif (itype == typeChest)
        RefUnequipSlotmask(ref, 0x00000004)
    elseif (itype == typeAmulet)
        RefUnequipSlotmask(ref, 0x00000020)
    elseif (itype == typeBoots)
        RefUnequipSlotmask(ref, 0x00000080)
    elseif (itype == typeRing)
        RefUnequipSlotmask(ref, 0x00000040)
    elseif (itype == typeHair)
        RefUnequipSlotmask(ref, 0x00000002)
    elseif (itype == typeEarring)
        RefUnequipSlotmask(ref, 0x00000008)
    elseif (itype == typePants)
        UnequipPants(ref)
    elseif (itype == typeUnk1)
        RefUnequipSlotmask(ref, 0x00008000)
    elseif (itype == typeUnk2)
        RefUnequipSlotmask(ref, 0x00040000)
    elseif (itype == typeUnk3)
        RefUnequipSlotmask(ref, 0x00040000)
    elseif (itype == typeUnk4)
        RefUnequipSlotmask(ref, 0x00080000)
    elseif (itype == typeUnk5)
        RefUnequipSlotmask(ref, 0x00400000)
    elseif (itype == typeUnk6)
        RefUnequipSlotmask(ref, 0x04000000)
    elseif (itype == typeUnk7)
        RefUnequipSlotmask(ref, 0x08000000)
    elseif (itype == typeUnk8)
        RefUnequipSlotmask(ref, 0x40000000)
    endif
endfunction

function PrintNotification(string description, int index1, int index2, Armor item)
    log(description + " " + index1 + " / " + index2 + "  (" + item.GetName() + ")")
endfunction


function GetPlayerEquippedItems()
    uiextensions.InitMenu("UITextEntryMenu")
    uiextensions.SetMenuPropertyString("UITextEntryMenu", "text", "OutfitName")
    int ret = uiextensions.OpenMenu("UITextEntryMenu")
    string result = uiextensions.GetMenuResultString("UITextEntryMenu")
    log("Menu returned " + ret + ", text: " + result)

    log ("Getting Equipped Items")
    Armor HEAD = PlayerRef.GetWornForm(0x00000001) as Armor
    Armor Hair = PlayerRef.GetWornForm(0x00000002) as Armor
    Armor BODY = PlayerRef.GetWornForm(0x00000004) as Armor
    Armor Hands = PlayerRef.GetWornForm(0x00000008) as Armor
    Armor Forearms = PlayerRef.GetWornForm(0x00000010) as Armor
    Armor Amulet = PlayerRef.GetWornForm(0x00000020) as Armor
    Armor Ring = PlayerRef.GetWornForm(0x00000040) as Armor
    Armor Feet = PlayerRef.GetWornForm(0x00000080) as Armor
    Armor Calves = PlayerRef.GetWornForm(0x00000100) as Armor
    Armor SHIELD = PlayerRef.GetWornForm(0x00000200) as Armor
    Armor TAIL = PlayerRef.GetWornForm(0x00000400) as Armor
    Armor LongHair = PlayerRef.GetWornForm(0x00000800) as Armor
    Armor Circlet = PlayerRef.GetWornForm(0x00001000) as Armor
    Armor Ears = PlayerRef.GetWornForm(0x00002000) as Armor
    Armor UNK1s = PlayerRef.GetWornForm(0x00004000) as Armor
    Armor UNK2s = PlayerRef.GetWornForm(0x00008000) as Armor
    Armor UNK3s = PlayerRef.GetWornForm(0x00010000) as Armor
    Armor UNK4s = PlayerRef.GetWornForm(0x00020000) as Armor
    Armor UNK5s = PlayerRef.GetWornForm(0x00040000) as Armor
    Armor UNK6s = PlayerRef.GetWornForm(0x00080000) as Armor
    Armor DecapitateHead = PlayerRef.GetWornForm(0x00100000) as Armor
    Armor Decapitate = PlayerRef.GetWornForm(0x00200000) as Armor
    Armor UNK7s = PlayerRef.GetWornForm(0x00400000) as Armor
    Armor UNK8s = PlayerRef.GetWornForm(0x00800000) as Armor
    Armor UNK9s = PlayerRef.GetWornForm(0x01000000) as Armor
    Armor UNK10s = PlayerRef.GetWornForm(0x02000000) as Armor
    Armor UNK11s = PlayerRef.GetWornForm(0x04000000) as Armor
    Armor UNK12s = PlayerRef.GetWornForm(0x08000000) as Armor
    Armor UNK13s = PlayerRef.GetWornForm(0x10000000) as Armor
    Armor UNK14s = PlayerRef.GetWornForm(0x20000000) as Armor
    Armor UNK15s = PlayerRef.GetWornForm(0x40000000) as Armor
    Armor FX01 = PlayerRef.GetWornForm(0x80000000) as Armor
    
    string filename = "../../../ECLootSavedOutfits/"

    if result != ""
        filename += result
    Else
        filename += "ECLootSavedOutfit"
    endif
    
    SetFormValue(filename, "HEAD", HEAD)
    SetFormValue(filename, "Hair", Hair)
    SetFormValue(filename, "BODY", BODY)
    SetFormValue(filename, "Hands", Hands)
    SetFormValue(filename, "Forearms", Forearms)
    SetFormValue(filename, "Amulet", Amulet)
    SetFormValue(filename, "Ring", Ring)
    SetFormValue(filename, "Feet", Feet)
    SetFormValue(filename, "Calves", Calves)
    SetFormValue(filename, "SHIELD", SHIELD)
    SetFormValue(filename, "TAIL", TAIL)
    SetFormValue(filename, "LongHair", LongHair)
    SetFormValue(filename, "Circlet", Circlet)
    SetFormValue(filename, "Ears", Ears)
    SetFormValue(filename, "UNK1", UNK1s)
    SetFormValue(filename, "UNK2", UNK2s)
    SetFormValue(filename, "UNK3", UNK3s)
    SetFormValue(filename, "UNK4", UNK4s)
    SetFormValue(filename, "UNK5", UNK5s)
    SetFormValue(filename, "UNK6", UNK6s)
    SetFormValue(filename, "DecapitateHead", DecapitateHead)
    SetFormValue(filename, "Decapitate", Decapitate)
    SetFormValue(filename, "UNK7", UNK7s)
    SetFormValue(filename, "UNK8", UNK8s)
    SetFormValue(filename, "UNK9", UNK9s)
    SetFormValue(filename, "UNK10", UNK10s)
    SetFormValue(filename, "UNK11", UNK11s)
    SetFormValue(filename, "UNK12", UNK12s)
    SetFormValue(filename, "UNK13", UNK13s)
    SetFormValue(filename, "UNK14", UNK14s)
    SetFormValue(filename, "UNK15", UNK15s)
    SetFormValue(filename, "FX01", FX01)
    JsonUtil.Save(filename)
endfunction

function SwitchEquipMode()
    isEquipModeOutfit = !isEquipModeOutfit
    if (isEquipModeOutfit)
        log("Equip Mode (NUM1-9): Outfits")
    Else
        log("Equip Mode (NUM1-9): Items")
    endif
    Utility.wait(0.20)
endfunction

function EquipCurrentArmor()
    string[] files = JsonInFolder(folderArmor)
    
    if (totalItemsArmor == 0)
        log("No Outfits found in folder: " + folderArmor)
        Return
    endif
    
    if (fileIndexArmor >= totalItemsArmor)
        fileIndexArmor = 0
    endif
    
    string filename = folderArmor + files[fileIndexArmor]
    EquipOutfitFromFile(filename)

    log("Load Armor " + (fileIndexArmor + 1) + "/" + totalItemsArmor + " from File: " + files[fileIndexArmor])
endfunction

function EquipCurrentIndoors()
    string[] files = JsonInFolder(folderIndoors)
    
    if (totalItemsIndoors == 0)
        log("No Outfits found in folder: " + folderIndoors)
        Return
    endif
    
    if (fileIndexIndoors >= totalItemsIndoors)
        fileIndexIndoors = 0
    endif
    
    string filename = folderIndoors + files[fileIndexIndoors]
    EquipOutfitFromFile(filename)

    log("Load Indoors " + (fileIndexIndoors + 1) + "/" + totalItemsIndoors + " from File: " + files[fileIndexIndoors])
endfunction

function EquipCurrentSexy()
    string[] files = JsonInFolder(folderSexy)
    
    if (totalItemsSexy == 0)
        log("No Outfits found in folder: " + folderSexy)
        Return
    endif
    
    if (fileIndexSexy >= totalItemsSexy)
        fileIndexSexy = 0
    endif
    
    string filename = folderSexy + files[fileIndexSexy]
    EquipOutfitFromFile(filename)

    log("Load Sexy " + (fileIndexSexy + 1) + "/" + totalItemsSexy + " from File: " + files[fileIndexSexy])
endfunction

function EquipNextArmor()
    fileIndexArmor = fileIndexArmor + 1
    string[] files = JsonInFolder(folderArmor)
    
    totalItemsArmor = files.Length

    if (totalItemsArmor == 0)
        log("No Outfits found in folder: " + folderArmor)
        Return
    endif

    if (fileIndexArmor >= totalItemsArmor)
        fileIndexArmor = 0
    endif

    string filename = folderArmor + files[fileIndexArmor]
    EquipOutfitFromFile(filename)

    log("Load Armor " + (fileIndexArmor + 1) + "/" + totalItemsArmor + " from File: " + files[fileIndexArmor])
endfunction

function EquipNextIndoors()
    fileIndexIndoors = fileIndexIndoors + 1
    string[] files = JsonInFolder(folderIndoors)
    
    totalItemsIndoors = files.Length

    if (totalItemsIndoors == 0)
        log("No Outfits found in folder: " + folderIndoors)
        Return
    endif

    if (fileIndexIndoors >= totalItemsIndoors)
        fileIndexIndoors = 0
    endif

    string filename = folderIndoors + files[fileIndexIndoors]
    EquipOutfitFromFile(filename)

    log("Load Indoors " + (fileIndexIndoors + 1) + "/" + totalItemsIndoors + " from File: " + files[fileIndexIndoors])
endfunction

function EquipNextSexy()
    fileIndexSexy = fileIndexSexy + 1
    string[] files = JsonInFolder(folderSexy)
    
    totalItemsSexy = files.Length

    if (totalItemsSexy == 0)
        log("No Outfits found in folder: " + folderSexy)
        Return
    endif

    if (fileIndexSexy >= totalItemsSexy)
        fileIndexSexy = 0
    endif

    string filename = folderSexy + files[fileIndexSexy]
    EquipOutfitFromFile(filename)

    log("Load Sexy " + (fileIndexSexy + 1) + "/" + totalItemsSexy + " from File: " + files[fileIndexSexy])
endfunction

function EquipCurrentOutfit()
    string[] files = JsonInFolder(folder)
    
    totalItems = files.Length

    if (totalItems == 0)
        log("No Outfits found in folder: " + folder)
        Return
    endif

    if (fileIndex >= totalItems)
        fileIndex = 0
    endif

    string filename = folder + files[fileIndex]
    EquipOutfitFromFile(filename)

    log("Reload Outfit " + (fileIndex + 1) + "/" + totalItems + " from File: " + files[fileIndex])
endfunction

function EquipNextOutfit()
    fileIndex = fileIndex + 1
    string[] files = JsonInFolder(folder)
    
    totalItems = files.Length

    if (totalItems == 0)
        log("No Outfits found in folder: " + folder)
        Return
    endif

    if (fileIndex >= totalItems)
        fileIndex = 0
    endif

    string filename = folder + files[fileIndex]
    EquipOutfitFromFile(filename)

    log("Next Outfit " + (fileIndex + 1) + "/" + totalItems + " from File: " + files[fileIndex])
endfunction

function EquipPrevIndoors()
    fileIndexIndoors = fileIndexIndoors - 1
    string[] files = JsonInFolder(folderIndoors)
    
    totalItemsIndoors = files.Length

    if (totalItemsIndoors == 0)
        log("No Outfits found in folder: " + folderIndoors)
        Return
    endif

    if (fileIndexIndoors < 0)
        fileIndexIndoors = totalItemsIndoors - 1
    endif

    string filename = folderIndoors + files[fileIndexIndoors]
    EquipOutfitFromFile(filename)

    log("Load Indoors " + (fileIndexIndoors + 1) + "/" + totalItemsIndoors + " from File: " + files[fileIndexIndoors])
endfunction

function EquipPrevSexy()
    fileIndexSexy = fileIndexSexy - 1
    string[] files = JsonInFolder(folderSexy)
    
    totalItemsSexy = files.Length

    if (totalItemsSexy == 0)
        log("No Outfits found in folder: " + folderSexy)
        Return
    endif

    if (fileIndexSexy < 0)
        fileIndexSexy = totalItemsSexy - 1
    endif

    string filename = folderSexy + files[fileIndexSexy]
    EquipOutfitFromFile(filename)

    log("Load Sexy " + (fileIndexSexy + 1) + "/" + totalItemsSexy + " from File: " + files[fileIndexSexy])
endfunction

function EquipPrevArmor()
    fileIndexArmor = fileIndexArmor - 1
    string[] files = JsonInFolder(folderArmor)
    
    totalItemsArmor = files.Length

    if (totalItemsArmor == 0)
        log("No Outfits found in folder: " + folderArmor)
        Return
    endif

    if (fileIndexArmor < 0)
        fileIndexArmor = totalItemsArmor - 1
    endif

    string filename = folderArmor + files[fileIndexArmor]
    EquipOutfitFromFile(filename)

    log("Load Armor " + (fileIndexArmor + 1) + "/" + totalItemsArmor + " from File: " + files[fileIndexArmor])
endfunction

function EquipPrevOutfit()
    fileIndex = fileIndex - 1
    string[] files = JsonInFolder(folder)
    
    totalItems = files.Length

    if (totalItems == 0)
        log("No Outfits found in folder: " + folder)
        Return
    endif

    if (fileIndex < 0)
        fileIndex = totalItems - 1
    endif

    string filename = folder + files[fileIndex]
    EquipOutfitFromFile(filename)

    log("Previous Outfit " + (fileIndex + 1) + "/" + totalItems + " from File: " + files[fileIndex])
endfunction

function EquipOutfitFromFile(String filename)

        JsonUtil.Load(filename)
        
        Armor HEAD              =   none
        Armor Hair              =   none
        Armor BODY              =   none
        Armor Hands             =   none
        Armor Forearms          =   none
        Armor Amulet            =   none
        Armor Ring              =   none
        Armor Feet              =   none
        Armor Calves            =   none
        Armor SHIELD            =   none
        Armor TAIL              =   none
        Armor LongHair          =   none
        Armor Circlet           =   none
        Armor Ears              =   none
        Armor UNK1s             =   none
        Armor UNK2s             =   none
        Armor UNK3s             =   none
        Armor UNK4s             =   none
        Armor UNK5s             =   none
        Armor UNK6s             =   none
        Armor DecapitateHead    =   none
        Armor Decapitate        =   none
        Armor UNK7s             =   none
        Armor UNK8s             =   none
        Armor UNK9s             =   none
        Armor UNK10s            =   none
        Armor UNK11s            =   none
        Armor UNK12s            =   none
        Armor UNK13s            =   none
        Armor UNK14s            =   none
        Armor UNK15s            =   none
        Armor FX01              =   none
        
    
        HEAD = GetFormValue(filename, "HEAD", HEAD) as Armor
        Hair = GetFormValue(filename, "Hair", Hair) as Armor
        BODY = GetFormValue(filename, "BODY", BODY)  as Armor
        Hands = GetFormValue(filename, "Hands", Hands)  as Armor
        Forearms = GetFormValue(filename, "Forearms", Forearms)  as Armor
        Amulet = GetFormValue(filename, "Amulet", Amulet)  as Armor
        Ring = GetFormValue(filename, "Ring", Ring) as Armor
        Feet = GetFormValue(filename, "Feet", Feet) as Armor
        Calves = GetFormValue(filename, "Calves", Calves) as Armor
        SHIELD = GetFormValue(filename, "SHIELD", SHIELD) as Armor
        TAIL = GetFormValue(filename, "TAIL", TAIL) as Armor
        LongHair = GetFormValue(filename, "LongHair", LongHair) as Armor
        Circlet = GetFormValue(filename, "Circlet", Circlet) as Armor
        Ears = GetFormValue(filename, "Ears", Ears) as Armor
        UNK1s = GetFormValue(filename, "UNK1", UNK1s) as Armor
        UNK2s = GetFormValue(filename, "UNK2", UNK2s) as Armor
        UNK3s = GetFormValue(filename, "UNK3", UNK3s) as Armor
        UNK4s = GetFormValue(filename, "UNK4", UNK4s) as Armor
        UNK5s = GetFormValue(filename, "UNK5", UNK5s) as Armor
        UNK6s = GetFormValue(filename, "UNK6", UNK6s) as Armor
        DecapitateHead = GetFormValue(filename, "DecapitateHead", DecapitateHead) as Armor
        Decapitate = GetFormValue(filename, "Decapitate", Decapitate) as Armor
        UNK7s = GetFormValue(filename, "UNK7", UNK7s) as Armor
        UNK8s = GetFormValue(filename, "UNK8", UNK8s) as Armor
        UNK9s = GetFormValue(filename, "UNK9", UNK9s) as Armor
        UNK10s = GetFormValue(filename, "UNK10", UNK10s) as Armor
        UNK11s = GetFormValue(filename, "UNK11", UNK11s) as Armor
        UNK12s = GetFormValue(filename, "UNK12", UNK12s) as Armor
        UNK13s = GetFormValue(filename, "UNK13", UNK13s) as Armor
        UNK14s = GetFormValue(filename, "UNK14", UNK14s) as Armor
        UNK15s = GetFormValue(filename, "UNK15", UNK15s) as Armor
        FX01 = GetFormValue(filename, "FX01", FX01) as Armor

        Actor ref = getCurrentRef()
        if (ref == none)
            return
        endif

        ref.UnequipAll()

        if (HEAD != none)
            ref.EquipItem(HEAD)
        endif

        if (Hair != none)
            ref.EquipItem(Hair)
        endif

        if (BODY != none)
            ref.EquipItem(BODY)
        endif

        if (Hands != none)
            ref.EquipItem(Hands)
        endif

        if (Forearms != none)
            ref.EquipItem(Forearms)
        endif

        if (Amulet != none)
            ref.EquipItem(Amulet)
        endif

        if (Ring != none)
            ref.EquipItem(Ring)
        endif

        if (Feet != none)
            ref.EquipItem(Feet)
        endif

        if (Calves != none)
            ref.EquipItem(Calves)
        endif

        if (SHIELD != none)
            ref.EquipItem(SHIELD)
        endif

        if (TAIL != none)
            ref.EquipItem(TAIL)
        endif

        if (LongHair != none)
            ref.EquipItem(LongHair)
        endif

        if (Circlet != none)
            ref.EquipItem(Circlet)
        endif

        if (Ears != none)
            ref.EquipItem(Ears)
        endif

        if (UNK1s != none)
            ref.EquipItem(UNK1s)
        endif

        if (UNK2s != none)
            ref.EquipItem(UNK2s)
        endif

        if (UNK3s != none)
            ref.EquipItem(UNK3s)
        endif

        if (UNK4s != none)
            ref.EquipItem(UNK4s)
        endif

        if (UNK5s != none)
            ref.EquipItem(UNK5s)
        endif

        if (UNK6s != none)
            ref.EquipItem(UNK6s)
        endif

        if (DecapitateHead != none)
            ref.EquipItem(DecapitateHead)
        endif

        if (Decapitate != none)
            ref.EquipItem(Decapitate)
        endif

        if (UNK7s != none)
            ref.EquipItem(UNK7s)
        endif

        if (UNK8s != none)
            ref.EquipItem(UNK8s)
        endif

        if (UNK9s != none)
            ref.EquipItem(UNK9s)
        endif

        if (UNK10s != none)
            ref.EquipItem(UNK10s)
        endif

        if (UNK11s != none)
            ref.EquipItem(UNK11s)
        endif

        if (UNK12s != none)
            ref.EquipItem(UNK12s)
        endif

        if (UNK13s != none)
            ref.EquipItem(UNK13s)
        endif

        if (UNK14s != none)
            ref.EquipItem(UNK14s)
        endif

        if (UNK15s != none)
            ref.EquipItem(UNK15s)
        endif

        if (FX01 != none)
            ref.EquipItem(FX01)
        endif
endfunction

function GetTargetEquippedItems(Actor ref)
    if (ref != none)
        uiextensions.InitMenu("UITextEntryMenu")
        uiextensions.SetMenuPropertyString("UITextEntryMenu", "text", "Target OutfitName")
        int ret = uiextensions.OpenMenu("UITextEntryMenu")
        string result = uiextensions.GetMenuResultString("UITextEntryMenu")
        log("Menu returned " + ret + ", text: " + result)

        log ("Getting Equipped Items: " + ref.GetActorBase().GetName())
        Armor HEAD = ref.GetWornForm(0x00000001) as Armor
        Armor Hair = ref.GetWornForm(0x00000002) as Armor
        Armor BODY = ref.GetWornForm(0x00000004) as Armor
        Armor Hands = ref.GetWornForm(0x00000008) as Armor
        Armor Forearms = ref.GetWornForm(0x00000010) as Armor
        Armor Amulet = ref.GetWornForm(0x00000020) as Armor
        Armor Ring = ref.GetWornForm(0x00000040) as Armor
        Armor Feet = ref.GetWornForm(0x00000080) as Armor
        Armor Calves = ref.GetWornForm(0x00000100) as Armor
        Armor SHIELD = ref.GetWornForm(0x00000200) as Armor
        Armor TAIL = ref.GetWornForm(0x00000400) as Armor
        Armor LongHair = ref.GetWornForm(0x00000800) as Armor
        Armor Circlet = ref.GetWornForm(0x00001000) as Armor
        Armor Ears = ref.GetWornForm(0x00002000) as Armor
        Armor UNK1s = ref.GetWornForm(0x00004000) as Armor
        Armor UNK2s = ref.GetWornForm(0x00008000) as Armor
        Armor UNK3s = ref.GetWornForm(0x00010000) as Armor
        Armor UNK4s = ref.GetWornForm(0x00020000) as Armor
        Armor UNK5s = ref.GetWornForm(0x00040000) as Armor
        Armor UNK6s = ref.GetWornForm(0x00080000) as Armor
        Armor DecapitateHead = ref.GetWornForm(0x00100000) as Armor
        Armor Decapitate = ref.GetWornForm(0x00200000) as Armor
        Armor UNK7s = ref.GetWornForm(0x00400000) as Armor
        Armor UNK8s = ref.GetWornForm(0x00800000) as Armor
        Armor UNK9s = ref.GetWornForm(0x01000000) as Armor
        Armor UNK10s = ref.GetWornForm(0x02000000) as Armor
        Armor UNK11s = ref.GetWornForm(0x04000000) as Armor
        Armor UNK12s = ref.GetWornForm(0x08000000) as Armor
        Armor UNK13s = ref.GetWornForm(0x10000000) as Armor
        Armor UNK14s = ref.GetWornForm(0x20000000) as Armor
        Armor UNK15s = ref.GetWornForm(0x40000000) as Armor
        Armor FX01 = ref.GetWornForm(0x80000000) as Armor
        
        string filename = "../../../ECLootSavedOutfits/"

        if result != ""
            filename += result
        Else
            filename += "ECLootSavedOutfit"
        endif
    
        SetFormValue(filename, "HEAD", HEAD)
        SetFormValue(filename, "Hair", Hair)
        SetFormValue(filename, "BODY", BODY)
        SetFormValue(filename, "Hands", Hands)
        SetFormValue(filename, "Forearms", Forearms)
        SetFormValue(filename, "Amulet", Amulet)
        SetFormValue(filename, "Ring", Ring)
        SetFormValue(filename, "Feet", Feet)
        SetFormValue(filename, "Calves", Calves)
        SetFormValue(filename, "SHIELD", SHIELD)
        SetFormValue(filename, "TAIL", TAIL)
        SetFormValue(filename, "LongHair", LongHair)
        SetFormValue(filename, "Circlet", Circlet)
        SetFormValue(filename, "Ears", Ears)
        SetFormValue(filename, "UNK1", UNK1s)
        SetFormValue(filename, "UNK2", UNK2s)
        SetFormValue(filename, "UNK3", UNK3s)
        SetFormValue(filename, "UNK4", UNK4s)
        SetFormValue(filename, "UNK5", UNK5s)
        SetFormValue(filename, "UNK6", UNK6s)
        SetFormValue(filename, "DecapitateHead", DecapitateHead)
        SetFormValue(filename, "Decapitate", Decapitate)
        SetFormValue(filename, "UNK7", UNK7s)
        SetFormValue(filename, "UNK8", UNK8s)
        SetFormValue(filename, "UNK9", UNK9s)
        SetFormValue(filename, "UNK10", UNK10s)
        SetFormValue(filename, "UNK11", UNK11s)
        SetFormValue(filename, "UNK12", UNK12s)
        SetFormValue(filename, "UNK13", UNK13s)
        SetFormValue(filename, "UNK14", UNK14s)
        SetFormValue(filename, "UNK15", UNK15s)
        SetFormValue(filename, "FX01", FX01)
        JsonUtil.Save(filename)
    endif
endfunction

function toggleDisable()
    if (isDisabled)
        isDisabled = false
        log("ECL Keys Enabled")
    Else
        isDisabled = True
        log("ECL Keys Disabled")
    endif
endfunction

function NextMode()
    if ((menuMode + 1) > numModes)
        menuMode = 1
    else
        menuMode = menuMode + 1
    endif

    log("Mode: " + modeDescriptions[menuMode - 1])
endfunction

function PrevMode()
    if ((menuMode - 1) < 1)
        menuMode = numModes
    else
        menuMode = menuMode - 1
    endif

    log("Mode: " + modeDescriptions[menuMode - 1])
endfunction

Event OnKeyUp(int keyCode, float holdTime)
    ; || UI.IsMenuOpen("Dialogue Menu")
    if UI.IsMenuOpen("Console") || UI.IsMenuOpen("Book Menu") || UI.IsMenuOpen("BarterMenu") || UI.IsMenuOpen("ContainerMenu") || UI.IsMenuOpen("Crafting Menu") || UI.IsMenuOpen("FavoritesMenu") || UI.IsMenuOpen("InventoryMenu") || UI.IsMenuOpen("Journal Menu") || UI.IsMenuOpen("Lockpicking Menu") || UI.IsMenuOpen("MagicMenu") || UI.IsMenuOpen("MapMenu") || UI.IsMenuOpen("MessageBoxMenu") || UI.IsMenuOpen("Sleep/Wait Menu") || UI.IsMenuOpen("StatsMenu")
        trace ("Menu is open")
        Utility.wait(0.20)
        return
    endif

    if KeyCode == 38 ;L
        if (setupComplete)
            log("EC Loot: Ready " + loadedItems + " / " + totalItems + " Items loaded. (" + count[typeHair] + ", " + count[typeChest] + ", " + count[typeGlove] + ", " + count[typeBoots] + ", " + count[typeAmulet] + ", " +  count[typeRing] + ", " + count[typeCirclet] + ", " + count[typeEarring] + ", " + count[typePants] + ")")
        Else
            log("EC Loot: Loading " + loadedItems + " / " + totalItems + " (" + count[typeHair] + ", "  + count[typeChest] + ", " + count[typeGlove] + ", " + count[typeBoots] + ", " + count[typeAmulet] + ", " +  count[typeRing] + ", " + count[typeCirclet] + ", " + count[typeEarring] + ", " + count[typePants] + ")")
        endif
        toggleDisable()
        Utility.wait(0.20)
    endif


    ; After loading a savegame the ECL plugin will collect information about all the equippable items found on your character.
    ; This can take a few seconds or a few minutes depending on how many items you are carrying.
    ; e.g. Loading 1900 items takes around 2 minutes on my machine, Loading 400 items takes less than 10 seconds.
    ; ECL will indicate when it finished loading with an in-game notification (top left corner) that also displays how many items were loaded for each slot.
    ; You can check the loading progress at any time by pressing the ECL Toggle key (Default: [L]).


    ; Controls
    ; Hold LALT while pressing any slot key to go backwards through the list
    ; Hold LCTRL while pressing any slot key to unequip the item in that slot
    ; Press Num- to toggle Extra Mode (switches slot assignment, see below)
    ; Press [Num0] to switch between Player and Crosshair Target Mode.

    ; Equip items to your character or the corsshair target by pressing the following keys.
    ; Note: In addition you may use the modifiers described above.

    ; [Num*] Go to Outfit Equip Mode (Use Numpad+ and Numpad- with modifier keys to cycle outfits)
    ; [F11] Clear the last equipped item.
    ; [F12] Create a new outfit from the currently equipped items
    ;     Note: Depending on the Mode you are in (Player or Crosshair Target) this saves the players items or the items of your crosshair target.

    ; Normal Mode
    ; [Num7] gloves     [Num8] boots    [Num9] chest
    ; [Num4] ring       [Num5] amulet   [Num6] circlet
    ; [Num1] earring    [Num2] pants    [Num3]

    ; Extra Mode, Toggle with [Num*]
    ; [Num7] unk1       [Num8] unk2     [Num9] unk3
    ; [Num4] unk4       [Num5] unk5     [Num6] unk6
    ; [Num1] unk7       [Num2] unk8     [Num3]

    ; -------------------- New Mode --------------
    ; F12 Save Outfit
    ; F11 Favorite Mode
    ; Mode 1 (Chests, Boots, Gloves)
    ; [Num7] Prev Chest     [Num8] Next Mode    [Num9] Next Chest
    ; [Num4] Prev Boots     [Num5] Undo         [Num6] Next Boots
    ; [Num1] Prev Gloves    [Num2] Prev Mode    [Num3] Next Gloves
    ; Mode 2 (Hair, Amulet, Earring)
    ; [Num7] Prev Hair      [Num8] Next Mode    [Num9] Next Hair
    ; [Num4] Prev Amulet    [Num5] Undo         [Num6] Next Amulet
    ; [Num1] Prev Earring   [Num2] Prev Mode    [Num3] Next Earring
    ; Mode 3 (Ring, Circlet, Pants)
    ; [Num7] Prev Ring      [Num8] Next Mode    [Num9] Next Ring
    ; [Num4] Prev Circlet   [Num5] Undo         [Num6] Next Circlet
    ; [Num1] Prev Pants     [Num2] Prev Mode    [Num3] Next Pants
    ; Mode 4 (Unk1, Unk2, Unk3)
    ; [Num7] Prev Unk1      [Num8] Next Mode    [Num9] Next Unk1
    ; [Num4] Prev Unk2      [Num5] Undo         [Num6] Next Unk2
    ; [Num1] Prev Unk3      [Num2] Prev Mode    [Num3] Next Unk3
    ; Mode 5 (Unk4, Unk5, Unk6)
    ; [Num7] Prev Unk4      [Num8] Next Mode    [Num9] Next Unk4
    ; [Num4] Prev Unk5      [Num5] Undo         [Num6] Next Unk5
    ; [Num1] Prev Unk6      [Num2] Prev Mode    [Num3] Next Unk6
    ; Mode 6 (Unk7, Unk8, )
    ; [Num7] Prev Unk7      [Num8] Next Mode    [Num9] Next Unk7
    ; [Num4] Prev Unk8      [Num5] Undo         [Num6] Next Unk8
    ; [Num1]                [Num2] Prev Mode    [Num3] 
 
    ;  self.RegisterForKey(87) ; F11
    ; self.RegisterForKey(88) ; F12
    ; self.RegisterForKey(38) ; L
    ; self.RegisterForKey(82) ; NUM0
    ; self.RegisterForKey(79) ; NUM1
    ; self.RegisterForKey(80) ; NUM2
    ; self.RegisterForKey(81) ; NUM3
    ; self.RegisterForKey(71) ; NUM7
    ; self.RegisterForKey(72) ; NUM8
    ; self.RegisterForKey(73) ; NUM9
    ; self.RegisterForKey(75) ; NUM4
    ; self.RegisterForKey(76) ; NUM5
    ; self.RegisterForKey(77) ; NUM6
    ; self.RegisterForKey(42) ; L-Shift
    ; self.RegisterForKey(29) ; L-Ctrl
    ; self.RegisterForKey(56) ; L-Alt
    ; self.RegisterForKey(74) ; Num-
    ; self.RegisterForKey(78) ; Num+
    ; self.RegisterForKey(55) ; Num*
    ; self.RegisterForKey(181) ; Num/
    ; self.RegisterForKey(156) ; Num Enter
    ; self.RegisterForKey(83) ; Num . Del
    ; ;self.RegisterForKey(54) ; R-Shift
    ; ;self.RegisterForKey(157) ; R-Ctrl

    ; NUM 7 (Prev 1 Chest, 2 Hair, 3 Ring, 4 Unk1, 5 Unk4, 6 Unk7)
    selection1[0] = typeChest
    selection1[1] = typeHair
    selection1[2] = typeRing
    selection1[3] = typeUnk1
    selection1[4] = typeUnk4
    selection1[5] = typeUnk7
    ; NUM 4 (Prev 1 Boots, 2 Amulet, 3 Circlet, 4 Unk2, 5 Unk5, 6 Unk8)
    selection2[0] = typeBoots
    selection2[1] = typeAmulet
    selection2[2] = typeCirclet
    selection2[3] = typeUnk2
    selection2[4] = typeUnk5
    selection2[5] = typeUnk8
    ; NUM 1 (Prev 1 Gloves, 2 Earring, 3 Pants, 4 Unk3, 5 Unk6, 6 -)
    selection3[0] = typeGlove
    selection3[1] = typeEarring
    selection3[2] = typePants
    selection3[3] = typeUnk3
    selection3[4] = typeUnk6
    selection3[5] = typeChest

    if(!isDisabled)
        if KeyCode == 87 ; F11 (Toggle Favorites Mode)
            if (isFavoritesMode)
                isFavoritesMode = false
                log("Normal Mode")
            else
                isFavoritesMode = true
                log("Favorites Mode")
            endif
            Utility.wait(0.20)
        elseif KeyCode == 88 ; F12
            if (affectMark && markRef != none)
                log("EC Loot: Saving Marks Equipped Items.")
                GetTargetEquippedItems(markRef)
            elseif (affectCrosshair && crosshairRef != none)
                log("EC Loot: Saving Targets Equipped Items.")
                GetTargetEquippedItems(crosshairRef)
            Else
                log("EC Loot: Saving Players Equipped Items.")
                GetPlayerEquippedItems()
            endif
            Utility.wait(0.20)
        elseif KeyCode == 156 ; Num Enter (Save Last Item to Favorites)
            if (isModifierKeyDown)
                RemoveFavorite()
            else
                AddFavorite()
            endif
            Utility.wait(0.20)
        elseif KeyCode == 76 ; NUM 5 (Undo / Clear Last Item) 
            ClearLastItem()
            Utility.wait(0.20)  
        elseif KeyCode == 72 ; NUM 8 (Next Mode)
            NextMode()
            Utility.wait(0.20) 
        elseif KeyCode == 80 ; NUM 2 (Prev Mode)
            PrevMode()
            Utility.wait(0.20)
        elseif KeyCode == 71 ; NUM 7 (Prev 1 Chest, 2 Hair, 3 Ring, 4 Unk1, 5 Unk4, 6 Unk7)
            trace("Equipping Prev " + name[selection1[menuMode - 1]])
            EquipPrev(selection1[menuMode - 1])
            Utility.wait(0.20)
        elseif KeyCode == 73 ; NUM 9 (Next 1 Chest, 2 Hair, 3 Ring, 4 Unk1, 5 Unk4, 6 Unk7)
            trace("Equipping Next " + name[selection1[menuMode - 1]])
            EquipNext(selection1[menuMode - 1])
            Utility.wait(0.20)
        elseif KeyCode == 75 ; NUM 4 (Prev 1 Boots, 2 Amulet, 3 Circlet, 4 Unk2, 5 Unk5, 6 Unk8)
            trace("Equipping Prev " + name[selection2[menuMode - 1]])
            EquipPrev(selection2[menuMode - 1])
            Utility.wait(0.20)
        elseif KeyCode == 77 ; NUM 6 (Next 1 Boots, 2 Amulet, 3 Circlet, 4 Unk2, 5 Unk5, 6 Unk8)
            trace("Equipping Next " + name[selection2[menuMode - 1]])
            EquipNext(selection2[menuMode - 1])
            Utility.wait(0.20)
        elseif KeyCode == 79 ; NUM 1 (Prev 1 Gloves, 2 Earring, 3 Pants, 4 Unk3, 5 Unk6, 6 -)
            trace("Equipping Prev " + name[selection3[menuMode - 1]])
            EquipPrev(selection3[menuMode - 1])
            Utility.wait(0.20)
        elseif KeyCode == 81 ; NUM 3 (Next 1 Gloves, 2 Earring, 3 Pants, 4 Unk3, 5 Unk6, 6 -)
            trace("Equipping Next " + name[selection3[menuMode - 1]])
            EquipNext(selection3[menuMode - 1])
            Utility.wait(0.20)
        ; Outfit Handling
        elseif KeyCode == 78 ; Num+ (Next Outfit)
            EquipNextOutfit()
            Utility.wait(0.20)
        elseif KeyCode == 74 ; Num- (Prev Outfit)
            EquipPrevOutfit()
            Utility.wait(0.20)
        ; Reload Outfit
        elseif KeyCode == 83 ; NUM . DEL
            EquipCurrentOutfit()
            Utility.wait(0.20)
        ; Target Handling
        elseif KeyCode == 82 ; NUM 0
            if (isModifierKeyDown && crosshairRef != none)
                markRef = crosshairRef
                log("EC Loot: Set Mark to " + markRef.GetActorBase().GetName())
            else
                if (affectCrosshair)
                    affectCrosshair = false
                    affectMark = false
                    log("EC Loot: Now Affecting Player Character (" + playerref.GetActorBase().GetName())
                elseif (affectMark)
                    affectMark = false
                    affectCrosshair = true
                    log("EC Loot: Now Affecting Crosshair Target.")
                Else
                    affectMark = true
                    affectCrosshair = false
                    log("EC Loot: Now Affecting Mark.")
                Endif
            Endif
            Utility.wait(0.10)
        elseif KeyCode == 42 ; LShift
            isModifierKeyDown = false
            trace("ECL LShift released")
            Utility.wait(0.10)
        Endif
    Endif
EndEvent

function registerKeys()
    self.RegisterForKey(87) ; F11
    self.RegisterForKey(88) ; F12
    self.RegisterForKey(38) ; L
    self.RegisterForKey(82) ; NUM0
    self.RegisterForKey(79) ; NUM1
    self.RegisterForKey(80) ; NUM2
    self.RegisterForKey(81) ; NUM3
    self.RegisterForKey(71) ; NUM7
    self.RegisterForKey(72) ; NUM8
    self.RegisterForKey(73) ; NUM9
    self.RegisterForKey(75) ; NUM4
    self.RegisterForKey(76) ; NUM5
    self.RegisterForKey(77) ; NUM6
    self.RegisterForKey(42) ; L-Shift
    self.RegisterForKey(29) ; L-Ctrl
    self.RegisterForKey(56) ; L-Alt
    self.RegisterForKey(74) ; Num-
    self.RegisterForKey(78) ; Num+
    self.RegisterForKey(55) ; Num*
    self.RegisterForKey(181) ; Num/
    self.RegisterForKey(83) ; Num . Del
    self.RegisterForKey(156) ; Num Enter
    ;self.RegisterForKey(54) ; R-Shift
    ;self.RegisterForKey(157) ; R-Ctrl
endfunction

Event OnKeyDown(Int KeyCode)
    If (KeyCode == 42) && (!isModifierKeyDown) ; L-Shift
        isModifierKeyDown = true
    ; elseif (KeyCode == 29) && (!isModifierKey2Down) ; L-Ctrl
    ;     isModifierKey2Down = true
    ; elseif (KeyCode == 56) && (!isModifierKey3Down) ; L-Alt
    ;     isModifierKey3Down = true
    EndIf
EndEvent

function trace (string msg)
    string finalmsg = "[ECL - Main] " + msg
    Debug.trace("[ECL - Main] " + msg)
    MiscUtil.PrintConsole(finalmsg)
endfunction

function log (string msg)
    string finalmsg = "[ECL - Main] " + msg
    Debug.Trace(finalmsg)
	Debug.Notification(finalmsg)
    MiscUtil.PrintConsole(finalmsg)
endfunction 

; NUM 1 - Earrings
; NUM 2 - empty
; NUM 3 - empty
; NUM 4 - Ring
; NUM 5 - Amulet
; NUM 6 - Circlet
; NUM 7 - Gloves
; NUM 8 - Boots
; NUM 9 - Chest