AllDayLong_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     AllDayLong_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       AllDayLong_DAC,	$00, $F2
	smpsHeaderFM        AllDayLong_FM1,	$00, $00
	smpsHeaderFM        AllDayLong_FM2,	$00, $00
	smpsHeaderFM        AllDayLong_FM3,	$00, $00
	smpsHeaderFM        AllDayLong_FM4,	$00, $00
	smpsHeaderFM        AllDayLong_FM5,	$00, $00
	smpsHeaderFM        AllDayLong_FM6,	$00, $00
	smpsHeaderPSG       AllDayLong_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       AllDayLong_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       AllDayLong_PSG3,	$00, $00, $00, $00

; DAC Data
AllDayLong_DAC:
; PSG3 Data
AllDayLong_PSG3:
	smpsStop

; FM1 Data
AllDayLong_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $09
	smpsPan             panCenter, $00
	dc.b	nC2, $08, nRst, $02
	smpsAlterVol        $03
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $06
	dc.b	nC2, $03, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $F7
	dc.b	nC2, $08, nRst, $0C
	smpsSetvoice        $00
	smpsAlterVol        $03
	dc.b	nC2, $09, nRst, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FD
	dc.b	nC2, $09, nRst, $0B
	smpsSetvoice        $07
	smpsAlterVol        $76
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $8D
	dc.b	nC2, $08, nRst, $01
	smpsAlterVol        $10
	dc.b	nC2, $09, nRst, $01
	smpsSetvoice        $08
	smpsAlterVol        $63
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $8A
	dc.b	nC2, $08, nRst, $01
	smpsAlterVol        $03
	dc.b	nC2, $04, nRst, $01
	smpsAlterVol        $06
	dc.b	nC2, $04, nRst, $01
	smpsSetvoice        $09
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $8D
	dc.b	nC2, $08, nRst, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FD
	dc.b	nC2, $08, nRst, $0C
	smpsSetvoice        $00
	smpsAlterVol        $03
	dc.b	nC2, $08, nRst, $02
	smpsAlterVol        $10
	dc.b	nC2, $08, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $ED
	dc.b	nC2, $09, nRst, $02
	smpsAlterVol        $03
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $06
	dc.b	nC2, $03, nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $FA
	dc.b	nC2, $09, nRst, $0B
	smpsSetvoice        $0C
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $FD
	dc.b	nC2, $09, nRst, $0B
	smpsSetvoice        $00
	smpsAlterVol        $76
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $8D
	dc.b	nC2, $08, nRst, $01
	smpsAlterVol        $10
	dc.b	nC2, $08, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $ED
	dc.b	nC2, $08, nRst, $02
	smpsAlterVol        $03
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $06
	dc.b	nC2, $03, nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $FA
	dc.b	nC2, $09, nRst, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FD
	dc.b	nC2, $08, nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $09
	dc.b	nC2, $04, nRst, $02
	smpsAlterVol        $0A
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $F0
	dc.b	nC2, $08, nRst, $02
	smpsAlterVol        $10
	dc.b	nC2, $08, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $ED
	dc.b	nC2, $09, nRst, $01
	smpsSetvoice        $0E
	smpsAlterVol        $76
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $8D
	dc.b	nC2, $04, nRst, $01
	smpsAlterVol        $06
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $FA
	dc.b	nC2, $0A, nRst, $02
	smpsAlterVol        $10
	dc.b	nC2, $09, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $ED
	dc.b	nC2, $09, nRst, $01
	smpsSetvoice        $12
	smpsAlterVol        $76
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $9D
	dc.b	nC2, $09, nRst, $01
	smpsAlterVol        $F0
	dc.b	nC2, $08, nRst, $02
	smpsAlterVol        $10
	dc.b	nC2, $08, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $ED
	dc.b	nC2, $09, nRst, $02
	smpsAlterVol        $03
	smpsPan             panLeft, $00
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $06
	smpsPan             panRight, $00
	dc.b	nC2, $03, nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $FA
	smpsPan             panCenter, $00
	dc.b	nC2, $09, nRst, $02
	smpsAlterVol        $10
	dc.b	nC2, $08, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $ED
	dc.b	nC2, $09, nRst, $01
	smpsSetvoice        $14
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $13
	dc.b	nC2, $09, nRst, $01
	smpsAlterVol        $F0
	dc.b	nC2, $09, nRst, $01
	smpsAlterVol        $10
	dc.b	nC2, $09, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $ED
	dc.b	nC2, $09, nRst, $02
	smpsAlterVol        $03
	smpsPan             panLeft, $00
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $06
	smpsPan             panRight, $00
	dc.b	nC2, $03, nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $FA
	smpsPan             panCenter, $00
	dc.b	nC2, $09, nRst, $02
	smpsAlterVol        $10
	dc.b	nC2, $08, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $ED
	dc.b	nC2, $09, nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $13
	dc.b	nC2, $09, nRst, $01
	smpsAlterVol        $F0
	dc.b	nC2, $09, nRst, $01
	smpsAlterVol        $10
	dc.b	nC2, $09, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $63
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $8A
	dc.b	nC2, $08, nRst, $02
	smpsAlterVol        $03
	smpsPan             panLeft, $00
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $06
	smpsPan             panRight, $00
	dc.b	nC2, $03, nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $FA
	smpsPan             panCenter, $00
	dc.b	nC2, $09, nRst, $02
	smpsAlterVol        $10
	dc.b	nC2, $08, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $ED
	dc.b	nC2, $09, nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $13
	dc.b	nC2, $09, nRst, $01
	smpsAlterVol        $F0
	dc.b	nC2, $09, nRst, $01
	smpsAlterVol        $10
	dc.b	nC2, $09, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $63
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $8A
	dc.b	nC2, $08, nRst, $02
	smpsAlterVol        $03
	smpsPan             panLeft, $00
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $06
	smpsPan             panRight, $00
	dc.b	nC2, $03, nRst, $02
	smpsAlterVol        $F7
	smpsPan             panCenter, $00
	dc.b	nC2, $09, nRst, $02
	smpsSetvoice        $15
	smpsPan             panLeft, $00
	dc.b	nC2, $01, nRst, $09
	smpsAlterVol        $03
	dc.b	nC2, $01, nRst, $09
	smpsSetvoice        $03
	smpsAlterVol        $FD
	smpsPan             panCenter, $00
	dc.b	nC2, nRst, $02
	smpsSetvoice        $15
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $0A
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nRst, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FD
	smpsPan             panCenter, $00
	dc.b	nC2, $09, nRst, $01
	smpsSetvoice        $16
	smpsAlterVol        $76
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $17
	smpsAlterVol        $8A
	dc.b	nC2, $08, nRst, $3E
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	dc.b	nG2, $03, nRst, $02, nE2, $03, nRst, $02
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nE2, $0C
	smpsStop

