SlateportCity_NameRatersHouse_MapScripts::
	.byte 0

SlateportCity_NameRatersHouse_EventScript_1::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG
	msgbox SlateportCity_MSG_1 MSGBOX_DEFAULT
	hidenamebox
	closemessage
	hidenpc2
	removeobject 1
	setflag FLAG_UNUSED_0x031
	end

SlateportCity_MSG_1:
	.string "还好选中的不是我……$"

