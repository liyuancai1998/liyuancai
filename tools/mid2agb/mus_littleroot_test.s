	.include "MPlayDef.s"

	.equ	mus_littleroot_test_grp, voicegroup000
	.equ	mus_littleroot_test_pri, 0
	.equ	mus_littleroot_test_rev, 0
	.equ	mus_littleroot_test_mvl, 80
	.equ	mus_littleroot_test_key, 0
	.equ	mus_littleroot_test_tbs, 1
	.equ	mus_littleroot_test_exg, 0
	.equ	mus_littleroot_test_cmp, 1

	.section .rodata
	.global	mus_littleroot_test
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

mus_littleroot_test_1:
	.byte		VOL   , 127*mus_littleroot_test_mvl/mxv
	.byte	KEYSH , mus_littleroot_test_key+0
@ 000   ----------------------------------------
	.byte	TEMPO , 120*mus_littleroot_test_tbs/2
	.byte	W24
	.byte	W01
	.byte		VOICE , 0
	.byte		N04   , Gn5 , v076
	.byte	W06
	.byte		N44   , Cn2 , v100
	.byte	W64
	.byte	W01
@ 001   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		        Cn2 , v112
	.byte	W44
	.byte	W02
@ 002   ----------------------------------------
	.byte	W21
	.byte		N16   , Dn6 , v108
	.byte	W28
	.byte	W01
	.byte		N13   , Cn6 , v096
	.byte	W21
	.byte		N68   , Fn1 , v112
	.byte	W24
	.byte	W01
@ 003   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N18   , Gs1 
	.byte	W24
	.byte	W03
	.byte		N07   , Fn2 , v108
	.byte	W18
	.byte		N66   , Fn1 , v104
	.byte	W05
@ 004   ----------------------------------------
	.byte	W66
	.byte		N36   , Gs1 , v112
	.byte	W30
@ 005   ----------------------------------------
	.byte	W13
	.byte		TIE   , Gn1 
	.byte	W80
	.byte	W03
@ 006   ----------------------------------------
	.byte	W23
	.byte		EOT   
	.byte	W03
	.byte		N17   , Dn6 , v108
	.byte	W68
	.byte	W02
@ 007   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N14   , Ds6 , v104
	.byte	W48
	.byte	W02
@ 008   ----------------------------------------
	.byte	W07
	.byte		N16   , Dn6 
	.byte	W22
	.byte		N20   , Ds6 , v108
	.byte	W42
	.byte		TIE   , Gn1 , v116
	.byte	W24
	.byte	W01
@ 009   ----------------------------------------
	.byte	W84
	.byte		EOT   
	.byte	W05
	.byte		N24   , Cn2 , v104
	.byte	W07
@ 010   ----------------------------------------
	.byte	W42
	.byte		N48   , En3 , v092
	.byte	W52
	.byte	W01
	.byte		N06   , Cn6 
	.byte	W01
@ 011   ----------------------------------------
	.byte	W52
	.byte		N36   , As3 , v116
	.byte	W40
	.byte	W01
	.byte		N18   , Cs6 
	.byte	W03
@ 012   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N60   , As3 , v112
	.byte	W66
	.byte	W01
@ 013   ----------------------------------------
	.byte	W56
	.byte		N36   , Cn4 , v120
	.byte	W40
@ 014   ----------------------------------------
	.byte	W54
	.byte	W01
	.byte		N11   , Fn4 , v112
	.byte	W16
	.byte		N24   , Gn4 , v120
	.byte	W24
	.byte	W01
@ 015   ----------------------------------------
	.byte	W90
	.byte		N36   , Fs1 , v100
	.byte	W06
@ 016   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N40   , Gn1 , v116
	.byte	W56
	.byte	W03
@ 017   ----------------------------------------
	.byte	W18
	.byte		N20   , Dn5 , v100
	.byte	W24
	.byte		N11   , Dn5 , v092
	.byte	W24
	.byte	W02
	.byte		N22   , Dn6 , v104
	.byte	W28
@ 018   ----------------------------------------
	.byte	W17
	.byte		N11   , Dn6 , v084
	.byte	W11
	.byte		N16   , Cn6 , v108
	.byte	W30
	.byte		N06   , Cn6 , v104
	.byte	W18
	.byte		N21   , Cn4 , v108
	.byte	W20
@ 019   ----------------------------------------
	.byte	W08
	.byte		N16   
	.byte	W44
	.byte		N52   , Gs1 , v088
	.byte	W44
@ 020   ----------------------------------------
	.byte	W12
	.byte		N60   , Gn1 , v120
	.byte	W84
@ 021   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N48   , Cn2 , v108
	.byte	W07
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W12
	.byte		N44   , Cn2 , v112
	.byte	W66
	.byte	W01
	.byte		N16   , Dn6 , v108
	.byte	W17
@ 024   ----------------------------------------
	.byte	W12
	.byte		N13   , Cn6 , v096
	.byte	W21
	.byte		N68   , Fn1 , v112
	.byte	W60
	.byte	W03
@ 025   ----------------------------------------
	.byte	W08
	.byte		N18   , Gs1 
	.byte	W24
	.byte	W03
	.byte		N06   , Fn2 , v108
	.byte	W17
	.byte		N68   , Fn1 , v104
	.byte	W44
@ 026   ----------------------------------------
	.byte	W28
	.byte		N36   , Gs1 , v108
	.byte	W42
	.byte	W01
	.byte		TIE   , Gn1 , v112
	.byte	W24
	.byte	W01
@ 027   ----------------------------------------
	.byte	W80
	.byte		EOT   
	.byte	W04
	.byte		N14   , Dn6 , v108
	.byte	W12
@ 028   ----------------------------------------
	.byte	W96
@ 029   ----------------------------------------
	.byte	W07
	.byte		N15   , Ds6 , v104
	.byte	W56
	.byte	W02
	.byte		N16   , Dn6 
	.byte	W21
	.byte		N20   , Ds6 , v108
	.byte	W10
@ 030   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		TIE   , Gn1 , v116
	.byte	W60
	.byte	W03
@ 031   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		EOT   
	.byte	W03
	.byte		N24   , Cn2 , v104
	.byte	W44
	.byte	W02
@ 032   ----------------------------------------
	.byte	W04
	.byte		N44   , En3 , v092
	.byte	W52
	.byte		N07   , Cn6 
	.byte	W40
@ 033   ----------------------------------------
	.byte	W14
	.byte		N32   , As3 , v120
	.byte	W40
	.byte	W01
	.byte		N18   , Cs6 , v116
	.byte	W36
	.byte		TIE   , Fn1 , v112
	.byte	W05
@ 034   ----------------------------------------
	.byte	W96
@ 035   ----------------------------------------
	.byte	W09
	.byte		EOT   
	.byte	W08
	.byte		N36   , Cn4 , v120
	.byte	W78
	.byte	W01
@ 036   ----------------------------------------
	.byte	W17
	.byte		N11   , Fn4 , v112
	.byte	W15
	.byte		N24   , Gn4 , v120
	.byte	W64
@ 037   ----------------------------------------
	.byte	W52
	.byte		N36   , Fs1 , v100
	.byte	W42
	.byte	W01
	.byte		N40   , Gn1 , v116
	.byte	W01
@ 038   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		N14   , Dn4 , v100
	.byte	W24
	.byte	W03
@ 039   ----------------------------------------
	.byte	W03
	.byte		N10   , Dn5 , v096
	.byte	W24
	.byte	W03
	.byte		N22   , Dn6 , v104
	.byte	W44
	.byte	W01
	.byte		N11   , Dn6 , v084
	.byte	W11
	.byte		N16   , Cn6 , v108
	.byte	W10
@ 040   ----------------------------------------
	.byte	W19
	.byte		N06   , Cn6 , v104
	.byte	W19
	.byte		N21   , Cn4 , v108
	.byte	W24
	.byte	W03
	.byte		N16   
	.byte	W30
	.byte	W01
@ 041   ----------------------------------------
	.byte	W13
	.byte		N52   , Gs1 , v088
	.byte	W56
	.byte	W02
	.byte		N60   , Gn1 , v120
	.byte	W24
	.byte	W01
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		N48   , Cn2 , v108
	.byte	W44
	.byte	W02
@ 044   ----------------------------------------
	.byte	W68
	.byte	W02
	.byte		N36   , Cn2 , v100
	.byte	W24
	.byte	W02
@ 045   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N16   , Dn6 , v068
	.byte	W48
	.byte	W02
	.byte		N66   , Fn1 , v048
	.byte	W05
@ 046   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte	FINE

@**************** Track 2 (Midi-Chn.1) ****************@

mus_littleroot_test_2:
	.byte		VOL   , 127*mus_littleroot_test_mvl/mxv
	.byte	KEYSH , mus_littleroot_test_key+0
@ 000   ----------------------------------------
	.byte	W30
	.byte		TIE   , Gn2 , v092
	.byte	W66
@ 001   ----------------------------------------
	.byte	W44
	.byte		EOT   
	.byte	W03
	.byte		N02   , As3 , v068
	.byte	W42
	.byte	W01
	.byte		N19   , Cn6 , v092
	.byte	W06
@ 002   ----------------------------------------
	.byte	W22
	.byte		N42   , Dn4 , v084
	.byte	W44
	.byte	W03
	.byte		N07   , Fn2 , v092
	.byte	W24
	.byte	W03
@ 003   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N11   , Cn2 , v096
	.byte	W36
	.byte	W01
@ 004   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		N04   , Ds4 , v044
	.byte	W11
	.byte		N17   
	.byte	W20
@ 005   ----------------------------------------
	.byte	W04
	.byte		N02   , Ds4 , v052
	.byte	W03
	.byte		N10   , Dn6 , v104
	.byte	W88
	.byte	W01
@ 006   ----------------------------------------
	.byte	W32
	.byte		N42   , Bn1 , v096
	.byte	W64
@ 007   ----------------------------------------
	.byte	W32
	.byte		N44   , Fn4 , v092
	.byte	W36
	.byte	W03
	.byte		N42   , Gn3 , v088
	.byte	W24
	.byte	W01
@ 008   ----------------------------------------
	.byte	W66
	.byte	W01
	.byte		N19   , Bn3 , v068
	.byte	W22
	.byte		N92   , Bn2 
	.byte	W07
@ 009   ----------------------------------------
	.byte	W88
	.byte		TIE   , Gn2 , v092
	.byte	W08
@ 010   ----------------------------------------
	.byte	W96
@ 011   ----------------------------------------
	.byte	W07
	.byte		EOT   
	.byte	W04
	.byte		N36   , En2 , v100
	.byte	W03
	.byte		TIE   , En1 , v104
	.byte	W80
	.byte	W02
@ 012   ----------------------------------------
	.byte	W17
	.byte		N06   , Cn4 , v088
	.byte	W11
	.byte		EOT   , En1 
	.byte	W05
	.byte		TIE   , Fn1 , v112
	.byte	W60
	.byte	W03
@ 013   ----------------------------------------
	.byte	W05
	.byte		N32   , Gs3 , v096
	.byte	W40
	.byte	W01
	.byte		EOT   , Fn1 
	.byte	W03
	.byte		N05   , An2 , v092
	.byte	W02
	.byte		N52   , An1 , v108
	.byte	W44
	.byte	W01
@ 014   ----------------------------------------
	.byte	W06
	.byte		N17   , Dn5 , v096
	.byte	W05
	.byte		N03   , Dn6 
	.byte	W15
	.byte		N06   , Ds4 , v092
	.byte	W09
	.byte		N14   
	.byte	W32
	.byte	W02
	.byte		N02   , Gn2 , v068
	.byte	W02
	.byte		TIE   , Gn1 , v108
	.byte	W24
	.byte	W01
@ 015   ----------------------------------------
	.byte	W03
	.byte		N05   , Cn5 , v104
	.byte	W22
	.byte		N17   , Dn5 , v096
	.byte	W18
	.byte		N23   , Ds5 , v088
	.byte	W40
	.byte	W01
	.byte		EOT   , Gn1 
	.byte		N03   , Dn5 , v096
	.byte	W03
	.byte		N24   , Fs2 , v100
	.byte	W09
@ 016   ----------------------------------------
	.byte	W23
	.byte		N11   , An3 , v092
	.byte	W11
	.byte		N32   , Bn3 , v104
	.byte	W40
	.byte	W01
	.byte		N23   , Cn5 
	.byte	W05
	.byte		N05   , An1 , v100
	.byte	W14
	.byte		        Bn1 , v092
	.byte	W02
@ 017   ----------------------------------------
	.byte	W11
	.byte		N14   , Dn4 , v100
	.byte	W24
	.byte	W03
	.byte		N03   , Dn6 , v092
	.byte	W13
	.byte		N04   
	.byte	W04
	.byte		N09   , Dn5 , v100
	.byte	W03
	.byte		N48   , Dn4 
	.byte	W07
	.byte		N02   , Dn6 , v096
	.byte	W24
	.byte	W03
	.byte		N19   , Dn6 , v084
	.byte	W04
@ 018   ----------------------------------------
	.byte	W54
	.byte		N20   , Cn4 , v104
	.byte	W36
	.byte	W02
	.byte		N08   , Cn6 , v092
	.byte	W04
@ 019   ----------------------------------------
	.byte	W02
	.byte		N09   , Cn5 , v100
	.byte	W92
	.byte	W02
@ 020   ----------------------------------------
	.byte	W11
	.byte		N24   , As2 , v076
	.byte	W42
	.byte		N11   , As2 , v064
	.byte	W17
	.byte		N40   , Cn2 , v100
	.byte	W24
	.byte	W02
