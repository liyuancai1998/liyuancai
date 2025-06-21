RustboroCity_MapScripts::
	.byte 0

RustboroCity_EventScript_BADGE05::
	setflag FLAG_BADGE05_GET
	msgbox BADGE05_TEXT MSGBOX_DEFAULT
	closemessage
	removeobject 1
	setflag FLAG_BADGE05
	end

RustboroCity_MissonGuest::
	checkflag FLAG_RustboroCity_EventScript_ShiTi
	goto_if TRUE, RustboroCity_MissonGuest_Over
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_MissonGuest_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	msgbox RustboroCity_MissonGuest_TEXT_1 MSGBOX_DEFAULT
	closemessage
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
	msgbox RustboroCity_MissonGuest_TEXT_ShiTi MSGBOX_DEFAULT
	removeobject 2
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_ShiTi_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	msgbox RustboroCity_MissonGuest_TEXT_ShiTi_2 MSGBOX_DEFAULT
	closemessage
	setflag FLAG_RustboroCity_EventScript_ShiTi
	end

RustboroCity_MissonGuest_TEXT_ShiTi:
	.string "这是谁的尸骨？$"

RustboroCity_MissonGuest_TEXT_ShiTi_2:
	.string "消失了？是我眼花了么……$"

RustboroCity_EventScript_ShiTi_Movement:
	emote_exclamation_mark
	step_end
