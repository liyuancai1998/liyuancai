RustboroCity_MapScripts::
	.byte 0

RustboroCity_EventScript_BADGE05::
	setflag FLAG_BADGE05_GET
	shownpcpic2 4, 208, 127, 0
	msgbox BADGE05_TEXT MSGBOX_DEFAULT
	closemessage
	hidenpc2
	removeobject 1
	setflag FLAG_BADGE05
	end

RustboroCity_MissonGuest::
	checkflag FLAG_RustboroCity_EventScript_ShiTi
	goto_if TRUE, RustboroCity_MissonGuest_Over
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_MissonGuest_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpcpic2 4, 208, 127, 0
	msgbox RustboroCity_MissonGuest_TEXT_1 MSGBOX_DEFAULT
	closemessage
	hidenpc2
	end

RustboroCity_MissonGuest_Over:
	setvar VAR_RustboroCity_EventScript_02, 1
	end

RustboroCity_MissonGuest_Movement:
	walk_up
	step_end

RustboroCity_MissonGuest_TEXT_1:
	.string "有一股力量阻止我继续往前走……$"

BADGE05_TEXT:
	.string "捡到了一枚徽章。$"

RustboroCity_EventScript_01::
	setvar VAR_RustboroCity_EventScript_01, 1
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	applymovement 3 RustboroCity_EventScript_01_Movement_2
	waitmovement 3
	removeobject 3
	setflag FLAG_RustboroCity_EventScript_01
	end

RustboroCity_EventScript_01_Movement:
	emote_exclamation_mark
	step_end

RustboroCity_EventScript_01_Movement_2:
	walk_down
	walk_down
	walk_down
	step_end

RustboroCity_EventScript_ShiTi::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox RustboroCity_MissonGuest_TEXT_ShiTi MSGBOX_DEFAULT
	removeobject 2
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_ShiTi_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	msgbox RustboroCity_MissonGuest_TEXT_ShiTi_2 MSGBOX_DEFAULT
	closemessage
	hidenpc2
	hidemonpic
	setflag FLAG_RustboroCity_EventScript_ShiTi
	end

RustboroCity_MissonGuest_TEXT_ShiTi:
	.string "这是人的骨头么……$"

RustboroCity_MissonGuest_TEXT_ShiTi_2:
	.string "诶？刚刚是我眼花么……$"

RustboroCity_EventScript_ShiTi_Movement:
	emote_exclamation_mark
	step_end

RustboroCity_NPC_1::
	shownpcpic2 4, 208, 127, 0
	msgbox RustboroCity_NPCMSG_1 MSGBOX_DEFAULT
	closemessage
	hidenpc2
	setflag 0x33
	removeobject 4
	end

RustboroCity_NPCMSG_1:
	.string "宝宝乖，看，\n雨停了就有彩虹了……\l我们回家好不好？$"

