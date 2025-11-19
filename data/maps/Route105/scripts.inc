Route105_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, Route105_Script_1
	.byte 0

Route105_Script_1:
	call_if_set FLAG_UNUSED_0x03D, Route105_Script_2
	setflag FLAG_UNUSED_0x275
	setvar VAR_UNUSED_0x4091, 1
	end

Route105_Script_2:
	call_if_set FLAG_UNUSED_0x276, Route105_Script_3
	clearflag FLAG_UNUSED_0x275
	setvar VAR_UNUSED_0x4091, 0
	end

Route105_Script_3:
	setflag FLAG_UNUSED_0x03D
	setvar VAR_UNUSED_0x4091, 1
	end

Route105_Script_4::
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER MapEventScript102_1
	waitmovement OBJ_EVENT_ID_PLAYER
	applymovement OBJ_EVENT_ID_PLAYER Route105_Move_1
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	fadescreen FADE_TO_BLACK
	removeobject 1
	removeobject 2
	setflag FLAG_UNUSED_0x275
	setflag FLAG_UNUSED_0x276
	setvar 0x8004, 15
	special ShowCG
	waitstate
	setvar VAR_UNUSED_0x4091, 1
	end

Route105_Move_1:
	walk_right
	walk_right
	walk_right
	walk_right
	walk_right
	walk_right
	walk_up
	walk_up
	step_end


