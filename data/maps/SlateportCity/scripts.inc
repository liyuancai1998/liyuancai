@ Note: LOCALID_SLATEPORT_ENERGY_GURU is a local id for this map used elsewhere. It's defined in event_objects.h

SlateportCity_MapScripts::
	map_script MAP_SCRIPT_ON_LOAD, SlateportCity_OnEnter
	.byte 0

SlateportCity_OnEnter:
	call_if_set FLAG_GUANZHU_02, True_Tile
	end

True_Tile:
	setmetatile 23, 48, 1, 0
	return

ChunYu_MapEventScript_KaiYi::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
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
	hidemonpic
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

ChunYu_GuanZhu_1::
	delay 60
	special SpawnCameraObject
	applymovement OBJ_EVENT_ID_CAMERA, GuanZhu_1_Movement_1
	waitmovement OBJ_EVENT_ID_CAMERA
	applymovement OBJ_EVENT_ID_PLAYER, GuanZhu_1_Movement_2
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox ChunYu_MSG_4 MSGBOX_DEFAULT
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	removeobject 2
	delay 60
	blacktext 0xe0, 50, ChunYu_MSG_3
	closeblacktext
	setflag FLAG_GUANZHU_01
	setvar VAR_GuanZhu_1, 1
	fadescreen FADE_FROM_BLACK
	delay 60
	applymovement OBJ_EVENT_ID_PLAYER MapEventScript_KaiYi
	playse SE_PIN
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox ChunYu_MSG_6 MSGBOX_DEFAULT
	hidenpc2
	hidemonpic
	closemessage
	special RemoveCameraObject
	end

ChunYu_MSG_4:
	.string "请问……?\l(伸出手触摸他的后背)$"

ChunYu_MSG_3:
	.string "已经无法挽回了，\n这是对我的惩罚……$"
	
GuanZhu_1_Movement_1:
	walk_up
	walk_up
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
	face_right
	step_end

ChunYu_MSG_6:
	.string "消失了?\n他好像是\l刚刚在森林里看到的……$"

ChunYu_NPC_1::
	shownpcpic2 4, 208, 127, 0
	msgbox ChunYu_MSG_7 MSGBOX_DEFAULT
	hidenpc2
	closemessage
	removeobject 3
	setflag 0x34
	end

ChunYu_MSG_7:
	.string "祭典好像要开始了，\n妈妈不让我天黑后还在外面。$"

