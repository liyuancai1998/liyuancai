Route107_MapScripts::
	.byte 0

Route107_EventScript_1::
	namebox xiaoxuan_MSG
	shownpc 2, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox Route107_MSG_1, MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 1
	setflag FLAG_UNUSED_0x272
	addvar VAR_EVENT_COUNTER, 1
	end

Route107_MSG_1:
	.string "我会为你报仇的……$"

Route107_EventScript_2::
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox Route107_MSG_2, MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	removeobject 2
	setflag FLAG_UNUSED_0x273
	end

Route107_MSG_2:
	.string "那孩子还那么年轻……$"

Route107_EventScript_3::
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox Route107_MSG_3, MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	removeobject 3
	setflag FLAG_UNUSED_0x274
	end

Route107_MSG_3:
	.string "这不是谋杀，\n是神圣的归化。\l你们的灵魂\l将与这片土地同在，\l成为GHOST永恒的沉眠曲。$"

