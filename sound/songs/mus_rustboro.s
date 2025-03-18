	.include "MPlayDef.s"

	.equ	mus_rustboro_grp, voicegroup000
	.equ	mus_rustboro_pri, 0
	.equ	mus_rustboro_rev, 0
	.equ	mus_rustboro_mvl, 80
	.equ	mus_rustboro_key, 0
	.equ	mus_rustboro_tbs, 1
	.equ	mus_rustboro_exg, 0
	.equ	mus_rustboro_cmp, 1

	.section .rodata
	.global	mus_rustboro
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_rustboro_1:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 84*mus_rustboro_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte		N24   , Gs2 , v112
	.byte		N24   , Gs3 
	.byte	W24
	.byte		        Bn2 
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N96   , Cs3 
	.byte		N96   , Cs4 
	.byte	W48
@ 001   ----------------------------------------
	.byte	W72
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Cs3 
	.byte		N12   , Cs4 
	.byte	W12
@ 002   ----------------------------------------
	.byte		N36   , Ds3 
	.byte		N36   , Ds4 
	.byte	W36
	.byte		N12   , Bn2 
	.byte		N12   , Bn3 
	.byte	W12
	.byte	TEMPO , 80*mus_rustboro_tbs/2
	.byte		N48   , Fs2 
	.byte		N48   , Fs3 
	.byte	W24
	.byte	TEMPO , 82*mus_rustboro_tbs/2
	.byte	W24
@ 003   ----------------------------------------
	.byte	TEMPO , 84*mus_rustboro_tbs/2
	.byte		N72   , Gs2 
	.byte		N72   , Gs3 
	.byte	W24
	.byte	TEMPO , 86*mus_rustboro_tbs/2
	.byte	W24
	.byte	TEMPO , 88*mus_rustboro_tbs/2
	.byte	W24
	.byte		N24   , Gs2 
	.byte		N24   , Gs3 
	.byte	W24
@ 004   ----------------------------------------
LoopStart_001:
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W24
	.byte		        Ds3 
	.byte		N24   , Ds4 
	.byte	W24
	.byte	TEMPO , 92*mus_rustboro_tbs/2
	.byte		N96   , Cs3 
	.byte		N96   , Cs4 
	.byte	W12
	.byte	TEMPO , 94*mus_rustboro_tbs/2
	.byte	W12
	.byte	TEMPO , 96*mus_rustboro_tbs/2
	.byte	W12
	.byte	TEMPO , 98*mus_rustboro_tbs/2
	.byte	W12
@ 005   ----------------------------------------
	.byte	TEMPO , 100*mus_rustboro_tbs/2
	.byte	W12
	.byte	TEMPO , 102*mus_rustboro_tbs/2
	.byte	W12
	.byte	TEMPO , 104*mus_rustboro_tbs/2
	.byte	W12
	.byte	TEMPO , 106*mus_rustboro_tbs/2
	.byte	W12
	.byte	TEMPO , 108*mus_rustboro_tbs/2
	.byte	W24
	.byte		N12   , Ds3 
	.byte		N12   , Ds4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
@ 006   ----------------------------------------
	.byte		N36   , Fs3 
	.byte		N36   , Fs4 
	.byte	W36
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte	TEMPO , 108*mus_rustboro_tbs/2
	.byte		N96   , Gs3 
	.byte		N96   , Gs4 
	.byte	W48
@ 007   ----------------------------------------
	.byte	W48
	.byte	TEMPO , 112*mus_rustboro_tbs/2
	.byte	W09
	.byte	TEMPO , 114*mus_rustboro_tbs/2
	.byte	W10
	.byte	TEMPO , 116*mus_rustboro_tbs/2
	.byte	W05
	.byte		N24   , Gs3 
	.byte		N24   , Gs4 
	.byte	W04
	.byte	TEMPO , 118*mus_rustboro_tbs/2
	.byte	W10
	.byte	TEMPO , 120*mus_rustboro_tbs/2
	.byte	W10
