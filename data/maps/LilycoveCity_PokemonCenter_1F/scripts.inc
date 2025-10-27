.set LOCALID_NURSE, 1

LilycoveCity_PokemonCenter_1F_MapScripts::
	.byte 0

LilycoveCity_PokemonCenter_1F_1::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG_BIJI
	msgbox LilycoveCity_PokemonCenter_1F_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	closemessage
	hidenpc2
	end

LilycoveCity_PokemonCenter_1F_MSG_1:
	.string "……二人之遗体，\n需共同沉于神坛深渊，\l此为‘同归’。\p以此向GHOST展示，\n世间最纯粹之联结亦可被其拆散，\l满足其怨念，\l使其重归沉寂。\l若二人未能‘同归’，或一方缺失，\l则GHOST将破封而出，\l视其为彻底的背叛与嘲弄，\l灾祸将降临大地……$"

LilycoveCity_PokemonCenter_1F_2::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG
	msgbox LilycoveCity_PokemonCenter_1F_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	closemessage
	hidenpc2
	removeobject 1
	setflag FLAG_UNUSED_0x271
	end

LilycoveCity_PokemonCenter_1F_MSG_2:
	.string "我们什么都不知道，\n我们只是……遵从传统。$"

