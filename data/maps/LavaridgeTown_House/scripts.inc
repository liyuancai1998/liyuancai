LavaridgeTown_House_MapScripts::
	.byte 0

LavaridgeTown_House_EventScript_Zigzagoon::
	lock
	faceplayer
	waitse
	playmoncry SPECIES_ZIGZAGOON, CRY_MODE_NORMAL
	msgbox LavaridgeTown_House_Text_Zigzagoon, MSGBOX_DEFAULT
	waitmoncry
	setflag FLAG_TEMP_1
	removeobject 2
	release
	end

LavaridgeTown_House_Text_Zigzagoon:
    .string "蛇纹熊：噗休！$"

LavaridgeTown_House_EventScript_SIGN::
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_House_MSG MSGBOX_AUTOCLOSE
	hidenpc2
	end

LavaridgeTown_House_MSG:
	.string "凯伊的笔记:\n我不能原谅琰星\l对洛汐的所作所为……$"

LavaridgeTown_House_EventScript_2::
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_House_MSG_2 MSGBOX_AUTOCLOSE
	hidenpc2
	removeobject 1
	setflag 0x36
	end

LavaridgeTown_House_MSG_2:
	.string "为什么我的孙子会被选中……$"

