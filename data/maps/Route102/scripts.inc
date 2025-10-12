Route102_MapScripts::
	map_script MAP_SCRIPT_ON_LOAD, Route102_OnEnter
	.byte 0

Route102_OnEnter:
	call_if_set FLAG_102ROUTE_NPC, Route102_True_Tile
	end

Route102_True_Tile:
	setmetatile 19, 14, 629, 1
	setmetatile 19, 13, 621, 0
	return

Route102_Tig::
	applymovement OBJ_EVENT_ID_PLAYER Route102_Tig_1
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpcpic2 4, 208, 127, 0
	namebox Wenhao
	msgbox Route102_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	playmoncry 92, CRY_MODE_NORMAL
	waitmoncry
	delay 60
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER MapEventScript102_1
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route102_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	setflag FLAG_102ROUTE_NPC
	removeobject 1
	delay 60
	namebox Route108_LuoXi
	msgbox Route102_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	setvar VAR_ROUTE102_STATE, 1
	end

Route102_MSG_1:
	.string "眨眼间就走散了，\n刚刚他们是往哪儿……$"

Route102_MSG_2:
	.string "什么声音?$"

Route102_MSG_3:
	.string "人不见了?$"

MapEventScript102_1:
	emote_exclamation_mark
	step_end

Route102_Tig_1:
	face_left
	step_end

Wild_Battle01::
	setwildbattle 92, 10, 0
	playmoncry 92, CRY_MODE_NORMAL
	delay 28
	waitmoncry
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route102_MSG_4 MSGBOX_DEFAULT
	hidenamebox
	hidenpc2
	hidemonpic
	closemessage
	special StartRegiBattle
	playbgm MUS_RG_LAVENDER, 0
	waitstate
	setvar VAR_ROUTE103_STATE, 1
    warpsilent MAP_ROUTE102, 19, 15
	end

Route102_MSG_4:
	.string "有什么东西在靠近……$"

Route102_Scripts_1::
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox Route102_MSG_5 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	setflag FLAG_UNUSED_0x1DA
	removeobject 2
	end

Route102_MSG_5:
	.string "暗古神坛的祭品，\n需要一男一女两人才能正常执行。$"

