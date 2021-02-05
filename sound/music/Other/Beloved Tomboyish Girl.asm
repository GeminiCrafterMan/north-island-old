Idiot_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Idiot_Voices
	smpsHeaderChan      $05, $03
	smpsHeaderTempo     $02, $4B

	smpsHeaderDAC       Idiot_DAC
	smpsHeaderFM        Idiot_FM1,	$00, $13
	smpsHeaderFM        Idiot_FM2,	$00, $13
	smpsHeaderFM        Idiot_FM3,	$00, $0F
	smpsHeaderFM        Idiot_FM4,	$00, $10
	smpsHeaderPSG       Idiot_PSG1,	$00, $05, $00, fTone_01
	smpsHeaderPSG       Idiot_PSG2,	$00, $07, $00, fTone_01
	smpsHeaderPSG       Idiot_PSG3,	$00, $03, $00, fTone_02

; DAC Data
Idiot_DAC:
	smpsPan             panCenter, $00
	dc.b	dKick, $06, $03, $03, dSnare, dKick, dKick, $06, $03, $03, $03, $03
	dc.b	dSnare, $06, dKick, $03, $06, $03, $03, $03, dSnare, dKick, dKick, dKick
	dc.b	dKick, dHiTimpani, dHiTimpani, dLowTimpani, dLowTimpani, dVLowTimpani, dVLowTimpani, dVLowTimpani

Idiot_Jump00:
	dc.b	dKick, $06, $03, $03, dSnare, dKick, dKick, $06, $03, $03, $03, $03
	dc.b	dSnare, $06, dKick, $03, $06, $03, $03, $03, dSnare, dKick, dKick, dKick
	dc.b	dKick, $06, $03, $03, dSnare, $06, dKick, $03, dSnare, dKick, $06, $03
	dc.b	$03, dSnare, dKick, dKick, $06, $03, $03, $03, $03, dSnare, $06, dKick
	dc.b	$03, $06, $03, $03, $03, dSnare, dKick, dKick, dKick, dKick, $06, dSnare
	dc.b	$03, $03, $03, $03, dKick, dSnare, dKick, $06, $03, $03, dSnare, dKick
	dc.b	dKick, $06, $03, $03, $03, $03, dSnare, $06, dKick, $03, $06, $03
	dc.b	$03, $03, dSnare, dKick, dKick, dKick, dKick, $06, $03, $03, dSnare, $06
	dc.b	dKick, $03, dSnare, dKick, $06, $03, $03, dSnare, dKick, dKick, $06, $03
	dc.b	$03, $03, $03, dSnare, $06, dKick, $03, $06, $03, $03, $03, dSnare
	dc.b	dKick, dSnare, dSnare, dKick, dSnare, dHiTimpani, dLowTimpani, dLowTimpani, dSnare, dVLowTimpani, dSnare, dKick
	dc.b	$06, $03, $03, dSnare, dKick, dKick, $06, $03, $03, $03, $03, dSnare
	dc.b	$06, dKick, $03, $06, $03, $03, $03, dSnare, dKick, dKick, dKick, dKick
	dc.b	$06, $03, $03, dSnare, $06, dKick, $03, dSnare, dKick, $06, $03, $03
	dc.b	dSnare, dKick, dKick, $06, $03, $03, $03, $03, dSnare, $06, dKick, $03
	dc.b	$06, $03, $03, $03, dSnare, dKick, dKick, dKick, dKick, $06, dSnare, $03
	dc.b	$03, $03, $03, dKick, dSnare, dKick, $06, $03, $03, dSnare, dKick, dKick
	dc.b	$06, $03, $03, $03, $03, dSnare, $06, dKick, $03, $06, $03, $03
	dc.b	$03, dSnare, dKick, dKick, dKick, dKick, $06, $03, $03, dSnare, $06, dKick
	dc.b	$03, dSnare, dKick, $06, $03, $03, dSnare, dKick, dKick, $06, $03, $03
	dc.b	$03, $03, dSnare, $06, dKick, $03, $06, $03, $03, $03, dSnare, dSnare
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, dSnare, $85, dSnare, dKick, dSnare, dKick, $12
	dc.b	$12, $06, $09, $03, $03, $03, dSnare, dKick, dKick, dKick, dKick, dSnare
	dc.b	dKick, dKick, dSnare, dSnare, dSnare, dSnare

