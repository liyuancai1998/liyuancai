SlateportCity_PokemonCenter_1F_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, SlateportCity_PokemonCenter_1F_Memories
	.byte 0

SlateportCity_PokemonCenter_1F_Memories:
	map_script_2 VAR_SLATEPORT_CITY_POKEMON_CENTER_1F_MEMORIES, 0, SlateportCity_PokemonCenter_1F_Memories_event
	.2byte 0

SlateportCity_PokemonCenter_1F_Memories_event:
	lockall
	delay 60
	fadescreen FADE_TO_BLACK
	delay 60
	addobject 1, MAP_SLATEPORT_CITY_POKEMON_CENTER_1F
	setobjectxy 1, 8, 9
	fadescreen FADE_FROM_BLACK
	shownpcpic2 4, 208, 127, 0
	msgbox SlateportCity_PokemonCenter_1F_Text_RaiseDifferentTypesOfPokemon MSGBOX_DEFAULT
	hidenpc2
	fadescreen FADE_TO_BLACK
	delay 60
	removeobject 1
	setflag FLAG_SlateportCity_PokemonCenter_1F_Memories_Text 
	setvar VAR_SLATEPORT_CITY_POKEMON_CENTER_1F_MEMORIES, 1
	fadescreen FADE_FROM_BLACK
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox SlateportCity_PokemonCenter_1F_Memories_Text_2 MSGBOX_DEFAULT
	closemessage
	hidenpc2
	hidemonpic
	releaseall
	end

SlateportCity_PokemonCenter_1F_Memories_Text_2:
	.string "是谁的声音……\n好像回忆起了什么事情……$"

SlateportCity_PokemonCenter_1F_Text_RaiseDifferentTypesOfPokemon:
    .string "???:想要我指点一下怎么战斗吗？\p你应该用较平衡的方式\n培养多种宝可梦。\p仅仅培养一只强大的\n宝可梦并不够，\p如果它的类型被克制，\n战斗会处于相当被动的局面。$"

SlateportCity_PokemonCenter_1F_Sign_1::
	shownpcpic2 4, 208, 127, 0
	msgbox SlateportCity_PokemonCenter_1F_Sign_1_Text MSGBOX_DEFAULT
	closemessage
	hidenpc2
	end

SlateportCity_PokemonCenter_1F_Sign_2::
	shownpcpic2 4, 208, 127, 0
	msgbox SlateportCity_PokemonCenter_1F_Sign_2_Text MSGBOX_DEFAULT
	closemessage
	hidenpc2
	end

SlateportCity_PokemonCenter_1F_Sign_1_Text:
	.string "一个奇怪的画像，\n看起来像是什么幽灵……$"

SlateportCity_PokemonCenter_1F_Sign_2_Text:
	.string "从悠久的历史上流传下来\n的祭祀仪式……\l那是一个每隔十年就需要\l加强封印某个东西的仪式……$"
