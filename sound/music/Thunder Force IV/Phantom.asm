Phantom_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Phantom_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Phantom_DAC,	$00, $F2
	smpsHeaderFM        Phantom_FM1,	$00, $00
	smpsHeaderFM        Phantom_FM2,	$00, $00
	smpsHeaderFM        Phantom_FM3,	$00, $00
	smpsHeaderFM        Phantom_FM4,	$00, $00
	smpsHeaderFM        Phantom_FM5,	$00, $00
	smpsHeaderFM        Phantom_FM6,	$00, $00
	smpsHeaderPSG       Phantom_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Phantom_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Phantom_PSG3,	$00, $00, $00, $00

; DAC Data
Phantom_DAC:
; PSG1 Data
Phantom_PSG1:
; PSG2 Data
Phantom_PSG2:
; PSG3 Data
Phantom_PSG3:
	smpsStop

; FM1 Data
Phantom_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $12
	smpsPan             panCenter, $00
	dc.b	nE3, $01, nRst, $20, smpsNoAttack, nRst, $22
	smpsSetvoice        $04
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, nRst, $01

Phantom_Jump05:
	smpsAlterVol        $93
	dc.b	smpsNoAttack, nRst, $16
	smpsSetvoice        $00
	dc.b	nE3, $01, nRst, $0A, nE3, $01, nRst, $16, nE3, $01, nRst, $20
	smpsSetvoice        $05
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $93
	dc.b	smpsNoAttack, nRst, $16
	smpsSetvoice        $00
	dc.b	nE3, $01, nRst, $21, nE3, $01, nRst, $21
	smpsSetvoice        $04
	dc.b	smpsNoAttack, nRst, $16
	smpsSetvoice        $00
	dc.b	nE3, $01, nRst, $0A, nE3, $01, nRst, $16, nE3, $01, nRst, $21
	smpsSetvoice        $04
	dc.b	nE4, $01, nRst, $15
	smpsSetvoice        $00
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $93
	dc.b	nE3, nRst, $21, nE3, $01, nRst, $21
	smpsSetvoice        $04
	dc.b	nE4, $01, nRst, $15
	smpsSetvoice        $00
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $93
	dc.b	smpsNoAttack, nRst, $0B, smpsNoAttack, nRst, $16, nE3, $01, nRst, $21
	smpsSetvoice        $04
	dc.b	nE4, $01, nRst, $15
	smpsSetvoice        $07
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $93
	dc.b	smpsNoAttack, nRst, $21, nE3, $01, nRst, $21
	smpsSetvoice        $04
	dc.b	nE4, $01, nRst, $16
	smpsSetvoice        $00
	dc.b	smpsNoAttack, nRst, $0B, nE3, $01, nRst, $15, nE3, $01, nRst, $21
	smpsSetvoice        $04
	dc.b	nE4, $01, nRst, $16
	smpsSetvoice        $00
	dc.b	nE3, $02, nRst, $20, smpsNoAttack, nRst, $22
	smpsSetvoice        $04
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $93
	dc.b	smpsNoAttack, nRst, $16
	smpsSetvoice        $00
	dc.b	nE3, $01, nRst, $0A, nE3, $01, nRst, $16, nE3, $01, nRst, $20
	smpsSetvoice        $08
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $93
	dc.b	smpsNoAttack, nRst, $16
	smpsSetvoice        $00
	dc.b	nE3, $01, nRst, $21, nE3, $01, nRst, $21
	smpsSetvoice        $04
	dc.b	smpsNoAttack, nRst, $16
	smpsSetvoice        $00
	dc.b	nE3, $02, nRst, $0A, nE3, $01, nRst, $16, nE3, $01, nRst, $21
	smpsSetvoice        $04
	dc.b	nE4, $01, nRst, $0A, nE4, $01, nRst, $0A
	smpsSetvoice        $00
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $93
	dc.b	nE3, nRst, $21, nE3, $01, nRst, $21
	smpsSetvoice        $04
	smpsAlterVol        $6D
	smpsPan             panCenter, $00
	smpsJump            Phantom_Jump05

; FM2 Data
Phantom_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $0D
	smpsPan             panCenter, $00
	dc.b	nE0, $20, nRst, $02, nE0, $1F, nRst, $03

