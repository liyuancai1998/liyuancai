ChenXi_PokemonCenter_MapScripts::
	.byte 0

Yinlang_battle::
	trainerbattle TRAINER_BATTLE_SINGLE, TRAINER_YINLANG, 1, gText_BrawlyDefeat, gText_BrawlyDefeat_2
	setflag FLAG_UNUSED_0x02E
	removeobject 1
	end

gText_BrawlyDefeat:
	.string "……$"

gText_BrawlyDefeat_2:
	.string "灵魂记录:\n我在宝可梦中心治疗宝可梦，\l突然之间就被不知道从那里来的瘴气给……$"