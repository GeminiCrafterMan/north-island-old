ShootingRistar_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     ShootingRistar_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       ShootingRistar_DAC,	$00, $F2
	smpsHeaderFM        ShootingRistar_FM1,	$00, $00
	smpsHeaderFM        ShootingRistar_FM2,	$00, $00
	smpsHeaderFM        ShootingRistar_FM3,	$00, $00
	smpsHeaderFM        ShootingRistar_FM4,	$00, $00
	smpsHeaderFM        ShootingRistar_FM5,	$00, $00
	smpsHeaderFM        ShootingRistar_FM6,	$00, $00
	smpsHeaderPSG       ShootingRistar_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       ShootingRistar_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       ShootingRistar_PSG3,	$00, $00, $00, $00

; DAC Data
ShootingRistar_DAC:
; FM6 Data
ShootingRistar_FM6:
	smpsStop

; FM1 Data
ShootingRistar_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $07
	smpsPan             panCenter, $00
	dc.b	nF2, $0C, nRst, $22

ShootingRistar_Jump04:
	dc.b	nRst, $2F, nC2, $06, nRst, $07, nF2, $0D, nRst, $51, nC2, $07
	dc.b	nRst, $06, nF2, $0E, nRst, $50, nC2, $07, nRst
	smpsSetvoice        $03
	dc.b	nFs2, $6A, nRst, $01
	smpsSetvoice        $00
	dc.b	nF2, $07, nRst, $0D, nF2, $07, nRst, $0D, nF2, $0E, nRst, $14
	dc.b	nF2, $05, nRst, $01, nF2, $07, nRst, nD2, nRst, $06, nC2, $07
	dc.b	nRst, $0D, nC2, $07, nRst, $0D, nC2, $0E, nRst, $14, nC2, $06
	dc.b	nRst, $01, nD2, $06, nRst, $07, nC2, nRst, nBb1, $06, nRst, $0E
	dc.b	nBb1, $06, nRst, $0E, nBb1, $0D, nRst, $14, nBb1, $06, nRst, $01
	dc.b	nD2, $07, nRst, $06, nE2, $07, nRst, nF2, nRst, $0D, nF2, $07
	dc.b	nRst, $0D, nF2, $0E, nRst, $0D, nF2, $08, nRst, $01, nAb2, $03
	dc.b	nRst, $01, nA2, $08, nRst, $01, nF2, $04, nRst, $01, nD2, $06
	dc.b	nRst, $07, nF2, nRst, $0D, nF2, $07, nRst, $0D, nF2, $0E, nRst
	dc.b	$14, nF2, $06, nRst, $01, nF2, $06, nRst, $07, nD2, nRst, $06
	dc.b	nC2, $07, nRst, $0E, nC2, $06, nRst, $0E, nC2, $0D, nRst, $14
	dc.b	nC2, $06, nRst, $01, nD2, $07, nRst, $06, nC2, $07, nRst, nBb1
	dc.b	nRst, $0D, nBb1, $07, nRst, $0D, nBb1, nRst, $15, nBb1, $05, nRst
	dc.b	$01, nD2, $07, nRst, nE2, $06, nRst, $07, nF2, nRst, $0D, nF2
	dc.b	$07, nRst, $0D, nF2, $0E, nRst, $06, nF2, nRst, $01, nD2, $07
	dc.b	nRst, nC2, $06, nRst, $07, nD2, nRst, $06, nF2, $07, nRst, $0E
	dc.b	nF2, $06, nRst, $0E, nF2, $19, nRst, $02, nA2, $06, nRst, $07
	dc.b	nBb2, nRst, $06, nB2, $07, nRst, nC3, $05, nRst, $01, nC2, $07
	dc.b	nRst, nC2, nRst, $0D, nC2, nRst, $0E, nC2, $07, nRst, $06, nEb2
	dc.b	$07, nRst, nE2, $06, nRst, $07, nF2, nRst, $0D, nF2, $07, nRst
	dc.b	$0D, nF2, $1A, nRst, $01, nA2, $07, nRst, nBb2, $06, nRst, $07
	dc.b	nB2, nRst, $06, nC3, $07, nRst, $0E, nC3, $06, nRst, $0E, nC3
	dc.b	$19, nRst, $01, nD3, $07, nRst, nEb3, $05, nRst, $02, nD3, $05
	dc.b	nRst, $01, nC3, $07, nRst, nF2, $06, nRst, $0E, nF2, $07, nRst
	dc.b	$0D, nF2, $1A, nRst, $01, nA2, $07, nRst, $06, nBb2, $07, nRst
	dc.b	nB2, $06, nRst, $07, nC3, $06, nRst, $01, nC2, $06, nRst, $07
	dc.b	nC2, nRst, $0D, nC2, $0E, nRst, $0D, nC2, $07, nRst, nEb2, $06
	dc.b	nRst, $07, nE2, nRst, $06, nF2, $07, nRst, $0D, nF2, $07, nRst
	dc.b	$0E, nF2, $19, nRst, $01, nEb2, $07, nRst, nD2, nRst, $06, nCs2
	dc.b	$07, nRst
	smpsSetvoice        $03
	dc.b	nC2, $14, nRst, $4A
	smpsSetvoice        $00
	dc.b	nC2, $06, nRst, $07, nF2, $0C, nRst, $01, nA2, $06, nRst, $01
	dc.b	nC3, $06, nRst, $01, nBb2, $0C, nRst, $01, nD2, $06, nRst, $01
	dc.b	nC2, $07, nRst, $06, nC2, $07, nRst, nD2, $03, nEb2, nE2, $0D
	dc.b	nRst, $01, nC2, $07, nRst, $06, nF2, $0D, nRst, $01, nA2, $05
	dc.b	nRst, $01, nC3, $06, nRst, $01, nBb2, $0C, nRst, $02, nD2, $05
	dc.b	nRst, $01, nC2, $07, nRst, nC2, $06, nRst, $07, nD2, $03, nEb2
	dc.b	$04, nE2, $0C, nRst, $01, nC2, $07, nRst, nF2, $0C, nRst, $01
	dc.b	nA2, $06, nRst, $01, nC3, $05, nRst, $01, nBb2, $0D, nRst, $01
	dc.b	nD2, $05, nRst, $02, nC2, $06, nRst, $07, nC2, nRst, $06, nD2
	dc.b	$04, nEb2, $03, nE2, $0C, nRst, $02, nC2, $06, nRst, $07, nF2
	dc.b	$0C, nRst, $01, nA2, $06, nRst, $01, nC3, $06, nRst, $01, nBb2
	dc.b	$0C, nRst, $01, nD2, $05, nRst, $02, nC2, $05, nRst, $08, nC2
	dc.b	$05, nRst, $02, nC3, $05, nRst, $02, nC2, $05, nRst, $01, nC2
	dc.b	$05, nRst, $02, nC2, $05, nRst, $02, nC3, $05, nRst, $02, nC2
	dc.b	$05, nRst, $01, nF2, $0D, nRst, $01, nA2, $05, nRst, $01, nC3
	dc.b	$06, nRst, $01, nBb2, $0C, nRst, $02, nD2, $05, nRst, $01, nC2
	dc.b	$07, nRst, nC2, $06, nRst, $07, nD2, $03, nEb2, $04, nE2, $0C
	dc.b	nRst, $01, nC2, $07, nRst, nF2, $0C, nRst, $01, nA2, $06, nRst
	dc.b	$01, nC3, $05, nRst, $01, nBb2, $0D, nRst, $01, nD2, $05, nRst
	dc.b	$02, nC2, $06, nRst, $07, nC2, nRst, $06, nD2, $04, nEb2, $03
	dc.b	nE2, $0C, nRst, $01, nC2, $07, nRst, nF2, $0C, nRst, $01, nA2
	dc.b	$06, nRst, $01, nC3, $06, nRst, $01, nBb2, $0C, nRst, $01, nD2
	dc.b	$06, nRst, $01, nC2, $07, nRst, $06, nC2, $07, nRst, nD2, $03
	dc.b	nEb2, nE2, $0D, nRst, $01, nC2, $07, nRst, $06, nF2, $0D, nRst
	dc.b	$01, nA2, $05, nRst, $01, nC3, $06, nRst, $01, nBb2, $0C, nRst
	dc.b	$01, nD2, $05, nRst, $02, nC2, $05, nRst, $09, nC2, $05, nRst
	dc.b	$01, nC3, $05, nRst, $02, nC2, $05, nRst, $02, nC2, $05, nRst
	dc.b	$01, nC2, $05, nRst, $02, nC3, $05, nRst, $02, nC2, $05, nRst
	dc.b	$02, nF2, $0C, nRst, $01, nA2, $06, nRst, $01, nC3, $05, nRst
	dc.b	$01, nBb2, $0D, nRst, $01, nD2, $05, nRst, $01, nC2, $07, nRst
	dc.b	nC2, nRst, $06, nD2, $04, nEb2, $03, nE2, $0C, nRst, $01, nC2
	dc.b	$07, nRst, nF2, $0C, nRst, $01, nA2, $06, nRst, $01, nC3, $06
	dc.b	nRst, $01, nBb2, $0C, nRst, $01, nD2, $06, nRst, $01, nC2, $07
	dc.b	nRst, $06, nC2, $07, nRst, nD2, $03, nEb2, nE2, $0D, nRst, $01
	dc.b	nC2, $06, nRst, $07, nF2, $0C, nRst, $02, nA2, $05, nRst, $01
	dc.b	nC3, $06, nRst, $01, nBb2, $0C, nRst, $01, nD2, $06, nRst, $01
	dc.b	nC2, $07, nRst, nC2, $06, nRst, $07, nD2, $03, nEb2, $04, nE2
	dc.b	$0C, nRst, $01, nC2, $07, nRst, nF2, $0C, nRst, $01, nA2, $06
	dc.b	nRst, $01, nC3, $05, nRst, $01, nBb2, $0D, nRst, $01, nD2, $05
	dc.b	nRst, $01, nC2, $05, nRst, $09, nC2, $05, nRst, $02, nC3, $05
	dc.b	nRst, $01, nC2, $05, nRst, $02, nC2, $05, nRst, $02, nC2, $05
	dc.b	nRst, $01, nC3, $05, nRst, $02, nC2, $05, nRst, $02, nF2, $0C
	dc.b	nRst, $01, nA2, $06, nRst, $01, nC3, $06, nRst, $01, nBb2, $0C
	dc.b	nRst, $01, nD2, $06, nRst, $01, nC2, $06, nRst, $07, nC2, nRst
	dc.b	nD2, $03, nEb2, nE2, $0D, nRst, $01, nC2, $06, nRst, $07, nF2
	dc.b	$0C, nRst, $02, nA2, $05, nRst, $01, nC3, $06, nRst, $01, nBb2
	dc.b	$0C, nRst, $01, nD2, $05, nRst, $02, nC2, $05, nRst, $09, nC2
	dc.b	$05, nRst, $01, nC3, $05, nRst, $02, nC2, $05, nRst, $02, nC2
	dc.b	$05, nRst, $01, nC2, $05, nRst, $02, nC3, $05, nRst, $02, nC2
	dc.b	$05, nRst, $01, nF2, $0D, nRst, $01, nA2, $05, nRst, $02, nC3
	dc.b	$05, nRst, $01, nBb2, $0D, nRst, $01, nD2, $05, nRst, $01, nC2
	dc.b	$05, nRst, $09, nC2, $05, nRst, $02, nC3, $05, nRst, $01, nC2
	dc.b	$05, nRst, $02, nC2, $05, nRst, $02, nC2, $05, nRst, $01, nC3
	dc.b	$05, nRst, $02, nC2, $05, nRst, $02, nBb2, $0D, $0E, nD2, $06
	dc.b	$0E, nEb2, $0D, $0E, $06
	smpsSetvoice        $03
	dc.b	nE2, $1B
	smpsSetvoice        $00
	dc.b	nF2, $07, nRst, $0D, nC2, $06, nRst, $01, nEb2, $06, nRst, $01
	dc.b	nG2, $06, nRst, $07, nF2, nRst, $06, nC2, $07, nRst, nEb2, nRst
	dc.b	$06, nG2, nRst, $01, nBb2, $0C, nRst, $01, nF2, $07, nRst, $0E
	dc.b	nC2, $05, nRst, $01, nEb2, $06, nRst, $01, nG2, $07, nRst, $06
	dc.b	nF2, $07, nRst, nC2, $06, nRst, $07, nG2, nRst, nEb2, $05, nRst
	dc.b	$01, nC2, $07, nRst, nF2, $06, nRst, $0E, nC2, $05, nRst, $02
	dc.b	nEb2, $05, nRst, $01, nG2, $07, nRst, nF2, $06, nRst, $07, nC2
	dc.b	nRst, nEb2, $06, nRst, $07, nG2, $06, nRst, $01, nBb2, $0C, nRst
	dc.b	$01, nF2, $07, nRst, $0D, nC2, $06, nRst, $01, nEb2, $05, nRst
	dc.b	$02, nG2, $06, nRst, $07, nF2, nRst, $06, nC2, $07, nRst, nG2
	dc.b	nRst, $06, nEb2, nRst, $01, nC2, $07, nRst, $06, nF2, $07, nRst
	dc.b	$0D, nC2, $06, nRst, $01, nEb2, $06, nRst, $01, nG2, $07, nRst
	dc.b	$06, nF2, $07, nRst, nC2, $06, nRst, $07, nEb2, nRst, nG2, $05
	dc.b	nRst, $01, nBb2, $0D, nRst, $01, nF2, $06, nRst, $0E, nC2, $05
	dc.b	nRst, $02, nEb2, $05, nRst, $01, nG2, $07, nRst, nF2, $06, nRst
	dc.b	$07, nC2, nRst, $06, nG2, $07, nRst, nEb2, $05, nRst, $02, nC2
	dc.b	$06, nRst, $07, nF2, $0D, nRst, $22
	smpsPan             panCenter, $00
	smpsJump            ShootingRistar_Jump04

