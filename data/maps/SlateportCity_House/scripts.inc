SlateportCity_House_MapScripts::
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, Guanzhu_House_OnEnter
	map_script MAP_SCRIPT_ON_TRANSITION, SlateportCity_House_Scripts_1
	.byte 0

SlateportCity_House_Scripts_1:
	call_if_set FLAG_UNUSED_0x044, SlateportCity_House_Scripts_2
	setflag FLAG_UNUSED_0x054
	end

SlateportCity_House_Scripts_2:
	call_if_set FLAG_UNUSED_0x055, SlateportCity_House_Scripts_3
	clearflag FLAG_UNUSED_0x054
	end

SlateportCity_House_Scripts_3:
	setflag FLAG_UNUSED_0x054
	end

SlateportCity_House_Scripts_4::
	namebox xiaoxuan_MSG
	shownpc 2, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox SlateportCity_House_MSG_2, MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	delay 60
	namebox Zhenzhang_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox SlateportCity_House_MSG_1, MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	removeobject 2
	removeobject 3
	delay 60
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox SlateportCity_House_MSG_3, MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, SlateportCity_House_MSG_4
	closeblacktext
	fadescreen FADE_FROM_BLACK
	setflag FLAG_UNUSED_0x054
	setflag FLAG_UNUSED_0x055
	end

Zhenzhang_MSG:
	.string "镇长$"

SlateportCity_House_MSG_4:
	.string "也就是说……\n在我那一期的祭祀的再上一期，\l选中的其实是我妈妈吗？\l然后我妈妈把名单改成了\l晓暄的妈妈的名字……\l怎么会这样……$"

SlateportCity_House_MSG_3:
	.string "什么意思？\n…………\l…………$"

SlateportCity_House_MSG_2:
	.string "呜呜呜……\n为什么我的妈妈要被选为祭品……$"

SlateportCity_House_MSG_1:
	.string "都怪我没有及时发现名单被改了……\n晓暄，其实这次被选中的\l不是你妈妈，而是洛曼……$"

Guanzhu_House_OnEnter:
	map_script_2 VAR_EVER_GRANDE_CITY_STATE, 0, Guanzhu_Trigger
	.2byte 0

Guanzhu_Trigger:
	checkflag FLAG_GUANZHU_01
	goto_if_ne Hide_Guanzhu
	showobjectat 1, MAP_SLATEPORT_CITY_HOUSE
	end

Hide_Guanzhu:
	hideobjectat 1, MAP_SLATEPORT_CITY_HOUSE
	end

ChunYu_GuanZhu_2::
	delay 60
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG
	msgbox ChunYu_MSG_5, MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	removeobject 1
	setflag FLAG_GUANZHU_02
	end

ChunYu_MSG_5:
	.string "晓暄的脸色看着好像有点不对劲，\n看她一路慌忙的\l跑回晨曦镇的家里了，\l是发生了什么吗？$"

Note_MSG:
	.string "灵魂$"

