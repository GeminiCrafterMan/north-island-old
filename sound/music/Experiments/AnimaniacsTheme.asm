Animaniacs_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Animaniacs_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Animaniacs_DAC
	smpsHeaderFM        Animaniacs_FM1,	$00, $00
	smpsHeaderFM        Animaniacs_FM2,	$00, $00
	smpsHeaderFM        Animaniacs_FM3,	$00, $00
	smpsHeaderFM        Animaniacs_FM4,	$00, $00
	smpsHeaderFM        Animaniacs_FM5,	$00, $00
	smpsHeaderPSG       Animaniacs_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Animaniacs_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Animaniacs_PSG3,	$00, $00, $00, $00

; DAC Data
Animaniacs_DAC:
; PSG1 Data
Animaniacs_PSG1:
; PSG2 Data
Animaniacs_PSG2:
; PSG3 Data
Animaniacs_PSG3:
	smpsStop

; FM1 Data
Animaniacs_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $7F
	smpsPan             panLeft, $00
	dc.b	nRst, $03
	smpsAlterVol        $98
	dc.b	nB3, nRst, $02
	smpsAlterVol        $FF
	dc.b	nC4, $04, nRst, $01, nCs4, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nD4, $03, nRst, $02, nEb4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nE4, $04, nRst, $01, nF4, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nFs4, $03, nRst, $02, nG4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nAb4, $04, nRst, $01, nA4, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nBb4, $03, nRst, $02, nB4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nC5, $04, nRst, $01, nCs5, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nD5, $03, nRst, $02, nEb5, $07, nRst, $0E
	smpsSetvoice        $06
	smpsAlterVol        $FE
	smpsPan             panCenter, $00
	dc.b	nEb5, $11, nRst, $04, nD5, $12, nRst, $03, nEb5, $12, nRst, $03
	dc.b	nF5, $1E, nRst, $02, nEb5, $08, nRst, $02, nD5, $1E, nRst, $02
	dc.b	nEb5, $08, nRst, $02, nC5, $07, nRst, $0E
	smpsSetvoice        $00
	smpsAlterVol        $03
	smpsPan             panLeft, $00
	dc.b	nEb5, $04, nRst, $02, nF5, $03, nRst, $02, nFs5, $03, nRst, $02
	dc.b	nG5, $04, nRst, $01, nAb5, $07, nRst, $0E
	smpsSetvoice        $06
	smpsAlterVol        $FD
	smpsPan             panCenter, $00
	dc.b	nD5, $09, nRst, $02, nEb5, $09, nRst, $01, nF5, $1E, nRst, $02
	dc.b	nEb5, $09, nRst, $01, nD5, $1E, nRst, $02, nEb5, $09, nRst, $02
	dc.b	nBb4, $07, nRst, $0E
	smpsSetvoice        $00
	smpsAlterVol        $03
	smpsPan             panLeft, $00
	dc.b	nEb5, $03, nRst, $02, nF5, $03, nRst, $02, nG5, $04, nRst, $01
	dc.b	nAb5, $04, nRst, $02, nBb5, $07, nRst, $0E
	smpsSetvoice        $06
	smpsAlterVol        $FD
	smpsPan             panCenter, $00
	dc.b	nC5, $08, nRst, $02, nBb4, $09, nRst, $02, nAb4, $09, nRst, $01
	dc.b	nAb4, $09, nRst, $02, nC5, $09, nRst, $01, nEb5, $09, nRst, $02
	dc.b	nAb5, $0C, nRst, $13, nAb5, $09, nRst, $02, nBb5, $0E, nRst, $02
	dc.b	nAb5, $03, nRst, $02, nG5, $09, nRst, $01, nAb5, $09, nRst, $02
	dc.b	nF5, $0C, nRst, $14, nF5, $08, nRst, $02, nEb5, $12, nRst, $03
	dc.b	nC6, $12, nRst, $03, nBb5, $1C, nRst, $04, nAb5, $08, nRst, $02
	dc.b	smpsNoAttack, nRst, $01, smpsNoAttack, nAb5, $08, nRst, $36
	smpsSetvoice        $0C
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $02
	dc.b	nG4, $14, nRst, $01, nA4, $09, nRst, $02, nG4, $09, nRst, $01
	dc.b	nFs4, $09, nRst, $02, nG4, $09, nRst, $01, nE4, $09, nRst, $02
	dc.b	nG4, $09, nRst, $02, nFs4, $08, nRst, $02, nG4, $09, nRst, $02
	dc.b	nA4, $08, nRst, $02, nG4, $09, nRst, $02, nFs4, $08, nRst, $02
	dc.b	nG4, $09, nRst, $02, nD4, $07, nRst, $0E
	smpsSetvoice        $06
	smpsAlterVol        $FE
	smpsPan             panLeft, $00
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG5, $02, nRst, $0E
	smpsSetvoice        $00
	smpsAlterVol        $02
	smpsPan             panCenter, $00
	dc.b	nA4, $08, nRst, $02, nG4, $09, nRst, $02, nFs4, $09, nRst, $01
	dc.b	nG4, $09, nRst, $02, nD4, $09, nRst, $01, nG4, $09, nRst, $02
	dc.b	nFs4, $09, nRst, $01, nG4, $09, nRst, $02, nA4, $09, nRst, $01
	dc.b	nG4, $09, nRst, $02, nFs4, $09, nRst, $01, nG4, $09, nRst, $02
	dc.b	nE4, $0C, nRst, $14, nD4, $08, nRst, $02, nC4, $09, nRst, $02
	dc.b	nC4, $08, nRst, $02, nE4, $09, nRst, $02, nG4, $08, nRst, $02
	dc.b	nC5, $04, nRst, $07, nC5, nRst, $0E, nC5, $08, nRst, $02, nD5
	dc.b	$09, nRst, $02, nC5, $09, nRst, $01, nB4, $09, nRst, $02, nC5
	dc.b	$09, nRst, $01, nA4, $0D, nRst, $13
	smpsSetvoice        $06
	smpsAlterVol        $05
	dc.b	nFs4, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nG4, $04
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, nAb4, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nA4, $09, nRst, $02, nG4, $03, nRst, $07, nG4, $04, nRst
	dc.b	$07, nG4, $03, nRst, $07, nBb4, $09, nRst, $02, nAb4, $03, nRst
	dc.b	$08, nAb4, $03, nRst, $07, nAb4, $04, nRst, $07, nB4, $08, nRst
	dc.b	$02, nA4, $04, nRst, $07, nA4, $03, nRst, $07, nA4, $04, nRst
	dc.b	$07, nBb4, $0C, nRst, $13, nBb4, $09, nRst, $02, nC5, $1E, nRst
	dc.b	$01, nBb4, $09, nRst, $02, nA4, $1E, nRst, $01, nBb4, $09, nRst
	dc.b	$02, nG4, $07, nRst, $0E
	smpsSetvoice        $00
	smpsAlterVol        $03
	dc.b	nBb4, $03, nRst, $02, nC5, $04, nRst, $01, nCs5, $04, nRst, $02
	dc.b	nD5, $03, nRst, $02, nEb5, $07, nRst, $0E
	smpsSetvoice        $06
	smpsAlterVol        $6F
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $8E
	dc.b	nA4, $08, nRst, $02, nBb4, $08, nRst, $02, nC5, $12, nRst, $03
	dc.b	smpsNoAttack, nRst, $01, nBb4, $11, nRst, $03, smpsNoAttack, nRst, $01, nA4, $11
	dc.b	nRst, $04, nBb4, $11, nRst, $04, nF4, $0B, nRst, $34, nG4, $09
	dc.b	nRst, $02, nF4, $09, nRst, $01, nEb4, $0E, nRst, $02, nEb4, $04
	dc.b	nRst, $01, nG4, $09, nRst, $02, nBb4, $09, nRst, $01, nEb5, $12
	dc.b	nRst, $03, nD5, $09, nRst, $02, nEb5, $09, nRst, $02, nF5, $08
	dc.b	nRst, $02, nEb5, $09, nRst, $02, nD5, $08, nRst, $02, nEb5, $09
	dc.b	nRst, $02, nC5, $11, nRst, $0E, nC5, $09, nRst, $02, nBb4, $11
	dc.b	nRst, $04, nG5, $11, nRst, $04, nF5, $1C, nRst, $03, nEb5, $09
	dc.b	nRst, $02, nEb5, $0A, nRst, $40
	smpsSetvoice        $01
	smpsAlterVol        $03
	dc.b	nD4, $08, nRst, $02, nE4, $09, nRst, $02, nD4, $08, nRst, $02
	dc.b	nCs4, $09, nRst, $02, nD4, $08, nRst, $02, nB3, $09, nRst, $02
	dc.b	nD4, $08, nRst, $02, nCs4, $09, nRst, $02, nD4, $08, nRst, $02
	dc.b	nE4, $09, nRst, $02, nD4, $08, nRst, $02, nCs4, $09, nRst, $02
	dc.b	nD4, $09, nRst, $01, nA3, $07, nRst, $0E
	smpsSetvoice        $06
	smpsAlterVol        $FD
	smpsPan             panLeft, $00
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs5, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nD5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD5, $02, nRst, $0E
	smpsSetvoice        $01
	smpsAlterVol        $03
	smpsPan             panCenter, $00
	dc.b	nE4, $09, nRst, $02, nD4, $09, nRst, $01, nCs4, $09, nRst, $02
	dc.b	nD4, $09, nRst, $01, nA3, $09, nRst, $02, nD4, $09, nRst, $01
	dc.b	nCs4, $09, nRst, $02, nD4, $09, nRst, $02, nE4, $08, nRst, $02
	dc.b	nD4, $09, nRst, $02, nCs4, $08, nRst, $02, nD4, $09, nRst, $02
	dc.b	nB3, $0F, nRst, $1B, nG3, $03, nRst, $07, nG3, $04, nRst, $07
	dc.b	nB3, $08, nRst, $02, nD4, $04, nRst, $07, nG4, $03, nRst, $07
	dc.b	nG4, $06, nRst, $0F, nG4, $04, nRst, $07, nA4, $09, nRst, $01
	dc.b	nG4, $04, nRst, $07, nFs4, $03, nRst, $07, nG4, $04, nRst, $07
	dc.b	nE4, $09, nRst, $17, nD4, $03, nRst, $08, nE4, nRst, $03, nD4
	dc.b	$02, nRst, $08, nD4, $03, nRst, $08, nD4, $02, nRst, $08, nF4
	dc.b	$09, nRst, $02, nEb4, $03, nRst, $07, nEb4, $04, nRst, $07, nEb4
	dc.b	$03, nRst, $07, nFs4, $09, nRst, $02, nE4, $03, nRst, $07, nE4
	dc.b	$04, nRst, $07, nE4, $03, nRst, $07, nF4, $09, nRst, $17
	smpsSetvoice        $06
	smpsAlterVol        $FD
	dc.b	nF5, $03, nRst, $07, nG5, $1E, nRst, $02, nF5, $03, nRst, $07
	dc.b	nE5, $1E, nRst, $02, nF5, $03, nRst, $08, nD5, $11, nRst, $2E
	dc.b	nE5, $08, nRst, $02, nF5, $09, nRst, $02, nG5, $13, nRst, $02
	dc.b	nF5, $13, nRst, $02, nE5, $13, nRst, $02, nF5, $13, nRst, $02
	dc.b	nC5, $03, nRst, $07
	smpsSetvoice        $0A
	smpsAlterVol        $04
	smpsPan             panRight, $00
	dc.b	nA4, $09, nRst, $02, nC5, $09, nRst, $01, nEb5, $09, nRst, $02
	dc.b	nF5, $0C, nRst, $13
	smpsSetvoice        $06
	smpsAlterVol        $FC
	smpsPan             panCenter, $00
	dc.b	nC5, $04, nRst, $07, nBb4, $04, nRst, $07, nBb4, $03, nRst, $07
	dc.b	nD5, $04, nRst, $07, nF5, $03, nRst, $07, nBb5, $13, nRst, $02
	dc.b	nA5, $0E, nRst, $02, nBb5, $03, nRst, $02, nC6, $04, nRst, $07
	dc.b	nBb5, $03, nRst, $07, nA5, $04, nRst, $07, nBb5, $03, nRst, $07
	dc.b	nG5, $19, nRst, $07, nFs5, $03, nRst, $07, nG5, $14, nRst, $01
	dc.b	nAb5, $14, nRst, $01, nA5, $04, nRst, $07, nF5, $1E, nRst, $01
	smpsSetvoice        $0E
	smpsAlterVol        $FE
	smpsPan             panRight, $00
	dc.b	nG4, $09, nRst, $02, nG4, $09, nRst, $02, nAb4, $08, nRst, $02
	dc.b	nAb4, $09, nRst, $02, nA4, $08, nRst, $02, nF4, $1C, nRst, $04
	smpsSetvoice        $01
	smpsAlterVol        $06
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $01, nG4, $02, nRst, $07, nG4, $04, nRst, $07, nAb4
	dc.b	$13, nRst, $02, nA4, $03, nRst, $07, nF4, $1E, nRst, $02
	smpsSetvoice        $11
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $8E
	smpsPan             panCenter, $00
	dc.b	nG4, $12, nRst, $03, nAb4, $12, nRst, $03, nA4, $02, nRst, $08
	dc.b	nD5, $1E, nRst, $02, nF5, $25, nRst, $05, nF5, $07, nRst, nG5
	dc.b	nRst, nA5, nRst, nBb5, $13, nRst, $17, nBb4, $14, nRst, $16
	smpsSetvoice        $12
	dc.b	smpsNoAttack, nRst, $3F
	smpsStop