; FM2 Data
ShootingRistar_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $12
	smpsPan             panCenter, $00
	dc.b	nRst, $2E

ShootingRistar_Jump03:
	dc.b	nRst, $7F, $7F, $15, nFs5, $26, smpsNoAttack
	smpsAlterNote       $04
	dc.b	nG5, $02
	smpsAlterVol        $06
	dc.b	smpsNoAttack, $01, smpsNoAttack, nAb5, $02, smpsNoAttack
	smpsAlterNote       $01
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $E3
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $1D
	dc.b	$02
	smpsAlterVol        $06
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nCs6, $02, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $DB
	dc.b	nEb6, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	nE6, smpsNoAttack
	smpsAlterNote       $29
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	nF6, $01
	smpsAlterVol        $06
	dc.b	smpsNoAttack, $02, smpsNoAttack
	smpsAlterNote       $D3
	dc.b	nFs6, smpsNoAttack
	smpsAlterNote       $0D
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nG6, smpsNoAttack
	smpsAlterNote       $21
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	nAb6, nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $F7
	smpsAlterNote       $00
	dc.b	nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, nE5, $02, nF5, $01, nG5, $03, nA5, $01, nBb5, $02, nC6
	dc.b	$10

ShootingRistar_Loop1A:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, ShootingRistar_Loop1A
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA5, $05, nRst, $08, nBb5, $05, nRst, $02, nC6, $05, nRst, $02
	dc.b	nBb5, $05, nRst, $01, nA5, $0E, nRst, $06, nF5, $0E, nRst, $06
	dc.b	nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, nRst, $07
	smpsAlterNote       $00
	dc.b	nC5, $03, nRst, $04, nA5, $05, nRst, $08, nBb5, $05, nRst, $16
	dc.b	nC6, $03, nRst, $04, nC6, $05, nRst, $08, nC6, $05, nRst, $08
	dc.b	nC6, $05, nRst, $09, nC6, $05, nRst, $08, nC6, $04, nRst, $03
	dc.b	nBb5, $05, nRst, $08, nBb5, $05, nRst, $09, nA5, $0D, nRst, $07
	dc.b	nF5, $0D, nRst, $07, nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, nRst, $06
	smpsAlterNote       $00
	dc.b	nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, nE5, $02, nF5, nG5, nA5, $01, nBb5, $02, nC6, $10

ShootingRistar_Loop1B:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, ShootingRistar_Loop1B
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA5, $05, nRst, $08, nBb5, $05, nRst, $02, nC6, $05, nRst, $02
	dc.b	nBb5, $05, nRst, $01, nA5, $0E, nRst, $07, nF5, $0D, nRst, $07
	dc.b	nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, nRst, $06
	smpsAlterNote       $00
	dc.b	nC5, $04, nRst, $03, nA5, $05, nRst, $08, nBb5, $05, nRst, $16
	dc.b	nC6, $04, nRst, $03

ShootingRistar_Loop1C:
	dc.b	nC6, $05, nRst, $08, nC6, $05, nRst, $09
	smpsLoop            $00, $02, ShootingRistar_Loop1C
	dc.b	nC6, $03, nRst, nBb5, $05, nRst, $09, nBb5, $05, nRst, $08, nA5
	dc.b	$0E, nRst, $06, nF5, $0E, nRst, $06, nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, nRst, $0D
	smpsAlterNote       $00
	dc.b	nC5, $04, nRst, $03, nD5, $04, nRst, $03, nC5, $04, nRst, $02
	dc.b	nF5, $04, nRst, $17, nEb5, $04, nRst, $17, nD5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $01
	smpsAlterNote       $00
	dc.b	nC5, $04, nRst, $0A, nC5, $04, nRst, $02, nD5, $04, nRst, $0A

ShootingRistar_Loop1D:
	dc.b	nD5, $03, nEb5, $0C, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop1D
	dc.b	nD5, $03, nEb5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nD5, $04, nRst, $09, nC5, $04, nRst, $0A, nBb4, $04, nRst, $09
	dc.b	nA4, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $01
	smpsAlterNote       $00
	dc.b	nBb4, $04, nB4, $03, nC5, nRst, $0A, nF4, $11

ShootingRistar_Loop1E:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $0A, ShootingRistar_Loop1E
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02

ShootingRistar_Loop1F:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsLoop            $00, $02, ShootingRistar_Loop1F
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $07, nC5, $04, nRst, $02, nD5, $04, nRst, $03, nC5
	dc.b	$04, nRst, $03, nA5, $04, nRst, $17, nG5, $04, nRst, $16, nF5
	dc.b	$10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst
	smpsAlterNote       $00
	dc.b	nEb5, $04, nRst, $09, nEb5, $04, nRst, $03, nF5, $04, nRst, $09
	dc.b	nFs5, $03, nG5, $0C, nRst, $05, nFs5, $04, nG5, $0C, nRst, $04
	dc.b	nFs5, nG5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nF5, $04, nRst, $0A, nEb5, $04, nRst, $09, nD5, $04, nRst, $09
	dc.b	nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nA5, $04, nRst, $11, nF5, $10

ShootingRistar_Loop20:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $0A, ShootingRistar_Loop20
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, nRst, $1B
	smpsAlterNote       $00
	dc.b	nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, nE5, $02, nF5, $01, nG5, $03, nA5, $01, nBb5, $02, nC6
	dc.b	$10

ShootingRistar_Loop21:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $09, ShootingRistar_Loop21
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02

ShootingRistar_Loop22:
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsLoop            $00, $05, ShootingRistar_Loop22
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, nRst, $1B
	smpsAlterNote       $00
	dc.b	nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE5, nF5, $02, nG5, $01, nA5, $02, nBb5, $01, nC6, $03, nD6
	dc.b	$10

ShootingRistar_Loop23:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, ShootingRistar_Loop23
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $01
	smpsAlterNote       $00
	dc.b	nC6, $10

ShootingRistar_Loop24:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, ShootingRistar_Loop24
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $01
	smpsAlterNote       $00
	dc.b	nBb5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nA5, $0C, nRst, $01, nC6, $10

ShootingRistar_Loop25:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, ShootingRistar_Loop25
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, nRst, $0D
	smpsAlterNote       $00
	dc.b	nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, nE5, $03, nF5, $01, nG5, $02, nA5, $01, nBb5, $02, nC6
	dc.b	$10

ShootingRistar_Loop26:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $09, ShootingRistar_Loop26
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$03

