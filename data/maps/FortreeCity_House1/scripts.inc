FortreeCity_House1_MapScripts::
	.byte 0

FortreeCity_House1_EventScript_Trader::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG_ZL
	msgbox FortreeCity_House1_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	closemessage
	hidenpc2
	removeobject 1
	setflag FLAG_UNUSED_0x26F
	end

FortreeCity_House1_MSG_1:
	.string "暗古之神在上，\n守护之灵鉴之！\l今日，\l我们将选出十年来\l最荣耀的两位使者，\l前往神国，\l换取我等十年的安宁。$"

