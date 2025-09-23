OldaleTown_MapScripts::
	map_script MAP_SCRIPT_ON_LOAD, OldaleTown_OnEnter
	.byte 0

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
	msgbox OldaleTown_MSG_3 MSGBOX_DEFAULT
	hidenpc2
	hidemonpic
	closemessage
	setwildbattle 92, 5, 0
	playmoncry 92, CRY_MODE_NORMAL
	delay 28
	waitmoncry
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox OldaleTown_MSG_4 MSGBOX_DEFAULT
	hidenpc2
	hidemonpic
	closemessage
	special StartRegiBattle
	playbgm MUS_RG_LAVENDER, 0
	waitstate
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