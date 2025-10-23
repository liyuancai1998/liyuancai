FortreeCity_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, FortreeCity_Scripts_X
	.byte 0

FortreeCity_Scripts_X:
	call FortreeCity_Scripts_1
	call FortreeCity_Scripts_9
	end

FortreeCity_Scripts_1:
	checkflag FLAG_UNUSED_0x040
	goto_if TRUE, FortreeCity_Scripts_2
	setflag FLAG_UNUSED_0x042
	setvar VAR_ROUTE120_STATE, 1
	return

FortreeCity_Scripts_2:
	checkflag FLAG_UNUSED_0x04D
	goto_if TRUE, FortreeCity_Scripts_5
	clearflag FLAG_UNUSED_0x042
	return

FortreeCity_Scripts_5:
	setflag FLAG_UNUSED_0x042
	return


FortreeCity_Scripts_9::
	checkflag FLAG_UNUSED_0x266
	goto_if TRUE, FortreeCity_Scripts_10
	setflag FLAG_UNUSED_0x267
	return

FortreeCity_Scripts_10:
	clearflag FLAG_UNUSED_0x267
	checkflag FLAG_UNUSED_0x268
	goto_if TRUE, FortreeCity_Scripts_11
	return

FortreeCity_Scripts_11:
	setflag FLAG_UNUSED_0x267
	return

FortreeCity_Scripts_3::
	setflag FLAG_UNUSED_0x04D
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement OBJ_EVENT_ID_PLAYER FortreeCity_Move_1
	waitmovement OBJ_EVENT_ID_PLAYER
	special SpawnCameraObject
	applymovement OBJ_EVENT_ID_CAMERA FortreeCity_Move_3
	waitmovement OBJ_EVENT_ID_CAMERA
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	removeobject 1
	addobject 2, MAP_FORTREE_CITY
	setobjectxy 2, 18, 18
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 4
	removeobject 5
	removeobject 6
	applymovement OBJ_EVENT_ID_CAMERA FortreeCity_Move_4
	waitmovement OBJ_EVENT_ID_CAMERA
	fadescreen FADE_FROM_BLACK
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_4 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement 3, FortreeCity_Move_2
	waitmovement 3
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox FortreeCity_MSG_5 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	removeobject 3
	setflag FLAG_UNUSED_0x042
	setvar VAR_ROUTE120_STATE, 1
	addvar VAR_EVENT_COUNTER, 1
	special RemoveCameraObject
	end

FortreeCity_MSG_1:
	.string "怎么这么多人？\n发生了什么事情……$"

FortreeCity_MSG_2:
	.string "站在山崖上的是晓暄？$"

FortreeCity_Move_1:
	walk_right
	walk_right
	walk_right
	step_end

FortreeCity_MSG_3:
	.string "啊！跳下来了！$"

FortreeCity_MSG_4:
	.string "这个人是之前遇到多次的\n……镇长。\l到底是发生了什么……$"

FortreeCity_Move_2:
	walk_left
	walk_left
	walk_left
	walk_left
	step_end

FortreeCity_Move_4:
	walk_down
	walk_down
	walk_down
	step_end

FortreeCity_MSG_5:
	.string "错的不是你，也不是洛汐，\n而是我……$"

FortreeCity_Move_3:
	walk_up
	walk_up
	walk_up
	step_end

FortreeCity_Scripts_4::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement OBJ_EVENT_ID_PLAYER FortreeCity_Move_5
	waitmovement OBJ_EVENT_ID_PLAYER
	special SpawnCameraObject
	applymovement OBJ_EVENT_ID_CAMERA FortreeCity_Move_3
	waitmovement OBJ_EVENT_ID_CAMERA
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	removeobject 1
	addobject 2, MAP_FORTREE_CITY
	setobjectxy 2, 18, 18
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 4
	removeobject 5
	removeobject 6
	applymovement OBJ_EVENT_ID_CAMERA FortreeCity_Move_4
	waitmovement OBJ_EVENT_ID_CAMERA
	fadescreen FADE_FROM_BLACK
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_4 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement 3, FortreeCity_Move_2
	waitmovement 3
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox FortreeCity_MSG_5 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	removeobject 3
	setvar VAR_ROUTE120_STATE, 1
	addvar VAR_EVENT_COUNTER, 1
	special RemoveCameraObject
	end

FortreeCity_Move_5:
	walk_right
	walk_right
	walk_right
	walk_up
	step_end	

