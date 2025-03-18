	.include "MPlayDef.s"

	.equ	mus_vs_champion_grp, voicegroup121
	.equ	mus_vs_champion_pri, 0
	.equ	mus_vs_champion_rev, 0
	.equ	mus_vs_champion_mvl, 80
	.equ	mus_vs_champion_key, 0
	.equ	mus_vs_champion_tbs, 1
	.equ	mus_vs_champion_exg, 0
	.equ	mus_vs_champion_cmp, 1

	.section .rodata
	.global	mus_vs_champion
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_vs_champion_1:
	.byte	KEYSH , mus_vs_champion_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 350*mus_vs_champion_tbs/2
	.byte		VOICE , 35
	.byte		VOL   , 60*mus_vs_champion_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , Cs1 , v127
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 002   ----------------------------------------
	.byte		N96   , Dn1 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        En1 
	.byte	W96
@ 004   ----------------------------------------
	.byte		TIE   , Fs1 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
LoopStart_001:
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
	.byte	W96
	.byte		EOT   
@ 012   ----------------------------------------
mus_vs_champion_1_012:
	.byte		N24   , Fs0 , v127
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		        Fs0 
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 015   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 023   ----------------------------------------
mus_vs_champion_1_023:
	.byte		N24   , Fs0 , v127
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte	PEND
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 035   ----------------------------------------
	.byte		N24   , Fs0 , v127
	.byte	W24
	.byte		        Fs1 
	.byte	W24
	.byte		        Dn0 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
@ 036   ----------------------------------------
mus_vs_champion_1_036:
	.byte		N24   , Gn0 , v127
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Gn0 
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 038   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 039   ----------------------------------------
mus_vs_champion_1_039:
	.byte		N24   , Gn0 , v127
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Gs0 
	.byte	W24
	.byte		        Gs1 
	.byte	W24
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_039
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 051   ----------------------------------------
mus_vs_champion_1_051:
	.byte		N24   , Gn0 , v127
	.byte	W24
	.byte		        Gn1 
	.byte	W24
	.byte		        Gn0 
	.byte		N24   , Gn1 
	.byte	W24
	.byte		        Gs0 
	.byte		N24   , Gs1 
	.byte	W24
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_039
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_039
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_039
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_051
@ 068   ----------------------------------------
mus_vs_champion_1_068:
	.byte		N24   , Ds0 , v127
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        Ds0 
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte	PEND
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_068
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_068
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_068
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_068
@ 073   ----------------------------------------
	.byte		N24   , Ds0 , v127
	.byte	W24
	.byte		        Ds1 
	.byte	W24
	.byte		        Ds0 
	.byte	W24
	.byte		        Gn0 
	.byte		N24   , Fs1 
	.byte	W24
@ 074   ----------------------------------------
mus_vs_champion_1_074:
	.byte		N24   , Cn0 , v127
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Cn0 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_074
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_074
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_074
@ 078   ----------------------------------------
mus_vs_champion_1_078:
	.byte		N24   , Dn0 , v127
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte		        Dn0 
	.byte	W24
	.byte		        Dn1 
	.byte	W24
	.byte	PEND
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 083   ----------------------------------------
	.byte		N96   , Dn0 , v127
	.byte		N96   , Dn1 
	.byte	W96
@ 084   ----------------------------------------
	.byte		TIE   , Dn0 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 086   ----------------------------------------
	.byte		TIE   , En0 
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 088   ----------------------------------------
	.byte		TIE   , Fs0 
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 090   ----------------------------------------
	.byte		TIE   , Gn0 
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 092   ----------------------------------------
	.byte		N72   , Dn1 
	.byte	W72
	.byte		N12   , Fn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
@ 093   ----------------------------------------
	.byte		N96   
	.byte	W96
@ 094   ----------------------------------------
	.byte		        Cs1 
	.byte	W96
@ 095   ----------------------------------------
	.byte		N48   , An0 
	.byte	W48
	.byte		        An1 
	.byte	W48
@ 096   ----------------------------------------
	.byte		N96   , Bn0 
	.byte	W96
@ 097   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		        Bn1 
	.byte	W48
@ 098   ----------------------------------------
mus_vs_champion_1_098:
	.byte		N48   , Cs1 , v127
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_098
@ 100   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 102   ----------------------------------------
mus_vs_champion_1_102:
	.byte		N24   , En0 , v127
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte		        En0 
	.byte	W24
	.byte		        En1 
	.byte	W24
	.byte	PEND
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_102
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_036
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 110   ----------------------------------------
mus_vs_champion_1_110:
	.byte		N24   , Cs0 , v127
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte		        Cs0 
	.byte	W24
	.byte		        Cs1 
	.byte	W24
	.byte	PEND
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_110
@ 112   ----------------------------------------
mus_vs_champion_1_112:
	.byte		N24   , BnM1, v127
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte		        BnM1
	.byte	W24
	.byte		        Bn0 
	.byte	W24
	.byte	PEND
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_112
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_110
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_110
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_078
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_102
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_102
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 128   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 129   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 130   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 131   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 132   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
@ 139   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_1_012
	.byte	GOTO
	 .word LoopStart_001
@ 140   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_vs_champion_2:
	.byte	KEYSH , mus_vs_champion_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Cs4 , v127
	.byte		N12   , Fn4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Bn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        En4 
	.byte	W12
	.byte		        Gs4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        An3 
	.byte	W12
	.byte		        Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 004   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
	.byte		TIE   , An2 , v100
	.byte		TIE   , Cs3 
	.byte		TIE   , Fs3 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   , An2 
	.byte		        Cs3 
	.byte		        Fs3 
@ 006   ----------------------------------------
LoopStart_002:
	.byte		TIE   , Cs3 
	.byte		TIE   , En3 
	.byte		TIE   , Gs3 
	.byte	W96
@ 007   ----------------------------------------
	.byte	W72
	.byte		EOT   , Cs3 
	.byte		        En3 
	.byte		        Gs3 
	.byte		N12   , Bn2 
	.byte		N12   , Dn3 
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , En3 
	.byte		N12   , Gs3 
	.byte	W12
@ 008   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte		TIE   , Fs3 
	.byte		TIE   , An3 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W72
	.byte		EOT   , Dn3 
	.byte		        Fs3 
	.byte		        An3 
	.byte		N12   , Cs3 
	.byte		N12   , En3 
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Fs3 
	.byte		N12   , An3 
	.byte	W12
@ 010   ----------------------------------------
	.byte		TIE   , En3 
	.byte		TIE   , Gs3 
	.byte		TIE   , Bn3 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   , En3 
	.byte		        Gs3 
	.byte		        Bn3 
@ 012   ----------------------------------------
mus_vs_champion_2_012:
	.byte		TIE   , Fs3 , v100
	.byte		TIE   , An3 
	.byte		TIE   , Cs4 
	.byte	W96
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs3 
	.byte		        An3 
	.byte		        Cs4 
	.byte		N48   , An3 
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte	W48
@ 014   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_2_012
@ 015   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs3 
	.byte		        An3 
	.byte		        Cs4 
	.byte		N48   , Gs3 , v100
	.byte		N48   , Cs4 
	.byte		N48   , En4 
	.byte		N48   , Gs4 
	.byte	W48
@ 016   ----------------------------------------
	.byte		TIE   , An3 
	.byte		TIE   , Dn4 
	.byte		TIE   , Fs4 
	.byte		TIE   , An4 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W72
	.byte		EOT   , An3 
	.byte		        Dn4 
	.byte		        Fs4 
	.byte		        An4 
	.byte		N12   , Gs3 
	.byte		N12   , Cs4 
	.byte		N12   , En4 
	.byte	W12
	.byte		        As3 
	.byte		N12   , Dn4 
	.byte		N12   , Fs4 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N96   , Bn3 , v104
	.byte		N96   , En4 , v100
	.byte		N96   , Bn4 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Cs4 , v104
	.byte		N96   , Fs4 , v100
	.byte		N96   , Cs5 
	.byte	W96
@ 020   ----------------------------------------
	.byte		VOICE , 29
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
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
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
mus_vs_champion_2_036:
	.byte		TIE   , Dn3 , v068
	.byte		TIE   , Dn4 , v096
	.byte	W96
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Dn4 
@ 038   ----------------------------------------
	.byte		N96   , Cn3 , v068
	.byte		N96   , Cn4 , v096
	.byte	W96
@ 039   ----------------------------------------
	.byte		N68   , Fn3 , v068
	.byte		N68   , Fn4 , v096
	.byte	W72
	.byte		N12   , En3 , v068
	.byte		N12   , En4 , v096
	.byte	W12
	.byte		        Ds3 , v068
	.byte		N12   , Ds4 , v096
	.byte	W12
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_2_036
@ 041   ----------------------------------------
	.byte	W48
	.byte		EOT   , Dn3 
	.byte		        Dn4 
	.byte	W24
	.byte		N12   , Gn3 , v068
	.byte		N12   , Gn4 , v108
	.byte	W12
	.byte		        An3 , v068
	.byte		N12   , An4 , v108
	.byte	W12
@ 042   ----------------------------------------
	.byte		N72   , As3 , v068
	.byte		N72   , As4 , v108
	.byte	W72
	.byte		        An3 , v068
	.byte		N72   , An4 , v104
	.byte	W24
@ 043   ----------------------------------------
	.byte	W48
	.byte		N48   , Fn3 , v068
	.byte		N48   , Fn4 , v104
	.byte	W48
