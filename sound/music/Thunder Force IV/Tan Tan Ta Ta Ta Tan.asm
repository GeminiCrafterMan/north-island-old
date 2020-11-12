TanTanTaTaTaTan_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     TanTanTaTaTaTan_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       TanTanTaTaTaTan_DAC,	$00, $F2
	smpsHeaderFM        TanTanTaTaTaTan_FM1,	$00, $00
	smpsHeaderFM        TanTanTaTaTaTan_FM2,	$00, $00
	smpsHeaderFM        TanTanTaTaTaTan_FM3,	$00, $00
	smpsHeaderFM        TanTanTaTaTaTan_FM4,	$00, $00
	smpsHeaderFM        TanTanTaTaTaTan_FM5,	$00, $00
	smpsHeaderFM        TanTanTaTaTaTan_FM6,	$00, $00
	smpsHeaderPSG       TanTanTaTaTaTan_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       TanTanTaTaTaTan_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       TanTanTaTaTaTan_PSG3,	$00, $00, $00, $00

; DAC Data
TanTanTaTaTaTan_DAC:
; PSG3 Data
TanTanTaTaTaTan_PSG3:
	smpsStop

; FM1 Data
TanTanTaTaTaTan_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $0F
	smpsPan             panCenter, $00
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $05
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01

TanTanTaTaTaTan_Jump05:
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $07
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $05
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $07, nD3, $02, nRst, $08
	smpsSetvoice        $06
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $04, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $11
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $04, nRst, $11
	smpsSetvoice        $06
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $11
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $90
	dc.b	nD3, $02, nRst, $07
	smpsSetvoice        $05
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $02, nRst, $07, nD3, $03, nRst, $07, nD3, $03, nRst, $07
	dc.b	nD3, $03, nRst, $07, nD3, $03, nRst, $07, nD3, $03, nRst, $07
	dc.b	nD3, $03, nRst, $07
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $08
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $00
	smpsAlterVol        $90
	dc.b	nD3, $02, nRst, $11
	smpsSetvoice        $09
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $0A
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $02, nRst, $08, nD3, $02, nRst, $08
	smpsSetvoice        $06
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $0B
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $02, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $0C
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $12
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $0B
	smpsAlterVol        $70
	dc.b	smpsNoAttack, nRst, $01
	smpsSetvoice        $06
	smpsAlterVol        $90
	dc.b	nD3, $03, nRst, $11
	smpsSetvoice        $00
	dc.b	nD3, $03, nRst, $08
	smpsSetvoice        $06
	dc.b	nD3, $03, nRst, $12, nD3, $02, nRst, $12, nD3, $02, nRst, $08
	dc.b	nD3, $02, nRst, $08, nD3, $02, nRst, $08
	smpsSetvoice        $00
	dc.b	nD3, $05, nRst, $11
	smpsSetvoice        $05
	smpsAlterVol        $70
	smpsPan             panCenter, $00
	smpsJump            TanTanTaTaTaTan_Jump05

; FM2 Data
TanTanTaTaTaTan_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $14
	smpsPan             panCenter, $00
	dc.b	nG5, $13, nRst, $02