; FM2 Data
Animaniacs_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panRight, $00
	dc.b	nRst, $03
	smpsAlterVol        $9A
	dc.b	nG3, nRst, $02, nAb3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nA3, $04, nRst, $02, nBb3, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nB3, $03, nRst, $02, nC4, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nCs4, $04, nRst, $02, nD4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nEb4, $03, nRst, $02, nE4, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nF4, $04, nRst, $02, nFs4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG4, $03, nRst, $02, nAb4, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nA4, $04, nRst, $02, nBb4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nBb4, $07, nRst, $0E
	smpsSetvoice        $03
	smpsAlterVol        $FF
	dc.b	nBb4, $11, nRst, $04, nBb4, $12, nRst, $03, nBb4, $12, nRst, $03
	dc.b	nC5, $1E, nRst, $02, nC5, $08, nRst, $02, nC5, $1E, nRst, $02
	dc.b	nC5, $08, nRst, $02, nAb4, $07, nRst, $0E
	smpsSetvoice        $01
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $02, nF4, $03, nRst, $02, nFs4, $03, nRst, $02
	dc.b	nG4, $04, nRst, $01, nAb4, $07, nRst, $0E
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nC5, $09, nRst, $02, nC5, $09, nRst, $01, nC5, $1E, nRst, $02
	dc.b	nC5, $09, nRst, $01, nC5, $1E, nRst, $02, nC5, $09, nRst, $02
	dc.b	nG4, $07, nRst, $0E
	smpsSetvoice        $0A
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $02, nF4, $03, nRst, $02, nG4, $04, nRst, $01
	dc.b	nAb4, $04, nRst, $02, nBb4, $07, nRst, $0E
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nG4, $08, nRst, $02, nG4, $09, nRst, $02, nEb4, $09, nRst, $01
	dc.b	nEb4, $09, nRst, $02, nAb4, $09, nRst, $01, nC5, $09, nRst, $02
	dc.b	nEb5, $0C, nRst, $13, nEb5, $09, nRst, $02, nF5, $0E, nRst, $02
	dc.b	nF5, $03, nRst, $02, nF5, $09, nRst, $01, nF5, $09, nRst, $02
	dc.b	nCs5, $0C, nRst, $14, nCs5, $08, nRst, $02, nC5, $12, nRst, $04
	dc.b	nAb5, $11, nRst, $04, nF5, $1B, nRst, $05, nF5, $07, nRst, $03
	dc.b	nEb5, $0C, nRst, $08
	smpsSetvoice        $0B
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $01
	smpsAlterVol        $08
	dc.b	nC4, $03, nRst
	smpsAlterVol        $FF
	dc.b	nD4, $02, nRst, $03, nEb4, $02, nRst, $03
	smpsAlterVol        $FF
	dc.b	nF4, nRst, $02, nG4, $03, nRst
	smpsAlterVol        $FF
	dc.b	nFs4, $02, nRst, $03, nG4, nRst, $02
	smpsAlterVol        $FF
	dc.b	nA4, $04, nRst, $01, nB4, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG4, $03, nRst, $02, nA4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nB4, $04, nRst, $01, nC5, $04, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $03
	smpsPan             panLeft, $00
	dc.b	nA4, nRst, $0E, nA4, $07, nRst, $0E, nA4, $07, nRst, $0E, nA4
	dc.b	$07, nRst, $0E, nA4, $07, nRst, $0E, nA4, $04, nRst, $07, nB4
	dc.b	nRst, $0E
	smpsSetvoice        $06
	smpsAlterVol        $FC
	smpsPan             panRight, $00
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nB4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB4, $02, nRst, $0E
	smpsSetvoice        $04
	smpsAlterVol        $09
	smpsPan             panLeft, $00
	dc.b	nG2, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nAb2, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nA2, $04, nRst, $02, nBb2, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nB2, $03, nRst, $02, nC3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nCs3, $04, nRst, $02, nD3, $03, nRst, $02
	smpsAlterVol        $FF
	smpsPan             panCenter, $00
	dc.b	nEb3, $03, nRst, $02, nE3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nF3, $04, nRst, $02, nFs3, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG3, $03, nRst, $02, nA3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nBb3, $04, nRst, $02, nB3, $03, nRst, $02
	smpsAlterVol        $01
	smpsPan             panRight, $00
	dc.b	nC4, $03, nRst, $02, nCs4, $04, nRst, $01
	smpsAlterVol        $01
	dc.b	nD4, $04, nRst, $02, nEb4, $03, nRst, $02
	smpsAlterVol        $01
	dc.b	nE4, $03, nRst, $02, nF4, $04, nRst, $01
	smpsAlterVol        $01
	dc.b	nFs4, $04, nRst, $02, nG4, $03, nRst, $02
	smpsAlterVol        $01
	dc.b	nC5, $03, nRst, $02
	smpsPan             panCenter, $00
	dc.b	nCs5, $04, nRst, $01
	smpsAlterVol        $01
	smpsPan             panLeft, $00
	dc.b	nD5, $04, nRst, $02
	smpsPan             panCenter, $00
	dc.b	nEb5, $03, nRst, $02
	smpsAlterVol        $01
	smpsPan             panRight, $00
	dc.b	nE5, $04, nRst, $01
	smpsPan             panCenter, $00
	dc.b	nF5, $04, nRst, $02
	smpsAlterVol        $01
	smpsPan             panLeft, $00
	dc.b	nFs5, $03, nRst, $02
	smpsPan             panCenter, $00
	dc.b	nG5, $03, nRst, $02
	smpsSetvoice        $0A
	smpsAlterVol        $FE
	dc.b	nC4, $09, nRst, $02, nC4, $08, nRst, $02, nE4, $09, nRst, $02
	dc.b	nG4, $08, nRst, $02, nC5, $04, nRst, $07, nC5, nRst, $0E
	smpsSetvoice        $0E
	smpsAlterVol        $F7
	smpsPan             panRight, $00
	dc.b	nC4, $08, nRst, $02, nD4, $09, nRst, $02, nC4, $09, nRst, $01
	dc.b	nB3, $09, nRst, $02, nC4, $09, nRst, $01, nA3, $10, nRst, $1A
	smpsSetvoice        $04
	smpsAlterVol        $0B
	dc.b	nG3, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nFs3, $03, nRst, $02, nG3, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nA3, $04, nRst, $01, nB3, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nC4, $03, nRst, $02, nCs4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nD4, $04, nRst, $01
	smpsAlterVol        $02
	smpsPan             panCenter, $00
	dc.b	nAb3, $04, nRst, $02, nG3, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nAb3, $03, nRst, $02, nBb3, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nC4, $03, nRst, $02, nCs4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nD4, $04, nRst, $01, nEb4, $04, nRst, $02
	smpsAlterVol        $02
	smpsPan             panLeft, $00
	dc.b	nA3, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nAb3, $03, nRst, $02, nA3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nB3, $04, nRst, $02, nCs4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nD4, $03, nRst, $02, nEb4, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nEb4, $04, nRst, $02
	smpsPan             panRight, $00
	dc.b	nBb3, $07, nRst, $0E
	smpsAlterVol        $FF
	smpsPan             panLeft, $00
	dc.b	nBb4, $07, nRst, $0E
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsPan             panRight, $00
	dc.b	nG4, $1E, nRst, $01, nG4, $09, nRst, $02, nG4, $1E, nRst, $01
	dc.b	nG4, $09, nRst, $02, nG4, $07, nRst, $0F
	smpsSetvoice        $01
	smpsAlterVol        $04
	smpsPan             panLeft, $00
	dc.b	nBb3, $02, nRst
	smpsAlterVol        $FF
	dc.b	nC4, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nCs4, $04, nRst, $02
	smpsAlterVol        $01
	dc.b	nD4, $03, nRst, $02
	smpsAlterVol        $01
	dc.b	smpsNoAttack, nRst, $01, nEb4, $06, nRst, $0F
	smpsSetvoice        $03
	smpsAlterVol        $FC
	smpsPan             panRight, $00
	dc.b	nG4, $08, nRst, $03, nG4, $07, nRst, $03, nG4, $11, nRst, $04
	dc.b	nG4, $11, nRst, $04, nG4, $11, nRst, $04, nG4, $12, nRst, $03
	dc.b	nD4, $04, nRst, $07
	smpsSetvoice        $0E
	smpsAlterVol        $01
	dc.b	nBb4, $13, nRst, $02, nA4, $09, nRst, $01
	smpsAlterVol        $01
	dc.b	nBb4, $07, nRst, $0E
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nD4, $09, nRst, $02, nD4, $09, nRst, $01, nEb4, $0E, nRst, $02
	dc.b	nEb4, $04, nRst, $01, nEb4, $09, nRst, $02, nG4, $09, nRst, $01
	dc.b	nBb4, $12, nRst, $03, nBb4, $09, nRst, $02, nBb4, $09, nRst, $02
	dc.b	nC5, $08, nRst, $02, nC5, $09, nRst, $02, nC5, $08, nRst, $02
	dc.b	nC5, $09, nRst, $02, nAb4, $11, nRst, $0E, nAb4, $09, nRst, $02
	dc.b	nG4, $11, nRst, $04, nEb5, $11, nRst, $04, nC5, $1C, nRst, $03
	dc.b	nC5, $09, nRst, $02, nBb4, $07, nRst, $0E
	smpsSetvoice        $00
	smpsAlterVol        $09
	smpsPan             panLeft, $00
	dc.b	nG4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nA4, $04, nRst, $01, nBb4, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nC5, $03, nRst, $02, nD5, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nCs5, $04, nRst, $01, nD5, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nE5, $03, nRst, $02, nFs5, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nD5, $04, nRst, $02, nE5, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nFs5, $03, nRst, $02, nG5, $05, nRst, $06
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nG3, $07, nRst, $0E, nG3, $07, nRst, $0E, nG3, $07, nRst, $0E
	dc.b	nG3, $07, nRst, $0E, nG3, $07, nRst, $0E, nG3, $03, nRst, $07
	dc.b	nD3, nRst, $0E
	smpsSetvoice        $06
	smpsAlterVol        $FC
	smpsPan             panRight, $00
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs4, $02, nRst, $19
	smpsSetvoice        $04
	smpsAlterVol        $04
	smpsPan             panLeft, $00
	dc.b	nD3, $07, nRst, $0E, nD3, $07, nRst, $0E, nD3, $07, nRst, $0E
	dc.b	nD3, $07, nRst, $0E, nE3, $07, nRst, $0E, nE3, $04, nRst, $07
	dc.b	nG3, nRst, $0E
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsPan             panRight, $00
	dc.b	nG4, $07, nRst, $0E
	smpsSetvoice        $00
	smpsAlterVol        $6C
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $95
	dc.b	nG4, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nA4, $05, nRst, $02, nB4, $05, nRst, $02
	smpsAlterVol        $FF
	dc.b	nA4, $05, nRst, $02, nB4, $05, nRst, $02
	smpsAlterVol        $FF
	dc.b	nC5, $05, nRst, $02, nB4, $05, nRst, $02, nC5, $05, nRst, $02
	dc.b	nD5, $05, nRst, $02
	smpsAlterVol        $01
	dc.b	nG5, $05, nRst, $02, nA5, $05, nRst, $02
	smpsAlterVol        $01
	dc.b	nB5, $05, nRst, $03, nC6, $0F, nRst, $1B
	smpsSetvoice        $03
	smpsAlterVol        $6C
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $0E
	smpsAlterVol        $90
	dc.b	nC4, $02, nRst, $05, nC4, $12, nRst, $03
	smpsAlterVol        $04
	dc.b	nD4, $1E, nRst, $02
	smpsAlterVol        $FF
	dc.b	nD4, $03, nRst, $07, nEb4, $1E, nRst, $02
	smpsAlterVol        $FF
	dc.b	nEb4, $03, nRst, $07, nE4, $1E, nRst, $02
	smpsAlterVol        $FF
	dc.b	nE4, $03, nRst, $07, nF4, $09, nRst, $17
	smpsAlterVol        $FF
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $01
	dc.b	nD5, $1E, nRst, $02, nD5, $03, nRst, $07, nD5, $1E, nRst, $02
	dc.b	nD5, $03, nRst, $08, nBb4, $05, nRst
	smpsSetvoice        $00
	smpsAlterVol        $04
	smpsPan             panLeft, $00
	dc.b	nE5, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nF5, $04, nRst, $02, nFs5, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG5, $03, nRst, $02, nAb5, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nA5, $04, nRst, $02, nBb5, $03, nRst, $02, nA5, $03, nRst, $02
	smpsAlterVol        $01
	dc.b	nAb5, $04, nRst, $01, nG5, $04, nRst, $02
	smpsAlterVol        $01
	dc.b	nFs5, $03, nRst, $02, nF5, $03, nRst, $02
	smpsAlterVol        $01
	dc.b	nE5, $04, nRst, $01, nEb5, $04, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $FC
	smpsPan             panRight, $00
	dc.b	nD5, $13, nRst, $02, nD5, $13, nRst, $02, nD5, $13, nRst, $02
	dc.b	nD5, $13, nRst, $02, nA4, $03, nRst, $07
	smpsSetvoice        $01
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	dc.b	nF5, $09, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG5, $09, nRst, $01
	smpsAlterVol        $FF
	dc.b	nAb5, $09, nRst, $02
	smpsAlterVol        $01
	dc.b	nA5, $0C, nRst, $13
	smpsSetvoice        $03
	smpsAlterVol        $FD
	smpsPan             panRight, $00
	dc.b	nA4, $04, nRst, $07, nF4, $04, nRst, $07, nF4, $03, nRst, $07
	dc.b	nBb4, $04, nRst, $07, nD5, $03, nRst, $07, nAb5, $13, nRst, $02
	dc.b	nF5, $13, nRst, $02, nG5, $04, nRst, $07, nG5, $03, nRst, $07
	dc.b	nG5, $04, nRst, $07, nG5, $03, nRst, $07, nEb5, $19, nRst, $07
	dc.b	nEb5, $03, nRst, $07, nE5, $14, nRst, $01, nE5, $14, nRst, $01
	dc.b	nF5, $04, nRst, $07, nEb5, $1E, nRst, $01
	smpsSetvoice        $0D
	smpsAlterVol        $6F
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $98
	smpsPan             panLeft, $00
	dc.b	nEb4, $11, nRst, $04, nE4, $11, nRst, $04, nF4, $08, nRst, $02
	dc.b	nC4, $1C, nRst, $05
	smpsSetvoice        $01
	smpsAlterVol        $FB
	smpsPan             panCenter, $00
	dc.b	nFs4, $02, nRst, $07, smpsNoAttack, nRst, $01, smpsNoAttack, nFs4, $03, nRst, $08
	dc.b	nG4, $12, nRst, $03, nAb4, $02, nRst, $08, nE4, $1D, nRst, $03
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsPan             panRight, $00
	dc.b	nE4, $12, nRst, $03, nE4, $12, nRst, $03, nF4, $02, nRst, $08
	dc.b	nA4, $1E, nRst, $02, nBb4, $25, nRst, $05, nA4, $07, nRst, nBb4
	dc.b	nRst, nC5, nRst, nD5, $13, nRst, $17, nF4, $14, nRst, $16
	smpsSetvoice        $13
	dc.b	smpsNoAttack, nRst, $3F
	smpsStop