ShootingRistar_Loop27:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02
	smpsLoop            $00, $05, ShootingRistar_Loop27
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, nRst, $1B
	smpsAlterNote       $00
	dc.b	nC5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE5, nF5, $02, nG5, $01, nA5, $03, nBb5, $01, nC6, $02, nD6
	dc.b	$10

ShootingRistar_Loop28:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, ShootingRistar_Loop28
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $01
	smpsAlterNote       $00
	dc.b	nC6, $10

ShootingRistar_Loop29:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, ShootingRistar_Loop29
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $01
	smpsAlterNote       $00
	dc.b	nBb5, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nA5, $0D, nRst, $01, nC6, $10

ShootingRistar_Loop2A:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, ShootingRistar_Loop2A
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst, $0E
	smpsAlterNote       $00
	dc.b	nC5, $10, nD5, $02, nE5, nF5, $01, nG5, $02, nA5, $01, nBb5
	dc.b	$03, nC6, $10

ShootingRistar_Loop2B:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, ShootingRistar_Loop2B
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $F1
	dc.b	nRst, $06
	smpsSetvoice        $05
	smpsAlterVol        $F7
	smpsAlterNote       $00
	dc.b	nF5, $07, nE5, nD5, $06, nC5, $07, nBb4, nA4, $06, nG4, $07

ShootingRistar_Loop2C:
	dc.b	nA4, $05, nC5, $04
	smpsLoop            $00, $03, ShootingRistar_Loop2C
	dc.b	nA4

ShootingRistar_Loop2D:
	dc.b	nC5, $05, nA4, $04
	smpsLoop            $00, $05, ShootingRistar_Loop2D

ShootingRistar_Loop2E:
	dc.b	nC5, $05
	smpsAlterVol        $02
	dc.b	nA4, $04
	smpsLoop            $00, $04, ShootingRistar_Loop2E
	dc.b	nC5

ShootingRistar_Loop2F:
	smpsAlterVol        $02
	dc.b	nA4, $05, nC5, $04
	smpsLoop            $00, $05, ShootingRistar_Loop2F
	smpsAlterVol        $02
	dc.b	nRst, $07
	smpsAlterVol        $EC
	dc.b	nC4, nD4, $06, nE4, $07, nF4, nG4, $06, nA4, $07, nBb4, nA4
	dc.b	$10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF4, $10, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD4, $0D, nC4, $10

ShootingRistar_Loop30:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, ShootingRistar_Loop30
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $07, nF4, $06, $07, nF4, nF4, $06, nRst, $07, nE4
	dc.b	nRst, nE4, $06, nRst, $07, nF4, nG4, $09, nF4, nE4, $08, nF4
	dc.b	$10

ShootingRistar_Loop31:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $09, ShootingRistar_Loop31
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$03

ShootingRistar_Loop32:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02
	smpsLoop            $00, $0A, ShootingRistar_Loop32
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02
	smpsSetvoice        $04
	smpsAlterVol        $09
	dc.b	nRst, $0E
	smpsAlterNote       $00

ShootingRistar_Loop33:
	dc.b	nEb5, $03, nRst, $11
	smpsLoop            $00, $03, ShootingRistar_Loop33
	dc.b	nEb5, $14, nD5, $0D, nRst, $0E, nEb5, $03, nRst, $11, nEb5, $03
	dc.b	nRst, $0A, nEb5, $0E, nD5, $03, nRst, nEb5, nRst, $04, nD5, $03
	dc.b	nRst, $04, nEb5, $03, nRst, $04, nF5, $03, nRst, nG5, $0E, nRst
	dc.b	$0D, nEb5, $03, nRst, $11, nEb5, $03, nRst, $11, nEb5, $03, nRst
	dc.b	$12, nEb5, $14, nD5, $0D, nRst, nEb5, $03, nRst, $12, nEb5, $03
	dc.b	nRst, $0A, nEb5, $0D, nD5, $03, nRst, $04, nEb5, $03, nRst, $04
	dc.b	nD5, $03, nRst, $04, nEb5, $03, nRst, nF5, nRst, $04, nG5, $0D
	dc.b	nRst, $0E

ShootingRistar_Loop34:
	dc.b	nEb5, $03, nRst, $11
	smpsLoop            $00, $03, ShootingRistar_Loop34
	dc.b	nEb5, $14, nD5, $0E, nRst, $0D, nEb5, $03, nRst, $11, nEb5, $03
	dc.b	nRst, $0B, nEb5, $0D, nD5, $03, nRst, $04, nEb5, $03, nRst, nD5
	dc.b	nRst, $04, nEb5, $03, nRst, $04, nF5, $03, nRst, $04, nG5, $0D
	dc.b	nA5, $04, nRst, $2B
	smpsSetvoice        $01
	smpsAlterVol        $F7
	smpsPan             panCenter, $00
	smpsJump            ShootingRistar_Jump03

; FM3 Data
ShootingRistar_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $10
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	dc.b	nF4, $05, nRst, $0E, nC4, $04, nRst, $02, nEb4, $04, nRst, $03
	dc.b	nG4, $04, nRst, $0A

ShootingRistar_Jump02:
	dc.b	nF4, $04, nRst, $09, nC4, $04, nRst, $09, nEb4, $04, nRst, $0A
	dc.b	nG4, $04, nRst, $03
	smpsAlterVol        $14
	dc.b	nBb4

ShootingRistar_Loop0F:
	dc.b	$01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack
	smpsLoop            $00, $08, ShootingRistar_Loop0F
	dc.b	$05
	smpsAlterVol        $04
	dc.b	nA4, $07, nRst, $0D, nC3, $04, nRst, $03, nEb3, $04, nRst, $02
	dc.b	nG3, $04, nRst, $0A, nF3, $04, nRst, $09, nC3, $04, nRst, $0A
	dc.b	nEb3, $04, nRst, $09, nG3, $04, nRst, $03
	smpsAlterVol        $14
	dc.b	nD5

ShootingRistar_Loop10:
	dc.b	$01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack
	smpsLoop            $00, $05, ShootingRistar_Loop10
	dc.b	$02
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, nD5
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $04
	dc.b	nC5, $07, nRst, $0D, nC4, $04, nRst, $03, nEb4, $04, nRst, $03
	dc.b	nG4, $04, nRst, $09, nF4, $04, nRst, $0A, nC4, $04, nRst, $09
	dc.b	nEb4, $04, nRst, $09, nG4, $04, nRst, $03
	smpsAlterVol        $14
	dc.b	nA4, $01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, nA4
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $02

ShootingRistar_Loop11:
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $05, ShootingRistar_Loop11
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $04
	dc.b	nAb5, $26, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nA5, $02
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$02
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nC6, $02, smpsNoAttack
	smpsAlterNote       $1A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$01
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $02, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nEb6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $2A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nE6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $2A
	dc.b	$01
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $02, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nF6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $2A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nFs6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$01
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nG6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $CA
	dc.b	nAb6, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	nCs4
	smpsAlterVol        $EC
	dc.b	nRst, $0D
	smpsAlterNote       $03
	dc.b	nF4, $04, nRst, $03, nF4, $04, nRst, $09, nF4, $04, nRst, $0A
	dc.b	nF4, $3C, nRst, $0E, nF4, $04, nRst, $02, nF4, $04, nRst, $0A

ShootingRistar_Loop12:
	dc.b	nF4, $04, nRst, $09, nF4, $3D, nRst, $0D, nF4, $04, nRst, $03
	dc.b	nF4, $04, nRst, $09
	smpsLoop            $00, $02, ShootingRistar_Loop12
	dc.b	nF4, $04, nRst, $0A, nF4, $3C, nRst, $0E, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $0A, nF4, $04, nRst, $09, nF4, $3C, nRst, $0E
	dc.b	nF4, $04, nRst, $03, nF4, $04, nRst, $09, nF4, $04, nRst, $09
	dc.b	nF4, $3D, nRst, $0D, nF4, $04, nRst, $03, nF4, $04, nRst, $09
	dc.b	nF4, $04, nRst, $0A, nF4, $3C, nRst, $0E, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $0A, nF4, $04, nRst, $09, nF4, $04, nRst, $09
	smpsPan             panLeft, $00
	dc.b	nF4, $13, nRst, $02, nA4, $06, nRst, $07, nBb4, $06, nRst, $01
	dc.b	nC5, $7F, smpsNoAttack, $57, nF4, $04, nRst, $03, nEb5, $04, nRst, $09
	dc.b	nEb5, $04, nRst, $0A, nD5, $04, nRst, $03, nD5, $04, nRst, $09
	dc.b	nC5, $04, nRst, $09, nC5, $04, nRst, $0A, nC5, $04, nRst, $03
	dc.b	nBb4, $04, nRst, $09, nBb4, $04, nRst, $09, nA4, $07, nRst, $0E
	dc.b	nF4, $06, nRst, $0E, nEb4, $0D, nRst, $07, nF4, $04, nRst, $02
	dc.b	nF4, $07, nRst, nA4, nRst, $06, nBb4, $05, nRst, $02, nC5, $7F
	dc.b	smpsNoAttack, $58, nF4, $04, nRst, $02, nEb5, $04, nRst, $0A, nEb5, $04
	dc.b	nRst, $09, nD5, $04, nRst, $03, nD5, $04, nRst, $09, nC5, $04
	dc.b	nRst, $0A, nC5, $04, nRst, $09, nC5, $04, nRst, $03, nBb4, $04

ShootingRistar_Loop13:
	dc.b	nRst, $09, nA4, $04, nRst, $03, nBb4, $04, nRst, $03, nC5, $04
	smpsLoop            $00, $02, ShootingRistar_Loop13
	dc.b	nRst, $09, nA4, $04, nRst, $03, nBb4, $04, nRst, $02, nC5, $04
	dc.b	nRst, $05, nD5, $04, nRst, $05, nE5, $04, nRst, $05, nE5, $04
	dc.b	nRst, $05, nF5, $04, nRst, $05, nG5, $04, nRst, $12

