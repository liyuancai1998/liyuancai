LavaridgeTown_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, LavaridgeTown_Kaiyi_X
	.byte 0

LavaridgeTown_Kaiyi_X:
	call LavaridgeTown_Kaiyi
	call LavaridgeTown_Xiaoxuan
	end

LavaridgeTown_Kaiyi:
	checkflag FLAG_UNUSED_0x038
	goto_if TRUE, LavaridgeTown_Kaiyi_Show
	setflag FLAG_UNUSED_0x039
	setvar VAR_ROUTE112_STATE, 1
	return

LavaridgeTown_Kaiyi_Show:
	clearflag FLAG_UNUSED_0x039
	checkflag FLAG_UNUSED_0x03A
	goto_if TRUE, LavaridgeTown_Kaiyi_Show_2
	return

LavaridgeTown_Kaiyi_Show_2:
	setflag FLAG_UNUSED_0x039
	return


LavaridgeTown_Xiaoxuan:
	checkflag FLAG_UNUSED_0x040
	goto_if TRUE, LavaridgeTown_Xiaoxuan_2
	setflag FLAG_UNUSED_0x045
	setvar VAR_ROUTE122_STATE, 1
	return

LavaridgeTown_Xiaoxuan_2:
	checkflag FLAG_UNUSED_0x046
	goto_if TRUE, LavaridgeTown_Xiaoxuan_3
	clearflag FLAG_UNUSED_0x045
	setvar VAR_ROUTE122_STATE, 0
	return

LavaridgeTown_Xiaoxuan_3:
	setflag FLAG_UNUSED_0x045
	setvar VAR_ROUTE122_STATE, 1
	return

LavaridgeTown_Xiaoxuan_4::
	applymovement 3, LavaridgeTown_Xiaoxuan_Move_1
	waitmovement 3
	delay 60
	applymovement 3, LavaridgeTown_Xiaoxuan_Move_2
	waitmovement 3
	removeobject 3
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox LavaridgeTown_Xiaoxuan_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	delay 60
	applymovement 2, LavaridgeTown_Xiaoxuan_Move_3
	waitmovement 2
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER LavaridgeTown_Xiaoxuan_Move_4
	waitmovement OBJ_EVENT_ID_PLAYER
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Xiaoxuan_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement 2, LavaridgeTown_Xiaoxuan_Move_5
	waitmovement 2
	applymovement OBJ_EVENT_ID_PLAYER LavaridgeTown_Xiaoxuan_Move_6
	waitmovement OBJ_EVENT_ID_PLAYER
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Xiaoxuan_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 2
	applymovement OBJ_EVENT_ID_PLAYER LavaridgeTown_Xiaoxuan_Move_7
	waitmovement OBJ_EVENT_ID_PLAYER
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Xiaoxuan_MSG_4 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 2
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, LavaridgeTown_Xiaoxuan_MSG_5
	closeblacktext
	fadescreen FADE_FROM_BLACK
	setflag FLAG_UNUSED_0x046
	addvar VAR_EVENT_COUNTER, 1
	setvar VAR_ROUTE122_STATE, 1
	end

LavaridgeTown_Xiaoxuan_Move_1:
	walk_down
	walk_right
	walk_right
	walk_right
	face_up
	step_end

LavaridgeTown_Xiaoxuan_Move_2:
	walk_left
	walk_left
	walk_left
	walk_up
	walk_up
	step_end

LavaridgeTown_Xiaoxuan_Move_3:
	walk_left
	walk_left
	walk_left
	face_up
	step_end

LavaridgeTown_Xiaoxuan_Move_4:
	emote_question_mark
	delay_16
	walk_up
	walk_up
	walk_up
	face_right
	step_end

LavaridgeTown_Xiaoxuan_Move_5:
	walk_left
	walk_left
	walk_left
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_left
	walk_left
	walk_down
	walk_down
	walk_down
	walk_down
	walk_down
	walk_left
	face_up
	step_end

LavaridgeTown_Xiaoxuan_Move_6:
	face_left
	step_end

LavaridgeTown_Xiaoxuan_Move_7:
	walk_left
	face_up
	step_end

LavaridgeTown_Xiaoxuan_MSG_5:
	.string "我怄气同意了琰星的表白……\n甚至跟他后来的事情也……$"

LavaridgeTown_Xiaoxuan_MSG_4:
	.string "凯伊……\n是我误会你了……$"

LavaridgeTown_Xiaoxuan_MSG_3:
	.string "焚烧炉？\n等等，\l她手里拿的是我给凯伊写的信？\p为什么你要这么做……\n难道说我和凯伊从始至终\l都是一场蒙在鼓里的误会么？\p这封信当时在我房间写了好久……$"

LavaridgeTown_Xiaoxuan_MSG_1:
	.string "这好像是我给凯伊送信的时候……\n那天他家里没有人，\l我就把信塞在了他家的门缝里了。$"

LavaridgeTown_Xiaoxuan_MSG_2:
	.string "晓暄怎么也在……她在干什么？$"


LavaridgeTown_Kaiyi_Script::
	applymovement OBJ_EVENT_ID_PLAYER, LavaridgeTown_Kaiyi_Script_Move_1
	waitmovement OBJ_EVENT_ID_PLAYER
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	applymovement 1, LavaridgeTown_Kaiyi_Script_Move_2
	waitmovement 1
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox LavaridgeTown_Kaiyi_Script_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 1
	setvar VAR_ROUTE112_STATE, 1
	setflag FLAG_UNUSED_0x039
	setflag FLAG_UNUSED_0x03A
	end