@ 008   ----------------------------------------
	.byte	TEMPO , 122*mus_rustboro_tbs/2
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W09
	.byte	TEMPO , 124*mus_rustboro_tbs/2
	.byte	W03
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W07
	.byte	TEMPO , 126*mus_rustboro_tbs/2
	.byte	W05
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W04
	.byte	TEMPO , 128*mus_rustboro_tbs/2
	.byte	W08
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W02
	.byte	TEMPO , 130*mus_rustboro_tbs/2
	.byte	W10
	.byte	TEMPO , 132*mus_rustboro_tbs/2
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W48
@ 009   ----------------------------------------
mus_rustboro_1_009:
	.byte	W72
	.byte		N12   , En3 , v112
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte	PEND
@ 010   ----------------------------------------
	.byte		N36   , Gs3 
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N48   , Ds3 
	.byte		N48   , Ds4 
	.byte	W48
@ 011   ----------------------------------------
mus_rustboro_1_011:
	.byte		N48   , Cs3 , v112
	.byte		N48   , Cs4 
	.byte	W72
	.byte		N24   , Cs3 
	.byte		N24   , Cs4 
	.byte	W24
	.byte	PEND
@ 012   ----------------------------------------
	.byte		N12   
	.byte		N12   , Cs5 
	.byte	W12
	.byte		        Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		        En3 
	.byte		N12   , En4 
	.byte	W12
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W48
@ 013   ----------------------------------------
	.byte	W48
	.byte	TEMPO , 136*mus_rustboro_tbs/2
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        99*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        98*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        97*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        96*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        95*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        94*mus_rustboro_mvl/mxv
	.byte	W07
@ 014   ----------------------------------------
	.byte		        93*mus_rustboro_mvl/mxv
	.byte		N36   , Gs3 
	.byte	W06
	.byte		VOL   , 92*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        91*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        90*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        89*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        88*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		N04   , An3 
	.byte	W04
	.byte		        Gs3 
	.byte	W01
	.byte		VOL   , 87*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		N04   , Fs3 
	.byte	W04
	.byte	TEMPO , 136*mus_rustboro_tbs/2
	.byte		VOL   , 86*mus_rustboro_mvl/mxv
	.byte		N48   , Gs3 
	.byte	W02
	.byte		VOL   , 85*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        84*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        83*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 136*mus_rustboro_tbs/2
	.byte		        82*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        81*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        80*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        79*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        78*mus_rustboro_mvl/mxv
	.byte	W01
	.byte	TEMPO , 132*mus_rustboro_tbs/2
	.byte	W01
	.byte		        77*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        76*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        75*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        74*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 132*mus_rustboro_tbs/2
	.byte		        73*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        72*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        71*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        70*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 128*mus_rustboro_tbs/2
	.byte		        69*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        68*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        67*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        66*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        65*mus_rustboro_mvl/mxv
	.byte	W01
	.byte	TEMPO , 128*mus_rustboro_tbs/2
	.byte	W01
	.byte		        64*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        63*mus_rustboro_mvl/mxv
	.byte	W02
@ 015   ----------------------------------------
	.byte		N36   , Cs4 
	.byte	W01
	.byte		VOL   , 62*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        61*mus_rustboro_mvl/mxv
	.byte	W01
	.byte	TEMPO , 124*mus_rustboro_tbs/2
	.byte	W01
	.byte		        60*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        59*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        58*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        57*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 124*mus_rustboro_tbs/2
	.byte		        56*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        55*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        54*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        53*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 120*mus_rustboro_tbs/2
	.byte		        52*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        51*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        50*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        49*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        48*mus_rustboro_mvl/mxv
	.byte	W01
	.byte	TEMPO , 120*mus_rustboro_tbs/2
	.byte	W01
	.byte		        47*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        46*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        45*mus_rustboro_mvl/mxv
	.byte	W01
	.byte		N11   , Bn3 
	.byte	W01
	.byte		VOL   , 44*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 116*mus_rustboro_tbs/2
	.byte		        43*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        42*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        41*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        40*mus_rustboro_mvl/mxv
	.byte	W03
	.byte	TEMPO , 116*mus_rustboro_tbs/2
	.byte		        39*mus_rustboro_mvl/mxv
	.byte		N90   , Cs4 
	.byte	W13
	.byte	TEMPO , 112*mus_rustboro_tbs/2
	.byte	W14
	.byte	TEMPO , 112*mus_rustboro_tbs/2
	.byte	W14
	.byte	TEMPO , 108*mus_rustboro_tbs/2
	.byte	W07
