LilycoveCity_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, LilycoveCity_Scripts_4
	.byte 0

LilycoveCity_Scripts_4:
	call_if_set FLAG_UNUSED_0x046, LilycoveCity_Scripts_4_1
	setflag FLAG_UNUSED_0x04B
	setvar VAR_ROUTE124_STATE, 1
	end

LilycoveCity_Scripts_4_1:
	call_if_set FLAG_UNUSED_0x04C, LilycoveCity_Scripts_4_2
	clearflag FLAG_UNUSED_0x04B
	setvar VAR_ROUTE124_STATE, 0
	end

LilycoveCity_Scripts_4_2:
	setflag FLAG_UNUSED_0x04B
	end

LilycoveCity_Scripts_5::
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox OldaleTown_MSG_8 MSGBOX_AUTOCLOSE
	hidenpc2
	hidemonpic
	hidenamebox
	fadescreen FADE_TO_BLACK
	removeobject 5
	removeobject 6
	setvar 0x8004 8
	special ShowCG
	waitstate
	setflag FLAG_UNUSED_0x04B
	setvar VAR_ROUTE124_STATE, 1
	setflag FLAG_UNUSED_0x04C
	end

OldaleTown_MSG_8:
	.string "晓暄和凯伊？$"


LilycoveCity_Scripts_1::
	lockall
	delay 60
	fadescreen FADE_TO_BLACK
	delay 60
	addobject 2, MAP_LILYCOVE_CITY
	setobjectxy 2, 18, 24
	addobject 1, MAP_LILYCOVE_CITY
	setobjectxy 1, 18, 25
	fadescreen FADE_FROM_BLACK
	namebox Kaiyi_MSG
	shownpc 1, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	namebox Kaiyi_MSG
	shownpc 1, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_WHITE
	removeobject 1
	removeobject 2
	setflag FLAG_UNUSED_0x03C
	setvar VAR_ROUTE113_STATE, 1
	fadescreen FADE_FROM_WHITE
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_8 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	end

LilycoveCity_MSG_8:
	.string "他说的秘密基地是哪儿……\n好像是暗古神坛附近？\l头好痛……$"

LilycoveCity_MSG_1:
	.string "我的皮卡丘学会十万伏特了！$"

Kaiyi_MSG:
	.string "凯伊$"

LilycoveCity_MSG_2:
	.string "恭喜你，不过我也很大的进步哦。$"

LilycoveCity_MSG_3:
	.string "是嘛？那来一场对决吧！\n我们秘密基地见。$"

LilycoveCity_Scripts_2::
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_7 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement OBJ_EVENT_ID_PLAYER, LilycoveCity_Move_1
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	namebox Yanxing_MSG
	shownpc 3, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_4 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	namebox Kaiyi_MSG
	shownpc 1, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_5 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	removeobject 3
	removeobject 4
	setflag FLAG_UNUSED_0x03D
	setvar 0x8004 3
	special ShowCG
	waitstate
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_6 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	setvar VAR_ROUTE114_STATE, 1
	end

LilycoveCity_Move_1:
	walk_right
	walk_right
	face_right
	step_end

Yanxing_MSG:
	.string "琰星$"

LilycoveCity_MSG_4:
	.string "我知道你想的什么，\n看她那诱人的身材\l是不是非常心动呢，\l只要你想的话，\l也可以爽一爽哦，\l跟我混以后机会多的是啊。\l而且不仅仅是她，\l还有更多的……$"

LilycoveCity_MSG_5:
	.string "凯伊:你什么意思？$"

LilycoveCity_MSG_6:
	.string "唔…\n这也是曾经发生过的事情么……$"

LilycoveCity_MSG_7:
	.string "是凯伊……还有个人是谁？$"

LilycoveCity_Scripts_3::
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_7 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	delay 60
	namebox Yanxing_MSG
	shownpc 3, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_4 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	namebox Kaiyi_MSG
	shownpc 1, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_5 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	removeobject 3
	removeobject 4
	setflag FLAG_UNUSED_0x03D
	setvar 0x8004 3
	special ShowCG
	waitstate
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_6 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	setvar VAR_ROUTE114_STATE, 1
	end

LilycoveCity_Scripts_6::
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_MSG_9 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement OBJ_EVENT_ID_PLAYER LilycoveCity_Move_2
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	applymovement OBJ_EVENT_ID_PLAYER PlayersHouse_1F_Move_3
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	applymovement OBJ_EVENT_ID_CAMERA LilycoveCity_Move_3
	waitmovement OBJ_EVENT_ID_CAMERA



yx:宝贝儿，你的身材真润啊，屁股翘高点……
???:讨厌……我们这样被洛汐知道怎么办？
yx:没事的，我早就玩腻了，你的身体比她好多了……
???:哼……
