LilycoveCity_House2_MapScripts::
	.byte 0

LilycoveCity_House2_EventScript_FatMan::
	namebox Note_MSG
	shownpcpic2 4, 208, 127, 0
	msgbox LilycoveCity_House2_1 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	removeobject 1
	setflag FLAG_UNUSED_0x26D
	end

LilycoveCity_House2_1:
	.string "贡品准备好了吗？\n要最好的果实和纯净的泉水……\l不是给GHOST吃的，\l是给那两个孩子的……\l让他们上路前，\l能尝到人世间最后一丝甜。$"