Idiot_Loop00:
	dc.b	dKick, $06, dSnare, $03, dKick, dKick, dKick, dSnare, dKick, $06, $03, dSnare
	dc.b	dKick, dKick, dKick, dSnare, $06
	smpsLoop            $00, $1F, Idiot_Loop00
	dc.b	dKick, dSnare, $03, dKick, dKick, dKick, dSnare, dKick, dSnare, dSnare, dSnare, dKick
	dc.b	dSnare, dSnare, dSnare, dSnare, dKick

Idiot_Loop01:
	dc.b	dKick, dKick, dKick, dSnare
	smpsLoop            $00, $03, Idiot_Loop01
	dc.b	dKick, dKick, $06, $03, $03

Idiot_Loop02:
	dc.b	$03, $03, dSnare, dKick
	smpsLoop            $00, $03, Idiot_Loop02
	dc.b	dKick, $01
	smpsSetTempoMod     $32
	dc.b	nRst, $05, dSnare, $01
	smpsSetTempoMod     $4B
	smpsSetTempoMod     $32
	dc.b	nRst, $02, dKick, $03
	smpsSetTempoMod     $25
	dc.b	nRst
	smpsSetTempoMod     $1E
	dc.b	$02
	smpsSetTempoMod     $19
	dc.b	$04
	smpsSetTempoMod     $15
	dc.b	$03
	smpsSetTempoMod     $13
	dc.b	$05
	smpsSetTempoMod     $11
	dc.b	$01, dSnare, $03, $03, $01
	smpsSetTempoMod     $0F
	dc.b	nRst, $02, dSnare, $03
	smpsSetTempoMod     $11
	dc.b	$03, $03
	smpsSetTempoMod     $0F
	dc.b	$03, $03
	smpsSetTempoMod     $4B
	smpsJump            Idiot_Jump00

; FM1 Data
Idiot_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $54, nFs4, $06, $06

Idiot_Jump03:
	smpsAlterVol        $FC
	dc.b	nB4, $09, nA4, nB4, $06, nD5, $17, nRst, $01, nB4, $06, nA4
	dc.b	nB4, nD5, $0C, nE5, $06, nRst, $01, nB4, $05, nA4, $06, nB4
	dc.b	nA4, nB4, nD5, $1E, nB4, $06, nA4, nB4, nFs5, $0C, $06, nE5
	dc.b	$0C, nB4, $06, nA4, nB4, nD5, $1E, nB4, $06, nA4, nB4, nD5
	dc.b	$0C, nE5, $06, nRst, $01, nB4, $05, nA4, $06, nB4, nA4, nB4
	dc.b	nD5, $1E, nB4, $06, nA4, nB4, nFs5, $0C, $06, nE5, $0C, nB4
	dc.b	$09, nA4, nB4, $06, nD5, $17, nRst, $01, nB4, $06, nA4, nB4
	dc.b	nD5, $0C, nE5, $06, nRst, $01, nB4, $05, nA4, $06, nB4, nA4
	dc.b	nB4, nD5, $1E, nB4, $06, nA4, nB4, nFs5, $0C, $06, nE5, $0C
	dc.b	nB4, $06, nA4, nB4, nD5, $1E, nB4, $06, nA4, nB4, nD5, $0C
	dc.b	nE5, $06, nRst, $01, nB4, $05, nA4, $06, nB4, nA4, nB4, nD5
	dc.b	$1E, nB4, $06, nA4, nB4, nFs5, $0C, $06, nE4, $01, nRst, nFs4
	dc.b	nA4, nRst, nB4, nCs5, nRst, nD5, nE5, nRst, nFs5, nD5, $06, nC5
	dc.b	nD5, nF5, $0C, nE5, $06, nC5, $0C, nD5, $17, nRst, $01
	smpsAlterVol        $04
	dc.b	nG3, $17, nRst, $01

