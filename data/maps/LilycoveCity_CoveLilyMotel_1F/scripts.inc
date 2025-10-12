LilycoveCity_CoveLilyMotel_1F_MapScripts::
	.byte 0

LilycoveCity_CoveLilyMotel_1F_Scripts_1::
	namebox Yanxing_MSG
	shownpc 3, 208, 127
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_CoveLilyMotel_1F_MSG_1 MSGBOX_AUTOCLOSE
	hidenamebox
	hidenpc2
	hidemonpic
	removeobject 1
	setflag FLAG_UNUSED_0x041
	end

LilycoveCity_CoveLilyMotel_1F_MSG_1:
	.string "那家伙居然在调查我的事情……\n得想想办法……"