; FM2 Data
AllDayLong_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $26, nRst, $02
	smpsSetvoice        $04
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $98
	dc.b	nA4, $14
	smpsAlterVol        $FA
	dc.b	smpsNoAttack, nA4, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA5, $0F, nRst, $02, nB5, $1C, nRst, $02, nE6, $1C, nRst, $02
	dc.b	nD6, $1C, nRst, $02, nB5, $13, nRst, $02
	smpsAlterVol        $06
	dc.b	nA4, $15
	smpsAlterVol        $FA
	dc.b	smpsNoAttack, nA4, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA5, $0F, nRst, $01, nB5, $1C, nRst, $03, nC6, $1C, nRst, $02
	dc.b	nD6, $1D, nRst, $02, nC6, $09, nRst, $02, nB5, $08, nRst, $03
	smpsSetvoice        $0F
	smpsAlterVol        $06
	dc.b	nA5, $3D, nRst, $02, smpsNoAttack, nRst, $01, nE5, $08, nRst, $02, nF5
	dc.b	$08, nRst, $02, nG5, $29, nRst, $01, nB5, $27, nRst, $02, nC6
	dc.b	$51, nRst, $02, nB5, $51, nRst, $02, smpsNoAttack, nRst, $01, nA5, $0C
	dc.b	nRst, $12, nA5, $0D, nRst, $12, nG5, $05, nRst, $06, nA5, $0A
	dc.b	smpsNoAttack, nA5, $4E, nRst, $02
	smpsAlterVol        $68
	dc.b	smpsNoAttack, nRst
	smpsStop

; FM3 Data
AllDayLong_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $26, nRst, $03
	smpsSetvoice        $04
	smpsAlterVol        $9E
	dc.b	nE4, $14, smpsNoAttack, nE4, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC5, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE5, $0F, nRst, $02, nE5, $1C, nRst, $02, nB5, $1C, nRst, $02
	dc.b	nB5, $1C, nRst, $02, nG5, $13, nRst, $02, nF4, $15, smpsNoAttack, nF4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb4, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB4, smpsNoAttack, nC5, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF5, $0F, nRst, $01, smpsNoAttack, nRst, nF5, $1B, nRst, $03, nG5, $1C
	dc.b	nRst, $02, nB5, $1D, nRst, $02, nG5, $09, nRst, $02, nG5, $09
	dc.b	nRst, $02
	smpsSetvoice        $10
	smpsAlterVol        $F7
	dc.b	nA7, nRst, $04
	smpsAlterVol        $01
	dc.b	nAb7, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nG7, $02, nRst, $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nRst, $05
	smpsAlterVol        $01
	dc.b	nF7, $01, nRst, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $01
	dc.b	nEb7, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nD7, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nCs7, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nC7, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nB6, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nBb6, $01, nRst, $05
	smpsAlterVol        $01
	dc.b	nA6, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nAb6, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nG6, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nFs6, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nF6, $02, nRst, $04
	smpsAlterVol        $01
	dc.b	nE6, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nEb6, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nD6, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nCs6, $01, nRst, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $01
	dc.b	nB5, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nBb5, $01, nRst, $05
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nRst, $04
	smpsAlterVol        $01
	dc.b	nAb5, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nG5, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nFs5, $01, nRst, $05
	smpsAlterVol        $01
	dc.b	nF5, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nE5, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nEb5, $01, nRst, $04
	smpsAlterVol        $01
	dc.b	nD5, $01, nRst, $05
	smpsAlterVol        $EA
	dc.b	nA5, $50, nRst, $02, smpsNoAttack, nRst, $01, nG5, $50, nRst, $03, nD5
	dc.b	$0C, nRst, $12, nD5, $0D, nRst, $12, nC5, $05, nRst, $06, nD5
	dc.b	$0A, smpsNoAttack, nD5, $4E, nRst, $02
	smpsAlterVol        $62
	dc.b	smpsNoAttack, nRst
	smpsStop

