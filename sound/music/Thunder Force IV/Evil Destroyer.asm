EvilDestroyer_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     EvilDestroyer_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       EvilDestroyer_DAC,	$00, $F2
	smpsHeaderFM        EvilDestroyer_FM1,	$00, $00
	smpsHeaderFM        EvilDestroyer_FM2,	$00, $00
	smpsHeaderFM        EvilDestroyer_FM3,	$00, $00
	smpsHeaderFM        EvilDestroyer_FM4,	$00, $00
	smpsHeaderFM        EvilDestroyer_FM5,	$00, $00
	smpsHeaderFM        EvilDestroyer_FM6,	$00, $00
	smpsHeaderPSG       EvilDestroyer_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       EvilDestroyer_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       EvilDestroyer_PSG3,	$00, $00, $00, $00

; DAC Data
EvilDestroyer_DAC:
; PSG3 Data
EvilDestroyer_PSG3:
	smpsStop

; FM1 Data
EvilDestroyer_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $47, nRst, $01, nRst, $46, nRst, $01, nRst, $08
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, $01, nRst, $08, nE4, $01, nRst, $08, smpsNoAttack, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $0F, nE3, $03, nRst, $0F, nE3, $03, nRst, $0F
	dc.b	nE3, $03, nRst, $0F, nE3, $02, nRst, $0F, nE3, $03, nRst, $0F
	dc.b	nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08, smpsNoAttack, nRst, $09, smpsNoAttack, nRst
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $0F, nE3, $03, nRst, $0F, nE3, $03, nRst, $0F
	dc.b	nE3, $02, nRst, $0F, nE3, $03, nRst, $0F, nE3, $03, nRst, $0F
	dc.b	nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08, smpsNoAttack, nRst, $09, smpsNoAttack, nRst, $08
	smpsSetvoice        $05
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $0F, nE3, $03, nRst, $0F, nE3, $03, nRst, $0F
	dc.b	nE3, $02, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $06
	smpsPan             panLeft, $00
	dc.b	nC4, $01, nRst, smpsNoAttack, nRst, $07, smpsNoAttack, nC4, $02, nRst, $07
	smpsPan             panCenter, $00
	dc.b	nB3, $01, nRst, $03, smpsNoAttack, nRst, $05, nB3, $01, nRst, $08
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $04, nA3, $01, nRst, $04, nA3, $01, nRst, $08
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nE4, $01, nRst, $02, smpsNoAttack, nRst, smpsNoAttack, nRst, $04, nE4, $01, nRst
	dc.b	$04, smpsNoAttack, nRst, $04
	smpsSetvoice        $04
	dc.b	nE3, nRst, $06, nE3, $03, nRst, $06

EvilDestroyer_Jump05:
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack
	dc.b	nE3, $02, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $08
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $09
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $0A
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $0B
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $0C
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $0D
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $0E
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	smpsNoAttack, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $02, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack, nE3, $02, nRst, $06
	dc.b	nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	smpsNoAttack, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	smpsNoAttack, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	smpsNoAttack, nRst, $08
	smpsSetvoice        $0F
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $02, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $02, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $02, nRst, $08
	smpsSetvoice        $06
	smpsPan             panRight, $00
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $10
	smpsAlterVol        $6E
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $02, nRst, $06
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack, nE3, $03, nRst, $06
	dc.b	nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, smpsNoAttack, nRst, $01, smpsNoAttack, nE3, $03, nRst, $06
	dc.b	nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $11
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $02, nRst, $06, smpsNoAttack, nRst, $01, smpsNoAttack, nE3, $03, nRst, $06
	dc.b	nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $12
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, smpsNoAttack, nRst, $01, smpsNoAttack
	dc.b	nE3, $02, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $13
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $08
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $06
	smpsPan             panLeft, $00
	dc.b	nC4, $01, nRst, $04, smpsNoAttack, nRst
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nE4, $02, nRst, $03, nE4, $01, nRst, $04
	smpsSetvoice        $06
	smpsPan             panRight, $00
	dc.b	nE4, $01, nRst, $04, nE4, $01, nRst, $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $04, smpsNoAttack, nRst, $04
	smpsPan             panLeft, $00
	dc.b	nB3, $01, nRst, $04, nE4, $01, nRst, $04, smpsNoAttack, nRst
	smpsPan             panCenter, $00
	dc.b	nD4, $01, nRst, $03
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $01, smpsNoAttack, nRst, $04, nB3, $01, nRst, $03
	smpsSetvoice        $14
	smpsAlterVol        $6E
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $23
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $20
	smpsSetvoice        $06
	smpsAlterVol        $03
	smpsPan             panLeft, $00
	dc.b	nB3, $02, nRst, $22
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08, nE4, $01, nRst, $08, nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, smpsNoAttack, nRst, $01, smpsNoAttack
	dc.b	nE3, $02, nRst, $06
	smpsSetvoice        $17
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $18
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $09
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $19
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $05
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	smpsNoAttack, nRst, $01, nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $02, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	smpsNoAttack, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $0F
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $02, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $05
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $02, nRst, $06
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $02, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $05
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	smpsNoAttack, nRst, $01, nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	smpsNoAttack, nRst, $08
	smpsSetvoice        $1A
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $92
	dc.b	nE3, $02, nRst, $06
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08, smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsPan             panRight, $00
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	smpsNoAttack, nRst, $09
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $02, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $1B
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $1C
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $04, nRst, $06, nE3, $03, nRst, $05
	smpsSetvoice        $1D
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $03
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $02, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	smpsNoAttack, nRst, $01, nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	dc.b	nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $02, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $06, nE3, $03, nRst, $06, nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	nE4, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $02, nRst, $06
	smpsSetvoice        $1E
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $92
	smpsPan             panLeft, $00
	dc.b	nC4, nRst, $04, smpsNoAttack, nRst
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nE4, $02, nRst, $03, nE4, $01, nRst, $04
	smpsSetvoice        $06
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $04, nE4, $01, nRst, $04, nE4, $01, nRst, $04, smpsNoAttack
	dc.b	nRst, $04
	smpsPan             panLeft, $00
	dc.b	nB3, $02, nRst, $03
	smpsAlterVol        $6E
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $04, nE4, $01, nRst, $03
	smpsPan             panCenter, $00
	dc.b	nD4, $01, nRst, $04
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, nB3, $01, nRst, $04
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nE4, $01, nRst, $23
	smpsSetvoice        $04
	dc.b	nE3, $03, nRst, $20
	smpsSetvoice        $1F
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $95
	smpsPan             panLeft, $00
	dc.b	nB3, nRst, $23
	smpsSetvoice        $04
	smpsAlterVol        $FD
	smpsPan             panCenter, $00
	dc.b	nE3, $03, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $92
	dc.b	smpsNoAttack, nRst, $08, nE4, $01, nRst, $08, nE4, $01, nRst, $08
	smpsSetvoice        $04
	dc.b	nE3, $04, nRst, $06, nE3, $03, nRst, $05, smpsNoAttack, nRst, $01
	smpsPan             panCenter, $00
	smpsJump            EvilDestroyer_Jump05

; FM2 Data
EvilDestroyer_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $13
	smpsPan             panCenter, $00
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb1, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA1, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA1, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA1, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb1, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb1, $01, nRst, $02
	smpsSetvoice        $00
	smpsAlterVol        $6C
	dc.b	nRst, $01, nRst, $47, smpsNoAttack, nRst, $2C
	smpsAlterVol        $91
	smpsAlterNote       $00
	dc.b	nE2, $06, nRst, $03, nE2, $06, nRst, $03, nE2, $06, nRst, $03
	smpsAlterVol        $6F
	dc.b	nRst, $01, nRst, $47, smpsNoAttack, nRst, $2C
	smpsAlterVol        $91
	dc.b	nE2, $06, nRst, $03, nE2, $06, nRst, $03, nE2, $06, nRst, $03
	smpsAlterVol        $6F
	dc.b	nRst, $01, nRst, $46, smpsNoAttack, nRst, $2D
	smpsAlterVol        $91
	dc.b	nE2, $06, nRst, $03, nE2, $06, nRst, $03, nE2, $05, nRst, $04
	smpsAlterVol        $6F
	dc.b	nRst, $01, nRst, $1A, nRst, $01, nRst, $46
	smpsAlterVol        $91
	dc.b	nE2, $10, nRst, $02, nB2, $07, nRst, $02, nC2, $08, nRst, $01
	dc.b	nD2, $08, nRst, $01, nE2, $08, nRst, $02, nE2, $07, nRst, $02

EvilDestroyer_Jump04:
	dc.b	nE2, $08, nRst, $02, nE2, $07, nRst, $01, nE2, $08, nRst, $02
	dc.b	nE2, $07, nRst, $02, nE2, $08, nRst, $02, nE2, $07, nRst, $02
	dc.b	nE2, $08, nRst, $02, nE2, $07, nRst, $02, nE2, $07, nRst, $02
	dc.b	nE2, $07, nRst, $02, nE2, $07, nRst, $02, nG2, $07, nRst, $02
	dc.b	nC2, $08, nRst, $02, nD2, $07, nRst, $02, nE2, $08, nRst, $02
	dc.b	nE2, $07, nRst, $02, nE2, $08, nRst, $01, nE2, $07, nRst, $02
	dc.b	nE2, $08, nRst, $02, nE2, $07, nRst, $02, nE2, $08, nRst, $01
	dc.b	nE2, $08, nRst, $02, nE2, $08, nRst, $01, nE2, $08, nRst, $01
	dc.b	smpsNoAttack, nRst, $01, smpsNoAttack, nE2, $07, nRst, $01, nE2, $07, nRst, $02
	dc.b	nE2, $07, nRst, $02, nG2, $07, nRst, $02, nC2, $08, nRst, $02
	dc.b	nD2, $07, nRst, $02, nE2, $08, nRst, $02, nE2, $07, nRst, $02
	dc.b	nE2, $08, nRst, $01, nE2, $07, nRst, $02, nE2, $08, nRst, $02
	dc.b	nE2, $07, nRst, $02, nE2, $08, nRst, $01, nE2, $08, nRst, $02
	dc.b	nE2, $08, nRst, $01, nE2, $08, nRst, $02, nE2, $07, nRst, $01
	dc.b	nE2, $07, nRst, $02, nE2, $07, nRst, $02, nG2, $07, nRst, $02
	dc.b	nC2, $08, nRst, $02, nD2, $07, nRst, $02, nE2, $08, nRst, $02
	dc.b	nE2, $07, nRst, $02, nE2, $08, nRst, $01, nE2, $08, nRst, $01
	dc.b	nE2, $07, nRst, $02, nE2, $07, nRst, $02, nE2, $08, nRst, $02
	dc.b	nE2, $08, nRst, $01, nE2, $08, nRst, $02, nE2, $07, nRst, $02
	dc.b	nE2, $08, nRst, $01, smpsNoAttack, nRst, $01, smpsNoAttack, nE2, $07, nRst, $01
	dc.b	nE2, $07, nRst, $02, nE2, $07, nRst, $02, nE2, $08, nRst, $02
	dc.b	nE2, $08, nRst, $01, nE2, $06, nRst, $03, nE2, $06, nRst, $03
	dc.b	nE2, $06, nRst, $03, nE2, $06, nRst, $03, nE2, $06, nRst, $03
	dc.b	nE2, $05, nRst, $04, nE2, $06, nRst, $03, nE2, $07, nRst, $03
	dc.b	nE2, $06, nRst, $03, nE2, $06, nRst, $03, nE2, $06, nRst, $03
	dc.b	nE2, $06, nRst, $03, nE2, $06, nRst, $03, nE2, $06, nRst, $03
	dc.b	nE2, $06, nRst, $03, nD2, $0A, smpsNoAttack, nD2, $05, nRst, $03, nD2
	dc.b	$06, nRst, $03, nD2, $06, nRst, $03, nD2, $06, nRst, $03, nD2
	dc.b	$06, nRst, $03, smpsNoAttack, nRst, $01, smpsNoAttack, nD2, $05, nRst, $04, nD2
	dc.b	$06, nRst, $03, nD2, $06, nRst, $04, nD2, $06, nRst, $03, nD2
	dc.b	$06, nRst, $03, nD2, $07, nRst, $03, nD2, $06, nRst, $03, nD2
	dc.b	$05, nRst, $04, nD2, $05, nRst, $04, nD2, $05, nRst, $03, nCs2
	dc.b	$0A, smpsNoAttack, nCs2, $06, nRst, $04, nCs2, $05, nRst, $04, nCs2, $05
	dc.b	nRst, $03, smpsNoAttack, nRst, $01, smpsNoAttack, nCs2, $05, nRst, $03, nCs2, $07
	dc.b	nRst, $03, nCs2, $06, nRst, $03, nCs2, $06, nRst, $04, nCs2, $06
	dc.b	nRst, $03, nCs2, $06, nRst, $04, nCs2, $05, nRst, $04, nCs2, $06
	dc.b	nRst, $03, nCs2, $06, nRst, $03, nCs2, $06, nRst, $03, nCs2, $06
	dc.b	nRst, $03, nCs2, $05, nRst, $04, nC2, $10, nRst, $02, nC2, $07
	dc.b	nRst, $02, nE2, $07, nRst, $02, nA2, $07, nRst, $02, nG2, $08
	dc.b	nRst, $01, nFs2, $08, nRst, $01, nC2, $08, nRst, $02, nC2, $08
	dc.b	nRst, $02, nB1, $08, nRst, $01, nB1, $07, nRst, $02, nB1, $08
	dc.b	nRst, $02, nB1, $10, nRst, $01, nB1, $08, nRst, $02, nE2, $06
	dc.b	nRst, $03, nFs2, $06, nRst, $04, nE2, $06, nRst, $03, nE2, $06
	dc.b	nRst, $03, nE2, $07, nRst, $03, nE2, $05, nRst, $04, nE2, $06
	dc.b	nRst, $03, nE2, $06, nRst, $03, nE2, $06, nRst, $03, nE2, $06
	dc.b	nRst, $04, nE2, $06, nRst, $03, nE2, $06, nRst, $03, nE2, $07
	dc.b	nRst, $03, nE2, $05, nRst, $04, nE2, $06, nRst, $03, nE2, $06
	dc.b	nRst, $03, nE2, $07, nRst, $03, nD2, $0A, smpsNoAttack, nD2, $06, nRst
	dc.b	$03, nD2, $06, nRst, $03, nD2, $06, nRst, $04, nD2, $05, nRst
	dc.b	$04, nD2, $06, nRst, $03, nD2, $06, nRst, $03, nD2, $06, nRst
	dc.b	$04, nD2, $06, nRst, $03, nD2, $07, nRst, $03, nD2, $06, nRst
	dc.b	$03, nD2, $06, nRst, $03, smpsNoAttack, nRst, $01, smpsNoAttack, nD2, $05, nRst
	dc.b	$03, nD2, $07, nRst, $03, nD2, $06, nRst, $03, nD2, $06, nRst
	dc.b	$03, smpsNoAttack, nRst, $01, nCs2, $09, smpsNoAttack, nCs2, $06, nRst, $04, nCs2
	dc.b	$05, nRst, $04, nCs2, $06, nRst, $03, nCs2, $06, nRst, $03, nCs2
	dc.b	$06, nRst, $04, nCs2, $05, nRst, $04, nCs2, $06, nRst, $03, nCs2
	dc.b	$07, nRst, $03, nCs2, $06, nRst, $03, nCs2, $06, nRst, $03, nCs2
	dc.b	$06, nRst, $03, nCs2, $06, nRst, $03, nCs2, $06, nRst, $04, nCs2
	dc.b	$05, nRst, $04, nCs2, $06, nRst, $03, nC2, $11, nRst, $02, nC2
	dc.b	$05, nRst, $04, nC2, $06, nRst, $03, nC2, $06, nRst, $03, nC2
	dc.b	$07, nRst, $03, nC2, $05, nRst, $04, nC2, $06, nRst, $03, nC2
	dc.b	$07, nRst, $03, nC2, $06, nRst, $03, nC2, $06, nRst, $03, smpsNoAttack
	dc.b	nRst, $01, smpsNoAttack, nC2, $06, nRst, $03, nC2, $06, nRst, $04, nC2
	dc.b	$06, nRst, $03, nC2, $07, nRst, $03, nC2, $06, nRst, $03, nC2
	dc.b	$05, nRst, $04, nE2, $46, nRst, $01
	smpsSetvoice        $15
	dc.b	smpsNoAttack, nRst
	smpsSetvoice        $16
	smpsAlterVol        $04
	dc.b	nD3, $06
	smpsAlterVol        $FC
	dc.b	smpsNoAttack, nD3, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $0C, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE3, $0C, nRst, $02
	smpsSetvoice        $00
	dc.b	nD2, $06, nRst, $03, nE2, $06, nRst, $03, nE2, $06, nRst, $03
	dc.b	nE2, $06, nRst, $03, nF2, $08, nRst, $02, nF2, $07, nRst, $02
	dc.b	nF2, $07, nRst, $02, nF2, $07, nRst, $02, nF2, $08, nRst, $02
	dc.b	nF2, $07, nRst, $02, nF2, $07, nRst, $02, nF2, $08, nRst, $02
	dc.b	nF2, $08, nRst, $01, nF2, $08, nRst, $01, nF2, $08, nRst, $01
	dc.b	nF2, $07, nRst, $02, nF2, $07, nRst, $02, nAb2, $07, nRst, $02
	dc.b	nCs2, $08, nRst, $02, nEb2, $07, nRst, $02, nF2, $08, nRst, $02
	dc.b	nF2, $07, nRst, $02, nF2, $07, nRst, $02, nF2, $07, nRst, $02
	dc.b	nF2, $08, nRst, $02, nF2, $07, nRst, $02, nF2, $07, nRst, $02
	dc.b	nF2, $08, nRst, $02, nF2, $08, nRst, $01, nF2, $08, nRst, $01
	dc.b	nF2, $08, nRst, $01, nF2, $07, nRst, $02, nF2, $07, nRst, $02
	dc.b	nAb2, $07, nRst, $02, nCs2, $08, nRst, $02, nEb2, $07, nRst, $02
	dc.b	nF2, $08, nRst, $02, nF2, $07, nRst, $02, nF2, $08, nRst, $01
	dc.b	nF2, $07, nRst, $02, nF2, $08, nRst, $02, nF2, $07, nRst, $02
	dc.b	nF2, $08, nRst, $01, nF2, $08, nRst, $02, nF2, $08, nRst, $01
	dc.b	nF2, $08, nRst, $02, nF2, $07, nRst, $01, nF2, $08, nRst, $01
	dc.b	nF2, $07, nRst, $02, nAb2, $07, nRst, $02, nCs2, $08, nRst, $02
	dc.b	nEb2, $07, nRst, $02, nF2, $08, nRst, $02, nF2, $07, nRst, $02
	dc.b	nF2, $08, nRst, $01, nF2, $07, nRst, $02, nF2, $08, nRst, $02
	dc.b	nF2, $07, nRst, $02, nF2, $08, nRst, $01, nF2, $08, nRst, $02
	dc.b	nF2, $08, nRst, $02, nF2, $07, nRst, $02, nF2, $07, nRst, $02
	dc.b	nF2, $08, nRst, $02, nF2, $08, nRst, $01, nF2, $08, nRst, $01
	dc.b	nF2, $07, nRst, $02, nF2, $08, nRst, $02, nF2, $05, nRst, $04
	dc.b	nF2, $05, nRst, $04, nF2, $05, nRst, $04, nF2, $05, nRst, $03
	dc.b	nF2, $06, nRst, $03, nF2, $06, nRst, $03, nF2, $06, nRst, $04
	dc.b	nF2, $06, nRst, $03, nF2, $07, nRst, $03, nF2, $06, nRst, $03
	dc.b	nF2, $06, nRst, $04, nF2, $05, nRst, $03, nF2, $06, nRst, $03
	dc.b	nF2, $06, nRst, $03, nF2, $06, nRst, $03, nEb2, $0A, smpsNoAttack, nEb2
	dc.b	$06, nRst, $03, nEb2, $06, nRst, $03, nEb2, $06, nRst, $03, nEb2
	dc.b	$06, nRst, $03, nEb2, $06, nRst, $03, nEb2, $06, nRst, $04, nEb2
	dc.b	$06, nRst, $03, nEb2, $06, nRst, $04, nEb2, $06, nRst, $03, nEb2
	dc.b	$06, nRst, $03, nEb2, $07, nRst, $03, nEb2, $05, nRst, $04, nEb2
	dc.b	$05, nRst, $03, nEb2, $06, nRst, $04, nEb2, $05, nRst, $03, nD2
	dc.b	$0A, smpsNoAttack, nD2, $06, nRst, $03, smpsNoAttack, nRst, $01, smpsNoAttack, nD2, $05
	dc.b	nRst, $04, nD2, $05, nRst, $03, nD2, $06, nRst, $03, nD2, $07
	dc.b	nRst, $03, nD2, $06, nRst, $03, nD2, $06, nRst, $03, nD2, $07
	dc.b	nRst, $03, nD2, $06, nRst, $04, nD2, $05, nRst, $04, nD2, $06
	dc.b	nRst, $03, nD2, $06, nRst, $03, nD2, $06, nRst, $03, nD2, $06
	dc.b	nRst, $03, nD2, $06, nRst, $03, smpsNoAttack, nRst, $01, nCs2, $10, nRst
	dc.b	$02, nCs2, $07, nRst, $02, nF2, $07, nRst, $02, nBb2, $07, nRst
	dc.b	$02, nAb2, $07, nRst, $02, nG2, $07, nRst, $02, nCs2, $08, nRst
	dc.b	$02, nCs2, $08, nRst, $01, nC2, $08, nRst, $02, nC2, $07, nRst
	dc.b	$02, nC2, $08, nRst, $02, nC2, $0F, nRst, $02, nC2, $07, nRst
	dc.b	$02, nF2, $07, nRst, $03, nG2, $06, nRst, $03, smpsNoAttack, nRst, $01
	dc.b	nF2, $06, nRst, $03, nF2, $06, nRst, $03, nF2, $06, nRst, $04
	dc.b	nF2, $05, nRst, $03, nF2, $07, nRst, $03, nF2, $06, nRst, $03
	dc.b	nF2, $06, nRst, $03, nF2, $06, nRst, $03, smpsNoAttack, nRst, $01, smpsNoAttack
	dc.b	nF2, $06, nRst, $03, nF2, $06, nRst, $03, nF2, $06, nRst, $04
	dc.b	nF2, $05, nRst, $04, nF2, $06, nRst, $03, nF2, $06, nRst, $03
	dc.b	nF2, $06, nRst, $04, nEb2, $09, smpsNoAttack, nEb2, $07, nRst, $03, nEb2
	dc.b	$05, nRst, $04, nEb2, $06, nRst, $03, nEb2, $06, nRst, $03, nEb2
	dc.b	$07, nRst, $03, nEb2, $05, nRst, $04, nEb2, $06, nRst, $03, nEb2
	dc.b	$07, nRst, $03, nEb2, $06, nRst, $03, nEb2, $06, nRst, $04, nEb2
	dc.b	$05, nRst, $03, nEb2, $06, nRst, $03, nEb2, $07, nRst, $03, nEb2
	dc.b	$05, nRst, $04, nEb2, $06, nRst, $03, nD2, $0A, smpsNoAttack, nD2, $06
	dc.b	nRst, $03, smpsNoAttack, nRst, $01, smpsNoAttack, nD2, $05, nRst, $04, nD2, $06
	dc.b	nRst, $03, nD2, $06, nRst, $03, nD2, $06, nRst, $04, nD2, $05
	dc.b	nRst, $04, nD2, $06, nRst, $03, nD2, $07, nRst, $03, nD2, $06
	dc.b	nRst, $03, nD2, $06, nRst, $03, nD2, $06, nRst, $03, nD2, $06
	dc.b	nRst, $03, nD2, $06, nRst, $04, nD2, $05, nRst, $04, nD2, $06
	dc.b	nRst, $03, nCs2, $11, nRst, $02, nCs2, $05, nRst, $04, nCs2, $06
	dc.b	nRst, $03, nCs2, $06, nRst, $03, nCs2, $06, nRst, $04, nCs2, $05
	dc.b	nRst, $04, nCs2, $06, nRst, $03, nCs2, $07, nRst, $03, nCs2, $06
	dc.b	nRst, $03, nCs2, $06, nRst, $03, nCs2, $07, nRst, $03, nCs2, $06
	dc.b	nRst, $03, nCs2, $06, nRst, $04, nCs2, $06, nRst, $03, nCs2, $06
	dc.b	nRst, $03, nCs2, $06, nRst, $03, nF2, $46, nRst, $02
	smpsSetvoice        $16
	smpsAlterVol        $04
	dc.b	nEb3, $06
	smpsAlterVol        $FC
	dc.b	smpsNoAttack, nEb3, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $0C, smpsNoAttack, nG3, $01, smpsNoAttack, nF3, $0C, nRst, $02
	smpsSetvoice        $00
	dc.b	nEb2, $06, nRst, $04, nF2, $05, nRst, $03, nF2, $06, nRst, $03
	dc.b	nF2, $06, nRst, $03
	smpsAlterVol        $6F
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $91
	dc.b	nE2, $07, nRst, $02, nE2, $07, nRst, $02
	smpsPan             panCenter, $00
	smpsJump            EvilDestroyer_Jump04

