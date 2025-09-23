SlateportCity_House_MapScripts::
	map_script MAP_SCRIPT_ON_WARP_INTO_MAP_TABLE, Guanzhu_House_OnEnter
	.byte 0

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
	msgbox ChunYu_MSG_5, MSGBOX_DEFAULT
	hidenpc2
	closemessage
	removeobject 1
	setflag FLAG_GUANZHU_02
	end

ChunYu_MSG_5:
	.string "灵魂记录:\n晓暄的脸色看着好像有点不对劲，\l看她一路慌忙的\l跑回晨曦镇的家里了，\l是发生了什么吗？$"