; FM4 Data
AllDayLong_FM4:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $26, nRst, $03
	smpsAlterVol        $92
	dc.b	nA2, $08, nRst, $02, nA2, $08, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nA2, $06, nRst, $05
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nA2, $1C, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nA2, $04, nRst, $10
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nG2, $08, nRst, $02, nG2, $08, nRst, $02
	smpsSetvoice        $0A
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $05
	smpsAlterVol        $8D
	dc.b	nG2, $04, nRst, $05
	smpsSetvoice        $01
	smpsAlterVol        $73
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nG2, $1B, nRst, $02
	smpsSetvoice        $0B
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $05
	smpsAlterVol        $8D
	dc.b	nG2, $05, nRst
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nG2, $08, nRst, $02
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nF2, $08, nRst, $02, nF2, $08, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nF2, $05, nRst
	smpsSetvoice        $0D
	smpsAlterVol        $73
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $01
	smpsAlterVol        $92
	dc.b	nF2, $1C, nRst, $01, smpsNoAttack, nRst, $01
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nF2, $04, nRst, $10
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nG2, $08, nRst, $02, nG2, $08, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nG2, $05, nRst
	smpsSetvoice        $0D
	smpsAlterVol        $73
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $01
	smpsAlterVol        $92
	dc.b	nG2, $1C, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nG2, $05, nRst, $06
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nG2, $09, nRst, $02, nA2, $14, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nA3, $06, nRst, $05
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nA2, $1D, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nA3, $05, nRst, $0F
	smpsSetvoice        $13
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nG2, $12, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nG3, $06, nRst, $05
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nG2, $1D, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nG3, $05, nRst, $10
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nF2, $12, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nF3, $06, nRst, $05
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nF2, $1D, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nF3, $05, nRst, $10
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nE2, $12, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nE3, $06, nRst, $05
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nE2, $1D, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nE3, $05, nRst
	smpsSetvoice        $01
	smpsAlterVol        $73
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE2, $07, nRst, $03, nA2, $08, nRst, $02, nA2, $08, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nA3, $07, nRst, $03
	smpsSetvoice        $0D
	smpsAlterVol        $73
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $01
	smpsAlterVol        $92
	dc.b	nA2, $12, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FB
	dc.b	nA3, $06, nRst, $04
	smpsSetvoice        $01
	smpsAlterVol        $05
	dc.b	nG2, $09, nRst, $02, nA3, $28, smpsNoAttack, nA3, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb3, $01, smpsNoAttack, nG3, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF3, smpsNoAttack, nE3, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb3, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD3, $01, smpsNoAttack, nCs3, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB2, smpsNoAttack, nBb2, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA2, $1C, nRst, $02
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $02
	smpsStop