Idiot_Loop0C:
	dc.b	nA3, $17, nRst, $01, nA3, $17, nRst, $01, nG3, $30, nD3, $17
	dc.b	nRst, $01, nE3, $17, nRst, $01, nA3, $30, $17, nRst, $01, nA3
	dc.b	$17, nRst, $01, nG3, $24, $0C, nF3, $17, nRst, $01, nG3, $17
	dc.b	nRst, $01, nA3, $24, nG3, $0C
	smpsLoop            $00, $04, Idiot_Loop0C
	dc.b	nRst, $7F, $05, nD4, $06, $06
	smpsJump            Idiot_Jump03

; FM2 Data
Idiot_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	dc.b	nRst, $54, nD3, $0C

Idiot_Loop0A:
	dc.b	nB2

Idiot_Loop07:
	dc.b	$06
	smpsLoop            $00, $20, Idiot_Loop07

Idiot_Loop08:
	dc.b	nG2
	smpsLoop            $00, $18, Idiot_Loop08

Idiot_Loop09:
	dc.b	nA2
	smpsLoop            $00, $08, Idiot_Loop09
	smpsLoop            $01, $02, Idiot_Loop0A
	dc.b	nF3, $11, nRst, $01, nG3, $1E, nRst

Idiot_Loop0B:
	dc.b	$43
	smpsLoop            $00, $0C, Idiot_Loop0B
	smpsAlterVol        $FD
	dc.b	nD3, $0C, $17, nRst, $01, nC3, $17, nRst, $01, nB2, $30, nBb2
	dc.b	$17, nRst, $01, nC3, $17, nRst, $01, nCs3, $30, nD3, $17, nRst
	dc.b	$01, nC3, $17, nRst, $01, nB2, $24, nC3, $0C, nBb2, $17, nRst
	dc.b	$01, nC3, $17, nRst, $01, nD3, $24, nA2, $0C, nD3, $17, nRst
	dc.b	$01, nC3, $17, nRst, $01, nB2, $30, nBb2, $17, nRst, $01, nC3
	dc.b	$17, nRst, $01, nCs3, $30, nD3, $17, nRst, $01, nC3, $17, nRst
	dc.b	$01, nB2, $24, nC3, $0C, nBb2, $17, nRst, $01, nC3, $17, nRst
	dc.b	$01, nD3, $24, nA2, $0C, nBb2, $17, nRst, $01, nC3, $17, nRst
	dc.b	$01, nD2, $24, nA2, $0C, nBb2, $17, nRst, $01, nC3, $17, nRst
	dc.b	$01
	smpsAlterVol        $03
	smpsJump            Idiot_Loop0A

; FM3 Data
Idiot_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	dc.b	nRst, $60

Idiot_Jump02:
	dc.b	nRst