TanTanTaTaTaTan_Jump04:
	dc.b	nG5, $13, nRst, $02, nG5, $08, nRst, $02, nC6, $0A, smpsNoAttack, nC6
	dc.b	$01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nCs6
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nEb6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nE6, smpsNoAttack, nF6, smpsNoAttack, nFs6, smpsNoAttack, nG6, $02, nRst
	smpsModOff
	dc.b	nF6, $12, nRst, $02
	smpsModOff
	dc.b	nF6, $08, nRst, $02, nF6, $09, nRst, $02, nC6, $08, nRst, $02
	dc.b	nF6, $13, nRst, $02
	smpsModOff
	dc.b	nG6, $12, nRst, $02, smpsNoAttack, nRst, $01
	smpsModOff
	dc.b	nG5, $12, nRst, $02, nG5, $13, nRst, $02, nG5, $0B
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nAb5, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nA5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nBb5, smpsNoAttack, nB5, smpsNoAttack, nC6, $06, smpsNoAttack, nC6, $01, smpsNoAttack, nCs6
	dc.b	smpsNoAttack, nD6, smpsNoAttack, nEb6, smpsNoAttack, nF6, smpsNoAttack, nFs6, smpsNoAttack, nG6, $03, nRst
	dc.b	$01, nF6, $50, smpsNoAttack, nF6, $08, nRst, $02
	smpsAlterVol        $6B
	smpsModOff
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $95
	dc.b	nG5, $13, nRst, $02
	smpsModOff
	dc.b	nG5, $13, nRst, $02
	smpsModOff
	dc.b	nG5, $08, nRst, $02, nC6, $0A, smpsNoAttack, nC6, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nCs6
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nD6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nE6, smpsNoAttack, nF6, smpsNoAttack, nFs6, smpsNoAttack, nG6, $02, nRst, nF6, $12
	dc.b	nRst, $02
	smpsModOff
	dc.b	nF6, $08, nRst, $02, nF6, $09, nRst, $02, nC6, $08, nRst, $02
	dc.b	nF6, $13, nRst, $02
	smpsModOff
	dc.b	nG6, $13, nRst, $02
	smpsModOff
	dc.b	nG5, $12, nRst, $02, nG5, $12, nRst, $02, nG5, $0B, smpsNoAttack, nG5
	dc.b	$01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nA5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nBb5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nB5, smpsNoAttack, nC6, $06, smpsNoAttack, nC6, $01, smpsNoAttack, nCs6, smpsNoAttack, nD6
	dc.b	smpsNoAttack, nEb6, smpsNoAttack, nE6, smpsNoAttack, nF6, smpsNoAttack, nG6, $03, nRst, $02
	smpsModOff
	dc.b	nF6, $4F, smpsNoAttack, nF6, $09, nRst, $02, nBb5, $12, nRst, $02, nBb5
	dc.b	$12, nRst, $02, nBb5, $09, nRst, $02, nEb6, $0A, smpsNoAttack, nEb6, $01
	dc.b	smpsNoAttack, nE6
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nF6
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nFs6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nG6, smpsNoAttack, nA6, smpsNoAttack, nBb6, $03, nRst, $02
	smpsModOff
	dc.b	nAb6, $12, nRst, $01, nAb6, $09, nRst, $02, nAb6, $08, nRst, $02
	dc.b	nEb6, $08, nRst, $02, smpsNoAttack, nRst, $01, nAb6, $12, nRst, $02, nBb6
	dc.b	$13, nRst, $02, nBb5, $13, nRst, $02
	smpsModOff
	dc.b	nBb5, $13, nRst, $02
	smpsModOff
	dc.b	nBb5, $0A, smpsNoAttack, nBb5, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nB5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nC6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nD6, smpsNoAttack, nEb6, $06, smpsNoAttack, nEb6, $01, smpsNoAttack, nE6, smpsNoAttack, nFs6
	dc.b	smpsNoAttack, nG6, smpsNoAttack, nAb6, smpsNoAttack, nA6, smpsNoAttack, nBb6, $02, nRst, nAb6, $50
	dc.b	smpsNoAttack, nAb6, $08, nRst, $02, nBb5, $13, nRst, $02
	smpsModOff
	dc.b	nBb5, $13, nRst, $02
	smpsModOff
	dc.b	nBb5, $08, nRst, $02, nEb6, $0A, smpsNoAttack, nEb6, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nE6
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nFs6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nG6, smpsNoAttack, nAb6, smpsNoAttack, nA6, smpsNoAttack, nBb6, $02, nRst, nAb6, $12
	dc.b	nRst, $02
	smpsModOff
	dc.b	nAb6, $08, nRst, $02, nAb6, $09, nRst, $02, nEb6, $08, nRst, $02
	dc.b	nAb6, $13, nRst, $02
	smpsModOff
	dc.b	nBb6, $12, nRst, $02, nBb5, $13, nRst, $02, nBb5, $13, nRst, $02
	dc.b	nBb5, $0B, smpsNoAttack, nB5, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nC6
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nCs6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nD6, smpsNoAttack, nEb6, $06, smpsNoAttack, nEb6, $01, smpsNoAttack, nE6, smpsNoAttack, nF6
	dc.b	smpsNoAttack, nFs6, smpsNoAttack, nAb6, smpsNoAttack, nA6, smpsNoAttack, nBb6, $0C, nRst, $03
	smpsModOff
	dc.b	nA6, $0A, smpsNoAttack, nA6, $02
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA6, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA6, $01
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb6, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb6, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG6, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs6, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF6, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	nF6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF6, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF6, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF6, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE6, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb6, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB5, $01, nRst, $02
	smpsModOff
	smpsAlterNote       $00
	dc.b	nG5, $14, nRst, $02
	smpsPan             panCenter, $00
	smpsModOff
	smpsAlterNote       $00
	smpsJump            TanTanTaTaTaTan_Jump04

; FM3 Data
TanTanTaTaTaTan_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $16
	smpsPan             panLeft, $00
	dc.b	nE5, $13, nRst, $02