@ 044   ----------------------------------------
	.byte		TIE   , Gn3 , v068
	.byte		TIE   , Gn4 , v096
	.byte	W96
@ 045   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte		N12   , Fs3 , v064
	.byte		N12   , Fs4 , v092
	.byte	W12
	.byte		        Dn3 , v064
	.byte		N12   , Dn4 , v092
	.byte	W12
@ 046   ----------------------------------------
	.byte		N96   , Cn3 , v064
	.byte		N96   , Cn4 , v092
	.byte	W96
@ 047   ----------------------------------------
	.byte		        Fn3 , v064
	.byte		N96   , Fn4 , v092
	.byte	W96
@ 048   ----------------------------------------
	.byte		TIE   , Dn3 , v064
	.byte		TIE   , Dn4 , v092
	.byte	W96
@ 049   ----------------------------------------
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
	.byte	W01
	.byte		        47*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        46*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        46*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        45*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        45*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        44*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        44*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        43*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        43*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        43*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        42*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        42*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        41*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        41*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        40*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        40*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        39*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        39*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        38*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        38*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        37*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        37*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        36*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        36*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        35*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        35*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        34*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        34*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        34*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        33*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        33*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        32*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        32*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        31*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        31*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        30*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        30*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        29*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        29*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        28*mus_vs_champion_mvl/mxv
	.byte	W01
@ 050   ----------------------------------------
	.byte	W01
	.byte		        28*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        27*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        27*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        26*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        26*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        26*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        25*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        25*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        24*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        24*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        23*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        23*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        22*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        22*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        21*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        21*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        20*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        20*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        19*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        19*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        18*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        18*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        17*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        17*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        17*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        16*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        16*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        15*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        15*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        14*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        14*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        13*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        13*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        12*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        12*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        11*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        11*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        10*mus_vs_champion_mvl/mxv
	.byte	W03
	.byte		        10*mus_vs_champion_mvl/mxv
	.byte	W02
	.byte		        9*mus_vs_champion_mvl/mxv
	.byte	W01
	.byte		EOT   , Dn3 
	.byte		        Dn4 
@ 051   ----------------------------------------
	.byte	W48
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
	.byte	W24
	.byte		N12   , Gn3 , v100
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        An3 , v096
	.byte		N12   , An4 , v100
	.byte	W12
@ 052   ----------------------------------------
	.byte		TIE   , Gn3 , v064
	.byte		TIE   , As3 , v096
	.byte		TIE   , As4 , v100
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        As3 
	.byte		        As4 
@ 054   ----------------------------------------
	.byte		N96   , Fs3 , v064
	.byte		N96   , An3 , v100
	.byte		N96   , An4 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        An3 , v064
	.byte		N96   , Cn4 , v100
	.byte		N96   , Cn5 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        Gs3 , v060
	.byte		N96   , Bn3 , v100
	.byte		N96   , Bn4 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        En3 , v064
	.byte		N96   , Gn3 , v100
	.byte		N96   , En4 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Ds3 
	.byte		N96   , Fs3 , v064
	.byte		N96   , Ds4 , v100
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Gs3 , v064
	.byte		N96   , Bn3 , v100
	.byte		N96   , Gs4 
	.byte	W96
@ 060   ----------------------------------------
	.byte		TIE   , Gn3 , v060
	.byte		TIE   , As3 , v100
	.byte		TIE   , Gn4 
	.byte	W96
@ 061   ----------------------------------------
	.byte	W72
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte		N12   , Fn3 
	.byte		N12   , Fn4 
	.byte	W12
	.byte		        Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		EOT   , As3 
@ 062   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Gn3 , v064
	.byte		N96   , Dn4 , v100
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Fn3 
	.byte		N96   , As3 , v064
	.byte		N96   , Fn4 , v100
	.byte	W96
@ 064   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 , v064
	.byte		TIE   , Dn4 , v100
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W90
	.byte		EOT   , Dn3 
	.byte	W06
	.byte		        Gn3 
	.byte		        Dn4 
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
mus_vs_champion_2_068:
	.byte		TIE   , As3 , v100
	.byte		TIE   , As4 
	.byte	W96
	.byte	PEND
@ 069   ----------------------------------------
	.byte	W96
	.byte		EOT   , As3 
	.byte		        As4 
@ 070   ----------------------------------------
	.byte		N96   , An3 
	.byte		N96   , An4 
	.byte	W96
@ 071   ----------------------------------------
	.byte		N48   , As3 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Cn4 
	.byte		N48   , Cn5 
	.byte	W48
@ 072   ----------------------------------------
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		TIE   , As3 
	.byte		TIE   , As4 
	.byte	W84
@ 073   ----------------------------------------
	.byte	W72
	.byte		EOT   , As3 
	.byte		        As4 
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gn3 
	.byte		N12   , Gn4 
	.byte	W12
@ 074   ----------------------------------------
mus_vs_champion_2_074:
	.byte		TIE   , Ds3 , v100
	.byte		TIE   , Ds4 
	.byte	W96
	.byte	PEND
@ 075   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   , Ds3 
	.byte		        Ds4 
	.byte	W13
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_2_074
@ 077   ----------------------------------------
	.byte	W96
	.byte		EOT   , Ds3 
	.byte		        Ds4 
@ 078   ----------------------------------------
	.byte		N16   , Cn3 , v100
	.byte		N16   , Cn4 
	.byte	W16
	.byte		        Gn2 
	.byte		N16   , Gn3 
	.byte	W16
	.byte		        Cn3 
	.byte		N16   , Cn4 
	.byte	W16
	.byte		        Dn3 
	.byte		N16   , Dn4 
	.byte	W16
	.byte		        Gn2 
	.byte		N16   , Gn3 
	.byte	W16
	.byte		        Dn3 
	.byte		N16   , Dn4 
	.byte	W16
@ 079   ----------------------------------------
	.byte		        Ds3 
	.byte		N16   , Ds4 
	.byte	W16
	.byte		        Gn2 
	.byte		N16   , Gn3 
	.byte	W16
	.byte		        Ds3 
	.byte		N16   , Ds4 
	.byte	W16
	.byte		        Ds3 
	.byte		N16   , Ds4 
	.byte	W16
	.byte		        Fn3 
	.byte		N16   , Fn4 
	.byte	W16
	.byte		        Gn3 
	.byte		N16   , Gn4 
	.byte	W16
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_2_068
@ 081   ----------------------------------------
	.byte	W72
	.byte		EOT   , As3 
	.byte		        As4 
	.byte		N12   , Cn4 , v100
	.byte		N12   , Cn5 
	.byte	W12
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W12
@ 082   ----------------------------------------
	.byte		TIE   , An3 
	.byte		TIE   , An4 
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
	.byte		        An4 
@ 084   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , Fs4 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs3 
	.byte		        Fs4 
	.byte		N16   , Fs3 
	.byte		N16   , Fs4 
	.byte	W16
	.byte		        Cs3 
	.byte		N16   , Cs4 
	.byte	W16
	.byte		        Fs3 
	.byte		N16   , Fs4 
	.byte	W16
@ 086   ----------------------------------------
	.byte		        Gs3 , v104
	.byte		N16   , Gs4 
	.byte	W16
	.byte		        Cs3 
	.byte		N16   , Cs4 
	.byte	W16
	.byte		        Gs3 
	.byte		N16   , Gs4 
	.byte	W16
	.byte		        An3 
	.byte		N16   , An4 
	.byte	W16
	.byte		        Cs3 
	.byte		N16   , Cs4 
	.byte	W16
	.byte		        An3 
	.byte		N16   , An4 
	.byte	W16
@ 087   ----------------------------------------
	.byte		        Bn3 
	.byte		N16   , Bn4 
	.byte	W16
	.byte		        Cs3 
	.byte		N16   , Cs4 
	.byte	W16
	.byte		        Bn3 
	.byte		N16   , Bn4 
	.byte	W16
	.byte		        En4 
	.byte		N16   , En5 
	.byte	W16
	.byte		        En3 
	.byte		N16   , En4 
	.byte	W16
	.byte		        Ds3 
	.byte		N16   , Ds4 
	.byte	W16
@ 088   ----------------------------------------
	.byte		TIE   , En3 
	.byte		TIE   , En4 
	.byte	W96
@ 089   ----------------------------------------
	.byte	W72
	.byte		EOT   , En3 
	.byte		        En4 
	.byte		N12   , Dn3 
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 090   ----------------------------------------
	.byte		N96   , Dn3 
	.byte		N96   , Dn4 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        En3 
	.byte		N96   , En4 
	.byte	W96
@ 092   ----------------------------------------
	.byte		TIE   , Fs3 , v100
	.byte		TIE   , Dn4 , v104
	.byte		TIE   , Fs4 
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Dn4 
	.byte		        Fs4 
@ 094   ----------------------------------------
	.byte		TIE   , En3 , v100
	.byte		TIE   , Cs4 , v108
	.byte		TIE   , En4 
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
	.byte		EOT   , En3 
	.byte		        Cs4 
	.byte		        En4 
@ 096   ----------------------------------------
	.byte		N90   , Dn3 , v100
	.byte		N96   , Bn3 , v108
	.byte		N96   , Dn4 
	.byte	W96
@ 097   ----------------------------------------
	.byte		N16   , Bn3 , v112
	.byte		N16   , Bn4 
	.byte	W16
	.byte		        Dn3 
	.byte		N16   , Dn4 
	.byte	W16
	.byte		        Fs3 
	.byte		N16   , Fs4 
	.byte	W16
	.byte		        Bn3 
	.byte		N16   , Bn4 
	.byte	W16
	.byte		        Dn3 
	.byte		N16   , Dn4 
	.byte	W16
	.byte		        Fs3 
	.byte		N16   , Fs4 
	.byte	W16