; FM5 Data
AllDayLong_FM5:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panRight, $00
	dc.b	nRst, $0A
	smpsSetvoice        $01
	dc.b	nRst, $27, nRst, $02
	smpsSetvoice        $04
	smpsAlterVol        $9E
	smpsAlterNote       $08
	dc.b	nA4, $15
	smpsAlterVol        $FA
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA5, $0F, nRst, $02
	smpsAlterNote       $09
	dc.b	nB5, $1C, nRst, $02
	smpsAlterNote       $06
	dc.b	nE6, $1C, nRst, $02
	smpsAlterNote       $05
	dc.b	nD6, $1D, nRst, $02
	smpsAlterNote       $09
	dc.b	nB5, $13, nRst, $02
	smpsAlterVol        $06
	smpsAlterNote       $08
	dc.b	nA4, $15
	smpsAlterVol        $FA
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF5, $02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA5, $0F, nRst, $02
	smpsAlterNote       $09
	dc.b	nB5, $1C, nRst, $02
	smpsAlterNote       $05
	dc.b	nC6, $1D, nRst, $02, nD6, $1D, nRst, $02, nC6, $09, nRst, $03
	smpsAlterNote       $09
	dc.b	nB5, $08, nRst, $02
	smpsSetvoice        $0F
	smpsAlterVol        $06
	smpsAlterNote       $08
	dc.b	nA5, $3D, nRst, $02
	smpsAlterNote       $06
	dc.b	nE5, $08, nRst, $03, nF5, $08, nRst, $02
	smpsAlterNote       $07
	dc.b	nG5, $28, nRst, $02
	smpsAlterNote       $09
	dc.b	nB5, $27, nRst, $02
	smpsAlterNote       $05
	dc.b	nC6, $51, nRst, $02
	smpsAlterNote       $09
	dc.b	nB5, $51, nRst, $02
	smpsAlterNote       $08
	dc.b	nA5, $0C
	smpsModSet          $00, $02, $03, $03
	dc.b	nRst, $13, nA5, $1F, smpsNoAttack, nA5, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $07, smpsNoAttack, nG5, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA5, $07, smpsNoAttack, nA5, $44, nRst, $02
	smpsAlterVol        $62
	dc.b	smpsNoAttack, nRst, $02
	smpsStop

; FM6 Data
AllDayLong_FM6:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panLeft, $00
	dc.b	nRst, $14
	smpsSetvoice        $01
	dc.b	nRst, $27, nRst, $02
	smpsSetvoice        $06
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $A0
	smpsAlterNote       $04
	dc.b	nA4, $14
	smpsAlterVol        $FA
	dc.b	smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nF5, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nA5, $0F, nRst, $02
	smpsModSet          $00, $02, $01, $03
	smpsAlterNote       $05
	dc.b	nB5, $1C, nRst, $03
	smpsAlterNote       $03
	dc.b	nE6, $1B, nRst, $02, nD6, $1D, nRst, $03
	smpsAlterNote       $05
	dc.b	nB5, $12, nRst, $02
	smpsAlterVol        $06
	smpsAlterNote       $04
	dc.b	nA4, $15
	smpsAlterVol        $FA
	dc.b	smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nF5, $02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nA5, $0E, nRst, $02
	smpsAlterNote       $05
	dc.b	nB5, $1D, nRst, $03
	smpsAlterNote       $02
	dc.b	nC6, $1C, nRst, $02
	smpsAlterNote       $03
	dc.b	nD6, $1E, nRst, $03
	smpsAlterNote       $02
	dc.b	nC6, $08, nRst, $02
	smpsAlterNote       $05
	dc.b	nB5, $09, nRst, $02
	smpsSetvoice        $11
	smpsAlterVol        $66
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $0F
	smpsAlterVol        $A0
	smpsAlterNote       $04
	dc.b	nA5, $3B, nRst, $03
	smpsAlterNote       $03
	dc.b	nE5, $08, nRst, $02, nF5, $08, nRst, $02
	smpsAlterNote       $04
	dc.b	nG5, $28, nRst, $02
	smpsAlterNote       $05
	dc.b	nB5, $27, nRst, $02
	smpsAlterNote       $02
	dc.b	nC6, $51, nRst, $02
	smpsAlterNote       $05
	dc.b	nB5, $51, nRst, $02
	smpsAlterNote       $04
	dc.b	nA5, $0D, nRst, $12, nA5, $20, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nG5, $07, smpsNoAttack, nG5, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nAb5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nA5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	nA5, $07, smpsNoAttack, nA5, $3A, nRst, $02
	smpsAlterVol        $60
	dc.b	smpsNoAttack, nRst, $02
	smpsStop