; FM3 Data
Animaniacs_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panRight, $00
	dc.b	nRst, $03
	smpsAlterVol        $95
	dc.b	nEb2, $13, nRst, $02
	smpsAlterVol        $FD
	smpsPan             panCenter, $00
	dc.b	nB2, $13, nRst, $02
	smpsAlterVol        $FE
	smpsPan             panLeft, $00
	dc.b	nG3, $28, nRst, $02
	smpsSetvoice        $05
	dc.b	nB4, $01, smpsNoAttack, nBb4, smpsNoAttack, nA4, smpsNoAttack, nAb4, smpsNoAttack, nG4, smpsNoAttack, nFs4
	dc.b	smpsNoAttack, nF4, $12, nRst, $3C
	smpsSetvoice        $02
	smpsAlterVol        $02
	smpsPan             panRight, $00
	dc.b	nAb2, $04, nRst, $07, nC5, $03, nRst, $07, nEb2, $04, nRst, $07
	dc.b	nC5, $03, nRst, $07, nAb2, $04, nRst, $07, nC5, $03, nRst, $07
	dc.b	nEb2, $04, nRst, $07, nC5, $03, nRst, $07, nAb2, $04, nRst, $07
	dc.b	nC5, $03, nRst, $07, nEb2, $04, nRst, $07, nC5, $03, nRst, $07
	dc.b	nAb2, $04, nRst, $07, nEb2, $03, nRst, $07, nF2, $04, nRst, $07
	dc.b	nG2, $03, nRst, $07, nAb2, $04, nRst, $07, nC5, $03, nRst, $07
	dc.b	nEb2, $04, nRst, $07, nC5, $03, nRst, $07, nAb2, $04, nRst, $07
	dc.b	nC5, $04, nRst, $07, nEb2, $03, nRst, $07, nC5, $04, nRst, $07
	dc.b	nBb2, $03, nRst, $07, nCs5, $04, nRst, $07, smpsNoAttack, nRst, $01, nEb2
	dc.b	$02, nRst, $07, nCs5, $04, nRst, $07, nBb2, $03, nRst, $07, nEb2
	dc.b	$04, nRst, $08, nF2, $02, nRst, $07, nG2, $04, nRst, $07, nAb2
	dc.b	$03, nRst, $07, nC5, $04, nRst, $07, nAb2, $03, nRst, $07, nC5
	dc.b	$04, nRst, $07, nFs2, $03, nRst, $07, nC5, $04, nRst, $07, nFs2
	dc.b	$03, nRst, $07, nC5, $04, nRst, $07, nF2, $03, nRst, $07, nCs5
	dc.b	$04, nRst, $07, smpsNoAttack, nRst, $01, nAb2, $02, nRst, $08, nCs5, $03
	dc.b	nRst, $08, nCs2, $02, nRst, $08, nCs5, $03, nRst, $07, nF2, $04
	dc.b	nRst, $08, nCs5, $02, nRst, $08, nEb2, $03, nRst, $07, nC5, $03
	dc.b	nRst, $08, nE2, $03, nRst, $07, nC5, $03, nRst, $08, nF2, $03
	dc.b	nRst, $07, smpsNoAttack, nRst, $01, nCs5, $02, nRst, $08, nFs2, $03, nRst
	dc.b	$08, nCs5, $02, nRst, $08, nAb2, $03, nRst, $08, nC5, $02, nRst
	dc.b	$08, nEb2, $03, nRst, $08, nC5, $02, nRst, $08, nG2, $04, nRst
	dc.b	$07, nB4, $03, nRst, $07, nB2, $04, nRst, $07, nB4, $03, nRst
	dc.b	$07, nC3, $04, nRst, $07, nG4, $03, nRst, $07, nG2, $04, nRst
	dc.b	$07, nG4, $03, nRst, $07, nC3, $04, nRst, $07, nG4, $04, nRst
	dc.b	$07, nG2, $03, nRst, $07, nG4, $04, nRst, $07, nC3, $03, nRst
	dc.b	$07, nG4, $04, nRst, $07, nG2, $03, nRst, $07, nG4, $04, nRst
	dc.b	$07, nD3, $03, nRst, $07, nG2, $04, nRst, $07, nA2, $03, nRst
	dc.b	$07, nBb2, $04, nRst, $07, nB2, $03, nRst, $07, nB4, $04, nRst
	dc.b	$07, nG2, $03, nRst, $07, nB4, $04, nRst, $07, nD3, $03, nRst
	dc.b	$07, nB4, $04, nRst, $07, nG2, $03, nRst, $07, nB4, $04, nRst
	dc.b	$07, nD3, $03, nRst, $07, nG2, $04, nRst, $07, nA2, $03, nRst
	dc.b	$07, nB2, $04, nRst, $07, nC3, $03, nRst, $07, nC5, $04, nRst
	dc.b	$07, nG2, $04, nRst, $07, nC5, $03, nRst, $07, nC2, $04, nRst
	dc.b	$07, nE4, $03, nRst, $07, nE2, $04, nRst, $07, nE4, $03, nRst
	dc.b	$07, nG2, $04, nRst, $07, nG4, $03, nRst, $07, nC2, $04, nRst
	dc.b	$07, nG4, $03, nRst, $07, nF2, $04, nRst, $07, nA4, $03, nRst
	dc.b	$07, nA2, $04, nRst, $07, nA4, $03, nRst, $07, nC3, $04, nRst
	dc.b	$07, nA4, $03, nRst, $07, nF2, $04, nRst, $07, nA4, $03, nRst
	dc.b	$07, nG2, $1E, nRst, $02, nG2, $03, nRst, $07, nAb2, $1E, nRst
	dc.b	$02, nAb2, $04, nRst, $07, nA2, $1D, nRst, $02, nA2, $04, nRst
	dc.b	$07, nBb2, nRst, $0E, nBb2, $07, nRst, $0F, nEb2, $02, nRst, $07
	dc.b	nG4, $04, nRst, $07, nBb2, $03, nRst, $07, nG4, $04, nRst, $07
	dc.b	smpsNoAttack, nRst, $01, nEb2, $02, nRst, $07, nG4, $04, nRst, $07, nBb2
	dc.b	$03, nRst, $08, nG4, $03, nRst, $08, nEb2, $02, nRst, $07, nG4
	dc.b	$04, nRst, $08, nBb2, $02, nRst, $08, nG4, $03, nRst, $08, nEb3
	dc.b	$02, nRst, $07, nBb2, $04, nRst, $08, nC3, $03, nRst, $08, nD3
	dc.b	$02, nRst, $08, nEb3, $03, nRst, $08, nG4, $02, nRst, $08, nBb2
	dc.b	$03, nRst, $08, nG4, $02, nRst, $08, nEb2, $03, nRst, $08, nG4
	dc.b	$02, nRst, $08, nBb2, $04, nRst, $07, nG4, $03, nRst, $07, nF2
	dc.b	$04, nRst, $07, nAb4, $03, nRst, $07, nF3, $04, nRst, $07, nAb4
	dc.b	$03, nRst, $07, nBb2, $04, nRst, $07, nAb2, $03, nRst, $07, nG2
	dc.b	$04, nRst, $07, nF2, $03, nRst, $07, nEb2, $04, nRst, $07, nG4
	dc.b	$03, nRst, $07, nG2, $04, nRst, $07, nG4, $03, nRst, $07, nBb2
	dc.b	$04, nRst, $07, nG4, $03, nRst, $07, nEb2, $04, nRst, $07, nG4
	dc.b	$04, nRst, $07, nAb2, $03, nRst, $07, nAb4, $04, nRst, $07, nC3
	dc.b	$03, nRst, $07, nAb4, $04, nRst, $07, nEb3, $03, nRst, $07, nAb4
	dc.b	$04, nRst, $07, nAb2, $03, nRst, $07, nAb4, $04, nRst, $07, nBb2
	dc.b	$03, nRst, $07, nG4, $04, nRst, $07, nB2, $03, nRst, $07, nG4
	dc.b	$04, nRst, $07, nC3, $03, nRst, $07, nAb4, $04, nRst, $07, nD3
	dc.b	$03, nRst, $07, nAb4, $04, nRst, $07, nEb3, $03, nRst, $07, nG4
	dc.b	$04, nRst, $07, nBb2, $03, nRst, $07, nG4, $04, nRst, $07, nD3
	dc.b	$03, nRst, $07, nFs4, $04, nRst, $07, nD2, $03, nRst, $08, nFs4
	dc.b	$03, nRst, $07, nG2, $04, nRst, $07, nG4, $03, nRst, $07, nD2
	dc.b	$04, nRst, $07, nG4, $03, nRst, $07, nG2, $04, nRst, $07, nG4
	dc.b	$03, nRst, $07, nD2, $04, nRst, $07, nG4, $03, nRst, $07, nG2
	dc.b	$04, nRst, $07, nG4, $03, nRst, $07, nD2, $04, nRst, $07, nG4
	dc.b	$03, nRst, $07, nA2, $04, nRst, $07, nD2, $03, nRst, $07, nD2
	dc.b	nRst, $0E, nFs2, $04, nRst, $07, nFs4, $03, nRst, $07, nD2, $04
	dc.b	nRst, $07, nFs4, $03, nRst, $07, nA2, $04, nRst, $07, nFs4, $03
	dc.b	nRst, $07, nD2, $04, nRst, $07, nFs4, $04, nRst, $07, nA2, $03
	dc.b	nRst, $07, nFs4, $04, nRst, $07, nD2, $03, nRst, $07, nFs4, $04
	dc.b	nRst, $07, nG2, nRst, $0F, nG2, $06, nRst, $0F, nG2, $02, nRst
	dc.b	$07, nG4, $04, nRst, $08, nB2, $02, nRst, $07, nG4, $04, nRst
	dc.b	$08, nD3, $02, nRst, $08, nG4, $03, nRst, $08, nG2, $02, nRst
	dc.b	$08, nG4, $03, nRst, $08, nC3, $02, nRst, $08, nC5, $03, nRst
	dc.b	$08, nE3, $02, nRst, $08, nC5, $03, nRst, $08, nG3, $02, nRst
	dc.b	$08, nC5, $04, nRst, $07, nC3, $02, nRst, $08, nC5, $03, nRst
	dc.b	$08, nFs3, $1E, nRst, $02, nF3, $03, nRst, $07, nG3, $1E, nRst
	dc.b	$02, nG3, $03, nRst, $07, nAb3, $1E, nRst, $02, nAb3, $03, nRst
	dc.b	$07, nF3, $04, nRst, $07, nEb3, $03, nRst, $07, nD3, $04, nRst
	dc.b	$07, nC3, $03, nRst, $07, nBb2, $04, nRst, $07, nBb4, $03, nRst
	dc.b	$07, nF2, $04, nRst, $07, nBb4, $03, nRst, $07, nBb2, $04, nRst
	dc.b	$07, nBb4, $03, nRst, $07, nF2, $04, nRst, $07, nBb4, $03, nRst
	dc.b	$08, nBb2, $03, nRst, $07, nBb4, $04, nRst, $07, nF2, $03, nRst
	dc.b	$07, nBb4, $04, nRst, $07, nBb2, $03, nRst, $07, nF2, $04, nRst
	dc.b	$07, nG2, $03, nRst, $07, nA2, $04, nRst, $07, nBb2, $03, nRst
	dc.b	$07, nBb4, $04, nRst, $07, nF2, $03, nRst, $07, nBb4, $04, nRst
	dc.b	$07, nBb2, $03, nRst, $07, nBb4, $04, nRst, $07, nF2, $03, nRst
	dc.b	$07, nBb4, $04, nRst, $07, nC3, $03, nRst, $07, nA4, $04, nRst
	dc.b	$07, nF2, $03, nRst, $07, nA4, $04, nRst, $07, nC3, $03, nRst
	dc.b	$07, nF2, $04, nRst, $07, nG2, $03, nRst, $07, nA2, $04, nRst
	dc.b	$07, nBb2, $04, nRst, $07, nBb4, $03, nRst, $07, nD3, $04, nRst
	dc.b	$07, nBb4, $03, nRst, $07, nF3, $04, nRst, $07, nAb4, $03, nRst
	dc.b	$07, nBb2, $04, nRst, $07, nAb4, $03, nRst, $07, nEb2, $04, nRst
	dc.b	$07, nG4, $03, nRst, $07, nF3, $04, nRst, $07, nG4, $03, nRst
	dc.b	$07, nFs2, $04, nRst, $07, nG4, $03, nRst, $07, nG3, $04, nRst
	dc.b	$07, nG4, $03, nRst, $07, nEb2, $04, nRst, $07, nG4, $03, nRst
	dc.b	$07, nE2, $04, nRst, $07, nG4, $03, nRst, $07, nF2, $04, nRst
	dc.b	$07, nA4, $03, nRst, $07, nC3, $04, nRst, $07, nA4, $03, nRst
	dc.b	$08, nEb2, $07, nRst, $0E, smpsNoAttack, nRst, $01, nE2, $06, nRst, $0F
	dc.b	nF2, $06, nRst, $0E, nC3, $07, nRst, $0F
	smpsSetvoice        $10
	smpsAlterVol        $02
	dc.b	nG5, $02, nRst, $08, nG5, $03, nRst, $08, nAb5, $12, nRst, $03
	dc.b	nA5, $02, nRst, $08, nF5, $1D, nRst, $03
	smpsSetvoice        $02
	smpsAlterVol        $FE
	dc.b	nC3, $12, nRst, $03, nC3, $13, nRst, $02, nF3, $03, nRst, $07
	dc.b	nA3, $1E, nRst, $02, nBb3, $25, nRst, $05, nEb3, $07, nRst, nD3
	dc.b	nRst, nC3, nRst, nBb2, $13, nRst, $17, nBb2, $14, nRst, $16
	smpsSetvoice        $14
	dc.b	smpsNoAttack, nRst, $3F
	smpsStop