TanTanTaTaTaTan_Jump03:
	dc.b	nE5, $13, nRst, $02, nE5, $0A, smpsNoAttack, nE5, $01, smpsNoAttack, nF5, smpsNoAttack
	dc.b	nFs5, smpsNoAttack, nAb5, smpsNoAttack, nA5, $06, smpsNoAttack, nA5, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nBb5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nC6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nCs6, smpsNoAttack, nD6, smpsNoAttack, nEb6, smpsNoAttack, nE6, $02, nRst
	smpsModOff
	dc.b	nD6, $12, nRst, $02
	smpsModOff
	dc.b	nD6, $08, nRst, $02, nD6, $09, nRst, $02, nA5, $08, nRst, $02
	dc.b	nD6, $13, nRst, $02
	smpsModOff
	dc.b	nE6, $12, nRst, $03
	smpsModOff
	dc.b	nE5, $12, nRst, $02, nE5, $13, nRst, $02, nE5, $0B
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nF5, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nFs5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nG5, smpsNoAttack, nAb5, smpsNoAttack, nA5, $06, smpsNoAttack, nA5, $01, smpsNoAttack, nBb5
	dc.b	smpsNoAttack, nB5, smpsNoAttack, nC6, smpsNoAttack, nD6, smpsNoAttack, nEb6, smpsNoAttack, nE6, $03, nRst
	dc.b	$01, nD6, $50, smpsNoAttack, nD6, $08, nRst, $03
	smpsModOff
	dc.b	nE5, $13, nRst, $02
	smpsModOff
	dc.b	nE5, $13, nRst, $02
	smpsModOff
	dc.b	nE5, $0A, smpsNoAttack, nE5, $01, smpsNoAttack, nF5, smpsNoAttack, nFs5, smpsNoAttack, nAb5, smpsNoAttack
	dc.b	nA5, $06, smpsNoAttack, nA5, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nBb5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nB5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nCs6, smpsNoAttack, nD6, smpsNoAttack, nEb6, smpsNoAttack, nE6, $02, nRst, nD6, $12
	dc.b	nRst, $02
	smpsModOff
	dc.b	nD6, $08, nRst, $02, nD6, $09, nRst, $02, nA5, $08, nRst, $02
	dc.b	nD6, $13, nRst, $02
	smpsModOff
	dc.b	nE6, $13, nRst, $02
	smpsModOff
	dc.b	nE5, $12, nRst, $02, nE5, $12, nRst, $02, nE5, $0B, smpsNoAttack, nE5
	dc.b	$01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nFs5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nG5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nAb5, smpsNoAttack, nA5, $06, smpsNoAttack, nA5, $01, smpsNoAttack, nBb5, smpsNoAttack, nB5
	dc.b	smpsNoAttack, nC6, smpsNoAttack, nCs6, smpsNoAttack, nD6, smpsNoAttack, nE6, $03, nRst, $02
	smpsModOff
	dc.b	nD6, $4F, smpsNoAttack, nD6, $09, nRst, $02
	smpsModOff
	dc.b	nG5, $12, nRst, $02, nG5, $12, nRst, $02, nG5, $09, nRst, $02
	dc.b	nC6, $0A, smpsNoAttack, nC6, $01, smpsNoAttack, nCs6
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nD6
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nEb6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nE6, smpsNoAttack, nF6, smpsNoAttack, nG6, $03, nRst, $02
	smpsModOff
	dc.b	nF6, $12, nRst, $02
	smpsModOff
	dc.b	nF6, $08, nRst, $02, nF6, $09, nRst, $01, nC6, $08, nRst, $03
	dc.b	nF6, $12, nRst, $02, nG6, $13, nRst, $02, nG5, $13, nRst, $02
	smpsModOff
	dc.b	nG5, $13, nRst, $02
	smpsModOff
	dc.b	nG5, $0A, smpsNoAttack, nG5, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nAb5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nA5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nB5, smpsNoAttack, nC6, $06, smpsNoAttack, nC6, $01, smpsNoAttack, nCs6, smpsNoAttack, nEb6
	dc.b	smpsNoAttack, nE6, smpsNoAttack, nF6, smpsNoAttack, nFs6, smpsNoAttack, nG6, $02, nRst, nF6, $50
	dc.b	smpsNoAttack, nF6, $08, nRst, $02, nG5, $13, nRst, $02
	smpsModOff
	dc.b	nG5, $13, nRst, $02
	smpsModOff
	dc.b	nG5, $0A, smpsNoAttack, nG5, $01, smpsNoAttack, nAb5, smpsNoAttack, nBb5, smpsNoAttack, nB5, smpsNoAttack
	dc.b	nC6, $06, smpsNoAttack, nC6, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nCs6
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nEb6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nE6, smpsNoAttack, nF6, smpsNoAttack, nFs6, smpsNoAttack, nG6, $02, nRst, nF6, $12
	dc.b	nRst, $02
	smpsModOff
	dc.b	nF6, $08, nRst, $02, nF6, $09, nRst, $02, nC6, $08, nRst, $02
	dc.b	nF6, $13, nRst, $02
	smpsModOff
	dc.b	nG6, $12, nRst, $03
	smpsModOff
	dc.b	nG5, $12, nRst, $02, nG5, $13, nRst, $02, nG5, $0B, smpsNoAttack, nAb5
	dc.b	$01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nA5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nBb5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nB5, smpsNoAttack, nC6, $06, smpsNoAttack, nC6, $01, smpsNoAttack, nCs6, smpsNoAttack, nD6
	dc.b	smpsNoAttack, nEb6, smpsNoAttack, nF6, smpsNoAttack, nFs6, smpsNoAttack, nG6, $0D, nRst, $02
	smpsModOff
	dc.b	nF6, $0A, smpsNoAttack, nF6, $02
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF6, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF6, $01
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE6, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb6, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC6, $01, smpsNoAttack, nC6, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG5, $01, nRst, $02
	smpsAlterVol        $69
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $97
	smpsModOff
	smpsAlterNote       $00
	dc.b	nE5, $13, nRst, $02
	smpsPan             panLeft, $00
	smpsModOff
	smpsAlterNote       $00
	smpsJump            TanTanTaTaTaTan_Jump03