@ 098   ----------------------------------------
	.byte		TIE   , Cs3 , v100
	.byte		TIE   , Gs3 , v112
	.byte		TIE   , Cs4 
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        Gs3 
	.byte		        Cs4 
@ 100   ----------------------------------------
	.byte		TIE   , Fs3 , v072
	.byte		TIE   , Cs4 
	.byte	W96
@ 101   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs3 
	.byte		        Cs4 
	.byte		N48   , An3 
	.byte		N48   , En4 
	.byte	W48
@ 102   ----------------------------------------
	.byte		N72   , Gs3 
	.byte		N72   , Ds4 
	.byte	W72
	.byte		        En3 
	.byte		N72   , Bn3 
	.byte	W24
@ 103   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs3 
	.byte		N48   , Gs3 
	.byte	W48
@ 104   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , An3 
	.byte	W96
@ 105   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs3 
	.byte		        An3 
	.byte		N48   , En3 
	.byte		N48   , Fs3 
	.byte	W48
@ 106   ----------------------------------------
	.byte		N96   , En3 
	.byte		N96   , Gn3 
	.byte	W96
@ 107   ----------------------------------------
	.byte		        En3 
	.byte		N96   , Gn3 
	.byte	W96
@ 108   ----------------------------------------
	.byte		TIE   , An3 
	.byte		TIE   , Dn4 
	.byte	W96
@ 109   ----------------------------------------
	.byte	W48
	.byte		EOT   , An3 
	.byte		        Dn4 
	.byte		N48   , Cs4 
	.byte		N48   , Fs4 
	.byte	W48
@ 110   ----------------------------------------
	.byte		N72   , Bn3 
	.byte		N72   , En4 
	.byte	W72
	.byte		        An3 
	.byte		N72   , Dn4 
	.byte	W24
@ 111   ----------------------------------------
	.byte	W48
	.byte		N48   , Gs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 112   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , Bn3 
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Bn3 
@ 114   ----------------------------------------
	.byte		N48   , Bn2 , v068
	.byte		N48   , Gs3 
	.byte	W48
	.byte		        Cs3 
	.byte		N48   , An3 
	.byte	W48
@ 115   ----------------------------------------
	.byte		        Dn3 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        En3 
	.byte		N48   , Gs3 
	.byte	W48
@ 116   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Dn4 
@ 118   ----------------------------------------
	.byte		TIE   , Gs3 
	.byte		TIE   , En4 
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs3 
	.byte		        En4 
@ 120   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , Bn3 
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Bn3 
@ 122   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte		VOICE , 24
	.byte		VOL   , 60*mus_vs_champion_mvl/mxv
	.byte		N24   , An2 , v064
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W72
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W24
@ 129   ----------------------------------------
mus_vs_champion_2_129:
	.byte	W48
	.byte		N24   , An2 , v064
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
	.byte	PEND
@ 130   ----------------------------------------
mus_vs_champion_2_130:
	.byte	W24
	.byte		N24   , An2 , v064
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W72
	.byte	PEND
@ 131   ----------------------------------------
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
@ 132   ----------------------------------------
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W72
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W24
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_2_129
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_2_130
@ 135   ----------------------------------------
	.byte		N24   , An2 , v060
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
@ 136   ----------------------------------------
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W72
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W24
@ 137   ----------------------------------------
	.byte	W48
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
@ 138   ----------------------------------------
	.byte	W24
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W72
@ 139   ----------------------------------------
	.byte		        An2 
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
	.byte		        Bn2 
	.byte		N24   , Fs3 
	.byte		N24   , Bn3 
	.byte	W48
	.byte	GOTO
	 .word LoopStart_002
@ 140   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_vs_champion_3:
	.byte	KEYSH , mus_vs_champion_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 43*mus_vs_champion_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
	.byte		N24   , Fs4 , v127
	.byte	W24
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        An4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		TIE   , Gs4 
	.byte		TIE   , Cs5 
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs4 
	.byte		        Cs5 
@ 004   ----------------------------------------
	.byte		VOL   , 60*mus_vs_champion_mvl/mxv
	.byte		TIE   , Fs2 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
LoopStart_003:
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
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte	W12
@ 020   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
	.byte		N24   , Fs2 , v100
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W72
	.byte		        Fs2 
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
@ 021   ----------------------------------------
mus_vs_champion_3_021:
	.byte	W48
	.byte		N24   , Fs2 , v100
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W48
	.byte	PEND
@ 022   ----------------------------------------
mus_vs_champion_3_022:
	.byte	W24
	.byte		N24   , An2 , v100
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W72
	.byte	PEND
@ 023   ----------------------------------------
mus_vs_champion_3_023:
	.byte		N24   , Gs2 , v100
	.byte		N24   , Ds3 
	.byte		N24   , Gs3 
	.byte	W48
	.byte		N48   , Gn2 
	.byte		N48   , Dn3 
	.byte		N48   , Gn3 
	.byte	W48
	.byte	PEND
@ 024   ----------------------------------------
mus_vs_champion_3_024:
	.byte		N24   , Fs2 , v100
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W72
	.byte		        Fs2 
	.byte		N24   , Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_022
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_023
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_024
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_022
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_023
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_024
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_021
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_022
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_023
@ 036   ----------------------------------------
mus_vs_champion_3_036:
	.byte		N24   , Gn2 , v100
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W72
	.byte		        Gn2 
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
mus_vs_champion_3_037:
	.byte	W48
	.byte		N24   , Gn2 , v100
	.byte		N24   , Dn3 
	.byte		N24   , Gn3 
	.byte	W48
	.byte	PEND
@ 038   ----------------------------------------
mus_vs_champion_3_038:
	.byte	W24
	.byte		N24   , As2 , v100
	.byte		N24   , Fn3 
	.byte		N24   , As3 
	.byte	W72
	.byte	PEND
@ 039   ----------------------------------------
mus_vs_champion_3_039:
	.byte		N24   , An2 , v100
	.byte		N24   , En3 
	.byte		N24   , An3 
	.byte	W48
	.byte		N48   , Gs2 
	.byte		N48   , Ds3 
	.byte		N48   , Gs3 
	.byte	W48
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_036
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_037
@ 082   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_038
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_039
@ 084   ----------------------------------------
	.byte		TIE   , An2 , v084
	.byte		TIE   , Dn3 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
	.byte		EOT   , An2 
	.byte		        Dn3 
@ 086   ----------------------------------------
	.byte		TIE   , Bn2 
	.byte		TIE   , En3 
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn2 
	.byte		        En3 
@ 088   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte		TIE   , Fs3 
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        Fs3 
@ 090   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte		TIE   , Gn3 
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Gn3 
@ 092   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte		TIE   , Fs3 
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Fs3 
@ 094   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte		TIE   , En3 
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        En3 
@ 096   ----------------------------------------
	.byte		TIE   , Bn2 
	.byte		TIE   , Dn3 
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn2 
	.byte		        Dn3 
@ 098   ----------------------------------------
	.byte		TIE   , Gs2 
	.byte		TIE   , Cs3 
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gs2 
	.byte		        Cs3 
@ 100   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
	.byte		N24   , An2 , v100
	.byte		N24   , Dn3 
	.byte	W72
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte	W24
@ 101   ----------------------------------------
	.byte	W48
	.byte		        An2 
	.byte		N24   , Dn3 
	.byte	W48
@ 102   ----------------------------------------
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , En3 
	.byte	W72
@ 103   ----------------------------------------
	.byte		        Bn2 
	.byte		N24   , En3 
	.byte	W48
	.byte		        Bn2 
	.byte		N24   , En3 
	.byte	W48
@ 104   ----------------------------------------
mus_vs_champion_3_104:
	.byte		N24   , Cs3 , v100
	.byte		N24   , Fs3 
	.byte	W72
	.byte		        Cs3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 105   ----------------------------------------
mus_vs_champion_3_105:
	.byte	W48
	.byte		N24   , Cs3 , v100
	.byte		N24   , Fs3 
	.byte	W48
	.byte	PEND
@ 106   ----------------------------------------
	.byte	W24
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W72
@ 107   ----------------------------------------
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W48
	.byte		        Dn3 
	.byte		N24   , Gn3 
	.byte	W48
@ 108   ----------------------------------------
mus_vs_champion_3_108:
	.byte		N24   , Dn3 , v100
	.byte		N24   , Fs3 
	.byte	W72
	.byte		        Dn3 
	.byte		N24   , Fs3 
	.byte	W24
	.byte	PEND
@ 109   ----------------------------------------
mus_vs_champion_3_109:
	.byte	W48
	.byte		N24   , Dn3 , v100
	.byte		N24   , Fs3 
	.byte	W48
	.byte	PEND
@ 110   ----------------------------------------
mus_vs_champion_3_110:
	.byte	W24
	.byte		N24   , Cs3 , v100
	.byte		N24   , En3 
	.byte	W72
	.byte	PEND
@ 111   ----------------------------------------
mus_vs_champion_3_111:
	.byte		N24   , Cs3 , v100
	.byte		N24   , En3 
	.byte	W48
	.byte		        Cs3 
	.byte		N24   , En3 
	.byte	W48
	.byte	PEND
@ 112   ----------------------------------------
	.byte		        Bn2 
	.byte		N24   , Dn3 
	.byte	W72
	.byte		        Bn2 
	.byte		N24   , Dn3 
	.byte	W24