; PSG1 Data
AllDayLong_PSG1:
	dc.b	nRst, $29
	smpsPSGAlterVol     $04
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1, $19
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	nA1, $11
	smpsPSGAlterVol     $02
	dc.b	nA1, $02
	smpsPSGAlterVol     $FA
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $07
	smpsPSGAlterVol     $01
	dc.b	nG1, $19
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	nG1, $10
	smpsPSGAlterVol     $02
	dc.b	nG1, $03
	smpsPSGAlterVol     $FA
	dc.b	nF1, $06
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1, $19
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1, $11
	smpsPSGAlterVol     $02
	dc.b	nF1, $02
	smpsPSGAlterVol     $FA
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	nG1, $19
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	nG1, $13
	smpsPSGAlterVol     $02
	dc.b	nG1, $03
	smpsPSGAlterVol     $F9
	dc.b	nA1, $06
	smpsPSGAlterVol     $02
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	nA1, $03
	smpsPSGAlterVol     $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	nA1, $03
	smpsPSGAlterVol     $FE
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $FE
	dc.b	nA1, $07
	smpsPSGAlterVol     $01
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $02
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	nA1
	smpsPSGAlterVol     $FE
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	nA1, $03
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1, $03
	smpsPSGAlterVol     $02
	dc.b	nA1, $02
	smpsPSGAlterVol     $F7
	dc.b	nG1, $06
	smpsPSGAlterVol     $02
	dc.b	nG1, $03
	smpsPSGAlterVol     $02
	dc.b	nG1, $01
	smpsPSGAlterVol     $FD
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1, $03
	smpsPSGAlterVol     $FE
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $FE
	dc.b	nG1, $07
	smpsPSGAlterVol     $01
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $FD
	dc.b	nG1, $06
	smpsPSGAlterVol     $02
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $FD
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $FE
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1, $03
	smpsPSGAlterVol     $FE
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $F7
	dc.b	nF1, $06
	smpsPSGAlterVol     $02
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1, $06
	smpsPSGAlterVol     $01
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	nF1, $02
	smpsPSGAlterVol     $FE
	dc.b	nF1, $06
	smpsPSGAlterVol     $01
	dc.b	nF1, $02
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FE
	dc.b	nF1, $06
	smpsPSGAlterVol     $01
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	nF1, $02
	smpsPSGAlterVol     $FD
	dc.b	nF1, $06
	smpsPSGAlterVol     $02
	dc.b	nF1, $02
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FD
	dc.b	nF1, $06
	smpsPSGAlterVol     $01
	dc.b	nF1, $02
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FE
	dc.b	nF1, $06
	smpsPSGAlterVol     $01
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	nF1, $02
	smpsPSGAlterVol     $FE
	dc.b	nF1, $06
	smpsPSGAlterVol     $01
	dc.b	nF1, $01
	smpsPSGAlterVol     $02
	dc.b	nF1, $03
	smpsPSGAlterVol     $F7
	dc.b	nE1, $06
	smpsPSGAlterVol     $02
	dc.b	nE1, $02
	smpsPSGAlterVol     $02
	dc.b	nE1
	smpsPSGAlterVol     $FD
	dc.b	nE1, $06
	smpsPSGAlterVol     $01
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	dc.b	nE1, $02
	smpsPSGAlterVol     $FE
	dc.b	nE1, $05
	smpsPSGAlterVol     $01
	dc.b	nE1, $04
	smpsPSGAlterVol     $02
	dc.b	nE1, $01
	smpsPSGAlterVol     $FE
	dc.b	nE1, $06
	smpsPSGAlterVol     $01
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	dc.b	nE1, $02
	smpsPSGAlterVol     $FD
	dc.b	nE1, $06
	smpsPSGAlterVol     $02
	dc.b	nE1, $02
	smpsPSGAlterVol     $02
	dc.b	nE1
	smpsPSGAlterVol     $FD
	dc.b	nE1, $06
	smpsPSGAlterVol     $01
	dc.b	nE1, $02
	smpsPSGAlterVol     $02
	dc.b	nE1
	smpsPSGAlterVol     $FE
	dc.b	nE1, $06
	smpsPSGAlterVol     $01
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	dc.b	nE1, $02
	smpsPSGAlterVol     $FE
	dc.b	nE1, $06
	smpsPSGAlterVol     $01
	dc.b	nE1, $02
	smpsPSGAlterVol     $02
	dc.b	nE1
	smpsPSGAlterVol     $F7
	dc.b	nA2, $08
	smpsPSGAlterVol     $02
	dc.b	nA2, $17
	smpsPSGAlterVol     $FE
	dc.b	nA2, $07
	smpsPSGAlterVol     $02
	dc.b	nA2, $17
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $05
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nA2, $07
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nA2, $10
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA2, $0F
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA2, $10
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA2, $04, nRst, $02
	smpsStop

