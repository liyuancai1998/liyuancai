SlateportCity_NameRatersHouse_MapScripts::
	.byte 0

SlateportCity_NameRatersHouse_EventScript_1::
	msgbox SlateportCity_MSG_1 MSGBOX_DEFAULT
	removeobject 1
	setflag FLAG_UNUSED_0x031
	end

SlateportCity_MSG_1:
	.string "灵魂记录:\n还好选中的不是我……$"