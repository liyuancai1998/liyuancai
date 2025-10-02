SlateportCity_House_2F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, SlateportCity_OnEnter_Guanzhu
	.byte 0

SlateportCity_OnEnter_Guanzhu:
	call_if_set FLAG_UNUSED_0x02C, SlateportCity_Guanzhu_Trigger
	setflag FLAG_UNUSED_0x02D
	end

SlateportCity_Guanzhu_Trigger:
	clearflag FLAG_UNUSED_0x02D
	end

SlateportCity_Guanzhu_Event::
	shownpcpic2 4, 208, 127, 0
	msgbox SlateportCity_Guanzhu_MSG MSGBOX_DEFAULT
	closemessage
	hidenpc2
	setflag FLAG_UNUSED_0x02D
	removeobject 1
	end

SlateportCity_Guanzhu_MSG:
	.string "灵魂记录:\n当初就不该告诉她\l十年前的那件事……$"