; FM4 Data
Animaniacs_FM4:
	smpsSetvoice        $03
	smpsAlterVol        $7F
	smpsPan             panLeft, $00
	dc.b	nRst, $03
	smpsAlterVol        $96
	dc.b	nEb2, $15
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, nB2
	smpsAlterVol        $FE
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nB2, $28, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $FE
	smpsPan             panRight, $00
	dc.b	nCs5, $01, smpsNoAttack, nC5, smpsNoAttack, nB4, smpsNoAttack, nBb4, smpsNoAttack, nA4, smpsNoAttack, nAb4
	dc.b	smpsNoAttack, nG4, $12, nRst, $3C
	smpsSetvoice        $04
	smpsAlterVol        $04
	smpsPan             panLeft, $00
	dc.b	nAb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nAb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nAb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nAb2, $04, nRst, $07, nEb2, $03, nRst, $07, nF2, $04, nRst, $07
	dc.b	nG2, $03, nRst, $07, nAb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nAb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $08
	smpsAlterVol        $FE
	dc.b	nEb2, $02, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $03, nRst, $07, nEb2, $04, nRst, $08, nF2, $02, nRst, $07
	dc.b	nG2, $04, nRst, $07, nAb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nAb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nRst, $01, nAb4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nFs2, $02, nRst, $07
	smpsAlterVol        $02
	dc.b	nFs4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nFs2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nFs4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nF2, $02, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $04, nRst, $08
	smpsAlterVol        $FE
	dc.b	nAb2, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nCs2, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nRst, $01, nF2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nAb4, $02, nRst, $08
	smpsAlterVol        $FE
	dc.b	nEb2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nAb4, $02, nRst, $08
	smpsAlterVol        $FE
	dc.b	nE2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nAb4, $02, nRst, $08
	smpsAlterVol        $FE
	dc.b	nF2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nBb4, $02, nRst, $08
	smpsAlterVol        $FE
	dc.b	nFs2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nBb4, $02, nRst, $08
	smpsAlterVol        $FE
	dc.b	nAb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nAb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nB2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD3, $03, nRst, $07, nG2, $04, nRst, $07, nA2, $03, nRst, $07
	dc.b	nBb2, $04, nRst, $07, nB2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nA2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FD
	dc.b	nC3, $03, nRst, $07
	smpsAlterVol        $03
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nA3, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nE2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nA3, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nA2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nC5, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD2, $1E, nRst, $02, nD2, $03, nRst, $07, nEb2, $1E, nRst, $02
	dc.b	nEb2, $04, nRst, $07, nE2, $1D, nRst, $02, nE2, $04, nRst, $07
	dc.b	nD2, nRst, $0E, nD3, $07, nRst, $0F, nEb2, $02, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nEb2, $02, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nEb2, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nBb2, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nEb3, $02, nRst, $08, nBb2, $03, nRst, $08, nC3, $03, nRst, $08
	dc.b	nD3, $02, nRst, $08, nEb3, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nEb4, $02, nRst, $08
	smpsAlterVol        $FE
	dc.b	nBb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nD4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF3, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nD4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $04, nRst, $07, nAb2, $03, nRst, $07, nG2, $04, nRst, $07
	dc.b	nF2, $03, nRst, $07, nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FD
	dc.b	nG2, $04, nRst, $07
	smpsAlterVol        $03
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nAb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nAb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nB2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nC4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nC4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nD4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nD4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nD4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nD4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nD4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nD4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nA2, $04, nRst, $07, nFs2, $03, nRst, $08, nD2, $03, nRst, $07
	dc.b	nFs2, $03, nRst, $07, nFs2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nRst, $01, nC4, $02, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nC4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nA2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nC4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nC4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nA2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nC4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nC4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nG2, $06, nRst, $0F, nB2, $06, nRst, $0F, nG2, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nE4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nB2, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nE4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nD3, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nG2, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nC3, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nG4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nE3, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nG4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nG3, $02, nRst, $08
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nG4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nA3, $1E, nRst, $02, nA3, $03, nRst, $07, nBb3, $1E, nRst, $02
	dc.b	nBb3, $03, nRst, $07, nB3, $1E, nRst, $02, nB3, $03, nRst, $07
	dc.b	nF3, nRst, $0E, nF3, $04, nRst, $02, nG3, $03, nRst, $02, nAb3
	dc.b	$03, nRst, $02, nA3, $04, nRst, $01, nBb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nBb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $03, nRst, $07, nF2, $04, nRst, $07, nG2, $03, nRst, $07
	dc.b	nA2, $04, nRst, $07, nBb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF2, $03, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $04, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $03, nRst, $07, nF2, $04, nRst, $07, nG2, $03, nRst, $07
	dc.b	nA2, $04, nRst, $07, nBb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nD3, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $07
	smpsAlterVol        $FD
	dc.b	nF3, $04, nRst, $07
	smpsAlterVol        $03
	dc.b	nBb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nBb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nBb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nF3, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nFs2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nG3, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nEb4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nEb2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $03, nRst, $07
	smpsAlterVol        $FE
	dc.b	nE2, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nE4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nF2, $03, nRst, $08
	smpsAlterVol        $02
	dc.b	nF4, $02, nRst, $07
	smpsAlterVol        $FE
	dc.b	nC3, $04, nRst, $07
	smpsAlterVol        $02
	dc.b	nF4, $03, nRst, $08
	smpsAlterVol        $FE
	dc.b	nEb2, $07, nRst, $0F, nE2, $06, nRst, $0F, nF2, $06, nRst, $0F
	dc.b	nC3, $06, nRst, $0F
	smpsSetvoice        $10
	dc.b	nFs5, $02, nRst, $08, nFs5, $03, nRst, $08, nG5, $12, nRst, $03
	dc.b	nAb5, $02, nRst, $08, nE5, $1E, nRst, $02
	smpsSetvoice        $04
	dc.b	nG3, $13, nRst, $02, nAb3, $13, nRst, $02, nA3, $03, nRst, $07
	smpsAlterVol        $38
	dc.b	nD4, $1E, nRst, $02
	smpsAlterVol        $C8
	dc.b	nF4, $25, nRst, $05, nF4, $07, nRst, nG4, nRst, nA4, nRst, nBb4
	dc.b	nRst, $04
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	dc.b	nA4, $05
	smpsAlterVol        $FF
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nG4
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nF4
	smpsAlterVol        $FF
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nEb4, $06
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nD4, $05
	smpsAlterVol        $FF
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nC4
	smpsAlterVol        $FF
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nBb3, $14, nRst, $16
	smpsSetvoice        $15
	dc.b	smpsNoAttack, nRst, $3F
	smpsStop