@ 113   ----------------------------------------
	.byte	W48
	.byte		        Bn2 
	.byte		N24   , Dn3 
	.byte	W48
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_110
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_111
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_108
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_109
@ 118   ----------------------------------------
	.byte	W24
	.byte		N24   , En3 , v100
	.byte		N24   , Gs3 
	.byte	W72
@ 119   ----------------------------------------
	.byte		        En3 
	.byte		N24   , Gs3 
	.byte	W48
	.byte		        En3 
	.byte		N24   , Gs3 
	.byte	W48
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_104
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_105
@ 122   ----------------------------------------
mus_vs_champion_3_122:
	.byte	W24
	.byte		N24   , Cs3 , v100
	.byte		N24   , Fs3 
	.byte	W72
	.byte	PEND
@ 123   ----------------------------------------
mus_vs_champion_3_123:
	.byte		N24   , Cs3 , v100
	.byte		N24   , Fs3 
	.byte	W48
	.byte		        Cs3 
	.byte		N24   , Fs3 
	.byte	W48
	.byte	PEND
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_104
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_105
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_122
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_3_123
@ 128   ----------------------------------------
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
	.byte		TIE   , An2 , v064
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
	.byte		EOT   , An2 
	.byte		        En3 
@ 136   ----------------------------------------
	.byte		TIE   
	.byte		TIE   , An3 
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
	.byte		EOT   , En3 
	.byte		        An3 
@ 138   ----------------------------------------
	.byte		N48   , En3 , v068
	.byte		TIE   , Bn3 
	.byte	W48
	.byte		N48   , En3 , v100
	.byte	W48
@ 139   ----------------------------------------
	.byte		        Fs3 , v064
	.byte	W48
	.byte		        Gs3 
	.byte	W48
	.byte		EOT   , Bn3 
	.byte	GOTO
	 .word LoopStart_003
@ 140   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_vs_champion_4:
	.byte	KEYSH , mus_vs_champion_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 60*mus_vs_champion_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W48
	.byte		N24   , Cs4 , v127
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , Ds4 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En4 
	.byte		N12   , An4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		TIE   , Cs4 
	.byte		TIE   , Gs4 
	.byte		TIE   , Cs5 
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs4 
	.byte		        Gs4 
	.byte		        Cs5 
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
LoopStart_004:
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
	.byte	W96
@ 012   ----------------------------------------
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W96
@ 016   ----------------------------------------
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
@ 018   ----------------------------------------
	.byte	W96
@ 019   ----------------------------------------
	.byte	W48
	.byte		N48   , Bn2 , v100
	.byte		N48   , Bn3 
	.byte	W48
@ 020   ----------------------------------------
	.byte		VOICE , 60
	.byte		TIE   , Fs3 
	.byte		TIE   , Fs4 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W12
	.byte		EOT   , Fs3 
	.byte		        Fs4 
	.byte	W12
	.byte		N72   , Gs3 
	.byte		N72   , Gs4 
	.byte	W72
@ 023   ----------------------------------------
	.byte		N48   , An3 
	.byte		N48   , An4 
	.byte	W48
	.byte		        En4 
	.byte		N48   , En5 
	.byte	W48
@ 024   ----------------------------------------
	.byte		TIE   , Cs4 
	.byte		TIE   , Cs5 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs4 
	.byte		        Cs5 
@ 026   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W24
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W24
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W24
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W24
@ 028   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , Fs4 
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Fs4 
@ 030   ----------------------------------------
	.byte	W18
	.byte		N78   , Gs3 
	.byte		N78   , Gs4 
	.byte	W78
@ 031   ----------------------------------------
	.byte		N48   , Fs3 
	.byte		N48   , Fs4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W48
@ 032   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte		TIE   , Cs4 
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        Cs4 
@ 035   ----------------------------------------
	.byte	W48
	.byte		N48   , Cn3 
	.byte		N48   , Cn4 
	.byte	W48
@ 036   ----------------------------------------
mus_vs_champion_4_036:
	.byte		TIE   , Gn3 , v100
	.byte		TIE   , Gn4 
	.byte	W96
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W12
	.byte		EOT   , Gn3 
	.byte		        Gn4 
	.byte	W12
	.byte		N72   , An3 
	.byte		N72   , An4 
	.byte	W72
@ 039   ----------------------------------------
	.byte		N48   , As3 
	.byte		N48   , As4 
	.byte	W48
	.byte		        Fn4 
	.byte		N48   , Fn5 
	.byte	W48
@ 040   ----------------------------------------
	.byte		TIE   , Dn4 
	.byte		TIE   , Dn5 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn4 
	.byte		        Dn5 
@ 042   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn4 
	.byte		N24   , Cn5 
	.byte	W24
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W24
	.byte		        Cn4 
	.byte		N12   , Cn5 
	.byte	W24
@ 043   ----------------------------------------
	.byte		N24   , As3 
	.byte		N24   , As4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte		N12   , Cn5 
	.byte	W24
	.byte		        As3 
	.byte		N12   , As4 
	.byte	W24
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W24
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_4_036
@ 045   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        Gn4 
@ 046   ----------------------------------------
	.byte	W18
	.byte		N78   , An3 , v100
	.byte		N78   , An4 
	.byte	W78
@ 047   ----------------------------------------
	.byte		N48   , Gn3 
	.byte		N48   , Gn4 
	.byte	W48
	.byte		        Fn3 
	.byte		N48   , Fn4 
	.byte	W48
@ 048   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte		TIE   , Dn4 
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Dn4 
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte		VOICE , 60
	.byte		VOL   , 43*mus_vs_champion_mvl/mxv
	.byte		TIE   , Dn3 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 086   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 088   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 090   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 092   ----------------------------------------
	.byte		N72   , Fs3 
	.byte	W72
	.byte		        Gs3 
	.byte	W24
@ 093   ----------------------------------------
	.byte	W48
	.byte		N48   , An3 
	.byte	W48
@ 094   ----------------------------------------
	.byte		N72   , En3 
	.byte	W72
	.byte		TIE   , Cs3 
	.byte	W24
@ 095   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 096   ----------------------------------------
	.byte		N72   , Dn3 
	.byte	W72
	.byte		        En3 
	.byte	W24
@ 097   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs3 
	.byte	W48
@ 098   ----------------------------------------
	.byte		N72   , An3 
	.byte	W72
	.byte		N96   , Gs3 
	.byte	W24
@ 099   ----------------------------------------
	.byte	W72
	.byte		VOICE , 48
	.byte		VOL   , 60*mus_vs_champion_mvl/mxv
	.byte		N12   , En3 , v127
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fn3 
	.byte		N12   , Fn4 
	.byte	W12
@ 100   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , Fs4 
	.byte	W96
@ 101   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs3 
	.byte		        Fs4 
	.byte		N48   , An3 , v124
	.byte		N48   , An4 
	.byte	W48
@ 102   ----------------------------------------
	.byte		N72   , Gs3 
	.byte		N72   , Gs4 
	.byte	W72
	.byte		        En3 
	.byte		N72   , En4 
	.byte	W24
@ 103   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs3 
	.byte		N48   , Fs4 
	.byte	W48
@ 104   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte		TIE   , Cs4 
	.byte	W96
@ 105   ----------------------------------------
	.byte	W48
	.byte		EOT   , Cs3 
	.byte		        Cs4 
	.byte		N48   , Bn2 
	.byte		N48   , Bn3 
	.byte	W48
@ 106   ----------------------------------------
	.byte		N96   , Cs3 
	.byte		N96   , Cs4 
	.byte	W96
@ 107   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , Bn3 
	.byte	W72
	.byte		N12   , Cs3 
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn2 
	.byte		N12   , Bn3 
	.byte	W12
@ 108   ----------------------------------------
mus_vs_champion_4_108:
	.byte		TIE   , Fs2 , v124
	.byte		TIE   , Fs3 
	.byte	W96
	.byte	PEND
@ 109   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs2 
	.byte		        Fs3 
	.byte		N48   , Cs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 110   ----------------------------------------
	.byte		N72   , Bn2 
	.byte		N72   , Bn3 
	.byte	W72
	.byte		        An2 
	.byte		N72   , An3 
	.byte	W24
@ 111   ----------------------------------------
	.byte	W48
	.byte		N48   , Gs2 
	.byte		N48   , Gs3 
	.byte	W48
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_4_108
@ 113   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs2 
	.byte		        Fs3 
	.byte		N48   , Cs3 , v124
	.byte		N48   , Cs4 
	.byte	W48
@ 114   ----------------------------------------
	.byte		        Bn2 
	.byte		N48   , Bn3 
	.byte	W48
	.byte		        Cs3 
	.byte		N48   , Cs4 
	.byte	W48
@ 115   ----------------------------------------
	.byte		        Dn3 
	.byte		N48   , Dn4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W48
@ 116   ----------------------------------------
mus_vs_champion_4_116:
	.byte		TIE   , Fs3 , v124
	.byte		TIE   , Fs4 
	.byte	W96
	.byte	PEND
@ 117   ----------------------------------------
	.byte	W48
	.byte		EOT   , Fs3 
	.byte		        Fs4 
	.byte		N48   , An3 
	.byte		N48   , An4 
	.byte	W48
@ 118   ----------------------------------------
	.byte		        Gs3 
	.byte		N48   , Gs4 
	.byte	W48
	.byte		        En3 
	.byte		N48   , En4 
	.byte	W48