Phantom_Jump04:
	dc.b	nE0, $14, nRst, $02, nE0, $09, nRst, $02, nE0, $15, nRst, $02
	dc.b	nE0, $1F, nRst, $03, nE0, $14, nRst, $02, nEb0, $20, nRst, $02
	dc.b	nEb0, $20, nRst, $02, nEb0, $14, nRst, $02, nEb0, $09, nRst, $02
	dc.b	smpsNoAttack, nRst, $01, smpsNoAttack, nEb0, $14, nRst, $02, nEb0, $20, nRst, $02
	dc.b	nEb0, $14, nRst, $03, nE0, $20, nRst, $02, nE0, $20, nRst, $02
	dc.b	nE0, $14, nRst, $03, nE0, $09, nRst, $02, nE0, $14, nRst, $02
	dc.b	nE0, $20, nRst, $02, nE0, $15, nRst, $02, nEb0, $1F, nRst, $02
	dc.b	nEb0, $20, nRst, $02, nEb0, $15, nRst, $02, nEb0, $09, nRst, $02
	dc.b	nEb0, $14, nRst, $03, nEb0, $1F, nRst, $03, nEb0, $14, nRst, $02
	dc.b	nE0, $21, nRst, $02, nE0, $1F, nRst, $03, nE0, $14, nRst, $02
	dc.b	nE0, $09, nRst, $02, nE0, $15, nRst, $02, nE0, $20, nRst, $02
	dc.b	nE0, $14, nRst, $02, nEb0, $20, nRst, $02, nEb0, $20, nRst, $02
	dc.b	nEb0, $14, nRst, $02, nEb0, $0A, nRst, $02, nEb0, $15, nRst, $02
	dc.b	nEb0, $20, nRst, $02, nEb0, $14, nRst, $03, nE0, $20, nRst, $02
	dc.b	nE0, $20, nRst, $02
	smpsPan             panCenter, $00
	smpsJump            Phantom_Jump04

; FM3 Data
Phantom_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $17
	smpsPan             panCenter, $00
	dc.b	nG1, $44

