NewMap1_MapScripts::
	.byte 0

NewMap1_1::
	delay 60
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox NewMap1_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	faceplayer
	delay 60
	shownpc 1, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Kaiyi_MSG
	msgbox NewMap1_MSG_5 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	compare VAR_EVENT_COUNTER, 15
	goto_if_eq EventScript_AllEventsComplete
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox NewMap1_MSG_6 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, NewMap1_MSG_7
	closeblacktext
	playbgm MUS_RG_VERMILLION, 1
	setvar 0x8004, 14
	special ShowCG
	waitstate
	end

NewMap1_MSG_1:
	.string "好久不见……凯伊……$"

NewMap1_MSG_5:
	.string "洛汐……是你么……$"

NewMap1_MSG_6:
	.string "就这样吧……大家都累了，\n完成十年前没完成的祭祀吧……$"

NewMap1_MSG_7:
	.string "洛汐将凯伊推下了\n暗古神坛的深渊……\l随后自己也跳了下去……$"

EventScript_AllEventsComplete:
	playbgm MUS_RG_BERRY_PICK, 1
	fadescreen FADE_TO_BLACK
	setvar 0x8004 11
	special ShowCG
	waitstate
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, NewMap1_MSG_8
	closeblacktext
	warpsilent MAP_MOSSDEEP_CITY, 18, 25
	end

NewMap1_MSG_8:
	.string "洛汐抱起凯伊，\n纵身一跃，\l跳入了暗古神坛的深渊之中……$"