@ 021   ----------------------------------------
	.byte	W88
	.byte		TIE   , Gn2 , v088
	.byte	W08
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W05
	.byte		EOT   
	.byte	W04
	.byte		N02   , As3 , v064
	.byte	W68
	.byte	W03
	.byte		N42   , Dn4 , v084
	.byte	W16
@ 024   ----------------------------------------
	.byte	W30
	.byte		N07   , Fn2 , v092
	.byte	W66
@ 025   ----------------------------------------
	.byte	W24
	.byte		N56   , Cn3 , v096
	.byte	W72
@ 026   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N05   , Ds4 , v044
	.byte	W11
	.byte		N17   
	.byte	W24
	.byte	W01
	.byte		N02   , Ds4 , v052
	.byte	W02
	.byte		N10   , Dn6 , v104
	.byte	W32
@ 027   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N42   , Bn1 , v096
	.byte	W07
@ 028   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N44   , Fn4 , v092
	.byte	W07
@ 029   ----------------------------------------
	.byte	W32
	.byte		N42   , Gn3 
	.byte	W64
@ 030   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N20   , Bn3 , v068
	.byte	W66
	.byte	W01
@ 031   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		TIE   , Gn2 , v092
	.byte	W44
	.byte	W03
@ 032   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N36   , En2 , v100
	.byte	W03
	.byte		TIE   , En1 , v104
	.byte	W24
@ 033   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		N10   , Cn4 , v088
	.byte	W11
	.byte		EOT   , En1 
	.byte	W02
	.byte		N60   , As3 , v112
	.byte	W09
@ 034   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		N32   , Gs3 , v096
	.byte	W32
	.byte	W01
@ 035   ----------------------------------------
	.byte	W11
	.byte		N04   , An2 , v092
	.byte	W02
	.byte		N48   , An1 , v108
	.byte	W48
	.byte	W02
	.byte		N18   , Dn5 , v096
	.byte	W06
	.byte		N03   , Dn6 
	.byte	W14
	.byte		N06   , Ds4 , v092
	.byte	W10
	.byte		N13   
	.byte	W03
@ 036   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		TIE   , Gn1 , v108
	.byte	W28
	.byte		N05   , Cn5 , v104
	.byte	W22
	.byte		N17   , Dn5 , v096
	.byte	W13
@ 037   ----------------------------------------
	.byte	W05
	.byte		N23   , Ds5 , v092
	.byte	W40
	.byte	W01
	.byte		EOT   , Gn1 
	.byte	W03
	.byte		N24   , Fs2 , v100
	.byte	W32
	.byte		N11   , An3 , v092
	.byte	W10
	.byte		N32   , Bn3 , v104
	.byte	W05
@ 038   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N23   , Cn5 
	.byte	W05
	.byte		N05   , An1 , v100
	.byte	W14
	.byte		        Bn1 , v092
	.byte	W19
	.byte		N20   , Dn5 , v100
	.byte	W20
	.byte		N03   , Dn6 , v092
	.byte	W01
@ 039   ----------------------------------------
	.byte	W12
	.byte		N05   
	.byte	W05
	.byte		N09   , Dn5 , v100
	.byte	W03
	.byte		N48   , Dn4 
	.byte	W07
	.byte		N02   , Dn6 , v092
	.byte	W24
	.byte	W03
	.byte		N19   , Dn6 , v084
	.byte	W42
@ 040   ----------------------------------------
	.byte	W15
	.byte		N20   , Cn4 , v104
	.byte	W24
	.byte	W02
	.byte		N12   , Cn6 , v092
	.byte	W13
	.byte		N08   
	.byte	W05
	.byte		N09   , Cn5 , v100
	.byte	W36
	.byte	W01
@ 041   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		N24   , As2 , v076
	.byte	W24
	.byte	W03
@ 042   ----------------------------------------
	.byte	W14
	.byte		N11   , As2 , v064
	.byte	W17
	.byte		N42   , Cn2 , v100
	.byte	W64
	.byte	W01
@ 043   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		TIE   , Gn2 , v088
	.byte	W44
	.byte	W03
@ 044   ----------------------------------------
	.byte	W60
	.byte	W02
	.byte		EOT   
	.byte	W04
	.byte		N02   , As3 , v048
	.byte	W04
	.byte		TIE   , As2 , v068
	.byte	W24
	.byte	W02
@ 045   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		EOT   
	.byte	W05
	.byte		N06   , Fn2 , v032
	.byte	W07
	.byte	FINE

@**************** Track 3 (Midi-Chn.2) ****************@

mus_littleroot_test_3:
	.byte		VOL   , 127*mus_littleroot_test_mvl/mxv
	.byte	KEYSH , mus_littleroot_test_key+0
@ 000   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N96   , Ds3 , v068
	.byte	W48
	.byte	W01
@ 001   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N66   , As2 , v084
	.byte	W44
	.byte	W01
@ 002   ----------------------------------------
	.byte	W23
	.byte		N40   , En3 , v080
	.byte	W44
	.byte	W02
	.byte		N44   , Cn3 , v088
	.byte	W24
	.byte	W03
@ 003   ----------------------------------------
	.byte	W60
	.byte	W03
	.byte		N56   , Cn3 , v096
	.byte	W28
	.byte		N66   , Gs2 , v084
	.byte	W05
@ 004   ----------------------------------------
	.byte	W60
	.byte	W01
	.byte		N03   , Ds3 , v056
	.byte	W01
	.byte		N01   , Ds5 , v028
	.byte	W02
	.byte		N02   , Cn3 , v044
	.byte	W32
@ 005   ----------------------------------------
	.byte	W03
	.byte		N04   , Cn3 , v048
	.byte	W07
	.byte		N28   , Dn3 , v092
	.byte	W24
	.byte		N88   , Bn2 , v076
	.byte	W44
	.byte	W03
	.byte		N32   , Bn3 
	.byte	W15
@ 006   ----------------------------------------
	.byte	W18
	.byte		N03   , Dn3 , v072
	.byte	W20
	.byte		N60   , Bn2 , v092
	.byte	W56
	.byte	W02
@ 007   ----------------------------------------
	.byte	W03
	.byte		N32   , Gn4 , v076
	.byte	W32
	.byte	W03
	.byte		N07   , Dn3 , v068
	.byte	W13
	.byte		N36   , Cn2 , v084
	.byte	W44
	.byte	W01
@ 008   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		N18   , Gn5 , v068
	.byte	W24
	.byte		N10   , Fn3 , v060
	.byte	W22
@ 009   ----------------------------------------
	.byte	W36
	.byte		N02   , Gn3 , v028
	.byte	W48
	.byte	W03
	.byte		N40   , Gn4 , v092
	.byte	W09
@ 010   ----------------------------------------
	.byte	W20
	.byte		N36   , Gn3 , v084
	.byte	W72
	.byte	W01
	.byte		N09   , Fn4 , v088
	.byte	W03
@ 011   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N18   , Gn4 
	.byte	W32
	.byte	W03
	.byte		N06   , As4 , v084
	.byte	W14
	.byte		N14   , Cs5 , v092
	.byte	W13
@ 012   ----------------------------------------
	.byte	W02
	.byte		N13   , Cs4 
	.byte	W13
	.byte		N12   , En6 , v084
	.byte	W28
	.byte		N14   , Fn2 , v088
	.byte	W52
	.byte	W01
@ 013   ----------------------------------------
	.byte	W08
	.byte		N10   , Ds5 , v080
	.byte	W13
	.byte		N13   , Gs4 , v092
	.byte	W14
	.byte		N09   , As3 , v088
	.byte	W09
	.byte		N02   , As4 , v080
	.byte	W04
	.byte		N03   , Cn6 , v084
	.byte	W40
	.byte	W01
	.byte		N72   , An2 , v092
	.byte	W07
@ 014   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		N16   , Ds5 , v088
	.byte	W23
	.byte		N04   , Cn6 , v092
	.byte	W42
@ 015   ----------------------------------------
	.byte	W15
	.byte		N09   , Dn5 
	.byte	W15
	.byte		N08   , Dn6 , v096
	.byte	W15
	.byte		N05   , Ds4 , v084
	.byte	W06
	.byte		N15   , Ds4 , v088
	.byte	W15
	.byte		N07   , Ds6 , v080
	.byte	W18
	.byte		N03   , Dn4 
	.byte	W05
	.byte		N07   , Dn4 , v096
	.byte	W07
@ 016   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N03   , Gn2 , v088
	.byte	W03
	.byte		N09   , Ds6 , v080
	.byte	W10
	.byte		N12   , Fs5 
	.byte	W16
	.byte		N11   , Cn5 , v096
	.byte	W05
	.byte		N10   , Cn4 , v092
	.byte	W24
	.byte	W03
	.byte		N08   , Ds5 , v088
	.byte	W01
@ 017   ----------------------------------------
	.byte	W08
	.byte		N03   , Gn5 , v048
	.byte	W02
	.byte		N07   , Dn6 , v088
	.byte	W03
	.byte		N44   , Cn2 , v092
	.byte	W44
	.byte	W03
	.byte		N01   , Dn6 , v080
	.byte	W18
	.byte		N44   , Cn3 , v076
	.byte	W18
@ 018   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		N24   , Cn3 , v100
	.byte	W01
	.byte		N48   , As1 
	.byte	W32
	.byte	W01
	.byte		N08   , Cn6 , v092
	.byte	W09
	.byte		N04   
	.byte	W06
	.byte		N12   
	.byte	W16
@ 019   ----------------------------------------
	.byte	W08
	.byte		N09   , Cn6 , v100
	.byte	W14
	.byte		N08   , Cn5 , v084
	.byte	W09
	.byte		N18   , Cn4 , v080
	.byte	W17
	.byte		N54   , Cn3 , v076
	.byte	W48
@ 020   ----------------------------------------
	.byte	W08
	.byte		N03   , As4 , v020
	.byte	W01
	.byte		N06   , Gn3 , v064
	.byte	W18
	.byte		N11   , Gn2 , v068
	.byte	W32
	.byte	W01
	.byte		N02   , Dn4 , v016
	.byte	W09
	.byte		N60   , Gn2 , v084
	.byte	W24
	.byte	W03
@ 021   ----------------------------------------
	.byte	W84
	.byte		N06   , Gn5 , v076
	.byte	W12
@ 022   ----------------------------------------
	.byte	W14
	.byte		N90   , Ds3 , v068
	.byte	W80
	.byte	W02
@ 023   ----------------------------------------
	.byte	W12
	.byte		N68   , As2 , v084
	.byte	W84
@ 024   ----------------------------------------
	.byte	W30
	.byte		N44   , Cn3 , v088
	.byte	W66
@ 025   ----------------------------------------
	.byte	W21
	.byte		N11   , Cn2 , v096
	.byte	W32
	.byte		N66   , Gs2 , v084
	.byte	W42
	.byte	W01
@ 026   ----------------------------------------
	.byte	W23
	.byte		N03   , Ds3 , v056
	.byte	W03
	.byte		        Cn3 , v044
	.byte	W32
	.byte	W02
	.byte		N04   , Cn3 , v048
	.byte	W07
	.byte		N28   , Dn3 , v092
	.byte	W24
	.byte	W01
	.byte		N88   , Bn2 , v076
	.byte	W04
@ 027   ----------------------------------------
	.byte	W42
	.byte		N32   , Bn3 
	.byte	W32
	.byte	W02
	.byte		N03   , Dn3 , v072
	.byte	W20
@ 028   ----------------------------------------
	.byte		N60   , Bn2 , v092
	.byte	W60
	.byte		N32   , Gn4 , v076
	.byte	W36
@ 029   ----------------------------------------
	.byte	W12
	.byte		N36   , Cn2 , v084
	.byte	W84
@ 030   ----------------------------------------
	.byte	W12
	.byte		N18   , Gn5 , v068
	.byte	W24
	.byte	W01
	.byte		TIE   , Bn2 
	.byte	W56
	.byte	W01
	.byte		N02   , Gn3 , v028
	.byte	W02
@ 031   ----------------------------------------
	.byte	W44
	.byte	W01
	.byte		EOT   , Bn2 
	.byte	W03
	.byte		N40   , Gn4 , v092
	.byte	W30
	.byte		N36   , Gn3 , v084
	.byte	W18
@ 032   ----------------------------------------
	.byte	W54
	.byte	W01
	.byte		N10   , Fn4 , v088
	.byte	W36
	.byte	W01
	.byte		N17   , Gn4 
	.byte	W04
@ 033   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		N06   , As4 , v084
	.byte	W14
	.byte		N14   , Cs5 , v092
	.byte	W15
	.byte		N13   , Cs4 
	.byte	W24
	.byte	W03
	.byte		N04   , Cn3 , v084
	.byte	W09
@ 034   ----------------------------------------
	.byte	W05
	.byte		N18   , Fn2 
	.byte	W24
	.byte	W02
	.byte		N06   , Dn6 , v080
	.byte	W32
	.byte	W03
	.byte		N10   , Ds5 , v084
	.byte	W13
	.byte		N13   , Gs4 , v092
	.byte	W14
	.byte		N10   , As3 , v088
	.byte	W03
@ 035   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn6 , v084
	.byte	W36
	.byte	W03
	.byte		N72   , An2 , v092
	.byte	W36
	.byte	W01
	.byte		N18   , Ds5 
	.byte	W09
@ 036   ----------------------------------------
	.byte	W15
	.byte		N04   , Cn6 
	.byte	W15
	.byte		N02   , Gn2 , v068
	.byte	W42
	.byte		N09   , Dn5 , v088
	.byte	W16
	.byte		N08   , Dn6 , v096
	.byte	W08
