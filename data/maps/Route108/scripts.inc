Route108_MapScripts::
    map_script MAP_SCRIPT_ON_FRAME_TABLE, Route108_OnEnter
    .byte 0

Route108_OnEnter:
	map_script_2 VAR_UNUSED_0x404E, 0, FuckThisTrigger
	.2byte 0

FuckThisTrigger:
	lock
	faceplayer
	fadescreen FADE_TO_BLACK
	givemon SPECIES_PIKACHU 20, \
		isShiny=1
	blacktext 0xe0, 50, blackscreentext
	closeblacktext
	msgbox Route108_Text_FADE_TO_BLACK MSGBOX_DEFAULT
	fadescreen FADE_FROM_BLACK
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER, Player_Movement
	waitmovement 0
	shownpc 0, 200, 83
	shownpcpic2 0, 32, 83, 1
	msgbox Route108_Text_SeaFullOfLife MSGBOX_DEFAULT
	hidemonpic
	hidenpc2
	release
	setvar VAR_UNUSED_0x404E, 1
	end

Player_Movement:
	emote_question_mark
	delay_16
	step_end

blackscreentext:
	.string "            李元才你真的\n               司马了\p啊啊啊啊啊啊$"

Route108_Text_FADE_TO_BLACK:
	.string "头好晕……$"

Route108_Text_SeaFullOfLife:
    .string "这是哪儿？\n为什么我什么都想不起来了……$"


EventScript_Note_TrainerCard::
	lock
	msgbox Text_TrainerBag MSGBOX_DEFAULT
	fadescreen FADE_TO_BLACK
	msgbox Text_TrainerCard MSGBOX_DEFAULT
	fadescreen FADE_FROM_BLACK
	msgbox Text_TrainerResult MSGBOX_DEFAULT
	removeobject 8
	setflag FLAG_TrainerCard
	setflag FLAG_SYS_POKEMON_GET
	setvar  VAR_BAG, 1
	release
	end


Text_TrainerBag:
	.string "这是什么？$"

Text_TrainerCard:
	.string "(找到了一张带有名字的卡片)$"

Text_TrainerResult:
	.string "这是我的么？洛汐……$"

Trigger_Bag_1::
	applymovement OBJ_EVENT_ID_PLAYER, Player_Movement_2
	waitmovement OBJ_EVENT_ID_PLAYER
	compare VAR_BAG, 1
	goto_if_ne EventScript_Note_TrainerCard
	end

Trigger_Bag_2::
	applymovement OBJ_EVENT_ID_PLAYER, Player_Movement_3
	waitmovement OBJ_EVENT_ID_PLAYER
	compare VAR_BAG, 1
	goto_if_ne EventScript_Note_TrainerCard
	end

	
Player_Movement_2:
	 walk_left
	 walk_down
	 step_end

Player_Movement_3:
	 walk_left
	 face_down
	 step_end


Route108_EventScript_Jerome::
	trainerbattle_single TRAINER_JEROME, Route108_Text_JeromeIntro, Route108_Text_JeromeDefeated
	msgbox Route108_Text_JeromePostBattle, MSGBOX_AUTOCLOSE
	end

Route108_EventScript_Matthew::
	trainerbattle_single TRAINER_MATTHEW, Route108_Text_MatthewIntro, Route108_Text_MatthewDefeated
	msgbox Route108_Text_MatthewPostBattle, MSGBOX_AUTOCLOSE
	end

Route108_EventScript_Tara::
	trainerbattle_single TRAINER_TARA, Route108_Text_TaraIntro, Route108_Text_TaraDefeated
	msgbox Route108_Text_TaraPostBattle, MSGBOX_AUTOCLOSE
	end

Route108_EventScript_Missy::
	trainerbattle_single TRAINER_MISSY, Route108_Text_MissyIntro, Route108_Text_MissyDefeated
	msgbox Route108_Text_MissyPostBattle, MSGBOX_AUTOCLOSE
	end

Route108_EventScript_Carolina::
	trainerbattle_single TRAINER_CAROLINA, Route108_Text_CarolinaIntro, Route108_Text_CarolinaDefeated
	msgbox Route108_Text_CarolinaPostBattle, MSGBOX_AUTOCLOSE
	end

Route108_EventScript_Cory::
	shownpc 0, 200, 83
	shownpcpic2 0, 32, 83, 0
	msgbox Route108_Text_SeaFullOfLife MSGBOX_AUTOCLOSE
	hidemonpic
	hidenpc2
	end

Route108_EventScript_CoryRegisterMatchCallAfterBattle::
	special PlayerFaceTrainerAfterBattle
	waitmovement 0
	msgbox Route108_Text_CoryRegister, MSGBOX_DEFAULT
	register_matchcall TRAINER_CORY_1
	release
	end

Route108_EventScript_CoryRematch::
	trainerbattle_rematch TRAINER_CORY_1, Route108_Text_CoryRematchIntro, Route108_Text_CoryRematchDefeated
	msgbox Route108_Text_CoryRematchPostBattle, MSGBOX_AUTOCLOSE
	end