@ 016   ----------------------------------------
	.byte	W06
	.byte	TEMPO , 108*mus_rustboro_tbs/2
	.byte	W14
	.byte	TEMPO , 104*mus_rustboro_tbs/2
	.byte	W14
	.byte	TEMPO , 104*mus_rustboro_tbs/2
	.byte	W14
	.byte	TEMPO , 100*mus_rustboro_tbs/2
	.byte		VOL   , 40*mus_rustboro_mvl/mxv
	.byte	W01
	.byte		        41*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        42*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        43*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        44*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        45*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        46*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 102*mus_rustboro_tbs/2
	.byte		        47*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        48*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        49*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        50*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        51*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        52*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        53*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 104*mus_rustboro_tbs/2
	.byte		        54*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        55*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        56*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        57*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        58*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        59*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        60*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 106*mus_rustboro_tbs/2
	.byte		        61*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        62*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        63*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        64*mus_rustboro_mvl/mxv
	.byte	W01
@ 017   ----------------------------------------
	.byte		        65*mus_rustboro_mvl/mxv
	.byte		N36   , Fs3 
	.byte		N36   , Fs4 
	.byte	W02
	.byte		VOL   , 66*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        67*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 108*mus_rustboro_tbs/2
	.byte		        68*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        69*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        70*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        71*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        72*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        73*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        74*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 110*mus_rustboro_tbs/2
	.byte		        75*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        76*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        77*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        78*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        79*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        80*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        81*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 112*mus_rustboro_tbs/2
	.byte		        82*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        83*mus_rustboro_mvl/mxv
	.byte		N12   , En3 
	.byte		N12   , En4 
	.byte	W02
	.byte		VOL   , 84*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        85*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        86*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        87*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        88*mus_rustboro_mvl/mxv
	.byte	W02
	.byte	TEMPO , 116*mus_rustboro_tbs/2
	.byte		        89*mus_rustboro_mvl/mxv
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W48
@ 018   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_1_009
@ 019   ----------------------------------------
	.byte		N36   , Gs3 , v112
	.byte		N36   , Gs4 
	.byte	W36
	.byte		N12   , An3 
	.byte		N12   , An4 
	.byte	W12
	.byte		N48   , Gs3 
	.byte		N48   , Gs4 
	.byte	W48
@ 020   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_1_011
@ 021   ----------------------------------------
	.byte		N36   , An3 , v112
	.byte		N36   , An4 
	.byte	W36
	.byte		N12   , Gs3 
	.byte		N12   , Gs4 
	.byte	W12
	.byte		N96   , Fs3 
	.byte		N96   , Fs4 
	.byte	W48
@ 022   ----------------------------------------
	.byte	W72
	.byte		N12   , Fs3 
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        Gs3 
	.byte		N12   , Gs4 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
	.byte		        Cs4 
	.byte		N24   , Cs5 
	.byte	W24
	.byte		N90   , Bn3 
	.byte		N24   , Bn4 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte	GOTO
	 .word LoopStart_001
@ 024   ----------------------------------------
	.byte		N36   , An3 
	.byte	W36
	.byte		N12   , Fs3 
	.byte	W12
	.byte		N24   , Bn3 
	.byte	W24
	.byte		        En3 
	.byte		N24   , En4 
	.byte	W24
@ 025   ----------------------------------------
	.byte		N36   , Dn4 
	.byte		N36   , Dn5 
	.byte	W36
	.byte		N12   , Cs4 
	.byte		N12   , Cs5 
	.byte	W12
	.byte		N48   , Bn3 
	.byte		N48   , Bn4 
	.byte	W48
@ 026   ----------------------------------------
	.byte		        Cs4 
	.byte		N48   , Cs5 
	.byte	W72
	.byte		N24   , Fs3 
	.byte		N24   , Fs4 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N36   , Dn4 
	.byte		N36   , Dn5 
	.byte	W36
	.byte		N12   , Bn3 
	.byte		N12   , Bn4 
	.byte	W12
	.byte		N48   , En4 
	.byte		N48   , En5 
	.byte	W48
@ 028   ----------------------------------------
	.byte		        An3 
	.byte		N48   , An4 
	.byte	W72
	.byte		N24   , An3 
	.byte		N24   , An4 
	.byte	W24