; FM5 Data
Animaniacs_FM5:
	smpsSetvoice        $04
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $03
	smpsAlterVol        $9A
	dc.b	nEb3, nRst, $02, nE3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nF3, $04, nRst, $02, nFs3, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG3, $03, nRst, $02, nAb3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nA3, $04, nRst, $02, nBb3, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nB3, $03, nRst, $02, nC4, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nCs4, $04, nRst, $02, nD4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nEb4, $03, nRst, $02, nE4, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nF4, $04, nRst, $02, nFs4, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG4, $07, nRst, $0E
	smpsSetvoice        $07
	smpsAlterVol        $FE
	smpsPan             panLeft, $00
	dc.b	nG4, $11, nRst, $04, nG4, $12, nRst, $03, nG4, $12, nRst, $03
	dc.b	nAb4, $1E, nRst, $02, nAb4, $08, nRst, $02, nAb4, $1E, nRst, $02
	dc.b	nAb4, $08, nRst, $02, nEb4, $07, nRst, $0E
	smpsSetvoice        $08
	smpsAlterVol        $70
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $99
	dc.b	nEb5, $03, nRst, $02
	smpsAlterVol        $01
	dc.b	nF5, $03, nRst, $02, nFs5, $03, nRst, $02
	smpsAlterVol        $01
	dc.b	nG5, $04, nRst, $01, nAb5, $07, nRst, $0E
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $07
	smpsAlterVol        $EE
	smpsPan             panLeft, $00
	dc.b	nAb4, $08, nRst, $02, nAb4, $09, nRst, $01, nAb4, $1E, nRst, $02
	dc.b	nAb4, $09, nRst, $01, nAb4, $1E, nRst, $02, nAb4, $09, nRst, $02
	dc.b	nEb4, $07, nRst, $0F
	smpsSetvoice        $08
	smpsAlterVol        $09
	smpsPan             panCenter, $00
	dc.b	nEb5, $02, nRst
	smpsAlterVol        $01
	dc.b	nF5, $03, nRst, $02, nG5, $04, nRst, $01
	smpsAlterVol        $01
	dc.b	nAb5, $04, nRst, $02, nBb5, $07, nRst, $0F
	smpsSetvoice        $07
	smpsAlterVol        $F5
	smpsPan             panLeft, $00
	dc.b	nEb4, $07, nRst, $03, nEb4, $08, nRst, $03, nC4, $08, nRst, $02
	dc.b	nC4, $08, nRst, $03, nEb4, $08, nRst, $02, nAb4, $08, nRst, $03
	dc.b	nC5, $04, nRst, $05
	smpsSetvoice        $08
	smpsAlterVol        $70
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $99
	dc.b	nAb5, $05, nRst, $01
	smpsAlterVol        $01
	dc.b	nBb5, $06, nRst, $01, nB5, $06, nRst, $02
	smpsSetvoice        $07
	smpsAlterVol        $F6
	smpsPan             panLeft, $00
	dc.b	nC5, $08, nRst, $03, nCs5, $0D, nRst, $03, nCs5, $02, nRst, $03
	dc.b	nCs5, $08, nRst, $02, nCs5, $08, nRst, $03, nAb4, $0B, nRst, $15
	dc.b	nAb4, $07, nRst, $03, nAb4, $11, nRst, $04, nE5, $11, nRst, $04
	dc.b	nCs5, $1C, nRst, $04, nCs5, $08, nRst, $02, nC5, $0D, nRst, $08
	smpsSetvoice        $08
	smpsAlterVol        $0C
	dc.b	nC5, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nD5, $03, nRst, $02, nEb5, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nF5, $04, nRst, $01, nG5, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nFs5, $03, nRst, $02, nG5, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nA5, $04, nRst, $01, nB5, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG5, $03, nRst, $02, nA5, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nB5, $04, nRst, $01, nC6, $04, nRst, $07
	smpsSetvoice        $0D
	smpsAlterVol        $FD
	smpsPan             panCenter, $00
	dc.b	nC4, nRst, $0E, nC4, $07, nRst, $0E, nC4, $07, nRst, $0E, nC4
	dc.b	$07, nRst, $0E, nC4, $07, nRst, $0E, nC4, $04, nRst, $07, nD4
	dc.b	nRst, $0E
	smpsSetvoice        $06
	smpsAlterVol        $FF
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb5, $01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nE5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE5, $02, nRst, $0E
	smpsSetvoice        $01
	smpsAlterVol        $09
	smpsPan             panRight, $00
	dc.b	nG2, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nAb2, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nA2, $04, nRst, $02, nBb2, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nB2, $03, nRst, $02, nC3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nCs3, $04, nRst, $02, nD3, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nEb3, $03, nRst, $02, nE3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nF3, $04, nRst, $02, nFs3, $03, nRst, $02
	smpsAlterVol        $FF
	dc.b	nG3, $03, nRst, $02, nA3, $04, nRst, $01
	smpsAlterVol        $FF
	dc.b	nBb3, $04, nRst, $02, nB3, $03, nRst, $02, nC4, $09, nRst, $01
	smpsSetvoice        $02
	smpsAlterVol        $FF
	dc.b	nB4, $07, nRst, $0E, nB4, $07, nRst, $39
	smpsSetvoice        $0D
	smpsAlterVol        $01
	smpsPan             panCenter, $00
	dc.b	nC4, $07, nRst, $0E, nC4, $07, nRst, $0E, nE4, $07, nRst, $0E
	dc.b	nE4, $07, nRst, $0E, nF4, $07, nRst, $0E, nF4, $07, nRst, $0E
	dc.b	nF4, $07, nRst, $0E, nF4, $05, nRst, $06, nB2, $1D, nRst, $02
	dc.b	nB2, $03, nRst, $07, nC3, $1E, nRst, $02, nC3, $04, nRst, $08
	dc.b	nCs3, $1C, nRst, $03, nCs3, nRst, $08, nD3, $06, nRst, $0F, nD4
	dc.b	$06, nRst, $0F
	smpsSetvoice        $07
	smpsAlterVol        $FD
	smpsPan             panLeft, $00
	dc.b	nEb4, $1D, nRst, $02, nEb4, $08, nRst, $03, nEb4, $1D, nRst, $02
	dc.b	nEb4, $08, nRst, $03, nBb3, $06, nRst, $0F
	smpsSetvoice        $0A
	smpsAlterVol        $07
	smpsPan             panRight, $00
	dc.b	nBb4, $02, nRst, $03
	smpsAlterVol        $01
	dc.b	nC5, nRst, $02, nCs5, $03, nRst
	smpsAlterVol        $01
	dc.b	nD5, $02, nRst, $03
	smpsAlterVol        $01
	dc.b	nEb5, $06, nRst, $0F
	smpsSetvoice        $07
	smpsAlterVol        $F6
	smpsPan             panLeft, $00
	dc.b	nBb3, $08, nRst, $03, nBb3, $07, nRst, $03, nEb4, $12, nRst, $03
	dc.b	nEb4, $12, nRst, $03, nEb4, $12, nRst, $03, nEb4, $12, nRst, $03
	dc.b	nBb3, $04, nRst, $07
	smpsSetvoice        $0E
	smpsAlterVol        $02
	dc.b	nD5, $13, nRst, $02, nCs5, $09, nRst, $01
	smpsAlterVol        $01
	dc.b	nD5, $07, nRst, $0E
	smpsSetvoice        $07
	smpsAlterVol        $FD
	dc.b	nBb3, $09, nRst, $02, nBb3, $09, nRst, $01, nEb4, $0E, nRst, $02
	dc.b	nEb4, $04, nRst, $01, nBb3, $09, nRst, $02, nEb4, $09, nRst, $01
	dc.b	nG4, $12, nRst, $03, nG4, $09, nRst, $02, nG4, $09, nRst, $02
	dc.b	nAb4, $08, nRst, $02, nAb4, $09, nRst, $02, nAb4, $08, nRst, $02
	dc.b	nAb4, $09, nRst, $02, nEb4, $11, nRst, $0E, nEb4, $09, nRst, $02
	dc.b	nEb4, $11, nRst, $04, nB4, $11, nRst, $04, nAb4, $1C, nRst, $03
	dc.b	nAb4, $09, nRst, $02, nG4, $10, nRst, $4F
	smpsSetvoice        $0D
	smpsAlterVol        $03
	smpsPan             panCenter, $00
	dc.b	nE4, $07, nRst, $0E, nE4, $07, nRst, $0E, nE4, $07, nRst, $0E
	dc.b	nE4, $07, nRst, $0E, nE4, $07, nRst, $0E, nE4, $07, nRst, $0E
	dc.b	nD4, $07, nRst, $0E, nD4, $07, nRst, $0F, nD4, $06, nRst, $0F
	dc.b	nD4, $06, nRst, $0F, nD4, $06, nRst, $0F, nD4, $06, nRst, $0F
	dc.b	nE4, $06, nRst, $0F, nE4, $03, nRst, $08, nE4, $06, nRst, $0F
	dc.b	nG4, $06, nRst, $0F
	smpsSetvoice        $0F
	smpsAlterVol        $08
	dc.b	nG4, $04, nRst, $02
	smpsAlterVol        $FF
	dc.b	nA4, $05, nRst, $03, nB4, $04, nRst, $03
	smpsAlterVol        $FF
	dc.b	nA4, $04, nRst, $03, nB4, $04, nRst, $03
	smpsAlterVol        $FF
	dc.b	nC5, $04, nRst, $03, nB4, $04, nRst, $03
	smpsAlterVol        $FF
	dc.b	nC5, $04, nRst, $03, nD5, $04, nRst, $03
	smpsAlterVol        $FF
	dc.b	nG5, $04, nRst, $03, nA5, $04, nRst, $03
	smpsAlterVol        $FF
	dc.b	nB5, $04, nRst, $03, nC6, $0F, nRst, $1B
	smpsSetvoice        $07
	smpsAlterVol        $6B
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $0E
	smpsAlterVol        $90
	dc.b	nE4, $03, nRst, $04, nE4, $13, nRst, $02
	smpsSetvoice        $0D
	smpsAlterVol        $03
	smpsPan             panCenter, $00
	dc.b	nC3, $1E, nRst, $02, nC3, $03, nRst, $07, nCs3, $1E, nRst, $02
	dc.b	nCs3, $03, nRst, $07, nD3, $1E, nRst, $02, nD3, $03, nRst, $07
	dc.b	nF3, $04, nRst, $07, nEb3, $03, nRst, $07, nD3, $04, nRst, $07
	dc.b	nC3, $03, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $08
	smpsPan             panRight, $00
	dc.b	nBb3, $04, nRst, $02, nB3, $03
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsAlterVol        $FF
	dc.b	nC4, $03, nRst, $02, nCs4, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $01, nD4, $04, nRst, $02, nEb4, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02
	smpsAlterVol        $FF
	dc.b	nE4, $03, nRst, $02, nF4, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $01, nFs4, $04, nRst, $02, nG4, $03
	smpsPan             panLeft, $00
	dc.b	nRst, $02
	smpsAlterVol        $FF
	dc.b	nAb4, $03, nRst, $02, nA4, $04
	smpsPan             panRight, $00
	dc.b	nRst, $01, nBb4, $04, nRst, $02, nB4, $03
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsAlterVol        $FF
	dc.b	nC5, $03, nRst, $02, nCs5, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nD5, $03, nRst, $02, nEb5, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02
	smpsAlterVol        $FF
	dc.b	nE5, $04, nRst, $01, nF5, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nFs5, $03, nRst, $02, nG5, $03
	smpsPan             panLeft, $00
	dc.b	nRst, $02
	smpsAlterVol        $FF
	dc.b	nAb5, $04, nRst, $01, nA5, $04
	smpsPan             panRight, $00
	dc.b	nRst, $02, nBb5, $03, nRst, $02, nA5, $03
	smpsPan             panCenter, $00
	dc.b	nRst, $02
	smpsAlterVol        $FF
	dc.b	nAb5, $04, nRst, $01, nG5, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nFs5, $03, nRst, $02, nF5, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02
	smpsAlterVol        $FF
	dc.b	nE5, $04, nRst, $01, nEb5, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nD5, $03, nRst, $02, nEb5, $03
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nE5, $04, nRst, $01, nF5, $04
	smpsPan             panRight, $00
	dc.b	nRst, $02, nE5, $03, nRst, $02, nEb5, $03
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nD5, $04, nRst, $01, nCs5, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nD5, $03, nRst, $02, nCs5, $04
	smpsPan             panRight, $00
	dc.b	nRst, $01, nC5, $04, nRst, $02, nB4, $03
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nBb4, $03, nRst, $02, nA4, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $01, nAb4, $04, nRst, $02, nG4, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02, nF4, $03, nRst, $02, nFs4, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $01, nG4, $04, nRst, $02, nAb4, $03
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nA4, $03, nRst, $02, nBb4, $04
	smpsPan             panRight, $00
	dc.b	nRst, $01, nB4, $04, nRst, $02, nC5, $03
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nCs5, $03, nRst, $02, nD5, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $01, nEb5, $04, nRst, $02, nE5, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02, nF5, $03, nRst, $02, nG5, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nAb5, $03, nRst, $02, nA5, $03
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nBb5, $04, nRst, $01, nA5, $04
	smpsPan             panRight, $00
	dc.b	nRst, $02, nAb5, $03, nRst, $02, nG5, $03
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nFs5, $04, nRst, $01, nF5, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nE5, $03, nRst, $02, nEb5, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02, nD5, $04, nRst, $01, nCs5, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nC5, $03, nRst, $02, nB4, $03
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nBb4, $04, nRst, $01, nC5, $04
	smpsPan             panRight, $00
	dc.b	nRst, $02, nCs5, $03, nRst, $02, nD5, $03
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nEb5, $04, nRst, $01, nD5, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nCs5, $03, nRst, $02, nC5, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02, nB4, $04, nRst, $01, nBb4, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nA4, $03, nRst, $02, nAb4, $03
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nG4, $04, nRst, $02, nFs4, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02, nF4, $03, nRst, $02, nE4, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $01, nEb4, $04, nRst, $02, nD4, $03
	smpsPan             panLeft, $00
	dc.b	nRst, nC4, $02, nRst, nB3, $04
	smpsPan             panRight, $00
	dc.b	nRst, $02, nG3, $03, nRst, $02, nA3, $03
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nBb3, $03, nRst, $02, nC4, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nBb3, $03, nRst, $02, nC4, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02, nD4, $03, nRst, $02, nE4, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $02, nF4, $03, nRst, $02, nEb4, $03
	smpsPan             panLeft, $00
	dc.b	nRst, nD4, $02, nRst, nC4, $04
	smpsPan             panRight, $00
	dc.b	nRst, $01, nBb3, $04, nRst, $02, nA3, $03
	smpsPan             panCenter, $00
	dc.b	nRst, nG3, $02, nRst, nF3, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nG3, $03, nRst, $02
	smpsAlterVol        $01
	dc.b	nFs3, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02, nG3, $04, nRst, $01
	smpsAlterVol        $01
	dc.b	nA3, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $03, nBb3, $02, nRst
	smpsAlterVol        $01
	dc.b	nC4, $03
	smpsPan             panLeft, $00
	dc.b	nRst, $02, nD4, $04, nRst, $01
	smpsAlterVol        $01
	dc.b	nE4, $04
	smpsPan             panRight, $00
	dc.b	nRst, $03, nF4, $02, nRst
	smpsAlterVol        $01
	dc.b	nFs4, $03
	smpsPan             panCenter, $00
	dc.b	nRst, nG4, nRst, $01
	smpsAlterVol        $01
	dc.b	nAb4, $04
	smpsPan             panLeft, $00
	dc.b	nRst, $03, nA4, $02, nRst
	smpsAlterVol        $01
	dc.b	nBb4, $03
	smpsPan             panRight, $00
	dc.b	nRst, $02, nB4, $04, nRst, $01
	smpsAlterVol        $01
	dc.b	nC5, $04
	smpsPan             panCenter, $00
	dc.b	nRst, $09
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $07
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $08
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $06
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $07
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $08
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $07
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $08
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $07
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $05
	smpsSetvoice        $07
	smpsAlterVol        $F5
	smpsPan             panLeft, $00
	dc.b	nC4, $13, nRst, $02, nC4, $13, nRst, $02, nEb4, $03, nRst, $07
	dc.b	nG4, $1E, nRst, $02, nBb4, $25, nRst, $05, nA4, $07, nRst, nBb4
	dc.b	nRst, nC5, nRst, nD5, $13, nRst, $17, nBb4, $14, nRst, $16
	smpsSetvoice        $16
	dc.b	smpsNoAttack, nRst, $3F
	smpsStop

