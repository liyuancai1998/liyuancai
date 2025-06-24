@ NOTE: Route 104's sail to Dewford script references local IDs from Dewford's map.
@  These are labeled in DewfordTown/scripts.inc


Route104_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route104_OnFrame
	.byte 0

New_Route_001_001:
	applymovement OBJ_EVENT_ID_PLAYER Player_Movement_4
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	shownpc 0, 200, 83
	setvar VAR_ROUTE104_001, 1
	msgbox Route104_001_text MSGBOX_DEFAULT
	closemessage
	hidemonpic
	end

Route104_001_text:
	.string "这……是哪儿?$"


Route104_OnFrame:
	map_script_2 VAR_ROUTE104_001, 0, New_Route_001_001
	.2byte 0

Route104_002_trigger::
	setvar VAR_ROUTE104_002, 1
	delay 60
	special SpawnCameraObject
	applymovement OBJ_EVENT_ID_CAMERA, Route104_002_movement
	waitmovement OBJ_EVENT_ID_CAMERA
	msgbox Route104_002_text MSGBOX_DEFAULT
	closemessage
	fadescreen FADE_TO_WHITE
	removeobject 3
	fadescreen FADE_FROM_WHITE
	applymovement OBJ_EVENT_ID_CAMERA, Route104_002_movement_2
	waitmovement OBJ_EVENT_ID_CAMERA
	special RemoveCameraObject
	setflag FLAG_ROUTE104_01
	end


Route104_002_text:
	.string "大海的外面有什么呢?\n我想出去看看，但我父亲说我太小了……$"

Route104_002_movement:
	walk_down
	walk_down
	walk_down
	walk_right
	walk_right
	walk_right
	walk_right
	walk_right
	step_end

Route104_002_movement_2:
	walk_left
	walk_left
	walk_left
	walk_left
	walk_left
	walk_up
	walk_up
	walk_up
	step_end

Route104_003_oldman::
	lock
	shownpcpic2 0, 35, 83, 1
	msgbox Route104_003_text MSGBOX_DEFAULT
	closemessage
	hidenpc2
	release
	end

Route104_003_text:
	.string "(这好像是离开这座岛的小船。)$"



Battle_test1::
	trainerbattle_single TRAINER_SIDNEY, Route104_003_text, Route104_002_text
	msgbox Route110_Text_TimmyPostBattle, MSGBOX_AUTOCLOSE
	end

Battle_test2::
	trainerbattle_single TRAINER_WALLACE, Route104_003_text, Route104_002_text
	msgbox Route110_Text_TimmyPostBattle, MSGBOX_AUTOCLOSE
	end

Battle_test3::
	trainerbattle_single TRAINER_BRENDAN_ROUTE_110_TREECKO, Route104_003_text, Route104_002_text
	msgbox Route110_Text_TimmyPostBattle, MSGBOX_AUTOCLOSE
	end