@ 119   ----------------------------------------
	.byte		        Cs3 
	.byte		N48   , Cs4 
	.byte	W48
	.byte		        Gs3 
	.byte		N48   , Gs4 
	.byte	W48
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_4_116
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Fs4 
@ 124   ----------------------------------------
	.byte		VOICE , 60
	.byte		N18   , Fs3 , v088
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W24
	.byte		        Bn3 
	.byte		N18   , Bn4 
	.byte	W24
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W24
@ 125   ----------------------------------------
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W24
	.byte		N18   , An3 
	.byte		N18   , An4 
	.byte	W24
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N18   , En4 
	.byte	W24
@ 126   ----------------------------------------
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W24
	.byte		        Gs3 , v084
	.byte		N18   , Gs4 
	.byte	W24
	.byte		        En3 
	.byte		N18   , En4 
	.byte	W24
@ 127   ----------------------------------------
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N18   , En4 
	.byte	W24
	.byte		N42   , Cs3 
	.byte		N42   , Cs4 
	.byte	W48
@ 128   ----------------------------------------
	.byte	W24
	.byte		N18   , Cs3 
	.byte		N18   , Cs4 
	.byte	W24
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W24
@ 129   ----------------------------------------
	.byte		N42   , An3 
	.byte		N42   , An4 
	.byte	W72
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W24
@ 130   ----------------------------------------
	.byte		        En3 
	.byte		N18   , En4 
	.byte	W24
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N18   , En4 
	.byte	W24
@ 131   ----------------------------------------
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		N36   , En3 
	.byte		N36   , En4 
	.byte	W48
@ 132   ----------------------------------------
	.byte	W24
	.byte		N18   , Cs3 
	.byte		N18   , Cs4 
	.byte	W24
	.byte		        Fs3 , v080
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W24
@ 133   ----------------------------------------
	.byte		N42   , An3 
	.byte		N42   , An4 
	.byte	W72
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W24
@ 134   ----------------------------------------
	.byte		        En3 
	.byte		N18   , En4 
	.byte	W24
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W24
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N18   , En4 
	.byte	W24
@ 135   ----------------------------------------
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        Bn3 
	.byte		N18   , Bn4 
	.byte	W24
	.byte		N42   , En3 
	.byte		N42   , En4 
	.byte	W48
@ 136   ----------------------------------------
	.byte	W24
	.byte		N18   , Cs3 
	.byte		N18   , Cs4 
	.byte	W24
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        Gn3 
	.byte		N18   , Gn4 
	.byte	W24
@ 137   ----------------------------------------
	.byte		N48   , An3 
	.byte		N48   , An4 
	.byte	W72
	.byte		N18   , Fs3 
	.byte		N18   , Fs4 
	.byte	W24
@ 138   ----------------------------------------
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        An3 
	.byte		N18   , An4 
	.byte	W24
	.byte		        Gs3 
	.byte		N18   , Gs4 
	.byte	W24
	.byte		        En3 , v076
	.byte		N18   , En4 
	.byte	W24
@ 139   ----------------------------------------
	.byte		        Fs3 
	.byte		N18   , Fs4 
	.byte	W24
	.byte		        En3 
	.byte		N18   , En4 
	.byte	W24
	.byte		N48   , Bn2 , v100
	.byte		N48   , Bn3 
	.byte	W48
	.byte	GOTO
	 .word LoopStart_004
@ 140   ----------------------------------------
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_vs_champion_5:
	.byte	KEYSH , mus_vs_champion_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W72
	.byte		N24   , Bn2 , v127
	.byte	W24
@ 001   ----------------------------------------
	.byte		        An2 
	.byte	W24
	.byte		        Gs2 
	.byte	W24
	.byte		        Gn2 
	.byte	W24
	.byte		        Fs2 
	.byte	W24
@ 002   ----------------------------------------
	.byte		N96   , Dn2 
	.byte	W96
@ 003   ----------------------------------------
	.byte		        En2 
	.byte	W96
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
LoopStart_005:
	.byte		VOICE , 47
	.byte		VOL   , 60*mus_vs_champion_mvl/mxv
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
	.byte	W96
@ 012   ----------------------------------------
mus_vs_champion_5_012:
	.byte		N48   , Fs2 , v127
	.byte	W72
	.byte		N48   
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 014   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 015   ----------------------------------------
mus_vs_champion_5_015:
	.byte		N48   , Fs2 , v127
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 016   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_012
@ 017   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs2 , v127
	.byte	W48
@ 018   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 019   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_015
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_012
@ 021   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs2 , v127
	.byte	W48
@ 022   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_012
@ 025   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs2 , v127
	.byte	W48
@ 026   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_015
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_012
@ 029   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs2 , v127
	.byte	W48
@ 030   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_012
@ 033   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs2 , v127
	.byte	W48
@ 034   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 035   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_015
@ 036   ----------------------------------------
mus_vs_champion_5_036:
	.byte		N48   , Gn2 , v127
	.byte	W72
	.byte		N48   
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 038   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 039   ----------------------------------------
mus_vs_champion_5_039:
	.byte		N48   , Gn2 , v127
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 040   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 041   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 042   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 043   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 045   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 046   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 049   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 050   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 051   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 053   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 054   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 057   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 058   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 061   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 062   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 065   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 066   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 069   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 070   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 073   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 074   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 077   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 078   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_036
@ 081   ----------------------------------------
	.byte	W48
	.byte		N48   , Gn2 , v127
	.byte	W48
@ 082   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 083   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_039
@ 084   ----------------------------------------
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
@ 092   ----------------------------------------
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
@ 094   ----------------------------------------
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
@ 096   ----------------------------------------
	.byte	W96
@ 097   ----------------------------------------
	.byte	W96
@ 098   ----------------------------------------
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
@ 100   ----------------------------------------
mus_vs_champion_5_100:
	.byte		N48   , Dn1 , v127
	.byte	W72
	.byte		N48   
	.byte	W24
	.byte	PEND
@ 101   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 102   ----------------------------------------
	.byte	W24
	.byte		        En1 
	.byte	W72
@ 103   ----------------------------------------
mus_vs_champion_5_103:
	.byte		N48   , En1 , v127
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 104   ----------------------------------------
mus_vs_champion_5_104:
	.byte		N48   , Fs1 , v127
	.byte	W72
	.byte		N48   
	.byte	W24
	.byte	PEND
@ 105   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 106   ----------------------------------------
	.byte	W24
	.byte		        Gn1 
	.byte	W72
@ 107   ----------------------------------------
	.byte		N48   
	.byte	W48
	.byte		N48   
	.byte	W48
@ 108   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_100
@ 109   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn1 , v127
	.byte	W48
@ 110   ----------------------------------------
	.byte	W24
	.byte		        Cs1 
	.byte	W72
@ 111   ----------------------------------------
mus_vs_champion_5_111:
	.byte		N48   , Cs1 , v127
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 112   ----------------------------------------
	.byte		        Bn0 
	.byte	W72
	.byte		N48   
	.byte	W24
@ 113   ----------------------------------------
	.byte	W48
	.byte		N48   
	.byte	W48
@ 114   ----------------------------------------
	.byte	W24
	.byte		        Cs1 
	.byte	W72
@ 115   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_111
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_100
@ 117   ----------------------------------------
	.byte	W48
	.byte		N48   , Dn1 , v127
	.byte	W48
@ 118   ----------------------------------------
	.byte	W24
	.byte		        En1 
	.byte	W72
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_103
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_104
@ 121   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs1 , v127
	.byte	W48
@ 122   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 123   ----------------------------------------
mus_vs_champion_5_123:
	.byte		N48   , Fs1 , v127
	.byte	W48
	.byte		N48   
	.byte	W48
	.byte	PEND
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_104
@ 125   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs1 , v127
	.byte	W48
@ 126   ----------------------------------------
	.byte	W24
	.byte		N48   
	.byte	W72
@ 127   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_5_123
@ 128   ----------------------------------------
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word LoopStart_005
@ 140   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_vs_champion_6:
	.byte	KEYSH , mus_vs_champion_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 60*mus_vs_champion_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N12   , Gs4 , v100
	.byte		N12   , Cs5 
	.byte		N12   , Fn5 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Bn4 
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        An4 
	.byte		N12   , An5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
@ 001   ----------------------------------------
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Gs4 
	.byte		N12   , Gs5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Fs4 
	.byte		N12   , Fs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
@ 002   ----------------------------------------
	.byte		        Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        En4 
	.byte		N12   , En5 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
@ 003   ----------------------------------------
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
@ 004   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte		TIE   , Fs3 
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        Fs3 
@ 006   ----------------------------------------
LoopStart_006:
	.byte		TIE   , En3 
	.byte		TIE   , Gs3 
	.byte	W96
@ 007   ----------------------------------------
	.byte	W96
	.byte		EOT   , En3 
	.byte		        Gs3 
@ 008   ----------------------------------------
	.byte		TIE   , En3 
	.byte		TIE   , An3 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
	.byte		EOT   , En3 
	.byte		        An3 
@ 010   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 012   ----------------------------------------
	.byte		TIE   
	.byte		TIE   , Cs4 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W96
	.byte		EOT   , En3 
	.byte		        Cs4 
@ 014   ----------------------------------------
mus_vs_champion_6_014:
	.byte		TIE   , An3 , v100
	.byte		TIE   , Cs4 
	.byte	W96
	.byte	PEND
@ 015   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
	.byte		        Cs4 