Idiot_Loop06:
	dc.b	$78
	smpsLoop            $00, $07, Idiot_Loop06
	dc.b	nD4, $06, nE4, nF4, nG4, nA4, $11, nRst, $01
	smpsAlterVol        $02
	dc.b	nA4, $06
	smpsAlterVol        $FE
	dc.b	nF4, nA4
	smpsAlterVol        $04
	dc.b	nF4, $02
	smpsAlterVol        $FE
	dc.b	nA4, $01
	smpsAlterVol        $FE
	dc.b	nF4, $03, nE4, $06
	smpsAlterVol        $04
	dc.b	nF4, $02
	smpsAlterVol        $FC
	dc.b	nD4, $1C, $06, nF4, nA4, nD5, $11, nRst, $01, nD5, $06, nC5
	dc.b	nD5, nC5, $01, nRst, nD5, nC5, $03, nG4, $06, nA4, $24, nE5
	dc.b	$0C, nF5, $11, nRst, $01, nF5, $06, nE5, nF5, nA5, nE5, nG5
	smpsAlterVol        $01
	dc.b	nD5, nB4
	smpsAlterVol        $FF
	dc.b	nG5
	smpsAlterVol        $01
	dc.b	nD5, nB4
	smpsAlterVol        $06
	dc.b	nC5, $01
	smpsAlterVol        $F9
	dc.b	nE5, $0B, nF5, $06
	smpsAlterVol        $02
	dc.b	nD5, nA4, nRst, $01
	smpsAlterVol        $FE
	dc.b	nF5, $05, nRst, $01, nE5, $05
	smpsAlterVol        $04
	dc.b	nC5, $06, nG4, nRst, $01
	smpsAlterVol        $FE
	dc.b	nE5, $05
	smpsAlterVol        $FE
	dc.b	$11, nRst, $01, nD5, $06, $06, nD4, nE4, nF4, nA4, $11, nRst
	dc.b	$01
	smpsAlterVol        $02
	dc.b	nA4, $06
	smpsAlterVol        $FE
	dc.b	nF4, nA4
	smpsAlterVol        $04
	dc.b	nF4, $02
	smpsAlterVol        $FE
	dc.b	nA4, $01
	smpsAlterVol        $FE
	dc.b	nF4, $03, nE4, $06
	smpsAlterVol        $04
	dc.b	nF4, $02
	smpsAlterVol        $FC
	dc.b	nD4, $1C, $06, nF4, nA4, nD5, $11, nRst, $01, nD5, $06, nC5
	dc.b	nD5, nC5, $01, nRst, nD5, nC5, $03, nG4, $06, nA4, $24, nE5
	dc.b	$0C, nF5, $11, nRst, $01, nF5, $06, nE5, nF5, nA5, nE5, nG5
	dc.b	nD5, nB4, nG5, nD5, nB4
	smpsAlterVol        $07
	dc.b	nC5, $01
	smpsAlterVol        $F9
	dc.b	nE5, $0B
	smpsAlterVol        $10
	dc.b	$01
	smpsAlterVol        $F0
	dc.b	nF5, $05, nD5, $06, nA4, nRst, $01, nF5, $05, nE5, $06, nRst
	dc.b	$01, nC5, $05, nRst, $01, nG4, $05, nRst, $01, nE5, $05, $11
	dc.b	nRst, $01, nD5, $06, $06, nD4, nE4, nF4, nA4, $11, nRst, $01
	smpsAlterVol        $02
	dc.b	nA4, $06
	smpsAlterVol        $FE
	dc.b	nF4, nA4
	smpsAlterVol        $04
	dc.b	nF4, $02
	smpsAlterVol        $FE
	dc.b	nA4, $01
	smpsAlterVol        $FE
	dc.b	nF4, $03, nE4, $06
	smpsAlterVol        $04
	dc.b	nF4, $02
	smpsAlterVol        $FC
	dc.b	nD4, $1C, $06, nF4, nA4, nD5, $11, nRst, $01, nD5, $06, nC5
	dc.b	nD5, nC5, $01, nRst, nD5, nC5, $03, nG4, $06, nA4, $24, nE5
	dc.b	$0C, nF5, $11, nRst, $01, nF5, $06, nE5, nF5, nA5, nE5, nG5
	smpsAlterVol        $01
	dc.b	nD5, nB4
	smpsAlterVol        $FF
	dc.b	nG5
	smpsAlterVol        $01
	dc.b	nD5, nB4
	smpsAlterVol        $06
	dc.b	nC5, $01
	smpsAlterVol        $F9
	dc.b	nE5, $0B, nF5, $06
	smpsAlterVol        $02
	dc.b	nD5, nA4, nRst, $01
	smpsAlterVol        $FE
	dc.b	nF5, $05, nRst, $01, nE5, $05
	smpsAlterVol        $04
	dc.b	nC5, $06, nG4, nRst, $01
	smpsAlterVol        $FE
	dc.b	nE5, $05
	smpsAlterVol        $FE
	dc.b	$11, nRst, $01, nD5, $06, $06, nD4, nE4, nF4, nA4, $11, nRst
	dc.b	$01
	smpsAlterVol        $02
	dc.b	nA4, $06
	smpsAlterVol        $FE
	dc.b	nF4, nA4
	smpsAlterVol        $04
	dc.b	nF4, $02
	smpsAlterVol        $FE
	dc.b	nA4, $01
	smpsAlterVol        $FE
	dc.b	nF4, $03, nE4, $06
	smpsAlterVol        $04
	dc.b	nF4, $02
	smpsAlterVol        $FC
	dc.b	nD4, $1C, $06, nF4, nA4, nD5, $11, nRst, $01, nD5, $06, nC5
	dc.b	nD5, nC5, $01, nRst, nD5, nC5, $03, nG4, $06, nA4, $24, nE5
	dc.b	$0C, nF5, $11, nRst, $01, nF5, $06, nE5, nF5, nA5, nE5, nG5
	dc.b	nD5, nB4, nG5, nD5, nB4
	smpsAlterVol        $07
	dc.b	nC5, $01
	smpsAlterVol        $F9
	dc.b	nE5, $0B
	smpsAlterVol        $10
	dc.b	$01
	smpsAlterVol        $F0
	dc.b	nF5, $05, nD5, $06, nA4, nRst, $01, nF5, $05, nE5, $06, nRst
	dc.b	$01, nC5, $05, nRst, $01, nG4, $05, nRst, $01, nE5, $05, $11
	dc.b	nRst, $01, nD5, $11, nRst, $01, nA5, $0C, $06, nF5, nD5, nRst
	dc.b	$01, nA5, $05, nG5, $06, nRst, $01, nE5, $05, nRst, $01, nC5
	dc.b	$05, nRst, $01, nG5, $05, $11, nRst, $01, nA5, $06, nF5, $11
	dc.b	nRst, $01, nA5, $06, $06, nF5, nD5, nRst, $01, nA5, $05, nC6
	dc.b	$06, nRst, $01, nG5, $05, nRst, $01, nE5, $05, nRst, $01, nC6
	dc.b	$05
	smpsJump            Idiot_Jump02

