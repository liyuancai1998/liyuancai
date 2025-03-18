	.include "MPlayDef.s"

	.equ	mus_vs_rival_grp, voicegroup124
	.equ	mus_vs_rival_pri, 0
	.equ	mus_vs_rival_rev, 0
	.equ	mus_vs_rival_mvl, 80
	.equ	mus_vs_rival_key, 0
	.equ	mus_vs_rival_tbs, 1
	.equ	mus_vs_rival_exg, 0
	.equ	mus_vs_rival_cmp, 1

	.section .rodata
	.global	mus_vs_rival
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_vs_rival_1:
	.byte	KEYSH , mus_vs_rival_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 180*mus_vs_rival_tbs/2
	.byte		VOICE , 33
	.byte		VOL   , 63*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	TEMPO , 190*mus_vs_rival_tbs/2
	.byte		VOL   , 76*mus_vs_rival_mvl/mxv
	.byte		TIE   , An0 , v116
	.byte	W96
@ 002   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte		N10   , En0 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
@ 003   ----------------------------------------
LoopStart_001:
	.byte		TIE   , An0 
	.byte	W96
@ 004   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte		N10   , Dn1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
@ 005   ----------------------------------------
	.byte		TIE   , An0 
	.byte	W96
@ 006   ----------------------------------------
	.byte	W60
	.byte		EOT   
	.byte		N10   , En0 
	.byte	W12
	.byte		        Fs0 
	.byte	W12
	.byte		        Gs0 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N96   , An0 
	.byte	W96
@ 008   ----------------------------------------
	.byte		N10   , Cn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        Ds1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
@ 009   ----------------------------------------
mus_vs_rival_1_009:
	.byte		N10   , An0 , v116
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_009
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_009
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_009
@ 014   ----------------------------------------
mus_vs_rival_1_014:
	.byte		N10   , An0 , v116
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Gn0 
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
mus_vs_rival_1_015:
	.byte		N10   , Fn0 , v116
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_vs_rival_1_016:
	.byte		N10   , En0 , v116
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_009
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_009
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_009
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_016
@ 025   ----------------------------------------
mus_vs_rival_1_025:
	.byte		N10   , En0 , v116
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte	PEND
@ 026   ----------------------------------------
	.byte		N10   
	.byte	W12
	.byte		N10   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_1_025
@ 028   ----------------------------------------
	.byte		N10   , En1 , v116
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        En0 
	.byte	W12
	.byte		        Bn0 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte	GOTO
	 .word LoopStart_001
@ 029   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_rival_2:
	.byte	KEYSH , mus_vs_rival_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 63*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		BEND  , c_v+0
	.byte		N96   , Ds6 , v116
	.byte		N96   , Gs6 
	.byte	W06
	.byte		BEND  , c_v-4
	.byte	W06
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-12
	.byte	W06
	.byte		        c_v-16
	.byte	W06
	.byte		        c_v-20
	.byte	W06
	.byte		        c_v-24
	.byte	W06
	.byte		        c_v-28
	.byte	W06
	.byte		        c_v-32
	.byte	W06
	.byte		        c_v-36
	.byte	W06
	.byte		        c_v-40
	.byte	W06
	.byte		        c_v-44
	.byte	W06
	.byte		        c_v-48
	.byte	W06
	.byte		        c_v-52
	.byte	W06
	.byte		        c_v-56
	.byte	W06
	.byte		        c_v-61
	.byte	W06
@ 001   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 80*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
LoopStart_002:
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
mus_vs_rival_2_005:
	.byte		N11   , Gn3 , v100
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_2_005
@ 008   ----------------------------------------
	.byte		N11   , Bn3 , v100
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
@ 009   ----------------------------------------
mus_vs_rival_2_009:
	.byte		N11   , Cn4 , v100
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_2_009
@ 012   ----------------------------------------
mus_vs_rival_2_012:
	.byte		N11   , Fn4 , v100
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_2_009
@ 014   ----------------------------------------
	.byte		N11   , Dn4 , v100
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		N44   , Bn3 
	.byte	W48
