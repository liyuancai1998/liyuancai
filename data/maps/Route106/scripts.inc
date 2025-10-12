Route106_MapScripts::
	map_script MAP_SCRIPT_ON_TRANSITION, Route106_Scripts_1
	.byte 0

Route106_Scripts_1:
	call_if_set FLAG_UNUSED_0x03A, Route106_Scripts_2
	end

Route106_Scripts_2:
	setflag FLAG_UNUSED_0x03B
	end

Route106_Scripts_3::
	shownpcpic2 4, 208, 127, 0
	namebox Note_MSG
	msgbox Route106_MSG_1 MSGBOX_AUTOCLOSE
	hidenpc2
	hidenamebox
	end

Route106_MSG_1:
	.string "祭祀失败了，\n我躲在这里应该安全了吧……$"

