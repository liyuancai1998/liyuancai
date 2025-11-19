ChenXi_PokemonCenter_MapScripts::
	.byte 0

ChenXi_PokemonCenter_2::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG
	msgbox gText_BrawlyDefeat_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	removeobject 1
	setflag FLAG_UNUSED_0x02E
	end

gText_BrawlyDefeat_2:
	.string "我在宝可梦中心治疗宝可梦，\n突然之间就被不知道\l从那里来的瘴气给……$"

ChenXi_PokemonCenter_1::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG_BIJI
	msgbox ChenXi_PokemonCenter_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	end

ChenXi_PokemonCenter_MSG_2:
	.string "……仪式之核心，\n在于‘真实的奉献’与‘爱的终结’。\l须由女方，以祭坛之石刃，\l亲手终结男方的生命。\l此一击，非为恨，\l实为极致之爱\l与其同赴使命之决绝。\p若心存犹豫、\n怨恨或被外力所迫，\l则仪式之力将逆流……$"
	
