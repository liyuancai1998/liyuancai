LavaridgeTown_PokemonCenter_1F_MapScripts::
	.byte 0

Chansey_battle::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, TRAINER_NURSE, 1, Chansey_gText_BrawlyDefeat, Chansey_gText_BrawlyDefeat, Chansey_AfterBattle
	end

Chansey_AfterBattle:
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox Chansey_gText_BrawlyDefeat_2 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	setflag FLAG_UNUSED_0x02E
	removeobject 1
	setflag FLAG_UNUSED_0x1E3
	fadescreen FADE_TO_BLACK
	givemon SPECIES_CHANSEY, 20, ITEM_LIFE_ORB, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_PLAY_ROUGH, MOVE_SHADOW_SNEAK, MOVE_CRUNCH, MOVE_FIRE_FANG, FALSE
	blacktext 0xe0, 50, Chansey_PokemonCenter_MSG_1
	closeblacktext
	fadescreen FADE_FROM_BLACK
	end

Chansey_gText_BrawlyDefeat:
	.string "……$"

Chansey_gText_BrawlyDefeat_2:
	.string "吉利蛋无法治愈\n暗古神坛带来的瘴气……$"

Chansey_PokemonCenter_MSG_1:
	.string "血之吉利蛋加入了队伍。$"

