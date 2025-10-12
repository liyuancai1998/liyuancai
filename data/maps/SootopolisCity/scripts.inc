SootopolisCity_MapScripts::
	map_script MAP_SCRIPT_ON_FRAME_TABLE, SootopolisCity_OnEnter
	.byte 0

SootopolisCity_OnEnter:
	map_script_2 VAR_ROUTE111_STATE, 0, SootopolisCity_FuckThisTrigger
	.2byte 0

SootopolisCity_FuckThisTrigger:
	playse SE_PIN
	applymovement OBJ_EVENT_ID_PLAYER RustboroCity_EventScript_01_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	applymovement OBJ_EVENT_ID_PLAYER SootopolisCity_Player_Movement
	waitmovement OBJ_EVENT_ID_PLAYER
	setvar VAR_ROUTE111_STATE, 1
	end

SootopolisCity_MSG_4:
	.string "这是哪儿？\n我刚刚好像进的是屋子……$"

SootopolisCity_Player_Movement:
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

EventScript_ClosedSootopolisDoor::
	msgbox SootopolisCity_Text_DoorIsClosed, MSGBOX_SIGN
	end

SootopolisCity_Text_DoorIsClosed:
    .string "这扇门上着锁。$"

SootopolisCity_KaiYi::
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, SootopolisCity_MSG
	closeblacktext
	fadescreen FADE_FROM_BLACK
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox SootopolisCity_MSG_2 MSGBOX_NPC
	hidenpc2
	hidemonpic
	playbgm MUS_GSC_PEWTER, 0
	fadescreen FADE_TO_BLACK
	setvar 0x8004 2
	special ShowCG
	waitstate
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, SootopolisCity_MSG_3
	closeblacktext
	setflag FLAG_UNUSED_0x038
	setvar VAR_ROUTE112_STATE, 0
	warpsilent MAP_LAVARIDGE_TOWN_HOUSE, 4, 3
	end

SootopolisCity_MSG:
	.string "树下留有一具尸体的残骸，\n残留下来的破旧的衣服上的\l学生徽章标签上写着他的名字：\l凯伊。$"

SootopolisCity_MSG_2:
	.string "凯伊?头好疼……$"

SootopolisCity_MSG_3:
	.string "刚刚看到的是凯伊的记忆么……\n他是被那个人杀害的么，\l但是为什么谈到我……$"