Animaniacs_Voices:
;	Voice $00
;	$3B
;	$71, $02, $32, $02, 	$52, $51, $8B, $4F, 	$0E, $10, $04, $04
;	$03, $02, $00, $00, 	$65, $55, $25, $08, 	$08, $37, $24, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $01, $02, $01, $01
	smpsVcAttackRate    $0F, $0B, $11, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $10, $0E
	smpsVcDecayRate2    $00, $00, $02, $03
	smpsVcDecayLevel    $00, $02, $05, $06
	smpsVcReleaseRate   $08, $05, $05, $05
	smpsVcTotalLevel    $00, $24, $37, $08

;	Voice $01
;	$3B
;	$01, $02, $04, $01, 	$5F, $13, $5F, $53, 	$00, $0B, $0F, $0F
;	$00, $00, $00, $00, 	$00, $4B, $09, $09, 	$24, $21, $2A, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $04, $02, $01
	smpsVcRateScale     $01, $01, $00, $01
	smpsVcAttackRate    $13, $1F, $13, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0B, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $04, $00
	smpsVcReleaseRate   $09, $09, $0B, $00
	smpsVcTotalLevel    $00, $2A, $21, $24

;	Voice $02
;	$3C
;	$71, $71, $30, $30, 	$1A, $1C, $18, $1C, 	$06, $03, $07, $03
;	$01, $02, $01, $06, 	$66, $77, $78, $77, 	$19, $00, $15, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $18, $1C, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $07, $03, $06
	smpsVcDecayRate2    $06, $01, $02, $01
	smpsVcDecayLevel    $07, $07, $07, $06
	smpsVcReleaseRate   $07, $08, $07, $06
	smpsVcTotalLevel    $00, $15, $00, $19

