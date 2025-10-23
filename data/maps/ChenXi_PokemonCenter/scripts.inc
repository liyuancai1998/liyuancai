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

ChenXi_PokemonCenter_1::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG_BIJI
	msgbox ChenXi_PokemonCenter_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	closemessage
	hidenpc2
	end

ChenXi_PokemonCenter_MSG_2:
	.string "……仪式之核心，\n在于‘真实的奉献’与‘爱的终结’。\l须由女方，以祭坛之石刃，\l亲手终结男方的生命。\l此一击，非为恨，\l实为极致之爱\l与其同赴使命之决绝。\p若心存犹豫、\n怨恨或被外力所迫，\l则仪式之力将逆流……$"
	