; FM3 Data
EvilDestroyer_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $15
	smpsPan             panCenter, $00
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb1, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA1, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA1, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA1, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb1, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb1, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb1, $01, nRst, $01
	smpsAlterNote       $0E
	dc.b	nG1, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack, nB2
	dc.b	$07, nRst, $01, nB2, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst
	dc.b	$05, nE2, $01, smpsNoAttack, nA2, $06, nRst, $02, nA2, $01, smpsNoAttack, nE2
	dc.b	$02, nRst, $06, nE2, $03, nRst, $06, nG2, $07, nRst, $01, smpsNoAttack
	dc.b	nRst, nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $10, nRst
	dc.b	$02, nE2, $01, smpsNoAttack, nB2, $06, nRst, $02, nB2, $01, smpsNoAttack, nC2
	dc.b	$06, nRst, $02, nC2, $01, smpsNoAttack, nD2, $06, nRst, $02, nD2, $01
	dc.b	smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	dc.b	nB2, $07, nRst, $01, nB2, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04
	dc.b	nRst, $05, nE2, $01, smpsNoAttack, nA2, $06, nRst, $02, nE2, $03, nRst
	dc.b	$06, nE2, $03, nRst, $06, nG2, $07, nRst, $01, nG2, smpsNoAttack, nE2
	dc.b	$03, nRst, $05, nE2, $04, nRst, $05, nE2, $10, nRst, $02, nE2
	dc.b	$01, smpsNoAttack, nB2, $06, nRst, $02, nB2, $01, smpsNoAttack, nC2, $06, nRst
	dc.b	$02, nD2, $07, nRst, $02, nD2, $01, smpsNoAttack, nE2, $03, nRst, $05
	dc.b	nE2, $04, nRst, $05, nE2, $01, smpsNoAttack, nB2, $06, nRst, $02, nB2
	dc.b	$01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $03, nRst, $06, nA2, $07
	dc.b	nRst, $02, nE2, $03, nRst, $06, nE2, $03, nRst, $06, nG2, $07
	dc.b	nRst, $01, nG2, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	dc.b	nE2, $10, nRst, $02, nE2, $01, smpsNoAttack, nB2, $06, nRst, $02, nC2
	dc.b	$07, nRst, $02, nD2, $07, nRst, $02, nD2, $01, smpsNoAttack, nE2, $03
	dc.b	nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack, nB3, $06, nRst
	dc.b	$02, nB3, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $03, nRst, $06
	smpsAlterNote       $12
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA3, $06, nRst, $02
	smpsAlterNote       $E9
	dc.b	nA2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack, nE2, $03, nRst, $06
	smpsAlterNote       $12
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $06, nRst, $01, nG3, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack, nE3
	dc.b	$0F, nRst, $02, nB2, $07, nRst, $02, nB2, $01, smpsNoAttack, nC3, $07
	dc.b	nRst, $01, nC3, smpsNoAttack, nD3, $07, nRst, $02, nD3, $01, smpsNoAttack, nE2
	dc.b	$02, nRst, $06, nE2, $03, nRst, $06