@ 037   ----------------------------------------
	.byte	W07
	.byte		N05   , Ds4 , v084
	.byte	W06
	.byte		N15   , Ds4 , v088
	.byte	W15
	.byte		N07   , Ds6 , v080
	.byte	W18
	.byte		N12   , Dn4 , v096
	.byte		N03   , Dn5 
	.byte	W44
	.byte	W02
	.byte		        Gn2 , v088
	.byte	W02
	.byte		N09   , Ds6 , v080
	.byte	W02
@ 038   ----------------------------------------
	.byte	W09
	.byte		N11   , Fs5 
	.byte	W16
	.byte		        Cn5 , v096
	.byte	W04
	.byte		N10   , Cn4 , v092
	.byte	W28
	.byte		N08   , Ds5 , v088
	.byte	W08
	.byte		N03   , Gn5 , v048
	.byte	W02
	.byte		N07   , Dn6 , v088
	.byte	W04
	.byte		N44   , Cn2 , v092
	.byte	W24
	.byte	W01
@ 039   ----------------------------------------
	.byte	W22
	.byte		N02   , Dn6 , v080
	.byte	W18
	.byte		N44   , Cn3 , v076
	.byte	W48
	.byte	W02
	.byte		        As1 , v100
	.byte	W03
	.byte		N18   , Cn3 , v096
	.byte	W03
@ 040   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N08   , Cn6 , v092
	.byte	W09
	.byte		N04   
	.byte	W30
	.byte	W01
	.byte		N09   , Cn6 , v100
	.byte	W13
	.byte		N08   , Cn5 , v084
	.byte	W10
	.byte		N19   , Cn4 , v080
	.byte	W07
@ 041   ----------------------------------------
	.byte	W10
	.byte		N54   , Cn3 , v072
	.byte	W56
	.byte		N02   , As4 , v020
	.byte	W01
	.byte		N05   , Gn3 , v064
	.byte	W18
	.byte		N11   , Gn2 , v068
	.byte	W11
@ 042   ----------------------------------------
	.byte	W22
	.byte		N02   , Dn4 , v016
	.byte	W08
	.byte		N60   , Gn2 , v084
	.byte	W66
@ 043   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N06   , Gn5 , v072
	.byte	W01
	.byte		N02   , Cn4 , v052
	.byte	W24
	.byte	W01
	.byte		N88   , Ds3 , v064
	.byte	W24
@ 044   ----------------------------------------
	.byte	W68
	.byte	W01
	.byte		TIE   , Gn2 
	.byte	W24
	.byte	W03
@ 045   ----------------------------------------
	.byte	W80
	.byte	W01
	.byte		EOT   
	.byte	W04
	.byte		N64   , As3 , v024
	.byte	W11
@ 046   ----------------------------------------
	.byte	W54
	.byte	FINE

@**************** Track 4 (Midi-Chn.2) ****************@

mus_littleroot_test_4:
	.byte		VOL   , 127*mus_littleroot_test_mvl/mxv
	.byte	KEYSH , mus_littleroot_test_key+0
@ 000   ----------------------------------------
	.byte	W28
	.byte		VOICE , 0
	.byte		N02   , Ds3 , v056
	.byte	W01
	.byte		N13   , Gn4 , v064
	.byte	W06
	.byte		TIE   , Cn1 
	.byte	W60
	.byte	W01
@ 001   ----------------------------------------
	.byte	W02
	.byte		N13   , Fs6 
	.byte	W40
	.byte	W01
	.byte		EOT   , Cn1 
	.byte	W04
	.byte		N02   , Dn5 , v052
	.byte	W03
	.byte		TIE   , Gn2 , v080
	.byte	W01
	.byte		N04   , Ds3 , v068
	.byte	W44
	.byte	W01
@ 002   ----------------------------------------
	.byte	W64
	.byte		EOT   , Gn2 
	.byte	W02
	.byte		N68   , As3 , v084
	.byte	W30
@ 003   ----------------------------------------
	.byte	W40
	.byte	W01
	.byte		N19   , Cn3 , v072
	.byte	W15
	.byte		N28   , Gs2 , v076
	.byte	W15
	.byte		N32   , As3 
	.byte	W16
	.byte		N01   , Cn5 , v048
	.byte	W09
@ 004   ----------------------------------------
	.byte	W11
	.byte		N30   , Fn2 , v080
	.byte	W18
	.byte		N13   , Cn3 , v056
	.byte	W30
	.byte	W01
	.byte		N06   , Gn5 , v024
	.byte	W36
@ 005   ----------------------------------------
	.byte	W11
	.byte		N01   , Gn2 , v068
	.byte		N23   , Dn4 , v080
	.byte	W07
	.byte		N02   , Bn3 , v048
	.byte	W18
	.byte		N24   , Dn4 , v060
	.byte	W05
	.byte		N03   , Dn3 , v056
	.byte	W11
	.byte		N32   , Gn2 , v072
	.byte	W44
@ 006   ----------------------------------------
	.byte	W06
	.byte		N09   , Dn3 , v044
	.byte	W17
	.byte		TIE   , Dn3 , v084
	.byte	W01
	.byte		N03   , Gn2 , v064
	.byte	W06
	.byte		N02   , Bn2 , v072
	.byte	W64
	.byte		N48   , Gs3 
	.byte	W02
@ 007   ----------------------------------------
	.byte	W36
	.byte		EOT   , Dn3 
	.byte	W03
	.byte		N06   , Bn2 , v060
	.byte	W09
	.byte		TIE   , Ds3 , v084
	.byte	W48
@ 008   ----------------------------------------
	.byte	W08
	.byte		N21   , Dn4 , v076
	.byte	W56
	.byte	W02
	.byte		EOT   , Ds3 
	.byte	W02
	.byte		N07   , An4 , v044
	.byte	W08
	.byte		        Bn2 , v048
	.byte	W20
@ 009   ----------------------------------------
	.byte	W84
	.byte		N02   , En5 , v032
	.byte	W01
	.byte		        Fs1 , v052
	.byte	W06
	.byte		N21   , Dn5 , v084
	.byte	W05
@ 010   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N36   , Gn3 
	.byte	W07
@ 011   ----------------------------------------
	.byte	W11
	.byte		N32   , Dn5 , v088
	.byte	W72
	.byte	W01
	.byte		N24   , Fn6 , v084
	.byte	W12
@ 012   ----------------------------------------
	.byte	W19
	.byte		N10   , Cn5 
	.byte	W11
	.byte		N03   , Cn3 
	.byte	W01
	.byte		N44   , Dn6 
	.byte	W52
	.byte		N60   , Gs2 , v080
	.byte	W13
@ 013   ----------------------------------------
	.byte	W04
	.byte		N02   , Gs4 , v076
	.byte	W44
	.byte	W02
	.byte		        Cn4 
	.byte	W03
	.byte		N15   , Cn5 , v080
	.byte	W36
	.byte	W03
	.byte		N08   , Dn5 , v088
	.byte	W04
@ 014   ----------------------------------------
	.byte	W01
	.byte		N10   , Dn4 , v092
	.byte	W16
	.byte		N02   , Dn6 , v080
	.byte	W07
	.byte		N03   , Ds5 , v076
	.byte	W36
	.byte	W03
	.byte		N02   , Ds4 
	.byte	W03
	.byte		N64   , Gn3 , v092
	.byte	W11
	.byte		N03   , Dn6 , v076
	.byte	W12
	.byte		N02   , Dn6 , v080
	.byte	W07
@ 015   ----------------------------------------
	.byte	W08
	.byte		N07   , Cn4 , v084
	.byte	W78
	.byte		N42   , An2 , v088
	.byte	W10
@ 016   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N05   , Cs6 , v084
	.byte	W44
	.byte	W02
	.byte		N03   , Cn6 , v088
	.byte	W09
	.byte		N23   , Bn2 , v084
	.byte		N09   , Cn4 , v076
	.byte	W15
@ 017   ----------------------------------------
	.byte	W07
	.byte		N02   , Gn3 , v044
	.byte	W15
	.byte		N05   , Dn6 , v092
	.byte	W72
	.byte	W02
@ 018   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N08   , Cn4 
	.byte	W56
	.byte	W02
@ 019   ----------------------------------------
	.byte	W19
	.byte		N02   , Cn6 , v080
	.byte	W08
	.byte		N22   
	.byte	W21
	.byte		N15   , Ds3 , v072
	.byte	W24
	.byte	W03
	.byte		N30   , Ds3 , v056
	.byte	W21
@ 020   ----------------------------------------
	.byte	W10
	.byte		N17   , Dn4 , v052
	.byte	W10
	.byte		N18   , As3 , v056
	.byte	W52
	.byte	W01
	.byte		TIE   , Cn1 , v072
	.byte	W10
	.byte		N96   , Ds3 , v068
	.byte	W13
@ 021   ----------------------------------------
	.byte	W36
	.byte	W01
	.byte		N02   , Gn2 , v016
	.byte	W12
	.byte		N32   , Gn2 , v040
	.byte	W32
	.byte	W02
	.byte		EOT   , Cn1 
	.byte	W02
	.byte		N02   , Cn4 , v052
	.byte		N02   , Ds5 , v040
	.byte	W09
	.byte		TIE   , Cn1 , v064
	.byte	W02
@ 022   ----------------------------------------
	.byte	W60
	.byte		N13   , Fs6 , v060
	.byte	W36
@ 023   ----------------------------------------
	.byte	W04
	.byte		EOT   , Cn1 
	.byte	W04
	.byte		N02   , Dn5 , v052
	.byte	W03
	.byte		TIE   , Gn2 , v080
	.byte	W01
	.byte		N04   , Ds3 , v068
	.byte	W42
	.byte	W01
	.byte		N16   , Cn6 , v076
	.byte	W24
	.byte	W03
	.byte		N40   , En3 , v080
	.byte	W14
@ 024   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		EOT   , Gn2 
	.byte	W02
	.byte		N68   , As3 , v084
	.byte	W68
	.byte	W01
@ 025   ----------------------------------------
	.byte	W03
	.byte		N19   , Cn3 , v068
	.byte	W15
	.byte		N28   , Gs2 , v076
	.byte	W15
	.byte		N32   , As3 
	.byte	W08
	.byte		N04   , Fn3 , v048
	.byte	W08
	.byte		N01   , Cn5 
	.byte	W20
	.byte		N32   , Fn2 , v080
	.byte	W14
	.byte		N02   , Fn3 , v044
	.byte	W03
	.byte		N13   , Cn3 , v056
	.byte	W10
@ 026   ----------------------------------------
	.byte	W22
	.byte		N02   , Gn5 , v020
	.byte	W04
	.byte		        Gn5 , v024
	.byte	W42
	.byte		N01   , Gn2 , v064
	.byte	W02
	.byte		N22   , Dn4 , v080
	.byte	W12
	.byte		N02   , Fs5 , v044
	.byte	W12
	.byte		N24   , Dn4 , v060
	.byte	W02
@ 027   ----------------------------------------
	.byte	W03
	.byte		N03   , Dn3 , v056
	.byte	W11
	.byte		N32   , Gn2 , v072
	.byte	W48
	.byte	W01
	.byte		N09   , Dn3 , v044
	.byte	W18
	.byte		TIE   , Dn3 , v084
	.byte	W07
	.byte		N02   , Bn2 , v072
	.byte	W08
@ 028   ----------------------------------------
	.byte	W56
	.byte		N48   , Gs3 
	.byte	W40
@ 029   ----------------------------------------
	.byte	W01
	.byte		N05   , Bn2 , v060
	.byte	W06
	.byte		EOT   , Dn3 
	.byte	W03
	.byte		TIE   , Ds3 , v080
	.byte	W56
	.byte		N21   , Dn4 , v076
	.byte	W30
@ 030   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		EOT   , Ds3 
	.byte	W03
	.byte		N02   , An4 , v036
	.byte	W02
	.byte		        Fs6 , v040
	.byte	W02
	.byte		N13   , Fn3 , v060
	.byte	W60
	.byte	W02
@ 031   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N02   , En5 , v036
	.byte		N01   , Gn5 , v032
	.byte	W01
	.byte		N02   , Fs1 , v052
	.byte	W06
	.byte		N21   , Dn5 , v084
	.byte	W42
	.byte	W01
@ 032   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		N36   , Gn3 
	.byte	W19
	.byte		N32   , Dn5 , v088
	.byte	W24
	.byte	W03
@ 033   ----------------------------------------
	.byte	W44
	.byte	W02
	.byte		N24   , Fn6 , v084
	.byte	W24
	.byte	W02
	.byte		N13   , En6 
	.byte	W05
	.byte		N11   , Cn5 
	.byte	W11
	.byte		N36   , Dn6 
	.byte	W08
@ 034   ----------------------------------------
	.byte	W44
	.byte		N60   , Gs2 , v080
	.byte	W17
	.byte		N02   , Gs4 , v076
	.byte	W32
	.byte	W03
@ 035   ----------------------------------------
	.byte	W05
	.byte		N03   , As4 , v080
	.byte	W07
	.byte		N02   , Cn4 , v076
	.byte	W40
	.byte	W01
	.byte		N08   , Dn5 , v092
	.byte	W06
	.byte		N10   , Dn4 
	.byte	W15
	.byte		N02   , Dn6 , v080
	.byte	W08
	.byte		N03   , Ds5 , v076
	.byte	W14
@ 036   ----------------------------------------
	.byte	W24
	.byte		N02   , Ds4 
	.byte	W03
	.byte		N64   , Gn3 , v092
	.byte	W11
	.byte		N03   , Dn6 , v076
	.byte	W13
	.byte		N02   , Dn6 , v080
	.byte	W15
	.byte		N07   , Cn4 , v084
	.byte	W30
