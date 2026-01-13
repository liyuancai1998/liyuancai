LittlerootTown_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, LittlerootTown_Guanzhu
	.byte 0

LittlerootTown_Guanzhu:
	call_if_set FLAG_XiaoXuan_0x02A, LittlerootTown_Guanzhu_Trigger
	setflag FLAG_Guanzhu_0x02B
	end

LittlerootTown_Guanzhu_Trigger:
	clearflag FLAG_Guanzhu_0x02B
	call_if_set FLAG_UNUSED_0x02C, LittlerootTown_Guanzhu_Trigger_2
	end

LittlerootTown_Guanzhu_Trigger_2:
	setflag FLAG_Guanzhu_0x02B
	end

LittlerootTown_EventScript_FatMan::
	msgbox LittlerootTown_Text_CanUsePCToStoreItems, MSGBOX_NPC
	setflag FLAG_TEMP_1
	removeobject 1
	end

LittlerootTown_Text_CanUsePCToStoreItems:
    .string "打开电脑就可以存取\n物品和宝可梦了。\p科学的力量真伟大！$"

LittlerootTown_Guanzhu_Event::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG
	msgbox LittlerootTown_Guanzhu_Text, MSGBOX_DEFAULT
	hidenamebox
	closemessage
	hidenpc2
	removeobject 2
	setflag FLAG_Guanzhu_0x02B
	setflag FLAG_UNUSED_0x02C
	end

LittlerootTown_Guanzhu_Text:
	.string "晓暄的精神状态不太对劲，\n嘴里念叨着告诉我\l她把祭品的名字换掉了，\l如果我没猜错的话，\l她为了报仇居然做出了\l和当年一摸一样的事情，\l趁仪式还没开始，\l我要先回一趟春雨镇……$"

LittlerootTown_NPC_1::
	shownpcpic2 4, 208, 127, 0
	msgbox LittlerootTown_NPCMSG_1 MSGBOX_DEFAULT
	hidenpc2
	closemessage
	setflag 0x35
	removeobject 3
	end

LittlerootTown_NPCMSG_1:
	.string "晓暄她，以前总是带着笑。\n可那天从春雨镇回来，\l脸白得像纸一样……$"

Rest_MSG:
	.string "有点累了，休息一下吧。$"

HealPlayerParty_Scripts::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Rest_MSG MSGBOX_DEFAULT
	hidenamebox
	closemessage
	hidenpc2
	hidemonpic
	checkflag FLAG_UNUSED_0x03C
	goto_if_eq LittlerootTown_HealPlayerParty_Loop
	fadescreen FADE_TO_BLACK
	playfanfare MUS_HEAL
	waitfanfare
	special HealPlayerParty
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
	fadescreen FADE_FROM_BLACK
	end
LittlerootTown_HealPlayerParty_Loop:
	multichoice 20, 2, MULTI_LITTLEROOT_HEAL_WARP, TRUE
	compare VAR_RESULT, 0
	goto_if_eq LittlerootTown_HealPlayerParty_Heal
	compare VAR_RESULT, 1
	goto_if_eq LittlerootTown_HealPlayerParty_WarpChunyu
	compare VAR_RESULT, 2
	goto_if_eq LittlerootTown_HealPlayerParty_WarpWuye
	compare VAR_RESULT, 3
	goto_if_eq LittlerootTown_HealPlayerParty_WarpLuoxia
	compare VAR_RESULT, 4
	goto_if_eq LittlerootTown_HealPlayerParty_Exit
	goto LittlerootTown_HealPlayerParty_Loop
LittlerootTown_HealPlayerParty_Heal:
	fadescreen FADE_TO_BLACK
	playfanfare MUS_HEAL
	waitfanfare
	special HealPlayerParty
	setrespawn HEAL_LOCATION_LITTLEROOT_TOWN_MAYS_HOUSE
	fadescreen FADE_FROM_BLACK
	goto LittlerootTown_HealPlayerParty_Loop
LittlerootTown_HealPlayerParty_WarpChunyu:
	fadescreen FADE_TO_BLACK
	warp MAP_SLATEPORT_CITY, 28, 45
	waitstate
	fadescreen FADE_FROM_BLACK
	end
LittlerootTown_HealPlayerParty_WarpWuye:
	fadescreen FADE_TO_BLACK
	warp MAP_LAVARIDGE_TOWN, 4, 18
	waitstate
	fadescreen FADE_FROM_BLACK
	end
LittlerootTown_HealPlayerParty_WarpLuoxia:
	fadescreen FADE_TO_BLACK
	warp MAP_LILYCOVE_CITY, 32, 15
	waitstate
	fadescreen FADE_FROM_BLACK
	end
LittlerootTown_HealPlayerParty_Exit:
	end