EvilDestroyer_Jump03:
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB3, $06, nRst, $02
	smpsAlterNote       $E7
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06
	smpsAlterNote       $12
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA3, $06, nRst, $02, nA3, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $06, nRst, $02
	smpsAlterNote       $EC
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack, nE3
	dc.b	$0F, nRst, $02, nB2, $07, nRst, $02, nB2, $01, smpsNoAttack, nC3, $07
	dc.b	nRst, $02, nC3, $01, smpsNoAttack, nD3, $06, nRst, $02, nD3, $01, smpsNoAttack
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $06, nE2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB3, $06, nRst, $01, nB3, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04
	dc.b	nRst, $06
	smpsAlterNote       $12
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA3, $06, nRst, $02, nA3, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $05, nE2, $04, nRst, $06, nE2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $06, nRst, $02
	smpsAlterNote       $EC
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $05, nE2, $01, smpsNoAttack, nE3
	dc.b	$0F, nRst, $02, nE3, $01, smpsNoAttack, nB2, $06, nRst, $02, nB2, $01
	dc.b	smpsNoAttack, nC3, $07, nRst, $02, nC3, $01, smpsNoAttack, nD3, $06, nRst, $02
	dc.b	smpsNoAttack, nRst, $01, nE2, $03, nRst, $06, nE2, $03, nRst, $06, nE2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB3, $06, nRst, $01, smpsNoAttack, nRst
	smpsAlterNote       $E7
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $05, nE2, $04, nRst, $06
	smpsAlterNote       $12
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA3, $06, nRst, $02, nA3, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $06, nRst, $02
	smpsAlterNote       $EC
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06, nE3, $0F, nRst, $02
	dc.b	nE3, $01, smpsNoAttack, nB2, $06, nRst, $02, nB2, $01, smpsNoAttack, nC3, $07
	dc.b	nRst, $02, nC3, $01, smpsNoAttack, nD3, $07, nRst, $02, nE2, $03, nRst
	dc.b	$06, nE2, $03, nRst, $06, nE2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB3, $06, nRst, $02
	smpsAlterNote       $E7
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack, nA3
	dc.b	$06, nRst, $02, nA3, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack
	dc.b	nE2, $01, smpsNoAttack, nG3, $06, nRst, $02
	smpsAlterNote       $EC
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $04, smpsNoAttack
	dc.b	nRst, $05, smpsNoAttack, nRst, $04, smpsNoAttack, nRst, $04, smpsNoAttack, nRst, $01, nFs3
	dc.b	$02, nRst, nA3, nRst, nA3, $01, smpsNoAttack, nB3, nRst, $02, nB3, $01
	dc.b	smpsNoAttack, nG3, nRst, $03, nG3, $01, smpsNoAttack, nE3, nRst, $03, nE3, $01
	dc.b	nRst, $04, nC3, $01, smpsNoAttack, nE2, $3C, nRst, $02, nE2, $01, nRst
	dc.b	$04, smpsNoAttack, nRst, $04, nFs2, $01, smpsNoAttack, nE2, $03, nRst, $06, nE2
	dc.b	$01, smpsNoAttack, nE3, $07, nRst, $02, nE2, $03, nRst, $06, nE2, $03
	dc.b	nRst, $05, nE2, $01, smpsNoAttack, nE3, $06, nRst, $02, nE3, $01, smpsNoAttack
	dc.b	nE2, $03, nRst, $05, nE2, $03, nRst, $06, nE3, $07, nRst, $02
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD2, $08, smpsNoAttack, nD2, $03, nRst, $05, nD2, $04, nRst, $05, nD2
	dc.b	$04, nRst, $05, nD2, $04, nRst, $05, nD2, $04, nRst, $06, nD2
	dc.b	$03, nRst, $06, nD2, $04, nRst, $05, nD2, $04, nRst, $06, nD2
	dc.b	$01, smpsNoAttack, nD3, $07, nRst, $01, nD3, smpsNoAttack, nD2, $03, nRst, $05
	dc.b	nD2, $04, nRst, $06, nD3, $07, nRst, $02, nD2, $03, nRst, $06
	dc.b	nD2, $03, nRst, $06, nD3, $07, nRst, $02, nD3, $01, smpsNoAttack, nCs2
	dc.b	$08, smpsNoAttack, nCs2, $04, nRst, $06, nCs2, $03, nRst, $06, nCs2, $03
	dc.b	nRst, $06, nCs2, $03, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack, nCs2, $03
	dc.b	nRst, $06, nCs2, $03, nRst, $06, nCs2, $04, nRst, $06, nCs2, $04
	dc.b	nRst, $05, nCs2, $01, smpsNoAttack, nCs3, $07, nRst, $02, nCs2, $03, nRst
	dc.b	$06, nCs2, $04, nRst, $05, nCs2, $01, smpsNoAttack, nCs3, $06, nRst, $02
	dc.b	nCs3, $01, smpsNoAttack, nCs2, $03, nRst, $05, nCs2, $03, nRst, $06, nCs3
	dc.b	$07, nRst, $02, nCs3, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $0B, nRst, $05, nC2, $04, nRst, $05, nC2, $01, smpsNoAttack, nE2
	dc.b	$03, nRst, $05, nE2, $01, smpsNoAttack, nA2, $02, nRst, $06, nA2, $01
	dc.b	smpsNoAttack, nG2, $05, nRst, $04, nFs2, $05, nRst, $04, nFs2, $01, smpsNoAttack
	dc.b	nE2, $06, nRst, $02, nE2, $01, smpsNoAttack, nC2, $07, nRst, $02, nC2
	dc.b	$01, smpsNoAttack, nB1, $07, nRst, $01, nB1, $04, nRst, $05, nB1, $04
	dc.b	nRst, $06, nEb2, $10, nRst, $02, nB1, $07, nRst, $02, nB1, $01
	dc.b	smpsNoAttack, nE2, $06, nRst, $02, nE2, $01, smpsNoAttack, nFs2, $07, nRst, $02
	dc.b	nFs2, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2
	dc.b	$04, nRst, $06, nE2, $03, nRst, $06, nE2, $04, nRst, $05, nE2
	dc.b	$01, smpsNoAttack, nA2, $02, smpsNoAttack, nA2, $01, smpsNoAttack, nB2, $0C, nRst, $02
	dc.b	nB2, $01, smpsNoAttack, nE2, $03, nRst, $06, nE2, $01, smpsNoAttack, nE3, $07
	dc.b	nRst, $01, nE3, smpsNoAttack, nE2, $03, nRst, $06, nE2, $03, nRst, $06
	dc.b	nE3, $07, nRst, $02, nE3, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2
	dc.b	$04, nRst, $05, nE2, $01, smpsNoAttack, nE3, $07, nRst, $02, nE3, $01
	dc.b	smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD2, $08, smpsNoAttack, nD2, $04, nRst, $05, nD2, $04, nRst, $05, nD2
	dc.b	$04, nRst, $06, nD2, $03, nRst, $06, nD2, $04, nRst, $05, nD2
	dc.b	$01, smpsNoAttack, nE2, $06, nRst, $02, nE2, $01, smpsNoAttack, nFs2, $07, nRst
	dc.b	$02, nFs2, $01, smpsNoAttack, nD2, $03, nRst, $05, nD2, $01, smpsNoAttack, nD3
	dc.b	$07, nRst, $02, nD2, $03, nRst, $06, nD2, $04, nRst, $06, nD3
	dc.b	$07, nRst, $01, nD3, $02, smpsNoAttack, nD2, nRst, $06, nD2, $03, nRst
	dc.b	$06, nD2, $01, smpsNoAttack, nD3, $07, nRst, $02, nD3, $01, smpsNoAttack, nCs2
	dc.b	$08, smpsNoAttack, nCs2, $04, nRst, $06, nCs2, $03, nRst, $06, nCs2, $04
	dc.b	nRst, $05, nCs2, $04, nRst, $05, nCs2, $04, nRst, $06, nCs2, $07
	dc.b	nRst, $02, nCs2, $01, smpsNoAttack, nA2, $06, nRst, $02, nA2, $01, smpsNoAttack
	dc.b	nCs2, $03, nRst, $06, nCs2, $01, smpsNoAttack, nCs3, $07, nRst, $01, nCs3
	dc.b	smpsNoAttack, nCs2, $03, nRst, $06, nCs2, $03, nRst, $05, nCs2, $01, smpsNoAttack
	dc.b	nCs3, $06, nRst, $02, nCs3, $01, smpsNoAttack, nCs2, $03, nRst, $06, nCs2
	dc.b	$03, nRst, $06, nCs2, $01, smpsNoAttack, nCs3, $06, nRst, $02, smpsNoAttack, nRst
	dc.b	$01
	smpsAlterNote       $F2
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $0F, nRst, $02, nC2, $03, nRst, $06, nC2, $01, smpsNoAttack, nFs2
	dc.b	$03, nRst, $05, nFs2, $01, smpsNoAttack, nA2, $03, nRst, $05, nA2, $01
	dc.b	smpsNoAttack, nE2, $06, nRst, $03, nFs2, $05, nRst, $04, nFs2, $01, smpsNoAttack
	dc.b	nG2, $07, nRst, $01, nG2, smpsNoAttack, nC3, $07, nRst, $02, smpsNoAttack, nRst
	dc.b	$04, nE3, $01, smpsNoAttack, nD3, nRst, $03, nD3, $01, nRst, $04, nA3
	dc.b	$01, nRst, $04, nA3, $01, nRst, $03, nG3, $01, nRst, $04, nE3
	dc.b	$01, smpsNoAttack, nC3, nRst, $03, nC3, $01, smpsNoAttack, nB3, $04, smpsNoAttack, nB3
	dc.b	$01, smpsNoAttack, nA3, nRst, $03, nE3, $02, nRst, nE3, smpsNoAttack, nD3, nRst
	dc.b	nB2, nRst, nA2, $03, nRst, $01, nA2, smpsNoAttack, nG2, $02, nRst, nFs2
	dc.b	nRst, nFs2, $01, smpsNoAttack, nE2, $03, nRst, $01, nE2, $46, nRst, $02
	dc.b	nE2, $01, smpsNoAttack, nD3, $05, smpsNoAttack, nD3, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $0C, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE3, $0C, nRst, $02, nE3, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD2, $04, nRst, nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2
	dc.b	$04, nRst, $05, nE2, $01, smpsNoAttack, nF2, $03, nRst, $06, nF2, $03
	dc.b	nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $05, nRst, $02, nC4, $01, smpsNoAttack, nF2, $03, nRst, $05, nF2
	dc.b	$04, nRst, $06
	smpsAlterNote       $13
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb3, $06, nRst, $02, nBb3, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $05, nF2, $04, nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb3, $06, nRst, $01, nAb3, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack, nF2, $03, nRst, $05
	dc.b	nF2, $01, smpsNoAttack, nF3, $0F, nRst, $02, nC3, $07, nRst, $02, nC3
	dc.b	$01, smpsNoAttack, nCs3, $07, nRst, $02, nCs3, $01, smpsNoAttack, nEb3, $06, nRst
	dc.b	$02, nEb3, $01, smpsNoAttack, nF2, $03, nRst, $06, nF2, $03, nRst, $06
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $05, nRst, $02, nC4, $01, smpsNoAttack, nF2, $03, nRst, $05, nF2
	dc.b	$04, nRst, $06
	smpsAlterNote       $13
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb3, $06, nRst, $02, nBb3, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $05, nF2, $04, nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb3, $06, nRst, $01, smpsNoAttack, nRst
	smpsAlterNote       $EA
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $05, nF2, $01, smpsNoAttack, nF3
	dc.b	$0F, nRst, $02, nF3, $01, smpsNoAttack, nC3, $06, nRst, $02, nC3, $01
	dc.b	smpsNoAttack, nCs3, $07, nRst, $02, nCs3, $01, smpsNoAttack, nEb3, $06, nRst, $02
	dc.b	nEb3, $01, smpsNoAttack, nF2, $03, nRst, $06, nF2, $03, nRst, $06, nF2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $06, nRst, $01, smpsNoAttack, nRst
	smpsAlterNote       $EE
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $05, nF2, $04, nRst, $06
	smpsAlterNote       $13
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb3, $06, nRst, $02, nBb3, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack, nF2, $03, nRst, $06
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb3, $06, nRst, $02
	smpsAlterNote       $EA
	dc.b	nAb2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06, nF3, $0F, nRst, $02
	dc.b	nF3, $01, smpsNoAttack, nC3, $06, nRst, $02, nC3, $01, smpsNoAttack, nCs3, $07
	dc.b	nRst, $02, nCs3, $01, smpsNoAttack, nEb3, $06, nRst, $03, nF2, nRst, $06
	dc.b	nF2, $03, nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $06, nRst, $02
	smpsAlterNote       $EE
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $05, nF2, $04, nRst, $06
	smpsAlterNote       $13
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb3, $06, nRst, $02, nBb3, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $06, nF2, $04, nRst, $05, nF2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb3, $06, nRst, $02
	smpsAlterNote       $EA
	dc.b	nAb2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $01, nF2, nRst, $04, nF2, $01, nRst, $03, smpsNoAttack
	dc.b	nRst, $05, nCs3, $01, nRst, $04, nEb3, $01, nRst, $04, nF3, $01
	dc.b	smpsNoAttack, nG3, $02, nRst, nBb3, $03, nRst, $01, nBb3, smpsNoAttack, nC4, nRst
	dc.b	$03, nAb3, $01, nRst, $03, nAb3, $01, nRst, $04, smpsNoAttack, nRst, $04
	dc.b	nCs3, $01, smpsNoAttack, nF2, $3C, nRst, $02, nF2, $01, nRst, $04, nF2
	dc.b	$01, nRst, $04, nG2, $01, smpsNoAttack, nF2, $03, nRst, $06, nF2, $01
	dc.b	smpsNoAttack, nF3, $06, nRst, $02, nF2, $03, nRst, $06, nF2, $04, nRst
	dc.b	$06, nF3, $07, nRst, $02, nF2, $03, nRst, $05, nF2, $04, nRst
	dc.b	$05, nF2, $01, smpsNoAttack, nF3, $06, nRst, $02, nF3, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb2, $08, smpsNoAttack, nEb2, $04, nRst, $05, nEb2, $04, nRst, $05, nEb2
	dc.b	$04, nRst, $05, nEb2, $03, nRst, $06, nEb2, $04, nRst, $06, nEb2
	dc.b	$03, nRst, $06, nEb2, $04, nRst, $05, nEb2, $04, nRst, $06, nEb2
	dc.b	$01, smpsNoAttack, nEb3, $07, nRst, $01, nEb3, smpsNoAttack, nEb2, $03, nRst, $05
	dc.b	nEb2, $04, nRst, $06, nEb3, $07, nRst, $02, nEb2, $03, nRst, $06
	dc.b	nEb2, $03, nRst, $06, nEb3, $07, nRst, $02, nEb3, $01, smpsNoAttack, nD2
	dc.b	$08, smpsNoAttack, nD2, $04, nRst, $06, nD2, $03, nRst, $06, nD2, $03
	dc.b	nRst, $06, nD2, $03, nRst, $05, nD2, $04, nRst, $06, nD2, $03
	dc.b	nRst, $06, nD2, $04, nRst, $06, nD2, $04, nRst, $05, nD2, $01
	dc.b	smpsNoAttack, nD3, $07, nRst, $02, nD2, $03, nRst, $06, nD2, $04, nRst
	dc.b	$05, nD2, $01, smpsNoAttack, nD3, $06, nRst, $02, nD3, $01, smpsNoAttack, nD2
	dc.b	$03, nRst, $05, nD2, $03, nRst, $06, nD2, $01, smpsNoAttack, nD3, $07
	dc.b	nRst, $02, nD3, $01, smpsNoAttack, nCs2, $0B, nRst, $06, nCs2, $03, nRst
	dc.b	$06, nF2, $03, nRst, $06, nBb2, $03, nRst, $06, nBb2, $01, smpsNoAttack
	dc.b	nAb2, $05, nRst, $03, nAb2, $01, smpsNoAttack, nG2, $05, nRst, $03, nG2
	dc.b	$01, smpsNoAttack, nF2, $07, nRst, $02, nF2, $01, smpsNoAttack, nCs2, $07, nRst
	dc.b	$02, nCs2, $01, smpsNoAttack, nC2, $06, nRst, $02, nC2, $03, nRst, $06
	dc.b	nC2, $04, nRst, $06, nE2, $0F, nRst, $02, nE2, $01, smpsNoAttack, nC2
	dc.b	$06, nRst, $02, nC2, $01, smpsNoAttack, nF2, $07, nRst, $02, nF2, $01
	dc.b	smpsNoAttack, nG2, $07, nRst, $02, nG2, $01, smpsNoAttack, nF2, $03, nRst, $05
	dc.b	nF2, $03, nRst, $06, nF2, $04, nRst, $06, nF2, $03, nRst, $06
	dc.b	nF2, $04, nRst, $05, nBb2, $03, smpsNoAttack, nC3, $0D, nRst, $02, nC3
	dc.b	$01, smpsNoAttack, nF2, $03, nRst, $06, nF2, $01, smpsNoAttack, nF3, $06, nRst
	dc.b	$02, nF3, $01, smpsNoAttack, nF2, $02, nRst, $06, nF2, $04, nRst, $06
	dc.b	nF3, $07, nRst, $02, nF3, $01, smpsNoAttack, nF2, $03, nRst, $05, nF2
	dc.b	$04, nRst, $05, nF2, $01, smpsNoAttack, nF3, $07, nRst, $02, nF3, $01
	dc.b	smpsNoAttack, nEb2, $08, smpsNoAttack, nEb2, $04, nRst, $06, nEb2, $03, nRst, $06
	dc.b	nEb2, $04, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack, nEb2, $03, nRst, $05
	dc.b	nEb2, $04, nRst, $06, nF2, $07, nRst, $02, nF2, $01, smpsNoAttack, nG2
	dc.b	$07, nRst, $02, nG2, $01, smpsNoAttack, nEb2, $02, nRst, $06, nEb2, $01
	dc.b	smpsNoAttack, nEb3, $07, nRst, $02, nEb2, $03, nRst, $06, nEb2, $03, nRst
	dc.b	$06, nEb3, nRst, $02, nEb3, $01, smpsNoAttack, nEb2, $03, nRst, $06, nEb2
	dc.b	$03, nRst, $06, nEb2, $01, smpsNoAttack, nEb3, $07, nRst, $02, nEb3, $01
	dc.b	smpsNoAttack, nD2, $08, smpsNoAttack, nD2, $04, nRst, $06, nD2, $03, nRst, $06
	dc.b	nD2, $04, nRst, $05, nD2, $04, nRst, $05, nD2, $04, nRst, $06
	dc.b	nD2, $07, nRst, $02, nD2, $01, smpsNoAttack, nBb2, $06, nRst, $02, nBb2
	dc.b	$01, smpsNoAttack, nD2, $03, nRst, $06, nD2, $01, smpsNoAttack, nD3, $07, nRst
	dc.b	$01, nD3, smpsNoAttack, nD2, $03, nRst, $05, nD2, $04, nRst, $05, nD2
	dc.b	$01, smpsNoAttack, nD3, $06, nRst, $02, nD3, $01, smpsNoAttack, nD2, $03, nRst
	dc.b	$06, nD2, $03, nRst, $06, nD2, $01, smpsNoAttack, nD3, $06, nRst, $02
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs2, $0F, nRst, $02, nCs2, $03, nRst, $06, nCs2, $01, smpsNoAttack, nG2
	dc.b	$03, nRst, $05, nG2, $01, smpsNoAttack, nBb2, $03, nRst, $05, nBb2, $01
	dc.b	smpsNoAttack, nF2, $05, nRst, $04, nG2, $05, nRst, $04, nG2, $01, smpsNoAttack
	dc.b	nAb2, $06, nRst, $02, nAb2, $01, smpsNoAttack, nCs3, $07, nRst, $02, smpsNoAttack
	dc.b	nRst, $04, nF3, $01, smpsNoAttack, nEb3, nRst, $03, nEb3, $01, nRst, $04
	dc.b	nBb3, $01, nRst, $04, nBb3, $01, nRst, $03, nAb3, $01, nRst, $04
	dc.b	nF3, $01, nRst, $03, nCs3, $01, smpsNoAttack, nC4, $04, smpsNoAttack, nC4, $01
	dc.b	smpsNoAttack, nBb3, $02, nRst, nBb3, $01, smpsNoAttack, nF3, nRst, $03, nF3, $01
	dc.b	smpsNoAttack, nEb3, $02, nRst, nC3, nRst, nC3, $01, smpsNoAttack, nBb2, $02, nRst
	dc.b	$01, nBb2, smpsNoAttack, nAb2, $02, nRst, nAb2, $01, smpsNoAttack, nG2, $02, nRst
	dc.b	$01, nG2, smpsNoAttack, nF2, $03, nRst, $01, nF2, $46, nRst, $02, nF2
	dc.b	$01, smpsNoAttack, nEb3, $05, smpsNoAttack, nEb3, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $0C, smpsNoAttack, nG3, $01, smpsNoAttack, nF3, $0C, nRst, $02, nF3, $01
	dc.b	smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb2, $04, nRst, nF2, $03, nRst, $05, nF2, $04, nRst, $05, nF2
	dc.b	$04, nRst, $06, nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsJump            EvilDestroyer_Jump03

; FM4 Data
EvilDestroyer_FM4:
	smpsSetvoice        $01
	smpsAlterVol        $15
	smpsPan             panCenter, $00
	smpsAlterNote       $F9
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nBb1, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA1, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA1, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA1, $01, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nAb1, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nAb1, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb1, $01, nRst, $01
	smpsAlterNote       $07
	dc.b	nG1, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB2, $07, nRst, $01, nB2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA2, $06, nRst, $02, nA2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $03, nRst, $06
	smpsAlterNote       $F9
	dc.b	nG2, $07, nRst, $02
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $11, nRst, $02
	smpsAlterNote       $F8
	dc.b	nB2, $06, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, $02, nC2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD2, $06, nRst, $02, nD2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB2, $07, nRst, $01, nB2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA2, $06, nRst, $02
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsAlterNote       $F9
	dc.b	nG2, $07, nRst, $02
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack, nE2, $03, nRst, $05
	dc.b	nE2, $10, nRst, $02, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB2, $06, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, $02
	smpsAlterNote       $FA
	dc.b	nD2, $07, nRst, $02, nD2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB2, $06, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsAlterNote       $F8
	dc.b	nA2, $07, nRst, $02
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsAlterNote       $F9
	dc.b	nG2, $07, nRst, $01, nG2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $10, nRst, $02
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB2, $06, nRst, $02
	smpsAlterNote       $00
	dc.b	nC2, $07, nRst, $02
	smpsAlterNote       $FA
	dc.b	nD2, $07, nRst, $02, nD2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB3, $06, nRst, $02, nB3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $03, nRst, $06
	smpsAlterNote       $0C
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA3, $06, nRst, $02
	smpsAlterNote       $1E
	dc.b	nAb2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06
	smpsAlterNote       $0C
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG3, $06, nRst, $01, nG3, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack, nE3
	dc.b	$0F, nRst, $02
	smpsAlterNote       $F8
	dc.b	nB2, $07, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $07, nRst, $02
	smpsAlterNote       $FA
	dc.b	nD3, $07, nRst, $02, nD3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06