@ 037   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N42   , An2 , v088
	.byte	W36
	.byte	W01
	.byte		N05   , Cs6 , v084
	.byte	W12
@ 038   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N03   , Cn6 , v088
	.byte	W08
	.byte		N09   , Cn4 , v080
	.byte	W01
	.byte		N23   , Bn2 , v088
	.byte	W21
	.byte		N02   , Gn3 , v048
	.byte	W16
	.byte		N05   , Dn6 , v092
	.byte	W16
@ 039   ----------------------------------------
	.byte	W68
	.byte		N12   , Dn5 , v056
	.byte	W28
@ 040   ----------------------------------------
	.byte		N08   , Cn4 , v092
	.byte	W06
	.byte		N13   , Cn5 , v088
	.byte	W68
	.byte	W03
	.byte		N02   , Cn6 , v080
	.byte	W08
	.byte		N22   
	.byte	W11
@ 041   ----------------------------------------
	.byte	W10
	.byte		N15   , Ds3 , v068
	.byte	W24
	.byte	W02
	.byte		N30   , Ds3 , v056
	.byte	W42
	.byte		N20   , As3 , v052
	.byte	W18
@ 042   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		TIE   , Cn1 , v072
	.byte	W10
	.byte		N96   , Ds3 , v068
	.byte	W48
	.byte	W02
	.byte		N02   , Gn2 , v016
	.byte	W01
@ 043   ----------------------------------------
	.byte	W11
	.byte		N32   , Gn2 , v040
	.byte	W32
	.byte	W02
	.byte		EOT   , Cn1 
	.byte	W01
	.byte		N03   , Ds5 
	.byte	W03
	.byte		N12   , Gn4 , v060
	.byte	W06
	.byte		TIE   , Cn1 , v064
	.byte	W40
	.byte	W01
@ 044   ----------------------------------------
	.byte	W22
	.byte		N08   , Fs6 , v056
	.byte	W36
	.byte	W03
	.byte		EOT   , Cn1 
	.byte	W05
	.byte		N02   , Dn5 , v036
	.byte	W04
	.byte		N04   , Ds3 , v052
	.byte	W24
	.byte	W02
@ 045   ----------------------------------------
	.byte	W18
	.byte		N15   , Cn6 , v036
	.byte	W52
	.byte		N13   , Cn6 , v048
	.byte	W18
	.byte		N44   , Cn3 , v012
	.byte	W08
@ 046   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte	FINE

@**************** Track 5 (Midi-Chn.3) ****************@

mus_littleroot_test_5:
	.byte		VOL   , 127*mus_littleroot_test_mvl/mxv
	.byte	KEYSH , mus_littleroot_test_key+0
@ 000   ----------------------------------------
	.byte	W28
	.byte		VOICE , 0
	.byte		N21   , Cn4 , v060
	.byte	W24
	.byte	W01
	.byte		N03   , Gn3 , v052
	.byte	W07
	.byte		N02   , Cn3 , v044
	.byte	W10
	.byte		N07   , Gn3 , v056
	.byte	W07
	.byte		N02   , Cn2 , v028
	.byte	W06
	.byte		N56   , Cn3 , v060
	.byte	W13
@ 001   ----------------------------------------
	.byte	W18
	.byte		N04   , Gn3 , v040
	.byte	W17
	.byte		N13   , Fn3 , v060
	.byte	W12
	.byte		N02   , Cn4 , v024
	.byte	W08
	.byte		TIE   , Cn1 , v068
	.byte	W05
	.byte		N04   , As3 , v052
	.byte	W06
	.byte		N23   , Ds3 , v064
	.byte	W30
@ 002   ----------------------------------------
	.byte	W64
	.byte		N05   , As5 , v048
	.byte	W02
	.byte		EOT   , Cn1 
	.byte	W07
	.byte		N66   , Gs2 , v076
	.byte	W18
	.byte		N10   , Fn2 , v072
	.byte	W05
@ 003   ----------------------------------------
	.byte	W12
	.byte		N06   
	.byte	W32
	.byte		N12   , Gs3 , v052
	.byte	W13
	.byte		N13   , Fn3 , v068
	.byte	W23
	.byte		N04   , Fn3 , v048
	.byte	W08
	.byte		N03   , Fn2 , v068
	.byte	W08
@ 004   ----------------------------------------
	.byte		N10   , En3 , v072
	.byte	W24
	.byte	W02
	.byte		N02   , Fn3 , v040
	.byte	W68
	.byte	W02
@ 005   ----------------------------------------
	.byte	W54
	.byte		N03   , Dn3 , v056
	.byte	W24
	.byte	W01
	.byte		N04   , Bn5 , v040
	.byte	W17
@ 006   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N02   , An2 , v048
	.byte	W02
	.byte		N40   , Dn4 , v072
	.byte	W24
	.byte	W01
	.byte		N03   , Fs3 , v048
	.byte	W06
	.byte		N12   , Gs3 , v068
	.byte	W11
	.byte		N04   , Fs6 
	.byte	W24
	.byte	W03
@ 007   ----------------------------------------
	.byte	W12
	.byte		N23   , Bn2 , v064
	.byte	W10
	.byte		N03   , Fs3 , v044
	.byte	W28
	.byte		N19   , Cn4 , v064
	.byte	W21
	.byte		N88   , Cn3 , v068
	.byte	W22
	.byte		N07   , Ds4 , v040
	.byte	W03
@ 008   ----------------------------------------
	.byte	W23
	.byte		N48   , Gn3 , v056
	.byte	W13
	.byte		N09   , Ds4 , v028
	.byte	W12
	.byte		N13   , Ds4 , v052
	.byte	W19
	.byte		N03   , Dn5 , v028
	.byte	W04
	.byte		N02   , Fs6 , v040
	.byte	W24
	.byte	W01
@ 009   ----------------------------------------
	.byte	W84
	.byte	W01
	.byte		N03   , Dn5 , v060
	.byte	W07
	.byte		TIE   , Cn1 , v076
	.byte	W04
@ 010   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		N10   , Gn4 
	.byte	W20
	.byte		N15   , Bn4 , v072
	.byte	W32
	.byte	W01
@ 011   ----------------------------------------
	.byte	W08
	.byte		EOT   , Cn1 
	.byte		N02   , Fn5 , v040
	.byte	W02
	.byte		N05   , Bn2 , v080
	.byte	W18
	.byte		N04   , Bn2 , v052
	.byte	W06
	.byte		N02   , Bn2 , v060
	.byte	W03
	.byte		N01   , Bn2 , v056
	.byte	W05
	.byte		N80   , En3 , v080
	.byte	W04
	.byte		N07   , Gn3 , v076
	.byte	W03
	.byte		N10   , En2 , v072
	.byte	W17
	.byte		N12   , Fn5 , v076
	.byte	W30
@ 012   ----------------------------------------
	.byte	W30
	.byte		N42   , Gs2 , v080
	.byte	W30
	.byte		N02   , Fn3 , v040
	.byte	W11
	.byte		N04   , As4 , v068
	.byte	W05
	.byte		        Fn6 , v052
	.byte	W02
	.byte		N15   , Dn6 , v068
	.byte	W10
	.byte		N42   , Fn3 , v072
	.byte	W08
@ 013   ----------------------------------------
	.byte	W36
	.byte	W02
	.byte		N07   , Fn5 , v080
	.byte	W12
	.byte		N08   , En6 , v072
	.byte	W09
	.byte		TIE   , Cn3 , v088
	.byte	W02
	.byte		N24   , En6 , v080
	.byte	W32
	.byte	W03
@ 014   ----------------------------------------
	.byte	W08
	.byte		N15   , An5 , v072
	.byte	W21
	.byte		N02   , Ds6 , v068
	.byte	W18
	.byte		N07   , Ds6 , v076
	.byte	W06
	.byte		N03   , Fn5 , v084
	.byte	W10
	.byte		EOT   , Cn3 
	.byte	W32
	.byte	W01
@ 015   ----------------------------------------
	.byte	W11
	.byte		N03   , Cn6 , v072
	.byte	W09
	.byte		N21   , Dn4 , v088
	.byte	W03
	.byte		N02   , Dn6 , v076
	.byte	W22
	.byte		N24   , Gn6 , v068
	.byte	W32
	.byte	W01
	.byte		N03   , Ds4 , v016
	.byte	W12
	.byte		N19   , Dn5 , v084
	.byte	W06
@ 016   ----------------------------------------
	.byte	W12
	.byte		N05   , Dn6 
	.byte	W07
	.byte		N02   , An4 , v060
	.byte	W02
	.byte		N12   , An4 , v084
	.byte	W13
	.byte		N42   , Bn2 , v076
	.byte		N03   , Fs5 , v068
	.byte	W14
	.byte		N04   , Ds6 , v076
	.byte	W05
	.byte		N09   , Ds6 , v068
	.byte	W24
	.byte	W01
	.byte		N01   , An2 
	.byte	W17
	.byte		N08   , Ds4 , v072
	.byte	W01
@ 017   ----------------------------------------
	.byte	W12
	.byte		N03   , An5 , v076
	.byte	W02
	.byte		N20   , Ds3 , v080
	.byte	W16
	.byte		N23   , Dn4 , v076
	.byte	W52
	.byte		N03   , An5 , v060
	.byte	W04
	.byte		N15   , Dn5 , v068
	.byte	W10
@ 018   ----------------------------------------
	.byte	W11
	.byte		N12   , Dn5 , v056
	.byte	W09
	.byte		N03   , Gn3 , v044
	.byte	W24
	.byte		N13   , Cn5 , v088
	.byte	W32
	.byte	W01
	.byte		N06   , Cn5 , v084
	.byte	W14
	.byte		N48   , Cn3 
	.byte	W05
@ 019   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N54   , Gs3 , v064
	.byte	W10
	.byte		N42   , Ds2 , v056
	.byte	W06
	.byte		N02   , Ds4 , v020
	.byte	W30
	.byte	W01
@ 020   ----------------------------------------
	.byte	W12
	.byte		        Dn6 , v036
	.byte	W54
	.byte	W01
	.byte		N12   , Ds3 , v068
	.byte	W28
	.byte	W01
@ 021   ----------------------------------------
	.byte	W08
	.byte		N02   , Cn4 , v020
	.byte	W03
	.byte		N68   , Cn3 , v056
	.byte	W11
	.byte		N03   , Cn4 , v016
	.byte	W06
	.byte		N06   , Gn3 , v012
	.byte	W56
	.byte	W03
	.byte		N12   , Gn4 , v060
	.byte	W03
	.byte		N22   , Cn4 
	.byte	W06
@ 022   ----------------------------------------
	.byte	W22
	.byte		N24   , Cn3 , v056
	.byte	W28
	.byte		N52   , Cn3 , v060
	.byte	W42
	.byte	W01
	.byte		N13   , Fn3 
	.byte	W03
@ 023   ----------------------------------------
	.byte	W16
	.byte		TIE   , Cn1 , v068
	.byte	W06
	.byte		N03   , As3 , v052
	.byte	W06
	.byte		N23   , Ds3 , v064
	.byte	W68
@ 024   ----------------------------------------
	.byte	W24
	.byte	W02
	.byte		N05   , As5 , v048
	.byte	W01
	.byte		EOT   , Cn1 
	.byte	W08
	.byte		N66   , Gs2 , v076
	.byte	W16
	.byte		N10   , Fn2 , v072
	.byte	W19
	.byte		N06   
	.byte	W24
	.byte	W02
@ 025   ----------------------------------------
	.byte	W19
	.byte		N13   , Fn3 , v068
	.byte	W30
	.byte		N03   , Fn2 
	.byte	W08
	.byte		N11   , En3 , v072
	.byte	W36
	.byte	W03
@ 026   ----------------------------------------
	.byte	W72
	.byte	W02
	.byte		N03   , Bn3 , v052
	.byte	W22
@ 027   ----------------------------------------
	.byte	W16
	.byte		        Dn3 , v056
	.byte	W24
	.byte	W01
	.byte		N04   , Bn5 , v040
	.byte	W40
	.byte	W01
	.byte		N03   , Gn2 , v064
	.byte	W02
	.byte		N40   , Dn4 , v072
	.byte	W12
@ 028   ----------------------------------------
	.byte	W02
	.byte		N05   , Fs3 , v044
	.byte	W12
	.byte		N03   , Fs3 , v048
	.byte	W06
	.byte		N12   , Gs3 , v068
	.byte	W11
	.byte		N04   , Fs6 
	.byte	W36
	.byte	W03
	.byte		N23   , Bn2 , v064
	.byte	W10
	.byte		N02   , Fs3 , v044
	.byte	W16
@ 029   ----------------------------------------
	.byte	W08
	.byte		N24   , Ds4 , v064
	.byte	W14
	.byte		N03   , Cn3 
	.byte	W12
	.byte		N88   , Cn3 , v068
	.byte	W20
	.byte		N07   , Ds4 , v040
	.byte	W24
	.byte	W03
	.byte		N48   , Gn3 , v056
	.byte	W13
	.byte		N08   , Ds4 , v028
	.byte	W02
@ 030   ----------------------------------------
	.byte	W10
	.byte		N09   , Ds4 , v052
	.byte	W10
	.byte		N03   , Ds4 , v020
	.byte	W09
	.byte		N02   , Dn5 , v024
	.byte	W66
	.byte	W01
@ 031   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N03   , Dn5 , v060
	.byte	W07
	.byte		TIE   , Cn1 , v076
	.byte	W23
	.byte		N21   , En3 , v072
	.byte	W19
