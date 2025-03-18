	.include "MPlayDef.s"

	.equ	mus_route104_grp, voicegroup023
	.equ	mus_route104_pri, 0
	.equ	mus_route104_rev, 0
	.equ	mus_route104_mvl, 100
	.equ	mus_route104_key, 0
	.equ	mus_route104_tbs, 1
	.equ	mus_route104_exg, 0
	.equ	mus_route104_cmp, 1

	.section .rodata
	.global	mus_route104
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_route104_1:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
LoopStart_001:
	.byte	TEMPO , 62*mus_route104_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N22   , Cn5 , v080
	.byte	W22
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		N22   , Cn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		        Dn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
@ 001   ----------------------------------------
mus_route104_1_001:
	.byte		N44   , Cn5 , v080
	.byte	W44
	.byte	W01
	.byte	PEND
	.byte	W24
	.byte	W03
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
@ 002   ----------------------------------------
	.byte		N22   , Cn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		N22   , Cn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		        Dn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_1_001
	.byte	W24
	.byte	W03
	.byte		N05   , Gn4 , v080
	.byte	W05
	.byte	W01
	.byte		        As4 
	.byte	W05
	.byte	W01
	.byte		        Cn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
@ 004   ----------------------------------------
	.byte		N17   , Fn5 
	.byte	W17
	.byte	W01
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn5 
	.byte	W22
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        As5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
@ 005   ----------------------------------------
	.byte		N17   , As4 
	.byte	W17
	.byte	W01
	.byte		N05   , Gn4 
	.byte	W05
	.byte	W01
	.byte		        As4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		        As4 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds5 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
@ 006   ----------------------------------------
	.byte		N17   , Cn5 
	.byte	W17
	.byte	W01
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Cn5 
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		N19   , Dn5 
	.byte	W18
	.byte		N01   , Cn5 
	.byte	W01
	.byte	W02
	.byte		        Dn5 
	.byte	W01
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		        Dn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_1_001
	.byte	W03
	.byte		N22   , Ds4 , v080
	.byte	W22
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
@ 008   ----------------------------------------
	.byte		N22   , Cn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		N22   , Cn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_1_001
	.byte	W03
	.byte		N22   , Ds4 , v080
	.byte	W22
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
@ 010   ----------------------------------------
	.byte		N22   , Cn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		N22   , Cn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		        Dn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_1_001
	.byte	W03
	.byte		N22   , Ds4 , v080
	.byte	W22
	.byte	W02
	.byte		N05   , Gn4 
	.byte	W05
	.byte	W01
	.byte		        As4 
	.byte	W05
	.byte	W01
	.byte		        Cn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
@ 012   ----------------------------------------
	.byte		N17   , Fn5 
	.byte	W17
	.byte	W01
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn5 
	.byte	W22
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        As5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
@ 013   ----------------------------------------
	.byte		N17   , As4 
	.byte	W17
	.byte	W01
	.byte		N05   , Gn4 
	.byte	W05
	.byte	W01
	.byte		        As4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		        As4 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds5 
	.byte	W22
	.byte	W02
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W01
	.byte		        Fn4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte		N05   , Cn5 
	.byte	W05
	.byte	W01
@ 014   ----------------------------------------
	.byte		N17   , Ds4 
	.byte		N17   , Cn5 
	.byte	W17
	.byte	W01
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Cn5 
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		N22   , Dn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		        Dn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_1_001
	.byte	W24
	.byte	W03
	.byte		N05   , Ds5 , v080
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte		N05   , Cn6 
	.byte	W05
	.byte	W01
@ 016   ----------------------------------------
	.byte		N22   , Ds5 
	.byte		N22   , Cn6 
	.byte	W22
	.byte	W02
	.byte		N05   , Ds5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte		N05   , Cn6 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds5 
	.byte		N22   , Cn6 
	.byte	W22
	.byte	W02
	.byte		N05   , Ds5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		N05   
	.byte		N05   , Ds6 
	.byte	W05
	.byte	W01
@ 017   ----------------------------------------
	.byte		N44   , Ds5 
	.byte		N44   , Cn6 
	.byte	W44
	.byte	W01
	.byte	W03
	.byte		N22   , Ds4 
	.byte	W22
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Fn4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte		N05   , Cn5 
	.byte	W05
	.byte	W01
@ 018   ----------------------------------------
	.byte		N22   , Ds4 
	.byte		N22   , Cn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W01
	.byte		        Fn4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte		N05   , Cn5 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds4 
	.byte		N18   , Cn5 
	.byte	W18
	.byte		N04   
	.byte	W03
	.byte		N02   , Ds5 
	.byte	W01
	.byte	W01
	.byte	W01
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
@ 019   ----------------------------------------
	.byte		N44   , Gn5 
	.byte	W44
	.byte	W01
	.byte	W03
	.byte		N22   , Gn4 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn4 
	.byte	W05
	.byte	W01
	.byte		        Dn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
@ 020   ----------------------------------------
	.byte		N17   , Ds4 
	.byte		N17   , Cn5 
	.byte	W17
	.byte	W01
	.byte		N05   
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Cn5 
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        As5 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn5 
	.byte	W22
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        As5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
@ 021   ----------------------------------------
	.byte		N17   , As4 
	.byte	W17
	.byte	W01
	.byte		N05   , Gn4 
	.byte	W05
	.byte	W01
	.byte		        As4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		        As4 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds5 
	.byte	W22
	.byte	W02
	.byte		N05   , Ds4 
	.byte	W05
	.byte	W01
	.byte		        Fn4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		        Cn5 
	.byte	W05
	.byte	W01