; FM4 Data
TanTanTaTaTaTan_FM4:
	smpsSetvoice        $01
	smpsAlterVol        $14
	smpsPan             panRight, $00
	dc.b	nC5, $13, nRst, $02

TanTanTaTaTaTan_Jump02:
	dc.b	nC5, $13, nRst, $02, nC5, $0A, smpsNoAttack, nC5, $01, smpsNoAttack, nCs5, smpsNoAttack
	dc.b	nD5, smpsNoAttack, nE5, smpsNoAttack, nF5, $06, smpsNoAttack, nF5, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nFs5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nG5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nA5, smpsNoAttack, nBb5, smpsNoAttack, nB5, smpsNoAttack, nC6, $02, nRst
	smpsModOff
	dc.b	nBb5, $12, nRst, $02
	smpsModOff
	dc.b	nBb5, $08, nRst, $02, nBb5, $09, nRst, $02, nF5, $08, nRst, $02
	dc.b	nBb5, $13, nRst, $02
	smpsModOff
	dc.b	nC6, $12, nRst, $03
	smpsModOff
	dc.b	nC5, $12, nRst, $02, smpsNoAttack, nRst, $01
	smpsModOff
	dc.b	nC5, $12, nRst, $02, nC5, $0B
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nCs5, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nD5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nEb5, smpsNoAttack, nE5, smpsNoAttack, nF5, $06, smpsNoAttack, nF5, $01, smpsNoAttack, nFs5
	dc.b	smpsNoAttack, nG5, smpsNoAttack, nAb5, smpsNoAttack, nBb5, smpsNoAttack, nB5, smpsNoAttack, nC6, $03, nRst
	dc.b	$01, smpsNoAttack, nRst
	smpsModOff
	dc.b	nBb5, $4F, smpsNoAttack, nBb5, $08, nRst, $03
	smpsModOff
	dc.b	nC5, $13, nRst, $02
	smpsModOff
	dc.b	nC5, $13, nRst, $02
	smpsModOff
	dc.b	nC5, $0A, smpsNoAttack, nC5, $01, smpsNoAttack, nCs5, smpsNoAttack, nD5, smpsNoAttack, nE5, smpsNoAttack
	dc.b	nF5, $07
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nFs5, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nG5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nA5, smpsNoAttack, nBb5, smpsNoAttack, nB5, smpsNoAttack, nC6, $02, nRst, nBb5, $12
	dc.b	nRst, $02
	smpsModOff
	dc.b	nBb5, $08, nRst, $03, nBb5, $08, nRst, $02, nF5, $08, nRst, $02
	dc.b	nBb5, $13, nRst, $02
	smpsModOff
	dc.b	nC6, $13, nRst, $02
	smpsModOff
	dc.b	nC5, $12, nRst, $03
	smpsModOff
	dc.b	nC5, $11, nRst, $03
	smpsModOff
	dc.b	nC5, $0A, smpsNoAttack, nC5, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nD5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nEb5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nE5, smpsNoAttack, nF5, $06, smpsNoAttack, nF5, $01, smpsNoAttack, nFs5, smpsNoAttack, nG5
	dc.b	smpsNoAttack, nAb5, smpsNoAttack, nA5, smpsNoAttack, nBb5, smpsNoAttack, nC6, $03, nRst, $02
	smpsModOff
	dc.b	nBb5, $50, smpsNoAttack, nBb5, $08, nRst, $02
	smpsModOff
	dc.b	nE5, $12, nRst, $03
	smpsModOff
	dc.b	nE5, $11, nRst, $03
	smpsModOff
	dc.b	nE5, $0A, smpsNoAttack, nE5, $01, smpsNoAttack, nFs5, smpsNoAttack, nG5, smpsNoAttack, nAb5, smpsNoAttack
	dc.b	nA5, $06, smpsNoAttack, nA5, $01, smpsNoAttack, nBb5
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nB5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nC6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nCs6, smpsNoAttack, nD6, smpsNoAttack, nE6, $03, nRst, $02
	smpsModOff
	dc.b	nD6, $12, nRst, $02
	smpsModOff
	dc.b	nD6, $08, nRst, $02, nD6, $09, nRst, $01, nA5, $08, nRst, $03
	dc.b	nD6, $12, nRst, $03
	smpsModOff
	dc.b	nE6, $12, nRst, $02, nE5, $13, nRst, $02
	smpsModOff
	dc.b	nE5, $13, nRst, $02
	smpsModOff
	dc.b	nE5, $0A, smpsNoAttack, nE5, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nF5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nFs5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nAb5, smpsNoAttack, nA5, $07, smpsNoAttack, nBb5, $01, smpsNoAttack, nB5, smpsNoAttack, nCs6
	dc.b	smpsNoAttack, nD6, smpsNoAttack, nEb6, smpsNoAttack, nE6, $02, nRst, nD6, $50, smpsNoAttack, nD6
	dc.b	$08, nRst, $02, nE5, $13, nRst, $02
	smpsModOff
	dc.b	nE5, $13, nRst, $02
	smpsModOff
	dc.b	nE5, $0A, smpsNoAttack, nE5, $01, smpsNoAttack, nF5, smpsNoAttack, nFs5, smpsNoAttack, nAb5, smpsNoAttack
	dc.b	nA5, $06, smpsNoAttack, nA5, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nBb5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nC6
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nCs6, smpsNoAttack, nD6, smpsNoAttack, nEb6, smpsNoAttack, nE6, $02, nRst, nD6, $12
	dc.b	nRst, $02
	smpsModOff
	dc.b	nD6, $08, nRst, $02, nD6, $09, nRst, $02, nA5, $08, nRst, $02
	dc.b	nD6, $13, nRst, $02
	smpsModOff
	dc.b	nE6, $12, nRst, $03
	smpsModOff
	dc.b	nE5, $12, nRst, $02, nE5, $13, nRst, $02, nE5, $0B, smpsNoAttack, nF5
	dc.b	$01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nFs5
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nG5
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nAb5, smpsNoAttack, nA5, $06, smpsNoAttack, nA5, $01, smpsNoAttack, nBb5, smpsNoAttack, nB5
	dc.b	smpsNoAttack, nC6, smpsNoAttack, nD6, smpsNoAttack, nEb6, smpsNoAttack, nE6, $0D, nRst, $02
	smpsModOff
	dc.b	nE6, $0B, smpsNoAttack, nE6, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nE6, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE6, $01
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE6, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb6, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD6, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC6, $01, smpsNoAttack, nC6, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC6, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB5, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb5, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA5, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb5, $01, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG5, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nFs5, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs5, $01, nRst, $03
	smpsModOff
	smpsAlterNote       $00
	dc.b	nC5, $13, nRst, $02
	smpsPan             panRight, $00
	smpsModOff
	smpsAlterNote       $00
	smpsJump            TanTanTaTaTaTan_Jump02