@ 029   ----------------------------------------
	.byte		N36   , En4 
	.byte		N36   , En5 
	.byte	W36
	.byte		N12   , Dn4 
	.byte		N12   , Dn5 
	.byte	W12
	.byte		N48   , En4 
	.byte		N48   , En5 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        Fn4 
	.byte		N48   , Fn5 
	.byte	W48
	.byte		N24   , En4 
	.byte		N24   , En5 
	.byte	W24
	.byte		        Fn4 
	.byte		N24   , Fn5 
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Cn4 
	.byte		N24   , Cn5 
	.byte	W24
	.byte		        Fn3 
	.byte		N24   , Fn4 
	.byte	W24
	.byte		TIE   , Dn4 
	.byte		TIE   , Dn5 
	.byte	W48
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
	.byte		EOT   , Dn4 
	.byte		        Dn5 
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

mus_rustboro_2:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 80
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
LoopStart_002:
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
	.byte	W48
	.byte		        c_v-30
	.byte		VOL   , 17*mus_rustboro_mvl/mxv
	.byte	W48
@ 017   ----------------------------------------
	.byte		N32   , Fs3 , v112
	.byte	W36
	.byte		N11   , En3 
	.byte	W12
	.byte		N90   , Fs3 
	.byte	W48
@ 018   ----------------------------------------
	.byte	W72
	.byte		N11   , En3 
	.byte	W12
	.byte		        Fs3 
	.byte	W12
@ 019   ----------------------------------------
	.byte		N32   , Gs3 
	.byte	W36
	.byte		N11   , An3 
	.byte	W12
	.byte		N42   , Gs3 
	.byte	W48
@ 020   ----------------------------------------
	.byte		        Cs3 
	.byte	W72
	.byte		N20   
	.byte	W24
@ 021   ----------------------------------------
	.byte		N32   , An3 
	.byte	W36
	.byte		N11   , Gs3 
	.byte	W12
	.byte		N90   , Fs3 
	.byte	W48
@ 022   ----------------------------------------
	.byte	W72
	.byte		N11   
	.byte	W12
	.byte		        Gs3 
	.byte	W12
@ 023   ----------------------------------------
	.byte		N20   , An3 
	.byte	W24
	.byte		        Cs4 
	.byte	W24
	.byte		        Bn3 
	.byte	W48
	.byte	GOTO
	 .word LoopStart_002
@ 024   ----------------------------------------
	.byte	W72
	.byte		        En3 
	.byte	W24
@ 025   ----------------------------------------
	.byte		N32   , Dn3 
	.byte	W36
	.byte		N11   , Cs3 
	.byte	W12
	.byte		N42   , Bn3 
	.byte	W48
@ 026   ----------------------------------------
	.byte		        Cs4 
	.byte	W72
	.byte		N20   , Fs3 
	.byte	W24
@ 027   ----------------------------------------
	.byte		N32   , Dn4 
	.byte	W36
	.byte		N11   , Bn3 
	.byte	W12
	.byte		N42   , Cs4 
	.byte	W48
@ 028   ----------------------------------------
	.byte		        An3 
	.byte	W48
	.byte		        En3 
	.byte	W48
@ 029   ----------------------------------------
	.byte		N20   , Fs3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N42   , Fn3 
	.byte	W48
@ 030   ----------------------------------------
	.byte		        As3 
	.byte	W48
	.byte		N20   , Cn4 
	.byte	W24
	.byte		        Dn4 
	.byte	W24
@ 031   ----------------------------------------
	.byte		        Cn4 
	.byte	W24
	.byte		        As3 
	.byte	W24
	.byte		N90   , An3 
	.byte	W48
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

mus_rustboro_3:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 1
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte	W48
	.byte		N12   , An1 , v112
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 001   ----------------------------------------
mus_rustboro_3_001:
	.byte		N12   , An1 , v112
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte	PEND
@ 002   ----------------------------------------
mus_rustboro_3_002:
	.byte		N12   , An1 , v112
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
@ 003   ----------------------------------------
mus_rustboro_3_003:
	.byte		N12   , Cs2 , v112
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte	PEND
@ 004   ----------------------------------------
LoopStart_003:
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 005   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_3_001
@ 006   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_3_002
@ 007   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_3_003
@ 008   ----------------------------------------
	.byte		N12   , Cs2 , v112
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 009   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
@ 010   ----------------------------------------
	.byte		        Fs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 011   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_3_001