;	Voice $03
;	$34
;	$01, $01, $01, $01, 	$0E, $12, $12, $12, 	$08, $02, $08, $05
;	$00, $00, $00, $00, 	$38, $18, $38, $28, 	$18, $00, $1C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $08, $02, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $03, $01, $03
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $1C, $00, $18

;	Voice $04
;	$3A
;	$11, $15, $01, $11, 	$55, $53, $55, $50, 	$0A, $0B, $0D, $04
;	$00, $00, $00, $00, 	$15, $55, $21, $08, 	$1B, $0F, $2F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $01, $01
	smpsVcCoarseFreq    $01, $01, $05, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $10, $15, $13, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $0D, $0B, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $02, $05, $01
	smpsVcReleaseRate   $08, $01, $05, $05
	smpsVcTotalLevel    $00, $2F, $0F, $1B

;	Voice $05
;	$2C
;	$7F, $13, $71, $07, 	$1F, $1F, $1F, $9F, 	$05, $0A, $14, $19
;	$06, $04, $06, $06, 	$50, $87, $33, $A7, 	$00, $00, $00, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $01, $07
	smpsVcCoarseFreq    $07, $01, $03, $0F
	smpsVcRateScale     $02, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $19, $14, $0A, $05
	smpsVcDecayRate2    $06, $06, $04, $06
	smpsVcDecayLevel    $0A, $03, $08, $05
	smpsVcReleaseRate   $07, $03, $07, $00
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $06
;	$3C
;	$71, $71, $30, $31, 	$10, $12, $0D, $12, 	$06, $03, $06, $03
;	$01, $06, $01, $06, 	$06, $07, $08, $07, 	$17, $03, $15, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $0D, $12, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $06, $03, $06
	smpsVcDecayRate2    $06, $01, $06, $01
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $08, $07, $06
	smpsVcTotalLevel    $00, $15, $03, $17