@ 017   ----------------------------------------
mus_vs_rival_2_017:
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_2_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_2_017
@ 020   ----------------------------------------
	.byte		N11   , An4 , v100
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_2_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_2_012
@ 023   ----------------------------------------
	.byte		N11   , En4 , v100
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N05   , Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N44   , Dn4 
	.byte	W48
@ 025   ----------------------------------------
	.byte		PAN   , c_v-1
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N32   , Gs3 
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W24
	.byte		N32   , An3 
	.byte	W36
@ 026   ----------------------------------------
	.byte		        Bn3 
	.byte	W36
	.byte		        An3 
	.byte	W36
	.byte		N23   , Gs3 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N32   , Bn3 
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W24
	.byte		N32   , Cn4 
	.byte	W36
@ 028   ----------------------------------------
	.byte		N23   , Dn4 , v108
	.byte	W24
	.byte		        Fn4 , v112
	.byte	W24
	.byte		        Gs4 , v116
	.byte	W24
	.byte		        Bn4 , v124
	.byte	W24
	.byte	GOTO
	 .word LoopStart_002
@ 029   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_vs_rival_3:
	.byte	KEYSH , mus_vs_rival_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 63*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W24
	.byte		BEND  , c_v+0
	.byte		N72   , Ds6 , v116
	.byte		N72   , Gs6 
	.byte	W06
	.byte		BEND  , c_v-4
	.byte	W06
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-12
	.byte	W06
	.byte		        c_v-16
	.byte	W06
	.byte		        c_v-20
	.byte	W06
	.byte		        c_v-24
	.byte	W06
	.byte		        c_v-28
	.byte	W06
	.byte		        c_v-32
	.byte	W06
	.byte		        c_v-36
	.byte	W06
	.byte		        c_v-40
	.byte	W06
	.byte		        c_v-44
	.byte	W06
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
LoopStart_003:
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 80*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte		N11   , An3 , v100
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		N11   
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N05   , Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		        Gs3 
	.byte	W06
	.byte		        An3 
	.byte	W06
	.byte		N44   , Gs3 
	.byte	W48
@ 017   ----------------------------------------
mus_vs_rival_3_017:
	.byte		N11   , Cn4 , v100
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_vs_rival_3_018:
	.byte		N11   , Dn4 , v100
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_3_017
@ 020   ----------------------------------------
	.byte		N11   , Fn4 , v100
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        En4 
	.byte	W12
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_3_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_3_018
@ 023   ----------------------------------------
	.byte		N11   , Cn4 , v100
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N05   , Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		        Bn3 
	.byte	W06
	.byte		        Cn4 
	.byte	W06
	.byte		BEND  , c_v+0
	.byte		N44   , Bn3 
	.byte	W48
@ 025   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N32   , Bn2 
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W24
	.byte		N32   , Cn3 
	.byte	W36
@ 026   ----------------------------------------
	.byte		        Dn3 
	.byte	W36
	.byte		        Cn3 
	.byte	W36
	.byte		N23   , Bn2 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N32   , Dn3 
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W24
	.byte		N32   , En3 
	.byte	W36
@ 028   ----------------------------------------
	.byte		N48   , Fn3 
	.byte	W96
	.byte	GOTO
	 .word LoopStart_003
@ 029   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_vs_rival_4:
	.byte	KEYSH , mus_vs_rival_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 17
	.byte		VOL   , 63*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v-1
	.byte	W48
	.byte		BEND  , c_v+0
	.byte		N48   , Gs6 , v116
	.byte	W06
	.byte		BEND  , c_v-4
	.byte	W06
	.byte		        c_v-8
	.byte	W06
	.byte		        c_v-12
	.byte	W06
	.byte		        c_v-16
	.byte	W06
	.byte		        c_v-20
	.byte	W06
	.byte		        c_v-24
	.byte	W06
	.byte		        c_v-28
	.byte	W06