@ 012   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_3_002
@ 013   ----------------------------------------
	.byte		N12   , Cs2 , v112
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		VOL   , 100*mus_rustboro_mvl/mxv
	.byte		N12   , Cs2 
	.byte	W06
	.byte		VOL   , 99*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W01
	.byte		VOL   , 98*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        97*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		N12   , Cs3 
	.byte	W03
	.byte		VOL   , 96*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        95*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		N12   , Gs2 
	.byte	W05
	.byte		VOL   , 94*mus_rustboro_mvl/mxv
	.byte	W07
@ 014   ----------------------------------------
	.byte		        93*mus_rustboro_mvl/mxv
	.byte		N12   , Cs2 
	.byte	W06
	.byte		VOL   , 92*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		N12   , Gs2 
	.byte	W01
	.byte		VOL   , 91*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        90*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		N12   , Cs3 
	.byte	W03
	.byte		VOL   , 89*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        88*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		N12   , Gs2 
	.byte	W05
	.byte		VOL   , 87*mus_rustboro_mvl/mxv
	.byte	W07
	.byte		        86*mus_rustboro_mvl/mxv
	.byte		N12   , Cs2 
	.byte	W02
	.byte		VOL   , 85*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        84*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        83*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        82*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        81*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        80*mus_rustboro_mvl/mxv
	.byte		N12   , Gs2 
	.byte	W02
	.byte		VOL   , 79*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        78*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        77*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        76*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        75*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        74*mus_rustboro_mvl/mxv
	.byte		N12   , Cs3 
	.byte	W02
	.byte		VOL   , 73*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        72*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        71*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        70*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        69*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        68*mus_rustboro_mvl/mxv
	.byte		N12   , Gs2 
	.byte	W02
	.byte		VOL   , 67*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        66*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        65*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        64*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        63*mus_rustboro_mvl/mxv
	.byte	W02
@ 015   ----------------------------------------
	.byte		N12   , Cs2 
	.byte	W01
	.byte		VOL   , 62*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        61*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        60*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        59*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        58*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        57*mus_rustboro_mvl/mxv
	.byte	W01
	.byte		N12   , Gs2 
	.byte	W01
	.byte		VOL   , 56*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        55*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        54*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        53*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        52*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        51*mus_rustboro_mvl/mxv
	.byte	W01
	.byte		N12   , Cs3 
	.byte	W01
	.byte		VOL   , 50*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        49*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        48*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        47*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        46*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        45*mus_rustboro_mvl/mxv
	.byte	W01
	.byte		N12   , Gs2 
	.byte	W01
	.byte		VOL   , 44*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        43*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        42*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        41*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        40*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        39*mus_rustboro_mvl/mxv
	.byte		N12   , Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
@ 016   ----------------------------------------
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		        Cs3 
	.byte	W12
	.byte		        Gs2 
	.byte	W12
	.byte		VOL   , 40*mus_rustboro_mvl/mxv
	.byte		N12   , Cs2 
	.byte	W01
	.byte		VOL   , 41*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        42*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        43*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        44*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        45*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        46*mus_rustboro_mvl/mxv
	.byte	W01
	.byte		        47*mus_rustboro_mvl/mxv
	.byte		N12   , Gs2 
	.byte	W02
	.byte		VOL   , 48*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        49*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        50*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        51*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        52*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        53*mus_rustboro_mvl/mxv
	.byte		N12   , Cs3 
	.byte	W01
	.byte		VOL   , 54*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        55*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        56*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        57*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        58*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        59*mus_rustboro_mvl/mxv
	.byte	W01
	.byte		        60*mus_rustboro_mvl/mxv
	.byte		N12   , Gs2 
	.byte	W02
	.byte		VOL   , 61*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        62*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        63*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        64*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        65*mus_rustboro_mvl/mxv
	.byte	W02
