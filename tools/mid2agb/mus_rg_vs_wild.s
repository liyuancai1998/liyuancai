	.include "MPlayDef.s"

	.equ	mus_rg_vs_wild_grp, voicegroup023
	.equ	mus_rg_vs_wild_pri, 0
	.equ	mus_rg_vs_wild_rev, 0
	.equ	mus_rg_vs_wild_mvl, 80
	.equ	mus_rg_vs_wild_key, 0
	.equ	mus_rg_vs_wild_tbs, 1
	.equ	mus_rg_vs_wild_exg, 0
	.equ	mus_rg_vs_wild_cmp, 1

	.section .rodata
	.global	mus_rg_vs_wild
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rg_vs_wild_1:
	.byte	KEYSH , mus_rg_vs_wild_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 130*mus_rg_vs_wild_tbs/2
	.byte		VOICE , 81
	.byte		VOL   , 88*mus_rg_vs_wild_mvl/mxv
	.byte		N18   , An2 , v127
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 001   ----------------------------------------
mus_rg_vs_wild_1_001:
	.byte		N18   , Fn2 , v127
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Ds3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N18   , An2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        En3 
	.byte	W06
	.byte		        Dn3 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		        Bn2 
	.byte	W06
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_001
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W96
@ 007   ----------------------------------------
	.byte		N03   , An3 , v040
	.byte	W06
	.byte		        An3 , v024
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		        An3 , v048
	.byte	W06
	.byte		        An3 , v056
	.byte	W06
	.byte		        An3 , v068
	.byte	W06
	.byte		        An3 , v076
	.byte	W06
	.byte		        An3 , v088
	.byte	W06
	.byte		        An3 , v092
	.byte	W06
	.byte		        An3 , v100
	.byte	W06
	.byte		        An3 , v112
	.byte	W06
	.byte		        An3 , v120
	.byte	W06
	.byte		        An3 , v127
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
	.byte		N03   
	.byte	W06
@ 008   ----------------------------------------
mus_rg_vs_wild_1_008:
	.byte		N04   , Gs3 , v076
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Gs2 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Fn3 
	.byte	W04
	.byte		        En3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Cn3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte	PEND
@ 009   ----------------------------------------
mus_rg_vs_wild_1_009:
	.byte		N04   , Bn3 , v076
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Bn2 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Bn3 
	.byte	W04
	.byte		        Gs3 
	.byte	W04
	.byte		        Gn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte	PEND
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_008
@ 011   ----------------------------------------
mus_rg_vs_wild_1_011:
	.byte		N04   , Fs3 , v076
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Fs2 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Fs3 
	.byte	W04
	.byte		        Ds3 
	.byte	W04
	.byte		        Dn3 
	.byte	W04
	.byte		        Cs3 
	.byte	W04
	.byte		        As2 
	.byte	W04
	.byte		        An2 
	.byte	W04
	.byte	PEND
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_009
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_008
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_011
@ 016   ----------------------------------------
mus_rg_vs_wild_1_016:
	.byte		N36   , An2 , v127
	.byte	W36
	.byte		        Cn3 
	.byte	W36
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
mus_rg_vs_wild_1_017:
	.byte		N36   , Dn3 , v127
	.byte	W36
	.byte		        Fn3 
	.byte	W36
	.byte		N24   , En3 
	.byte	W24
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_016
@ 019   ----------------------------------------
	.byte		N36   , Dn3 , v127
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		N24   , En3 
	.byte	W24
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_1_016
@ 023   ----------------------------------------
	.byte		N36   , Dn3 , v127
	.byte	W36
	.byte		        Gn3 
	.byte	W36
	.byte		N24   , Gs3 
	.byte	W24
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_rg_vs_wild_2:
	.byte	KEYSH , mus_rg_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 111*mus_rg_vs_wild_mvl/mxv
	.byte		N96   , En2 , v127
	.byte		N96   , An2 
	.byte		N03   , En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W06
@ 001   ----------------------------------------
mus_rg_vs_wild_2_001:
	.byte		N96   , Ds2 , v127
	.byte		N96   , Gs2 
	.byte		N03   , Fn3 
	.byte		N03   , Fn4 
	.byte	W18
	.byte		        Fn3 
	.byte		N03   , Fn4 
	.byte	W18
	.byte		        Fn3 
	.byte		N03   , Fn4 
	.byte	W18
	.byte		        Fn3 
	.byte		N03   , Fn4 
	.byte	W18
	.byte		        Fn3 
	.byte		N03   , Fn4 
	.byte	W18
	.byte		        Fn3 
	.byte		N03   , Fn4 
	.byte	W06
	.byte	PEND