; FM5 Data
TanTanTaTaTaTan_FM5:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $98
	dc.b	nG1, $08, nRst, $02, nG1, $08, nRst, $02

TanTanTaTaTaTan_Jump01:
	dc.b	nG2, $09, nRst, $01, nG2, $09, nRst, $02, nG1, $08, nRst, $02
	dc.b	nG1, $08, nRst, $03, nG2, $07, nRst, $02, nG2, $08, nRst, $02
	dc.b	nG1, $08, nRst, $02, nG1, $08, nRst, $03, nG2, $08, nRst, $02
	dc.b	nG2, $08, nRst, $02, nG1, $09, nRst, $01, nG1, $09, nRst, $02
	dc.b	nG2, $09, nRst, $01, nG2, $08, nRst, $03, nG1, $08, nRst, $02
	dc.b	nG1, $08, nRst, $03, nG2, $08, nRst, $02, nG2, $08, nRst, $02
	dc.b	nG1, $09, nRst, $02, nG1, $08, nRst, $02, nG2, $09, nRst, $02
	dc.b	nG2, $08, nRst, $02, nG1, $08, nRst, $01, nG1, $08, nRst, $02
	dc.b	smpsNoAttack, nRst, $01, nG2, $07, nRst, $02, nG2, $08, nRst, $02, smpsNoAttack
	dc.b	nRst, $01, nG1, $07, nRst, $02, nG1, $08, nRst, $02, nG2, $08
	dc.b	nRst, $02, nG2, $08, nRst, $03, nG1, $09, nRst, $02, nG1, $08
	dc.b	nRst, $02, nG2, $09, nRst, $01, nG2, $09, nRst, $02, nG1, $08
	dc.b	nRst, $02, nG1, $08, nRst, $03, nG2, $07, nRst, $02, nG2, $08
	dc.b	nRst, $02, nG1, $08, nRst, $02, nG1, $08, nRst, $03, nG2, $08
	dc.b	nRst, $02, nG2, $08, nRst, $02, nG1, $09, nRst, $02, nG1, $08
	dc.b	nRst, $02, nG2, $09, nRst, $01, nG2, $09, nRst, $02, nG1, $08
	dc.b	nRst, $02, nG1, $08, nRst, $03, nG2, $07, nRst, $02, nG2, $08
	dc.b	nRst, $03, nG1, $08, nRst, $02, nG1, $08, nRst, $02, nG2, $09
	dc.b	nRst, $02, nG2, $08, nRst, $02, nG1, $08, nRst, $02, nG1, $08
	dc.b	nRst, $02, nG2, $08, nRst, $02, nG2, $08, nRst, $02, nG1, $08
	dc.b	nRst, $01, nG1, $09, nRst, $01, nG2, $09, nRst, $02, nG2, $08
	dc.b	nRst, $02, nBb1, $08, nRst, $02, nBb1, $08, nRst, $03, nBb2, $07
	dc.b	nRst, $02, nBb2, $08, nRst, $03, nBb1, $08, nRst, $02, nBb1, $08
	dc.b	nRst, $02, nBb2, $09, nRst, $02, nBb2, $08, nRst, $02, nBb1, $08
	dc.b	nRst, $02, nBb1, $08, nRst, $02, nBb2, $09, nRst, $02, nBb2, $08
	dc.b	nRst, $02, nBb1, $08, nRst, $02, nBb1, $08, nRst, $03, nBb2, $08
	dc.b	nRst, $02, nBb2, $08, nRst, $02, nBb1, $09, nRst, $02, nBb1, $08
	dc.b	nRst, $02, nBb2, $09, nRst, $01, nBb2, $09, nRst, $02, nBb1, $08
	dc.b	nRst, $02, nBb1, $08, nRst, $03, nBb2, $07, nRst, $02, nBb2, $08
	dc.b	nRst, $02, nBb1, $08, nRst, $02, nBb1, $08, nRst, $02, nBb2, $08
	dc.b	nRst, $02, nBb2, $08, nRst, $02, nBb1, $08, nRst, $02, nBb1, $08
	dc.b	nRst, $02, nBb2, $08, nRst, $02, nBb2, $08, nRst, $02, nBb1, $09
	dc.b	nRst, $02, nBb1, $08, nRst, $02, nBb2, $09, nRst, $01, nBb2, $09
	dc.b	nRst, $02, nBb1, $08, nRst, $02, nBb1, $08, nRst, $03, nBb2, $07
	dc.b	nRst, $02, nBb2, $08, nRst, $02, nBb1, $08, nRst, $02, nBb1, $08
	dc.b	nRst, $03, nBb2, $08, nRst, $02, nBb2, $08, nRst, $02, nBb1, $09
	dc.b	nRst, $01, nBb1, $09, nRst, $02, nBb2, $08, nRst, $02, nBb2, $08
	dc.b	nRst, $03, nBb1, $08, nRst, $02, nBb1, $08, nRst, $03, nBb2, $08
	dc.b	nRst, $02, nBb2, $08, nRst, $02, nBb1, $09, nRst, $02, nBb1, $08
	dc.b	nRst, $02, nBb2, $09, nRst, $01, nBb2, $09, nRst, $02
	smpsAlterVol        $FA
	dc.b	nG2, $0B, smpsNoAttack, nG2, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG2, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nF2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE2, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nEb2, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD2, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs2, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC2, $01, smpsNoAttack, nC2, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nC2, $01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB1, $01, smpsNoAttack
	smpsAlterNote       $22
	dc.b	nBb1, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb1, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA1, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA1, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA1, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nA1, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA1, $01, nRst, $03
	smpsAlterVol        $6E
	dc.b	smpsNoAttack, nRst, $01
	smpsAlterVol        $98
	smpsAlterNote       $00
	dc.b	nG1, $08, nRst, $02, nG1, $08, nRst, $02
	smpsPan             panCenter, $00
	smpsJump            TanTanTaTaTaTan_Jump01

