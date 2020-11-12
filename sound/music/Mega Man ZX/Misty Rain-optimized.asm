MistyRain_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MistyRain_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $05

	smpsHeaderDAC       MistyRain_DAC
	smpsHeaderFM        MistyRain_FM1,	$00, $08
	smpsHeaderFM        MistyRain_FM2,	$00, $08
	smpsHeaderFM        MistyRain_FM3,	$00, $13
	smpsHeaderFM        MistyRain_FM4,	$00, $0F
	smpsHeaderFM        MistyRain_FM5,	$00, $0F
	smpsHeaderPSG       MistyRain_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       MistyRain_PSG2,	$00, $02, $00, $00
	smpsHeaderPSG       MistyRain_PSG3,	$00, $00, $00, $00

; DAC Data
MistyRain_DAC:
	smpsPan             panCenter, $00
	dc.b	dKick, $12, $2A

MistyRain_Loop00:
	dc.b	$18, $0C, $3C
	smpsLoop            $00, $03, MistyRain_Loop00
	dc.b	$18, $0C, $12, $2A, $18, $0C, $3C, $18, $06, $06, $3C, $18
	dc.b	$0C, $12, $1E, $0C, $0C, $18, $18

MistyRain_Loop01:
	dc.b	dSnare, $12, $06, dKick, $18, dSnare, dKick
	smpsLoop            $00, $16, MistyRain_Loop01
	dc.b	dSnare, $12, $06, dKick, $18, dSnare, dKick, $12, $12, $0C, $30
	smpsJump            MistyRain_DAC

; FM1 Data
MistyRain_FM1:
	smpsPan             panCenter, $00

MistyRain_Jump02:
	smpsSetvoice        $02
	dc.b	nA0, $5A, nRst, $06, nEb1, $5A, nRst, $06, nD1, $5A, nRst, $06
	dc.b	nC1, $2A, nRst, $06, nB0, $2A, nRst, $06, nA0, $5A, nRst, $06
	dc.b	nEb1, $5A, nRst, $06, nD1, $5A, nRst, $06, nA1, $30, nRst, $0C
	smpsSetvoice        $05
	smpsAlterVol        $06
	dc.b	nA0, $06
	smpsModSet          $00, $01, $44, $FF
	dc.b	smpsNoAttack, nB0
	smpsModSet          $00, $01, $54, $FF
	smpsAlterVol        $FA
	dc.b	nA1
	smpsAlterVol        $06
	dc.b	$06
	smpsAlterVol        $06
	dc.b	$06
	smpsAlterVol        $07
	dc.b	$06
	smpsModOff
	smpsSetvoice        $06
	smpsAlterVol        $ED

MistyRain_Loop05:
	dc.b	nF2, $0C, nF3, $06, nRst
	smpsLoop            $00, $07, MistyRain_Loop05
	dc.b	nG2, $0C, nG3, $06

MistyRain_Loop06:
	dc.b	nRst, nA2, $0C, nA3, $06
	smpsLoop            $00, $07, MistyRain_Loop06
	dc.b	nRst, nG2, $0C, nG3, $06, nRst
	smpsLoop            $01, $03, MistyRain_Loop05

MistyRain_Loop07:
	dc.b	nF2, $0C, nF3, $06, nRst
	smpsLoop            $00, $07, MistyRain_Loop07
	dc.b	nG2, $0C, nG3, $06

MistyRain_Loop08:
	dc.b	nRst, nA2, $0C, nA3, $06
	smpsLoop            $00, $08, MistyRain_Loop08

MistyRain_Loop09:
	dc.b	nRst, nBb2, $0C, nBb3, $06
	smpsLoop            $00, $08, MistyRain_Loop09

MistyRain_Loop0A:
	dc.b	nRst, nA2, $0C, nA3, $06
	smpsLoop            $00, $08, MistyRain_Loop0A

MistyRain_Loop0B:
	dc.b	nRst, nBb2, $0C, nBb3, $06
	smpsLoop            $00, $04, MistyRain_Loop0B

MistyRain_Loop0C:
	dc.b	nRst, nB2, $0C, nB3, $06
	smpsLoop            $00, $04, MistyRain_Loop0C