@ 016   ----------------------------------------
	.byte		TIE   , An3 
	.byte		TIE   , Dn4 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
	.byte		        Dn4 
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_6_014
@ 019   ----------------------------------------
	.byte	W96
	.byte		EOT   , An3 
	.byte		        Cs4 
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
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W96
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W96
@ 036   ----------------------------------------
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W96
@ 039   ----------------------------------------
	.byte	W96
@ 040   ----------------------------------------
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
@ 046   ----------------------------------------
	.byte	W96
@ 047   ----------------------------------------
	.byte	W96
@ 048   ----------------------------------------
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
@ 054   ----------------------------------------
	.byte	W96
@ 055   ----------------------------------------
	.byte	W96
@ 056   ----------------------------------------
	.byte	W96
@ 057   ----------------------------------------
	.byte	W96
@ 058   ----------------------------------------
	.byte	W96
@ 059   ----------------------------------------
	.byte	W96
@ 060   ----------------------------------------
	.byte	W96
@ 061   ----------------------------------------
	.byte	W96
@ 062   ----------------------------------------
	.byte	W96
@ 063   ----------------------------------------
	.byte	W96
@ 064   ----------------------------------------
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
@ 070   ----------------------------------------
	.byte	W96
@ 071   ----------------------------------------
	.byte	W96
@ 072   ----------------------------------------
	.byte	W96
@ 073   ----------------------------------------
	.byte	W96
@ 074   ----------------------------------------
	.byte	W96
@ 075   ----------------------------------------
	.byte	W96
@ 076   ----------------------------------------
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
@ 078   ----------------------------------------
	.byte	W96
@ 079   ----------------------------------------
	.byte	W96
@ 080   ----------------------------------------
	.byte	W96
@ 081   ----------------------------------------
	.byte	W96
@ 082   ----------------------------------------
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
@ 084   ----------------------------------------
	.byte		TIE   , Dn3 , v076
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn3 
	.byte		        Fs3 
	.byte		        Dn4 
@ 086   ----------------------------------------
	.byte		TIE   , En3 
	.byte		TIE   , Gs3 
	.byte		TIE   , En4 
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
	.byte		EOT   , En3 
	.byte		        Gs3 
	.byte		        En4 
@ 088   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , An3 
	.byte		TIE   , Fs4 
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        An3 
	.byte		        Fs4 
@ 090   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte		TIE   , Bn3 
	.byte		TIE   , Gn4 
	.byte	W96
@ 091   ----------------------------------------
	.byte	W96
	.byte		EOT   , Gn3 
	.byte		        Bn3 
	.byte		        Gn4 
@ 092   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte		TIE   , Dn4 
	.byte		TIE   , Fs4 
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
	.byte		EOT   , Fs3 
	.byte		        Dn4 
	.byte		        Fs4 
@ 094   ----------------------------------------
	.byte		TIE   , En3 
	.byte		TIE   , Cs4 
	.byte		TIE   , En4 
	.byte	W96
@ 095   ----------------------------------------
	.byte	W90
	.byte		        Dn3 
	.byte	W06
	.byte		EOT   , En3 
	.byte		        Cs4 
	.byte		        En4 
@ 096   ----------------------------------------
	.byte		TIE   , Bn3 
	.byte		TIE   , Dn4 
	.byte	W96
@ 097   ----------------------------------------
	.byte	W90
	.byte		EOT   , Dn3 
	.byte	W06
	.byte		        Bn3 
	.byte		        Dn4 
@ 098   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte		TIE   , Gs3 
	.byte		TIE   , Cs4 
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
	.byte		EOT   , Cs3 
	.byte		        Gs3 
	.byte		        Cs4 
@ 100   ----------------------------------------
	.byte	W96
@ 101   ----------------------------------------
	.byte	W96
@ 102   ----------------------------------------
	.byte	W96
@ 103   ----------------------------------------
	.byte	W96
@ 104   ----------------------------------------
	.byte	W96
@ 105   ----------------------------------------
	.byte	W96
@ 106   ----------------------------------------
	.byte	W96
@ 107   ----------------------------------------
	.byte	W96
@ 108   ----------------------------------------
	.byte	W96
@ 109   ----------------------------------------
	.byte	W96
@ 110   ----------------------------------------
	.byte	W96
@ 111   ----------------------------------------
	.byte	W96
@ 112   ----------------------------------------
	.byte	W96
@ 113   ----------------------------------------
	.byte	W96
@ 114   ----------------------------------------
	.byte	W96
@ 115   ----------------------------------------
	.byte	W96
@ 116   ----------------------------------------
	.byte	W96
@ 117   ----------------------------------------
	.byte	W96
@ 118   ----------------------------------------
	.byte	W96
@ 119   ----------------------------------------
	.byte	W96
@ 120   ----------------------------------------
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte		TIE   , En3 , v060
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 132   ----------------------------------------
	.byte		TIE   , Bn3 , v068
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 136   ----------------------------------------
	.byte		TIE   
	.byte		TIE   , En4 
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
	.byte		EOT   , Bn3 
	.byte		        En4 
@ 138   ----------------------------------------
	.byte		TIE   
	.byte		N96   , Gs4 
	.byte	W96
@ 139   ----------------------------------------
	.byte		N48   , An4 , v072
	.byte	W48
	.byte		        Bn4 
	.byte	W48
	.byte		EOT   , En4 
	.byte	GOTO
	 .word LoopStart_006
@ 140   ----------------------------------------
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

mus_vs_champion_7:
	.byte	KEYSH , mus_vs_champion_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 38*mus_vs_champion_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
	.byte		TIE   , Fs2 , v112
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 006   ----------------------------------------
LoopStart_007:
	.byte		TIE   , Gs2 
	.byte	W96
@ 007   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   , Fs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 008   ----------------------------------------
	.byte		TIE   , An2 
	.byte	W96
@ 009   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   , Gs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
@ 010   ----------------------------------------
	.byte		TIE   , Bn2 
	.byte	W96
@ 011   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 012   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W96
@ 013   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , En3 
	.byte	W48
@ 014   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W96
@ 015   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Gs3 
	.byte	W48
@ 016   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 017   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   , Gs3 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 018   ----------------------------------------
	.byte		N96   , Bn3 
	.byte	W96
@ 019   ----------------------------------------
	.byte		        Cs4 
	.byte	W96
@ 020   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 47*mus_vs_champion_mvl/mxv
	.byte		TIE   , Fs3 
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N72   , Gs3 
	.byte	W72
@ 023   ----------------------------------------
	.byte		N48   , An3 
	.byte	W48
	.byte		        En4 
	.byte	W48
@ 024   ----------------------------------------
	.byte		TIE   , Cs4 
	.byte	W96
@ 025   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 026   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N12   , Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		        Gs3 
	.byte	W24
@ 028   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 029   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 030   ----------------------------------------
	.byte	W18
	.byte		N78   , Gs3 
	.byte	W78
@ 031   ----------------------------------------
	.byte		N48   , Fs3 
	.byte	W48
	.byte		        En3 
	.byte	W48
@ 032   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 035   ----------------------------------------
	.byte	W48
	.byte		N48   , Cn3 
	.byte	W48
@ 036   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 037   ----------------------------------------
	.byte	W96
@ 038   ----------------------------------------
	.byte	W12
	.byte		EOT   
	.byte	W12
	.byte		N72   , An3 
	.byte	W72
@ 039   ----------------------------------------
	.byte		N48   , As3 
	.byte	W48
	.byte		        Fn4 
	.byte	W48
@ 040   ----------------------------------------
	.byte		TIE   , Dn4 
	.byte	W96
@ 041   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 042   ----------------------------------------
	.byte	W24
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W24
	.byte		        Cn4 
	.byte	W24
@ 043   ----------------------------------------
	.byte		N24   , As3 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		        An3 
	.byte	W24
@ 044   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 045   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 046   ----------------------------------------
	.byte	W18
	.byte		N78   , An3 
	.byte	W78
@ 047   ----------------------------------------
	.byte		N48   , Gn3 
	.byte	W48
	.byte		        Fn3 
	.byte	W48
@ 048   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte	W96
@ 049   ----------------------------------------
	.byte	W96
@ 050   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 051   ----------------------------------------
	.byte	W96
@ 052   ----------------------------------------
	.byte		VOICE , 80
	.byte		TIE   , As3 
	.byte	W96
@ 053   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 054   ----------------------------------------
	.byte		N96   , An3 
	.byte	W96
@ 055   ----------------------------------------
	.byte		        Cn4 
	.byte	W96
@ 056   ----------------------------------------
	.byte		        Bn3 
	.byte	W96
@ 057   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 058   ----------------------------------------
	.byte		        Ds3 
	.byte	W96
@ 059   ----------------------------------------
	.byte		        Gs3 
	.byte	W96
@ 060   ----------------------------------------
	.byte		TIE   , Gn3 
	.byte	W96
@ 061   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   , Fn3 
	.byte	W12
	.byte		        Ds3 
	.byte	W12
@ 062   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 063   ----------------------------------------
	.byte		        Fn3 
	.byte	W96
@ 064   ----------------------------------------
	.byte		TIE   , Dn3 
	.byte	W96
@ 065   ----------------------------------------
	.byte	W96
@ 066   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 067   ----------------------------------------
	.byte	W96
@ 068   ----------------------------------------
	.byte		TIE   , As3 
	.byte	W96
@ 069   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 070   ----------------------------------------
	.byte		N96   , An3 
	.byte	W96
@ 071   ----------------------------------------
	.byte		N48   , As3 
	.byte	W48
	.byte		        Cn4 
	.byte	W48