Phantom_Jump03:
	dc.b	smpsNoAttack, nG1, $16, smpsNoAttack, nG1, $58, nRst, $02, nFs1, $5B, smpsNoAttack, nFs1
	dc.b	$57, nRst, $03
	smpsSetvoice        $06
	dc.b	nA1, $04, nRst, $02, nB1, $04, nRst, $01, nG1, $04, nRst, $02
	dc.b	nF1, $04, nRst, $02, nE2, $03, nRst, $02, nD2, $04, nRst, $02
	dc.b	nC2, $04, nRst, $02, nG2, $03, nRst, $02, nA2, $04, nRst, $02
	dc.b	nB2, $04, nRst, $02, nG2, $03, nRst, $02, nF2, $04, nRst, $02
	dc.b	nE3, $04, nRst, $01, nD3, $04, nRst, $02, nC3, $04, nRst, $02
	dc.b	nG3, $03, nRst, nA3, nRst, $02, nB3, $04, nRst, $02, nG3, $03
	dc.b	nRst, $02, nF3, $04, nRst, $02, nE4, $04, nRst, $02, nD4, $03
	dc.b	nRst, $02, nC4, $04, nRst, $02, nG4, $03, nRst, $02, nA2, $04
	dc.b	nRst, $02, nB2, $04, nRst, $02, nG2, $03, nRst, $02, nF2, $04
	dc.b	nRst, $02, nE3, $04, nRst, $02, nD3, $03, nRst, $02, nC3, $04
	dc.b	nRst, $02, nG3, $04, nRst, $02, nC1, $03, nRst, $02, nB1, $04
	dc.b	nRst, $02, nEb1, $03, nRst, $02, nF1, $04, nRst, $02, nA2, $04
	dc.b	nRst, $02, nB2, $03, nRst, nAb2, nRst, $02, nFs2, $04, nRst, $02
	dc.b	nC2, $03, nRst, $02, nB2, $04, nRst, $02, nEb2, $04, nRst, $02
	dc.b	nF2, $03, nRst, nA3, nRst, $02, nB3, $03, nRst, $02, nAb3, $04
	dc.b	nRst, $02, nFs3, $04, nRst, $02, nA3, $03, nRst, $02, nB3, $04
	dc.b	nRst, $02, nAb3, $04, nRst, $02, nF3, $03, nRst, $02, nE4, $04
	dc.b	nRst, $02, nEb4, $03, nRst, nC4, nRst, $02, nAb4, $04, nRst, $02
	dc.b	nA2, $03, nRst, $02, nB2, $04, nRst, $02, nAb2, $04, nRst, $02
	dc.b	nF2, $03, nRst, nE3, nRst, $02, nEb3, $04, nRst, $02, nC3, $03
	dc.b	nRst, $02, nAb3, $04, nRst, $02, smpsNoAttack, nRst, $01, nA1, $03, nRst
	dc.b	$02, nB1, $04, nRst, $02, nG1, $04, nRst, $02, nF1, $03, nRst
	dc.b	$02, nE2, $04, nRst, $02, nD2, $04, nRst, $02, nC2, $03, nRst
	dc.b	$02, nG2, $04, nRst, $02, nA2, $03, nRst, $02, nB2, $04, nRst
	dc.b	$02, nG2, $04, nRst, $02, nF2, $03, nRst, nE3, nRst, $02, nD3
	dc.b	$04, nRst, $02, nC3, $03, nRst, $02, nG3, $04, nRst, $02, nA3
	dc.b	$04, nRst, $01, smpsNoAttack, nRst, nB3, $03, nRst, $02, nG3, $04, nRst
	dc.b	$02, nF3, $03, nRst, $02, nE4, $04, nRst, $02, nD4, $04, nRst
	dc.b	$02, nC4, $03, nRst, $02, nG4, $04, nRst, $02, nA2, $04, nRst
	dc.b	$02, nB2, $03, nRst, $02, nG2, $04, nRst, $02, nF2, $04, nRst
	dc.b	$02, nE3, $03, nRst, $02, nD3, $04, nRst, $02, nC3, $03, nRst
	dc.b	$02, nG3, $04, nRst, $02, smpsNoAttack, nRst, $01, nC3, $03, nRst, $02
	dc.b	nB3, $03, nRst, $02, nEb3, $04, nRst, $02, nF3, $04, nRst, $02
	dc.b	nA3, $03, nRst, $02, nB3, $04, nRst, $02, nAb3, $04, nRst, $01
	dc.b	nFs3, $04, nRst, $02
	smpsAlterVol        $05
	dc.b	nC2, $04, nRst, $02, nB2, $03, nRst, $02, nEb2, $04, nRst, $02
	dc.b	nF2, $04, nRst, $02, nA2, $03, nRst, $02, nB2, $04, nRst, $02
	dc.b	nAb2, $04, nRst, $02, nFs2, $03, nRst
	smpsSetvoice        $09
	smpsAlterVol        $FB
	dc.b	nFs1, $02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF1, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF1, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF1, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF1, $02, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb1, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD1, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs1, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC1, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC1, $01, smpsNoAttack, nC1, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb0, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG0, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs0, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nFs0, $01, nRst, $02
	smpsSetvoice        $02
	smpsAlterNote       $00
	dc.b	nG1, $44
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            Phantom_Jump03

; FM4 Data
Phantom_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $17
	smpsPan             panCenter, $00
	dc.b	nB1, $44

Phantom_Jump02:
	dc.b	smpsNoAttack, nB1, $16, smpsNoAttack, nB1, $58, nRst, $03, nA1, $5A, smpsNoAttack, nA1
	dc.b	$57, nRst, $03
	smpsAlterVol        $68
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $98
	dc.b	nB1, $5A, smpsNoAttack, nB1, $58, nRst, $02, nA1, $5A, smpsNoAttack, nA1, $58
	dc.b	nRst, $03, nB1, $5A, smpsNoAttack, nB1, $58, nRst, $03, nA1, $5A, smpsNoAttack
	dc.b	nA1, $58, nRst, $03
	smpsAlterVol        $68
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $98
	dc.b	nB1, $43
	smpsPan             panCenter, $00
	smpsJump            Phantom_Jump02

