PacifidlogTown_MapScripts::
	.byte 0

PacifidlogTown_Scripts_1::
	delay 60
	applymovement 1, PacifidlogTown_Move_1
	waitmovement 1
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox PacifidlogTown_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox PacifidlogTown_MSG_2 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox PacifidlogTown_MSG_3 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox PacifidlogTown_MSG_4 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox PacifidlogTown_MSG_5 MSGBOX_AUTOCLOSE
	applymovement 1, PacifidlogTown_Move_2
	waitmovement 1
	msgbox PacifidlogTown_MSG_6 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 0, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox Route108_LuoXi
	msgbox PacifidlogTown_MSG_7 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox PacifidlogTown_MSG_8 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	addobject 2, MAP_PACIFIDLOG_TOWN
	setobjectxy 2, 23, 30
	applymovement OBJ_EVENT_ID_PLAYER, PacifidlogTown_Move_3
	applymovement 1, PacifidlogTown_Move_3
	waitmovement 1
	shownpc 6, 208, 127
	shownpcpic2 4, 208, 127, 0
	namebox MD_MSG
	msgbox PacifidlogTown_MSG_9 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	setflag FLAG_UNUSED_0x266
	setvar VAR_UNUSED_0x408B, 0
	warpsilent MAP_FORTREE_CITY, 32, 7
	end

PacifidlogTown_Move_1:
	emote_exclamation_mark
	face_right
	step_end

PacifidlogTown_Move_2:
	emote_exclamation_mark
	step_end

PacifidlogTown_Move_3:
	face_up
	emote_exclamation_mark
	step_end

MD_MSG:
	.string "冥帝$"

PacifidlogTown_MSG_1:
	.string "你是谁？\n这里很危险，赶紧出去。$"

PacifidlogTown_MSG_2:
	.string "你是活人么？\n能看到我？\l我现在只是一个\l徘徊在这里的鬼魂……$"

PacifidlogTown_MSG_3:
	.string "灵魂么……你的名字是？$"

PacifidlogTown_MSG_4:
	.string "洛汐……$"

PacifidlogTown_MSG_5:
	.string "原来如此，\n是十年前名单被篡改的祭品……\l听闻在暗古神坛能看到亡魂，\l这下算是亲眼见到了。\l那么另一个人呢，\l难道是我刚刚看到的那个东西？\l可那玩意儿看起来不像人类呢……$"

PacifidlogTown_MSG_6:
	.string "啊不好意思，\n我一想事情就会自言自语\l我叫冥帝，\l曾经也是这里的居民，\l为了成为宝可梦联盟冠军，\l十年前的我已经在外面闯荡了，\l目前在启明星大陆\l做宝可梦博士的工作，\l这次回来的原因是\l十年一度的祭祀要到了，\l按目前这个情况来看，\l可能又有那个灾难要来了,\l不知道影响范围有多大……\l按照历史文献看的话……$"

PacifidlogTown_MSG_7:
	.string "灾难？$"

PacifidlogTown_MSG_8:
	.string "你应该知道的，\n名为GHOST的不祥之物会\l再次从沉睡中……\l等等，GHOST？\l难道我刚刚看到的是……$"

PacifidlogTown_MSG_9:
	.string "不好，我们快跑！$"

PacifidlogTown_Scripts_2::
	shownpcpic2 4, 208, 127, 0
	msgbox gText_UseFlashQuestion, MSGBOX_YESNO
	closemessage
	hidenpc2
	compare VAR_RESULT, YES
	goto_if_eq EventScript_UseFlash_Yes
	applymovement OBJ_EVENT_ID_PLAYER, PacifidlogTown_Move_4
	waitmovement OBJ_EVENT_ID_PLAYER
	end

PacifidlogTown_Move_4:
	walk_down
	step_end

gText_UseFlashQuestion:
	.string "再往前就无法回头了……\n确定继续向前吗？$"

EventScript_UseFlash_Yes:
	warpdoor MAP_ROUTE103, 1, 12
	end

