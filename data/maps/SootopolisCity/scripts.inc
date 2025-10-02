SootopolisCity_MapScripts::
	.byte 0

EventScript_ClosedSootopolisDoor::
	msgbox SootopolisCity_Text_DoorIsClosed, MSGBOX_SIGN
	end

SootopolisCity_Text_DoorIsClosed:
    .string "这扇门上着锁。$"

SootopolisCity_KaiYi::
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, SootopolisCity_MSG
	closeblacktext
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox SootopolisCity_MSG_2 MSGBOX_NPC
	hidenpc2
	hidemonpic
	end

SootopolisCity_MSG:
	.string "树下留有一具尸体的残骸，\n残留下来的破旧的衣服上的\l学生徽章标签上写着他的名字：\l凯伊。$"

SootopolisCity_MSG_2:
	.string "凯伊……$"

