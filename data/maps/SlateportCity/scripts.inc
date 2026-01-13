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
	namebox Route108_LuoXi
	msgbox ChunYu_MSG_1 MSGBOX_DEFAULT
	hidenamebox
	applymovement 1 MapEventScript_KaiYi_IntoPC
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER MapEventScript_KaiYi
	namebox Route108_LuoXi
	msgbox ChunYu_MSG_2 MSGBOX_DEFAULT
	hidenamebox
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
	namebox Route108_LuoXi
	msgbox ChunYu_MSG_4 MSGBOX_DEFAULT
	hidenamebox
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
	namebox Route108_LuoXi
	msgbox ChunYu_MSG_6 MSGBOX_DEFAULT
	hidenamebox
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
	.string "祭祀好像要开始了，\n妈妈不让我天黑后还在外面。$"

ChunYu_HealPlayerParty_Scripts::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Rest_MSG MSGBOX_DEFAULT
	hidenamebox
	closemessage
	hidenpc2
	hidemonpic
	checkflag FLAG_UNUSED_0x03C
	goto_if_eq ChunYu_HealPlayerParty_Loop
	fadescreen FADE_TO_BLACK
	playfanfare MUS_HEAL
	waitfanfare
	special HealPlayerParty
	setrespawn HEAL_LOCATION_SLATEPORT_CITY
	fadescreen FADE_FROM_BLACK
	end
ChunYu_HealPlayerParty_Loop:
	multichoice 20, 2, MULTI_SLATEPORT_HEAL_WARP, TRUE
	compare VAR_RESULT, 0
	goto_if_eq ChunYu_HealPlayerParty_Heal
	compare VAR_RESULT, 1
	goto_if_eq ChunYu_HealPlayerParty_WarpChenxi
	compare VAR_RESULT, 2
	goto_if_eq ChunYu_HealPlayerParty_WarpWuye
	compare VAR_RESULT, 3
	goto_if_eq ChunYu_HealPlayerParty_WarpLuoxia
	compare VAR_RESULT, 4
	goto_if_eq ChunYu_HealPlayerParty_Exit
	goto ChunYu_HealPlayerParty_Loop
ChunYu_HealPlayerParty_Heal:
	fadescreen FADE_TO_BLACK
	playfanfare MUS_HEAL
	waitfanfare
	special HealPlayerParty
	setrespawn HEAL_LOCATION_SLATEPORT_CITY
	fadescreen FADE_FROM_BLACK
	goto ChunYu_HealPlayerParty_Loop
ChunYu_HealPlayerParty_WarpChenxi:
	fadescreen FADE_TO_BLACK
	warp MAP_LITTLEROOT_TOWN, 29, 32
	waitstate
	fadescreen FADE_FROM_BLACK
	end
ChunYu_HealPlayerParty_WarpWuye:
	fadescreen FADE_TO_BLACK
	warp MAP_LAVARIDGE_TOWN, 4, 18
	waitstate
	fadescreen FADE_FROM_BLACK
	end
ChunYu_HealPlayerParty_WarpLuoxia:
	fadescreen FADE_TO_BLACK
	warp MAP_LILYCOVE_CITY, 32, 15
	waitstate
	fadescreen FADE_FROM_BLACK
	end
ChunYu_HealPlayerParty_Exit:
	end

