Route103_MapScripts::
	.byte 0

Route103_1::
	setrespawn HEAL_LOCATION_ROUTE103
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route103_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	setvar VAR_ROUTE133_STATE, 1
	end

Route103_MSG_1:
	.string "咦？这是哪儿？$"

Route103_2::
	applymovement 2, Route103_Move_1
	waitmovement 2
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route103_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 2
	setflag FLAG_UNUSED_0x26A
	setvar VAR_ROUTE134_STATE, 1
	end

Route103_MSG_2:
	.string "凯伊……$"

Route103_Move_1:
	walk_right
	walk_right
	walk_right
	walk_right
	step_end

Route103_3::
	applymovement OBJ_EVENT_ID_PLAYER Player_Movement_4
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route103_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	addobject 3, MAP_ROUTE103
	setobjectxy 3, 42, 9
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER Route103_Move_2
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, Route103_MSG_4
	closeblacktext
	removeobject 3
	setvar VAR_UNUSED_0x4083, 1
	setflag FLAG_UNUSED_0x26B
	fadescreen FADE_FROM_BLACK
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route103_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	end

Route103_MSG_3::
	.string "这里究竟是……$"

Route103_Move_2:
	emote_exclamation_mark
	delay_16
	delay_16
	delay_16
	walk_right
	walk_right
	step_end

Route103_MSG_4:
	.string "凯伊:启明星……\n……………………\l约定…………$"

Route103_4::
	delay 60
	faceplayer
	shownpc 1, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Kaiyi_MSG
	msgbox Route103_MSG_6 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, TRAINER_KAIYI, 1, Route103_MSG_6, Route103_MSG_7, Route103_Kaiyi_AfterBattle
	end

Route103_MSG_6:
	.string "……………………\n……………………$"

Route103_MSG_7:
	.string "我这是怎么了……$"

Route103_Kaiyi_AfterBattle:
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, Route103_MSG_8
	closeblacktext
	removeobject 3
	setflag FLAG_UNUSED_0x26B
	warpsilent MAP_NEW_MAP1, 13, 41
	fadescreen FADE_FROM_BLACK
	end

Route103_MSG_8:
	.string "周围的景象渐渐消失了……$"

Route103_3_2::
	applymovement OBJ_EVENT_ID_PLAYER Player_Movement_4
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route103_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	addobject 3, MAP_ROUTE103
	setobjectxy 3, 42, 9
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER Route103_Move_3
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, Route103_MSG_4
	closeblacktext
	removeobject 3
	setvar VAR_UNUSED_0x4083, 1
	setflag FLAG_UNUSED_0x26B
	fadescreen FADE_FROM_BLACK
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route103_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	end	

Route103_Move_3:
	emote_exclamation_mark
	delay_16
	delay_16
	delay_16
	walk_right
	walk_right
	walk_down
	face_right
	step_end

Route103_3_3::
	applymovement OBJ_EVENT_ID_PLAYER Player_Movement_4
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route103_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	addobject 3, MAP_ROUTE103
	setobjectxy 3, 42, 9
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER Route103_Move_4
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, Route103_MSG_4
	closeblacktext
	removeobject 3
	setvar VAR_UNUSED_0x4083, 1
	setflag FLAG_UNUSED_0x26B
	fadescreen FADE_FROM_BLACK
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Route103_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	end	

Route103_Move_4:
	emote_exclamation_mark
	delay_16
	delay_16
	delay_16
	walk_right
	walk_right
	walk_up
	face_right
	step_end

Route103_Scripts::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Rest_MSG MSGBOX_DEFAULT
	hidenamebox
	closemessage
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	playfanfare MUS_HEAL
	waitfanfare
	special HealPlayerParty
	setrespawn HEAL_LOCATION_ROUTE103
	fadescreen FADE_FROM_BLACK
	end