EvilDestroyer_Jump02:
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB3, $06, nRst, $02
	smpsAlterNote       $22
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $05
	smpsAlterNote       $0C
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA3, $06, nRst, $02, nA3, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG3, $06, nRst, $02
	smpsAlterNote       $1B
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $06, nE3, $0F, nRst, $02
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB2, $06, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $07, nRst, $02, nC3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD3, $06, nRst, $03
	smpsAlterNote       $FB
	dc.b	nE2, nRst, $06, nE2, $03, nRst, $06, nE2, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB3, $06, nRst, $02
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $06
	smpsAlterNote       $0C
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA3, $06, nRst, $02, nA3, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06, nE2, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG3, $06, nRst, $02
	smpsAlterNote       $1B
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06, nE3, $0F, nRst, $02
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB2, $06, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $07, nRst, $02, nC3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD3, $06, nRst, $03
	smpsAlterNote       $FB
	dc.b	nE2, nRst, $06, nE2, $03, nRst, $06, nE2, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB3, $06, nRst, $02
	smpsAlterNote       $22
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06
	smpsAlterNote       $0C
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA3, $06, nRst, $02, nA3, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG3, $06, nRst, $02
	smpsAlterNote       $1B
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06, nE3, $0F, nRst, $02
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB2, $06, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $07, nRst, $02, nC3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD3, $07, nRst, $02, nD3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06, nE2, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB3, $06, nRst, $02
	smpsAlterNote       $22
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA3, $06, nRst, $02, nA3, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $06, nE2, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG3, $06, nRst, $02
	smpsAlterNote       $1B
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $04
	smpsAlterNote       $F8
	dc.b	nB2, $01, nRst, $04, smpsNoAttack, nRst, smpsNoAttack, nRst, $05
	smpsAlterNote       $FA
	dc.b	nFs3, $02, nRst
	smpsAlterNote       $F8
	dc.b	nA3, nRst, nA3, $01, smpsNoAttack, nB3, nRst, $03
	smpsAlterNote       $F9
	dc.b	nG3, $01, nRst, $03, nG3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE3, nRst, $03, nE3, $01, nRst, $04
	smpsAlterNote       $00
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $3C, nRst, $02, nE2, $01, nRst, $04, smpsNoAttack, nRst, $05
	smpsAlterNote       $FA
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $02, nRst, $06, nE2, $01, smpsNoAttack, nE3, $07, nRst, $02, nE2
	dc.b	$03, nRst, $06, nE2, $03, nRst, $06, nE3, nRst, $03, nE2, nRst
	dc.b	$05, nE2, $03, nRst, $06, nE2, $01, smpsNoAttack, nE3, $06, nRst, $02
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD2, $08, smpsNoAttack, nD2, $03, nRst, $05, nD2, $04, nRst, $06, nD2
	dc.b	$03, nRst, $05, nD2, $04, nRst, $05, nD2, $04, nRst, $06, nD2
	dc.b	$03, nRst, $06, nD2, $04, nRst, $05, nD2, $04, nRst, $06, nD2
	dc.b	$01, smpsNoAttack, nD3, $07, nRst, $01, nD3, smpsNoAttack, nD2, $03, nRst, $06
	dc.b	nD2, $03, nRst, $06, nD3, $07, nRst, $02, nD2, $03, nRst, $06
	dc.b	nD2, $03, nRst, $06, nD3, $07, nRst, $02, nD3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs2, $08, smpsNoAttack, nCs2, $04, nRst, $06, nCs2, $03, nRst, $06, nCs2
	dc.b	$03, nRst, $06, nCs2, $03, nRst, $06, nCs2, $03, nRst, $06, nCs2
	dc.b	$03, nRst, $06, nCs2, $04, nRst, $06, nCs2, $04, nRst, $05, nCs2
	dc.b	$01, smpsNoAttack, nCs3, $07, nRst, $02, nCs2, $03, nRst, $06, nCs2, $04
	dc.b	nRst, $06, nCs3, nRst, $02, nCs3, $01, smpsNoAttack, nCs2, $03, nRst, $05
	dc.b	nCs2, $03, nRst, $06, nCs3, $07, nRst, $02, nCs3, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $0B, nRst, $05, nC2, $04, nRst, $05, nC2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA2, $02, nRst, $06, nA2, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG2, $05, nRst, $04
	smpsAlterNote       $FA
	dc.b	nFs2, $05, nRst, $04, nFs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $06, nRst, $02, nE2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $07, nRst, $02, nC2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB1, $07, nRst, $01, nB1, $04, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack
	dc.b	nB1, $03, nRst, $06
	smpsAlterNote       $FB
	dc.b	nEb2, $10, nRst, $02
	smpsAlterNote       $F8
	dc.b	nB1, $07, nRst, $02, nB1, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $06, nRst, $02, nE2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs2, $07, nRst, $02, nFs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $06, nE2, $03, nRst, $06
	dc.b	nE2, $03, nRst, $06, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA2, $02, smpsNoAttack, nA2, $01, smpsNoAttack, nB2, $0C, nRst, $02, smpsNoAttack, nRst
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $06, nE2, $01, smpsNoAttack, nE3, $07, nRst, $01, nE3
	dc.b	smpsNoAttack, nE2, $03, nRst, $06, nE2, $03, nRst, $06, nE3, $07, nRst
	dc.b	$02, nE3, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $06
	dc.b	nE2, $01, smpsNoAttack, nE3, $06, nRst, $02, nE3, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD2, $08, smpsNoAttack, nD2, $04, nRst, $05, nD2, $04, nRst, $05, nD2
	dc.b	$04, nRst, $06, nD2, $03, nRst, $06, nD2, $04, nRst, $05, nD2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $06, nRst, $02, nE2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs2, $07, nRst, $02, nFs2, $01, smpsNoAttack, nD2, $03, nRst, $06, nD2
	dc.b	$01, smpsNoAttack, nD3, $06, nRst, $02, nD2, $03, nRst, $06, nD2, $04
	dc.b	nRst, $06, nD3, $07, nRst, $02, nD3, $01, smpsNoAttack, nD2, $02, nRst
	dc.b	$06, nD2, $03, nRst, $06, nD2, $01, smpsNoAttack, nD3, $07, nRst, $02
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs2, $08, smpsNoAttack, nCs2, $04, nRst, $06, nCs2, $03, nRst, $06, nCs2
	dc.b	$04, nRst, $06, nCs2, $03, nRst, $05, nCs2, $04, nRst, $06, nCs2
	dc.b	$07, nRst, $02, nCs2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA2, $06, nRst, $03
	smpsAlterNote       $FB
	dc.b	nCs2, nRst, $06, nCs2, $01, smpsNoAttack, nCs3, $07, nRst, $02, nCs2, $03
	dc.b	nRst, $06, nCs2, $03, nRst, $06, nCs3, nRst, $02, nCs3, $01, smpsNoAttack
	dc.b	nCs2, $03, nRst, $06, nCs2, $03, nRst, $06, nCs2, $01, smpsNoAttack, nCs3
	dc.b	$06, nRst, $03
	smpsAlterNote       $13
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $0F, nRst, $02, nC2, $03, nRst, $06, nC2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs2, $03, nRst, $06
	smpsAlterNote       $F8
	dc.b	nA2, $03, nRst, $05, nA2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $06, nRst, $03
	smpsAlterNote       $FA
	dc.b	nFs2, $05, nRst, $04, nFs2, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG2, $07, nRst, $02, nG2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $06, nRst, $02, smpsNoAttack, nRst, $04
	smpsAlterNote       $FB
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD3, nRst, $03, nD3, $01, nRst, $04
	smpsAlterNote       $F8
	dc.b	nA3, $01, nRst, $04, nA3, $01, nRst, $04, smpsNoAttack, nRst, $04
	smpsAlterNote       $FB
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, nRst, $03, nC3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB3, $04, smpsNoAttack, nB3, $01, smpsNoAttack, nA3, nRst, $03
	smpsAlterNote       $FB
	dc.b	nE3, $02, nRst, $03, nE3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD3, $02, nRst
	smpsAlterNote       $F8
	dc.b	nB2, nRst, nA2, $03, nRst, $01, nA2, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG2, $02, nRst
	smpsAlterNote       $FA
	dc.b	nFs2, nRst, nFs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $01, nE2, $46, nRst, $02, nE2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD3, $05, smpsNoAttack, nD3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs3, $0C, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE3, $0C, nRst, $02, nE3, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD2, $04, nRst
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $04, nRst, $06
	smpsAlterNote       $FA
	dc.b	nF2, $03, nRst, $06, nF2, $03, nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $05, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $FA
	dc.b	nF2, $03, nRst, $05, nF2, $04, nRst, $06
	smpsAlterNote       $0D
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb3, $06, nRst, $02, nBb3, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb3, $06, nRst, $02
	smpsAlterNote       $1D
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06, nF3, $0F, nRst, $02
	smpsAlterNote       $00
	dc.b	nC3, $07, nRst, $02, nC3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs3, $07, nRst, $02, nCs3, $01, smpsNoAttack, nEb3, $06, nRst, $03
	smpsAlterNote       $FA
	dc.b	nF2, nRst, $06, nF2, $03, nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $05, nRst, $03
	smpsAlterNote       $FA
	dc.b	nF2, nRst, $05, nF2, $04, nRst, $06
	smpsAlterNote       $0D
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb3, $06, nRst, $02, nBb3, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb3, $06, nRst, $02
	smpsAlterNote       $1D
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06, nF3, $0F, nRst, $02
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $06, nRst, $02, nC3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs3, $07, nRst, $02, nCs3, $01, smpsNoAttack, nEb3, $07, nRst, $02
	smpsAlterNote       $FA
	dc.b	nF2, $03, nRst, $06, nF2, $03, nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $06, nRst, $02
	smpsAlterNote       $E5
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06
	smpsAlterNote       $0D
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb3, $06, nRst, $02, nBb3, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $04, nRst, $05, nF2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb3, $06, nRst, $02
	smpsAlterNote       $1D
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06, nF3, $0F, nRst, $02
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $06, nRst, $02, nC3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs3, $07, nRst, $02, nCs3, $01, smpsNoAttack, nEb3, $07, nRst, $02, nEb3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06, nF2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $06, nRst, $02
	smpsAlterNote       $E5
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06
	smpsAlterNote       $0D
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb3, $06, nRst, $02, nBb3, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $06, nF2, $04, nRst, $05, nF2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb3, $06, nRst, $02
	smpsAlterNote       $1D
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $02, nRst, $01, nF2, nRst, $04, nF2, $01, nRst, $04, smpsNoAttack
	dc.b	nRst, $04, smpsNoAttack, nRst, $05
	smpsAlterNote       $FB
	dc.b	nEb3, $01, nRst, $04
	smpsAlterNote       $FA
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG3, $02, nRst
	smpsAlterNote       $F8
	dc.b	nBb3, $03, nRst, $01, smpsNoAttack, nRst
	smpsAlterNote       $00
	dc.b	nC4, nRst, $03
	smpsAlterNote       $F8
	dc.b	nAb3, $01, nRst, $04
	smpsAlterNote       $FA
	dc.b	nF3, $01, nRst, $03, smpsNoAttack, nRst, $04, smpsNoAttack, nRst, $01, nF2, $3C
	dc.b	nRst, $02, nF2, $01, nRst, $04, nF2, $01, nRst, $04
	smpsAlterNote       $F9
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $03, nRst, $06, nF2, $01, smpsNoAttack, nF3, $06, nRst, $02, nF2
	dc.b	$03, nRst, $06, nF2, $04, nRst, $06, nF3, $07, nRst, $02, nF2
	dc.b	$03, nRst, $05, nF2, $04, nRst, $05, nF2, $01, smpsNoAttack, nF3, $06
	dc.b	nRst, $02, nF3, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb2, $08, smpsNoAttack, nEb2, $04, nRst, $05, nEb2, $04, nRst, $05, smpsNoAttack
	dc.b	nRst, $01, smpsNoAttack, nEb2, $03, nRst, $05, nEb2, $03, nRst, $06, nEb2
	dc.b	$04, nRst, $06, nEb2, $03, nRst, $06, nEb2, $04, nRst, $05, nEb2
	dc.b	$04, nRst, $06, nEb2, $01, smpsNoAttack, nEb3, $07, nRst, $01, nEb3, smpsNoAttack
	dc.b	nEb2, $03, nRst, $06, nEb2, $03, nRst, $06, nEb3, $07, nRst, $02
	dc.b	nEb2, $03, nRst, $06, nEb2, $03, nRst, $06, nEb3, $07, nRst, $02
	dc.b	nEb3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD2, $08, smpsNoAttack, nD2, $04, nRst, $06, nD2, $03, nRst, $06, nD2
	dc.b	$03, nRst, $06, nD2, $03, nRst, $06, nD2, $03, nRst, $06, nD2
	dc.b	$03, nRst, $06, nD2, $04, nRst, $06, nD2, $04, nRst, $05, nD2
	dc.b	$01, smpsNoAttack, nD3, $07, nRst, $02, nD2, $03, nRst, $06, nD2, $04
	dc.b	nRst, $05, nD2, $01, smpsNoAttack, nD3, $06, nRst, $02, nD3, $01, smpsNoAttack
	dc.b	nD2, $03, nRst, $05, nD2, $03, nRst, $06, nD2, $01, smpsNoAttack, nD3
	dc.b	$07, nRst, $02, nD3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs2, $0B, nRst, $06, nCs2, $03, nRst, $06
	smpsAlterNote       $FA
	dc.b	nF2, $03, nRst, $06
	smpsAlterNote       $F8
	dc.b	nBb2, $03, nRst, $06, nBb2, $01, smpsNoAttack, nAb2, $05, nRst, $03, nAb2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG2, $05, nRst, $03, nG2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $07, nRst, $02, nF2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs2, $07, nRst, $02, nCs2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, $02, nC2, $03, nRst, $06, nC2, $04, nRst, $06
	smpsAlterNote       $FB
	dc.b	nE2, $0F, nRst, $02, nE2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $06, nRst, $02, nC2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $07, nRst, $02, nF2, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG2, $07, nRst, $02, nG2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $03, nRst, $05, nF2, $03, nRst, $06, nF2, $04, nRst, $06
	dc.b	nF2, $03, nRst, $06, nF2, $04, nRst, $05, nF2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb2, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $0D, nRst, $02, nC3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $03, nRst, $06, nF2, $01, smpsNoAttack, nF3, $06, nRst, $02, nF3
	dc.b	$01, smpsNoAttack, nF2, $02, nRst, $06, nF2, $04, nRst, $06, nF3, $07
	dc.b	nRst, $02, nF3, $01, smpsNoAttack, nF2, $03, nRst, $05, nF2, $04, nRst
	dc.b	$05, nF2, $01, smpsNoAttack, nF3, $07, nRst, $02, nF3, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb2, $08, smpsNoAttack, nEb2, $03, nRst, $06, nEb2, $03, nRst, $06, nEb2
	dc.b	$04, nRst, $06, nEb2, $03, nRst, $06, nEb2, $03, nRst, $06
	smpsAlterNote       $FA
	dc.b	nF2, $07, nRst, $02, nF2, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG2, $07, nRst, $02, nG2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb2, $03, nRst, $05, nEb2, $01, smpsNoAttack, nEb3, $07, nRst, $02, nEb2
	dc.b	$03, nRst, $06, nEb2, $03, nRst, $06, nEb3, nRst, $03, nEb2, nRst
	dc.b	$06, nEb2, $03, nRst, $06, nEb2, $01, smpsNoAttack, nEb3, $07, nRst, $02
	dc.b	nEb3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD2, $08, smpsNoAttack, nD2, $04, nRst, $06, nD2, $03, nRst, $06, nD2
	dc.b	$04, nRst, $05, nD2, $04, nRst, $05, nD2, $04, nRst, $06, nD2
	dc.b	$07, nRst, $02, nD2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb2, $06, nRst, $02, nBb2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD2, $03, nRst, $06, nD2, $01, smpsNoAttack, nD3, $07, nRst, $01, smpsNoAttack
	dc.b	nRst, nD2, $03, nRst, $06, nD2, $03, nRst, $06, nD3, nRst, $02
	dc.b	nD3, $01, smpsNoAttack, nD2, $03, nRst, $06, nD2, $03, nRst, $06, nD2
	dc.b	$01, smpsNoAttack, nD3, $06, nRst, $03
	smpsAlterNote       $14
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs2, $0F, nRst, $02, nCs2, $03, nRst, $06, nCs2, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG2, $03, nRst, $06
	smpsAlterNote       $F8
	dc.b	nBb2, $03, nRst, $05, nBb2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $05, nRst, $04
	smpsAlterNote       $F9
	dc.b	nG2, $05, nRst, $04, nG2, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb2, $06, nRst, $03, nAb2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs3, $06, nRst, $02, smpsNoAttack, nRst, $04
	smpsAlterNote       $FA
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb3, nRst, $03, nEb3, $01, nRst, $04
	smpsAlterNote       $F8
	dc.b	nBb3, $01, nRst, $04, nBb3, $01, nRst, $04, smpsNoAttack, nRst, $04
	smpsAlterNote       $FA
	dc.b	nF3, $01, nRst, $03
	smpsAlterNote       $FB
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $04, smpsNoAttack, nC4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb3, $02, nRst, nBb3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF3, nRst, $03, nF3, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb3, $02, nRst
	smpsAlterNote       $00
	dc.b	nC3, nRst, nC3, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb2, $02, nRst, nAb2, nRst, nAb2, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG2, $02, nRst, $01, nG2, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $03, nRst, $01, nF2, $46, nRst, $02, nF2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb3, $05, smpsNoAttack, nEb3, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG3, $0C, smpsNoAttack, nG3, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF3, $0C, nRst, $03
	smpsAlterNote       $18
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb2, $04, nRst
	smpsAlterNote       $FA
	dc.b	nF2, $03, nRst, $06, nF2, $03, nRst, $05, nF2, $04, nRst, $06
	smpsAlterNote       $FB
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsJump            EvilDestroyer_Jump02

