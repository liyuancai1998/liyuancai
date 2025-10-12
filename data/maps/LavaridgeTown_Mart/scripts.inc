LavaridgeTown_Mart_MapScripts::
	.byte 0

LavaridgeTown_Mart_1::
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Mart_MSG_1 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	removeobject 1
	setflag FLAG_UNUSED_0x1E1
	end

LavaridgeTown_Mart_MSG_1:
	.string "为什么每过十年就压不住GHOST了……\n是不是什么环节出了问题。$"

LavaridgeTown_Mart_2::
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox LavaridgeTown_Mart_MSG_2 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	removeobject 2
	setflag FLAG_UNUSED_0x1E2
	end

LavaridgeTown_Mart_MSG_2:
	.string "活了这么大岁数了没被选中过，\n亲眼送走了一对又一对年轻人……\l这种事情什么是才是个头呢。$"