MistyRain_Loop0D:
	dc.b	nRst, nE2, $0C, nE3, $06
	smpsLoop            $00, $04, MistyRain_Loop0D
	dc.b	nRst, nE4, $09, nRst, nE4, nRst, nE4, nRst, $33
	smpsJump            MistyRain_Jump02

; FM2 Data
MistyRain_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	dc.b	nRst, $18

MistyRain_Loop04:
	dc.b	nA3, $06, nRst, $48
	smpsAlterVol        $08
	dc.b	nA3, $06, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nA3, $06, nRst, $5A
	smpsLoop            $00, $03, MistyRain_Loop04
	dc.b	nA3, $06, nRst, $48
	smpsAlterVol        $08
	dc.b	nA3, $06, nRst, $0C
	smpsAlterVol        $F8
	dc.b	nA3, $06, nRst
	smpsSetvoice        $04
	smpsPan             panLeft, $00
	smpsAlterVol        $01
	dc.b	nA4, $0C, nG5
	smpsAlterVol        $0E
	dc.b	nA4, $06
	smpsAlterVol        $F2
	dc.b	nF5, $12, nE5, $0C, nC5
	smpsAlterVol        $0E
	dc.b	nE5, nC5, $60, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nG4, nG5
	smpsAlterVol        $0E
	dc.b	nG4, $06
	smpsAlterVol        $F2
	dc.b	nF5, $12, nE5, $0C, nB4
	smpsAlterVol        $0E
	dc.b	nE5, nB4
	smpsAlterVol        $F2
	dc.b	nC5, $18, nA4
	smpsAlterVol        $0E
	dc.b	$24, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nA4, nG5
	smpsAlterVol        $0E
	dc.b	nA4, $06
	smpsAlterVol        $F2
	dc.b	nF5, $12, nE5, $0C, nC5
	smpsAlterVol        $0E
	dc.b	nE5, nC5, $60, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nG4, nG5
	smpsAlterVol        $0E
	dc.b	nG4, $06
	smpsAlterVol        $F2
	dc.b	nF5, $12, nE5, $0C, nB4
	smpsAlterVol        $0E
	dc.b	nE5, nB4
	smpsAlterVol        $F2
	dc.b	nC5, $18, nE5
	smpsAlterVol        $0E
	dc.b	$48, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nC5, nD5, nE5, $18
	smpsAlterVol        $0E
	dc.b	$0C
	smpsAlterVol        $F2
	dc.b	nA5, $18
	smpsAlterVol        $0E
	dc.b	$18, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nC6, $12, nB5, nA5, $18, nF5
	smpsAlterVol        $0E
	dc.b	$0C
	smpsAlterVol        $F2
	dc.b	nE5, $18
	smpsAlterVol        $0E
	dc.b	$30, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nE5, $06, nF5, nE5, $0C
	smpsAlterVol        $0E
	dc.b	$06, nF5, nE5, $24, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nC5, nD5, nE5, $18
	smpsAlterVol        $0E
	dc.b	$0C
	smpsAlterVol        $F2
	dc.b	nA5, $18
	smpsAlterVol        $0E
	dc.b	$18, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nC6, $12, nB5, nA5, $18, nD6
	smpsAlterVol        $0E
	dc.b	$0C
	smpsAlterVol        $F2
	dc.b	nB5, $18
	smpsAlterVol        $0E
	dc.b	$30, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nB5, $06, nC6, nA5, $0C
	smpsAlterVol        $0E
	dc.b	nB5, $06, nC6, nA5, $3C, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nA5, nRst, $06, nG5, $12, nF5, $18
	smpsAlterVol        $0E
	dc.b	$18, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nE5, $12, nD5, nC5, $18
	smpsAlterVol        $0E
	dc.b	$18, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nB4, $18
	smpsAlterVol        $0E
	dc.b	$0C
	smpsAlterVol        $F2
	dc.b	nA4, $18
	smpsAlterVol        $0E
	dc.b	$78, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nA5, $12, nG5, nF5, $18
	smpsAlterVol        $0E
	dc.b	$18, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nE5, $12, nD5, nF5, $18
	smpsAlterVol        $0E
	dc.b	$18, nRst, $0C
	smpsAlterVol        $F2
	dc.b	nE5, $12, nAb4, nB4, $0C, nD5
	smpsAlterVol        $0E
	dc.b	nB4, $06
	smpsAlterVol        $F2
	dc.b	nF5, $12, nG5, $0C, nE5, $12
	smpsAlterVol        $0E
	dc.b	nG5, nE5, $0C, nRst, $30
	smpsAlterVol        $F1
	smpsJump            MistyRain_FM2