; FM5 Data
EvilDestroyer_FM5:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panRight, $00
	dc.b	nRst, $01, nRst, $04
	smpsAlterVol        $9C
	smpsAlterNote       $F3
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb3, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb3, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA2, $01, nRst, $01
	smpsAlterVol        $FC
	smpsAlterNote       $1E
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $06, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsAlterNote       $F1
	dc.b	nA2, $07, nRst, $02
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $07, nRst, $01, nG2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $10, nRst, $02
	smpsAlterNote       $EF
	dc.b	nB2, $07, nRst, $02
	smpsAlterNote       $F7
	dc.b	nC2, $07, nRst, $02
	smpsAlterNote       $F5
	dc.b	nD2, $07, nRst, $02, nD2, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2
	dc.b	$04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $06, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06
	smpsAlterNote       $F1
	dc.b	nA2, $07, nRst, $02
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $07, nRst, $01, nG2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $10, nRst, $02
	smpsAlterNote       $EF
	dc.b	nB2, $07, nRst, $02
	smpsAlterNote       $F7
	dc.b	nC2, $07, nRst, $02
	smpsAlterNote       $F5
	dc.b	nD2, $07, nRst, $02, nD2, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2
	dc.b	$04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $06, nRst, $02
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsAlterNote       $F1
	dc.b	nA2, $07, nRst, $01, nA2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $06, nRst, $02, nG2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $10, nRst, $02
	smpsAlterNote       $EF
	dc.b	nB2, $07, nRst, $02
	smpsAlterNote       $F7
	dc.b	nC2, $07, nRst, $01, nC2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $07, nRst, $02, nD2, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2
	dc.b	$04, nRst, $05
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $06, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $14
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs3, $06, nRst, $01
	smpsPan             panRight, $00
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $02, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nE3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nE3, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	nB2, $10, nRst, $01
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, nB2, $07, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, $06, nRst, $02, nC3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD3, $06, nRst, $03, nE2, nRst, $06, nE2, $03, nRst, $05

EvilDestroyer_Jump01:
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $05, nRst, $02
	smpsPan             panRight, $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $06
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nE3, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nE3, smpsNoAttack, nE2, $03, nRst, $06, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	nB2, $10, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F3
	dc.b	nG2, $07, nRst, $02, nG2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA2, $06, nRst, $03
	smpsAlterNote       $EF
	dc.b	nB2, $07, nRst, $02, nB2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $02, nRst, $06, smpsNoAttack, nRst, $01, smpsNoAttack, nE2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nE3, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nE3, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $0F, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F3
	dc.b	nG2, $07, nRst, $02, nG2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA2, $07, nRst, $02, nA2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $06, nRst, $03
	smpsAlterNote       $F5
	dc.b	nE2, nRst, $05, nE2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nE3, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nE3, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $0F, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F3
	dc.b	nG2, $07, nRst, $02, nG2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA2, $07, nRst, $02, nA2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $06, nRst, $03
	smpsAlterNote       $F5
	dc.b	nE2, nRst, $05, smpsNoAttack, nRst, $01, smpsNoAttack, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $05, nRst, $02
	smpsPan             panRight, $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE3, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, nE2, $03, nRst, $01, nE2, nRst, $04, nE2, $01, nRst
	dc.b	$04, smpsNoAttack, nRst, $04
	smpsAlterNote       $F7
	dc.b	nC3, $01, nRst, $03, smpsNoAttack, nRst, $05
	smpsAlterNote       $F5
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs3, $02, nRst, $01, nFs3, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA3, $02, nRst
	smpsAlterNote       $EF
	dc.b	nB3, nRst, nB3, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, nRst, $03, nG3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE3, nRst, $03, nE3, $01, nRst, $04
	smpsAlterNote       $F7
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $3C, nRst, $02, nE2, $01, nRst, $03, nE2, $01, nRst, $05
	dc.b	nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	nB2, $07, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $EF
	dc.b	nB2, $07, nRst, $02
	smpsPan             panRight, $00
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $08, smpsNoAttack, nD2, $04, nRst, $05, nD2, $04, nRst, $05, nD2
	dc.b	$03, nRst, $06, nD2, $03, nRst, $06, nD2, $04, nRst, $05, nD2
	dc.b	$04, nRst, $06, nD2, $03, nRst, $06, nD2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA2, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nA2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $03, nRst, $06, nD2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $F1
	dc.b	nA2, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $03, nRst, $05, nD2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA2, $06, nRst, $03
	smpsPan             panRight, $00
	smpsAlterNote       $F7
	dc.b	nCs2, $09, smpsNoAttack, nCs2, $04, nRst, $05, nCs2, $04, nRst, $05, nCs2
	dc.b	$04, nRst, $05, nCs2, $04, nRst, $06, nCs2, $03, nRst, $06, nCs2
	dc.b	$03, nRst, $06, nCs2, $04, nRst, $06, nCs2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs2, $03, nRst, $06, nCs2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $F5
	dc.b	nE2, $07, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F7
	dc.b	nCs2, $03, nRst, $06, nCs2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $F5
	dc.b	nE2, $07, nRst, $02
	smpsPan             panRight, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC2, $0C, nRst, $05, nC2, $03, nRst, $06
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $06
	smpsAlterNote       $F1
	dc.b	nA2, $03, nRst, $06, nA2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $05, nRst, $03, nG2, $01, smpsNoAttack, nFs2, $05, nRst, $04
	smpsAlterNote       $F5
	dc.b	nE2, $07, nRst, $02, nE2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC2, $07, nRst, $02, nC2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB1, $06, nRst, $02, nB1, $03, nRst, $07, nB1, $03, nRst, $05
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb2, $10, nRst, $01, nEb2, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB1, $06, nRst, $03
	smpsAlterNote       $F5
	dc.b	nE2, $07, nRst, $02, nE2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs2, $07, nRst, $02, nFs2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $05, nE2, $03, nRst, $07, nE2, $03, nRst, $05
	dc.b	smpsNoAttack, nRst, $01, smpsNoAttack, nE2, $03, nRst, $06, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA2, $02, smpsNoAttack, nA2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $0C, nRst, $02
	smpsPan             panRight, $00
	dc.b	nB2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nE3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nE3, $01, smpsNoAttack, nE2, $03, nRst, $06, nE2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01, nE3, $07, nRst, $02
	smpsPan             panRight, $00
	dc.b	nE3, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE3, $07, nRst, $02
	smpsPan             panRight, $00
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $08, smpsNoAttack, nD2, $03, nRst, $06, nD2, $03, nRst, $06, nD2
	dc.b	$04, nRst, $05, nD2, $04, nRst, $06, nD2, $03, nRst, $06, nE2
	dc.b	$07, nRst, $02, nE2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs2, $07, nRst, $02, nFs2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $03, nRst, $06, nD3, $07, nRst, $01, smpsNoAttack, nRst, nD2, $03
	dc.b	nRst, $06, nD2, $04, nRst, $05, nD2, $01, smpsNoAttack, nD3, $06, nRst
	dc.b	$03, nD2, nRst, $06, nD2, $03, nRst, $06, nD2, $01, smpsNoAttack, nD3
	dc.b	$06, nRst, $03
	smpsAlterNote       $0F
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs2, $08, smpsNoAttack, nCs2, $04, nRst, $05, nCs2, $04, nRst, $06, nCs2
	dc.b	$03, nRst, $06, nCs2, $03, nRst, $06, nCs2, $04, nRst, $05, nCs2
	dc.b	$08, nRst, $02, nCs2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA2, $06, nRst, $03
	smpsAlterNote       $F7
	dc.b	nCs2, nRst, $06, nCs2, $01, smpsNoAttack, nCs3, $06, nRst, $02, nCs3, $01
	dc.b	smpsNoAttack, nCs2, $03, nRst, $05, nCs2, $04, nRst, $05, nCs3, $07, nRst
	dc.b	$02, smpsNoAttack, nRst, $01, nCs2, $03, nRst, $05, nCs2, $04, nRst, $06
	dc.b	nCs2, $01, smpsNoAttack, nCs3, $06, nRst, $03
	smpsAlterNote       $0E
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC2, $0F, nRst, $01, nC2, $04, nRst, $06, nC2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs2, $03, nRst, $05
	smpsAlterNote       $F1
	dc.b	nA2, $03, nRst, $06, nA2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $05, nRst, $03, nE2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs2, $05, nRst, $04, nFs2, $01, smpsNoAttack, nG2, $06, nRst, $03
	smpsAlterNote       $F7
	dc.b	nC3, $07, nRst, $02, smpsNoAttack, nRst, $04
	smpsAlterNote       $F5
	dc.b	nE3, $01, nRst, $04, nD3, $01, nRst, $04
	smpsAlterNote       $F1
	dc.b	nA3, $01, nRst, $04, smpsNoAttack, nRst
	smpsAlterNote       $F3
	dc.b	nG3, $01, nRst, $04
	smpsAlterNote       $F5
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, nRst, $03
	smpsAlterNote       $EF
	dc.b	nB3, $05, smpsNoAttack, nB3, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA3, nRst, $02, nA3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE3, $02, nRst, $03, nD3, $02, nRst, nD3, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB2, $02, nRst
	smpsAlterNote       $F1
	dc.b	nA2, nRst, nA2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $02, nRst, $01, nG2, smpsNoAttack, nFs2, $02, nRst
	smpsAlterNote       $F5
	dc.b	nE2, $04, nRst, $01, nE2, $48, smpsNoAttack, nE2, $46, nRst, $02, nE2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $05, nF2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb3, $06, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $16
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $02, nRst, $06, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $02, nRst, $07, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nF3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nF3, $01, smpsNoAttack, nF2, $03, nRst, $05, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $F7
	dc.b	nC3, $10, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F1
	dc.b	nAb2, $07, nRst, $02, nAb2, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb2, $06, nRst, $03
	smpsAlterNote       $F7
	dc.b	nC3, $07, nRst, $02, nC3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $05, nF2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nAb3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $02, nRst, $06, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nF3, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nF3, smpsNoAttack, nF2, $03, nRst, $05, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	smpsAlterNote       $F7
	dc.b	nC3, $10, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F1
	dc.b	nAb2, $07, nRst, $02, nAb2, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb2, $07, nRst, $02, nBb2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, $06, nRst, $03
	smpsAlterNote       $F4
	dc.b	nF2, nRst, $05, nF2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nAb3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $02, nRst, $07, nF2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nF3, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nF3, smpsNoAttack, nF2, $03, nRst, $05, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, $0F, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F1
	dc.b	nAb2, $07, nRst, $02, nAb2, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb2, $07, nRst, $02, nBb2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, $06, nRst, $03
	smpsAlterNote       $F4
	dc.b	nF2, nRst, $05, nF2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nAb3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $06, nF2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $06
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nF3, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nF3, smpsNoAttack, nF2, $03, nRst, $01, smpsNoAttack, nRst, $05, nF2, $01, nRst
	dc.b	$03
	smpsAlterNote       $F7
	dc.b	nC3, $01, nRst, $05, smpsNoAttack, nRst, $04
	smpsAlterNote       $F5
	dc.b	nEb3, $01, nRst, $04
	smpsAlterNote       $F4
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG3, $02, nRst
	smpsAlterNote       $F0
	dc.b	nBb3, nRst, nBb3, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC4, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $F1
	dc.b	nAb3, nRst, $03, nAb3, $01, nRst, $03
	smpsAlterNote       $F4
	dc.b	nF3, $01, nRst, $05, nF2, $3C, nRst, $02, nF2, $01, nRst, $04
	dc.b	nF2, $01, nRst, $04
	smpsAlterNote       $F3
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $F7
	dc.b	nC3, $07, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $06, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $05, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $F7
	dc.b	nC3, $07, nRst, $02
	smpsPan             panRight, $00
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb2, $09, smpsNoAttack, nEb2, $04, nRst, $05, nEb2, $03, nRst, $06, nEb2
	dc.b	$03, nRst, $06, nEb2, $03, nRst, $06, nEb2, $04, nRst, $05, nEb2
	dc.b	$04, nRst, $06, nEb2, $03, nRst, $06, nEb2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb2, $06, nRst, $02
	smpsPan             panRight, $00
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb2, $02, nRst, $07, nEb2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $F0
	dc.b	nBb2, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nBb2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb2, $03, nRst, $05, nEb2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb2, $06, nRst, $03
	smpsPan             panRight, $00
	smpsAlterNote       $F5
	dc.b	nD2, $09, smpsNoAttack, nD2, $04, nRst, $05, nD2, $04, nRst, $05, nD2
	dc.b	$04, nRst, $05, nD2, $04, nRst, $06, nD2, $03, nRst, $05, smpsNoAttack
	dc.b	nRst, $01, smpsNoAttack, nD2, $03, nRst, $06, nD2, $04, nRst, $06, nD2
	dc.b	$03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $07, nRst, $01
	smpsPan             panRight, $00
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $03, nRst, $06, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $F4
	dc.b	nF2, $07, nRst, $02
	smpsPan             panRight, $00
	smpsAlterNote       $F5
	dc.b	nD2, $03, nRst, $06, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $06, nRst, $03
	smpsPan             panRight, $00
	smpsAlterNote       $F7
	dc.b	nCs2, $0C, nRst, $06, nCs2, $03, nRst, $05, nCs2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $05, nF2, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb2, $03, nRst, $06, nBb2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb2, $05, nRst, $03
	smpsAlterNote       $F3
	dc.b	nG2, $06, nRst, $03, nG2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $07, nRst, $02, nF2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs2, $06, nRst, $03, nC2, $07, nRst, $02, nC2, $03, nRst, $06
	dc.b	nC2, $04, nRst, $05, nC2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $0F, nRst, $02
	smpsAlterNote       $F7
	dc.b	nC2, $07, nRst, $02, nC2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $07, nRst, $02, nF2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $06, nRst, $03
	smpsAlterNote       $F4
	dc.b	nF2, nRst, $06, nF2, $03, nRst, $06, nF2, $04, nRst, $05, nF2
	dc.b	$04, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	nBb2, $03, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, $0D, nRst, $02
	smpsPan             panRight, $00
	dc.b	nC3, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF3, $07, nRst, $02
	smpsPan             panRight, $00
	dc.b	nF2, $03, nRst, $06, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nF3, $06, nRst, $03
	smpsPan             panRight, $00
	dc.b	nF2, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nF3, $07, nRst, $02
	smpsPan             panRight, $00
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb2, $09, smpsNoAttack, nEb2, $03, nRst, $05, nEb2, $04, nRst, $06, nEb2
	dc.b	$04, nRst, $05, nEb2, $03, nRst, $07, nEb2, $03, nRst, $05, nEb2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $07, nRst, $02, nF2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $06, nRst, $03
	smpsAlterNote       $F5
	dc.b	nEb2, nRst, $06, nEb2, $01, smpsNoAttack, nEb3, $07, nRst, $01, nEb3, smpsNoAttack
	dc.b	nEb2, $03, nRst, $05, nEb2, $04, nRst, $05, nEb2, $01, smpsNoAttack, nEb3
	dc.b	$06, nRst, $03, nEb2, nRst, $05, nEb2, $04, nRst, $06, nEb2, $01
	dc.b	smpsNoAttack, nEb3, $06, nRst, $03
	smpsAlterNote       $10
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $08, smpsNoAttack, nD2, $04, nRst, $05, nD2, $04, nRst, $06, nD2
	dc.b	$03, nRst, $06, nD2, $03, nRst, $06, nD2, $04, nRst, $05, nD2
	dc.b	$08, nRst, $02
	smpsAlterNote       $F0
	dc.b	nBb2, $07, nRst, $02, smpsNoAttack, nRst, $01
	smpsAlterNote       $F5
	dc.b	nD2, $03, nRst, $06, nD2, $01, smpsNoAttack, nD3, $06, nRst, $02, nD3
	dc.b	$01, smpsNoAttack, nD2, $03, nRst, $05, nD2, $03, nRst, $06, nD3, $07
	dc.b	nRst, $02, nD3, $01, smpsNoAttack, nD2, $03, nRst, $05, nD2, $04, nRst
	dc.b	$06, nD2, $01, smpsNoAttack, nD3, $06, nRst, $03
	smpsAlterNote       $0F
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs2, $0F, nRst, $01, nCs2, $04, nRst, $06, nCs2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nBb2, $03, nRst, $06, nBb2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $05, nRst, $03, nF2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $05, nRst, $04, nG2, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb2, $06, nRst, $03
	smpsAlterNote       $F7
	dc.b	nCs3, $07, nRst, $01, smpsNoAttack, nRst, $05
	smpsAlterNote       $F4
	dc.b	nF3, $01, nRst, $04
	smpsAlterNote       $F5
	dc.b	nEb3, $01, nRst, $04
	smpsAlterNote       $F0
	dc.b	nBb3, $01, nRst, $04, smpsNoAttack, nRst
	smpsAlterNote       $F1
	dc.b	nAb3, $01, nRst, $04
	smpsAlterNote       $F7
	dc.b	nCs3, $01, nRst, $03, nCs3, $01, smpsNoAttack, nC4, $04, smpsNoAttack, nC4, $01
	dc.b	smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb3, nRst, $03
	smpsAlterNote       $F4
	dc.b	nF3, $02, nRst, $03
	smpsAlterNote       $F5
	dc.b	nEb3, nRst, $01, nEb3, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, $02, nRst
	smpsAlterNote       $F0
	dc.b	nBb2, $03, nRst, $01, nBb2, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb2, $02, nRst
	smpsAlterNote       $F3
	dc.b	nG2, nRst, nG2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $03, nRst, $01, nF2, $48, smpsNoAttack, nF2, $46, nRst, $03
	smpsAlterNote       $F5
	dc.b	nE2, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panRight, $00
	smpsJump            EvilDestroyer_Jump01