;	Voice $07
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$12, $FA, $16, $07, 	$19, $29, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $07, $06, $0A, $02
	smpsVcTotalLevel    $00, $25, $29, $19

;	Voice $08
;	$04
;	$71, $01, $42, $31, 	$56, $99, $54, $99, 	$05, $0C, $07, $0C
;	$06, $06, $06, $06, 	$64, $15, $64, $65, 	$21, $00, $1A, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $00, $07
	smpsVcCoarseFreq    $01, $02, $01, $01
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $19, $14, $19, $16
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $07, $0C, $05
	smpsVcDecayRate2    $06, $06, $06, $06
	smpsVcDecayLevel    $06, $06, $01, $06
	smpsVcReleaseRate   $05, $04, $05, $04
	smpsVcTotalLevel    $00, $1A, $00, $21

;	Voice $09
;	$3A
;	$01, $07, $01, $31, 	$8E, $8E, $8D, $99, 	$0E, $0E, $07, $0C
;	$00, $00, $06, $06, 	$12, $FA, $64, $65, 	$19, $29, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $02, $02, $02, $02
	smpsVcAttackRate    $19, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $07, $0E, $0E
	smpsVcDecayRate2    $06, $06, $00, $00
	smpsVcDecayLevel    $06, $06, $0F, $01
	smpsVcReleaseRate   $05, $04, $0A, $02
	smpsVcTotalLevel    $00, $25, $29, $19

;	Voice $0A
;	$3A
;	$31, $39, $32, $34, 	$D9, $DC, $56, $54, 	$0B, $0C, $00, $06
;	$00, $0C, $00, $00, 	$12, $57, $19, $09, 	$1A, $23, $2D, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $04, $02, $09, $01
	smpsVcRateScale     $01, $01, $03, $03
	smpsVcAttackRate    $14, $16, $1C, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $00, $0C, $0B
	smpsVcDecayRate2    $00, $00, $0C, $00
	smpsVcDecayLevel    $00, $01, $05, $01
	smpsVcReleaseRate   $09, $09, $07, $02
	smpsVcTotalLevel    $00, $2D, $23, $1A

;	Voice $0B
;	$3B
;	$01, $02, $01, $01, 	$5F, $13, $12, $12, 	$00, $02, $08, $05
;	$00, $00, $00, $00, 	$00, $18, $38, $28, 	$24, $21, $1C, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $12, $12, $13, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $08, $02, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $03, $01, $00
	smpsVcReleaseRate   $08, $08, $08, $00
	smpsVcTotalLevel    $00, $1C, $21, $24

;	Voice $0C
;	$3B
;	$71, $71, $30, $31, 	$10, $12, $0D, $12, 	$06, $03, $06, $03
;	$01, $06, $01, $06, 	$06, $07, $08, $07, 	$17, $10, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $0D, $12, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $06, $03, $06
	smpsVcDecayRate2    $06, $01, $06, $01
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $08, $07, $06
	smpsVcTotalLevel    $00, $15, $10, $17

;	Voice $0D
;	$3A
;	$71, $37, $31, $71, 	$DC, $9B, $DC, $DA, 	$04, $09, $04, $03
;	$03, $01, $03, $01, 	$17, $02, $06, $A5, 	$21, $25, $29, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $03, $07
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $03, $03, $02, $03
	smpsVcAttackRate    $1A, $1C, $1B, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $04, $09, $04
	smpsVcDecayRate2    $01, $03, $01, $03
	smpsVcDecayLevel    $0A, $00, $00, $01
	smpsVcReleaseRate   $05, $06, $02, $07
	smpsVcTotalLevel    $00, $29, $25, $21

;	Voice $0E
;	$34
;	$01, $01, $01, $01, 	$10, $10, $10, $10, 	$01, $02, $01, $02
;	$00, $00, $00, $00, 	$18, $18, $18, $18, 	$1E, $05, $18, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $01, $02, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $18, $05, $1E

;	Voice $0F
;	$24
;	$39, $56, $05, $01, 	$5F, $DB, $9E, $9E, 	$10, $07, $0C, $05
;	$00, $0C, $0B, $0A, 	$BA, $84, $F6, $F5, 	$1C, $12, $3F, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $05, $03
	smpsVcCoarseFreq    $01, $05, $06, $09
	smpsVcRateScale     $02, $02, $03, $01
	smpsVcAttackRate    $1E, $1E, $1B, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0C, $07, $10
	smpsVcDecayRate2    $0A, $0B, $0C, $00
	smpsVcDecayLevel    $0F, $0F, $08, $0B
	smpsVcReleaseRate   $05, $06, $04, $0A
	smpsVcTotalLevel    $00, $3F, $12, $1C

;	Voice $10
;	$1C
;	$6F, $01, $21, $71, 	$9F, $DB, $9E, $5E, 	$0F, $07, $06, $07
;	$08, $0A, $0B, $00, 	$8A, $86, $F6, $F7, 	$29, $0F, $29, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $02, $00, $06
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $01, $02, $03, $02
	smpsVcAttackRate    $1E, $1E, $1B, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $06, $07, $0F
	smpsVcDecayRate2    $00, $0B, $0A, $08
	smpsVcDecayLevel    $0F, $0F, $08, $08
	smpsVcReleaseRate   $07, $06, $06, $0A
	smpsVcTotalLevel    $00, $29, $0F, $29

;	Voice $11
;	$3C
;	$71, $71, $30, $31, 	$10, $12, $0D, $53, 	$06, $03, $06, $0F
;	$01, $06, $01, $00, 	$06, $07, $08, $09, 	$17, $00, $15, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $13, $0D, $12, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $06, $03, $06
	smpsVcDecayRate2    $00, $01, $06, $01
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $09, $08, $07, $06
	smpsVcTotalLevel    $00, $15, $00, $17

;	Voice $12
;	$3C
;	$71, $71, $30, $31, 	$10, $12, $0D, $12, 	$06, $03, $06, $03
;	$01, $06, $01, $06, 	$FF, $FF, $FF, $FF, 	$17, $03, $15, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $0D, $12, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $06, $03, $06
	smpsVcDecayRate2    $06, $01, $06, $01
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $03, $17

;	Voice $13
;	$34
;	$01, $01, $01, $01, 	$0E, $12, $12, $12, 	$08, $02, $08, $05
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$18, $02, $1C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $08, $02, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1C, $02, $18

;	Voice $14
;	$3C
;	$71, $71, $30, $30, 	$1A, $1C, $18, $1C, 	$06, $03, $07, $03
;	$01, $02, $01, $06, 	$FF, $FF, $FF, $FF, 	$19, $00, $15, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $18, $1C, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $07, $03, $06
	smpsVcDecayRate2    $06, $01, $02, $01
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $00, $19

;	Voice $15
;	$3A
;	$11, $15, $01, $11, 	$55, $53, $55, $50, 	$0A, $0B, $0D, $04
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1B, $0F, $2F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $00, $01, $01
	smpsVcCoarseFreq    $01, $01, $05, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $10, $15, $13, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $0D, $0B, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2F, $0F, $1B

;	Voice $16
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$19, $29, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $25, $29, $19

