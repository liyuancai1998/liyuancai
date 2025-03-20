NewGame_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, NewGame_OnEnter
	.byte 0

NewGame_OnEnter:
	map_script_2 VAR_UNUSED_0x404E, 0, FuckThisTrigger
	.2byte 0

FuckThisTrigger:
	lock
	faceplayer
	fadescreen FADE_TO_BLACK
	givemon SPECIES_PIKACHU 20, \
		isShiny=1
	msgbox NewGame_Text_FADE_TO_BLACK MSGBOX_DEFAULT
	closemessage
	fadescreen FADE_FROM_BLACK
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER, Player_Movement
	waitmovement 0
	msgbox NewGame_Text_SeaFullOfLife MSGBOX_DEFAULT
	closemessage
	release
	setvar VAR_UNUSED_0x404E, 1
	end

Player_Movement:
	emote_question_mark
	delay_16
	step_end

blackscreentext:
	.string "彼岸花绽放之夜\n在记忆的灰烬中寻找萤火……$"

NewGame_Text_FADE_TO_BLACK:
	.string "好黑……$"

NewGame_Text_SeaFullOfLife:
    .string "这是哪儿？\n我的名字……\p什么都想不起来……$"


Event_NewGame::
	fadescreen FADE_TO_WHITE
	delay 60
	fadescreen FADE_TO_BLACK
	delay 60
	blacktext 0xe0, 50, blackscreentext
	closeblacktext
	delay 60
	PlaySE(SE_M_DIVE)
	warpsilent MAP_ROUTE108, 14, 9	
	end
