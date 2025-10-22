OldaleTown_MapScripts::
	map_script MAP_SCRIPT_ON_LOAD, OldaleTown_OnEnter
	map_script MAP_SCRIPT_ON_TRANSITION, OldaleTown_Scripts_1
	.byte 0

OldaleTown_Scripts_1:
	call_if_set FLAG_UNUSED_0x040, OldaleTown_Scripts_2
	setflag FLAG_UNUSED_0x049
	setvar VAR_ROUTE123_STATE, 1
	end

OldaleTown_Scripts_2:
	clearflag FLAG_UNUSED_0x049
	setvar VAR_ROUTE123_STATE, 0
	call_if_set FLAG_UNUSED_0x04A, OldaleTown_Scripts_3
	end

OldaleTown_Scripts_3:
	setflag FLAG_UNUSED_0x049
	setvar VAR_ROUTE123_STATE, 1
	end

OldaleTown_Scripts_4::
	delay 60
	applymovement 3, Player_Movement_4
	waitmovement 3
	namebox LuoMan_MSG
	shownpc 5, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox OldaleTown_MSG_5 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement 3, OldaleTown_Move_1
	waitmovement 3
	removeobject 3
	delay 60
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox OldaleTown_MSG_6 MSGBOX_AUTOCLOSE
	hidenpc2
	hidemonpic
	hidenamebox
	setflag FLAG_UNUSED_0x049
	setflag FLAG_UNUSED_0x04A
	setvar VAR_ROUTE123_STATE, 1
	setvar VAR_ROUTE129_STATE, 0
	end

OldaleTown_Move_1:
	walk_down
	walk_down
	walk_down
	walk_down
	walk_down
	step_end

OldaleTown_MSG_6:
	.string "她说的藏起来的\n地方不会就是……\l最开始我回过神来的地方吧……$"

OldaleTown_MSG_5:
	.string "得想个办法……\n把尸体藏起来……\l最好是一个没人能察觉到的……$"

LuoMan_MSG:
	.string "洛曼$"

OldaleTown_OnEnter:
	call_if_set 0x30, OldaleTown_True_Tile
	end

OldaleTown_True_Tile:
	setmetatile 23, 23, 629, 1
	setmetatile 23, 22, 621, 0
	return

OldaleTown_EventScript_NPC::
	delay 60
	shownpcpic2 4, 208, 127, 0
	msgbox OldaleTown_MSG_1 MSGBOX_NPC
	hidenpc2
	setvar 0x4066, 1
	end

OldaleTown_MSG_1:
	.string "那家伙怎么还没跟上来？\n不会是迷路了吧？$"

OldaleTown_EventScript_NPC_2::
	applymovement 1 OldaleTown_Movement_NPC1
	waitmovement 1
	shownpcpic2 4, 208, 127, 0
	msgbox OldaleTown_MSG_2 MSGBOX_NPC
	hidenpc2
	removeobject 1
	removeobject 2
	setflag 0x2F
	setflag 0x30
	applymovement OBJ_EVENT_ID_PLAYER OldaleTown_Movement_NPC2
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 90
	applymovement OBJ_EVENT_ID_PLAYER OldaleTown_Movement_NPC3
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox OldaleTown_MSG_3 MSGBOX_DEFAULT
	hidenamebox
	hidenpc2
	hidemonpic
	closemessage
	setwildbattle 92, 15, 0
	playmoncry 92, CRY_MODE_NORMAL
	delay 28
	waitmoncry
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox OldaleTown_MSG_4 MSGBOX_DEFAULT
	hidenamebox
	hidenpc2
	hidemonpic
	closemessage
	special StartRegiBattle
	playbgm MUS_RG_LAVENDER, 0
	waitstate
	fadescreen FADE_TO_BLACK
	givemon 92, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_HYPNOSIS, MOVE_DREAM_EATER, MOVE_SHADOW_BALL, MOVE_PROTECT, FALSE
	blacktext 0xe0, 50, OldaleTown_MSG_7
	closeblacktext
	fadescreen FADE_FROM_BLACK
	setvar 0x4065, 1
	warpsilent MAP_OLDALE_TOWN, 23, 25
	end

OldaleTown_Movement_NPC1:
	emote_question_mark
	step_end

OldaleTown_MSG_2:
	.string "A:你有没有感觉到\n附近好像有什么人在盯着……\pB:你在说什么东西，\n别吓我啊！$"

OldaleTown_Movement_NPC2:
	emote_exclamation_mark
	step_end

OldaleTown_Movement_NPC3:
	walk_down
	walk_down
	walk_down
	face_left
	face_up
	face_right
	step_end

OldaleTown_MSG_3:
	.string "人呢？\n跟之前那个人一样消失了……$"

OldaleTown_MSG_4:
	.string "有什么东西在靠近……$"

OldaleTown_MSG_7:
	.string "血影鬼斯加入了队伍。$"
