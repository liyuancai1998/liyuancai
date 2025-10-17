SlateportCity_House_2F_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, SlateportCity_OnEnter_Guanzhu
	.byte 0

SlateportCity_OnEnter_Guanzhu:
	call_if_set FLAG_UNUSED_0x02C, SlateportCity_Guanzhu_Trigger
	setflag FLAG_UNUSED_0x02D
	end

SlateportCity_Guanzhu_Trigger:
	call_if_set FLAG_UNUSED_0x1DE, SlateportCity_Guanzhu_Trigger_2
	clearflag FLAG_UNUSED_0x02D
	end

SlateportCity_Guanzhu_Trigger_2:
	setflag FLAG_UNUSED_0x02D
	end

SlateportCity_Guanzhu_Event::
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox SlateportCity_Guanzhu_MSG MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	setflag FLAG_UNUSED_0x02D
	setflag FLAG_UNUSED_0x1DE
	addvar VAR_EVENT_COUNTER, 1
	removeobject 1
	end

SlateportCity_Guanzhu_MSG:
	.string "当初就不该告诉她\l十年前的那件事……$"