; FM6 Data
TanTanTaTaTaTan_FM6:
	smpsSetvoice        $03
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsAlterVol        $9A
	dc.b	nG3, $14

TanTanTaTaTaTan_Jump00:
	dc.b	smpsNoAttack, nG3, $3B, nRst, $02, nG4, $51, nRst, $02, nG3, $51, nRst
	dc.b	$02, nG4, $4D, nRst, $03, nG3, $50, nRst, $02, nG4, $51, nRst
	dc.b	$02, nG3, $50, nRst, $02, nG4, $4E, nRst, $02, smpsNoAttack, nRst, $01
	dc.b	nBb3, $4F, nRst, $02, nBb4, $50, nRst, $02, smpsNoAttack, nRst, $01, nBb3
	dc.b	$4F, nRst, $02, nBb4, $4E, nRst, $03, nBb3, $4F, nRst, $02, nBb4
	dc.b	$50, nRst, $03, nBb3, $51, nRst, $02, nBb4, $0B, smpsNoAttack, nBb4, $01
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $E8
	dc.b	nBb4, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nA4, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $E9
	dc.b	nA4, $01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	nAb4, smpsNoAttack
	smpsAlterNote       $17
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nAb4, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nG4, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $EC
	dc.b	nG4, $01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs4, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nFs4, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	nF4, $01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nE4, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE4, $01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb4, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nEb4, $01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	nD4, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	nD4, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs4, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs4, $01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC4, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC4, $01, smpsNoAttack, nC4, $01, nRst, $04, nG3, $14
	smpsPan             panCenter, $00
	smpsJump            TanTanTaTaTaTan_Jump00