FortreeCity_Scripts_6::
	namebox xiaoxuan_MSG
	shownpc 2, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox FortreeCity_MSG_6, MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	end

FortreeCity_MSG_6:
	.string "不要怪我……\n我没有错……\l我没有错……$"

FortreeCity_Scripts_7::
	checkflag FLAG_UNUSED_0x265
	goto_if TRUE, FortreeCity_Scripts_8
	applymovement OBJ_EVENT_ID_PLAYER, LilycoveCity_Move_3
	waitmovement OBJ_EVENT_ID_PLAYER
	namebox Route108_LuoXi
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox FortreeCity_MSG_7, MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	end

FortreeCity_MSG_7:
	.string "现在还不是去这里的时候……$"	

FortreeCity_Scripts_8:
	setvar VAR_ROUTE131_STATE, 1
	end

FortreeCity_Scripts_12::
	checkflag FLAG_UNUSED_0x269
	goto_if TRUE, FortreeCity_Scripts_13
	applymovement 7, FortreeCity_Move_6
	waitmovement 7
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox FortreeCity_MSG_8 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_9 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox FortreeCity_MSG_10 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_11 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox FortreeCity_MSG_12 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_13 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox FortreeCity_MSG_14 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_15 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox FortreeCity_MSG_16 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox FortreeCity_MSG_17 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox FortreeCity_MSG_18 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	setflag FLAG_UNUSED_0x269
	end

FortreeCity_Scripts_13:
	faceplayer
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox FortreeCity_MSG_19 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	end


FortreeCity_MSG_8:	
	.string "我早该想到那个就是GHOST，\n看来最近旅人失踪事件\l肯定也跟他有关了。$"

FortreeCity_MSG_9:
	.string "刚才那个人影……\n是凯伊……$"

FortreeCity_MSG_10:
	.string "凯伊？\n这不是另一个\l祭品的名字么？$"

FortreeCity_MSG_11:
	.string "冥帝，\n封印ghost的仪式是什么？\l只需要一男一女即可完成么？$"

FortreeCity_MSG_12:
	.string "按照从未失败过的传说来说，\n在祭坛由女方结束男方的生命，\l然后抱着他的遗体\l跃入深渊。$"

FortreeCity_MSG_13:
	.string "那么……这个仪式，\n由亡魂来完成也可以吗？$"

FortreeCity_MSG_14:
	.string "呃，这倒是闻所未闻，\n难道你想和凯伊……$"

FortreeCity_MSG_15:
	.string "嗯……\n虽然原本名单上不是我，\l但现在就让我和他去完成\l十年前没完成的事情吧……$"

FortreeCity_MSG_16:
	.string "也行，死马当活马医了，\n眼下也没别的办法，\l但是那个凯伊看起来有点奇怪，\l我看到的那团烟雾\l好像是GHOST的化身。$"

FortreeCity_MSG_17:
	.string "我知道的，\n我想我或许知道为什么\l他会变成那样。\l我有办法……\l冥帝，\l这里对你来说才是最危险的，\l离开这里吧，\l后面的事就交给我。$"

FortreeCity_MSG_18:
	.string "好，那暗古神坛的\n事情就拜托你了，\l为了不再有新的悲剧与灾难……$"

FortreeCity_MSG_19:
	.string "我会在这里停留一段时间，\n祝你好运。$"

FortreeCity_Scripts_14::
	checkflag FLAG_UNUSED_0x266
	goto_if FALSE, FortreeCity_Scripts_15
	checkflag FLAG_UNUSED_0x269
	goto_if TRUE, FortreeCity_Scripts_15
	applymovement OBJ_EVENT_ID_PLAYER, FortreeCity_Move_7
	waitmovement OBJ_EVENT_ID_PLAYER
	goto FortreeCity_Scripts_12
	end

FortreeCity_Scripts_15:
	setvar VAR_UNUSED_0x408B, 1
	end

FortreeCity_Move_6:
	face_right
	step_end

FortreeCity_Move_7:
	face_left
	step_end

FortreeCity_Scripts_16::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG_ZL
	msgbox FortreeCity_MSG_20 MSGBOX_AUTOCLOSE
	hidenamebox
	closemessage
	hidenpc2
	removeobject 8
	setflag FLAG_UNUSED_0x26E
	end

Note_MSG_ZL:
	.string "长老$"

FortreeCity_MSG_20:
	.string "孩子们，不要怨恨。\n你们的牺牲，\l将化作守护整个地区的壁垒。\p你们的名字会被刻在慰灵碑上，\n受后人世代香火。$"