; FM6 Data
EvilDestroyer_FM6:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panLeft, $00
	dc.b	nRst, $05
	smpsAlterVol        $9C
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb1, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA1, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA1, $01, nRst, $02
	smpsAlterVol        $FC
	smpsAlterNote       $00
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01, smpsNoAttack, nB2
	dc.b	$06, nRst, $02, nB2, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04
	dc.b	nRst, $05, nA2, $07, nRst, $02, nE2, $03, nRst, $06, nE2, $03
	dc.b	nRst, $06, nG2, $07, nRst, $01, nG2, smpsNoAttack, nE2, $03, nRst, $05
	dc.b	nE2, $04, nRst, $05, nE2, $10, nRst, $02, nE2, $01, smpsNoAttack, nB2
	dc.b	$06, nRst, $02, nC2, $07, nRst, $02, nD2, $07, nRst, $02, nD2
	dc.b	$01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $01
	dc.b	smpsNoAttack, nB2, $06, nRst, $02, nB2, $01, smpsNoAttack, nE2, $02, nRst, $06
	dc.b	nE2, $03, nRst, $06, nA2, $07, nRst, $02, nE2, $03, nRst, $06
	dc.b	nE2, $03, nRst, $05, nE2, $01, smpsNoAttack, nG2, $07, nRst, $01, nG2
	dc.b	smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $10, nRst
	dc.b	$02, nB2, $07, nRst, $02, nC2, $07, nRst, $02, nD2, $07, nRst
	dc.b	$02, nD2, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	dc.b	nE2, $01, smpsNoAttack, nB2, $06, nRst, $02, nE2, $03, nRst, $06, nE2
	dc.b	$03, nRst, $06, nA2, $07, nRst, $02, nE2, $03, nRst, $05, nE2
	dc.b	$04, nRst, $05, nE2, $01, smpsNoAttack, nG2, $07, nRst, $01, nG2, smpsNoAttack
	dc.b	nE2, $03, nRst, $05, nE2, $04, nRst, $05, nE2, $10, nRst, $02
	dc.b	nB2, $07, nRst, $02, nC2, $07, nRst, $02, nD2, $07, nRst, $02
	dc.b	nD2, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	smpsAlterNote       $12
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $06, nRst, $02
	smpsPan             panLeft, $00
	smpsAlterNote       $EC
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $12
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $06, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nE3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nE3, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nB2, $10, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nB2, $07, nRst, $02, nB2, $01, smpsNoAttack, nC3, $06, nRst, $02, nC3
	dc.b	$01, smpsNoAttack, nD3, $06, nRst, $03, nE2, nRst, $06, nE2, $03, nRst
	dc.b	$05

EvilDestroyer_Jump00:
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $05, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nG3, $01, smpsNoAttack, nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $12
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nFs3, $01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01, nE3, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nE3, smpsNoAttack, nE2, $03, nRst, $06, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nB2, $10, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nB2, $07, nRst, $02, nB2, $01, smpsNoAttack, nC3, $07, nRst, $02, nD3
	dc.b	$07, nRst, $03, nE2, nRst, $05, nE2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nG3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nG3, $01, smpsNoAttack, nE2, $02, nRst, $07, nE2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nFs3, $01, smpsNoAttack, nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nE3, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nE3, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nB2, $0F, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nB2, $07, nRst, $02, nB2, $01, smpsNoAttack, nC3, $07, nRst, $02, nC3
	dc.b	$01, smpsNoAttack, nD3, $06, nRst, $03, nE2, nRst, $06, nE2, $03, nRst
	dc.b	$06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nG3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nG3, $01, smpsNoAttack, nE2, $03, nRst, $06, nE2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nFs3, $01, smpsNoAttack, nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nE3, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nE3, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nB2, $0F, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nB2, $07, nRst, $02, nB2, $01, smpsNoAttack, nC3, $07, nRst, $02, nC3
	dc.b	$01, smpsNoAttack, nD3, $06, nRst, $03, nE2, nRst, $06, nE2, $03, nRst
	dc.b	$06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $05, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nG3, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $12
	dc.b	nE3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $ED
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $02, nRst, $06, nE2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE3, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nE2, $03, nRst, $01, nE2, nRst, $04, nE2, $01, nRst, $04, smpsNoAttack
	dc.b	nRst, $04, nC3, $01, nRst, $04, smpsNoAttack, nRst, nE3, $01, smpsNoAttack, nFs3
	dc.b	$02, nRst, $01, nFs3, smpsNoAttack, nA3, $02, nRst, nB3, nRst, nB3, $01
	dc.b	smpsNoAttack, nG3, nRst, $04, nE3, $01, nRst, $03, nE3, $01, nRst, $04
	dc.b	nC3, $01, smpsNoAttack, nE2, $3C, nRst, $02, nE2, $01, nRst, $04, smpsNoAttack
	dc.b	nRst, $05, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nB2, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nB2, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nB2, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nB2, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nB2, $01, smpsNoAttack, nD2, $08, smpsNoAttack, nD2, $04, nRst, $05, nD2, $04
	dc.b	nRst, $05, nD2, $03, nRst, $06, nD2, $03, nRst, $06, nD2, $04
	dc.b	nRst, $05, nD2, $04, nRst, $06, nD2, $03, nRst, $07, nD2, $03
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack, nA2, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nA2, $01, smpsNoAttack, nD2, $03, nRst, $06, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nA2, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, nD2, $03, nRst, $05, nD2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack, nA2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nCs2, $09, smpsNoAttack, nCs2, $04, nRst, $05, nCs2, $04, nRst, $05, nCs2
	dc.b	$04, nRst, $05, nCs2, $04, nRst, $06, nCs2, $03, nRst, $06, nCs2
	dc.b	$03, nRst, $06, nCs2, $04, nRst, $06, nCs2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $0F
	dc.b	nCs3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE3, $06, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nE3, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs2, $02, nRst, $06, nCs2, $04, nRst, $05
	smpsPan             panCenter, $00
	smpsAlterNote       $0F
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE3, $06, nRst, $02
	smpsPan             panLeft, $00
	smpsAlterNote       $EF
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs2, $02, nRst, $06, nCs2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $0F
	dc.b	nCs3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nE3, $01, smpsNoAttack, nC2, $0C, nRst, $05, nC2, $03, nRst, $06, nE2
	dc.b	$03, nRst, $06, nA2, $03, nRst, $06, nA2, $01, smpsNoAttack, nG2, $05
	dc.b	nRst, $03, nG2, $01, smpsNoAttack, nFs2, $05, nRst, $04, nE2, $07, nRst
	dc.b	$02, nE2, $01, smpsNoAttack, nC2, $07, nRst, $02, nC2, $01, smpsNoAttack, nB1
	dc.b	$06, nRst, $02, nB1, $03, nRst, $07, nB1, $03, nRst, $06, nEb2
	dc.b	$10, nRst, $01, nEb2, smpsNoAttack, nB1, $06, nRst, $03, nE2, $07, nRst
	dc.b	$03, nFs2, $07, nRst, $02, nFs2, $01, smpsNoAttack, nE2, $03, nRst, $05
	dc.b	nE2, $04, nRst, $06, nE2, $03, nRst, $06, nE2, $03, nRst, $06
	dc.b	nE2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nD2, $02, smpsNoAttack, nD2, $01, smpsNoAttack, nE2, $0C, nRst
	dc.b	$02
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $01, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $01, smpsNoAttack, nB2, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nB2, $01, smpsNoAttack, nE2, $03, nRst, $06, nE2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nB2, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nB2, $01, smpsNoAttack, nE2, $03, nRst, $05, nE2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nB2, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nB2, $01, smpsNoAttack, nD2, $09, smpsNoAttack, nD2, $03, nRst, $06, nD2, $03
	dc.b	nRst, $06, smpsNoAttack, nRst, $01, smpsNoAttack, nD2, $03, nRst, $05, nD2, $04
	dc.b	nRst, $06, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nE2, $09, smpsNoAttack, nE2, $01, smpsNoAttack, nFs2, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nFs2, $01, smpsNoAttack, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nA2, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nD2, $03, nRst, $06, nD2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack, nA2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nD2, nRst, $06, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack, nA2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nCs2, $0A, smpsNoAttack, nCs2, $03, nRst, $05, nCs2, $04, nRst, $06, nCs2
	dc.b	$03, nRst, $06, nCs2, $03, nRst, $07, nCs2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nCs2, $0A, smpsNoAttack, nCs2, $01, smpsNoAttack, nA2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nCs2, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nCs2, $01, smpsNoAttack, nE2, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nE2, $01, smpsNoAttack, nCs2, $03, nRst, $05, nCs2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nE2, $07, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nCs2, nRst, $05, nCs2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nCs2, $01, smpsNoAttack, nE2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nC2, $10, nRst, $01, nC2, $04, nRst, $06, nC2, $01, smpsNoAttack, nFs2
	dc.b	$03, nRst, $05, nA2, $03, nRst, $07, nE2, $05, nRst, $04, nFs2
	dc.b	$05, nRst, $04, nFs2, $01, smpsNoAttack, nG2, $06, nRst, $03, nC3, $07
	dc.b	nRst, $02, smpsNoAttack, nRst, $04, nE3, $01, nRst, $04, nD3, $01, nRst
	dc.b	$04, nA3, $01, nRst, $04, smpsNoAttack, nRst, nG3, $01, nRst, $04, smpsNoAttack
	dc.b	nRst, $01, nC3, nRst, $03, nB3, $05, smpsNoAttack, nB3, $01, smpsNoAttack, nA3
	dc.b	nRst, $03, nE3, $02, nRst, $03, nD3, $02, nRst, nD3, $01, smpsNoAttack
	dc.b	nB2, $02, nRst, nA2, nRst, nA2, $01, smpsNoAttack, nG2, $02, nRst, nFs2
	dc.b	nRst, nFs2, $01, smpsNoAttack, nE2, $03, nRst, $01, nE2, $48, smpsNoAttack, nE2
	dc.b	$46, nRst, $03, nF2, nRst, $05, nF2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nAb3, $06, nRst, $02
	smpsPan             panLeft, $00
	smpsAlterNote       $EA
	dc.b	nAb2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $06, smpsNoAttack, nRst, $01, smpsNoAttack, nF2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nG3, $01, smpsNoAttack, nF2, $02, nRst, $07, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nF3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nF3, $01, smpsNoAttack, nF2, $03, nRst, $05, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nC3, $10, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nC3, $07, nRst, $02, nC3, $01, smpsNoAttack, nCs3, $06, nRst, $03, nEb3
	dc.b	$07, nRst, $03, nF2, nRst, $05, nF2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nAb3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nAb3, $01, smpsNoAttack, nF2, $02, nRst, $07, nF2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nG3, $01, smpsNoAttack, nF2, $03, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nF3, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nF3, smpsNoAttack, nF2, $03, nRst, $05, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nC3, $0F, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nC3, $07, nRst, $02, nC3, $01, smpsNoAttack, nCs3, $07, nRst, $02, nCs3
	dc.b	$01, smpsNoAttack, nEb3, $06, nRst, $03, nF2, nRst, $05, smpsNoAttack, nRst, $01
	dc.b	smpsNoAttack, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nAb3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nAb3, $01, smpsNoAttack, nF2, $03, nRst, $06, nF2, $03, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nG3, $01, smpsNoAttack, nF2, $03, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nF3, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nF3, smpsNoAttack, nF2, $03, nRst, $05, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nC3, $0F, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nC3, $07, nRst, $02, nC3, $01, smpsNoAttack, nCs3, $07, nRst, $02, nCs3
	dc.b	$01, smpsNoAttack, nEb3, $06, nRst, $03, nF2, nRst, $06, nF2, $03, nRst
	dc.b	$06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb3, $05, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nAb3, $01, smpsNoAttack, nF2, $03, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $13
	dc.b	nF3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nG3, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $02, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01, nF3, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nF3, smpsNoAttack, nF2, $03, nRst, $01, smpsNoAttack, nRst, $05, nF2, $01, nRst
	dc.b	$03, nC3, $01, nRst, $05, smpsNoAttack, nRst, $04, nEb3, $01, nRst, $04
	dc.b	nF3, $01, smpsNoAttack, nG3, $02, nRst, nBb3, nRst, nBb3, $01, smpsNoAttack, nC4
	dc.b	nRst, $03, nAb3, $01, nRst, $03, nAb3, $01, nRst, $03, nF3, $01
	dc.b	nRst, $05, nF2, $3C, nRst, $03, smpsNoAttack, nRst, $04, nF2, $01, nRst
	dc.b	$04, nG2, $01, smpsNoAttack, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nC3, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nF2, $03, nRst, $06, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nC3, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nC3, $01, smpsNoAttack, nF2, $03, nRst, $05, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nC3, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $01, nEb2, $09, smpsNoAttack, nEb2, $04, nRst, $05, nEb2, $03
	dc.b	nRst, $06, nEb2, $03, nRst, $06, nEb2, $03, nRst, $06, nEb2, $04
	dc.b	nRst, $05, nEb2, $04, nRst, $06, nEb2, $03, nRst, $07, nEb2, $03
	dc.b	nRst, $06
	smpsPan             panCenter, $00
	dc.b	nEb2, $01, smpsNoAttack, nBb2, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nBb2, $01, smpsNoAttack, nEb2, $02, nRst, $07, nEb2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nBb2, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, nEb2, $03, nRst, $05, nEb2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nEb2, $01, smpsNoAttack, nBb2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nD2, $09, smpsNoAttack, nD2, $04, nRst, $05, nD2, $04, nRst, $05, nD2
	dc.b	$04, nRst, $05, nD2, $04, nRst, $06, nD2, $03, nRst, $06, nD2
	dc.b	$03, nRst, $06, nD2, $04, nRst, $06, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterNote       $10
	dc.b	nD3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF3, $06, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nF3, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD2, $02, nRst, $06, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	smpsAlterNote       $10
	dc.b	nD3, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF3, $06, nRst, $02
	smpsPan             panLeft, $00
	smpsAlterNote       $EE
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD2, $02, nRst, $06, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF3, $05, nRst, $03
	smpsPan             panLeft, $00
	smpsAlterNote       $EE
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs2, $0B, nRst, $06, nCs2, $03, nRst, $06, nF2, $03, nRst, $05
	dc.b	nF2, $01, smpsNoAttack, nBb2, $03, nRst, $06, nBb2, $01, smpsNoAttack, nAb2, $05
	dc.b	nRst, $03, nG2, $06, nRst, $04, nF2, $07, nRst, $02, nF2, $01
	dc.b	smpsNoAttack, nCs2, $06, nRst, $03, nC2, $07, nRst, $02, nC2, $03, nRst
	dc.b	$06, nC2, $04, nRst, $05, nC2, $01, smpsNoAttack, nE2, $0F, nRst, $02
	dc.b	nC2, $07, nRst, $03, nF2, $07, nRst, $02, nF2, $01, smpsNoAttack, nG2
	dc.b	$06, nRst, $03, nF2, nRst, $06, nF2, $03, nRst, $06, nF2, $04
	dc.b	nRst, $05, nF2, $04, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nEb2, $03, smpsNoAttack, nF2, $0D, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nF2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nC3, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nF2, $03, nRst, $06, nF2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nC3, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nF2, nRst, $06, nF2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $01, smpsNoAttack, nC3, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nC3, $01, smpsNoAttack, nEb2, $09, smpsNoAttack, nEb2, $03, nRst, $06, nEb2, $03
	dc.b	nRst, $06, nEb2, $04, nRst, $05, nEb2, $04, nRst, $06, nEb2, $03
	dc.b	nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $01, nF2, $09, smpsNoAttack, nF2, $01, smpsNoAttack, nG2, $06, nRst
	dc.b	$03
	smpsPan             panLeft, $00
	dc.b	nEb2, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nEb2, $01, smpsNoAttack, nBb2, $07, nRst, $01
	smpsPan             panLeft, $00
	dc.b	nBb2, smpsNoAttack, nEb2, $03, nRst, $05, nEb2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nEb2, $01, smpsNoAttack, nBb2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nEb2, nRst, $06, nEb2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nEb2, $01, smpsNoAttack, nBb2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nD2, $09, smpsNoAttack, nD2, $04, nRst, $05, nD2, $04, nRst, $06, nD2
	dc.b	$03, nRst, $06, nD2, $03, nRst, $06, nD2, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	nD2, $0A, smpsNoAttack, nD2, $01, smpsNoAttack, nBb2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nD2, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack, nF2, $06, nRst, $02
	smpsPan             panLeft, $00
	dc.b	nF2, $01, smpsNoAttack, nD2, $03, nRst, $05, nD2, $03, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nF2, $07, nRst, $02
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nRst, $01, nD2, $03, nRst, $05, nD2, $04, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD2, $01, smpsNoAttack, nF2, $06, nRst, $03
	smpsPan             panLeft, $00
	dc.b	nCs2, $10, nRst, $01, nCs2, $04, nRst, $06, nCs2, $01, smpsNoAttack, nG2
	dc.b	$03, nRst, $05, nBb2, $03, nRst, $07, nF2, $05, nRst, $03, nF2
	dc.b	$01, smpsNoAttack, nG2, $05, nRst, $04, nG2, $01, smpsNoAttack, nAb2, $06, nRst
	dc.b	$03, nCs3, $07, nRst, $02, smpsNoAttack, nRst, $04, nF3, $01, nRst, $04
	dc.b	nEb3, $01, nRst, $04, nBb3, $01, nRst, $04, smpsNoAttack, nRst, nAb3, $01
	dc.b	nRst, $04, nCs3, $01, nRst, $03, nCs3, $01, smpsNoAttack, nC4, $04, smpsNoAttack
	dc.b	nC4, $01, smpsNoAttack, nBb3, nRst, $03, nF3, $02, nRst, $03, nEb3, nRst
	dc.b	$01, nEb3, smpsNoAttack, nC3, $02, nRst, nBb2, $03, nRst, $01, nBb2, smpsNoAttack
	dc.b	nAb2, $02, nRst, nG2, nRst, nG2, $01, smpsNoAttack, nF2, $03, nRst, $01
	dc.b	nF2, $48, smpsNoAttack, nF2, $46, nRst, $03, nE2, nRst, $06, nE2, $03
	dc.b	nRst, $05
	smpsPan             panLeft, $00
	smpsJump            EvilDestroyer_Jump00

