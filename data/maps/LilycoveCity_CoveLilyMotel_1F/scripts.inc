LilycoveCity_CoveLilyMotel_1F_MapScripts::
	.byte 0

Yanxing_Battle::
	trainerbattle TRAINER_BATTLE_CONTINUE_SCRIPT, TRAINER_EVERETT, 1, gText_BrawlyDefeat, gText_BrawlyDefeat, LilycoveCity_CoveLilyMotel_1F_Scripts_1
	end

LilycoveCity_CoveLilyMotel_1F_Scripts_1:
	namebox Yanxing_MSG
	shownpc 3, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_CoveLilyMotel_1F_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 1
	givemon SPECIES_GLALIE, 20, ITEM_WISE_GLASSES, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 31, 31, 31, 31, 31, MOVE_EXPLOSION, MOVE_EARTHQUAKE, MOVE_DOUBLE_EDGE, MOVE_SPIKES, FALSE
	fadescreen FADE_TO_BLACK
	blacktext 0xe0, 50, LilycoveCity_CoveLilyMotel_1F_MSG_2
	closeblacktext
	fadescreen FADE_FROM_BLACK
	setflag FLAG_UNUSED_0x041
	addvar VAR_EVENT_COUNTER, 1
	end

LilycoveCity_CoveLilyMotel_1F_MSG_1:
	.string "那家伙居然在调查我的事情……\n得想想办法……$"

LilycoveCity_CoveLilyMotel_1F_MSG_2:
	.string "血核冰鬼加入了队伍。$"

