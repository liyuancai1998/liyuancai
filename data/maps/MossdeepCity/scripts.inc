MossdeepCity_MapScripts::
	.byte 0

MossdeepCity_Kaiyi::
	faceplayer
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox MossdeepCity_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 1, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Kaiyi_MSG
	msgbox MossdeepCity_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	playbgm MUS_SLATEPORT, 1
	fadescreen FADE_TO_BLACK
	setvar 0x8004 13
	special ShowCG
	waitstate
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox MossdeepCity_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 1, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Kaiyi_MSG
	msgbox MossdeepCity_MSG_4 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox MossdeepCity_MSG_5 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	fadescreen FADE_TO_BLACK
	setvar 0x8004, 12
	special ShowCG
	waitstate
	end

MossdeepCity_MSG_1:
	.string "凯伊……这是哪儿？$"

MossdeepCity_MSG_2:
	.string "我也不清楚，\n或许是死后的世界吧……\l你看这个,\l触摸它就能看到画面……\l那是关于GHOST的起源……$"

MossdeepCity_MSG_3:
	.string "那个少年……\n看起来好像一个人……\l也是银白色的头发，\l在我与你见面之前，\l但我记不清了，\l他是谁来着……$"

MossdeepCity_MSG_4:
	.string "不管怎么说，\n这不重要了。\l你之前在暗古神坛\l说的话我都听到了，\l我们来世一定要在一起啊！$"

MossdeepCity_MSG_5:
	.string "嗯~$"

MossdeepCity_1::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox MossdeepCity_MSG_6 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	setvar VAR_ROUTE132_STATE, 1
	end

MossdeepCity_MSG_6:
	.string "这是哪儿……\n我记得我应该是跟凯伊跳下了……$"

MossdeepCity_2::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox MossdeepCity_MSG_7 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement OBJ_EVENT_ID_PLAYER MossdeepCity_Move_2
	waitmovement OBJ_EVENT_ID_PLAYER
	end

MossdeepCity_3::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox MossdeepCity_MSG_7 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement OBJ_EVENT_ID_PLAYER MossdeepCity_Move_1
	waitmovement OBJ_EVENT_ID_PLAYER
	end

MossdeepCity_MSG_7:
	.string "好像不是往这边走的……$"

MossdeepCity_Move_2:
	walk_right
	step_end

MossdeepCity_Move_1:
	walk_left
	step_end

MossdeepCity_4::
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox MossdeepCity_MSG_7 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	applymovement OBJ_EVENT_ID_PLAYER MossdeepCity_Move_3
	waitmovement OBJ_EVENT_ID_PLAYER
	end

MossdeepCity_Move_3:
	walk_down
	step_end