; FM4 Data
Idiot_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $60

Idiot_Jump01:
	dc.b	nRst

Idiot_Loop03:
	dc.b	$66
	smpsLoop            $00, $08, Idiot_Loop03

Idiot_Loop04:
	dc.b	nD3, $17, nRst, $01, nC3, $17, nRst, $01
	smpsLoop            $00, $02, Idiot_Loop04

Idiot_Loop05:
	dc.b	nB2, $30, nBb2, $17, nRst, $01, nC3, $17, nRst, $01, nCs3, $30
	dc.b	nD3, $17, nRst, $01, nC3, $17, nRst, $01, nB2, $24, nC3, $0C
	dc.b	nBb2, $17, nRst, $01, nC3, $17, nRst, $01, nD3, $24, nC3, $0C
	dc.b	nD3, $17, nRst, $01, nC3, $17, nRst, $01
	smpsLoop            $00, $03, Idiot_Loop05
	dc.b	nB2, $30, nBb2, $17, nRst, $01, nC3, $17, nRst, $01, nCs3, $30
	dc.b	nD3, $17, nRst, $01, nC3, $17, nRst, $01, nB2, $24, nC3, $0C
	dc.b	nBb2, $17, nRst, $01, nC3, $17, nRst, $01, nD3, $24, nC3, $0C
	dc.b	nRst, $7F, $11
	smpsJump            Idiot_Jump01

; PSG1 Data
Idiot_PSG1:
	dc.b	nRst, $60

