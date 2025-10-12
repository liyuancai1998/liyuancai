FortreeCity_DecorationShop_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, FortreeCity_DecorationShop_Check
	.byte 0

FortreeCity_DecorationShop_Check:
	call_if_set FLAG_UNUSED_0x03D, FortreeCity_DecorationShop_Scripts_1
	setflag FLAG_UNUSED_0x03E
	end

FortreeCity_DecorationShop_Scripts_1:
	clearflag FLAG_UNUSED_0x03E
	call_if_set FLAG_UNUSED_0x03F, FortreeCity_DecorationShop_Scripts_2
	end

FortreeCity_DecorationShop_Scripts_2:
	setflag FLAG_UNUSED_0x03E
	end

FortreeCity_DecorationShop_Scripts_3::
	namebox Kaiyi_MSG
	shownpc 1, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox FortreeCity_DecorationShop_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 1
	setflag FLAG_UNUSED_0x03E
	setflag FLAG_UNUSED_0x03F
	shownpcpic2 4, 208, 127, 0
	msgbox FortreeCity_DecorationShop_MSG_2 MSGBOX_AUTOCLOSE
	hidenpc2
	end

FortreeCity_DecorationShop_MSG_1:
	.string "可恶，是我被选上了，\n我该怎么办，洛汐……$"

FortreeCity_DecorationShop_MSG_2:
	.string "在他消失的地方有一把钥匙\n或许能开某个门的锁……$"