; FM3 Data
MistyRain_FM3:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nE5, $60, nEb5, nD5, nE5, $30, nEb5, nE4, nE5, nEb5, $60, nF5
	dc.b	nE5, $30
	smpsSetvoice        $04
	smpsPan             panRight, $00
	smpsAlterVol        $FE
	dc.b	nA4, $0C, nG5, $12, nF5, nE5, $0C, nC5, $78, nRst, $0C, nG4
	dc.b	nG5, $12, nF5, nE5, $0C, nB4, $24, nC5, $18, nA4, $3C, nRst
	dc.b	$0C, nA4, nG5, $12, nF5, nE5, $0C, nC5, $78, nRst, $0C, nG4
	dc.b	nG5, $12, nF5, nE5, $0C, nB4, $24, nC5, $18, nE5, $60, nRst
	dc.b	$0C, nC5, nD5, nE5, $24, nA5, $30, nRst, $0C, nC6, $12, nB5
	dc.b	nA5, $18, nF5, $24, nE5, $48, nRst, $0C, nE5, $06, nF5, nE5
	dc.b	$3C, nRst, $0C, nC5, nD5, nE5, $24, nA5, $30, nRst, $0C, nC6
	dc.b	$12, nB5, nA5, $18, nD6, $24, nB5, $48, nRst, $0C, nB5, $06
	dc.b	nC6, nA5, $54, nRst, $0C, nA5, $12, nG5, nF5, $30, nRst, $0C
	dc.b	nE5, $12, nD5, nC5, $30, nRst, $0C, nB4, $24, nA4, $7F, smpsNoAttack
	dc.b	$11, nRst, $0C, nA5, $12, nG5, nF5, $30, nRst, $0C, nE5, $12
	dc.b	nD5, nF5, $30, nRst, $0C, nE5, $12, nAb4, nB4, $0C, nD5, $12
	dc.b	nF5, nG5, nE5, $30, nRst, $1E
	smpsAlterVol        $02
	smpsJump            MistyRain_FM3

; FM4 Data
MistyRain_FM4:
	smpsPan             panRight, $00

MistyRain_Jump01:
	smpsSetvoice        $00
	dc.b	nB4, $30, nC5, nC5, $60, nA4, nC5, $30, nB4, nC5, $60, $60
	dc.b	nD5, nC5, $30, nRst
	smpsSetvoice        $02
	smpsAlterVol        $08

MistyRain_Loop03:
	dc.b	nC4, $7F, smpsNoAttack, $29, nD4, $18, nB3, $24, nC4, nA3, $60, nB3
	dc.b	$18
	smpsLoop            $00, $02, MistyRain_Loop03
	dc.b	nC4, $4E, nRst, $06, nC4, nD4, nE4, $30, nA4, nG4, $24, nE4
	dc.b	$30, $06, nF4, nE4, $24, nC4, $3C, nA3, $24, nC4, $2A, nRst
	dc.b	$06, nC4, nD4, nE4, $24, nA4, nC5, $18, nB4, $0C, nA4, nE4
	dc.b	nA4, $18, nE4, nC4, $60, nRst, $0C
	smpsSetvoice        $07
	smpsNoteFill        $0B
	smpsAlterVol        $FE
	dc.b	nBb3, $06, nA3, nG3, nA3, nBb3, $0C, $06, nC4, nD4, nC4, nBb3
	dc.b	nC4, nD4, $0C, $06, nE4
	smpsNoteFill        $00
	dc.b	nF4, nE4, nD4, nE4, nF4, nG4, nA4, nBb4, nA4, nG4, nF4, nG4
	dc.b	nA4, nBb4, nC5, nD5, nE5, nF5, nE5, $48, nD5, $06, nC5, nB4
	dc.b	nC5, nB4, $24, nA4, $30, nBb3, $06, nA3, nG3, nA3, nBb3, nA3
	dc.b	nBb3, nC4, nD4, nC4, nBb3, nC4, nD4, nC4, nBb3, nC4, nE4, nD4
	dc.b	nC4, nB3, nF4, nE4, nD4, nC4, nG4, nF4, nE4, nD4, nA4, nB4
	dc.b	nD5, nF5, nE5, $50, nRst, $04
	smpsSetvoice        $02
	smpsAlterVol        $FD
	dc.b	nE5, nF5, nFs5
	smpsNoteFill        $08
	dc.b	nG5, $12, $12, $12
	smpsNoteFill        $00
	dc.b	nRst, $2A
	smpsAlterVol        $FD
	smpsJump            MistyRain_Jump01