LavaridgeTown_Kaiyi_Script_Move_1:
	walk_up
	face_right
	step_end

LavaridgeTown_Kaiyi_Script_Move_2:
	walk_right
	walk_right
	walk_right
	walk_right
	walk_right
	step_end

LavaridgeTown_Kaiyi_Script_MSG_1:
	.string "刚刚那个是凯伊？$"

LavaridgeTown_LXHouse_T::
	call_if_set 0x3F, LavaridgeTown_LXHouse_T_2
	delay 60
	applymovement OBJ_EVENT_ID_PLAYER LavaridgeTown_Movement_2
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox LavaridgeTown_Text_1 MSGBOX_DEFAULT
	hidenamebox
	hidenpc2
	hidemonpic
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER LavaridgeTown_Movement_1
	waitmovement OBJ_EVENT_ID_PLAYER
	end

LavaridgeTown_Text_1:
	.string "门被锁了，进不去……$"

LavaridgeTown_Movement_1:
	walk_down
	step_end

LavaridgeTown_Movement_2:
	face_up
	delay_16
	emote_exclamation_mark
	step_end

LavaridgeTown_LXHouse_T_2:
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox LavaridgeTown_Text_2 MSGBOX_DEFAULT
	hidenamebox
	hidenpc2
	hidemonpic
	closemessage
	setvar 0x4067, 1
	end

LavaridgeTown_Text_2:
	.string "门可以打开了。$"

LavaridgeTown_LXHouse_T_3::
	delay 60
	fadescreen FADE_TO_BLACK
	delay 60
	blacktext 0xe0, 50, LavaridgeTown_Text_3
	closeblacktext
	delay 60
	fadescreen FADE_FROM_BLACK
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Text_4 MSGBOX_DEFAULT
	hidenpc2
	hidemonpic
	closemessage
	setvar 0x4068, 1
	delay 60
	playbgm MUS_RUSTBORO, 0
	fadescreen FADE_TO_BLACK
	setvar 0x8004 0
	special ShowCG
	waitstate
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Text_5 MSGBOX_AUTOCLOSE
	delay 60
	msgbox LavaridgeTown_Text_6 MSGBOX_AUTOCLOSE
	hidenpc2
	hidemonpic
	warpdoor MAP_SOOTOPOLIS_CITY, 10
	end

LavaridgeTown_Text_3:
	.string "还记得启明星公主的约定吗？\n这可能是我临走前\l最后能做的事情了……$"

LavaridgeTown_Text_4:
	.string "你是谁……那个约定……\n我想不起来了……\l头好痛……$"

LavaridgeTown_Text_5:
	.string "你是谁……我想不起来了……$"

LavaridgeTown_Text_6:
	.string "先进去看看吧……$"

LavaridgeTown_HealPlayerParty_Scripts::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Rest_MSG MSGBOX_DEFAULT
	hidenamebox
	closemessage
	hidenpc2
	hidemonpic
	checkflag FLAG_UNUSED_0x03C
	goto_if_eq LavaridgeTown_HealPlayerParty_Loop
	fadescreen FADE_TO_BLACK
	playfanfare MUS_HEAL
	waitfanfare
	special HealPlayerParty
	setrespawn HEAL_LOCATION_LAVARIDGE_TOWN
	fadescreen FADE_FROM_BLACK
	end
LavaridgeTown_HealPlayerParty_Loop:
	multichoice 20, 2, MULTI_LAVARIDGE_HEAL_WARP, TRUE
	compare VAR_RESULT, 0
	goto_if_eq LavaridgeTown_HealPlayerParty_Heal
	compare VAR_RESULT, 1
	goto_if_eq LavaridgeTown_HealPlayerParty_WarpChunyu
	compare VAR_RESULT, 2
	goto_if_eq LavaridgeTown_HealPlayerParty_WarpChenxi
	compare VAR_RESULT, 3
	goto_if_eq LavaridgeTown_HealPlayerParty_WarpLuoxia
	compare VAR_RESULT, 4
	goto_if_eq LavaridgeTown_HealPlayerParty_Exit
	goto LavaridgeTown_HealPlayerParty_Loop
LavaridgeTown_HealPlayerParty_Heal:
	fadescreen FADE_TO_BLACK
	playfanfare MUS_HEAL
	waitfanfare
	special HealPlayerParty
	setrespawn HEAL_LOCATION_LAVARIDGE_TOWN
	fadescreen FADE_FROM_BLACK
	goto LavaridgeTown_HealPlayerParty_Loop
LavaridgeTown_HealPlayerParty_WarpChunyu:
	fadescreen FADE_TO_BLACK
	warp MAP_SLATEPORT_CITY, 28, 45
	waitstate
	fadescreen FADE_FROM_BLACK
	end
LavaridgeTown_HealPlayerParty_WarpChenxi:
	fadescreen FADE_TO_BLACK
	warp MAP_LITTLEROOT_TOWN, 29, 32
	waitstate
	fadescreen FADE_FROM_BLACK
	end
LavaridgeTown_HealPlayerParty_WarpLuoxia:
	fadescreen FADE_TO_BLACK
	warp MAP_LILYCOVE_CITY, 32, 15
	waitstate
	fadescreen FADE_FROM_BLACK
	end
LavaridgeTown_HealPlayerParty_Exit:
	end