; PSG1 Data
TanTanTaTaTaTan_PSG1:
	dc.b	nRst, $01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02

TanTanTaTaTaTan_Jump07:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $09, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, nRst, $04
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $09, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $09, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $09, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $07
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nBb2, $0A, nRst, $04
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nG2, $0A, nRst, $02
	smpsJump            TanTanTaTaTaTan_Jump07

; PSG2 Data
TanTanTaTaTaTan_PSG2:
	dc.b	nRst, $09
	smpsPSGAlterVol     $07
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A

TanTanTaTaTaTan_Jump06:
	dc.b	nG2, $06, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nG2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0B, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0A, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $09
	smpsPSGAlterVol     $02
	dc.b	nBb2, $0D, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nG2, $09
	smpsPSGAlterVol     $02
	dc.b	nG2, $03
	smpsPSGAlterVol     $FE
	smpsJump            TanTanTaTaTaTan_Jump06

TanTanTaTaTaTan_Voices:
;	Voice $00
;	$3E
;	$00, $00, $00, $00, 	$9F, $1F, $1F, $1F, 	$1F, $1F, $0B, $0B
;	$11, $0F, $08, $08, 	$0C, $0C, $76, $76, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $1F, $1F
	smpsVcDecayRate2    $08, $08, $0F, $11
	smpsVcDecayLevel    $07, $07, $00, $00
	smpsVcReleaseRate   $06, $06, $0C, $0C
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $01
;	$39
;	$33, $71, $10, $30, 	$10, $10, $10, $10, 	$0A, $08, $08, $00
;	$02, $02, $02, $00, 	$22, $22, $22, $02, 	$1D, $18, $1B, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $07, $03
	smpsVcCoarseFreq    $00, $00, $01, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $08, $0A
	smpsVcDecayRate2    $00, $02, $02, $02
	smpsVcDecayLevel    $00, $02, $02, $02
	smpsVcReleaseRate   $02, $02, $02, $02
	smpsVcTotalLevel    $00, $1B, $18, $1D

;	Voice $02
;	$38
;	$31, $01, $01, $02, 	$9C, $99, $9F, $18, 	$0C, $02, $0C, $00
;	$04, $04, $04, $02, 	$13, $73, $03, $34, 	$1F, $28, $10, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $00, $02, $02, $02
	smpsVcAttackRate    $18, $1F, $19, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0C, $02, $0C
	smpsVcDecayRate2    $02, $04, $04, $04
	smpsVcDecayLevel    $03, $00, $07, $01
	smpsVcReleaseRate   $04, $03, $03, $03
	smpsVcTotalLevel    $00, $10, $28, $1F