; FM5 Data
MistyRain_FM5:
	smpsPan             panLeft, $00

MistyRain_Jump00:
	smpsSetvoice        $00
	dc.b	nA4, $60, $60, nF4, nA4, $30, $30, $60, $60, $60, $30, nRst
	smpsSetvoice        $02
	smpsAlterVol        $08

MistyRain_Loop02:
	dc.b	nA3, $7F, smpsNoAttack, $29, nB3, $18, nG3, $24, nA3, nE3, $60, nG3
	dc.b	$18
	smpsLoop            $00, $02, MistyRain_Loop02
	dc.b	nA3, $4E, nRst, $06, nA3, nB3, nC4, $30, nF4, nE4, $24, nC4
	dc.b	$30, nB3, $0C, nC4, $24, nA3, nE3, $18, nF3, $24, nA3, $2A
	dc.b	nRst, $06, nA3, nB3, nC4, $24, nF4, nA4, $18, nE4, $24, nC4
	dc.b	$18, nA3, nE3, $60, nRst, $0C, nG3, $60, nF3, $30, nBb3, nC4
	dc.b	$24, nA4, $3C, nC4, $24, nE4, $3C, nD4, $30, nF4, nE4, nB4
	dc.b	nC5, $24, nB4, $2C, nRst, $04
	smpsAlterVol        $FB
	dc.b	nCs5, nD5, nEb5
	smpsNoteFill        $08
	dc.b	nE5, $12, $12, $12
	smpsNoteFill        $00
	dc.b	nRst, $2A
	smpsAlterVol        $FD
	smpsJump            MistyRain_Jump00

; PSG1 Data
MistyRain_PSG1:
	smpsNoteFill        $00
	smpsPSGvoice        fTone_01
	dc.b	nA1, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $03
	dc.b	$2A
	smpsPSGAlterVol     $F9
	dc.b	nEb2, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGAlterVol     $FC
	dc.b	nB1, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGAlterVol     $FC
	dc.b	nD2, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $03
	dc.b	$2A
	smpsPSGAlterVol     $F9
	dc.b	nC2, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGAlterVol     $FC
	dc.b	nB1, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGAlterVol     $FC
	dc.b	nA1, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $03
	dc.b	$2A
	smpsPSGAlterVol     $F9
	dc.b	nEb2, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGAlterVol     $FC
	dc.b	nFs2, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGAlterVol     $FC
	dc.b	nF2, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $03
	dc.b	$2A
	smpsPSGAlterVol     $F9
	dc.b	nA2, $12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $02
	dc.b	$12
	smpsPSGAlterVol     $03
	dc.b	$2A
	smpsPSGvoice        fTone_05
	smpsNoteFill        $04
	smpsPSGAlterVol     $FB

MistyRain_Loop29:
	dc.b	nF0, $06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop29
	dc.b	$0C, $0C

MistyRain_Loop2A:
	dc.b	$06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop2A
	dc.b	$0C, nG0

MistyRain_Loop2B:
	dc.b	nA0, $06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop2B
	dc.b	$0C, $0C

MistyRain_Loop2C:
	dc.b	$06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop2C
	dc.b	$0C, nG0
	smpsLoop            $01, $03, MistyRain_Loop29

MistyRain_Loop2D:
	dc.b	nF0, $06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop2D
	dc.b	$0C, $0C

MistyRain_Loop2E:
	dc.b	$06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop2E
	dc.b	$0C, nG0

MistyRain_Loop2F:
	dc.b	nA0, $06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop2F
	dc.b	$0C, $0C

MistyRain_Loop30:
	dc.b	$06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop30
	dc.b	$0C, $0C
	smpsPSGvoice        $00
	smpsNoteFill        $00
	smpsPSGAlterVol     $02
	dc.b	nF0, $7F, smpsNoAttack, $41, nA0, $7F, smpsNoAttack, $41, nF0, $60, nB0, nB0
	dc.b	$3C
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $FF
	dc.b	$18
	smpsPSGAlterVol     $FE
	dc.b	nG1, $09, nRst, nG1, nRst, nG1, nRst, $33
	smpsPSGAlterVol     $FE
	smpsJump            MistyRain_PSG1