; PSG2 Data
AllDayLong_PSG2:
	dc.b	nRst, $29
	smpsPSGAlterVol     $04
	smpsAlterNote       $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1, $19
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1, $11
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $FA
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $07
	smpsPSGAlterVol     $01
	dc.b	nG1, $19
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	nG1, $10
	smpsPSGAlterVol     $02
	dc.b	nG1, $03
	smpsPSGAlterVol     $FA
	dc.b	nF1, $06
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1, $19
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1, $11
	smpsPSGAlterVol     $02
	dc.b	nF1, $02
	smpsPSGAlterVol     $FA
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	nG1, $19
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	nG1, $13
	smpsPSGAlterVol     $02
	dc.b	nG1, $03
	smpsPSGAlterVol     $F9
	dc.b	nC2, $06
	smpsPSGAlterVol     $02
	dc.b	nC2, $02
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FD
	dc.b	nC2, $06
	smpsPSGAlterVol     $01
	dc.b	nC2, $02
	smpsPSGAlterVol     $02
	dc.b	nC2, $03
	smpsPSGAlterVol     $FE
	dc.b	nC2, $06
	smpsPSGAlterVol     $01
	dc.b	nC2, $02
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $FE
	dc.b	nC2, $07
	smpsPSGAlterVol     $01
	dc.b	nC2, $02
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $FD
	dc.b	nC2, $06
	smpsPSGAlterVol     $02
	dc.b	nC2, $02
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $FD
	dc.b	nC2, $06
	smpsPSGAlterVol     $01
	dc.b	nC2, $02
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $FE
	dc.b	nC2, $06
	smpsPSGAlterVol     $01
	dc.b	nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $02
	smpsPSGAlterVol     $FE
	dc.b	nC2, $05
	smpsPSGAlterVol     $01
	dc.b	nC2, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $02
	smpsPSGAlterVol     $F7
	smpsAlterNote       $FE
	dc.b	nB1, $06
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1, $01
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FE
	dc.b	nB1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nB1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nB1, $07
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FE
	dc.b	nB1, $06
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FE
	dc.b	nB1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nB1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nB1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nB1
	smpsPSGAlterVol     $F7
	smpsAlterNote       $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FD
	dc.b	nA1, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA1, $01
	smpsPSGAlterVol     $02
	smpsAlterNote       $FD
	dc.b	nA1, $03
	smpsPSGAlterVol     $F7
	dc.b	nG1, $06
	smpsPSGAlterVol     $02
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $FD
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $03
	smpsPSGAlterVol     $02
	dc.b	nG1, $02
	smpsPSGAlterVol     $FE
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1, $04
	smpsPSGAlterVol     $02
	dc.b	nG1, $01
	smpsPSGAlterVol     $FE
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $04
	smpsPSGAlterVol     $02
	dc.b	nG1, $01
	smpsPSGAlterVol     $FD
	dc.b	nG1, $06
	smpsPSGAlterVol     $02
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $FD
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $FE
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $03
	smpsPSGAlterVol     $02
	dc.b	nG1, $02
	smpsPSGAlterVol     $FE
	dc.b	nG1, $06
	smpsPSGAlterVol     $01
	dc.b	nG1, $02
	smpsPSGAlterVol     $02
	dc.b	nG1
	smpsPSGAlterVol     $F7
	smpsAlterNote       $FE
	dc.b	nA2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nA2, $17
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nA2, $07
	smpsPSGAlterVol     $02
	smpsAlterNote       $FE
	dc.b	nA2, $17, nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	nG2, $05
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $FF
	dc.b	nA2, $08
	smpsPSGAlterVol     $02
	dc.b	nA2, $0F
	smpsPSGAlterVol     $01
	dc.b	nA2, $10
	smpsPSGAlterVol     $01
	dc.b	nA2, $0F
	smpsPSGAlterVol     $01
	dc.b	nA2, $10
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2, $04, nRst, $02
	smpsStop

AllDayLong_Voices:
;	Voice $00
;	$25
;	$50, $31, $51, $01, 	$1F, $1F, $1F, $1F, 	$19, $13, $13, $13
;	$00, $12, $12, $12, 	$FF, $AF, $AF, $AF, 	$05, $02, $01, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $03, $05
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $13, $13, $19
	smpsVcDecayRate2    $12, $12, $12, $00
	smpsVcDecayLevel    $0A, $0A, $0A, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $01, $02, $05

;	Voice $01
;	$00
;	$6F, $08, $00, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $08
;	$0F, $06, $06, $08, 	$F9, $19, $19, $2B, 	$20, $32, $10, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $01, $00, $08, $0F
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $0F
	smpsVcDecayLevel    $02, $01, $01, $0F
	smpsVcReleaseRate   $0B, $09, $09, $09
	smpsVcTotalLevel    $00, $10, $32, $20

;	Voice $02
;	$00
;	$6F, $08, $00, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $08
;	$0F, $06, $06, $08, 	$F9, $19, $19, $2B, 	$7F, $7F, $7F, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $01, $00, $08, $0F
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $0F
	smpsVcDecayLevel    $02, $01, $01, $0F
	smpsVcReleaseRate   $0B, $09, $09, $09
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $03
;	$3C
;	$0F, $00, $02, $01, 	$1F, $1F, $1F, $1F, 	$0B, $10, $18, $0D
;	$08, $0F, $18, $0D, 	$56, $47, $5F, $6D, 	$00, $00, $06, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $18, $10, $0B
	smpsVcDecayRate2    $0D, $18, $0F, $08
	smpsVcDecayLevel    $06, $05, $04, $05
	smpsVcReleaseRate   $0D, $0F, $07, $06
	smpsVcTotalLevel    $00, $06, $00, $00