; FM5 Data
Phantom_FM5:
	smpsSetvoice        $03
	smpsAlterVol        $7F
	smpsPan             panLeft, $00
	dc.b	nRst, $16
	smpsSetvoice        $02
	smpsAlterVol        $9B
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $0E
	dc.b	nG1, $2D

Phantom_Jump01:
	dc.b	smpsNoAttack, nG1, $2C, smpsNoAttack, nG1, $59, nRst, $02, nFs1, $5A, smpsNoAttack, nFs1
	dc.b	$59, nRst, $02
	smpsSetvoice        $06
	smpsAlterNote       $10
	dc.b	nA1, $03, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $12
	dc.b	nB1, $03, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG1, $04, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF1, $03, nRst, $02
	smpsAlterNote       $0C
	dc.b	nE2, $04, nRst, $02
	smpsAlterNote       $0B
	dc.b	nD2, $04, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC2, $03, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG2, $04, nRst, $02
	smpsAlterNote       $10
	dc.b	nA2, $04, nRst, $02
	smpsAlterNote       $12
	dc.b	nB2, $03, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG2, $04, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF2, $03, nRst
	smpsAlterNote       $0C
	dc.b	nE3, nRst, $02
	smpsAlterNote       $0B
	dc.b	nD3, $04, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC3, $03, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG3, $04, nRst, $02
	smpsAlterNote       $10
	dc.b	nA3, $04, nRst, $02
	smpsAlterNote       $12
	dc.b	nB3, $03, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $0E
	dc.b	nG3, $03, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF3, $03, nRst
	smpsAlterNote       $0C
	dc.b	nE4, nRst, $02
	smpsAlterNote       $0B
	dc.b	nD4, $04, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC4, $03, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG4, $04, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $10
	dc.b	nA2, $03, nRst, $02
	smpsAlterNote       $12
	dc.b	nB2, $03, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG2, $04, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF2, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nE3, $03, nRst, $02
	smpsAlterNote       $0B
	dc.b	nD3, $04, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC3, $03, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $0E
	dc.b	nG3, $03, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $0A
	dc.b	nC1, $04, nRst, $02
	smpsAlterNote       $12
	dc.b	nB1, $03, nRst
	smpsAlterNote       $0B
	dc.b	nEb1, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF1, $04, nRst, $02
	smpsAlterNote       $10
	dc.b	nA2, $03, nRst, $02
	smpsAlterNote       $12
	dc.b	nB2, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nAb2, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs2, $03, nRst
	smpsAlterNote       $0A
	dc.b	nC2, nRst, $02
	smpsAlterNote       $12
	dc.b	nB2, $03, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $0B
	dc.b	nEb2, $03, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF2, $04, nRst, $02
	smpsAlterNote       $10
	dc.b	nA3, $03, nRst, $02
	smpsAlterNote       $12
	dc.b	nB3, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nAb3, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs3, $03, nRst, $02
	smpsAlterNote       $10
	dc.b	nA3, $04, nRst, $02
	smpsAlterNote       $12
	dc.b	nB3, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nAb3, $03, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nE4, $03, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $0B
	dc.b	nEb4, $03, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC4, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nAb4, $03, nRst
	smpsAlterNote       $10
	dc.b	nA2, nRst, $02
	smpsAlterNote       $12
	dc.b	nB2, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nAb2, $03, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF2, $04, nRst, $03
	smpsAlterNote       $0C
	dc.b	nE3, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $0B
	dc.b	nEb3, $03, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0F
	dc.b	nAb3, $03, nRst, $02
	smpsAlterVol        $65
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $9B
	smpsAlterNote       $10
	dc.b	nA1, $03, nRst, $02
	smpsAlterNote       $12
	dc.b	nB1, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG1, $03, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF1, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nE2, $03, nRst
	smpsAlterNote       $0B
	dc.b	nD2, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC2, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG2, $03, nRst
	smpsAlterNote       $10
	dc.b	nA2, nRst, $02
	smpsAlterNote       $12
	dc.b	nB2, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG2, $03, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF2, $04, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $0C
	dc.b	nE3, $03, nRst, $02
	smpsAlterNote       $0B
	dc.b	nD3, $03, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG3, $03, nRst
	smpsAlterNote       $10
	dc.b	nA3, nRst, $02
	smpsAlterNote       $12
	dc.b	nB3, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG3, $03, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF3, $04, nRst, $02
	smpsAlterNote       $0C
	dc.b	nE4, $04, nRst, $02
	smpsAlterNote       $0B
	dc.b	nD4, $03, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC4, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG4, $04, nRst, $02
	smpsAlterNote       $10
	dc.b	nA2, $03, nRst, $02
	smpsAlterNote       $12
	dc.b	nB2, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG2, $03, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $0D
	dc.b	nF2, $03, nRst
	smpsAlterNote       $0C
	dc.b	nE3, nRst, $02
	smpsAlterNote       $0B
	dc.b	nD3, $03, nRst, $02
	smpsAlterNote       $0A
	dc.b	nC3, $04, nRst, $02
	smpsAlterNote       $0E
	dc.b	nG3, $04, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $0A
	dc.b	nC3, $03, nRst, $02
	smpsAlterNote       $12
	dc.b	nB3, $04, nRst, $02
	smpsAlterNote       $0B
	dc.b	nEb3, $04, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF3, $03, nRst, $02
	smpsAlterNote       $10
	dc.b	nA3, $04, nRst, $02
	smpsAlterNote       $12
	dc.b	nB3, $03, nRst
	smpsAlterNote       $0F
	dc.b	nAb3, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs3, $04, nRst, $02
	smpsAlterVol        $05
	smpsAlterNote       $0A
	dc.b	nC2, $03, nRst, $02
	smpsAlterNote       $12
	dc.b	nB2, $04, nRst, $02
	smpsAlterNote       $0B
	dc.b	nEb2, $04, nRst, $02
	smpsAlterNote       $0D
	dc.b	nF2, $03, nRst
	smpsAlterNote       $10
	dc.b	nA2, $04, nRst, $02
	smpsAlterNote       $12
	dc.b	nB2, $03, nRst
	smpsAlterNote       $0F
	dc.b	nAb2, nRst, $02
	smpsAlterNote       $0E
	dc.b	nFs2, $04, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $FB
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs1, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF1, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF1, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF1, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF1, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF1, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF1, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE1, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE1, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb1, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nEb1, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD1, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nD1, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs1, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs1, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC1, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC1, $01, smpsNoAttack, nC1, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC1, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb0, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA0, $03, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA0, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb0, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb0, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG0, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG0, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG0, $01, nRst, $01
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	smpsAlterNote       $0E
	dc.b	nG1, $2D
	smpsPan             panLeft, $00
	smpsAlterNote       $0E
	smpsJump            Phantom_Jump01