; PSG2 Data
MistyRain_PSG2:
	dc.b	nRst, $60
	smpsLoop            $00, $08, MistyRain_PSG2
	smpsPSGvoice        fTone_05

MistyRain_Loop20:
	smpsNoteFill        $04
	dc.b	nC0, $06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsLoop            $00, $02, MistyRain_Loop20
	smpsNoteFill        $04

MistyRain_Loop25:
	dc.b	$0C, $0C

MistyRain_Loop21:
	dc.b	$06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop21
	dc.b	$0C, nD0

MistyRain_Loop22:
	dc.b	nE0, $06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop22
	dc.b	$0C, $0C

MistyRain_Loop23:
	dc.b	$06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop23
	dc.b	$0C, nD0

MistyRain_Loop24:
	dc.b	nC0, $06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop24
	smpsLoop            $01, $03, MistyRain_Loop25
	dc.b	$0C, $0C

MistyRain_Loop26:
	dc.b	$06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop26
	dc.b	$0C, nD0

MistyRain_Loop27:
	dc.b	nE0, $06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop27
	dc.b	$0C, $0C

MistyRain_Loop28:
	dc.b	$06, $06, $0C
	smpsNoteFill        $00
	dc.b	$0C
	smpsNoteFill        $04
	smpsLoop            $00, $02, MistyRain_Loop28
	dc.b	$0C, $0C
	smpsPSGvoice        $00
	smpsNoteFill        $00
	smpsPSGAlterVol     $02
	dc.b	nBb0, $60, nC1, $30, nD1, nE1, $60, nC1, nBb0, nF0, $30, nF1
	dc.b	nE1, $3C
	smpsPSGAlterVol     $01
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $FF
	dc.b	$18
	smpsPSGAlterVol     $FE
	dc.b	nD1, $09, nRst, nD1, nRst, nD1, nRst, $33
	smpsJump            MistyRain_PSG2

; PSG3 Data
MistyRain_PSG3:
	smpsPSGform         $E7

MistyRain_Jump03:
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

MistyRain_Loop0F:
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02

MistyRain_Loop0E:
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MistyRain_Loop0E
	dc.b	$0C
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$0C
	smpsLoop            $01, $03, MistyRain_Loop0F
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02

MistyRain_Loop10:
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MistyRain_Loop10
	dc.b	$0C
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FA
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

MistyRain_Loop12:
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02

MistyRain_Loop11:
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MistyRain_Loop11
	dc.b	$0C
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	$0C
	smpsLoop            $01, $03, MistyRain_Loop12
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02

MistyRain_Loop13:
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MistyRain_Loop13
	dc.b	$0C
	smpsPSGvoice        fTone_09
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $FA
	dc.b	$18
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

MistyRain_Loop14:
	dc.b	$0C
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, MistyRain_Loop14

MistyRain_Loop16:
	dc.b	$06, $06

MistyRain_Loop15:
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$0C
	smpsLoop            $00, $03, MistyRain_Loop15
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsLoop            $01, $06, MistyRain_Loop16
	dc.b	$06, $06

MistyRain_Loop17:
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$0C
	smpsLoop            $00, $03, MistyRain_Loop17
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$18
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

MistyRain_Loop18:
	dc.b	$0C
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, MistyRain_Loop18

MistyRain_Loop1A:
	dc.b	$06, $06

MistyRain_Loop19:
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$0C
	smpsLoop            $00, $03, MistyRain_Loop19
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsLoop            $01, $06, MistyRain_Loop1A
	dc.b	$06, $06

MistyRain_Loop1B:
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$0C
	smpsLoop            $00, $03, MistyRain_Loop1B
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$18
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $02

MistyRain_Loop1C:
	dc.b	$0C
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $03, MistyRain_Loop1C

MistyRain_Loop1E:
	dc.b	$06, $06

MistyRain_Loop1D:
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$0C
	smpsLoop            $00, $03, MistyRain_Loop1D
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsLoop            $01, $05, MistyRain_Loop1E
	dc.b	$06, $06