@ 001   ----------------------------------------
	.byte		VOICE , 80
	.byte		PAN   , c_v+0
	.byte		VOL   , 47*mus_vs_rival_mvl/mxv
	.byte		BEND  , c_v+0
	.byte		TIE   , An3 , v100
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
LoopStart_004:
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 005   ----------------------------------------
	.byte		TIE   , En4 , v112
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 007   ----------------------------------------
	.byte		N96   , En5 , v120
	.byte	W96
@ 008   ----------------------------------------
	.byte	W12
	.byte		N03   , Bn5 
	.byte	W06
	.byte		        An5 
	.byte	W06
	.byte		        Gn5 
	.byte	W06
	.byte		        Fs5 
	.byte	W06
	.byte		        En5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Cn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gn4 
	.byte	W06
	.byte		        Fs4 
	.byte	W06
	.byte		        En4 
	.byte	W06
	.byte		N12   , Dn4 
	.byte	W12
@ 009   ----------------------------------------
mus_vs_rival_4_009:
	.byte		N48   , En4 , v100
	.byte	W48
	.byte		        Dn4 
	.byte	W48
	.byte	PEND
@ 010   ----------------------------------------
mus_vs_rival_4_010:
	.byte		N48   , Fn4 , v100
	.byte	W48
	.byte		        En4 
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_4_009
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_4_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_4_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_4_010
@ 015   ----------------------------------------
	.byte		N96   , En4 , v100
	.byte	W96
@ 016   ----------------------------------------
	.byte		        Dn4 
	.byte	W96
@ 017   ----------------------------------------
mus_vs_rival_4_017:
	.byte		N11   , An4 , v100
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
mus_vs_rival_4_018:
	.byte		N11   , Bn4 , v100
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fn4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_4_017
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_4_018
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_4_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_4_018
@ 023   ----------------------------------------
	.byte		N11   , An4 , v100
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 024   ----------------------------------------
	.byte		N05   , Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        An4 
	.byte	W06
	.byte		N44   , Gs4 
	.byte	W48
@ 025   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N32   , Bn3 , v116
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W24
	.byte		N32   , Cn4 
	.byte	W36
@ 026   ----------------------------------------
	.byte		        Dn4 
	.byte	W36
	.byte		        Cn4 
	.byte	W36
	.byte		N23   , Bn3 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N32   , Dn4 
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W24
	.byte		N36   , En4 
	.byte	W36
@ 028   ----------------------------------------
	.byte		N48   , Fn4 
	.byte	W96
	.byte	GOTO
	 .word LoopStart_004
@ 029   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_vs_rival_5:
	.byte	KEYSH , mus_vs_rival_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 80*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 80*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		BEND  , c_v+0
	.byte		N11   , En3 , v100
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 002   ----------------------------------------
mus_vs_rival_5_002:
	.byte		N11   , Gn3 , v100
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
LoopStart_005:
mus_vs_rival_5_003:
	.byte		N11   , En3 , v100
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_5_002
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_5_003
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_5_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_5_003
@ 008   ----------------------------------------
	.byte		N11   , Gn3 , v100
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		VOICE , 81
	.byte		VOL   , 47*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N44   , Cn4 
	.byte	W48
	.byte		        Bn3 
	.byte	W48
@ 010   ----------------------------------------
mus_vs_rival_5_010:
	.byte		N44   , Dn4 , v100
	.byte	W48
	.byte		        Cn4 
	.byte	W48
	.byte	PEND
@ 011   ----------------------------------------
mus_vs_rival_5_011:
	.byte		N44   , Cn4 , v100
	.byte	W48
	.byte		        Bn3 
	.byte	W48
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_5_010
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_5_011
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_5_010
@ 015   ----------------------------------------
	.byte		N92   , Cn4 , v100
	.byte	W96
@ 016   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W96
@ 024   ----------------------------------------
	.byte	W96
@ 025   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N32   , En3 , v116
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W24
	.byte		N32   , Fs3 
	.byte	W36
@ 026   ----------------------------------------
	.byte		        Gs3 
	.byte	W36
	.byte		        Fs3 
	.byte	W36
	.byte		N23   , En3 
	.byte	W24