; FM6 Data
Phantom_FM6:
	smpsSetvoice        $03
	smpsAlterVol        $7F
	smpsPan             panRight, $00
	dc.b	nRst, $17
	smpsSetvoice        $02
	smpsAlterVol        $9B
	smpsAlterNote       $17
	dc.b	nB1, $2D

Phantom_Jump00:
	dc.b	smpsNoAttack, nB1, $2D, smpsNoAttack, nB1, $58, nRst, $02
	smpsAlterNote       $14
	dc.b	nA1, $5A, smpsNoAttack, nA1, $59, nRst, $02
	smpsAlterVol        $65
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $9B
	smpsAlterNote       $17
	dc.b	nB1, $59, smpsNoAttack, nB1, $58, nRst, $02
	smpsAlterNote       $14
	dc.b	nA1, $5A, smpsNoAttack, nA1, $59, nRst, $03
	smpsAlterNote       $17
	dc.b	nB1, $5A, smpsNoAttack, nB1, $58, nRst, $02
	smpsAlterNote       $14
	dc.b	nA1, $5B, smpsNoAttack, nA1, $59, nRst, $02
	smpsAlterNote       $17
	dc.b	nB1, $2D
	smpsPan             panRight, $00
	smpsAlterNote       $17
	smpsJump            Phantom_Jump00

Phantom_Voices:
;	Voice $00
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $05, $FF, $05, 	$00, $00, $0C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $05, $0F, $05, $0F
	smpsVcTotalLevel    $00, $0C, $00, $00