MistyRain_Loop1F:
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGvoice        fTone_02
	dc.b	$0C
	smpsLoop            $00, $03, MistyRain_Loop1F
	smpsPSGvoice        fTone_01
	dc.b	$0C
	smpsPSGAlterVol     $FE
	dc.b	$12, $12, $0C
	smpsPSGvoice        fTone_09
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $06
	dc.b	$04
	smpsPSGAlterVol     $FC
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FD
	dc.b	$18
	smpsJump            MistyRain_Jump03

MistyRain_Voices:
;	Voice $00
;	$27
;	$14, $30, $51, $62, 	$5C, $5C, $5C, $5C, 	$00, $00, $00, $00
;	$04, $1B, $04, $04, 	$FA, $F8, $F8, $FA, 	$28, $08, $0C, $08
	smpsVcAlgorithm     $07
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $05, $03, $01
	smpsVcCoarseFreq    $02, $01, $00, $04
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1C, $1C, $1C, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $04, $04, $1B, $04
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0A, $08, $08, $0A
	smpsVcTotalLevel    $08, $0C, $08, $28

;	Voice $01
;	$3A
;	$32, $01, $52, $31, 	$1F, $1F, $1F, $18, 	$01, $1F, $00, $00
;	$00, $0F, $00, $00, 	$5A, $0F, $03, $1A, 	$3B, $30, $4F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $00, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $01
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $00, $00, $05
	smpsVcReleaseRate   $0A, $03, $0F, $0A
	smpsVcTotalLevel    $00, $4F, $30, $3B

;	Voice $02
;	$2C
;	$71, $41, $51, $11, 	$12, $12, $12, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$00, $06, $00, $06, 	$15, $00, $15, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $04, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $00, $06, $00
	smpsVcTotalLevel    $00, $15, $00, $15

;	Voice $03
;	$3C
;	$0F, $0F, $12, $70, 	$1F, $1F, $1F, $1F, 	$00, $0F, $15, $13
;	$00, $0F, $0F, $0F, 	$07, $29, $BF, $29, 	$00, $10, $0A, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $01, $00, $00
	smpsVcCoarseFreq    $00, $02, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $15, $0F, $00
	smpsVcDecayRate2    $0F, $0F, $0F, $00
	smpsVcDecayLevel    $02, $0B, $02, $00
	smpsVcReleaseRate   $09, $0F, $09, $07
	smpsVcTotalLevel    $00, $0A, $10, $00

;	Voice $04
;	$3E
;	$38, $01, $7A, $34, 	$59, $D9, $5F, $9C, 	$0F, $04, $0F, $0A
;	$02, $02, $05, $05, 	$AF, $AF, $66, $66, 	$28, $00, $23, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $28

;	Voice $05
;	$04
;	$30, $74, $70, $64, 	$00, $11, $1F, $11, 	$00, $06, $00, $06
;	$00, $03, $00, $03, 	$0B, $1E, $0E, $1E, 	$25, $00, $25, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $07, $07, $03
	smpsVcCoarseFreq    $04, $00, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1F, $11, $00
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $00, $06, $00
	smpsVcDecayRate2    $03, $00, $03, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0E, $0E, $0E, $0B
	smpsVcTotalLevel    $00, $25, $00, $25

;	Voice $06
;	$2A
;	$30, $70, $08, $01, 	$1F, $1F, $1F, $1F, 	$08, $10, $0E, $0C
;	$00, $03, $06, $05, 	$30, $20, $29, $28, 	$22, $14, $2A, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $01, $08, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0E, $10, $08
	smpsVcDecayRate2    $05, $06, $03, $00
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $08, $09, $00, $00
	smpsVcTotalLevel    $00, $2A, $14, $22

;	Voice $07
;	$35
;	$21, $31, $20, $14, 	$8E, $8E, $91, $91, 	$00, $05, $00, $00
;	$01, $02, $02, $02, 	$48, $36, $17, $08, 	$17, $01, $0B, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $02, $03, $02
	smpsVcCoarseFreq    $04, $00, $01, $01
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $11, $11, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $05, $00
	smpsVcDecayRate2    $02, $02, $02, $01
	smpsVcDecayLevel    $00, $01, $03, $04
	smpsVcReleaseRate   $08, $07, $06, $08
	smpsVcTotalLevel    $00, $0B, $01, $17