; PSG1 Data
EvilDestroyer_PSG1:
	dc.b	nRst, $7F, $7F, $7F, $7F, $64
	smpsPSGAlterVol     $05
	dc.b	nB1, $23

EvilDestroyer_Jump07:
	dc.b	nB1, $11
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $03
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1, $02, nRst, $01
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2, $03
	smpsAlterNote       $00
	dc.b	nB1, $23
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $03
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01, nRst
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2, $02, nRst, $01
	smpsAlterNote       $00
	dc.b	nB1, $23
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $03
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1, $02
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, nRst, $02
	smpsAlterNote       $00
	dc.b	nB2, $25
	smpsAlterNote       $01
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2
	smpsAlterNote       $01
	dc.b	nB2, $04
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2, $03
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2, $03
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $01
	dc.b	nB2
	smpsAlterNote       $02
	dc.b	nB2
	smpsAlterNote       $03
	dc.b	nB2
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FF
	dc.b	nBb2
	smpsAlterNote       $00
	dc.b	nBb2
	smpsAlterNote       $01
	dc.b	nBb2
	smpsAlterNote       $02
	dc.b	nBb2
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $FE
	dc.b	nA2
	smpsAlterNote       $FF
	dc.b	nA2
	smpsAlterNote       $01
	dc.b	nA2
	smpsAlterNote       $02
	dc.b	nA2
	smpsAlterNote       $03
	dc.b	nA2
	smpsAlterNote       $FC
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsAlterNote       $FE
	dc.b	nAb2
	smpsAlterNote       $FF
	dc.b	nAb2
	smpsAlterNote       $00
	dc.b	nAb2
	smpsAlterNote       $01
	dc.b	nAb2
	smpsAlterNote       $03
	dc.b	nAb2
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	nG2
	smpsAlterNote       $02
	dc.b	nG2, $02
	smpsAlterNote       $FD
	dc.b	nFs2, $01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2, $02
	smpsAlterNote       $01
	dc.b	nF2, $01
	smpsAlterNote       $03
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2, $02
	smpsAlterNote       $03
	dc.b	nD2, $01
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $05
	dc.b	nCs2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $04
	dc.b	nC2
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, nRst, $02
	smpsAlterNote       $00
	dc.b	nB1, $22
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01, nRst
	smpsAlterNote       $00
	dc.b	nB1, $3E, nRst, $01, nA1, $2C
	smpsAlterNote       $02
	dc.b	nA1, $01
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1, $02
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1, $02
	smpsAlterNote       $FC
	dc.b	nA1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1, $02
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsAlterNote       $FE
	dc.b	nA1, $02
	smpsAlterNote       $00
	dc.b	nA1, $01, nRst
	smpsAlterNote       $00
	dc.b	nA1, $3E, nRst, $02
	smpsAlterNote       $00
	dc.b	nA1, $2C
	smpsAlterNote       $02
	dc.b	nA1, $02
	smpsAlterNote       $04
	dc.b	nA1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1, $02
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1, $02
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsAlterNote       $FE
	dc.b	nA1, $02
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1, $02
	smpsAlterNote       $FC
	dc.b	nA1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1, nRst, $02
	smpsAlterNote       $00
	dc.b	nA1, $3E, nRst, $01, nG1, $2C
	smpsAlterNote       $02
	dc.b	nG1, $01
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $02
	dc.b	nG1, $01
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1, $02
	smpsAlterNote       $04
	dc.b	nG1, $01
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1, $02
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1, $02, nFs1, $24
	smpsAlterNote       $02
	dc.b	nFs1, $02
	smpsAlterNote       $00
	dc.b	nFs1, $01
	smpsAlterNote       $FC
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1, $02
	smpsAlterNote       $00
	dc.b	nFs1, $01
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1, $02
	smpsAlterNote       $04
	dc.b	nFs1, $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	nFs1, $02
	smpsAlterNote       $00
	dc.b	nFs1, $01
	smpsAlterNote       $02
	dc.b	nFs1, $02
	smpsAlterNote       $00
	dc.b	nFs1, $01
	smpsAlterNote       $FC
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1, nRst, nB1, $24
	smpsAlterNote       $02
	dc.b	nB1, $01
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01, nRst
	smpsAlterNote       $FF
	dc.b	nC2, $24
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $03
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $03
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2, nRst
	smpsAlterNote       $00
	dc.b	nB1, $24
	smpsAlterNote       $02
	dc.b	nB1, $01
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1, nRst
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $03
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2, $02, nRst, $01
	smpsAlterNote       $00
	dc.b	nB1, $23
	smpsAlterNote       $02
	dc.b	nB1, $01
	smpsAlterNote       $03
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01, nRst
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01, nRst
	smpsAlterNote       $00
	dc.b	nG1, $26
	smpsAlterNote       $04
	dc.b	nG1, $01
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1, $02
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $02
	dc.b	nG1, $03
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1, $27
	smpsAlterNote       $02
	dc.b	nG1, $02
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1, $03
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1, $03
	smpsAlterNote       $FE
	dc.b	nG1, $01
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1, nRst, $7F, $11
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01, nRst
	smpsAlterNote       $00
	dc.b	nCs2, $23
	smpsAlterNote       $02
	dc.b	nCs2, $01
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2, nRst, $02
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $03
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01, nRst
	smpsAlterNote       $00
	dc.b	nCs2, $23
	smpsAlterNote       $02
	dc.b	nCs2, $01
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, nRst, $02, nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $03
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01, nRst
	smpsAlterNote       $00
	dc.b	nCs2, $23
	smpsAlterNote       $02
	dc.b	nCs2, $01
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2, nRst
	smpsAlterNote       $FF
	dc.b	nC3, $26
	smpsAlterNote       $01
	dc.b	nC3, $01
	smpsAlterNote       $00
	dc.b	nC3, $02
	smpsAlterNote       $01
	dc.b	nC3, $01
	smpsAlterNote       $00
	dc.b	nC3, $02
	smpsAlterNote       $01
	dc.b	nC3, $01
	smpsAlterNote       $00
	dc.b	nC3
	smpsAlterNote       $FF
	dc.b	nC3
	smpsAlterNote       $01
	dc.b	nC3
	smpsAlterNote       $00
	dc.b	nC3, $02
	smpsAlterNote       $01
	dc.b	nC3, $01
	smpsAlterNote       $00
	dc.b	nC3, $02
	smpsAlterNote       $01
	dc.b	nC3, $01
	smpsAlterNote       $00
	dc.b	nC3
	smpsAlterNote       $FF
	dc.b	nC3
	smpsAlterNote       $00
	dc.b	nC3
	smpsAlterNote       $01
	dc.b	nC3
	smpsAlterNote       $FF
	dc.b	nC3
	smpsAlterNote       $00
	dc.b	nC3, $02
	smpsAlterNote       $FF
	dc.b	nC3, $01
	smpsAlterNote       $00
	dc.b	nC3, $03
	smpsAlterNote       $FF
	dc.b	nC3, $01
	smpsAlterNote       $01
	dc.b	nC3
	smpsAlterNote       $00
	dc.b	nC3
	smpsAlterNote       $FF
	dc.b	nC3
	smpsAlterNote       $01
	dc.b	nC3
	smpsAlterNote       $00
	dc.b	nC3
	smpsAlterNote       $FF
	dc.b	nC3
	smpsAlterNote       $01
	dc.b	nC3
	smpsAlterNote       $00
	dc.b	nC3
	smpsAlterNote       $FF
	dc.b	nC3, $02
	smpsAlterNote       $01
	dc.b	nC3, $01
	smpsAlterNote       $FD
	dc.b	nB2, $02
	smpsAlterNote       $FE
	dc.b	nB2, $01
	smpsAlterNote       $00
	dc.b	nB2
	smpsAlterNote       $01
	dc.b	nB2, $02
	smpsAlterNote       $02
	dc.b	nB2, $01
	smpsAlterNote       $FD
	dc.b	nBb2
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $00
	dc.b	nBb2, $02
	smpsAlterNote       $01
	dc.b	nBb2, $01
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $FD
	dc.b	nA2
	smpsAlterNote       $FE
	dc.b	nA2
	smpsAlterNote       $FF
	dc.b	nA2
	smpsAlterNote       $00
	dc.b	nA2
	smpsAlterNote       $01
	dc.b	nA2
	smpsAlterNote       $03
	dc.b	nA2, $02
	smpsAlterNote       $FC
	dc.b	nAb2, $01
	smpsAlterNote       $FE
	dc.b	nAb2
	smpsAlterNote       $FF
	dc.b	nAb2
	smpsAlterNote       $01
	dc.b	nAb2
	smpsAlterNote       $02
	dc.b	nAb2, $02
	smpsAlterNote       $03
	dc.b	nAb2, $01
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $FE
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	nG2
	smpsAlterNote       $01
	dc.b	nG2
	smpsAlterNote       $02
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $03
	dc.b	nF2, $02
	smpsAlterNote       $FD
	dc.b	nE2, $01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2, $02
	smpsAlterNote       $01
	dc.b	nEb2, $01
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nD2, $02
	smpsAlterNote       $FB
	dc.b	nCs2, $01
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $05
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2, nRst
	smpsAlterNote       $FF
	dc.b	nC2, $22
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2, nRst
	smpsAlterNote       $FF
	dc.b	nC2, $3D, nRst, $03
	smpsAlterNote       $01
	dc.b	nBb1, $2C
	smpsAlterNote       $02
	dc.b	nBb1, $01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1, $02
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1, $02
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsAlterNote       $02
	dc.b	nBb1, $02
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1, nRst
	smpsAlterNote       $01
	dc.b	nBb1, $3E, nRst, $02
	smpsAlterNote       $01
	dc.b	nBb1, $2C
	smpsAlterNote       $02
	dc.b	nBb1, $02
	smpsAlterNote       $04
	dc.b	nBb1, $01
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1, $02
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsAlterNote       $02
	dc.b	nBb1, $02
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1, $02
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsAlterNote       $FF
	dc.b	nBb1, $02
	smpsAlterNote       $01
	dc.b	nBb1, $01
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1, $02
	smpsAlterNote       $FD
	dc.b	nBb1, $01
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1, $41, nRst, $02
	smpsAlterNote       $00
	dc.b	nAb1, $2C
	smpsAlterNote       $02
	dc.b	nAb1, $01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $02
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1, nRst, nG1, $23
	smpsAlterNote       $02
	dc.b	nG1, $01
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1, $02
	smpsAlterNote       $04
	dc.b	nG1, $01
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $02
	dc.b	nG1, $02
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1, $02
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $03
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2, nRst
	smpsAlterNote       $00
	dc.b	nCs2, $24
	smpsAlterNote       $02
	dc.b	nCs2, $01
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2, $02, nRst, $01
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $03
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2, nRst, $02
	smpsAlterNote       $00
	dc.b	nCs2, $22
	smpsAlterNote       $02
	dc.b	nCs2, $02
	smpsAlterNote       $03
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $02
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2, nRst, $02
	smpsAlterNote       $FF
	dc.b	nC2, $23
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01, nRst
	smpsAlterNote       $00
	dc.b	nCs2, $23
	smpsAlterNote       $02
	dc.b	nCs2, $01
	smpsAlterNote       $03
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01, nRst, nAb1, $26
	smpsAlterNote       $04
	dc.b	nAb1, $01
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $02
	dc.b	nAb1, $03
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1, $26
	smpsAlterNote       $02
	dc.b	nAb1, $01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $02
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1, $02, nRst, $7F, $10, nB1, $12
	smpsPSGAlterVol     $FB
	smpsJump            EvilDestroyer_Jump07

; PSG2 Data
EvilDestroyer_PSG2:
	dc.b	nRst, $7F, $7F, $7F, $7F, $76

