LavaridgeTown_MapScripts::
	.byte 0

LavaridgeTown_LXHouse_T::
	call_if_set 0x32, LavaridgeTown_LXHouse_T_2
	delay 60
	applymovement OBJ_EVENT_ID_PLAYER OldaleTown_Movement_NPC2
	waitmovement OBJ_EVENT_ID_PLAYER
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Text_1 MSGBOX_DEFAULT
	hidenpc2
	hidemonpic
	closemessage
	applymovement OBJ_EVENT_ID_PLAYER LavaridgeTown_Movement_1
	waitmovement OBJ_EVENT_ID_PLAYER
	end

LavaridgeTown_Text_1:
	.string "门被锁了，进不去……$"

LavaridgeTown_Movement_1:
	walk_down
	step_end

LavaridgeTown_LXHouse_T_2:
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Text_2 MSGBOX_DEFAULT
	hidenpc2
	hidemonpic
	closemessage
	setvar 0x4067, 1
	end

LavaridgeTown_Text_2:
	.string "门可以打开了。$"

LavaridgeTown_LXHouse_T_3::
	delay 60
	fadescreen FADE_TO_BLACK
	delay 60
	blacktext 0xe0, 50, LavaridgeTown_Text_3
	closeblacktext
	delay 60
	fadescreen FADE_FROM_BLACK
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Text_4 MSGBOX_DEFAULT
	hidenpc2
	hidemonpic
	closemessage
	setvar 0x4068, 1
	end

LavaridgeTown_Text_3:
	.string "还记得启明星公主的约定吗？\n这可能是我临走前\l最后能做的事情了……$"

LavaridgeTown_Text_4:
	.string "启明星公主是？$"