Idiot_Loop17:
	dc.b	nD2, $03
	smpsPSGAlterVol     $07
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	nFs2
	smpsPSGAlterVol     $00
	dc.b	nD2
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FA
	dc.b	$03, nB2, nFs2, nD3, nCs3, nE2
	smpsPSGAlterVol     $FF
	dc.b	nB2, nD2
	smpsPSGAlterVol     $07
	dc.b	nFs2, nD2
	smpsPSGAlterVol     $00
	dc.b	nFs2
	smpsPSGAlterVol     $F9
	dc.b	$03
	smpsPSGAlterVol     $07
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	nE2
	smpsPSGAlterVol     $00
	dc.b	nD2
	smpsPSGAlterVol     $00
	dc.b	nCs2
	smpsPSGAlterVol     $FA
	dc.b	nB1, nFs2, nD2, nB1, nE2, nCs2
	smpsPSGAlterVol     $FF
	dc.b	nA1, nB1
	smpsPSGAlterVol     $07
	dc.b	nFs2, nB2
	smpsPSGAlterVol     $00
	dc.b	nE2
	smpsPSGAlterVol     $F9
	dc.b	nD2
	smpsPSGAlterVol     $07
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	nFs2
	smpsPSGAlterVol     $00
	dc.b	nD2
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FA
	dc.b	$03, nB2, nFs2, nD3, nCs3, nE2
	smpsPSGAlterVol     $FF
	dc.b	nB2, nD2
	smpsPSGAlterVol     $07
	dc.b	nFs2, nD2
	smpsPSGAlterVol     $00
	dc.b	nFs2
	smpsPSGAlterVol     $F9
	dc.b	$03
	smpsPSGAlterVol     $07
	dc.b	nD3
	smpsPSGAlterVol     $00
	dc.b	nCs3
	smpsPSGAlterVol     $00
	dc.b	nB2
	smpsPSGAlterVol     $00
	dc.b	nE2
	smpsPSGAlterVol     $FA
	dc.b	nFs2, nE2, nD2, nE2, nFs2, nD3
	smpsPSGAlterVol     $FF
	dc.b	nCs3, nFs2
	smpsPSGAlterVol     $07
	dc.b	nD2, nFs3
	smpsPSGAlterVol     $00
	dc.b	nCs3
	smpsPSGAlterVol     $F9
	smpsLoop            $00, $02, Idiot_Loop17
	dc.b	nD3
	smpsPSGAlterVol     $07
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	nFs3
	smpsPSGAlterVol     $00
	dc.b	nD3
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FA
	dc.b	$03, nB3, nFs3, nD4, nCs4, nE3
	smpsPSGAlterVol     $FF
	dc.b	nB3, nD3
	smpsPSGAlterVol     $07
	dc.b	nFs3, nD3
	smpsPSGAlterVol     $00
	dc.b	nFs3
	smpsPSGAlterVol     $F9
	dc.b	$03
	smpsPSGAlterVol     $07
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	nE3
	smpsPSGAlterVol     $00
	dc.b	nD3
	smpsPSGAlterVol     $00
	dc.b	nCs3
	smpsPSGAlterVol     $FA
	dc.b	nB2, nFs3, nD3, nB2, nE3, nCs3
	smpsPSGAlterVol     $FF
	dc.b	nA2, nB2
	smpsPSGAlterVol     $07
	dc.b	nFs3, nB3
	smpsPSGAlterVol     $00
	dc.b	nE3
	smpsPSGAlterVol     $F9
	dc.b	nD3
	smpsPSGAlterVol     $07
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	nFs3
	smpsPSGAlterVol     $00
	dc.b	nD3
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FA
	dc.b	$03, nB3, nFs3, nD4, nCs4, nE3
	smpsPSGAlterVol     $FF
	dc.b	nB3, nD3
	smpsPSGAlterVol     $07
	dc.b	nFs3, nD3
	smpsPSGAlterVol     $00
	dc.b	nFs3
	smpsPSGAlterVol     $F9
	dc.b	$03
	smpsPSGAlterVol     $07
	dc.b	nD4
	smpsPSGAlterVol     $00
	dc.b	nCs4
	smpsPSGAlterVol     $00
	dc.b	nB3
	smpsPSGAlterVol     $00
	dc.b	nE3
	smpsPSGAlterVol     $FA
	dc.b	nFs3, nE3, nD3, nE3, nFs3, nD4
	smpsPSGAlterVol     $FF
	dc.b	nCs4, nFs3
	smpsPSGAlterVol     $07
	dc.b	nD3, nFs4
	smpsPSGAlterVol     $00
	dc.b	nCs4
	smpsPSGAlterVol     $F9
	dc.b	nD3
	smpsPSGAlterVol     $07
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	nFs3
	smpsPSGAlterVol     $00
	dc.b	nD3
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $FA
	dc.b	$03, nB3, nFs3, nD4, nCs4, nE3
	smpsPSGAlterVol     $FF
	dc.b	nB3, nD3
	smpsPSGAlterVol     $07
	dc.b	nFs3, nD3
	smpsPSGAlterVol     $00
	dc.b	nFs3
	smpsPSGAlterVol     $F9
	dc.b	$03
	smpsPSGAlterVol     $07
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	nE3
	smpsPSGAlterVol     $00
	dc.b	nD3
	smpsPSGAlterVol     $00
	dc.b	nCs3
	smpsPSGAlterVol     $FA
	dc.b	nB2, nFs3, nD3, nB2, nE3, nCs3
	smpsPSGAlterVol     $FF
	dc.b	nA2, nB2
	smpsPSGAlterVol     $07
	dc.b	nFs3, nB3
	smpsPSGAlterVol     $00
	dc.b	nE3
	smpsPSGAlterVol     $F9
	dc.b	nD3
	smpsPSGAlterVol     $00
	dc.b	nFs3
	smpsPSGAlterVol     $00
	dc.b	nD4
	smpsPSGAlterVol     $00
	dc.b	nB3
	smpsPSGAlterVol     $00
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD3, nB3, nFs3, nD4, nCs4, nE3
	smpsPSGAlterVol     $FF
	dc.b	nB3, nD3
	smpsPSGAlterVol     $07
	dc.b	nFs3, nD3
	smpsPSGAlterVol     $00
	dc.b	nFs3
	smpsPSGAlterVol     $F9
	dc.b	$03
	smpsPSGAlterVol     $00
	dc.b	nFs4
	smpsPSGAlterVol     $00
	dc.b	nE4
	smpsPSGAlterVol     $00
	dc.b	nD4
	smpsPSGAlterVol     $00
	dc.b	nCs4
	smpsPSGAlterVol     $01
	dc.b	nFs3, nE3, nD3, nE3, nFs3, nD4
	smpsPSGAlterVol     $FF
	dc.b	nCs4, nFs3
	smpsPSGAlterVol     $07
	dc.b	nD3, nFs4
	smpsPSGAlterVol     $00
	dc.b	nCs4, nRst