EvilDestroyer_Jump06:
	smpsPSGAlterVol     $06
	smpsAlterNote       $FD
	dc.b	nB1, $24
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1, $02
	smpsAlterNote       $FC
	dc.b	nC2, $23
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2, nRst
	smpsAlterNote       $FD
	dc.b	nB1, $24
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FA
	dc.b	nB1, $01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $22
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FD
	dc.b	nB1, $24
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FA
	dc.b	nB1, $01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $22
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01, nRst
	smpsAlterNote       $FE
	dc.b	nB2, $26
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $FF
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $FF
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $FF
	dc.b	nB2
	smpsAlterNote       $FE
	dc.b	nB2
	smpsAlterNote       $FF
	dc.b	nB2, $02
	smpsAlterNote       $FE
	dc.b	nB2, $01
	smpsAlterNote       $FF
	dc.b	nB2, $02
	smpsAlterNote       $FE
	dc.b	nB2, $01
	smpsAlterNote       $FF
	dc.b	nB2, $03
	smpsAlterNote       $FE
	dc.b	nB2, $01
	smpsAlterNote       $00
	dc.b	nB2
	smpsAlterNote       $FF
	dc.b	nB2
	smpsAlterNote       $FE
	dc.b	nB2
	smpsAlterNote       $00
	dc.b	nB2
	smpsAlterNote       $FF
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $FF
	dc.b	nB2
	smpsAlterNote       $FE
	dc.b	nB2
	smpsAlterNote       $00
	dc.b	nB2
	smpsAlterNote       $FF
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $FF
	dc.b	nB2, $02
	smpsAlterNote       $00
	dc.b	nB2, $01
	smpsAlterNote       $FF
	dc.b	nB2
	smpsAlterNote       $FE
	dc.b	nB2
	smpsAlterNote       $FF
	dc.b	nB2
	smpsAlterNote       $00
	dc.b	nB2
	smpsAlterNote       $01
	dc.b	nB2
	smpsAlterNote       $02
	dc.b	nB2
	smpsAlterNote       $03
	dc.b	nB2
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FF
	dc.b	nBb2
	smpsAlterNote       $00
	dc.b	nBb2, $02
	smpsAlterNote       $02
	dc.b	nBb2, $01
	smpsAlterNote       $FD
	dc.b	nA2
	smpsAlterNote       $FE
	dc.b	nA2
	smpsAlterNote       $FF
	dc.b	nA2
	smpsAlterNote       $00
	dc.b	nA2
	smpsAlterNote       $02
	dc.b	nA2
	smpsAlterNote       $03
	dc.b	nA2
	smpsAlterNote       $FC
	dc.b	nAb2, $02
	smpsAlterNote       $FE
	dc.b	nAb2, $01
	smpsAlterNote       $00
	dc.b	nAb2
	smpsAlterNote       $01
	dc.b	nAb2
	smpsAlterNote       $02
	dc.b	nAb2
	smpsAlterNote       $03
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $FE
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	nG2
	smpsAlterNote       $01
	dc.b	nG2
	smpsAlterNote       $02
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FC
	dc.b	nF2, $02
	smpsAlterNote       $FE
	dc.b	nF2, $01
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $03
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nD2, $02
	smpsAlterNote       $FF
	dc.b	nD2, $01
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $FA
	dc.b	nB1, nRst
	smpsAlterNote       $FD
	dc.b	nB1, $23
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FA
	dc.b	nB1, $01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1, nRst
	smpsAlterNote       $FD
	dc.b	nB1, $3D, nRst, $02
	smpsAlterNote       $FC
	dc.b	nA1, $2C
	smpsAlterNote       $FE
	dc.b	nA1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nA1, $02
	smpsAlterNote       $07
	dc.b	nBb1, $01
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1, $02
	smpsAlterNote       $FC
	dc.b	nA1, $01
	smpsAlterNote       $FA
	dc.b	nA1, $02
	smpsAlterNote       $FC
	dc.b	nA1, $01
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nA1, $03
	smpsAlterNote       $FE
	dc.b	nA1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nA1, nRst, $02
	smpsAlterNote       $FC
	dc.b	nA1, $3E, nRst, $02
	smpsAlterNote       $FC
	dc.b	nA1, $2C
	smpsAlterNote       $FE
	dc.b	nA1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nA1, $02
	smpsAlterNote       $07
	dc.b	nBb1, $01
	smpsAlterNote       $FA
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1, $02
	smpsAlterNote       $00
	dc.b	nA1, $01
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nA1, $02
	smpsAlterNote       $FC
	dc.b	nA1, $01
	smpsAlterNote       $FE
	dc.b	nA1, $02
	smpsAlterNote       $FC
	dc.b	nA1, $01
	smpsAlterNote       $FA
	dc.b	nA1, $02
	smpsAlterNote       $FC
	dc.b	nA1, $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1, nRst
	smpsAlterNote       $FC
	dc.b	nA1, $3E, nRst, $02, nG1, $2B
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FA
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1, nRst, $02, nFs1, $23
	smpsAlterNote       $FE
	dc.b	nFs1, $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FA
	dc.b	nFs1
	smpsAlterNote       $08
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	nFs1
	smpsAlterNote       $FA
	dc.b	nFs1, $02
	smpsAlterNote       $08
	dc.b	nG1, $01
	smpsAlterNote       $FC
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1, $02
	smpsAlterNote       $FC
	dc.b	nFs1, $01
	smpsAlterNote       $FA
	dc.b	nFs1, $02
	smpsAlterNote       $FC
	dc.b	nFs1, $01
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FA
	dc.b	nFs1
	smpsAlterNote       $08
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FA
	dc.b	nFs1
	smpsAlterNote       $08
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FA
	dc.b	nFs1
	smpsAlterNote       $08
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nFs1, $02, nRst, $01
	smpsAlterNote       $FD
	dc.b	nB1, $23
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FA
	dc.b	nB1, $01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $03
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $23
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2, nRst, $02
	smpsAlterNote       $FD
	dc.b	nB1, $23
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $24
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $06
	dc.b	nCs2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2, nRst
	smpsAlterNote       $FD
	dc.b	nB1, $24
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FA
	dc.b	nB1, $01
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FB
	dc.b	nB1, $02
	smpsAlterNote       $FD
	dc.b	nB1, $01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1, $03
	smpsAlterNote       $FF
	dc.b	nB1, $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $FB
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $23
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $06
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2, nRst, nG1, $26
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FA
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1, $03
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1, $03
	smpsAlterNote       $FC
	dc.b	nG1, $27
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FA
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FA
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1, nRst, $7F, $11, nC2, $24
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $06
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $03
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2, nRst
	smpsAlterNote       $FD
	dc.b	nCs2, $22
	smpsAlterNote       $FF
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $24
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $06
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2, nRst, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $22
	smpsAlterNote       $FF
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $24
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $06
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2, nRst
	smpsAlterNote       $FD
	dc.b	nCs2, $22
	smpsAlterNote       $FF
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01, nRst
	smpsAlterNote       $FE
	dc.b	nC3, $26
	smpsAlterNote       $FF
	dc.b	nC3, $02
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3, $02
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3, $03
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3, $02
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3, $02
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3, $03
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3, $04
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3, $05
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3, $02
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3, $03
	smpsAlterNote       $FE
	dc.b	nC3, $01
	smpsAlterNote       $FF
	dc.b	nC3
	smpsAlterNote       $00
	dc.b	nC3
	smpsAlterNote       $01
	dc.b	nC3
	smpsAlterNote       $02
	dc.b	nC3
	smpsAlterNote       $FD
	dc.b	nB2
	smpsAlterNote       $FE
	dc.b	nB2
	smpsAlterNote       $00
	dc.b	nB2
	smpsAlterNote       $01
	dc.b	nB2, $03
	smpsAlterNote       $03
	dc.b	nB2, $01
	smpsAlterNote       $FD
	dc.b	nBb2
	smpsAlterNote       $FF
	dc.b	nBb2
	smpsAlterNote       $00
	dc.b	nBb2, $02
	smpsAlterNote       $02
	dc.b	nBb2, $01
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $FD
	dc.b	nA2
	smpsAlterNote       $FE
	dc.b	nA2
	smpsAlterNote       $FF
	dc.b	nA2
	smpsAlterNote       $00
	dc.b	nA2
	smpsAlterNote       $02
	dc.b	nA2
	smpsAlterNote       $03
	dc.b	nA2, $02
	smpsAlterNote       $FD
	dc.b	nAb2, $01
	smpsAlterNote       $FE
	dc.b	nAb2
	smpsAlterNote       $00
	dc.b	nAb2, $02
	smpsAlterNote       $02
	dc.b	nAb2, $01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nG2
	smpsAlterNote       $FE
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	nG2
	smpsAlterNote       $01
	dc.b	nG2
	smpsAlterNote       $02
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	nFs2, $02
	smpsAlterNote       $FF
	dc.b	nFs2, $01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2, $02
	smpsAlterNote       $02
	dc.b	nF2, $01
	smpsAlterNote       $04
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $FB
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $05
	dc.b	nCs2
	smpsAlterNote       $06
	dc.b	nCs2, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $22
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $3F, nRst, $02
	smpsAlterNote       $FD
	dc.b	nBb1, $2C
	smpsAlterNote       $FF
	dc.b	nBb1, $01
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1, $02
	smpsAlterNote       $FA
	dc.b	nBb1, $01
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1, $02
	smpsAlterNote       $FD
	dc.b	nBb1, $01
	smpsAlterNote       $FC
	dc.b	nBb1, $02
	smpsAlterNote       $FD
	dc.b	nBb1, $01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1, $02, nRst, $01
	smpsAlterNote       $FD
	dc.b	nBb1, $3E, nRst, $02
	smpsAlterNote       $FD
	dc.b	nBb1, $2C
	smpsAlterNote       $FF
	dc.b	nBb1, $01
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1, $02
	smpsAlterNote       $FA
	dc.b	nBb1, $01
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1, $02
	smpsAlterNote       $FD
	dc.b	nBb1, $01
	smpsAlterNote       $FA
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1, $02
	smpsAlterNote       $FD
	dc.b	nBb1, $01
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FA
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1, nRst
	smpsAlterNote       $FD
	dc.b	nBb1, $3F, nRst, $01
	smpsAlterNote       $FC
	dc.b	nAb1, $2C
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $FA
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, nG1, $23
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1, $02
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1
	smpsAlterNote       $F8
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FA
	dc.b	nG1, $02
	smpsAlterNote       $FC
	dc.b	nG1, $01, nRst, nC2, $24
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FF
	dc.b	nC2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01, nRst
	smpsAlterNote       $FD
	dc.b	nCs2, $24
	smpsAlterNote       $FF
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $24
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $06
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2, nRst
	smpsAlterNote       $FD
	dc.b	nCs2, $23
	smpsAlterNote       $FF
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FB
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2, nRst
	smpsAlterNote       $FC
	dc.b	nC2, $24
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $06
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2, $02
	smpsAlterNote       $FC
	dc.b	nC2, $01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2, $03
	smpsAlterNote       $FE
	dc.b	nC2, $01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nC2, nRst, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $23
	smpsAlterNote       $FF
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FB
	dc.b	nCs2, $01
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FF
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2, $02
	smpsAlterNote       $FD
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2, nRst
	smpsAlterNote       $FC
	dc.b	nAb1, $26
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $FA
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $FE
	dc.b	nAb1, $03
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1, $03
	smpsAlterNote       $FC
	dc.b	nAb1, $26
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1, $03
	smpsAlterNote       $FA
	dc.b	nAb1, $01
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1, $02
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1
	smpsAlterNote       $07
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nAb1
	smpsAlterNote       $FA
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $FE
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01
	smpsAlterNote       $FA
	dc.b	nAb1, $02
	smpsAlterNote       $FC
	dc.b	nAb1, $01, nRst, $7F, $11
	smpsPSGAlterVol     $FA
	smpsJump            EvilDestroyer_Jump06

EvilDestroyer_Voices:
;	Voice $00
;	$01
;	$52, $30, $00, $00, 	$DF, $DF, $1F, $1F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$25, $15, $15, $F5, 	$1C, $25, $1F, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $00, $00, $00, $02
	smpsVcRateScale     $00, $00, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $05, $05, $05, $05
	smpsVcTotalLevel    $00, $1F, $25, $1C

;	Voice $01
;	$28
;	$33, $53, $70, $30, 	$DF, $DC, $1F, $1F, 	$14, $05, $01, $01
;	$00, $01, $00, $1D, 	$11, $21, $10, $F8, 	$0E, $1B, $12, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $05, $03
	smpsVcCoarseFreq    $00, $00, $03, $03
	smpsVcRateScale     $00, $00, $03, $03
	smpsVcAttackRate    $1F, $1F, $1C, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $05, $14
	smpsVcDecayRate2    $1D, $00, $01, $00
	smpsVcDecayLevel    $0F, $01, $02, $01
	smpsVcReleaseRate   $08, $00, $01, $01
	smpsVcTotalLevel    $00, $12, $1B, $0E

;	Voice $02
;	$38
;	$53, $51, $51, $51, 	$DF, $DF, $1F, $1F, 	$07, $0E, $07, $04
;	$04, $03, $03, $08, 	$F7, $31, $71, $61, 	$1B, $11, $10, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $05, $05, $05
	smpsVcCoarseFreq    $01, $01, $01, $03
	smpsVcRateScale     $00, $00, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $07, $0E, $07
	smpsVcDecayRate2    $08, $03, $03, $04
	smpsVcDecayLevel    $06, $07, $03, $0F
	smpsVcReleaseRate   $01, $01, $01, $07
	smpsVcTotalLevel    $00, $10, $11, $1B

;	Voice $03
;	$3E
;	$3F, $50, $30, $50, 	$1F, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $15, $0B, 	$02, $07, $F1, $11, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $0B, $15, $00, $02
	smpsVcDecayLevel    $01, $0F, $00, $00
	smpsVcReleaseRate   $01, $01, $07, $02
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $04
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $14, $00
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
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $05
;	$2C
;	$00, $00, $30, $50, 	$1F, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $15, $0B, 	$02, $07, $F1, $11, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $0B, $15, $00, $02
	smpsVcDecayLevel    $01, $0F, $00, $00
	smpsVcReleaseRate   $01, $01, $07, $02
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $06
;	$3E
;	$31, $5F, $30, $30, 	$5F, $DF, $1F, $1F, 	$00, $1F, $00, $00
;	$00, $00, $00, $00, 	$00, $05, $00, $00, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $0F, $01
	smpsVcRateScale     $00, $00, $03, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $05, $00
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $07
;	$3E
;	$3F, $50, $30, $50, 	$1F, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $15, $0B, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $0B, $15, $00, $02
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $08
;	$3E
;	$3F, $50, $30, $50, 	$1F, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $00, $1F, $00, $02
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $09
;	$3E
;	$3F, $50, $30, $50, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $0A
;	$3E
;	$3F, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $0B
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $0B, 	$02, $07, $F1, $11, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $0B, $1F, $00, $1F
	smpsVcDecayLevel    $01, $0F, $00, $00
	smpsVcReleaseRate   $01, $01, $07, $02
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $0C
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $00, $01
;	$02, $00, $15, $0B, 	$02, $07, $F1, $11, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $1A
	smpsVcDecayRate2    $0B, $15, $00, $02
	smpsVcDecayLevel    $01, $0F, $00, $00
	smpsVcReleaseRate   $01, $01, $07, $02
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $0D
;	$2C
;	$00, $00, $00, $50, 	$1F, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $15, $0B, 	$02, $07, $F1, $11, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $0B, $15, $00, $02
	smpsVcDecayLevel    $01, $0F, $00, $00
	smpsVcReleaseRate   $01, $01, $07, $02
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $0E
;	$3E
;	$3F, $50, $30, $50, 	$1F, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $15, $00, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $00, $15, $00, $02
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $0F
;	$2C
;	$3F, $50, $30, $50, 	$1F, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $15, $0B, 	$02, $07, $F1, $11, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $0B, $15, $00, $02
	smpsVcDecayLevel    $01, $0F, $00, $00
	smpsVcReleaseRate   $01, $01, $07, $02
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $10
;	$2C
;	$31, $5F, $30, $30, 	$5F, $DF, $1F, $1F, 	$00, $1F, $00, $00
;	$00, $00, $00, $00, 	$00, $05, $00, $00, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $0F, $01
	smpsVcRateScale     $00, $00, $03, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $05, $00
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $11
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$02, $07, $F1, $11, 	$00, $00, $14, $00
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
	smpsVcDecayLevel    $01, $0F, $00, $00
	smpsVcReleaseRate   $01, $01, $07, $02
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $12
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $15, $0B, 	$02, $07, $F1, $11, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $0B, $15, $00, $1F
	smpsVcDecayLevel    $01, $0F, $00, $00
	smpsVcReleaseRate   $01, $01, $07, $02
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $13
;	$3E
;	$3F, $50, $30, $50, 	$1F, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $15, $0B, 	$02, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $0B, $15, $00, $02
	smpsVcDecayLevel    $00, $0F, $00, $00
	smpsVcReleaseRate   $07, $0F, $07, $02
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $14
;	$3E
;	$3F, $50, $30, $50, 	$1F, $1F, $1F, $1F, 	$00, $1F, $00, $00
;	$00, $00, $00, $00, 	$00, $05, $00, $00, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $05, $00
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $15
;	$01
;	$52, $30, $00, $00, 	$DF, $DF, $1F, $1F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$25, $15, $15, $F5, 	$1F, $25, $1F, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $05
	smpsVcCoarseFreq    $00, $00, $00, $02
	smpsVcRateScale     $00, $00, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $05, $05, $05, $05
	smpsVcTotalLevel    $00, $1F, $25, $1F

;	Voice $16
;	$2B
;	$3E, $51, $50, $50, 	$DF, $DF, $1B, $1F, 	$07, $0E, $07, $04
;	$07, $01, $01, $01, 	$54, $55, $F6, $72, 	$1F, $1C, $17, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $01, $0E
	smpsVcRateScale     $00, $00, $03, $03
	smpsVcAttackRate    $1F, $1B, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $07, $0E, $07
	smpsVcDecayRate2    $01, $01, $01, $07
	smpsVcDecayLevel    $07, $0F, $05, $05
	smpsVcReleaseRate   $02, $06, $05, $04
	smpsVcTotalLevel    $00, $17, $1C, $1F

;	Voice $17
;	$3E
;	$3F, $50, $30, $50, 	$1F, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $15, $0B, 	$02, $07, $F1, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $0B, $15, $00, $02
	smpsVcDecayLevel    $00, $0F, $00, $00
	smpsVcReleaseRate   $07, $01, $07, $02
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $18
;	$3E
;	$3F, $50, $30, $50, 	$1F, $1F, $1F, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $19
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $F1, $11, 	$00, $00, $14, $00
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
	smpsVcDecayLevel    $01, $0F, $00, $0F
	smpsVcReleaseRate   $01, $01, $07, $0F
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $1A
;	$2C
;	$00, $00, $00, $00, 	$18, $1F, $1F, $1D, 	$01, $00, $00, $01
;	$02, $00, $15, $0B, 	$02, $07, $F1, $11, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1D, $1F, $1F, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $00, $01
	smpsVcDecayRate2    $0B, $15, $00, $02
	smpsVcDecayLevel    $01, $0F, $00, $00
	smpsVcReleaseRate   $01, $01, $07, $02
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $1B
;	$3E
;	$3F, $50, $30, $50, 	$1F, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $1C
;	$3E
;	$3F, $50, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $05, $03
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $1D
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $7F, $7F, $00
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
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $7F, $7F, $00

;	Voice $1E
;	$3E
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $1F
;	$3E
;	$31, $5F, $30, $30, 	$5F, $DF, $1F, $1F, 	$00, $1F, $00, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $05, $03
	smpsVcCoarseFreq    $00, $00, $0F, $01
	smpsVcRateScale     $00, $00, $03, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $00
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