@ 032   ----------------------------------------
	.byte	W04
	.byte		N10   , Gn4 , v076
	.byte	W21
	.byte		N14   , Bn4 , v072
	.byte	W40
	.byte	W01
	.byte		EOT   , Cn1 
	.byte	W02
	.byte		N05   , Bn2 , v080
	.byte	W18
	.byte		N04   , Bn2 , v052
	.byte	W05
	.byte		N05   , Bn2 , v056
	.byte	W05
@ 033   ----------------------------------------
	.byte	W04
	.byte		N80   , En3 , v080
	.byte	W04
	.byte		N07   , Gn3 , v072
	.byte	W03
	.byte		N10   , En2 
	.byte	W16
	.byte		N12   , Fn5 , v076
	.byte	W60
	.byte	W01
	.byte		N42   , Gs2 , v080
	.byte	W08
@ 034   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N04   , As4 , v072
	.byte	W05
	.byte		        Fn6 , v052
	.byte	W02
	.byte		N15   , Dn6 , v072
	.byte	W09
	.byte		N42   , Fn3 
	.byte	W44
	.byte	W03
@ 035   ----------------------------------------
	.byte		N07   , Fn5 , v080
	.byte	W10
	.byte		N03   , Gn5 , v068
	.byte	W02
	.byte		N08   , En6 , v072
	.byte	W03
	.byte		N14   , Cn5 , v080
	.byte	W05
	.byte		TIE   , Cn3 , v088
	.byte	W03
	.byte		N24   , En6 , v080
	.byte	W42
	.byte	W01
	.byte		N15   , An5 , v072
	.byte	W20
	.byte		N02   , Ds6 , v068
	.byte	W10
@ 036   ----------------------------------------
	.byte	W09
	.byte		N07   , Ds6 , v076
	.byte	W06
	.byte		N03   , Fn5 , v084
	.byte	W09
	.byte		EOT   , Cn3 
	.byte	W06
	.byte		N28   , Cn3 , v068
	.byte	W36
	.byte	W02
	.byte		N03   , Cn6 , v072
	.byte	W10
	.byte		N21   , Dn4 , v088
	.byte	W18
@ 037   ----------------------------------------
	.byte	W07
	.byte		N24   , Gn6 , v068
	.byte	W44
	.byte		N18   , Dn5 , v084
	.byte	W18
	.byte		N05   , Dn6 
	.byte	W09
	.byte		N02   , Cs6 , v052
	.byte	W01
	.byte		N12   , An4 , v080
	.byte	W13
	.byte		N42   , Bn2 , v076
	.byte		N03   , Fs5 , v068
	.byte	W04
@ 038   ----------------------------------------
	.byte	W10
	.byte		N13   , Ds6 , v076
	.byte	W10
	.byte		N03   , Ds3 , v060
	.byte	W19
	.byte		N02   , An2 , v064
	.byte	W18
	.byte		N08   , Ds4 , v072
	.byte	W13
	.byte		N03   , An5 , v076
	.byte	W02
	.byte		N20   , Ds3 , v080
	.byte	W15
	.byte		N24   , Dn4 , v076
	.byte	W09
@ 039   ----------------------------------------
	.byte	W44
	.byte		N02   , An5 , v060
	.byte	W04
	.byte		N14   , Dn5 , v068
	.byte	W30
	.byte		N03   , Gn3 , v040
	.byte	W08
	.byte		TIE   , As2 , v088
	.byte	W10
@ 040   ----------------------------------------
	.byte	W36
	.byte	W03
	.byte		N06   , Cn5 , v084
	.byte	W13
	.byte		N48   , Cn3 
	.byte	W44
@ 041   ----------------------------------------
	.byte	W08
	.byte		EOT   , As2 
	.byte	W03
	.byte		N44   , Gs3 , v064
	.byte	W10
	.byte		N42   , Ds2 , v056
	.byte	W05
	.byte		N02   , Ds4 , v020
	.byte	W32
	.byte	W01
	.byte		N05   , Gs3 , v036
	.byte	W09
	.byte		N17   , Dn4 , v052
	.byte	W02
	.byte		N02   , Dn6 , v036
	.byte	W24
	.byte	W02
@ 042   ----------------------------------------
	.byte	W28
	.byte		N11   , Ds3 , v068
	.byte	W36
	.byte	W02
	.byte		N02   , Cn4 , v020
	.byte	W02
	.byte		N68   , Cn3 , v056
	.byte	W12
	.byte		N03   , Cn4 , v016
	.byte	W16
@ 043   ----------------------------------------
	.byte	W52
	.byte		N22   , Cn4 , v056
	.byte	W28
	.byte		N24   , Cn3 
	.byte	W16
@ 044   ----------------------------------------
	.byte	W17
	.byte		N09   , Gn3 , v052
	.byte	W36
	.byte	W01
	.byte		N14   , Fn3 , v044
	.byte	W20
	.byte		TIE   , Cn1 , v052
	.byte	W06
	.byte		N03   , As3 , v032
	.byte	W03
	.byte		N24   , Ds3 , v052
	.byte	W13
@ 045   ----------------------------------------
	.byte	W13
	.byte		N06   , Gn3 , v028
	.byte	W28
	.byte		N42   , Dn4 , v044
	.byte	W44
	.byte		EOT   , Cn1 
	.byte	FINE

@**************** Track 6 (Midi-Chn.3) ****************@

mus_littleroot_test_6:
	.byte		VOL   , 127*mus_littleroot_test_mvl/mxv
	.byte	KEYSH , mus_littleroot_test_key+0
@ 000   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N03   , Ds4 , v048
	.byte	W07
	.byte		        Dn5 , v040
	.byte	W08
	.byte		N04   , Gn4 
	.byte	W08
	.byte		N03   , Gn4 , v028
	.byte	W05
	.byte		N02   , Cn4 
	.byte	W02
	.byte		N17   , Cn3 , v052
	.byte	W24
	.byte		N02   , Gn3 , v020
	.byte	W06
	.byte		N16   , Gn3 , v052
	.byte	W03
@ 001   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		N13   , Fn5 , v056
	.byte	W15
	.byte		N14   , Gn5 , v068
	.byte	W17
	.byte		N04   , Dn5 , v048
	.byte	W12
	.byte		N01   , As3 , v040
	.byte	W06
	.byte		N09   , Dn5 
	.byte	W11
	.byte		N24   , Ds3 , v056
	.byte	W04
@ 002   ----------------------------------------
	.byte	W20
	.byte		N44   , Cn3 , v064
	.byte	W54
	.byte		N07   , Fn3 , v056
	.byte	W22
@ 003   ----------------------------------------
	.byte	W15
	.byte		N30   , Fn3 , v064
	.byte	W24
	.byte	W02
	.byte		N32   , Gs5 , v056
	.byte	W30
	.byte		N02   , Cn5 , v040
	.byte	W24
	.byte	W01
@ 004   ----------------------------------------
	.byte	W02
	.byte		N42   , Cn2 , v044
	.byte	W92
	.byte	W02
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N06   , Gs3 , v064
	.byte	W12
	.byte		N04   , Fs3 , v044
	.byte	W03
	.byte		N01   , Fs5 , v024
	.byte	W12
	.byte		N52   , Fs3 , v064
	.byte	W40
@ 007   ----------------------------------------
	.byte	W02
	.byte		N02   , Fs6 , v036
	.byte	W03
	.byte		N09   , Bn3 , v052
	.byte	W42
	.byte		N24   , Ds4 , v064
	.byte	W14
	.byte		N03   , Cn3 
	.byte	W05
	.byte		N05   , Cn3 , v060
	.byte	W30
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		N01   , En5 , v036
	.byte	W01
	.byte		N19   , As3 , v072
	.byte	W06
@ 010   ----------------------------------------
	.byte	W16
	.byte		N03   , En3 , v068
	.byte	W04
	.byte		N21   , En3 , v072
	.byte	W03
	.byte		N78   , As2 
	.byte	W13
	.byte		N06   , Gn4 , v068
	.byte	W24
	.byte	W02
	.byte		N24   , En5 , v064
	.byte	W21
	.byte		N05   , Bn4 , v056
	.byte	W13
@ 011   ----------------------------------------
	.byte	W14
	.byte		N09   , En3 , v080
	.byte	W02
	.byte		N04   , Cn4 , v060
	.byte	W07
	.byte		N02   , Gn5 , v040
	.byte	W05
	.byte		        Gn5 , v048
	.byte	W05
	.byte		        Bn4 
	.byte	W09
	.byte		N10   , Bn5 , v028
	.byte	W17
	.byte		N06   , Dn6 , v060
	.byte	W01
	.byte		N36   , Gn3 , v072
	.byte	W36
@ 012   ----------------------------------------
	.byte	W06
	.byte		N20   , Cn3 , v080
	.byte	W08
	.byte		N03   , Cn5 , v076
	.byte	W11
	.byte		N02   , Cn6 , v072
	.byte	W07
	.byte		N06   , Cn5 , v068
	.byte	W05
	.byte		N02   , As5 , v056
	.byte	W03
	.byte		N03   , As4 , v072
	.byte	W06
	.byte		N04   , Fn5 , v060
	.byte	W08
	.byte		N03   , Fn6 
	.byte	W05
	.byte		N02   , Fn2 , v036
	.byte	W03
	.byte		N06   , Fn6 , v040
	.byte	W08
	.byte		N05   , Fn2 , v064
	.byte	W24
	.byte	W01
	.byte		N03   , As4 , v024
	.byte	W01
@ 013   ----------------------------------------
	.byte	W18
	.byte		N04   , Cn6 , v064
	.byte	W05
	.byte		N03   , Ds6 , v052
	.byte	W11
	.byte		N04   , As4 , v076
	.byte	W14
	.byte		N03   , Gn5 , v068
	.byte	W16
	.byte		N36   , En3 , v076
	.byte	W32
@ 014   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N24   , Gn6 , v068
	.byte	W15
	.byte		N02   , Ds6 
	.byte	W11
	.byte		N14   , En3 , v060
	.byte	W17
	.byte		N32   , Cn3 , v068
	.byte	W03
	.byte		N02   , Dn6 , v060
	.byte	W02
	.byte		N08   , Gn6 , v064
	.byte	W23
@ 015   ----------------------------------------
	.byte	W14
	.byte		N28   , An5 , v076
	.byte	W54
	.byte		N15   , Gn3 , v056
	.byte	W05
	.byte		N02   , Ds4 , v048
	.byte	W01
	.byte		        Ds5 , v020
	.byte	W15
	.byte		N04   , Dn6 , v076
	.byte	W07
@ 016   ----------------------------------------
	.byte	W08
	.byte		N09   , An5 , v072
	.byte	W11
	.byte		N02   , Fs3 , v028
	.byte		N13   , En5 , v076
	.byte	W17
	.byte		N08   , Ds4 , v060
	.byte	W01
	.byte		N01   , Gn3 , v056
	.byte	W04
	.byte		N24   , Gn3 , v060
	.byte	W28
	.byte	W01
	.byte		N19   , Gn5 , v068
	.byte	W13
	.byte		N20   , Ds3 
	.byte	W05
	.byte		N03   , Gn3 , v036
	.byte	W05
	.byte		N02   , Gn5 , v056
	.byte	W03
@ 017   ----------------------------------------
	.byte	W11
	.byte		N05   , Cn3 , v068
	.byte	W06
	.byte		N06   , Cn3 , v076
	.byte	W08
	.byte		N44   
	.byte	W13
	.byte		N84   , Ds3 , v068
	.byte	W24
	.byte	W03
	.byte		N07   , An5 , v044
	.byte	W19
	.byte		N22   , Gn3 
	.byte	W12
@ 018   ----------------------------------------
	.byte	W20
	.byte		N07   , An5 , v036
	.byte	W09
	.byte		TIE   , As2 , v088
	.byte	W03
	.byte		N02   , Cn4 , v080
	.byte	W40
	.byte		N44   , En6 , v076
	.byte	W12
	.byte		N03   , Gn6 , v036
	.byte	W12
@ 019   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		N04   , Gn3 , v044
	.byte	W04
	.byte		EOT   , As2 
	.byte	W03
	.byte		N11   , Cn5 , v052
	.byte	W44
	.byte	W02
@ 020   ----------------------------------------
	.byte	W64
	.byte	W01
	.byte		N04   , Ds5 , v040
	.byte	W02
	.byte		N11   , Gn4 , v060
	.byte	W19
	.byte		        Gn4 , v032
	.byte	W10
@ 021   ----------------------------------------
	.byte	W14
	.byte		N05   , Cn4 , v012
	.byte	W76
	.byte	W01
	.byte		N03   , Ds4 , v044
	.byte	W05
@ 022   ----------------------------------------
	.byte	W08
	.byte		N13   , Gn4 , v040
	.byte		N04   , Dn5 , v036
	.byte	W14
	.byte		        Dn5 , v016
	.byte	W20
	.byte		N03   , Gn3 , v032
	.byte	W14
	.byte		N09   , Gn3 , v056
	.byte	W32
	.byte	W01
	.byte		N13   , Fn5 
	.byte	W07
@ 023   ----------------------------------------
	.byte	W07
	.byte		N14   , Gn5 , v064
	.byte	W04
	.byte		N03   , As4 , v032
	.byte	W13
	.byte		N04   , Dn5 , v048
	.byte	W08
	.byte		N07   , Dn5 , v032
	.byte	W08
	.byte		N02   , Gn4 , v012
	.byte	W03
	.byte		N09   , Dn5 , v040
	.byte	W09
	.byte		N05   , Gn3 , v056
	.byte	W30
	.byte	W01
	.byte		N36   , As2 , v060
	.byte	W13
@ 024   ----------------------------------------
	.byte	W32
	.byte	W03
	.byte		N07   , Fn3 
	.byte	W36
	.byte	W02
	.byte		N32   , Fn3 , v064
	.byte	W23