@ 002   ----------------------------------------
	.byte		N96   , En2 
	.byte		N96   , An2 
	.byte		N03   , En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W18
	.byte		        En3 
	.byte		N03   , En4 
	.byte	W06
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_2_001
@ 004   ----------------------------------------
	.byte		N96   , An1 , v127
	.byte	W96
@ 005   ----------------------------------------
	.byte		        Bn1 
	.byte	W96
@ 006   ----------------------------------------
	.byte		        Cn2 
	.byte		N96   , En2 
	.byte	W96
@ 007   ----------------------------------------
	.byte		        Dn2 
	.byte		N96   , Gn2 
	.byte	W96
@ 008   ----------------------------------------
	.byte		N06   , An2 
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W06
	.byte		N06   , An2 
	.byte	W12
	.byte		N06   
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N06   , An2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Cn3 
	.byte		N18   , Gn3 
	.byte		N18   , Cn4 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte		N18   , Cn4 
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 010   ----------------------------------------
	.byte		        An2 
	.byte		N18   , En3 
	.byte		N18   
	.byte		N18   , An3 
	.byte	W12
	.byte		N06   , An2 
	.byte	W06
	.byte		N18   , En3 
	.byte		N18   , An3 
	.byte	W06
	.byte		N06   , An2 
	.byte	W12
	.byte		N06   
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W12
	.byte		N06   , An2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
@ 011   ----------------------------------------
	.byte		        Cn3 
	.byte		N18   , Gn3 
	.byte		N18   , Cn4 
	.byte	W12
	.byte		N06   , Cn3 
	.byte	W06
	.byte		N18   , Gn3 
	.byte		N18   , Cn4 
	.byte	W06
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte		N12   , Fn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte		N12   , Gn3 
	.byte	W12
@ 012   ----------------------------------------
mus_rg_vs_wild_2_012:
	.byte		N06   , An1 , v127
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Gs2 
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An2 
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Gs2 
	.byte		N06   , Bn2 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_2_012
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_2_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_2_012
@ 016   ----------------------------------------
mus_rg_vs_wild_2_016:
	.byte		N48   , En2 , v127
	.byte		N18   , An2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N48   , Dn2 
	.byte		N18   , An2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
	.byte	PEND
@ 017   ----------------------------------------
mus_rg_vs_wild_2_017:
	.byte		N48   , Cn2 , v127
	.byte		N18   , Cn3 
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N48   , Bn1 
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_2_016
@ 019   ----------------------------------------
	.byte		N48   , Cn2 , v127
	.byte		N18   , Cn3 
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N48   , Bn1 
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N12   , Gn3 
	.byte	W12
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_2_016
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_2_017
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_2_016
@ 023   ----------------------------------------
	.byte		N48   , Cn2 , v127
	.byte		N18   , Cn3 
	.byte	W18
	.byte		        Dn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N48   , Bn1 
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        En3 
	.byte	W18
	.byte		N12   , Gs3 
	.byte	W12
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_rg_vs_wild_3:
	.byte	KEYSH , mus_rg_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 68
	.byte		PAN   , c_v-27
	.byte		VOL   , 110*mus_rg_vs_wild_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
mus_rg_vs_wild_3_004:
	.byte		N18   , An2 , v127
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		N12   , En2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		        Fs2 
	.byte	W18
	.byte		N12   , Dn2 
	.byte	W12
	.byte	PEND
@ 005   ----------------------------------------
mus_rg_vs_wild_3_005:
	.byte		N18   , Cn3 , v127
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , Bn2 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_3_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_3_005
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte		N18   , An2 , v127
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
@ 013   ----------------------------------------
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
@ 014   ----------------------------------------
	.byte		N12   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 016   ----------------------------------------
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
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_rg_vs_wild_4:
	.byte	KEYSH , mus_rg_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 90
	.byte		VOL   , 85*mus_rg_vs_wild_mvl/mxv
	.byte		N03   , En3 , v127
	.byte	W12
	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W18
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W24
@ 001   ----------------------------------------
mus_rg_vs_wild_4_001:
	.byte		N03   , En3 , v127
	.byte	W12
	.byte		N03   
	.byte	W18
	.byte		N03   
	.byte	W06
	.byte		        Fn3 
	.byte	W06
	.byte		        En3 
	.byte	W18
	.byte		        Ds3 
	.byte	W12
	.byte		        En3 
	.byte	W24
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_4_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_4_001
@ 004   ----------------------------------------
mus_rg_vs_wild_4_004:
	.byte		N08   , An2 , v127
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        Gs2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte	PEND
@ 005   ----------------------------------------
mus_rg_vs_wild_4_005:
	.byte		N08   , Fs2 , v127
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        Fs2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        Fn2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte		        En2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        En3 
	.byte	W08
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_4_004
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_4_005
@ 008   ----------------------------------------
mus_rg_vs_wild_4_008:
	.byte		N24   , An2 , v127
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte	PEND
@ 009   ----------------------------------------
	.byte		        Cn3 
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Fn3 
	.byte	W24
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_4_008
@ 011   ----------------------------------------
	.byte		N24   , Cn3 , v127
	.byte	W24
	.byte		        Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 012   ----------------------------------------
	.byte		N18   , An2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N36   , En3 
	.byte	W36
	.byte		N24   , Gs3 
	.byte	W24