@ 072   ----------------------------------------
	.byte		N12   , An3 
	.byte	W12
	.byte		TIE   , As3 
	.byte	W84
@ 073   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   , An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
@ 074   ----------------------------------------
	.byte		TIE   , Ds3 
	.byte	W96
@ 075   ----------------------------------------
	.byte	W68
	.byte	W03
	.byte		EOT   
	.byte	W24
	.byte	W01
@ 076   ----------------------------------------
	.byte		TIE   
	.byte	W96
@ 077   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 078   ----------------------------------------
	.byte		N16   , Cn3 
	.byte	W16
	.byte		        Gn2 
	.byte	W16
	.byte		        Cn3 
	.byte	W16
	.byte		        Dn3 
	.byte	W16
	.byte		        Gn2 
	.byte	W16
	.byte		        Dn3 
	.byte	W16
@ 079   ----------------------------------------
	.byte		        Ds3 
	.byte	W16
	.byte		        Gn2 
	.byte	W16
	.byte		        Ds3 
	.byte	W16
	.byte		N16   
	.byte	W16
	.byte		        Fn3 
	.byte	W16
	.byte		        Gn3 
	.byte	W16
@ 080   ----------------------------------------
	.byte		TIE   , As3 
	.byte	W96
@ 081   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        As3 
	.byte	W12
@ 082   ----------------------------------------
	.byte		TIE   , An3 
	.byte	W96
@ 083   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 084   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 085   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N16   
	.byte	W16
	.byte		        Cs3 
	.byte	W16
	.byte		        Fs3 
	.byte	W16
@ 086   ----------------------------------------
	.byte		        Gs3 
	.byte	W16
	.byte		        Cs3 
	.byte	W16
	.byte		        Gs3 
	.byte	W16
	.byte		        An3 
	.byte	W16
	.byte		        Cs3 
	.byte	W16
	.byte		        An3 
	.byte	W16
@ 087   ----------------------------------------
	.byte		        Bn3 
	.byte	W16
	.byte		        Cs3 
	.byte	W16
	.byte		        Bn3 
	.byte	W16
	.byte		        En4 
	.byte	W16
	.byte		        En3 
	.byte	W16
	.byte		        Ds3 
	.byte	W16
@ 088   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 089   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
@ 090   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 091   ----------------------------------------
	.byte		        En3 
	.byte	W96
@ 092   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 093   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 094   ----------------------------------------
	.byte		TIE   , En3 
	.byte	W96
@ 095   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 096   ----------------------------------------
	.byte		N96   , Dn3 
	.byte	W96
@ 097   ----------------------------------------
	.byte		N16   , Bn2 
	.byte	W16
	.byte		        Dn2 
	.byte	W16
	.byte		        Fs2 
	.byte	W16
	.byte		        Bn2 
	.byte	W16
	.byte		        Dn2 
	.byte	W16
	.byte		        Fs2 
	.byte	W16
@ 098   ----------------------------------------
	.byte		TIE   , Cs3 
	.byte	W96
@ 099   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 100   ----------------------------------------
	.byte		VOICE , 80
	.byte		TIE   , Fs4 
	.byte	W96
@ 101   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , An4 
	.byte	W48
@ 102   ----------------------------------------
	.byte		N72   , Gs4 
	.byte	W72
	.byte		        En4 
	.byte	W24
@ 103   ----------------------------------------
	.byte	W48
	.byte		N48   , Fs4 
	.byte	W48
@ 104   ----------------------------------------
	.byte		TIE   , Cs4 
	.byte	W96
@ 105   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Bn3 
	.byte	W48
@ 106   ----------------------------------------
	.byte		N96   , Cs4 
	.byte	W96
@ 107   ----------------------------------------
	.byte		N72   , Bn3 
	.byte	W72
	.byte		N12   , Cs4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
@ 108   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 109   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Cs4 
	.byte	W48
@ 110   ----------------------------------------
	.byte		N72   , Bn3 
	.byte	W72
	.byte		        An3 
	.byte	W24
@ 111   ----------------------------------------
	.byte	W48
	.byte		N48   , Gs3 
	.byte	W48
@ 112   ----------------------------------------
	.byte		TIE   , Fs3 
	.byte	W96
@ 113   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , Cs4 
	.byte	W48
@ 114   ----------------------------------------
	.byte		        Bn3 
	.byte	W48
	.byte		        Cs4 
	.byte	W48
@ 115   ----------------------------------------
	.byte		        Dn4 
	.byte	W48
	.byte		        En4 
	.byte	W48
@ 116   ----------------------------------------
	.byte		TIE   , Fs4 
	.byte	W96
@ 117   ----------------------------------------
	.byte	W48
	.byte		EOT   
	.byte		N48   , An4 
	.byte	W48
@ 118   ----------------------------------------
	.byte		        Gs4 
	.byte	W48
	.byte		        En4 
	.byte	W48
@ 119   ----------------------------------------
	.byte		        Cs4 
	.byte	W48
	.byte		        Gs4 
	.byte	W48
@ 120   ----------------------------------------
	.byte		TIE   , Fs4 
	.byte	W96
@ 121   ----------------------------------------
	.byte	W96
@ 122   ----------------------------------------
	.byte	W96
@ 123   ----------------------------------------
	.byte	W96
	.byte		EOT   
@ 124   ----------------------------------------
	.byte	W96
@ 125   ----------------------------------------
	.byte	W96
@ 126   ----------------------------------------
	.byte	W96
@ 127   ----------------------------------------
	.byte	W96
@ 128   ----------------------------------------
	.byte	W96
@ 129   ----------------------------------------
	.byte	W96
@ 130   ----------------------------------------
	.byte	W96
@ 131   ----------------------------------------
	.byte	W96
@ 132   ----------------------------------------
	.byte	W96
@ 133   ----------------------------------------
	.byte	W96
@ 134   ----------------------------------------
	.byte	W96
@ 135   ----------------------------------------
	.byte	W96
@ 136   ----------------------------------------
	.byte	W96
@ 137   ----------------------------------------
	.byte	W96
@ 138   ----------------------------------------
	.byte	W96
@ 139   ----------------------------------------
	.byte	W96
	.byte	GOTO
	 .word LoopStart_007
@ 140   ----------------------------------------
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

mus_vs_champion_8:
	.byte	KEYSH , mus_vs_champion_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 60*mus_vs_champion_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N13   , Cn1 , v127
	.byte		N13   , Cs2 , v124
	.byte		N13   , An2 
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte		        Cn1 , v127
	.byte		N13   , Gn2 , v124
	.byte		N13   , An2 
	.byte	W48
	.byte		        Cn1 , v127
	.byte	W48
@ 003   ----------------------------------------
	.byte		N13   
	.byte	W24
	.byte		N13   
	.byte	W24
	.byte		N12   , Cn1 , v100
	.byte		N06   , An2 , v060
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 , v100
	.byte		N06   , An2 , v064
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N12   , Cn1 , v100
	.byte		N06   , An2 , v068
	.byte	W06
	.byte		        An2 , v072
	.byte	W06
	.byte		N13   , Cn1 , v100
	.byte		N06   , An2 , v072
	.byte	W06
	.byte		N13   , An2 , v076
	.byte	W06
@ 004   ----------------------------------------
	.byte		        Cs2 , v116
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
LoopStart_008:
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
	.byte	W48
	.byte		N06   , An2 , v020
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 , v036
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 , v052
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		        An2 , v068
	.byte	W06
	.byte		        An2 , v084
	.byte	W06
@ 012   ----------------------------------------
mus_vs_champion_8_012:
	.byte		N13   , Cn1 , v127
	.byte		N13   , Cs2 , v100
	.byte		N13   , Fs2 
	.byte		N13   , An2 , v127
	.byte	W48
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte	PEND
@ 013   ----------------------------------------
mus_vs_champion_8_013:
	.byte	W24
	.byte		N13   , Cn1 , v100
	.byte	W24
	.byte		        Cn1 , v127
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 014   ----------------------------------------
mus_vs_champion_8_014:
	.byte	W24
	.byte		N13   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		        Dn1 , v127
	.byte	W48
	.byte	PEND
@ 015   ----------------------------------------
mus_vs_champion_8_015:
	.byte		N13   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte		        Cn1 , v127
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 016   ----------------------------------------
mus_vs_champion_8_016:
	.byte		N13   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W48
	.byte		        Dn1 , v127
	.byte	W24
	.byte		        Cn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte	PEND
@ 017   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 019   ----------------------------------------
	.byte		N12   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N13   
	.byte	W24
	.byte		N06   
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
	.byte		N06   
	.byte	W06
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_012
@ 021   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_015
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_016
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 027   ----------------------------------------
mus_vs_champion_8_027:
	.byte		N12   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N13   
	.byte	W24
	.byte		N13   
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_016
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 031   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_015
@ 032   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_016
@ 033   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 034   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 035   ----------------------------------------
	.byte		N12   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N13   
	.byte	W24
	.byte		N06   
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte		N06   , An2 , v020
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v020
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v036
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v036
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v052
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v052
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v068
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v084
	.byte	W06
@ 036   ----------------------------------------
mus_vs_champion_8_036:
	.byte		N14   , Cn1 , v127
	.byte		N13   , Cs2 , v100
	.byte		N13   , Fs2 
	.byte		N13   , An2 , v127
	.byte	W48
	.byte		N14   , Cn1 
	.byte		N13   , Dn1 
	.byte	W24
	.byte		N14   , Cn1 , v100
	.byte		N13   , Fs2 
	.byte	W24
	.byte	PEND
