NewGame_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, NewGame_OnEnter
	.byte 0

NewGame_OnEnter:
	map_script_2 VAR_UNUSED_0x404E, 0, FuckThisTrigger_CG
	.2byte 0

FuckThisTrigger_CG:
	delay 60
	fadescreen FADE_TO_BLACK
	setvar 0x8004 1
	special ShowCG
	waitstate
	fadescreen FADE_TO_BLACK
	delay 60
	blacktext 0xe0, 50, blackscreentext
	closeblacktext
	givemon SPECIES_PIKACHU, 20, ITEM_LIGHT_BALL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_SURF, MOVE_THUNDERBOLT, MOVE_THUNDER, MOVE_VOLT_SWITCH, FALSE
	delay 60
	setflag B_FLAG_NO_ESCAPE_WILD
	setvar VAR_EVENT_COUNTER, 0
	PlaySE(SE_M_DIVE)
	warpsilent MAP_ROUTE108, 14, 9
	end

FuckThisTrigger:
	lock
	faceplayer
	fadescreen FADE_TO_BLACK
	givemon SPECIES_PIKACHU, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, MOVE_SURF, 0, 0, 0, TRUE
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox NewGame_Text_FADE_TO_BLACK MSGBOX_DEFAULT
	closemessage
	fadescreen FADE_FROM_BLACK
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER, Player_Movement
	waitmovement 0
	msgbox NewGame_Text_SeaFullOfLife MSGBOX_DEFAULT
	closemessage
	hidenpc2
	hidemonpic
	release
	setvar VAR_UNUSED_0x404E, 1
	end

Player_Movement:
	emote_question_mark
	delay_16
	step_end

blackscreentext:
	.string "“有些约定，\n比死亡更沉重，\l比记忆更锋利，\l比遗忘更疼痛\p当启明星坠落时，\n我们终将明白，\l最深的黑暗，\l往往来自最明亮的地方。$"

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