@ 025   ----------------------------------------
	.byte	W02
	.byte		N30   , Gs5 , v056
	.byte	W01
	.byte		N14   , Gs3 , v052
	.byte	W30
	.byte		N02   , Cn5 , v040
	.byte	W30
	.byte		N40   , Cn2 , v044
	.byte	W32
	.byte	W01
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		N02   , An2 , v048
	.byte	W04
	.byte		N06   , Gs3 , v064
	.byte	W08
	.byte		N02   , Gs3 , v048
	.byte	W01
@ 028   ----------------------------------------
	.byte	W04
	.byte		        Dn6 , v032
	.byte	W14
	.byte		N52   , Fs3 , v064
	.byte	W40
	.byte	W01
	.byte		N02   , Fs6 , v036
	.byte	W04
	.byte		N09   , Bn3 , v052
	.byte	W32
	.byte	W01
@ 029   ----------------------------------------
	.byte	W11
	.byte		N19   , Cn4 , v064
	.byte	W17
	.byte		N05   , Cn3 , v060
	.byte	W68
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N19   , As3 , v072
	.byte	W22
	.byte		N88   , As2 
	.byte	W21
	.byte		N05   , Gn4 , v068
	.byte	W02
@ 032   ----------------------------------------
	.byte	W24
	.byte		N24   , En5 , v064
	.byte	W20
	.byte		N05   , Bn4 , v056
	.byte	W21
	.byte		N02   , Cn5 , v048
	.byte	W01
	.byte		N01   , Fn5 , v040
	.byte	W06
	.byte		N09   , En3 , v076
	.byte	W02
	.byte		N03   , Cn4 , v060
	.byte	W12
	.byte		        Gn5 , v048
	.byte	W05
	.byte		N02   , Bn4 
	.byte	W05
@ 033   ----------------------------------------
	.byte	W04
	.byte		N09   , Bn5 , v028
	.byte	W16
	.byte		N06   , Dn6 , v060
	.byte	W02
	.byte		N32   , Gn3 , v072
	.byte	W42
	.byte		N20   , Cn3 , v080
	.byte	W24
	.byte	W02
	.byte		N06   , Cn5 , v068
	.byte	W05
	.byte		N02   , As5 , v056
	.byte	W01
@ 034   ----------------------------------------
	.byte	W02
	.byte		N03   , As4 , v076
	.byte	W05
	.byte		N04   , Fn5 , v060
	.byte	W08
	.byte		N03   , Fn6 
	.byte	W09
	.byte		N06   , Fn6 , v040
	.byte	W08
	.byte		N04   , Fn2 , v064
	.byte	W24
	.byte		N03   , As4 , v028
	.byte	W19
	.byte		N04   , Cn6 , v064
	.byte	W05
	.byte		        Ds6 , v052
	.byte	W12
	.byte		N05   , As4 , v076
	.byte	W04
@ 035   ----------------------------------------
	.byte	W11
	.byte		        En3 , v068
	.byte	W14
	.byte		N36   , En3 , v076
	.byte	W56
	.byte	W02
	.byte		N24   , Gn6 , v068
	.byte	W13
@ 036   ----------------------------------------
	.byte	W01
	.byte		N02   , Ds6 
	.byte	W11
	.byte		N13   , En3 , v060
	.byte	W20
	.byte		N02   , Dn6 
	.byte	W03
	.byte		N08   , Gn6 , v064
	.byte	W23
	.byte		N03   , Cn6 
	.byte	W13
	.byte		N28   , An5 , v076
	.byte	W24
	.byte	W01
@ 037   ----------------------------------------
	.byte	W30
	.byte		N15   , Gn3 , v056
	.byte	W05
	.byte		N02   , Ds4 , v048
	.byte	W01
	.byte		        Ds5 , v020
	.byte	W04
	.byte		N03   , Ds4 , v016
	.byte	W06
	.byte		N05   , Fs5 , v072
	.byte	W04
	.byte		        Dn6 , v076
	.byte	W15
	.byte		N10   , An5 , v072
	.byte	W12
	.byte		N13   , En5 , v080
	.byte	W17
	.byte		N05   , Gn3 , v056
	.byte	W01
	.byte		N08   , Ds4 , v060
	.byte	W01
@ 038   ----------------------------------------
	.byte	W05
	.byte		N12   , Gn3 , v064
	.byte	W14
	.byte		N09   , Gn3 , v052
	.byte	W13
	.byte		N18   , Gn5 , v068
	.byte	W12
	.byte		N20   , Ds3 
	.byte	W24
	.byte	W01
	.byte		N12   , Cn3 , v072
	.byte	W13
	.byte		N48   , Cn3 , v076
	.byte	W13
	.byte		N84   , Ds3 , v072
	.byte	W01
@ 039   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N07   , An5 , v044
	.byte	W20
	.byte		N21   , Gn3 
	.byte	W30
	.byte		N07   , An5 , v036
	.byte	W12
	.byte		N02   , Cn4 , v080
	.byte	W07
@ 040   ----------------------------------------
	.byte	W02
	.byte		N10   , Gn5 , v084
	.byte	W32
	.byte		N44   , En6 , v076
	.byte	W12
	.byte		N03   , Gn6 , v036
	.byte	W44
	.byte		N04   , Dn5 , v032
	.byte	W06
@ 041   ----------------------------------------
	.byte	W04
	.byte		N05   , Gn3 , v044
	.byte	W08
	.byte		N11   , Cn5 , v052
	.byte	W84
@ 042   ----------------------------------------
	.byte	W24
	.byte	W03
	.byte		N04   , Ds5 , v040
	.byte	W02
	.byte		N11   , Gn4 , v060
	.byte	W20
	.byte		N09   , Gn4 , v036
	.byte	W23
	.byte		N05   , Cn4 , v012
	.byte	W24
@ 043   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N03   , Ds4 , v044
	.byte	W13
	.byte		N13   , Gn4 , v036
	.byte		N04   , Dn5 , v032
	.byte	W30
@ 044   ----------------------------------------
	.byte	W03
	.byte		N03   , Gn3 , v028
	.byte	W02
	.byte		N10   , Cn4 , v020
	.byte	W07
	.byte		N52   , Cn3 , v048
	.byte	W36
	.byte	W02
	.byte		N13   , Fn5 , v044
	.byte	W15
	.byte		        Gn5 , v048
	.byte	W04
	.byte		N02   , As4 , v020
	.byte	W13
	.byte		N04   , Dn5 , v028
	.byte	W14
@ 045   ----------------------------------------
	.byte	W04
	.byte		N09   , Dn5 , v016
	.byte	W07
	.byte		N06   , Cn2 
	.byte	W04
	.byte		N24   , Ds3 , v028
	.byte	W28
	.byte		N40   , En3 , v040
	.byte	W42
	.byte	FINE

@**************** Track 7 (Midi-Chn.4) ****************@

mus_littleroot_test_7:
	.byte		VOL   , 127*mus_littleroot_test_mvl/mxv
	.byte	KEYSH , mus_littleroot_test_key+0
@ 000   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		VOICE , 0
	.byte		N02   , As4 , v024
	.byte	W42
	.byte		N12   , Cn4 , v016
	.byte	W21
@ 001   ----------------------------------------
	.byte	W32
	.byte	W01
	.byte		N08   , Gn3 , v052
	.byte	W19
	.byte		        Dn5 , v048
	.byte	W19
	.byte		N07   , Dn5 , v028
	.byte	W15
	.byte		N02   , Fn4 , v016
	.byte	W04
	.byte		N12   , Gn3 , v056
	.byte	W06
@ 002   ----------------------------------------
	.byte	W24
	.byte		N36   , As2 , v064
	.byte	W48
	.byte		N03   , Cn5 , v048
	.byte	W24
@ 003   ----------------------------------------
	.byte	W56
	.byte	W01
	.byte		N14   , Fn1 , v052
	.byte	W04
	.byte		N01   , Gs3 , v028
	.byte	W09
	.byte		N05   , As5 , v048
	.byte	W24
	.byte	W02
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W30
	.byte		N02   , Fs5 , v040
	.byte	W09
	.byte		N03   , Fs5 , v028
	.byte	W08
	.byte		N12   , Dn2 
	.byte	W23
	.byte		N28   , Gs4 , v060
	.byte	W08
	.byte		N20   , Fn2 , v028
	.byte	W06
	.byte		N13   , Bn1 , v016
	.byte	W12
@ 007   ----------------------------------------
	.byte	W48
	.byte	W01
	.byte		N03   , Gs3 , v040
	.byte	W13
	.byte		N42   , Gn2 , v048
	.byte	W32
	.byte	W02
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W84
	.byte	W02
	.byte		N22   , En3 , v068
	.byte	W10
@ 010   ----------------------------------------
	.byte	W16
	.byte		N02   , Dn6 
	.byte	W03
	.byte		N12   , Dn5 
	.byte	W52
	.byte	W01
	.byte		N02   , En4 , v048
	.byte	W07
	.byte		N06   , Dn6 
	.byte	W08
	.byte		N04   , En4 , v052
	.byte	W02
	.byte		N02   , Bn4 , v044
	.byte	W07
@ 011   ----------------------------------------
	.byte		N08   , En3 , v072
	.byte	W15
	.byte		N03   , Bn4 , v048
	.byte	W36
	.byte	W01
	.byte		N04   , Dn6 , v056
	.byte	W16
	.byte		N12   , Dn6 , v072
	.byte	W28
@ 012   ----------------------------------------
	.byte	W12
	.byte		N05   , As3 , v060
	.byte	W12
	.byte		N04   , Cn4 , v068
	.byte	W07
	.byte		N02   , Gn5 , v052
	.byte	W01
	.byte		N03   , Fn6 , v064
	.byte	W06
	.byte		N06   , Fn3 , v056
	.byte	W11
	.byte		N07   , As5 , v044
	.byte	W17
	.byte		N11   , Fn5 , v064
	.byte	W01
	.byte		N02   , Cn5 , v032
	.byte	W08
	.byte		N07   , Fn3 , v048
	.byte	W09
	.byte		N22   , Cn3 , v052
	.byte	W12
@ 013   ----------------------------------------
	.byte	W04
	.byte		N02   , Fn2 , v036
	.byte	W03
	.byte		N12   , Gs5 , v056
	.byte	W15
	.byte		N01   , Fn2 , v048
	.byte	W07
	.byte		N03   , Cn6 , v056
	.byte	W01
	.byte		N11   , Fn2 , v072
	.byte	W15
	.byte		N02   , Cn3 , v052
	.byte	W03
	.byte		N05   , En3 , v068
	.byte	W15
	.byte		N07   , Gn5 , v072
	.byte	W24
	.byte	W03
	.byte		N13   , An5 
	.byte	W06
@ 014   ----------------------------------------
	.byte	W12
	.byte		N02   , Fs3 , v040
	.byte	W06
	.byte		        En3 , v044
	.byte	W07
	.byte		N21   , En3 , v064
	.byte	W32
	.byte	W01
	.byte		N03   , Fn6 , v052
	.byte	W03
	.byte		N02   , Fn5 , v044
	.byte	W08
	.byte		N10   , Ds4 , v060
	.byte	W14
	.byte		N19   , Ds2 , v056
	.byte	W01
	.byte		N03   , Cn4 , v048
	.byte	W07
	.byte		N84   , Ds3 , v072
	.byte	W05
@ 015   ----------------------------------------
	.byte	W06
	.byte		N07   , En6 , v068
	.byte	W42
	.byte		N02   , Ds6 
	.byte	W17
	.byte		N06   , As5 , v044
	.byte	W18
	.byte		        Fs5 , v072
	.byte	W10
	.byte		N09   , An5 
	.byte	W03
@ 016   ----------------------------------------
	.byte	W09
	.byte		N03   , Dn4 , v068
	.byte	W05
	.byte		N06   , Dn5 , v064
	.byte	W03
	.byte		N02   , Fs4 , v028
	.byte	W13
	.byte		N01   , Dn3 , v044
	.byte	W04
	.byte		N04   , Gn4 , v052
	.byte	W09
	.byte		        Ds3 , v060
	.byte	W12
	.byte		N02   , Bn4 
	.byte	W03
	.byte		N04   , Ds3 
	.byte	W06
	.byte		N12   , Ds2 , v064
	.byte	W30
	.byte	W01
	.byte		N06   , Gn6 , v052
	.byte	W01
@ 017   ----------------------------------------
	.byte	W24
	.byte		N03   , An5 , v072
	.byte	W16
	.byte		N36   , Gn3 , v060
	.byte	W24
	.byte	W03
	.byte		N11   , Fs6 , v044
	.byte	W08
	.byte		N04   , An6 , v020
	.byte	W11
	.byte		N06   , As3 , v036
	.byte	W09
	.byte		N16   , An5 , v032
	.byte	W01
@ 018   ----------------------------------------
	.byte	W07
	.byte		N02   , As4 , v016
	.byte	W03
	.byte		N06   , Fs6 , v028
	.byte	W03
	.byte		N02   , Gn3 , v020
	.byte	W14
	.byte		        Cn5 , v060
	.byte	W03
	.byte		N18   , Ds3 , v084
	.byte	W24
	.byte		N02   , Gn5 , v056
	.byte	W05
	.byte		N28   , Gn3 , v076
	.byte	W30
	.byte	W01
	.byte		N06   , Gn6 , v036
	.byte	W04
	.byte		N44   , Ds3 , v060
	.byte	W02