@ 017   ----------------------------------------
	.byte		        66*mus_rustboro_mvl/mxv
	.byte		N12   , Cs2 
	.byte	W01
	.byte		VOL   , 67*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        68*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        69*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        70*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        71*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        72*mus_rustboro_mvl/mxv
	.byte	W01
	.byte		        73*mus_rustboro_mvl/mxv
	.byte		N12   , Gs2 
	.byte	W02
	.byte		VOL   , 74*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        75*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        76*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        77*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        78*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        79*mus_rustboro_mvl/mxv
	.byte		N12   , Cs3 
	.byte	W01
	.byte		VOL   , 80*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        81*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        82*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        83*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        84*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        85*mus_rustboro_mvl/mxv
	.byte	W01
	.byte		        86*mus_rustboro_mvl/mxv
	.byte		N12   , Gs2 
	.byte	W02
	.byte		VOL   , 87*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        88*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        89*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        90*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        91*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        92*mus_rustboro_mvl/mxv
	.byte		N12   , Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 018   ----------------------------------------
mus_rustboro_3_018:
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte	PEND
@ 019   ----------------------------------------
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 020   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
@ 021   ----------------------------------------
	.byte		        Cs1 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_3_018
@ 023   ----------------------------------------
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte	GOTO
	 .word LoopStart_003
@ 024   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
@ 025   ----------------------------------------
	.byte		        En1 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        Dn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_3_018
@ 027   ----------------------------------------
	.byte		N12   , Dn1 , v112
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_3_001
@ 029   ----------------------------------------
	.byte		N12   , An1 , v112
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 030   ----------------------------------------
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        As2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
@ 031   ----------------------------------------
	.byte		        Fn1 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Fn2 
	.byte	W12
	.byte		        Cn2 
	.byte	W12
	.byte		        Gn1 
	.byte	W48
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

mus_rustboro_4:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 48
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		VOL   , 40*mus_rustboro_mvl/mxv
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W48
	.byte		N48   , Cs3 , v112
	.byte	W48
@ 003   ----------------------------------------
	.byte		        Ds3 
	.byte	W48
	.byte		        Gs3 
	.byte	W48
@ 004   ----------------------------------------
LoopStart_004:
	.byte		        En3 
	.byte	W48
	.byte		N72   , An3 
	.byte	W48
@ 005   ----------------------------------------
	.byte	W24
	.byte		N24   , Bn3 
	.byte	W24
	.byte		N48   , Cs4 
	.byte	W48
@ 006   ----------------------------------------
	.byte		        An3 
	.byte	W48
	.byte		N36   , Gs3 
	.byte	W36
	.byte		N12   , An3 
	.byte	W12
@ 007   ----------------------------------------
	.byte		N48   , Gs3 
	.byte	W48
	.byte		        En4 
	.byte	W48
@ 008   ----------------------------------------
	.byte		        Ds4 
	.byte	W48
	.byte		TIE   , Cs4 
	.byte	W48
@ 009   ----------------------------------------
	.byte	W72
	.byte		EOT   
	.byte		N12   
	.byte	W12
	.byte		        Ds4 
	.byte	W12
@ 010   ----------------------------------------
	.byte		N36   , En4 
	.byte	W36
	.byte		N12   , Cs4 
	.byte	W12
	.byte		N48   , Bn3 
	.byte	W48
@ 011   ----------------------------------------
	.byte		        An3 
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 012   ----------------------------------------
	.byte		N24   , En3 
	.byte	W24
	.byte		        Bn2 
	.byte	W24
	.byte		N48   , Cs3 
	.byte	W48
@ 013   ----------------------------------------
	.byte		N12   , Cs4 
	.byte	W36
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Cs4 
	.byte	W48
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W48
	.byte		VOL   , 30*mus_rustboro_mvl/mxv
	.byte		TIE   , En3 
	.byte	W16
	.byte		VOL   , 29*mus_rustboro_mvl/mxv
	.byte	W16
	.byte		        28*mus_rustboro_mvl/mxv
	.byte	W16
@ 016   ----------------------------------------
	.byte		        27*mus_rustboro_mvl/mxv
	.byte	W16
	.byte		        26*mus_rustboro_mvl/mxv
	.byte	W16
	.byte		        25*mus_rustboro_mvl/mxv
	.byte	W16
	.byte		        24*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        25*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        26*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        27*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        28*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        29*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        30*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        31*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		EOT   