ShootingRistar_Loop14:
	dc.b	nC5, $04, nRst, $03
	smpsLoop            $00, $03, ShootingRistar_Loop14
	dc.b	nC5, $04, nRst, $09, nD5, $04, nRst, $09, nD5, $04, nRst, $0A
	dc.b	nD5, $02, nRst, $01, nE5, $02, nRst, $01, nF5, $04, nRst, $07
	dc.b	nE5, $04, nRst, nD5, nRst, nC5, nRst, $0A, nA4, $04, nRst, $02
	dc.b	nA4, $04, nRst, $03, nA4, $04, nRst, $03, nA4, $04, nRst, $09
	dc.b	nBb4, $04, nRst, $0A, nBb4, $04, nRst, $09, nBb4, $02, nRst, $01
	dc.b	nC5, $03, nRst, $01, nD5, $04, nRst, $06, nC5, $04, nRst, $05
	dc.b	nBb4, $04, nRst, nA4, nRst, $09, nC5, $04, nRst, $03, nC5, $04
	dc.b	nRst, $02, nC5, $04, nRst, $03, nC5, $04, nRst, $0A, nD5, $04
	dc.b	nRst, $09, nD5, $04, nRst, $09, nD5, $03, nRst, $01, nE5, $02
	dc.b	nRst, $01, nF5, $04, nRst, $06, nE5, $04, nRst, $05, nD5, $04
	dc.b	nRst, nC5, nRst, $09, nF5, $04, nRst, $03, nF5, $04, nRst, $03
	dc.b	nF5, $04, nRst, $02, nF5, $04, nRst, $0A, nE5, $04, nRst, $09
	dc.b	nE5, $04, nRst, $0A, nE5, $02, nRst, $01, nF5, $02, nRst, $01
	dc.b	nG5, $04, nRst, $07, nF5, $04, nRst, nE5, nRst, nF5, nRst, $0A
	dc.b	nC5, $04, nRst, $02, nC5, $04, nRst, $03, nC5, $04, nRst, $03
	dc.b	nC5, $04, nRst, $09, nD5, $04, nRst, $0A, nD5, $04, nRst, $09
	dc.b	nD5, $02, nRst, $01, nE5, $03, nRst, $01, nF5, $04, nRst, $06
	dc.b	nE5, $04, nRst, $05, nD5, $04, nRst, nC5, nRst, $09, nA4, $04
	dc.b	nRst, $03, nA4, $04, nRst, $02, nA4, $04, nRst, $03, nA4, $04
	dc.b	nRst, $0A, nBb4, $04, nRst, $09, nBb4, $04, nRst, $09, nBb4, $03
	dc.b	nRst, $01, nC5, $02, nRst, $01, nD5, $04, nRst, $06, nC5, $04
	dc.b	nRst, $05, nBb4, $04, nRst, nA4, nRst, $09, nC5, $04, nRst, $03
	dc.b	nC5, $04, nRst, $03, nC5, $04, nRst, $02, nC5, $04, nRst, $0A
	dc.b	nD5, $04, nRst, $09, nD5, $04, nRst, $0A, nD5, $02, nRst, $01
	dc.b	nE5, $02, nRst, $01, nF5, $04, nRst, $06, nE5, $04, nRst, $05
	dc.b	nD5, $04, nRst, nC5, nRst, $0A, nF5, $04, nRst, $02, nF5, $04
	dc.b	nRst, $03, nF5, $04, nRst, $03, nF5, $04, nRst, $09, nE5, $04
	dc.b	nRst, $0A, nE5, $04, nRst, $09, nE5, $02, nRst, $01, nF5, $03
	dc.b	nRst, $01, nG5, $04, nRst, $06, nF5, $04, nRst, $05, nE5, $04
	dc.b	nRst, nF5, nRst, $09, nC5, $04, nRst, $03, nC5, $04, nRst, $02
	dc.b	nC5, $04, nRst, $03, nC5, $04, nRst, $09, nD5, $04, nRst, $0A
	dc.b	nD5, $04, nRst, $09, nD5, $03, nRst, $01, nE5, $02, nRst, $01
	dc.b	nF5, $04, nRst, $06, nE5, $04, nRst, $05, nD5, $04, nRst, nC5
	dc.b	nRst, $09, nA4, $04, nRst, $03, nA4, $04, nRst, $03, nA4, $04
	dc.b	nRst, $02, nA4, $04, nRst, $0A, nBb4, $04, nRst, $09, nBb4, $04
	dc.b	nRst, $0A, nBb4, $02, nRst, $01, nC5, $02, nRst, $01, nD5, $04
	dc.b	nRst, $06, nC5, $04, nRst, $05, nBb4, $04, nRst, nA4, nRst, $0A
	dc.b	nC5, $04, nRst, $02, nC5, $04, nRst, $03, nC5, $04, nRst, $03
	dc.b	nC5, $04, nRst, $09, nD5, $04, nRst, $0A, nD5, $04, nRst, $09
	dc.b	nD5, $02, nRst, $01, nE5, $03, nRst, $01, nF5, $04, nRst, $06
	dc.b	nE5, $04, nRst, $05, nD5, $04, nRst, nC5, nRst, $09, nF5, $04
	dc.b	nRst, $03, nF5, $04, nRst, $02, nF5, $04, nRst, $03, nF5, $04
	dc.b	nRst, $09, nE5, $04, nRst, $0A, nE5, $04, nRst, $09, nE5, $03
	dc.b	nRst, $01, nF5, $02, nRst, $01, nG5, $04, nRst, $06, nF5, $04
	dc.b	nRst, $05, nE5, $04, nRst, nF5, nRst, $09, nC5, $04, nRst, $03
	dc.b	nC5, $04, nRst, $03, nC5, $04, nRst, $02, nC5, $04, nRst, $0A
	dc.b	nD5, $04, nRst, $09, nD5, $04, nRst, $0A, nD5, $02, nRst, $01
	dc.b	nE5, $02, nRst, $01, nF5, $04, nRst, $06, nE5, $04, nRst, $05
	dc.b	nD5, $04, nRst, nC5, nRst, $0A, nF5, $04, nRst, $02, nF5, $04
	dc.b	nRst, $03, nF5, $04, nRst, $03, nF5, $04, nRst, $09, nE5, $04
	dc.b	nRst, $0A, nE5, $04, nRst, $09, nE5, $02, nRst, $01, nF5, $03
	dc.b	nRst, $01, nG5, $04, nRst, $06, nF5, $04, nRst, $05, nE5, $04
	dc.b	nRst, $03, nF5, $04, nRst, $0A
	smpsAlterVol        $FD
	dc.b	nF5, $04, nRst, $03, nF5, $04, nRst, $02, nF5, $04, nRst, $03
	dc.b	nF5, $04, nRst, $09, nE5, $04, nRst, $0A, nE5, $04, nRst, $09
	dc.b	nE5, $02, nRst, nF5, nRst, $01, nG5, $04, nRst, $06, nF5, $04
	dc.b	nRst, $05, nE5, $04, nRst, nF5, $57
	smpsSetvoice        $06
	smpsPan             panCenter, $00

ShootingRistar_Loop15:
	dc.b	nA4, $04, nRst, $03, nBb4, $04, nRst, $02, nB4, $04, nRst, $03
	dc.b	nC5, $04, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop15
	dc.b	nD5, $04, nRst, $02, nF5, $04, nRst, $03, nAb5, $0B, nRst, $02
	smpsSetvoice        $07
	dc.b	nBb5, nRst, nAb5, $01, nRst, $02
	smpsSetvoice        $06
	dc.b	nG5, $04, nRst, $03, nF5, $04, nRst, $03, nAb5, $04, nRst, $02
	dc.b	nC5, $04, nRst, $0A, nA4, $04, nRst, $02, nB4, $04, nRst, $03
	dc.b	nC5, $04, nRst, $03, nD5, $04, nRst, $03, nF5, $04, nRst, $02
	dc.b	nAb5, $0B, nRst, $03
	smpsSetvoice        $07
	dc.b	nBb5, $01, nRst, $02, nAb5, $01, nRst, $02
	smpsSetvoice        $06
	dc.b	nG5, $07, nRst, nG5, $04, nRst, $02, nF5, $0D

ShootingRistar_Loop16:
	dc.b	smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsLoop            $00, $02, ShootingRistar_Loop16
	dc.b	smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$02, nRst, $07
	smpsAlterNote       $03
	dc.b	nB5, $04, nRst, $03, nC6, $0D

ShootingRistar_Loop17:
	dc.b	smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsLoop            $00, $07, ShootingRistar_Loop17
	dc.b	smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, nRst
	smpsAlterNote       $03
	dc.b	nBb5, $04, nRst, $03, nA5, $04, nRst, $03, nBb5, $04, nRst, $09
	dc.b	nA5, $04, nRst, $03, nAb5, $04, nRst, $02, nBb5, $04, nRst, $0A
	dc.b	nG5, $04, nRst, $02, nFs5, $04, nRst, $03, nF5, $04, nRst, $03
	dc.b	nEb5, $0B, nRst, $02, nCs5, $05, nRst, $02, nC5, $0D

ShootingRistar_Loop18:
	dc.b	smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsLoop            $00, $03, ShootingRistar_Loop18
	dc.b	smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, nRst, $06, nA4, $04, nRst, $03, nC5, $04, nRst, $03, nD5
	dc.b	$04, nRst, $02

ShootingRistar_Loop19:
	dc.b	nEb5, $04, nRst, $0A, nD5, $04, nRst, $02, nC5, $04, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop19
	dc.b	nEb5, $04, nRst, $03, nF5, $04, nRst, $1D, nC5, $04, nRst, $03
	dc.b	nD5, $04, nRst, $03, nEb5, $04, nRst, $09, nD5, $04, nRst, $03
	dc.b	nC5, $04, nRst, $03, nEb5, $04, nRst, $02, nF5, $04, nRst, $03
	dc.b	nD5, $04, nRst, $03, nC5, $0D, nRst, $2F
	smpsSetvoice        $01
	smpsAlterVol        $03
	dc.b	nF4, $07, nRst, $0D, nC4, $04, nRst, $03, nEb4, $04, nRst, $03
	dc.b	nG4, $04, nRst, $09
	smpsPan             panCenter, $00
	smpsJump            ShootingRistar_Jump02

; FM4 Data
ShootingRistar_FM4:
	smpsSetvoice        $01
	smpsAlterVol        $12
	smpsPan             panCenter, $00
	dc.b	nRst, $03
	smpsAlterVol        $0A
	smpsAlterNote       $FC
	dc.b	nF4, $07, nRst, $0D, nC4, $04, nRst, $03, nEb4, $04, nRst, $03
	dc.b	nG4, $04, nRst, $05