@ 019   ----------------------------------------
	.byte	W04
	.byte		N02   , Gn4 , v056
	.byte	W08
	.byte		N03   , Gn5 , v060
	.byte	W09
	.byte		N06   , Gn5 , v048
	.byte	W05
	.byte		N03   , En6 , v032
	.byte	W05
	.byte		N05   , Gn5 
	.byte	W02
	.byte		N04   , Dn5 
	.byte	W60
	.byte	W03
@ 020   ----------------------------------------
	.byte	W72
	.byte		N22   , Cn4 , v060
	.byte	W24
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W42
	.byte	W01
	.byte		N11   , Cn4 , v024
	.byte	W06
	.byte		N01   , Gn3 
	.byte	W40
	.byte	W01
	.byte		N07   , Gn3 , v044
	.byte	W06
@ 023   ----------------------------------------
	.byte	W14
	.byte		        Dn5 , v048
	.byte	W32
	.byte		N03   , Fn4 , v012
	.byte	W04
	.byte		        As4 , v036
	.byte	W04
	.byte		N24   , Ds3 , v056
	.byte	W04
	.byte		N06   , Dn5 , v036
	.byte	W20
	.byte		N44   , Cn3 , v052
	.byte	W18
@ 024   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N03   , Cn5 
	.byte	W60
	.byte	W02
@ 025   ----------------------------------------
	.byte	W18
	.byte		N14   , Fn1 , v048
	.byte	W05
	.byte		N01   , Gs3 , v024
	.byte	W08
	.byte		N05   , As5 , v048
	.byte	W64
	.byte	W01
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W88
	.byte		N02   , Fs5 , v040
	.byte	W08
@ 028   ----------------------------------------
	.byte	W01
	.byte		        Fs5 , v028
	.byte	W07
	.byte		N12   , Dn2 
	.byte	W24
	.byte		N28   , Gs4 , v060
	.byte	W09
	.byte		N18   , Fn2 , v028
	.byte	W05
	.byte		N13   , Bn1 , v016
	.byte	W48
	.byte	W02
@ 029   ----------------------------------------
	.byte	W11
	.byte		N03   , Gs3 , v036
	.byte	W12
	.byte		N42   , Gn2 , v048
	.byte	W72
	.byte	W01
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N22   , En3 , v068
	.byte	W24
	.byte	W02
	.byte		N02   , Dn6 
	.byte	W03
	.byte		N12   , Dn5 
	.byte	W20
@ 032   ----------------------------------------
	.byte	W15
	.byte		N07   , Cn3 , v032
	.byte	W19
	.byte		N02   , En4 , v048
	.byte	W05
	.byte		        Gn4 , v036
	.byte	W01
	.byte		N06   , Dn6 , v048
	.byte	W09
	.byte		N04   , En4 
	.byte	W01
	.byte		N02   , Bn4 , v044
	.byte	W08
	.byte		N09   , En3 , v072
	.byte	W15
	.byte		N02   , Bn4 , v048
	.byte	W23
@ 033   ----------------------------------------
	.byte	W14
	.byte		N04   , Dn6 , v056
	.byte	W15
	.byte		N13   , Dn6 , v072
	.byte	W42
	.byte		N03   , Cn5 , v076
	.byte	W12
	.byte		        Cn6 
	.byte	W06
	.byte		        Fn6 , v064
	.byte	W07
@ 034   ----------------------------------------
	.byte		N05   , Fn3 , v052
	.byte	W11
	.byte		N06   , As5 , v044
	.byte	W08
	.byte		N05   , Fn3 
	.byte	W08
	.byte		N11   , Fn5 , v064
	.byte	W01
	.byte		N02   , Cn5 , v032
	.byte	W09
	.byte		N07   , Fn3 , v048
	.byte	W09
	.byte		N22   , Cn3 , v052
	.byte	W18
	.byte		N13   , Gs5 , v056
	.byte	W12
	.byte		N03   , Fs6 , v040
	.byte	W04
	.byte		N02   , Fn2 , v048
	.byte	W07
	.byte		N03   , Cn6 , v056
	.byte	W01
	.byte		N11   , Fn2 , v072
	.byte	W08
@ 035   ----------------------------------------
	.byte	W15
	.byte		N02   , Gn5 , v056
	.byte	W10
	.byte		N07   , Gn5 , v068
	.byte	W24
	.byte	W03
	.byte		N13   , An5 , v072
	.byte	W18
	.byte		N02   , Fs3 , v040
	.byte	W05
	.byte		N03   , En3 , v044
	.byte	W08
	.byte		N21   , En3 , v064
	.byte	W13
@ 036   ----------------------------------------
	.byte	W19
	.byte		N03   , Fn6 , v048
	.byte	W04
	.byte		N02   , Fn5 , v044
	.byte	W08
	.byte		N10   , Ds4 , v060
	.byte	W14
	.byte		N19   , Ds2 
	.byte	W01
	.byte		N03   , Cn4 , v044
	.byte	W07
	.byte		N84   , Ds3 , v072
	.byte	W10
	.byte		N07   , En6 , v068
	.byte	W32
	.byte	W01
@ 037   ----------------------------------------
	.byte	W10
	.byte		N02   , Ds6 
	.byte	W17
	.byte		N06   , As5 , v044
	.byte	W22
	.byte		N08   , Cs3 , v072
	.byte	W18
	.byte		N03   , Dn4 , v068
	.byte	W04
	.byte		N06   , Dn5 , v064
	.byte	W16
	.byte		N01   , Dn3 , v044
	.byte	W04
	.byte		N04   , Gn4 , v052
	.byte	W05
@ 038   ----------------------------------------
	.byte	W05
	.byte		        Ds3 , v056
	.byte	W11
	.byte		N02   , Bn4 
	.byte	W06
	.byte		N03   , Fs5 , v052
	.byte	W03
	.byte		N11   , Ds2 , v064
	.byte	W12
	.byte		N03   , En6 , v052
	.byte	W18
	.byte		N04   , Gn5 , v056
	.byte	W24
	.byte	W03
	.byte		N03   , An5 , v068
	.byte	W14
@ 039   ----------------------------------------
	.byte	W02
	.byte		N36   , Gn3 , v060
	.byte	W24
	.byte	W03
	.byte		N11   , Fs6 , v044
	.byte	W18
	.byte		N07   , As3 , v036
	.byte	W10
	.byte		N16   , An5 , v032
	.byte	W08
	.byte		N02   , As4 , v020
	.byte	W02
	.byte		N05   , Fs6 , v028
	.byte	W04
	.byte		N02   , Gn3 , v020
	.byte	W13
	.byte		N05   , Gn5 , v068
	.byte	W03
	.byte		N21   , Ds3 , v084
	.byte	W09
@ 040   ----------------------------------------
	.byte	W15
	.byte		N02   , Gn5 , v056
	.byte	W06
	.byte		N28   , Gn3 , v076
	.byte	W32
	.byte	W03
	.byte		N44   , Ds3 , v064
	.byte	W05
	.byte		N02   , Gn4 , v052
	.byte	W08
	.byte		N04   , Gn5 , v060
	.byte	W09
	.byte		N07   , Gn5 , v048
	.byte	W05
	.byte		N03   , En6 , v032
	.byte	W05
	.byte		N05   , Gn5 
	.byte	W08
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W32
	.byte	W02
	.byte		N22   , Cn4 , v060
	.byte	W60
	.byte	W02
@ 043   ----------------------------------------
	.byte	W56
	.byte		N06   , En3 , v036
	.byte	W40
@ 044   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N07   , Gn3 
	.byte	W21
	.byte		        Dn5 , v032
	.byte	W05
	.byte		N03   , Ds4 , v016
	.byte	W19
@ 045   ----------------------------------------
	.byte	W11
	.byte		        As4 , v012
	.byte	W28
	.byte		N44   , Cn3 
	.byte	W44
	.byte	W02
	.byte	FINE

@**************** Track 8 (Midi-Chn.4) ****************@

mus_littleroot_test_8:
	.byte		VOL   , 127*mus_littleroot_test_mvl/mxv
	.byte	KEYSH , mus_littleroot_test_key+0
@ 000   ----------------------------------------
	.byte	W80
	.byte	W03
	.byte		N54   , Cn2 , v024
	.byte	W13
@ 001   ----------------------------------------
	.byte	W88
	.byte		N03   , As4 , v036
	.byte	W02
	.byte		N24   , Cn4 
	.byte	W06
@ 002   ----------------------------------------
	.byte		N07   , Dn5 
	.byte	W24
	.byte	W01
	.byte		N04   , En5 , v024
	.byte	W24
	.byte	W02
	.byte		N03   , Cn4 , v028
	.byte	W11
	.byte		N02   , Cn4 , v016
	.byte	W32
	.byte	W02
@ 003   ----------------------------------------
	.byte	W64
	.byte		        Gs1 
	.byte	W32
@ 004   ----------------------------------------
	.byte	W96
@ 005   ----------------------------------------
	.byte	W96
@ 006   ----------------------------------------
	.byte	W68
	.byte		N07   , Dn4 , v052
	.byte	W28
@ 007   ----------------------------------------
	.byte	W96
@ 008   ----------------------------------------
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W07
	.byte		N06   , Gn3 , v068
	.byte	W14
	.byte		N24   , En2 , v060
	.byte	W17
	.byte		N04   , Dn6 , v040
	.byte	W04
	.byte		N17   , Dn5 , v048
	.byte	W21
	.byte		N14   , Gs5 , v044
	.byte	W20
	.byte		N04   , Gn3 , v040
	.byte	W12
	.byte		N03   , Cn5 , v056
	.byte	W01
@ 011   ----------------------------------------
	.byte	W16
	.byte		        Gn5 , v044
	.byte	W36
	.byte		N36   , Bn2 , v068
	.byte	W02
	.byte		N02   , Fn6 , v040
	.byte	W05
	.byte		N07   , Fn6 , v048
	.byte	W24
	.byte	W01
	.byte		N04   , Cs4 , v064
	.byte	W09
	.byte		N02   , Cs4 , v020
	.byte	W03
@ 012   ----------------------------------------
	.byte		N11   , En2 , v056
	.byte	W14
	.byte		N02   , Gn5 , v052
	.byte	W06
	.byte		        As6 , v020
	.byte	W03
	.byte		N06   , Gn5 , v060
	.byte	W12
	.byte		N10   , Fn4 , v052
	.byte	W36
	.byte		N03   , Cn4 , v056
	.byte	W06
	.byte		N15   , As5 , v036
	.byte	W19
@ 013   ----------------------------------------
	.byte	W07
	.byte		N04   , Cn6 , v048
	.byte	W12
	.byte		N03   , Fs6 , v040
	.byte	W04
	.byte		N05   , Fn4 , v036
	.byte	W02
	.byte		N09   , Cn4 , v040
	.byte	W11
	.byte		N11   , Dn6 , v072
	.byte	W06
	.byte		N03   , Fn3 , v036
	.byte	W21
	.byte		N20   , Ds2 , v068
	.byte	W08
	.byte		N01   , Gn6 , v040
	.byte	W04
	.byte		N04   , Cn6 , v060
	.byte	W14
	.byte		N05   , Fs3 , v072
	.byte		N02   , An3 , v048
	.byte	W07
@ 014   ----------------------------------------
	.byte	W03
	.byte		N03   , Dn6 , v068
	.byte	W32
	.byte	W03
	.byte		N24   , Fs3 , v060
	.byte	W09
	.byte		N04   , As5 , v044
	.byte	W24
	.byte	W01
	.byte		N03   , Cn5 
	.byte	W04
	.byte		N04   , Cn4 , v056
	.byte	W20
@ 015   ----------------------------------------
	.byte	W01
	.byte		N02   , As4 , v028
	.byte	W03
	.byte		N06   , Gn4 , v048
	.byte	W04
	.byte		N76   , Cn3 , v068
	.byte	W02
	.byte		N02   , Gn5 , v064
	.byte	W44
	.byte	W03
	.byte		N05   , Gn3 , v040
	.byte	W30
	.byte		N08   , Cs3 , v072
	.byte	W09
@ 016   ----------------------------------------
	.byte	W01
	.byte		N01   , Fs3 , v044
	.byte	W04
	.byte		N11   , Fs6 , v068
	.byte	W03
	.byte		N02   , Fs3 , v048
	.byte	W08
	.byte		        Dn4 , v040
	.byte	W24
	.byte		N06   , Fs6 , v056
	.byte	W12
	.byte		N03   , Ds3 , v052
	.byte	W06
	.byte		N02   , Ds4 
	.byte	W02
	.byte		N03   , Fs5 
	.byte	W14
	.byte		        Ds3 , v064
	.byte	W02
	.byte		N02   , En6 , v052
	.byte	W13
	.byte		N08   , Gn2 , v048
	.byte	W07
@ 017   ----------------------------------------
	.byte	W14
	.byte		N04   , Fs6 , v060
	.byte	W01
	.byte		N32   , As3 , v064
	.byte	W23
	.byte		N04   , Fs6 , v060
	.byte	W10
	.byte		N08   , An5 , v052
	.byte	W19
	.byte		N15   , As3 , v036
	.byte	W28
	.byte	W01
@ 018   ----------------------------------------
	.byte	W13
	.byte		N01   , As4 , v016
	.byte	W13
	.byte		N05   , Gn5 , v068
	.byte	W15
	.byte		N10   , Gn5 , v084
	.byte	W08
	.byte		N02   , Cn6 , v064
	.byte	W13
	.byte		        Gn6 , v036
	.byte	W09
	.byte		        Gn5 , v024
	.byte	W03
	.byte		N06   , Gn5 , v064
	.byte	W22