@ 013   ----------------------------------------
	.byte		N18   , An2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N36   , En3 
	.byte	W36
	.byte		N24   , Gn3 
	.byte	W24
@ 014   ----------------------------------------
	.byte		N18   , An2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N36   , En3 
	.byte	W36
	.byte		N24   , Fs3 
	.byte	W24
@ 015   ----------------------------------------
	.byte		N18   , An2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N36   , Ds3 
	.byte	W36
	.byte		N24   , En3 
	.byte	W24
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W96
@ 020   ----------------------------------------
	.byte		N12   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Fs2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 022   ----------------------------------------
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
@ 023   ----------------------------------------
	.byte		        An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_rg_vs_wild_5:
	.byte	KEYSH , mus_rg_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 47
	.byte		VOL   , 102*mus_rg_vs_wild_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
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
mus_rg_vs_wild_5_008:
	.byte		N18   , En2 , v127
	.byte	W18
	.byte		        Bn1 
	.byte	W18
	.byte		N24   , En2 
	.byte	W24
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   
	.byte	W12
	.byte		N06   , Bn1 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_5_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_5_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_5_008
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_5_008
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_5_008
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_5_008
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_5_008
@ 016   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.10) ****************@

mus_rg_vs_wild_6:
	.byte	KEYSH , mus_rg_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_rg_vs_wild_mvl/mxv
	.byte		N06   , Cn1 , v127
	.byte		N12   , Fn1 
	.byte		N06   , Fs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N06   
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte		N12   , Gn1 
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte		N06   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Fn1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte		N12   , Gn1 
	.byte	W06
	.byte		N06   , Cn1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W12
@ 001   ----------------------------------------
mus_rg_vs_wild_6_001:
	.byte		N06   , Cn1 , v127
	.byte		N12   , Fn1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte		N12   , Gn1 
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte		N06   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Fn1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte		N12   , Gn1 
	.byte	W06
	.byte		N06   , Cn1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_rg_vs_wild_6_002:
	.byte		N06   , Cn1 , v127
	.byte		N12   , Fn1 
	.byte		N06   , Fs1 
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N06   
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte		N12   , Gn1 
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte		N06   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Fn1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte		N12   , Gn1 
	.byte	W06
	.byte		N06   , Cn1 
	.byte		N06   , As1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_rg_vs_wild_6_003:
	.byte		N06   , Cn1 , v127
	.byte		N12   , Fn1 
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte		N12   , Gn1 
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte		N06   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N12   , Fn1 
	.byte		N06   , Fs1 
	.byte	W09
	.byte		N03   , Dn2 
	.byte	W03
	.byte		N06   , Cn1 
	.byte		N03   , Dn2 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		        Cn2 
	.byte	W03
	.byte		N03   
	.byte	W03
	.byte		N06   , Cn1 
	.byte		N06   , En1 
	.byte		N06   , Fs1 
	.byte		N12   , Gn1 
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        Bn1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte		N03   , An1 
	.byte		N06   , As1 
	.byte		N03   , Cn2 
	.byte	W03
	.byte		        An1 
	.byte	W03
	.byte		N06   , Cn1 
	.byte		N06   , En1 
	.byte		N03   , Bn1 
	.byte	W03
	.byte		        Gn1 
	.byte		N03   , An1 
	.byte	W03
	.byte		        Fn1 
	.byte		N03   , Gn1 
	.byte		N03   , An1 
	.byte	W03
	.byte		        Fn1 
	.byte	W03
	.byte	PEND
@ 004   ----------------------------------------
	.byte		N06   , Cn1 
	.byte		N03   , Fn1 
	.byte		N06   , Fs1 
	.byte	W03
	.byte		N03   , Gn1 
	.byte	W09
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte		N06   , As1 
	.byte	W12