@ 017   ----------------------------------------
	.byte		VOL   , 32*mus_rustboro_mvl/mxv
	.byte		N48   , Ds3 
	.byte	W06
	.byte		VOL   , 33*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        34*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        35*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        36*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        37*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        38*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        39*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        40*mus_rustboro_mvl/mxv
	.byte		N96   , Fs3 
	.byte	W48
@ 018   ----------------------------------------
	.byte	W48
	.byte		        An3 
	.byte	W48
@ 019   ----------------------------------------
	.byte	W48
	.byte		        Gs3 
	.byte	W48
@ 020   ----------------------------------------
	.byte	W48
	.byte		        En3 
	.byte	W48
@ 021   ----------------------------------------
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 022   ----------------------------------------
	.byte	W48
	.byte		        Fs3 
	.byte	W48
@ 023   ----------------------------------------
	.byte	W48
	.byte		        En3 
	.byte	W48
	.byte	GOTO
	 .word LoopStart_004
@ 024   ----------------------------------------
	.byte	W48
	.byte		        Bn2 
	.byte	W48
@ 025   ----------------------------------------
	.byte	W48
	.byte		        Dn3 
	.byte	W48
@ 026   ----------------------------------------
	.byte	W48
	.byte		N48   , An3 
	.byte	W48
@ 027   ----------------------------------------
	.byte		        Gs3 
	.byte	W48
	.byte		N96   , An3 
	.byte	W48
@ 028   ----------------------------------------
	.byte	W48
	.byte		        En3 
	.byte	W48
@ 029   ----------------------------------------
	.byte	W48
	.byte		        Fn3 
	.byte	W48
@ 030   ----------------------------------------
	.byte	W48
	.byte		        Cn3 
	.byte	W48
@ 031   ----------------------------------------
	.byte	W48
	.byte		VOL   , 40*mus_rustboro_mvl/mxv
	.byte		TIE   , Bn2 
	.byte	W06
	.byte		VOL   , 39*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        38*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        37*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        36*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        35*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        34*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        33*mus_rustboro_mvl/mxv
	.byte	W06
@ 032   ----------------------------------------
	.byte		        32*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        31*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        30*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        29*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        28*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        27*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        26*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        25*mus_rustboro_mvl/mxv
	.byte	W06
	.byte		        24*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        23*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        22*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        21*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        20*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        19*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        18*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        17*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        16*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        15*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        14*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        13*mus_rustboro_mvl/mxv
	.byte	W04
@ 033   ----------------------------------------
	.byte		        12*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        11*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        10*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        9*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        8*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        7*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        6*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        5*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        4*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        3*mus_rustboro_mvl/mxv
	.byte	W04
	.byte		        2*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		EOT   
	.byte	W02
	.byte		VOL   , 1*mus_rustboro_mvl/mxv
	.byte	W52
@ 034   ----------------------------------------
	.byte		        0*mus_rustboro_mvl/mxv
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

mus_rustboro_5:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 0
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
LoopStart_005:
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
	.byte	W48
	.byte		VOL   , 83*mus_rustboro_mvl/mxv
	.byte		N11   , Cn1 , v112
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 018   ----------------------------------------
mus_rustboro_5_018:
	.byte		N32   , Dn1 , v112
	.byte	W36
	.byte		VOL   , 40*mus_rustboro_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 83*mus_rustboro_mvl/mxv
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
mus_rustboro_5_019:
	.byte		N32   , Dn1 , v112
	.byte	W36
	.byte		VOL   , 40*mus_rustboro_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 83*mus_rustboro_mvl/mxv
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 020   ----------------------------------------
mus_rustboro_5_020:
	.byte		N20   , Dn1 , v112
	.byte	W36
	.byte		VOL   , 40*mus_rustboro_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 83*mus_rustboro_mvl/mxv
	.byte		N20   , Cn1 
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte	PEND
@ 021   ----------------------------------------
mus_rustboro_5_021:
	.byte		N20   , Dn1 , v112
	.byte	W36
	.byte		VOL   , 40*mus_rustboro_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 83*mus_rustboro_mvl/mxv
	.byte		N11   , Cn1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	PEND
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_018
@ 023   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_019
	.byte	GOTO
	 .word LoopStart_005