@ 037   ----------------------------------------
mus_vs_champion_8_037:
	.byte		N14   , Cn1 , v127
	.byte	W24
	.byte		        Cn1 , v100
	.byte	W24
	.byte		        Cn1 , v127
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		N14   , Cn1 
	.byte	W24
	.byte	PEND
@ 038   ----------------------------------------
mus_vs_champion_8_038:
	.byte		N14   , Cn1 , v127
	.byte	W24
	.byte		        Cn1 , v100
	.byte		N13   , Fs2 
	.byte	W24
	.byte		N14   , Cn1 , v127
	.byte		N13   , Dn1 
	.byte	W48
	.byte	PEND
@ 039   ----------------------------------------
mus_vs_champion_8_039:
	.byte		N14   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		N14   , Cn1 
	.byte	W24
	.byte		        Cn1 , v127
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		N12   , Cn1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 040   ----------------------------------------
mus_vs_champion_8_040:
	.byte		N14   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W48
	.byte		N14   , Cn1 , v127
	.byte		N13   , Dn1 
	.byte	W24
	.byte		N14   , Cn1 , v100
	.byte		N13   , Fs2 
	.byte	W24
	.byte	PEND
@ 041   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 042   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 043   ----------------------------------------
mus_vs_champion_8_043:
	.byte		N12   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N14   
	.byte	W24
	.byte		N14   
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		N12   , Cn1 , v080
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 044   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_040
@ 045   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 046   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 047   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_039
@ 048   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_040
@ 049   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 050   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 051   ----------------------------------------
mus_vs_champion_8_051:
	.byte		N12   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N14   , Cn1 , v080
	.byte	W24
	.byte		N06   , Cn1 , v127
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte		N06   , An2 , v020
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N06   , An2 , v020
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N06   , An2 , v036
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N06   , An2 , v036
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N06   , An2 , v052
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N06   , An2 , v052
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N06   , An2 , v068
	.byte	W06
	.byte		        Cn1 , v080
	.byte		N06   , An2 , v084
	.byte	W06
	.byte	PEND
@ 052   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_036
@ 053   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 054   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 055   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_039
@ 056   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_040
@ 057   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 058   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 059   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_043
@ 060   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_040
@ 061   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 062   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 063   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_039
@ 064   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_040
@ 065   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 066   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 067   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_051
@ 068   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_036
@ 069   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 070   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 071   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_039
@ 072   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_040
@ 073   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 074   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 075   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_043
@ 076   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_040
@ 077   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 078   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_038
@ 079   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_039
@ 080   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_040
@ 081   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_037
@ 082   ----------------------------------------
	.byte		N14   , Cn1 , v127
	.byte	W24
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		N14   , Cn1 , v127
	.byte		N13   , Dn1 
	.byte	W24
	.byte		N14   , Cn1 , v100
	.byte	W24
@ 083   ----------------------------------------
	.byte		N12   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W12
	.byte		N12   , Cn1 
	.byte	W12
	.byte		        Cn1 , v080
	.byte	W12
	.byte		        Cn1 , v100
	.byte	W12
	.byte		N06   , Cn1 , v127
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte		N06   , An2 , v020
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v020
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v036
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v036
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v052
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v052
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v068
	.byte	W06
	.byte		        Cn1 , v127
	.byte		N06   , An2 , v076
	.byte	W06
@ 084   ----------------------------------------
	.byte		N14   , Cn1 , v100
	.byte		N13   , Cs2 
	.byte		N13   , An2 , v127
	.byte	W96
@ 085   ----------------------------------------
	.byte	W96
@ 086   ----------------------------------------
	.byte	W96
@ 087   ----------------------------------------
	.byte	W96
@ 088   ----------------------------------------
	.byte		        Cn1 , v096
	.byte	W96
@ 089   ----------------------------------------
	.byte	W96
@ 090   ----------------------------------------
	.byte	W96
@ 091   ----------------------------------------
	.byte	W48
	.byte		N13   
	.byte	W24
	.byte		N13   
	.byte	W24
@ 092   ----------------------------------------
	.byte		        Cn1 , v100
	.byte		N13   , Cs2 
	.byte		N13   , Fs2 
	.byte	W48
	.byte		        Dn1 , v127
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N13   , Fs2 , v100
	.byte	W24
@ 093   ----------------------------------------
mus_vs_champion_8_093:
	.byte	W24
	.byte		N13   , Cn1 , v096
	.byte	W24
	.byte		N13   
	.byte		N13   , Dn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		        Cn1 , v096
	.byte	W24
	.byte	PEND
@ 094   ----------------------------------------
mus_vs_champion_8_094:
	.byte	W24
	.byte		N13   , Cn1 , v096
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		        Dn1 , v127
	.byte	W48
	.byte	PEND
@ 095   ----------------------------------------
mus_vs_champion_8_095:
	.byte		N13   , Cn1 , v096
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		        Cn1 , v096
	.byte	W24
	.byte		N13   
	.byte		N13   , Dn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		N12   , Cn1 , v096
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 096   ----------------------------------------
	.byte		N13   
	.byte		N13   , Fs2 , v100
	.byte	W48
	.byte		        Dn1 , v127
	.byte	W24
	.byte		        Cn1 , v096
	.byte		N13   , Fs2 , v100
	.byte	W24
@ 097   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_093
@ 098   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_094
@ 099   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_095
@ 100   ----------------------------------------
mus_vs_champion_8_100:
	.byte		N13   , Cn1 , v127
	.byte		N13   , Cs2 , v100
	.byte		N13   , Fs2 
	.byte	W48
	.byte		        Dn1 , v127
	.byte	W24
	.byte		        Cn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte	PEND
@ 101   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 102   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 103   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_015
@ 104   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_016
@ 105   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 106   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 107   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_027
@ 108   ----------------------------------------
mus_vs_champion_8_108:
	.byte		N13   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte		N13   , An2 
	.byte	W48
	.byte		        Dn1 , v127
	.byte	W24
	.byte		        Cn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte	PEND
@ 109   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 110   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 111   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_015
@ 112   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_016
@ 113   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 114   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 115   ----------------------------------------
	.byte		N12   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N13   
	.byte	W24
	.byte		N13   
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte	W24
	.byte		        Cn1 
	.byte	W24
@ 116   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_100
@ 117   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 118   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 119   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_027
@ 120   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_016
@ 121   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 122   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 123   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_027
@ 124   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_108
@ 125   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_013
@ 126   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_014
@ 127   ----------------------------------------
	.byte		N12   , Cn1 , v127
	.byte		N13   , Fs2 , v100
	.byte	W12
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N13   
	.byte	W24
	.byte		N13   
	.byte		N13   , Dn1 
	.byte		N13   , Fs2 , v100
	.byte	W12
	.byte		N12   , An2 , v064
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N12   , An2 , v072
	.byte	W12
	.byte		        Cn1 , v100
	.byte		N12   , An2 , v076
	.byte	W12
@ 128   ----------------------------------------
	.byte		N13   , Cn1 , v127
	.byte		N13   , An2 , v116
	.byte	W48
	.byte		        Dn1 , v127
	.byte	W24
	.byte		        Cn1 
	.byte	W24
@ 129   ----------------------------------------
mus_vs_champion_8_129:
	.byte	W24
	.byte		N13   , Cn1 , v100
	.byte	W24
	.byte		        Cn1 , v127
	.byte		N13   , Dn1 
	.byte	W24
	.byte		        Cn1 , v100
	.byte	W24
	.byte	PEND
@ 130   ----------------------------------------
mus_vs_champion_8_130:
	.byte	W24
	.byte		N13   , Cn1 , v127
	.byte	W24
	.byte		        Dn1 
	.byte	W48
	.byte	PEND
@ 131   ----------------------------------------
mus_vs_champion_8_131:
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N13   
	.byte	W24
	.byte		N13   
	.byte		N13   , Dn1 
	.byte	W24
	.byte		N12   , Cn1 , v100
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte	PEND
@ 132   ----------------------------------------
mus_vs_champion_8_132:
	.byte		N13   , Cn1 , v127
	.byte	W48
	.byte		        Dn1 
	.byte	W24
	.byte		        Cn1 
	.byte	W24
	.byte	PEND
@ 133   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_129
@ 134   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_130
@ 135   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_131
@ 136   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_132
@ 137   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_129
@ 138   ----------------------------------------
	.byte	PATT
	 .word	mus_vs_champion_8_130
@ 139   ----------------------------------------
	.byte		N12   , Cn1 , v127
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		N13   
	.byte	W24
	.byte		N13   
	.byte		N13   , Dn1 
	.byte		N13   , An2 , v020
	.byte	W14
	.byte		N12   , An2 , v044
	.byte	W10
	.byte		        Cn1 , v127
	.byte	W02
	.byte		        An2 , v064
	.byte	W10
	.byte		N13   , Cn1 , v127
	.byte	W02
	.byte		N12   , An2 , v100
	.byte	W10
	.byte	GOTO
	 .word LoopStart_008
@ 140   ----------------------------------------
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

mus_vs_champion:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_vs_champion_pri	@ Priority
	.byte	mus_vs_champion_rev	@ Reverb.

	.word	mus_vs_champion_grp

	.word	mus_vs_champion_1
	.word	mus_vs_champion_2
	.word	mus_vs_champion_3
	.word	mus_vs_champion_4
	.word	mus_vs_champion_5
	.word	mus_vs_champion_6
	.word	mus_vs_champion_7
	.word	mus_vs_champion_8

	.end