@ 022   ----------------------------------------
	.byte		N17   
	.byte	W17
	.byte	W01
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Cn5 
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		N22   , Dn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		        Dn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_1_001
	.byte	W03
	.byte		N22   , Ds4 , v080
	.byte	W22
	.byte	W02
	.byte		N05   
	.byte	W05
	.byte	W01
	.byte		        Fn4 
	.byte	W05
	.byte	W01
	.byte		        Gn4 
	.byte	W05
	.byte	W01
	.byte		        Ds4 
	.byte		N05   , Cn5 
	.byte	W05
	.byte	W01
@ 024   ----------------------------------------
	.byte		N17   , Ds4 
	.byte		N17   , Cn5 
	.byte	W17
	.byte	W01
	.byte		N05   
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Cn5 
	.byte		N05   , Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		        Gn5 
	.byte	W05
	.byte	W01
	.byte		        Fn5 
	.byte	W05
	.byte	W01
	.byte		N22   , Dn5 
	.byte	W22
	.byte	W02
	.byte		N05   , Fn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte		        Dn5 
	.byte	W05
	.byte	W01
	.byte		        Ds5 
	.byte	W05
	.byte	W01
	.byte	GOTO
	 .word LoopStart_001
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_route104_1_001
	.byte	W15
	.byte		N36   , Fn5 , v080
	.byte	W36
@ 026   ----------------------------------------
	.byte	W03
	.byte	W03
	.byte		N01   , Cn5 
	.byte	W01
	.byte	W02
	.byte		        Fn5 
	.byte	W01
	.byte	W02
	.byte		N36   , Cn6 
	.byte	W36
	.byte	W03
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_route104_2:
	.byte	KEYSH , mus_route104_key+0
@ 000   ----------------------------------------
LoopStart_002:
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_route104_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N05   , Gs1 , v080
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 001   ----------------------------------------
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
@ 002   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 003   ----------------------------------------
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		N22   , Gn3 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
@ 004   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 005   ----------------------------------------
	.byte		N05   , Gn1 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		N22   , Dn3 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
@ 006   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 007   ----------------------------------------
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
@ 008   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 009   ----------------------------------------
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Ds3 
	.byte	W11
	.byte	W01
	.byte		        Gs2 
	.byte	W11
	.byte	W01
@ 010   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 011   ----------------------------------------
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Gs2 
	.byte	W11
	.byte	W01
@ 012   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Gs2 
	.byte	W11
	.byte	W01
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N11   , As2 
	.byte	W11
	.byte	W01
@ 013   ----------------------------------------
	.byte		N05   , Gn1 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		N22   , Dn3 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
@ 014   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Gs2 
	.byte	W11
	.byte	W01
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 015   ----------------------------------------
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		N22   , Gn3 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
@ 016   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Gs2 
	.byte	W11
	.byte	W01
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 017   ----------------------------------------
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
@ 018   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Gs2 
	.byte	W11
	.byte	W01
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 019   ----------------------------------------
	.byte		N05   , Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		        As3 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		N11   , Ds3 
	.byte	W11
	.byte	W01
@ 020   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N11   , Gs2 
	.byte	W11
	.byte	W01
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		        Fn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N11   , As2 
	.byte	W11
	.byte	W01
@ 021   ----------------------------------------
	.byte		N05   , Gn1 
	.byte	W05
	.byte	W01
	.byte		        Dn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		N22   , Dn3 
	.byte	W22
	.byte	W02
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
@ 022   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
@ 023   ----------------------------------------
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
@ 024   ----------------------------------------
	.byte		N05   , Gs1 
	.byte	W05
	.byte	W01
	.byte		        Ds2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Ds3 
	.byte	W22
	.byte	W02
	.byte		N05   , As1 
	.byte	W05
	.byte	W01
	.byte		        Fn2 
	.byte	W05
	.byte	W01
	.byte		        Cn3 
	.byte	W05
	.byte	W01
	.byte		        Dn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Fn3 
	.byte	W22
	.byte	W02
	.byte	GOTO
	 .word LoopStart_002
@ 025   ----------------------------------------
	.byte		N05   , Cn2 
	.byte	W05
	.byte	W01
	.byte		        Gn2 
	.byte	W05
	.byte	W01
	.byte		        As2 
	.byte	W05
	.byte	W01
	.byte		        Ds3 
	.byte	W05
	.byte	W01
	.byte		        Gn3 
	.byte	W05
	.byte	W01
	.byte		N22   , Cn4 
	.byte	W22
	.byte	W44
@ 026   ----------------------------------------
	.byte	W12
	.byte		N36   , Cn3 
	.byte		N36   , Gn3 
	.byte		N36   , As3 
	.byte	W36
	.byte	W03
	.byte	FINE

@******************************************************@
	.align	2

mus_route104:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_route104_pri	@ Priority
	.byte	mus_route104_rev	@ Reverb.

	.word	mus_route104_grp

	.word	mus_route104_1
	.word	mus_route104_2

	.end
