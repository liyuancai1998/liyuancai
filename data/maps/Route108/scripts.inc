Route108_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, Route108_OnEnter
    .byte 0

Route108_OnEnter:
	map_script_2 VAR_DEWFORD_TOWN_STATE, 0, Route108_01
	.2byte 0

Route108_01:
	applymovement OBJ_EVENT_ID_PLAYER Player_Movement_4
	waitmovement OBJ_EVENT_ID_PLAYER
	delay 60
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	setvar VAR_DEWFORD_TOWN_STATE, 1
	namebox Route108_LuoXi
	msgbox Route108_Text_FADE_TO_BLACK MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	end

Route108_LuoXi:
	.string "洛汐$"

EventScript_Note_TrainerCard::
	lock
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox Text_TrainerBag MSGBOX_DEFAULT
	hidenamebox
	fadescreen FADE_TO_BLACK
	msgbox Text_TrainerCard MSGBOX_DEFAULT
	fadescreen FADE_FROM_BLACK
	namebox Route108_LuoXi
	msgbox Text_TrainerResult MSGBOX_DEFAULT
	hidenamebox
	hidenpc2
	hidemonpic
	hidenamebox
	removeobject 8
	setflag FLAG_TrainerCard
	setflag FLAG_SYS_POKEMON_GET
	setflag FLAG_RECEIVED_RUNNING_SHOES
	setflag FLAG_SYS_B_DASH
	setvar  VAR_BAG, 1
	release
	end

Route108_Text_FADE_TO_BLACK:
	.string "这是哪儿，一转眼就……\n嘶！头好痛，\l……喉咙里……有一股血腥味……$"


Text_TrainerBag:
	.string "这是什么？\n上面有暗红色的痕迹……$"

Text_TrainerCard:
	.string "(找到了一张带有名字的卡片)$"

Text_TrainerResult:
	.string "上面有我的照片，写着洛汐的名\n字……$"

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

Player_Movement_4:
	face_left
	delay_16
	delay_16
	delay_16
	face_right
	delay_16
	delay_16
	delay_16
	face_down
	delay_16
	delay_16
	delay_16
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
	msgbox Route108_Text_FADE_TO_BLACK MSGBOX_AUTOCLOSE
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