ShootingRistar_Jump01:
	dc.b	nRst, $04, nF4, nRst, $09, nC4, $04, nRst, $0A, nEb4, $04, nRst
	dc.b	$09, nG4, $03
	smpsAlterVol        $0A

ShootingRistar_Loop08:
	dc.b	$01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack
	smpsLoop            $00, $08, ShootingRistar_Loop08
	dc.b	$05
	smpsAlterVol        $04
	dc.b	nF4, $07, nRst, $12
	smpsAlterVol        $0A
	dc.b	nC3, $04, nRst, $02, nEb3, $04, nRst, $03, nG3, $04, nRst, $09
	dc.b	nF3, $04, nRst, $0A, nC3, $04, nRst, $09, nEb3, $04, nRst, $0A
	dc.b	nG3, $02
	smpsAlterVol        $0A
	dc.b	nBb4

ShootingRistar_Loop09:
	dc.b	$01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack
	smpsLoop            $00, $05, ShootingRistar_Loop09
	dc.b	$02
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, nBb4
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $04
	dc.b	nA4, $07, nRst, $12
	smpsAlterVol        $0A
	dc.b	nC4, $04, nRst, $03, nEb4, $04, nRst, $02, nG4, $04, nRst, $0A
	dc.b	nF4, $04, nRst, $09, nC4, $04, nRst, $0A, nEb4, $04, nRst, $09
	dc.b	nG4, $02
	smpsAlterVol        $0A
	dc.b	nF5, $01
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, nF5
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $02

ShootingRistar_Loop0A:
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $05, ShootingRistar_Loop0A
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $01, nBb4, $25, smpsNoAttack
	smpsAlterNote       $1C
	dc.b	$02
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nB4, $02, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nEb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nE5, $01
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $D6
	dc.b	nFs5, $01
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $02, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $D6
	dc.b	nG5, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $36
	dc.b	$01
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nCs3, smpsNoAttack
	smpsAlterNote       $38
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterVol        $EC
	dc.b	nRst, $0D
	smpsAlterNote       $FC
	dc.b	nC4, $04, nRst, $03, nC4, $04, nRst, $09, nC4, $04, nRst, $0A
	dc.b	nC4, $3C, nRst, $0E, nC4, $04, nRst, $02, nC4, $04, nRst, $0A
	dc.b	nC4, $04, nRst, $09, nC4, $3D, nRst, $0D, nBb3, $04, nRst, $03
	dc.b	nBb3, $04, nRst, $09, nBb3, $04, nRst, $09, nBb3, $3D, nRst, $0D
	dc.b	nC4, $04, nRst, $03, nC4, $04, nRst, $09, nC4, $04, nRst, $0A
	dc.b	nC4, $3C, nRst, $0E, nC4, $04, nRst, $02, nC4, $04, nRst, $0A
	dc.b	nC4, $04, nRst, $09, nC4, $3C, nRst, $0E, nC4, $04, nRst, $03
	dc.b	nC4, $04, nRst, $09, nC4, $04, nRst, $09, nC4, $3D, nRst, $0D
	dc.b	nBb3, $04, nRst, $03, nBb3, $04, nRst, $09, nBb3, $04, nRst, $0A
	dc.b	nBb3, $3C, nRst, $0E, nC4, $04, nRst, $02, nC4, $04, nRst, $0A
	dc.b	nC4, $04, nRst, $09, nC4, $04, nRst, $09
	smpsPan             panLeft, $00
	dc.b	nC4, $13, nRst, $02, nF4, $06, nRst, $07, nG4, $06, nRst, $01
	dc.b	nA4, $7F, smpsNoAttack, $5E, nC5, $04, nRst, $09, nC5, $04, nRst, $0A
	dc.b	nBb4, $04, nRst, $03, nBb4, $04, nRst, $09, nA4, $04, nRst, $09
	dc.b	nA4, $04, nRst, $0A, nA4, $04, nRst, $03, nG4, $04, nRst, $09
	dc.b	nG4, $04, nRst, $09, nF4, $07, nRst, $0E, nC4, $06, nRst, $0E
	dc.b	nC4, $0D, nRst, $07, nC4, $04, nRst, $02, nC4, $04, nRst, $0A
	dc.b	nF4, $04, nRst, $09, nG4, $04, nRst, $03, nA4, $7F, smpsNoAttack, $5E
	dc.b	nC5, $04, nRst, $0A, nC5, $04, nRst, $09, nBb4, $04, nRst, $03
	dc.b	nBb4, $04, nRst, $09, nA4, $04, nRst, $0A, nA4, $04, nRst, $09
	dc.b	nA4, $04, nRst, $03, nG4, $04

ShootingRistar_Loop0B:
	dc.b	nRst, $09, nF4, $04, nRst, $03, nG4, $04, nRst, $03, nA4, $04
	smpsLoop            $00, $02, ShootingRistar_Loop0B
	dc.b	nRst, $09, nF4, $04, nRst, $03, nG4, $04, nRst, $02, nA4, $04
	dc.b	nRst, $05, nBb4, $04, nRst, $05, nC5, $04, nRst, $05, nC5, $04
	dc.b	nRst, $05, nD5, $04, nRst, $05, nE5, $04, nRst, $05
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, $0D

ShootingRistar_Loop0C:
	dc.b	nA4, $04, nRst, $03
	smpsLoop            $00, $03, ShootingRistar_Loop0C
	dc.b	nA4, $04, nRst, $09, nBb4, $04, nRst, $09, nBb4, $04, nRst, $0A
	dc.b	nBb4, $02, nRst, $01, nC5, $02, nRst, $01, nD5, $04, nRst, $07
	dc.b	nC5, $04, nRst, nBb4, nRst, nA4, nRst, $0A, nF4, $04, nRst, $02
	dc.b	nF4, $04, nRst, $03, nF4, $04, nRst, $03, nF4, $04, nRst, $09
	dc.b	nG4, $04, nRst, $0A, nG4, $04, nRst, $09, nG4, $02, nRst, $01
	dc.b	nA4, $03, nRst, $01, nBb4, $04, nRst, $06, nA4, $04, nRst, $05
	dc.b	nG4, $04, nRst, nF4, nRst, $09, nA4, $04, nRst, $03, nA4, $04
	dc.b	nRst, $02, nA4, $04, nRst, $03, nA4, $04, nRst, $0A, nBb4, $04
	dc.b	nRst, $09, nBb4, $04, nRst, $09, nBb4, $03, nRst, $01, nC5, $02
	dc.b	nRst, $01, nD5, $04, nRst, $06, nC5, $04, nRst, $05, nBb4, $04
	dc.b	nRst, nA4, nRst, $09, nC5, $04, nRst, $03, nC5, $04, nRst, $03
	dc.b	nC5, $04, nRst, $02, nC5, $04, nRst, $0A, nC5, $04, nRst, $09
	dc.b	nC5, $04, nRst, $0A, nC5, $02, nRst, $01, nD5, $02, nRst, $01
	dc.b	nE5, $04, nRst, $07, nC5, $04, nRst, nC5, nRst, nC5, nRst, $0A
	dc.b	nA4, $04, nRst, $02, nA4, $04, nRst, $03, nA4, $04, nRst, $03
	dc.b	nA4, $04, nRst, $09, nBb4, $04, nRst, $0A, nBb4, $04, nRst, $09
	dc.b	nBb4, $02, nRst, $01, nC5, $03, nRst, $01, nD5, $04, nRst, $06
	dc.b	nC5, $04, nRst, $05, nBb4, $04, nRst, nA4, nRst, $09, nF4, $04
	dc.b	nRst, $03, nF4, $04, nRst, $02, nF4, $04, nRst, $03, nF4, $04
	dc.b	nRst, $0A, nG4, $04, nRst, $09, nG4, $04, nRst, $09, nG4, $03
	dc.b	nRst, $01, nA4, $02, nRst, $01, nBb4, $04, nRst, $06, nA4, $04
	dc.b	nRst, $05, nG4, $04, nRst, nF4, nRst, $09, nA4, $04, nRst, $03
	dc.b	nA4, $04, nRst, $03, nA4, $04, nRst, $02, nA4, $04, nRst, $0A
	dc.b	nBb4, $04, nRst, $09, nBb4, $04, nRst, $0A, nBb4, $02, nRst, $01
	dc.b	nC5, $02, nRst, $01, nD5, $04, nRst, $06, nC5, $04, nRst, $05
	dc.b	nBb4, $04, nRst, nA4, nRst, $0A, nC5, $04, nRst, $02, nC5, $04
	dc.b	nRst, $03, nC5, $04, nRst, $03, nC5, $04, nRst, $09, nC5, $04
	dc.b	nRst, $0A, nC5, $04, nRst, $09, nC5, $02, nRst, $01, nD5, $03
	dc.b	nRst, $01, nE5, $04, nRst, $06, nC5, $04, nRst, $05, nC5, $04
	dc.b	nRst, nC5, nRst, $09, nA4, $04, nRst, $03, nA4, $04, nRst, $02
	dc.b	nA4, $04, nRst, $03, nA4, $04, nRst, $09, nBb4, $04, nRst, $0A
	dc.b	nBb4, $04, nRst, $09, nBb4, $03, nRst, $01, nC5, $02, nRst, $01
	dc.b	nD5, $04, nRst, $06, nC5, $04, nRst, $05, nBb4, $04, nRst, nA4
	dc.b	nRst, $09, nF4, $04, nRst, $03, nF4, $04, nRst, $03, nF4, $04
	dc.b	nRst, $02, nF4, $04, nRst, $0A, nG4, $04, nRst, $09, nG4, $04
	dc.b	nRst, $0A, nG4, $02, nRst, $01, nA4, $02, nRst, $01, nBb4, $04
	dc.b	nRst, $06, nA4, $04, nRst, $05, nG4, $04, nRst, nF4, nRst, $0A
	dc.b	nA4, $04, nRst, $02, nA4, $04, nRst, $03, nA4, $04, nRst, $03
	dc.b	nA4, $04, nRst, $09, nBb4, $04, nRst, $0A, nBb4, $04, nRst, $09
	dc.b	nBb4, $02, nRst, $01, nC5, $03, nRst, $01, nD5, $04, nRst, $06
	dc.b	nC5, $04, nRst, $05, nBb4, $04, nRst, nA4, nRst, $09, nC5, $04
	dc.b	nRst, $03, nC5, $04, nRst, $02, nC5, $04, nRst, $03, nC5, $04
	dc.b	nRst, $09, nC5, $04, nRst, $0A, nC5, $04, nRst, $09, nC5, $03
	dc.b	nRst, $01, nD5, $02, nRst, $01, nE5, $04, nRst, $06, nC5, $04
	dc.b	nRst, $05, nC5, $04, nRst, nC5, nRst, $09, nA4, $04, nRst, $03
	dc.b	nA4, $04, nRst, $03, nA4, $04, nRst, $02, nA4, $04, nRst, $0A
	dc.b	nBb4, $04, nRst, $09, nBb4, $04, nRst, $0A, nBb4, $02, nRst, $01
	dc.b	nC5, $02, nRst, $01, nD5, $04, nRst, $06, nC5, $04, nRst, $05
	dc.b	nBb4, $04, nRst, nA4, nRst, $0A, nC5, $04, nRst, $02, nC5, $04
	dc.b	nRst, $03, nC5, $04, nRst, $03, nC5, $04, nRst, $09, nC5, $04
	dc.b	nRst, $0A, nC5, $04, nRst, $09, nC5, $02, nRst, $01, nD5, $03
	dc.b	nRst, $01, nE5, $04, nRst, $06, nC5, $04, nRst, $05, nC5, $04
	dc.b	nRst, $03, nC5, $04, nRst, $0A
	smpsAlterVol        $FD
	dc.b	nC5, $04, nRst, $03, nC5, $04, nRst, $02, nC5, $04, nRst, $03
	dc.b	nC5, $04, nRst, $09, nC5, $04, nRst, $0A, nC5, $04, nRst, $09
	dc.b	nC5, $02, nRst, nD5, nRst, $01, nE5, $04, nRst, $06, nC5, $04
	dc.b	nRst, $05, nC5, $04, nRst, nBb4, $6B
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	smpsAlterVol        $09
	dc.b	nRst, $0D
	smpsAlterNote       $00