Idiot_Loop18:
	dc.b	$5E
	smpsLoop            $00, $09, Idiot_Loop18
	smpsPSGAlterVol     $F7
	dc.b	nF1, $06, nG1, nA1, nF2, $11, nRst, $01
	smpsPSGAlterVol     $01
	dc.b	nF2, $06
	smpsPSGAlterVol     $FF
	dc.b	nA1, nF2
	smpsPSGAlterVol     $02
	dc.b	nA1, $02
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	dc.b	nA1, $03, nG1, $06, nF1, $1D, nRst, $01, nF1, $06, nA1, nF2
	dc.b	nA2, $11, nRst, $01, nA2, $06, nE2, nF2, nE2, $01, nRst, nF2
	dc.b	nE2, $03, nC2, $06, nCs2, $24, nG2, $0C, nF2, $11, nRst, $01
	dc.b	nF2, $06, nG2, nA2, nC3, nG2, nD3
	smpsPSGAlterVol     $01
	dc.b	nB2, nG2
	smpsPSGAlterVol     $FF
	dc.b	nD3
	smpsPSGAlterVol     $01
	dc.b	nB2, nG2
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nC3, $0B, nA2, $06
	smpsPSGAlterVol     $01
	dc.b	nF2, nD2, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nA2, $05, nRst, $01, nG2, $05
	smpsPSGAlterVol     $02
	dc.b	nE2, $06, nC2, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nG2, $05
	smpsPSGAlterVol     $FF
	dc.b	$11, nRst, $01, nA2, $06, nF2, nF2, nG2, nA2, nF3, $11, nRst
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF3, $06
	smpsPSGAlterVol     $FF
	dc.b	nA2, nF3
	smpsPSGAlterVol     $02
	dc.b	nA2, $02
	smpsPSGAlterVol     $FF
	dc.b	nF3, $01
	smpsPSGAlterVol     $FF
	dc.b	nA2, $03, nG2, $06, nF2, $1D, nRst, $01, nF2, $06, nA2, nF3
	dc.b	nA3, $11, nRst, $01, nA3, $06, nE3, nF3, nE3, $01, nRst, nF3
	dc.b	nE3, $03, nC3, $06, nCs3, $24, nG3, $0C, nF3, $11, nRst, $01
	dc.b	nF3, $06, nG3, nA3, nC4, nG3, nD4
	smpsPSGAlterVol     $01
	dc.b	nB3, nG3
	smpsPSGAlterVol     $FF
	dc.b	nD4
	smpsPSGAlterVol     $01
	dc.b	nB3, nG3
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nC4, $0B, nA3, $06
	smpsPSGAlterVol     $01
	dc.b	nF3, nD3, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nA3, $05, nRst, $01, nG3, $05
	smpsPSGAlterVol     $02
	dc.b	nE3, $06, nC3, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nG3, $05
	smpsPSGAlterVol     $FF
	dc.b	$11, nRst, $01, nA3, $11, nRst, $01, nA2, $0C, $06, nF2, nD2
	dc.b	nRst, $01, nA2, $05, nG2, $06, nRst, $01, nE2, $05, nRst, $01
	dc.b	nC2, $05, nRst, $01, nG2, $05, $11, nRst, $01, nA2, $06, nF2
	dc.b	$11, nRst, $01, nA2, $06, $06, nF2, nD2, nRst, $01, nA2, $05
	dc.b	nC3, $06, nRst, $01, nG2, $05, nRst, $01, nE2, $05, nRst, $01
	dc.b	nC3, $05
	smpsPSGAlterVol     $02
	smpsJump            Idiot_Loop17