@ 019   ----------------------------------------
	.byte		N05   , Gn5 , v052
	.byte	W21
	.byte		N11   , Fn3 , v032
	.byte	W15
	.byte		N04   , En6 , v028
	.byte	W60
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W44
	.byte	W03
	.byte		N07   , Dn5 , v012
	.byte	W03
	.byte		N48   , Cn2 , v024
	.byte	W44
	.byte	W02
@ 023   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N24   , Cn4 , v036
	.byte	W08
	.byte		N04   , Gn3 
	.byte	W24
	.byte		N03   , En5 , v028
	.byte	W13
@ 024   ----------------------------------------
	.byte	W13
	.byte		        Cn4 
	.byte	W80
	.byte	W03
@ 025   ----------------------------------------
	.byte	W96
@ 026   ----------------------------------------
	.byte	W96
@ 027   ----------------------------------------
	.byte	W96
@ 028   ----------------------------------------
	.byte	W30
	.byte	W01
	.byte		N05   , Dn4 , v052
	.byte	W64
	.byte	W01
@ 029   ----------------------------------------
	.byte	W96
@ 030   ----------------------------------------
	.byte	W96
@ 031   ----------------------------------------
	.byte	W52
	.byte	W01
	.byte		N01   , Bn4 , v056
	.byte	W12
	.byte		N06   , Gn3 , v068
	.byte	W08
	.byte		N03   , En3 
	.byte	W06
	.byte		N24   , En2 , v060
	.byte	W17
@ 032   ----------------------------------------
	.byte		N03   , Dn6 , v040
	.byte	W03
	.byte		N18   , Dn5 , v048
	.byte	W21
	.byte		N14   , Gs5 , v044
	.byte	W21
	.byte		N04   , Gn3 , v040
	.byte	W09
	.byte		N07   , Cn5 , v056
	.byte	W20
	.byte		N04   , Gn5 , v044
	.byte	W22
@ 033   ----------------------------------------
	.byte	W13
	.byte		N36   , Bn2 , v068
	.byte	W03
	.byte		N02   , Fn6 , v040
	.byte	W05
	.byte		N07   , Fn6 , v048
	.byte	W24
	.byte	W01
	.byte		N04   , Cs4 , v064
	.byte	W03
	.byte		N21   , Gs5 , v060
	.byte	W09
	.byte		N10   , En2 , v056
	.byte	W12
	.byte		N05   , As3 , v060
	.byte	W10
	.byte		N10   , Gn5 , v056
	.byte	W13
	.byte		        Fn4 , v052
	.byte	W03
@ 034   ----------------------------------------
	.byte	W28
	.byte		N02   , As5 , v032
	.byte	W04
	.byte		N03   , Cn4 , v056
	.byte	W06
	.byte		N15   , As5 , v036
	.byte	W24
	.byte	W02
	.byte		N04   , Cn6 , v048
	.byte	W05
	.byte		N02   , Fs6 , v020
	.byte	W12
	.byte		N05   , Fn4 , v032
	.byte	W02
	.byte		N10   , Cn4 , v044
	.byte	W11
	.byte		N11   , Dn6 , v072
	.byte	W02
@ 035   ----------------------------------------
	.byte	W24
	.byte	W01
	.byte		N21   , Ds2 , v068
	.byte	W12
	.byte		N03   , Cn6 , v056
	.byte	W13
	.byte		N02   , An3 , v048
	.byte	W01
	.byte		N06   , Fs3 , v072
	.byte	W09
	.byte		N03   , Dn6 
	.byte	W04
	.byte		N02   , Fs4 , v028
	.byte	W30
	.byte	W01
	.byte		N24   , Fs3 , v060
	.byte	W01
@ 036   ----------------------------------------
	.byte	W09
	.byte		N03   , As5 , v044
	.byte	W24
	.byte	W01
	.byte		        Cn5 
	.byte	W04
	.byte		        Cn4 , v056
	.byte	W23
	.byte		N06   , Gn4 , v048
	.byte	W05
	.byte		N72   , Cn3 , v068
	.byte	W01
	.byte		N02   , Gn5 , v064
	.byte	W28
	.byte	W01
@ 037   ----------------------------------------
	.byte	W20
	.byte		N04   , Gn3 , v036
	.byte	W08
	.byte		N13   , Cn2 , v020
	.byte	W24
	.byte	W02
	.byte		N09   , An5 , v072
	.byte	W05
	.byte		N01   , Fs3 , v044
	.byte	W03
	.byte		N12   , Fs6 , v068
	.byte	W03
	.byte		N02   , Fs3 , v048
	.byte	W08
	.byte		        Dn4 , v040
	.byte	W23
@ 038   ----------------------------------------
	.byte	W02
	.byte		N06   , Fs6 , v056
	.byte	W11
	.byte		N03   , Ds3 
	.byte	W22
	.byte		        Ds3 , v064
	.byte	W02
	.byte		N14   , Gn3 , v044
	.byte	W20
	.byte		N06   , Gn6 , v052
	.byte	W15
	.byte		N32   , As3 , v064
	.byte		N04   , Fs6 , v060
	.byte	W24
@ 039   ----------------------------------------
	.byte		N04   
	.byte	W10
	.byte		N08   , An5 , v052
	.byte	W19
	.byte		N15   , As3 , v036
	.byte	W42
	.byte		N01   , As4 , v016
	.byte	W14
	.byte		N02   , Cn5 , v060
	.byte	W01
	.byte		N40   , En6 , v080
	.byte	W01
	.byte		N03   , Fn3 , v064
	.byte	W08
	.byte		N01   , Cn5 , v080
	.byte	W01
@ 040   ----------------------------------------
	.byte	W23
	.byte		N02   , Gn6 , v036
	.byte	W07
	.byte		N01   , Gn5 , v032
	.byte	W06
	.byte		N06   , Gn5 , v064
	.byte	W15
	.byte		        Gn6 , v036
	.byte	W07
	.byte		N05   , Gn5 , v052
	.byte	W20
	.byte		N12   , Fn3 , v032
	.byte	W16
	.byte		N04   , En6 , v028
	.byte	W02
@ 041   ----------------------------------------
	.byte	W96
@ 042   ----------------------------------------
	.byte	W96
@ 043   ----------------------------------------
	.byte	W96
@ 044   ----------------------------------------
	.byte	W12
	.byte		N48   , Cn2 , v016
	.byte	W48
	.byte	W01
	.byte	FINE

@**************** Track 9 (Midi-Chn.5) ****************@

mus_littleroot_test_9:
	.byte		VOL   , 127*mus_littleroot_test_mvl/mxv
	.byte	KEYSH , mus_littleroot_test_key+0
@ 000   ----------------------------------------
	.byte	W96
@ 001   ----------------------------------------
	.byte	W88
	.byte	W01
	.byte		VOICE , 0
	.byte		N09   , Cn3 , v028
	.byte	W07
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
	.byte	W96
@ 009   ----------------------------------------
	.byte	W96
@ 010   ----------------------------------------
	.byte	W08
	.byte		N02   , Bn5 , v024
	.byte	W06
	.byte		N18   , As3 , v056
	.byte	W24
	.byte	W02
	.byte		N05   , Gn5 , v040
	.byte	W28
	.byte	W01
	.byte		N02   , Dn6 , v020
	.byte	W09
	.byte		        Gn4 , v032
	.byte	W01
	.byte		N13   , Gs5 , v036
	.byte	W16
	.byte		N03   , Ds6 , v048
	.byte	W01
@ 011   ----------------------------------------
	.byte	W84
	.byte	W03
	.byte		N21   , Gs5 , v060
	.byte	W09
@ 012   ----------------------------------------
	.byte	W14
	.byte		N03   , Gn3 , v032
	.byte	W08
	.byte		N04   , As3 , v048
	.byte	W48
	.byte		N19   , Fn4 , v056
	.byte	W19
	.byte		N06   , Gs3 , v036
	.byte	W07
@ 013   ----------------------------------------
	.byte	W09
	.byte		N03   , Cn5 , v028
	.byte	W23
	.byte		N02   , Ds6 , v032
	.byte	W03
	.byte		N06   , Cn3 , v052
	.byte	W08
	.byte		N02   , Gs3 , v028
	.byte	W08
	.byte		N36   , Fs3 , v064
	.byte	W24
	.byte		N05   , Gn6 , v052
	.byte	W17
	.byte		N28   , Fs6 , v064
	.byte	W04
@ 014   ----------------------------------------
	.byte	W96
@ 015   ----------------------------------------
	.byte	W02
	.byte		N04   , Gn5 , v048
	.byte	W13
	.byte		N28   , Fs6 , v068
	.byte	W24
	.byte	W01
	.byte		N04   , Gn3 , v044
	.byte	W08
	.byte		N03   , As5 , v036
	.byte	W40
	.byte	W01
	.byte		N09   , Fs6 , v064
	.byte	W07
@ 016   ----------------------------------------
	.byte	W09
	.byte		N03   , Fs4 , v036
	.byte	W66
	.byte	W01
	.byte		N10   , Gn3 , v044
	.byte	W19
	.byte		        Gn1 
	.byte	W01
@ 017   ----------------------------------------
	.byte	W12
	.byte		N03   , Gn1 , v036
	.byte	W28
	.byte		N02   , An5 , v056
	.byte	W24
	.byte		N12   , Cn2 , v012
	.byte	W32
@ 018   ----------------------------------------
	.byte	W28
	.byte	W01
	.byte		N03   , Fn3 , v064
	.byte		N40   , En6 , v080
	.byte	W08
	.byte		N01   , Cn5 
	.byte	W28
	.byte	W01
	.byte		N15   , Ds3 , v056
	.byte	W30
@ 019   ----------------------------------------
	.byte		        Fn3 , v048
	.byte	W21
	.byte		N24   , As1 , v032
	.byte	W12
	.byte		N07   , Gn3 , v028
	.byte	W60
	.byte	W03
@ 020   ----------------------------------------
	.byte	W96
@ 021   ----------------------------------------
	.byte	W96
@ 022   ----------------------------------------
	.byte	W96
@ 023   ----------------------------------------
	.byte	W48
	.byte	W02
	.byte		N09   , Cn3 
	.byte	W44
	.byte	W02
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
	.byte	W66
	.byte		N02   , Bn5 , v024
	.byte	W06
	.byte		N18   , As3 , v056
	.byte	W17
	.byte		N04   , Gn5 , v044
	.byte	W07
@ 032   ----------------------------------------
	.byte	W02
	.byte		N05   , Gn5 , v040
	.byte	W24
	.byte	W02
	.byte		N03   , Gn3 , v012
	.byte	W02
	.byte		N02   , Dn6 , v020
	.byte	W10
	.byte		N13   , Gs5 , v036
	.byte	W19
	.byte		N01   , Ds6 , v048
	.byte	W36
	.byte	W01
@ 033   ----------------------------------------
	.byte	W15
	.byte		N36   , Gn2 
	.byte	W56
	.byte	W01
	.byte		N02   , Gn5 
	.byte	W07
	.byte		N05   , As3 
	.byte	W17
@ 034   ----------------------------------------
	.byte	W32
	.byte		N19   , Fn4 , v056
	.byte	W18
	.byte		N06   , Gs3 , v032
	.byte	W16
	.byte		N03   , Cn5 , v028
	.byte	W24
	.byte		N01   , Ds6 , v032
	.byte	W03
	.byte		N06   , Cn3 , v052
	.byte	W03
@ 035   ----------------------------------------
	.byte	W13
	.byte		N32   , Fs3 , v064
	.byte	W19
	.byte		N02   , Gn6 , v040
	.byte	W04
	.byte		N05   , Gn6 , v048
	.byte	W17
	.byte		N28   , Fs6 , v064
	.byte	W42
	.byte	W01
@ 036   ----------------------------------------
	.byte	W56
	.byte	W03
	.byte		N04   , Gn5 , v048
	.byte	W13
	.byte		N28   , Fs6 , v068
	.byte	W24
@ 037   ----------------------------------------
	.byte	W02
	.byte		N04   , Gn3 , v044
	.byte	W08
	.byte		        As5 , v040
	.byte	W40
	.byte		N10   , Fs6 , v064
	.byte	W18
	.byte		N12   , Dn2 , v040
	.byte	W28
@ 038   ----------------------------------------
	.byte	W48
	.byte	W03
	.byte		N08   , Gn2 , v048
	.byte	W19
	.byte		N04   , Gn1 , v036
	.byte	W24
	.byte	W02
@ 039   ----------------------------------------
	.byte	W01
	.byte		N02   , An5 , v056
	.byte	W24
	.byte		N13   , Gn2 , v016
	.byte	W56
	.byte	W01
	.byte		N24   , Gn3 , v080
	.byte	W06
	.byte		N03   , Dn4 , v056
	.byte	W03
	.byte		N02   , Gn5 , v052
	.byte	W05
@ 040   ----------------------------------------
	.byte	W11
	.byte		        Cn6 , v064
	.byte	W17
	.byte		N15   , Ds3 , v056
	.byte	W30
	.byte		        Fn3 , v048
	.byte	W21
	.byte		N24   , As1 , v032
	.byte	W12
	.byte		N07   , Gn3 , v028
	.byte	W05
@ 041   ----------------------------------------
	.byte	W07
	.byte	FINE

@******************************************************@
	.align	2

mus_littleroot_test:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	mus_littleroot_test_pri	@ Priority
	.byte	mus_littleroot_test_rev	@ Reverb.

	.word	mus_littleroot_test_grp

	.word	mus_littleroot_test_1
	.word	mus_littleroot_test_2
	.word	mus_littleroot_test_3
	.word	mus_littleroot_test_4
	.word	mus_littleroot_test_5
	.word	mus_littleroot_test_6
	.word	mus_littleroot_test_7
	.word	mus_littleroot_test_8
	.word	mus_littleroot_test_9

	.end