ShootingRistar_Loop0D:
	dc.b	nC5, $03, nRst, $11
	smpsLoop            $00, $03, ShootingRistar_Loop0D
	dc.b	nC5, $14, nBb4, $0D, nRst, $0E, nC5, $03, nRst, $11, nC5, $03
	dc.b	nRst, $0A, nC5, $0E, nBb4, $03, nRst, nC5, nRst, $04, nBb4, $03
	dc.b	nRst, $04, nC5, $03, nRst, $04, nD5, $03, nRst, nEb5, $0E, nRst
	dc.b	$0D, nC5, $03, nRst, $11, nC5, $03, nRst, $11, nC5, $03, nRst
	dc.b	$12, nC5, $14, nBb4, $0D, nRst, nC5, $03, nRst, $12, nC5, $03
	dc.b	nRst, $0A, nC5, $0D, nBb4, $03, nRst, $04, nC5, $03, nRst, $04
	dc.b	nBb4, $03, nRst, $04, nC5, $03, nRst, nD5, nRst, $04, nEb5, $0D
	dc.b	nRst, $0E

ShootingRistar_Loop0E:
	dc.b	nC5, $03, nRst, $11
	smpsLoop            $00, $03, ShootingRistar_Loop0E
	dc.b	nC5, $14, nBb4, $0E, nRst, $0D, nC5, $03, nRst, $11, nC5, $03
	dc.b	nRst, $0B, nC5, $0D, nBb4, $03, nRst, $04, nC5, $03, nRst, nBb4
	dc.b	nRst, $04, nC5, $03, nRst, $04, nD5, $03, nRst, $04, nEb5, $0D
	dc.b	nF5, $04
	smpsSetvoice        $01
	smpsAlterVol        $01
	smpsAlterNote       $FC
	dc.b	nF4, $07, nRst, $0E, nC4, $04, nRst, $02, nEb4, $04, nRst, $03
	dc.b	nG4, $04, nRst, $05
	smpsPan             panCenter, $00
	smpsJump            ShootingRistar_Jump01

; FM5 Data
ShootingRistar_FM5:
	smpsSetvoice        $01
	smpsAlterVol        $12
	smpsPan             panCenter, $00
	dc.b	nRst, $2E

ShootingRistar_Jump00:
	dc.b	nRst, $7F, $7F, $07, nC4, $0C, nRst, $03, nEb5, $25, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	nE5, $02
	smpsAlterVol        $06
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	nF5, $02, smpsNoAttack
	smpsAlterNote       $E7
	dc.b	nG5, smpsNoAttack, nAb5, smpsNoAttack
	smpsAlterNote       $E4
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nBb5
	smpsAlterVol        $06
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB5, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $EA
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $24
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	nEb6, smpsNoAttack
	smpsAlterNote       $D2
	dc.b	nE6, $01
	smpsAlterVol        $06
	dc.b	smpsNoAttack, $02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $E6
	dc.b	nF6, smpsNoAttack
	smpsAlterNote       $20
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nFs6, smpsNoAttack
	smpsAlterNote       $2A
	dc.b	$02, nRst, $01
	smpsAlterVol        $EE
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	smpsAlterVol        $0D
	dc.b	smpsNoAttack, $02
	smpsAlterNote       $00
	dc.b	nC5, $11, nD5, $01, nE5, $03, nF5, $01, nG5, $02, nRst, $01
	dc.b	nBb5, $02, nC6, $49, nRst, $01, nA5, $05, nRst, $08, nBb5, $05
	dc.b	nRst, $02, nC6, $05, nRst, $02, nBb5, $05, nRst, $02, nA5, $0D
	dc.b	nRst, $07, nF5, $0D, nRst, $07, nC5, $1B, nRst, $06, nC5, $03
	dc.b	nRst, $01
	smpsAlterVol        $FC
	dc.b	nC5, $05, nRst, $08, nD5, $05, nRst, $16, nEb5, $03, nRst, $04
	dc.b	nEb5, $05, nRst, $08, nEb5, $05, nRst, $08, nEb5, $05, nRst, $09
	dc.b	nEb5, $05, nRst, $08, nEb5, $04, nRst, $03, nD5, $05, nRst, $08
	dc.b	nD5, $05, nRst, $09, nC5, $0D, nRst, $07, nA4, $0D, nRst, $07
	dc.b	nF4, $22, nRst, $06
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $04, nC5, $10, nD5, $02, nE5, nF5, $01, nG5, $02, nA5
	dc.b	$01, nBb5, $03, nC6, $48, nRst, $01, nA5, $05, nRst, $09, nBb5
	dc.b	$05, nRst, $01, nC6, $05, nRst, $02, nBb5, $05, nRst, $02, nA5
	dc.b	$0D, nRst, $07, nF5, $0D, nRst, $07, nC5, $1B, nRst, $07, nC5
	dc.b	$02, nRst, $01
	smpsAlterVol        $FC
	dc.b	nC5, $05, nRst, $08, nD5, $05, nRst, $16, nEb5, $04, nRst, $03

ShootingRistar_Loop00:
	dc.b	nEb5, $05, nRst, $08, nEb5, $05, nRst, $09
	smpsLoop            $00, $02, ShootingRistar_Loop00
	dc.b	nEb5, $03, nRst, nD5, $05, nRst, $09, nD5, $05, nRst, $08, nC5
	dc.b	$0E, nRst, $06, nA4, $0E, nRst, $06, nF4, $22, nRst, $11
	smpsAlterVol        $04
	dc.b	nC5, $04, nRst, $02, nD5, $04, nRst, $03, nC5, $04, nRst, $03
	smpsPan             panRight, $00
	dc.b	nF5, $04, nRst, $17, nEb5, $04, nRst, $16, nD5, $13, nRst, $02
	dc.b	nC5, $04, nRst, $09, nC5, $04, nRst, $03, nD5, $04, nRst, $09
	dc.b	nD5, $03, nEb5, $0C, nRst, $05, nD5, $04, nEb5, $0C, nRst, $04
	dc.b	nD5, nEb5, $16, nRst, $01, nD5, $04, nRst, $0A, nC5, $04, nRst
	dc.b	$09, nBb4, $04, nRst, $09, nA4, $13, nRst, $02, nBb4, $03, nB4
	dc.b	nC5, $04, nRst, $0A, nF4, $7F, smpsNoAttack, $14, nRst, $07, nC5, $04
	dc.b	nRst, $03, nD5, $04, nRst, $02, nC5, $04
	smpsAlterVol        $FC
	dc.b	nF5, nRst, $17, nEb5, $04, nRst, $16, nD5, $13, nRst, $02, nC5
	dc.b	$04, nRst, $09, nC5, $04, nRst, $03, nD5, $04, nRst, $09, nD5
	dc.b	$03, nEb5, $0C, nRst, $05, nD5, $04, nEb5, $0C, nRst, $04, nD5
	dc.b	nEb5, $16, nRst, $01, nD5, $04, nRst, $0A, nC5, $04, nRst, $09
	dc.b	nBb4, $04, nRst, $09, nA4, $12, nRst, $02, nF5, $04, nRst, $11
	dc.b	nC5, $78, nRst, $1F
	smpsAlterVol        $04
	dc.b	nC5, $10, nD5, $01, nE5, $03, nF5, $01, nG5, $02, nA5, $01
	dc.b	nBb5, $02, nC6, $7F, smpsNoAttack, $22, nRst, $1B, nC5, $11, nE5, $01
	dc.b	nF5, $02, nG5, $01, nA5, $03, nBb5, $01, nC6, $02, nD6, $27
	dc.b	nRst, $01, nC6, $27, nRst, $01, nBb5, $1A, nRst, $01, nA5, $0D
	dc.b	nRst, $01, nC6, $35, nRst, $0E, nC5, $11, nD5, $01, nE5, $02
	dc.b	nF5, $01, nG5, $02, nA5, $01, nBb5, $03, nC6, $7F, smpsNoAttack, $22
	dc.b	nRst, $1A, nC5, $11, nE5, $01, nF5, $03, nG5, $01, nA5, $02
	dc.b	nBb5, $01, nC6, $02, nD6, $27, nRst, $02, nC6, $27, nRst, $01
	dc.b	nBb5, $19, nRst, $02, nA5, $0C, nRst, $01, nC6, $36, nRst, $12
	dc.b	nC5, $10, nD5, $01, nE5, $03, nF5, $01, nG5, $02, nA5, $01
	dc.b	nBb5, $02, nC6, $5E