;	Voice $04
;	$32
;	$70, $30, $10, $50, 	$10, $0D, $19, $14, 	$01, $05, $01, $00
;	$02, $01, $00, $00, 	$10, $22, $15, $04, 	$1A, $14, $13, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $01, $03, $07
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $19, $0D, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $05, $01
	smpsVcDecayRate2    $00, $00, $01, $02
	smpsVcDecayLevel    $00, $01, $02, $01
	smpsVcReleaseRate   $04, $05, $02, $00
	smpsVcTotalLevel    $00, $13, $14, $1A

;	Voice $05
;	$00
;	$6F, $08, $01, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $0D
;	$0F, $06, $06, $08, 	$F9, $19, $19, $FB, 	$20, $2D, $0C, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $01, $01, $08, $0F
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $0F
	smpsVcDecayLevel    $0F, $01, $01, $0F
	smpsVcReleaseRate   $0B, $09, $09, $09
	smpsVcTotalLevel    $00, $0C, $2D, $20

;	Voice $06
;	$00
;	$6F, $08, $00, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $08
;	$0F, $06, $06, $08, 	$F9, $19, $19, $2B, 	$1A, $14, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $01, $00, $08, $0F
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $0F
	smpsVcDecayLevel    $02, $01, $01, $0F
	smpsVcReleaseRate   $0B, $09, $09, $09
	smpsVcTotalLevel    $00, $13, $14, $1A

;	Voice $07
;	$25
;	$0F, $00, $02, $01, 	$1F, $1F, $1F, $1F, 	$0B, $10, $18, $0D
;	$08, $0F, $18, $0D, 	$56, $47, $5F, $6D, 	$05, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $18, $10, $0B
	smpsVcDecayRate2    $0D, $18, $0F, $08
	smpsVcDecayLevel    $06, $05, $04, $05
	smpsVcReleaseRate   $0D, $0F, $07, $06
	smpsVcTotalLevel    $00, $00, $00, $05

;	Voice $08
;	$3C
;	$0F, $00, $02, $01, 	$1F, $1F, $1F, $1F, 	$0B, $10, $18, $0D
;	$00, $12, $12, $12, 	$FF, $AF, $AF, $AF, 	$00, $00, $06, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $18, $10, $0B
	smpsVcDecayRate2    $12, $12, $12, $00
	smpsVcDecayLevel    $0A, $0A, $0A, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $06, $00, $00

;	Voice $09
;	$25
;	$50, $31, $51, $01, 	$1F, $1F, $1F, $1F, 	$19, $13, $13, $13
;	$00, $12, $12, $12, 	$FF, $AF, $AF, $6D, 	$05, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $03, $05
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $13, $13, $19
	smpsVcDecayRate2    $12, $12, $12, $00
	smpsVcDecayLevel    $06, $0A, $0A, $0F
	smpsVcReleaseRate   $0D, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $05

;	Voice $0A
;	$00
;	$6F, $08, $01, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $08
;	$0F, $06, $06, $08, 	$F9, $19, $19, $2B, 	$20, $2D, $0C, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $01, $01, $08, $0F
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $0F
	smpsVcDecayLevel    $02, $01, $01, $0F
	smpsVcReleaseRate   $0B, $09, $09, $09
	smpsVcTotalLevel    $00, $0C, $2D, $20

;	Voice $0B
;	$00
;	$6F, $08, $00, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $08
;	$0F, $06, $06, $08, 	$F9, $19, $19, $2B, 	$20, $2D, $0C, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $01, $00, $08, $0F
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $0F
	smpsVcDecayLevel    $02, $01, $01, $0F
	smpsVcReleaseRate   $0B, $09, $09, $09
	smpsVcTotalLevel    $00, $0C, $2D, $20

;	Voice $0C
;	$25
;	$50, $31, $51, $01, 	$1F, $1F, $1F, $1F, 	$19, $13, $13, $13
;	$00, $12, $12, $12, 	$FF, $AF, $AF, $AF, 	$00, $02, $01, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $03, $05
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $13, $13, $19
	smpsVcDecayRate2    $12, $12, $12, $00
	smpsVcDecayLevel    $0A, $0A, $0A, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $01, $02, $00

;	Voice $0D
;	$00
;	$6F, $08, $00, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $08
;	$0F, $06, $06, $08, 	$F9, $19, $19, $FB, 	$20, $32, $10, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $01, $00, $08, $0F
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $0F
	smpsVcDecayLevel    $0F, $01, $01, $0F
	smpsVcReleaseRate   $0B, $09, $09, $09
	smpsVcTotalLevel    $00, $10, $32, $20

;	Voice $0E
;	$25
;	$50, $31, $51, $01, 	$1F, $1F, $1F, $1F, 	$19, $13, $13, $0D
;	$08, $0F, $18, $0D, 	$56, $47, $5F, $6D, 	$05, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $03, $05
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $13, $13, $19
	smpsVcDecayRate2    $0D, $18, $0F, $08
	smpsVcDecayLevel    $06, $05, $04, $05
	smpsVcReleaseRate   $0D, $0F, $07, $06
	smpsVcTotalLevel    $00, $00, $00, $05