@ 005   ----------------------------------------
mus_rg_vs_wild_6_005:
	.byte		N06   , Cn1 , v127
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte		N06   , As1 
	.byte	W12
	.byte	PEND
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_005
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_005
@ 008   ----------------------------------------
mus_rg_vs_wild_6_008:
	.byte		N06   , Cn1 , v127
	.byte		N24   , Cs2 
	.byte		N12   , Ds2 
	.byte	W18
	.byte		N06   , En1 
	.byte	W06
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W12
	.byte		N12   , Ds2 
	.byte	W12
	.byte		N06   , En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte		        En1 
	.byte		N12   , Ds2 
	.byte	W06
	.byte		N06   , Cn1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		        Cn1 
	.byte	W06
	.byte	PEND
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_008
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_008
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_008
@ 012   ----------------------------------------
mus_rg_vs_wild_6_012:
	.byte		N06   , Cn1 , v127
	.byte		N12   , Cs2 
	.byte	W12
	.byte		N06   , Cn1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Cn1 
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte		N06   , En1 
	.byte	W12
	.byte	PEND
@ 013   ----------------------------------------
mus_rg_vs_wild_6_013:
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte		N06   , En1 
	.byte	W12
	.byte		        Cn1 
	.byte		N06   , En1 
	.byte	W18
	.byte		        Cn1 
	.byte	W06
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		        En1 
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte	PEND
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_013
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_008
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_008
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_008
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_008
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_002
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_001
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_002
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_6_003
@ 024   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.6) ****************@

mus_rg_vs_wild_7:
	.byte	KEYSH , mus_rg_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 33
	.byte		VOL   , 127*mus_rg_vs_wild_mvl/mxv
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
@ 001   ----------------------------------------
mus_rg_vs_wild_7_001:
	.byte		N06   , An1 , v127
	.byte	W06
	.byte		N12   , En2 
	.byte	W12
	.byte		N24   , Cn2 
	.byte	W24
	.byte		N12   , En2 
	.byte	W12
	.byte		N06   , Cn2 
	.byte	W06
	.byte		        En2 
	.byte	W06
	.byte		        Dn2 
	.byte	W06
	.byte		        Cn2 
	.byte	W06
	.byte		        Bn1 
	.byte	W06
	.byte		N12   , Gn1 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 003   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 004   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 008   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 009   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 010   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_7_001
@ 016   ----------------------------------------
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
	.byte	FINE

@**************** Track 8 (Midi-Chn.7) ****************@

mus_rg_vs_wild_8:
	.byte	KEYSH , mus_rg_vs_wild_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 68
	.byte		PAN   , c_v+25
	.byte		VOL   , 82*mus_rg_vs_wild_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte	W12
	.byte		N18   , An2 , v127
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		N12   , En2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		        Fs2 
	.byte	W18
@ 005   ----------------------------------------
mus_rg_vs_wild_8_005:
	.byte		N12   , Dn2 , v127
	.byte	W12
	.byte		N18   , Cn3 
	.byte	W18
	.byte		        Bn2 
	.byte	W18
	.byte		N12   , An2 
	.byte	W12
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte	PEND
@ 006   ----------------------------------------
	.byte		N12   , Bn2 
	.byte	W12
	.byte		N18   , An2 
	.byte	W18
	.byte		        Gs2 
	.byte	W18
	.byte		N12   , En2 
	.byte	W12
	.byte		N18   , Gn2 
	.byte	W18
	.byte		        Fs2 
	.byte	W18
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rg_vs_wild_8_005
@ 008   ----------------------------------------
	.byte		N12   , Bn2 , v127
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
@ 012   ----------------------------------------
	.byte	W12
	.byte		N18   , An2 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , En3 
	.byte	W12
	.byte		N08   
	.byte	W08
	.byte		        An2 
	.byte	W08
	.byte		        Bn2 
	.byte	W08
	.byte		        Cn3 
	.byte	W08
	.byte		        Dn3 
	.byte	W04
@ 013   ----------------------------------------
	.byte	W04
	.byte		        En3 
	.byte	W08
	.byte		N18   , Dn3 
	.byte	W18
	.byte		        Cn3 
	.byte	W18
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
@ 014   ----------------------------------------
	.byte		N06   , Bn2 
	.byte	W06
	.byte		        Cn3 
	.byte	W06
	.byte		N12   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 015   ----------------------------------------
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		        Fn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        An2 
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
	.byte	FINE

@******************************************************@
	.align	2

mus_rg_vs_wild:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rg_vs_wild_pri	@ Priority
	.byte	mus_rg_vs_wild_rev	@ Reverb.

	.word	mus_rg_vs_wild_grp

	.word	mus_rg_vs_wild_1
	.word	mus_rg_vs_wild_2
	.word	mus_rg_vs_wild_3
	.word	mus_rg_vs_wild_4
	.word	mus_rg_vs_wild_5
	.word	mus_rg_vs_wild_6
	.word	mus_rg_vs_wild_7
	.word	mus_rg_vs_wild_8

	.end
