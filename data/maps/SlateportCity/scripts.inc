@ Note: LOCALID_SLATEPORT_ENERGY_GURU is a local id for this map used elsewhere. It's defined in event_objects.h

ChunYu_MapEventScript_KaiYi::
	shownpcpic2 0, 35, 83, 1
	msgbox ChunYu_MSG_1 MSGBOX_DEFAULT
	applymovement 1 MapEventScript_KaiYi_IntoPC
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER MapEventScript_KaiYi
	msgbox ChunYu_MSG_2 MSGBOX_DEFAULT
	waitmovement OBJ_EVENT_ID_PLAYER
	waitmovement 1
	closemessage
	removeobject 1
	hidenpc2
	setflag FLAG_removeKaiYi_1
	setvar VAR_ChunYu_KaiYi, 1
	end

ChunYu_MSG_1:
	.string "那个人是？$"

MapEventScript_KaiYi_IntoPC:
	walk_up
	walk_up
	step_end

MapEventScript_KaiYi:
	emote_exclamation_mark
	step_end

ChunYu_MSG_2:
	.string "喂！等等！$"


EventScript_RiverJump::
	applymovement OBJ_EVENT_ID_PLAYER, Player_JUMP_Movement_1
	waitmovement OBJ_EVENT_ID_PLAYER
	end

Player_JUMP_Movement_1:
	walk_up
	walk_up
	walk_up
	player_run_down
	player_run_down
	player_run_down
	jump_2_down
	jump_down
	step_end

EventScript_RiverJump_2::
	applymovement OBJ_EVENT_ID_PLAYER, Player_JUMP_Movement_2
	waitmovement OBJ_EVENT_ID_PLAYER
	end

Player_JUMP_Movement_2:
	walk_down
	walk_down
	player_run_up
	player_run_up
	jump_up
	jump_2_up
	step_end

SlateportCity_MapScripts::
	.byte 0

ChunYu_GuanZhu_1::
	delay 60
	applymovement OBJ_EVENT_ID_CAMERA, GuanZhu_1_Movement_1
	waitmovement OBJ_EVENT_ID_CAMERA
	applymovement OBJ_EVENT_ID_PLAYER, GuanZhu_1_Movement_2
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	msgbox ChunYu_MSG_4 MSGBOX_DEFAULT
	fadescreen FADE_TO_BLACK
	delay 60
	blacktext 0xe0, 50, ChunYu_MSG_3
	closeblacktext
	setvar VAR_GuanZhu_1, 1
	warpsilent MAP_ROUTE104, 19, 14
	end

ChunYu_MSG_4:
	.string "你好?\l(伸出手触摸他的后背)$"

ChunYu_MSG_3:
	.string "我想回去……\n但我已经回不去了。$"
	
GuanZhu_1_Movement_1:
	walk_up
	walk_up
	walk_up
	step_end

GuanZhu_1_Movement_2:
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	walk_up
	face_right
	step_end