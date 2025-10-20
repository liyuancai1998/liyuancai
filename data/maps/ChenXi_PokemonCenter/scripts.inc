ChenXi_PokemonCenter_MapScripts::
	.byte 0

Yinlang_battle::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, TRAINER_YINLANG, 1, gText_BrawlyDefeat, gText_BrawlyDefeat, Yinlang_AfterBattle
	end

Yinlang_AfterBattle:
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox gText_BrawlyDefeat_2 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	setflag FLAG_UNUSED_0x02E
	removeobject 1
	fadescreen FADE_TO_BLACK
	givemon SPECIES_MIGHTYENA, 20, ITEM_LIFE_ORB, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_PLAY_ROUGH, MOVE_SHADOW_SNEAK, MOVE_CRUNCH, MOVE_FIRE_FANG, FALSE
	blacktext 0xe0, 50, ChenXi_PokemonCenter_MSG_1
	closeblacktext
	fadescreen FADE_FROM_BLACK
	end

gText_BrawlyDefeat:
	.string "……$"

gText_BrawlyDefeat_2:
	.string "我在宝可梦中心治疗宝可梦，\n突然之间就被不知道\l从那里来的瘴气给……$"

ChenXi_PokemonCenter_MSG_1:
	.string "血祭银狼加入了队伍。$"