;	Voice $03
;	$33
;	$30, $32, $50, $52, 	$1F, $1F, $1F, $1F, 	$0C, $02, $0C, $00
;	$04, $04, $04, $02, 	$13, $73, $03, $34, 	$12, $14, $14, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $05, $03, $03
	smpsVcCoarseFreq    $02, $00, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0C, $02, $0C
	smpsVcDecayRate2    $02, $04, $04, $04
	smpsVcDecayLevel    $03, $00, $07, $01
	smpsVcReleaseRate   $04, $03, $03, $03
	smpsVcTotalLevel    $00, $14, $14, $12

;	Voice $04
;	$38
;	$31, $01, $01, $02, 	$9C, $99, $9F, $18, 	$0A, $0A, $0C, $06
;	$08, $08, $08, $00, 	$44, $34, $34, $54, 	$1F, $28, $10, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $00, $02, $02, $02
	smpsVcAttackRate    $18, $1F, $19, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0C, $0A, $0A
	smpsVcDecayRate2    $00, $08, $08, $08
	smpsVcDecayLevel    $05, $03, $03, $04
	smpsVcReleaseRate   $04, $04, $04, $04
	smpsVcTotalLevel    $00, $10, $28, $1F

;	Voice $05
;	$3E
;	$11, $71, $01, $31, 	$9F, $1F, $1F, $1F, 	$1F, $1F, $0B, $0B
;	$11, $0F, $08, $08, 	$0C, $0C, $76, $76, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $01
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $1F, $1F
	smpsVcDecayRate2    $08, $08, $0F, $11
	smpsVcDecayLevel    $07, $07, $00, $00
	smpsVcReleaseRate   $06, $06, $0C, $0C
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $06
;	$3E
;	$11, $71, $01, $31, 	$1F, $1F, $1F, $1F, 	$15, $0E, $0F, $0F
;	$00, $0B, $15, $0D, 	$06, $76, $75, $75, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $01
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0E, $15
	smpsVcDecayRate2    $0D, $15, $0B, $00
	smpsVcDecayLevel    $07, $07, $07, $00
	smpsVcReleaseRate   $05, $05, $06, $06
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $07
;	$3E
;	$11, $71, $01, $31, 	$1F, $1F, $1F, $1F, 	$15, $0E, $0F, $0F
;	$00, $0B, $15, $0D, 	$0C, $0C, $76, $76, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $01
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0E, $15
	smpsVcDecayRate2    $0D, $15, $0B, $00
	smpsVcDecayLevel    $07, $07, $00, $00
	smpsVcReleaseRate   $06, $06, $0C, $0C
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $08
;	$3E
;	$00, $71, $01, $31, 	$1F, $1F, $1F, $1F, 	$15, $0E, $0F, $0F
;	$00, $0B, $15, $0D, 	$06, $76, $75, $75, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0E, $15
	smpsVcDecayRate2    $0D, $15, $0B, $00
	smpsVcDecayLevel    $07, $07, $07, $00
	smpsVcReleaseRate   $05, $05, $06, $06
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $09
;	$3E
;	$11, $71, $01, $31, 	$1F, $1F, $1F, $1F, 	$15, $0E, $0F, $0F
;	$00, $0F, $08, $08, 	$0C, $0C, $76, $76, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $01
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0E, $15
	smpsVcDecayRate2    $08, $08, $0F, $00
	smpsVcDecayLevel    $07, $07, $00, $00
	smpsVcReleaseRate   $06, $06, $0C, $0C
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $0A
;	$3E
;	$11, $71, $01, $00, 	$9F, $1F, $1F, $1F, 	$1F, $1F, $0B, $0B
;	$11, $0F, $08, $08, 	$0C, $0C, $76, $76, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $01
	smpsVcCoarseFreq    $00, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $1F, $1F
	smpsVcDecayRate2    $08, $08, $0F, $11
	smpsVcDecayLevel    $07, $07, $00, $00
	smpsVcReleaseRate   $06, $06, $0C, $0C
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $0B
;	$3E
;	$11, $71, $01, $31, 	$1F, $1F, $1F, $1F, 	$1F, $1F, $0B, $0B
;	$11, $0F, $08, $08, 	$0C, $0C, $76, $76, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $01
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $0B, $1F, $1F
	smpsVcDecayRate2    $08, $08, $0F, $11
	smpsVcDecayLevel    $07, $07, $00, $00
	smpsVcReleaseRate   $06, $06, $0C, $0C
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $0C
;	$3E
;	$11, $71, $01, $31, 	$1F, $1F, $1F, $1F, 	$15, $0E, $0F, $0F
;	$00, $0B, $15, $0D, 	$06, $76, $75, $76, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $01
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $0F, $0E, $15
	smpsVcDecayRate2    $0D, $15, $0B, $00
	smpsVcDecayLevel    $07, $07, $07, $00
	smpsVcReleaseRate   $06, $05, $06, $06
	smpsVcTotalLevel    $00, $00, $00, $00