@ 024   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_020
@ 025   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_021
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_018
@ 027   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_019
@ 028   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_020
@ 029   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_021
@ 030   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_5_018
@ 031   ----------------------------------------
	.byte		N32   , Dn1 , v112
	.byte	W36
	.byte		VOL   , 40*mus_rustboro_mvl/mxv
	.byte		N11   
	.byte	W12
	.byte		VOL   , 83*mus_rustboro_mvl/mxv
	.byte		N90   , Cn1 
	.byte		N90   , En2 
	.byte	W48
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

mus_rustboro_6:
	.byte	KEYSH , mus_rustboro_key+0
@ 000   ----------------------------------------
	.byte		VOICE , 47
	.byte		VOL   , 127*mus_rustboro_mvl/mxv
	.byte		PAN   , c_v+0
	.byte	W96
@ 001   ----------------------------------------
	.byte	W96
@ 002   ----------------------------------------
	.byte	W96
@ 003   ----------------------------------------
	.byte	W96
@ 004   ----------------------------------------
LoopStart_006:
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
	.byte	W48
	.byte		        c_v+30
	.byte		VOL   , 34*mus_rustboro_mvl/mxv
	.byte		N11   , Dn2 , v112
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 018   ----------------------------------------
mus_rustboro_6_018:
	.byte		N32   , An2 , v112
	.byte	W36
	.byte		N11   , Dn2 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
	.byte	PEND
@ 019   ----------------------------------------
	.byte		N32   , An2 
	.byte	W36
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        Cs2 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 020   ----------------------------------------
	.byte		N32   , Gs2 
	.byte	W36
	.byte		N11   , Cs2 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
@ 021   ----------------------------------------
	.byte		N32   , Gs2 
	.byte	W36
	.byte		N11   , Cs2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 022   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_6_018
@ 023   ----------------------------------------
	.byte		N32   , An2 , v112
	.byte	W36
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        En2 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
	.byte	GOTO
	 .word LoopStart_006
@ 024   ----------------------------------------
	.byte		N32   , Bn2 
	.byte	W36
	.byte		N11   , En2 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
@ 025   ----------------------------------------
	.byte		N32   , Bn2 
	.byte	W36
	.byte		N11   , En2 
	.byte	W12
	.byte		        Dn2 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 026   ----------------------------------------
	.byte	PATT
	 .word	mus_rustboro_6_018
@ 027   ----------------------------------------
	.byte		N32   , An2 , v112
	.byte	W36
	.byte		N11   , Dn2 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 028   ----------------------------------------
	.byte		N32   , En2 
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
@ 029   ----------------------------------------
	.byte		N32   , En2 
	.byte	W36
	.byte		N11   , An1 
	.byte	W12
	.byte		        As1 
	.byte	W12
	.byte		N11   
	.byte	W24
	.byte		N11   
	.byte	W12
@ 030   ----------------------------------------
	.byte		N32   , Fn2 
	.byte	W36
	.byte		N11   , As1 
	.byte	W12
	.byte		N20   
	.byte	W24
	.byte		N20   
	.byte	W24
@ 031   ----------------------------------------
	.byte		N32   , Fn2 
	.byte	W36
	.byte		N11   , As1 
	.byte	W12
	.byte		VOL   , 34*mus_rustboro_mvl/mxv
	.byte		N90   , Gn1 
	.byte	W02
	.byte		VOL   , 33*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        32*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        31*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        30*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        29*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        28*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        27*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        26*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        25*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        24*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        23*mus_rustboro_mvl/mxv
	.byte	W02
	.byte		        22*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        21*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        20*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        19*mus_rustboro_mvl/mxv
	.byte	W03
	.byte		        18*mus_rustboro_mvl/mxv
	.byte	W03
@ 032   ----------------------------------------
	.byte	W96
@ 033   ----------------------------------------
	.byte	W96
@ 034   ----------------------------------------
	.byte	FINE

@******************************************************@
	.align	2

mus_rustboro:
	.byte	6	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_rustboro_pri	@ Priority
	.byte	mus_rustboro_rev	@ Reverb.

	.word	mus_rustboro_grp

	.word	mus_rustboro_1
	.word	mus_rustboro_2
	.word	mus_rustboro_3
	.word	mus_rustboro_4
	.word	mus_rustboro_5
	.word	mus_rustboro_6

	.end