@ 027   ----------------------------------------
	.byte	W24
	.byte		BEND  , c_v-32
	.byte		N32   , Gs3 
	.byte	W01
	.byte		BEND  , c_v-28
	.byte	W02
	.byte		        c_v-24
	.byte	W01
	.byte		        c_v-20
	.byte	W02
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-12
	.byte	W02
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-4
	.byte	W02
	.byte		        c_v+0
	.byte	W24
	.byte		N32   , An3 
	.byte	W36
@ 028   ----------------------------------------
	.byte		N48   , Bn3 
	.byte	W48
	.byte		N03   , Bn5 
	.byte	W06
	.byte		        Gs5 
	.byte	W06
	.byte		        Fn5 
	.byte	W06
	.byte		        Dn5 
	.byte	W06
	.byte		        Bn4 
	.byte	W06
	.byte		        Gs4 
	.byte	W06
	.byte		        Fn4 
	.byte	W06
	.byte		        Dn4 
	.byte	W06
	.byte	GOTO
	 .word LoopStart_005
@ 029   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_vs_rival_6:
	.byte	KEYSH , mus_vs_rival_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 76*mus_vs_rival_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N19   , Fs2 , v100
	.byte	W24
	.byte		N19   
	.byte	W24
	.byte		N36   
	.byte	W24
	.byte		N04   , Cn2 , v108
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		N09   , Dn1 , v080
	.byte		N09   , En1 , v096
	.byte	W12
@ 001   ----------------------------------------
mus_vs_rival_6_001:
	.byte		TIE   , Cn1 , v127
	.byte		N36   , Cs2 
	.byte	W72
	.byte		N19   , Fs2 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	W19
	.byte		EOT   , Cn1 
	.byte	W05
	.byte		N19   , Fs2 
	.byte	W36
	.byte		N09   , Dn1 , v080
	.byte		N09   , En1 , v100
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W12
	.byte		N09   , An1 
	.byte	W12
@ 003   ----------------------------------------
LoopStart_006:
	.byte	PATT
	 .word	mus_vs_rival_6_001
@ 004   ----------------------------------------
	.byte	W19
	.byte		EOT   , Cn1 
	.byte	W05
	.byte		N19   , Fs2 , v127
	.byte	W36
	.byte		N09   , Dn1 , v080
	.byte		N09   , En1 , v100
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W12
	.byte		N09   , Gn1 
	.byte	W12
@ 005   ----------------------------------------
mus_vs_rival_6_005:
	.byte		N19   , Cn1 , v127
	.byte		N19   , Fs2 
	.byte	W24
	.byte		        Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Cs2 , v127
	.byte	W48
	.byte		        Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W24
	.byte	PEND
@ 006   ----------------------------------------
	.byte	W24
	.byte		        Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W36
	.byte		N09   , Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N09   , Fs2 , v127
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N09   , Fs2 , v127
	.byte	W12
	.byte		        An1 
	.byte		N09   , Fs2 
	.byte	W12
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_6_005
@ 008   ----------------------------------------
	.byte		N04   , Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte		        Bn1 
	.byte	W18
	.byte		        Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Bn1 , v127
	.byte	W06
	.byte		        An1 
	.byte	W18
	.byte		        Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        An1 
	.byte	W06
	.byte		        Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
@ 009   ----------------------------------------
mus_vs_rival_6_009:
	.byte		N19   , Cn1 , v127
	.byte		N36   , Cs2 
	.byte	W24
	.byte		N19   , Dn1 , v080
	.byte		N19   , En1 , v100
	.byte	W24
	.byte		N09   , Cn1 , v127
	.byte		N19   , Fs2 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		N19   , Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W24
	.byte	PEND
@ 010   ----------------------------------------
mus_vs_rival_6_010:
	.byte		N19   , Cn1 , v127
	.byte		N19   , Fs2 
	.byte	W24
	.byte		N09   , Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		N19   , Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W24
	.byte	PEND