ShootingRistar_Loop01:
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $0E
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $0D
	smpsLoop            $00, $02, ShootingRistar_Loop01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, nC6
	smpsAlterVol        $F1
	dc.b	nRst, $0C
	smpsSetvoice        $05
	smpsAlterVol        $F9
	dc.b	nF5, $06, nE5, $07, nD5, nC5, $06, nBb4, $07, nA4, nG4, $06

ShootingRistar_Loop02:
	dc.b	nA4, $05, nC5, $04
	smpsLoop            $00, $08, ShootingRistar_Loop02
	dc.b	nA4

ShootingRistar_Loop03:
	dc.b	nC5, $05
	smpsAlterVol        $02
	dc.b	nA4, $04
	smpsLoop            $00, $09, ShootingRistar_Loop03
	dc.b	nC5
	smpsAlterVol        $02
	dc.b	nRst, $07
	smpsAlterVol        $EC
	dc.b	nC4, nD4, nE4, $06, nF4, $07, nG4, nA4, $06, nBb4, $07, nA4
	dc.b	$14, nF4, nD4, $0E, nC4, $3C, nRst, $07, nF4, nF4, $06, $07
	dc.b	nF4, nRst, $06, nE4, $07, nRst, nE4, nRst, $06, nF4, $07, nG4
	dc.b	$09, nF4, nE4, nF4, $7F, smpsNoAttack, $30
	smpsAlterVol        $FA
	smpsPan             panCenter, $00
	dc.b	nRst, $0A
	smpsSetvoice        $06
	smpsAlterVol        $10
	dc.b	smpsNoAttack, $07

ShootingRistar_Loop04:
	dc.b	nA4, $04, nRst, $03, nBb4, $04, nRst, $02, nB4, $04, nRst, $03
	dc.b	nC5, $04, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop04
	dc.b	nD5, $04, nRst, $02, nF5, $04, nRst, $03, nAb5, $0B, nRst, $03
	smpsSetvoice        $07
	dc.b	nBb5, $01, nRst, $02, nAb5, $01, nRst, $02
	smpsSetvoice        $06
	dc.b	nG5, $04, nRst, $03, nF5, $04, nRst, $03, nAb5, $04, nRst, $02
	dc.b	nC5, $04, nRst, $0A, nA4, $04, nRst, $02, nB4, $04, nRst, $03
	dc.b	nC5, $04, nRst, $03, nD5, $04, nRst, $03, nF5, $04, nRst, $02
	dc.b	nAb5, $0B, nRst, $03
	smpsSetvoice        $07
	dc.b	nBb5, $01, nRst, $02, nAb5, $01, nRst, $02
	smpsSetvoice        $06
	dc.b	nG5, $07, nRst, nG5, $04, nRst, $03, nF5, $0D

ShootingRistar_Loop05:
	dc.b	smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, ShootingRistar_Loop05
	dc.b	smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, nRst, $07
	smpsAlterNote       $00
	dc.b	nB5, $05, nRst, $02, nC6, $0D

ShootingRistar_Loop06:
	dc.b	smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $07, ShootingRistar_Loop06
	dc.b	smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nBb5, $04, nRst, $03, nA5, $04, nRst, $03, nBb5, $04, nRst, $09
	dc.b	nA5, $04, nRst, $03, nAb5, $04, nRst, $02, nBb5, $04, nRst, $0A
	dc.b	nG5, $04, nRst, $03, nFs5, $04, nRst, $02, nF5, $04, nRst, $03
	dc.b	nEb5, $0B, nRst, $02, nCs5, $05, nRst, $02, nC5, $0D

ShootingRistar_Loop07:
	dc.b	smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, ShootingRistar_Loop07
	dc.b	smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $06, nA4, $04, nRst, $03, nC5, $04, nRst, $03, nD5
	dc.b	$04, nRst, $02, nEb5, $04, nRst, $0A, nD5, $04, nRst, $03, nC5
	dc.b	$04, nRst, $02, nEb5, $04, nRst, $0A, nD5, $04, nRst, $02, nC5
	dc.b	$04, nRst, $03, nEb5, $04, nRst, $03, nF5, $04, nRst, $1D, nC5
	dc.b	$04, nRst, $03, nD5, $04, nRst, $03, nEb5, $04, nRst, $09, nD5
	dc.b	$04, nRst, $03, nC5, $04, nRst, $03, nEb5, $04, nRst, $02, nF5
	dc.b	$04, nRst, $03, nD5, $04, nRst, $03, nC5, $0D, nRst, $26
	smpsSetvoice        $01
	smpsAlterVol        $F0
	dc.b	smpsNoAttack, $2E
	smpsPan             panCenter, $00
	smpsJump            ShootingRistar_Jump00

; PSG1 Data
ShootingRistar_PSG1:
	dc.b	nRst, $02
	smpsPSGAlterVol     $0A
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1, nRst, $0D, nC1, $01
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nG1, $01
	smpsPSGAlterVol     $FD
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09

ShootingRistar_Jump07:
	dc.b	nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nC1, $01
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nG1, $01
	smpsPSGAlterVol     $FD
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $06
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb1
	smpsPSGAlterVol     $FE
	dc.b	nBb1
	smpsPSGAlterVol     $FF
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	nBb1
	smpsPSGAlterVol     $FF
	dc.b	nBb1
	smpsPSGAlterVol     $FE
	dc.b	nBb1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $04
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0D, nC0, $01
	smpsPSGAlterVol     $FD
	dc.b	nC0
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nEb0, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb0
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nG0, $01
	smpsPSGAlterVol     $FD
	dc.b	nG0
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nF0, $01
	smpsPSGAlterVol     $FD
	dc.b	nF0
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nC0, $01
	smpsPSGAlterVol     $FD
	dc.b	nC0
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nEb0, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb0
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nG0, $01
	smpsPSGAlterVol     $FD
	dc.b	nG0
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $06
	dc.b	nD2, $02
	smpsPSGAlterVol     $FE

ShootingRistar_Loop81:
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, ShootingRistar_Loop81
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	nD2
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $04
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $0E
	smpsPSGAlterVol     $01
	dc.b	nC1, $01
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nG1, $01
	smpsPSGAlterVol     $FD
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nC1, $01
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nG1, $01
	smpsPSGAlterVol     $FD
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $06
	dc.b	nA1, $01
	smpsPSGAlterVol     $FE
	dc.b	nA1
	smpsPSGAlterVol     $FE

ShootingRistar_Loop82:
	dc.b	nA1
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, ShootingRistar_Loop82
	dc.b	nA1
	smpsPSGAlterVol     $FE
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $04
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$20, nRst, $55
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$33, nRst, $0E
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$33, nRst, $0E
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03

ShootingRistar_Loop83:
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsLoop            $00, $02, ShootingRistar_Loop83
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$34, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$33, nRst, $0E
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$33, nRst, $0E
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03

ShootingRistar_Loop84:
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsLoop            $00, $02, ShootingRistar_Loop84
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$34, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$33, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A

ShootingRistar_Loop85:
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsLoop            $00, $02, ShootingRistar_Loop85
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$0A, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $07
	smpsPSGAlterVol     $01
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$7F, $4E
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2

ShootingRistar_Loop86:
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsLoop            $00, $02, ShootingRistar_Loop86
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03

ShootingRistar_Loop87:
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsLoop            $00, $02, ShootingRistar_Loop87
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0D, nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1, nRst, $0E, nEb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$04, nRst, $07
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1, nRst, $07, nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06, nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$7F, $4F
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2

ShootingRistar_Loop88:
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsLoop            $00, $02, ShootingRistar_Loop88
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nG2, $01
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $12

ShootingRistar_Loop89:
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop89
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2, nRst
	smpsPSGAlterVol     $03
	dc.b	nE2
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst
	smpsPSGAlterVol     $03
	dc.b	nF2
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst

ShootingRistar_Loop8A:
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop8A
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1, nRst
	smpsPSGAlterVol     $03
	dc.b	nC2
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2, nRst
	smpsPSGAlterVol     $02
	dc.b	nD2
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A

ShootingRistar_Loop8B:
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsLoop            $00, $02, ShootingRistar_Loop8B
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $02
	dc.b	nE2
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst
	smpsPSGAlterVol     $03
	dc.b	nF2
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09

ShootingRistar_Loop8C:
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop8C
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst
	smpsPSGAlterVol     $03
	dc.b	nF2
	smpsPSGAlterVol     $FD
	dc.b	nF2, nRst
	smpsPSGAlterVol     $03
	dc.b	nG2
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst

ShootingRistar_Loop8D:
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop8D
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2, nRst
	smpsPSGAlterVol     $03
	dc.b	nE2
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	nE2, nRst
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	nBb1, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $FD
	dc.b	nC2, nRst
	smpsPSGAlterVol     $03
	dc.b	nD2
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09

ShootingRistar_Loop8E:
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop8E
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2, nRst
	smpsPSGAlterVol     $03
	dc.b	nE2
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst
	smpsPSGAlterVol     $03
	dc.b	nF2
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst

ShootingRistar_Loop8F:
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop8F
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst
	smpsPSGAlterVol     $03
	dc.b	nF2
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	nF2, nRst
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $02
	dc.b	nE2
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst
	smpsPSGAlterVol     $03
	dc.b	nF2
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09

ShootingRistar_Loop90:
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop90
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1, nRst
	smpsPSGAlterVol     $03
	dc.b	nC2
	smpsPSGAlterVol     $FD
	dc.b	nC2, nRst
	smpsPSGAlterVol     $03
	dc.b	nD2
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst

ShootingRistar_Loop91:
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop91
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2

ShootingRistar_Loop92:
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsLoop            $00, $02, ShootingRistar_Loop92
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2, nRst
	smpsPSGAlterVol     $03
	dc.b	nE2
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst, $02
	smpsPSGAlterVol     $03
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst, $02
	smpsPSGAlterVol     $03
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2, nRst
	smpsPSGAlterVol     $03
	dc.b	nG2
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09