; PSG2 Data
Idiot_PSG2:
	dc.b	nRst, $60

Idiot_Jump05:
	dc.b	nRst

Idiot_Loop15:
	dc.b	$66
	smpsLoop            $00, $08, Idiot_Loop15
	dc.b	nD1, $06, nA1, nD1, nA1, nC1, nG1, nC1, nG1
	smpsPSGAlterVol     $FF

Idiot_Loop16:
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nF1, $03, nD2, $09
	smpsPSGAlterVol     $FF
	dc.b	nC1, $06
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FF
	dc.b	nD2, nA0
	smpsPSGAlterVol     $FF
	dc.b	nCs1
	smpsPSGAlterVol     $02
	dc.b	nG1, $03, nB1, $09
	smpsPSGAlterVol     $FF
	dc.b	nD2, $06
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $FF
	dc.b	nD1, nBb0
	smpsPSGAlterVol     $FF
	dc.b	nF1
	smpsPSGAlterVol     $02
	dc.b	nD1, $03, nF1, $09
	smpsPSGAlterVol     $FF
	dc.b	nC1, $06
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $02
	dc.b	nC1
	smpsPSGAlterVol     $FF
	dc.b	nG1, nCs1
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nE1, $03, nA1, $09
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $06
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	nA1, nD1
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nF1, $03, nD2, $09
	smpsPSGAlterVol     $FF
	dc.b	nC2, $06
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	nE2, nB0
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $02
	dc.b	nG1, $03, nB1, $09
	smpsPSGAlterVol     $FF
	dc.b	nD2, $06
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $FF
	dc.b	nB1, nBb0
	smpsPSGAlterVol     $FF
	dc.b	nF1
	smpsPSGAlterVol     $02
	dc.b	nD1, $03, nF1, $09
	smpsPSGAlterVol     $FF
	dc.b	nC1, $06
	smpsPSGAlterVol     $FF
	dc.b	nG1
	smpsPSGAlterVol     $02
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	nG1, nD1
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $02
	dc.b	nF1, $03, nD2, $09
	smpsPSGAlterVol     $FF
	dc.b	nA1, $06
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsLoop            $00, $04, Idiot_Loop16
	dc.b	nRst, $7F, $11
	smpsPSGAlterVol     $01
	smpsJump            Idiot_Jump05

; PSG3 Data
Idiot_PSG3:
	smpsPSGform         $E7
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $03

Idiot_Loop0D:
	dc.b	$03, $06, $03, $03, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$06, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03, $09, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03

Idiot_Jump04:
	dc.b	nMaxPSG, $03
	smpsLoop            $00, $08, Idiot_Loop0D
	dc.b	$03, $06, $03, $03, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$06, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03, $09, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$27
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $05
	dc.b	nEb5, $0F
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03, $09, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGAlterVol     $FF

Idiot_Loop0E:
	dc.b	$03, $03, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $03, $06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsLoop            $00, $20, Idiot_Loop0E
	dc.b	$03

Idiot_Loop0F:
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, Idiot_Loop0F

Idiot_Loop10:
	dc.b	$03, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, Idiot_Loop10

Idiot_Loop11:
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $02, Idiot_Loop11

Idiot_Loop12:
	dc.b	$03, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, Idiot_Loop12

Idiot_Loop13:
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $02, Idiot_Loop13

Idiot_Loop14:
	dc.b	$03, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $02, Idiot_Loop14
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsJump            Idiot_Jump04

Idiot_Voices:
;	Voice $00
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $01
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $02
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $07, $07, $08
;	$00, $00, $00, $00, 	$FF, $FF, $EF, $FF, 	$23, $00, $29, $07
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $07, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $29, $00, $23