@ 011   ----------------------------------------
mus_vs_rival_6_011:
	.byte		N19   , Cn1 , v127
	.byte		N19   , Fs2 
	.byte	W24
	.byte		        Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W24
	.byte		N09   , Cn1 
	.byte		N19   , Fs2 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		N19   , Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
mus_vs_rival_6_012:
	.byte		N19   , Cn1 , v127
	.byte		N19   , Fs2 
	.byte	W24
	.byte		N09   , Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_6_009
@ 014   ----------------------------------------
mus_vs_rival_6_014:
	.byte		N19   , Cn1 , v127
	.byte		N19   , Fs2 
	.byte	W24
	.byte		N09   , Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W12
	.byte		N09   , Bn1 
	.byte	W12
	.byte	PEND
@ 015   ----------------------------------------
	.byte		N19   , Cn1 
	.byte		N19   , Fs2 
	.byte	W24
	.byte		        Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W24
	.byte		N09   , Cn1 
	.byte		N19   , Fs2 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
@ 016   ----------------------------------------
	.byte		N04   , Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W06
	.byte		N09   , Cn2 
	.byte	W12
	.byte		        An1 , v100
	.byte	W12
	.byte		N04   , Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Cn2 , v127
	.byte	W06
	.byte		N09   , Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N04   , Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N09   , An1 
	.byte	W12
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_6_009
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_6_010
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_6_011
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_6_014
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_6_009
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_6_012
@ 023   ----------------------------------------
	.byte		N19   , Cn1 , v127
	.byte		N19   , Fs2 
	.byte	W24
	.byte		        Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W24
	.byte		N09   , Cn1 
	.byte		N19   , Fs2 
	.byte	W12
	.byte		N09   , Cn1 
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N09   , En1 , v100
	.byte		N19   , Fs2 , v127
	.byte	W12
	.byte		N09   , Dn1 , v080
	.byte		N09   , En1 , v100
	.byte	W12
@ 024   ----------------------------------------
	.byte		N04   , Dn2 , v127
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		N09   , Bn1 
	.byte	W12
	.byte		N19   , Dn1 , v080
	.byte		N19   , En1 , v100
	.byte	W24
	.byte		N04   , Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		N09   , An1 , v127
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		        Dn1 , v080
	.byte		N09   , En1 , v100
	.byte	W12
@ 025   ----------------------------------------
mus_vs_rival_6_025:
	.byte		N19   , Cn1 , v127
	.byte		N19   , Fn2 
	.byte	W24
	.byte		        Cn1 
	.byte		N19   , Fn2 
	.byte	W24
	.byte		N09   , Cn1 
	.byte		N09   , Fn2 
	.byte	W12
	.byte		        Cn1 
	.byte		N09   , Fn2 
	.byte	W12
	.byte		N19   , Cn1 
	.byte		N19   , Fn2 
	.byte	W24
	.byte	PEND
@ 026   ----------------------------------------
	.byte		        Cn1 
	.byte		N19   , Fn2 
	.byte	W24
	.byte		N09   , Cn1 
	.byte		N09   , Fn2 
	.byte	W12
	.byte		N19   , Cn1 
	.byte		N19   , Fn2 
	.byte	W24
	.byte		N09   , Cn1 
	.byte		N09   , Fn2 
	.byte	W12
	.byte		N19   , Dn1 , v080
	.byte		N19   , En1 , v100
	.byte		N19   , Fn2 , v127
	.byte	W24
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_rival_6_025
@ 028   ----------------------------------------
	.byte		N04   , Dn2 , v127
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte		        Dn2 , v127
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		        Gn1 
	.byte	W06
	.byte		        Dn1 , v080
	.byte		N04   , En1 , v100
	.byte	W06
	.byte	GOTO
	 .word LoopStart_006
@ 029   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_rival:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_rival_pri	@ Priority
	.byte	mus_vs_rival_rev	@ Reverb.

	.word	mus_vs_rival_grp

	.word	mus_vs_rival_1
	.word	mus_vs_rival_2
	.word	mus_vs_rival_3
	.word	mus_vs_rival_4
	.word	mus_vs_rival_5
	.word	mus_vs_rival_6

	.end