ShootingRistar_Loop93:
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $02, ShootingRistar_Loop93
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2, nRst
	smpsPSGAlterVol     $03
	dc.b	nE2
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst
	smpsPSGAlterVol     $03
	dc.b	nF2
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09

ShootingRistar_Loop94:
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsLoop            $00, $03, ShootingRistar_Loop94
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2

ShootingRistar_Loop95:
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsLoop            $00, $02, ShootingRistar_Loop95
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst
	smpsPSGAlterVol     $03
	dc.b	nF2
	smpsPSGAlterVol     $FD
	dc.b	nF2, nRst, $02
	smpsPSGAlterVol     $03
	dc.b	nG2, $01
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2, nRst, $02
	smpsPSGAlterVol     $03
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2, nRst
	smpsPSGAlterVol     $03
	dc.b	nG2
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$4E, nRst, $06
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $01
	smpsPSGAlterVol     $FD
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $01
	smpsPSGAlterVol     $FD
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nAb2, nRst
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $01, nRst, $02, nAb2, $01, nRst, $03, nG2, $01
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nB1, $01
	smpsPSGAlterVol     $FD
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nAb2, nRst
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $01, nRst, $03, nAb2, $01, nRst, $02, nG2, $01
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nG2, nRst, $06, nG2, $01
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$12, nRst, $07
	smpsPSGAlterVol     $FE
	dc.b	nB2, $01
	smpsPSGAlterVol     $FD
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC3, $01
	smpsPSGAlterVol     $FD
	dc.b	nC3
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nC3
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$33, nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $FD
	dc.b	nBb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nA2, $01
	smpsPSGAlterVol     $FD
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nA2, $01
	smpsPSGAlterVol     $FD
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nBb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nG2, $01
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FD
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FD
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$18, nRst, $07
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $FD
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2

ShootingRistar_Loop96:
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsLoop            $00, $02, ShootingRistar_Loop96
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $1E
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nC2, $01
	smpsPSGAlterVol     $FD
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$05, nRst, $23
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FD
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nF1, nRst, $0D, nC1, $01
	smpsPSGAlterVol     $FD
	dc.b	nC1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $02
	dc.b	nG1, $01
	smpsPSGAlterVol     $FD
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $06
	smpsJump            ShootingRistar_Jump07

; PSG2 Data
ShootingRistar_PSG2:
	dc.b	nRst

ShootingRistar_Loop75:
	dc.b	$7F
	smpsLoop            $00, $1E, ShootingRistar_Loop75
	dc.b	$42

ShootingRistar_Jump06:
	dc.b	nRst

ShootingRistar_Loop76:
	dc.b	$7F
	smpsLoop            $00, $1E, ShootingRistar_Loop76
	dc.b	$14
	smpsPSGAlterVol     $06

ShootingRistar_Loop77:
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $11
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ShootingRistar_Loop77
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0E
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $11
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $0B, nA1, $04

ShootingRistar_Loop78:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, ShootingRistar_Loop78
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $03

ShootingRistar_Loop79:
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $04
	smpsLoop            $00, $03, ShootingRistar_Loop79
	smpsPSGAlterVol     $01
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $01
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04

ShootingRistar_Loop7A:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, ShootingRistar_Loop7A
	dc.b	nRst, $0D
	smpsPSGAlterVol     $FE

ShootingRistar_Loop7B:
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $11
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, ShootingRistar_Loop7B
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $12
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $12
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01

ShootingRistar_Loop7C:
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsLoop            $00, $03, ShootingRistar_Loop7C
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $01
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0E
	smpsPSGAlterVol     $FE

ShootingRistar_Loop7D:
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $11
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ShootingRistar_Loop7D
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04

ShootingRistar_Loop7E:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, ShootingRistar_Loop7E
	dc.b	nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $11
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $0B
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $03

ShootingRistar_Loop7F:
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $04
	smpsLoop            $00, $02, ShootingRistar_Loop7F
	smpsPSGAlterVol     $01
	dc.b	nBb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $01
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04

ShootingRistar_Loop80:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, ShootingRistar_Loop80
	smpsPSGAlterVol     $FD
	dc.b	nC2, nRst, $2B
	smpsPSGAlterVol     $FB
	smpsJump            ShootingRistar_Jump06

; PSG3 Data
ShootingRistar_PSG3:
	smpsPSGAlterVol     $05
	smpsPSGform         $E7
	dc.b	nMaxPSG, $01, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05

ShootingRistar_Jump05:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop35:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop35
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop36:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop36
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $01, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop37:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop37
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $06, nMaxPSG, $01, nRst, $04

ShootingRistar_Loop38:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop38
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop39:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $06, nMaxPSG, $01, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop39

ShootingRistar_Loop3A:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop3A
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop3B:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop3B

ShootingRistar_Loop3C:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop3C
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop3D:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop3D

ShootingRistar_Loop3E:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop3E
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop3F:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop3F

ShootingRistar_Loop40:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop40
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop41:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop41
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop42:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop42
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop43:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop43
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop44:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop44
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop45:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop45
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop46:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop46

ShootingRistar_Loop47:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop47
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop48:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop48
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop49:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop49

ShootingRistar_Loop4A:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop4A
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop4B:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop4B

ShootingRistar_Loop4C:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop4C
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop4D:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop4D

ShootingRistar_Loop4E:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop4E
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $06, nMaxPSG, $01

ShootingRistar_Loop4F:
	dc.b	nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02
	smpsLoop            $00, $02, ShootingRistar_Loop4F
	dc.b	nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop50:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop50
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $06, nMaxPSG, $01, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $06, nMaxPSG, $01, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop51:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop51
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop52:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop52
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop53:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop53
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop54:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop54
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $06, nMaxPSG, $01, nRst, $04

ShootingRistar_Loop55:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop55
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop56:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop56
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop57:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop57
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $01, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop58:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop58
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop59:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop59

ShootingRistar_Loop5A:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop5A
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $06, nMaxPSG, $01, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop5B:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop5B

ShootingRistar_Loop5C:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop5C
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop5D:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop5D

ShootingRistar_Loop5E:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop5E
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop5F:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop5F

ShootingRistar_Loop60:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop60
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop61:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop61

ShootingRistar_Loop62:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop62
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop63:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop63

ShootingRistar_Loop64:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop64
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop65:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop65
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop66:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop66
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop67:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop67
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop68:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop68
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop69:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop69
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop6A:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop6A

ShootingRistar_Loop6B:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop6B
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $06, nMaxPSG, $01, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04

ShootingRistar_Loop6C:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop6C

ShootingRistar_Loop6D:
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop6D
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $01

ShootingRistar_Loop6E:
	dc.b	nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02
	smpsLoop            $00, $02, ShootingRistar_Loop6E

ShootingRistar_Loop6F:
	dc.b	nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02
	smpsLoop            $00, $02, ShootingRistar_Loop6F
	dc.b	nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop70:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop70

ShootingRistar_Loop71:
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop71
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04

ShootingRistar_Loop72:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop72

ShootingRistar_Loop73:
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $02, ShootingRistar_Loop73
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $04, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02

ShootingRistar_Loop74:
	dc.b	nMaxPSG, $02, nRst, $05
	smpsLoop            $00, $03, ShootingRistar_Loop74
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $06, nMaxPSG, $01, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $05, nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $02, nRst, $05
	smpsJump            ShootingRistar_Jump05

ShootingRistar_Voices:
;	Voice $00
;	$3B
;	$31, $41, $70, $31, 	$DF, $9F, $5F, $9F, 	$04, $0C, $0E, $08
;	$0F, $0B, $0D, $05, 	$07, $07, $07, $07, 	$14, $19, $27, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $04, $03
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $02, $01, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $0E, $0C, $04
	smpsVcDecayRate2    $05, $0D, $0B, $0F
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $27, $19, $14

;	Voice $01
;	$3A
;	$01, $02, $01, $01, 	$50, $10, $0E, $52, 	$04, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$48, $08, $08, $09, 	$1C, $45, $30, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $01, $00, $00, $01
	smpsVcAttackRate    $12, $0E, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $30, $45, $1C

;	Voice $02
;	$00
;	$00, $00, $00, $00, 	$00, $00, $00, $00, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$00, $00, $00, $00, 	$7F, $7F, $7F, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $00, $00, $00, $00
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $03
;	$3B
;	$31, $41, $70, $31, 	$DF, $9F, $5F, $9F, 	$00, $00, $00, $00
;	$0E, $08, $0A, $05, 	$07, $07, $07, $17, 	$14, $19, $27, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $04, $03
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $02, $01, $02, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $05, $0A, $08, $0E
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $27, $19, $14

;	Voice $04
;	$07
;	$00, $01, $02, $04, 	$54, $54, $54, $54, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$07, $07, $07, $07, 	$00, $02, $03, $05
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $02, $01, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $14, $14, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $05, $03, $02, $00

;	Voice $05
;	$04
;	$3C, $77, $75, $33, 	$1F, $1F, $1F, $1F, 	$0C, $0D, $0C, $0D
;	$01, $09, $01, $09, 	$61, $96, $61, $96, 	$23, $00, $23, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $03, $05, $07, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0C, $0D, $0C
	smpsVcDecayRate2    $09, $01, $09, $01
	smpsVcDecayLevel    $09, $06, $09, $06
	smpsVcReleaseRate   $06, $01, $06, $01
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $06
;	$3A
;	$01, $02, $01, $43, 	$12, $5F, $12, $4F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$77, $37, $07, $5A, 	$18, $26, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $00, $00, $00
	smpsVcCoarseFreq    $03, $01, $02, $01
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $0F, $12, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $05, $00, $03, $07
	smpsVcReleaseRate   $0A, $07, $07, $07
	smpsVcTotalLevel    $00, $27, $26, $18

;	Voice $07
;	$3A
;	$01, $02, $01, $43, 	$12, $5F, $12, $16, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$77, $37, $07, $5A, 	$18, $26, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $00, $00, $00
	smpsVcCoarseFreq    $03, $01, $02, $01
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $16, $12, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $05, $00, $03, $07
	smpsVcReleaseRate   $0A, $07, $07, $07
	smpsVcTotalLevel    $00, $27, $26, $18