;	Voice $01
;	$3B
;	$4C, $28, $76, $42, 	$1F, $1F, $1F, $9F, 	$03, $03, $03, $03
;	$01, $01, $01, $01, 	$32, $32, $32, $32, 	$21, $20, $23, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $07, $02, $04
	smpsVcCoarseFreq    $02, $06, $08, $0C
	smpsVcRateScale     $02, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $03, $03, $03
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $03, $03, $03, $03
	smpsVcReleaseRate   $02, $02, $02, $02
	smpsVcTotalLevel    $00, $23, $20, $21

;	Voice $02
;	$2B
;	$5F, $2F, $16, $52, 	$1F, $1F, $1F, $1F, 	$02, $02, $02, $05
;	$01, $01, $01, $01, 	$12, $12, $12, $62, 	$19, $20, $26, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $01, $02, $05
	smpsVcCoarseFreq    $02, $06, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $02, $02
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $06, $01, $01, $01
	smpsVcReleaseRate   $02, $02, $02, $02
	smpsVcTotalLevel    $00, $26, $20, $19

;	Voice $03
;	$2B
;	$5F, $2F, $16, $52, 	$1F, $1F, $1F, $1F, 	$02, $02, $02, $05
;	$01, $01, $01, $01, 	$12, $12, $12, $62, 	$7F, $7F, $7F, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $01, $02, $05
	smpsVcCoarseFreq    $02, $06, $0F, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $02, $02
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $06, $01, $01, $01
	smpsVcReleaseRate   $02, $02, $02, $02
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $04
;	$3E
;	$0F, $00, $30, $50, 	$1F, $1F, $1F, $1D, 	$12, $16, $00, $01
;	$02, $00, $0F, $0E, 	$00, $07, $33, $11, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $16, $12
	smpsVcDecayRate2    $0E, $0F, $00, $02
	smpsVcDecayLevel    $01, $03, $00, $00
	smpsVcReleaseRate   $01, $03, $07, $00
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $05
;	$3E
;	$0F, $00, $30, $50, 	$1F, $1F, $1F, $1D, 	$12, $16, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $05, $FF, $05, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $16, $12
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $05, $0F, $05, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $06
;	$3E
;	$5F, $3A, $57, $31, 	$1F, $1F, $1C, $1F, 	$06, $09, $06, $08
;	$08, $00, $00, $00, 	$76, $46, $F6, $F7, 	$18, $07, $02, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $03, $05
	smpsVcCoarseFreq    $01, $07, $0A, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1C, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $06, $09, $06
	smpsVcDecayRate2    $00, $00, $00, $08
	smpsVcDecayLevel    $0F, $0F, $04, $07
	smpsVcReleaseRate   $07, $06, $06, $06
	smpsVcTotalLevel    $00, $02, $07, $18

;	Voice $07
;	$2C
;	$00, $00, $30, $50, 	$1F, $1F, $1F, $1D, 	$12, $16, $00, $01
;	$02, $00, $0F, $0E, 	$00, $07, $33, $11, 	$00, $00, $0C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $16, $12
	smpsVcDecayRate2    $0E, $0F, $00, $02
	smpsVcDecayLevel    $01, $03, $00, $00
	smpsVcReleaseRate   $01, $03, $07, $00
	smpsVcTotalLevel    $00, $0C, $00, $00

;	Voice $08
;	$3E
;	$0F, $00, $30, $50, 	$1F, $1F, $1F, $1D, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $05, $FF, $05, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $05, $0F, $05, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $09
;	$3F
;	$5C, $54, $08, $3C, 	$07, $04, $08, $08, 	$03, $01, $04, $04
;	$1A, $12, $1F, $1F, 	$F1, $B1, $F1, $F1, 	$06, $00, $00, $00
	smpsVcAlgorithm     $07
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $05, $05
	smpsVcCoarseFreq    $0C, $08, $04, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $08, $08, $04, $07
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $01, $03
	smpsVcDecayRate2    $1F, $1F, $12, $1A
	smpsVcDecayLevel    $0F, $0F, $0B, $0F
	smpsVcReleaseRate   $01, $01, $01, $01
	smpsVcTotalLevel    $00, $00, $00, $06

