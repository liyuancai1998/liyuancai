FortreeCity_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, FortreeCity_Scripts_1
	.byte 0

FortreeCity_Scripts_1:
	call_if_set FLAG_UNUSED_0x040, FortreeCity_Scripts_2
	setflag FLAG_UNUSED_0x042
	setvar VAR_ROUTE120_STATE, 1
	end

FortreeCity_Scripts_2:
	call_if_set FLAG_UNUSED_0x04D, FortreeCity_Scripts_5
	clearflag FLAG_UNUSED_0x042
	end

FortreeCity_Scripts_5:
	setflag FLAG_UNUSED_0x042
	end

FortreeCity_Scripts_3::
	setflag FLAG_UNUSED_0x04D
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement OBJ_EVENT_ID_PLAYER FortreeCity_Move_1
	waitmovement OBJ_EVENT_ID_PLAYER
	special SpawnCameraObject
	applymovement OBJ_EVENT_ID_CAMERA FortreeCity_Move_3
	waitmovement OBJ_EVENT_ID_CAMERA
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	removeobject 1
	addobject 2, MAP_FORTREE_CITY
	setobjectxy 2, 18, 18
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 4
	removeobject 5
	removeobject 6
	applymovement OBJ_EVENT_ID_CAMERA FortreeCity_Move_4
	waitmovement OBJ_EVENT_ID_CAMERA
	fadescreen FADE_FROM_BLACK
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_4 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement 3, FortreeCity_Move_2
	waitmovement 3
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox FortreeCity_MSG_5 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	removeobject 3
	setflag FLAG_UNUSED_0x042
	setvar VAR_ROUTE120_STATE, 1
	special RemoveCameraObject
	end

FortreeCity_MSG_1:
	.string "怎么这么多人？\n发生了什么事情……$"

FortreeCity_MSG_2:
	.string "站在山崖上的是晓暄？$"

FortreeCity_Move_1:
	walk_right
	walk_right
	walk_right
	step_end

FortreeCity_MSG_3:
	.string "啊！跳下来了！$"

FortreeCity_MSG_4:
	.string "这个人是之前遇到多次的\n……镇长。\l到底是发生了什么……$"

FortreeCity_Move_2:
	walk_left
	walk_left
	walk_left
	walk_left
	step_end

FortreeCity_Move_4:
	walk_down
	walk_down
	walk_down
	step_end

FortreeCity_MSG_5:
	.string "错的不是你，也不是洛汐，\n而是我……$"

FortreeCity_Move_3:
	walk_up
	walk_up
	walk_up
	step_end

FortreeCity_Scripts_4::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement OBJ_EVENT_ID_PLAYER FortreeCity_Move_5
	waitmovement OBJ_EVENT_ID_PLAYER
	special SpawnCameraObject
	applymovement OBJ_EVENT_ID_CAMERA FortreeCity_Move_3
	waitmovement OBJ_EVENT_ID_CAMERA
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	removeobject 1
	addobject 2, MAP_FORTREE_CITY
	setobjectxy 2, 18, 18
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 4
	removeobject 5
	removeobject 6
	applymovement OBJ_EVENT_ID_CAMERA FortreeCity_Move_4
	waitmovement OBJ_EVENT_ID_CAMERA
	fadescreen FADE_FROM_BLACK
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_4 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement 3, FortreeCity_Move_2
	waitmovement 3
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox FortreeCity_MSG_5 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	removeobject 3
	setvar VAR_ROUTE120_STATE, 1
	special RemoveCameraObject
	end

FortreeCity_Move_5:
	walk_right
	walk_right
	walk_right
	walk_up
	step_end	

FortreeCity_Scripts_6::
	namebox xiaoxuan_MSG
	shownpc 2, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox FortreeCity_MSG_6, MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	end

FortreeCity_MSG_6:
	.string "不要怪我……\n我没有错……\l我没有错……$"