;	Voice $0F
;	$24
;	$31, $21, $60, $50, 	$12, $14, $14, $14, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$03, $03, $04, $02, 	$16, $00, $00, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $06, $02, $03
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $02, $04, $03, $03
	smpsVcTotalLevel    $00, $00, $00, $16

;	Voice $10
;	$38
;	$7D, $73, $70, $30, 	$52, $5F, $88, $4C, 	$18, $06, $05, $02
;	$14, $0C, $02, $01, 	$03, $05, $53, $15, 	$14, $25, $11, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $07
	smpsVcCoarseFreq    $00, $00, $03, $0D
	smpsVcRateScale     $01, $02, $01, $01
	smpsVcAttackRate    $0C, $08, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $05, $06, $18
	smpsVcDecayRate2    $01, $02, $0C, $14
	smpsVcDecayLevel    $01, $05, $00, $00
	smpsVcReleaseRate   $05, $03, $05, $03
	smpsVcTotalLevel    $00, $11, $25, $14

;	Voice $11
;	$24
;	$31, $21, $60, $50, 	$12, $14, $14, $14, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$10, $22, $15, $04, 	$16, $00, $00, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $06, $02, $03
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $02, $01
	smpsVcReleaseRate   $04, $05, $02, $00
	smpsVcTotalLevel    $00, $00, $00, $16

;	Voice $12
;	$25
;	$50, $31, $51, $01, 	$1F, $1F, $1F, $1F, 	$0B, $10, $18, $0D
;	$08, $0F, $18, $0D, 	$56, $47, $5F, $6D, 	$05, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $03, $05
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $18, $10, $0B
	smpsVcDecayRate2    $0D, $18, $0F, $08
	smpsVcDecayLevel    $06, $05, $04, $05
	smpsVcReleaseRate   $0D, $0F, $07, $06
	smpsVcTotalLevel    $00, $00, $00, $05

;	Voice $13
;	$00
;	$6F, $08, $01, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $0D
;	$0F, $06, $06, $08, 	$F9, $19, $19, $FB, 	$20, $32, $10, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $01, $01, $08, $0F
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $0F
	smpsVcDecayLevel    $0F, $01, $01, $0F
	smpsVcReleaseRate   $0B, $09, $09, $09
	smpsVcTotalLevel    $00, $10, $32, $20

;	Voice $14
;	$3C
;	$0F, $00, $02, $01, 	$1F, $1F, $1F, $1F, 	$0B, $10, $18, $0D
;	$08, $0F, $18, $0D, 	$56, $47, $5F, $6D, 	$05, $7F, $7F, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $18, $10, $0B
	smpsVcDecayRate2    $0D, $18, $0F, $08
	smpsVcDecayLevel    $06, $05, $04, $05
	smpsVcReleaseRate   $0D, $0F, $07, $06
	smpsVcTotalLevel    $00, $7F, $7F, $05

;	Voice $15
;	$05
;	$10, $51, $01, $34, 	$DF, $1F, $1F, $1F, 	$10, $07, $10, $17
;	$1F, $0F, $14, $1F, 	$F7, $04, $C3, $FB, 	$00, $07, $04, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $05, $01
	smpsVcCoarseFreq    $04, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $17, $10, $07, $10
	smpsVcDecayRate2    $1F, $14, $0F, $1F
	smpsVcDecayLevel    $0F, $0C, $00, $0F
	smpsVcReleaseRate   $0B, $03, $04, $07
	smpsVcTotalLevel    $00, $04, $07, $00

;	Voice $16
;	$3A
;	$22, $00, $30, $01, 	$1F, $1F, $1F, $1F, 	$08, $0D, $0F, $0C
;	$08, $0F, $18, $0D, 	$56, $47, $5F, $6D, 	$08, $68, $00, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $02
	smpsVcCoarseFreq    $01, $00, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0F, $0D, $08
	smpsVcDecayRate2    $0D, $18, $0F, $08
	smpsVcDecayLevel    $06, $05, $04, $05
	smpsVcReleaseRate   $0D, $0F, $07, $06
	smpsVcTotalLevel    $00, $00, $68, $08

;	Voice $17
;	$3A
;	$22, $00, $30, $01, 	$1F, $1F, $1F, $1F, 	$08, $0D, $0F, $0C
;	$11, $08, $14, $11, 	$B1, $38, $A8, $C8, 	$08, $68, $00, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $02
	smpsVcCoarseFreq    $01, $00, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0F, $0D, $08
	smpsVcDecayRate2    $11, $14, $08, $11
	smpsVcDecayLevel    $0C, $0A, $03, $0B
	smpsVcReleaseRate   $08, $08, $08, $01
	smpsVcTotalLevel    $00, $00, $68, $08

