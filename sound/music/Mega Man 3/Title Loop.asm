MM3Title_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MM3Title_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       MM3Title_DAC
	smpsHeaderFM        MM3Title_FM1,	$00, $00
	smpsHeaderFM        MM3Title_FM2,	$00, $00
	smpsHeaderFM        MM3Title_FM3,	$00, $00
	smpsHeaderFM        MM3Title_FM4,	$00, $00
	smpsHeaderFM        MM3Title_FM5,	$00, $00
	smpsHeaderPSG       MM3Title_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       MM3Title_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       MM3Title_PSG3,	$00, $00, $00, $00

; FM1 Data
MM3Title_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $0D
	smpsPan             panCenter, $00
	dc.b	nFs2, $60, nE2, $48, $0C, nFs2, nB1, $3C, nCs2, $0C, nRst, nD2
	dc.b	$60, nF2, $0C, nFs2, $60, nE2, nD2, $7F, smpsNoAttack, $11, $0C, nE2
	dc.b	$24, nFs2, $60, nE2, $48, $0C, nFs2, nB1, $48, nRst, $0C, nC2
	dc.b	nCs2, $60, nFs2, $48, $0C, nF2, nE2, $48, $0C, nEb2, nD2, $60
	dc.b	nCs3, nD2, $06, nD2, nD2

MM3Title_Loop19:
	dc.b	nD2, nRst
	smpsLoop            $00, $04, MM3Title_Loop19
	dc.b	nD2, nD2, nRst, nD2, nRst, nE2, nE2, nE2

MM3Title_Loop1A:
	dc.b	nE2, nRst
	smpsLoop            $00, $04, MM3Title_Loop1A
	dc.b	nE2, nE2, nRst, nE2, nRst, nFs2, $12, nRst, $06, nAb2, $12, nRst
	dc.b	$06, nA2, $12, nRst, $06, nB2, $12, nRst, $06, nCs3, $60, nFs2

MM3Title_Loop1B:
	dc.b	$06, nRst

MM3Title_Jump05:
	dc.b	nFs2, nFs2
	smpsLoop            $00, $10, MM3Title_Loop1B

MM3Title_Loop1C:
	dc.b	nA2, nRst, nA2, nA2
	smpsLoop            $00, $04, MM3Title_Loop1C

MM3Title_Loop1D:
	dc.b	nB2, nRst, nB2, nB2
	smpsLoop            $00, $04, MM3Title_Loop1D

MM3Title_Loop1E:
	dc.b	nCs2, nRst, nCs2, nCs2
	smpsLoop            $00, $08, MM3Title_Loop1E

MM3Title_Loop1F:
	dc.b	nA2, nRst, nA2, nA2
	smpsLoop            $00, $04, MM3Title_Loop1F

MM3Title_Loop20:
	dc.b	nB2, nRst, nB2, nB2
	smpsLoop            $00, $04, MM3Title_Loop20

MM3Title_Loop21:
	dc.b	nCs3, nRst, nCs3, nCs3
	smpsLoop            $00, $06, MM3Title_Loop21
	dc.b	nB2, nRst, nB2, nB2, nB2, nRst, nB2, nB2

MM3Title_Loop22:
	dc.b	nA2, nRst, nA2, nA2
	smpsLoop            $00, $04, MM3Title_Loop22

MM3Title_Loop23:
	dc.b	nB2, nRst, nB2, nB2
	smpsLoop            $00, $04, MM3Title_Loop23

MM3Title_Loop24:
	dc.b	nCs2, nRst, nCs2, nCs2
	smpsLoop            $00, $08, MM3Title_Loop24
	dc.b	nFs2, nRst
	smpsPan             panCenter, $00
	smpsJump            MM3Title_Jump05

; FM2 Data
MM3Title_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $15
	smpsPan             panLeft, $00
	dc.b	nCs6, $3C, nFs5, $0C, nA5, nB5, $0A, $02, nCs6, $48, nE6, $18
	dc.b	nEb6, $3C, nCs6, $0C, nB5, nD6, $54, nCs6, $0C, nB5, $0A, $02
	dc.b	nCs6, $0C, nA5, nFs5, $18, nE5, $0C, nFs5, $18, nA5, nFs5, nA5
	dc.b	nB5, $16, $02, nC6, $0C, nB5, nA5, nFs5, nA5, $2E, nB6, $02
	dc.b	nC7, $0C, nB6, nA6, nFs6, nA6, nA6, nB6, $18, nRst, $0C
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst
	smpsAlterVol        $04
	dc.b	nFs5, nAb5, nA5, nB5, nCs6, nE6, nFs6, $18, nCs6, nE6, nFs6, $16
	dc.b	nBb6, $02, nB6, $24, nA6, $18, nFs6, $0C, nE6, $16, nF6, $02
	dc.b	nFs6, $18, nF6, $0C, nCs6, $30, nF6, $0C, nFs6, $16, nC7, $02
	dc.b	nCs7, $0C, nA6, nFs6, nCs6, nFs5, nAb5, nA5, nB5, $12, nCs6, nE6
	dc.b	$0C, nFs6, $12, nA6, nB6, $0A, $02, nCs7, $10, nB6, $0F, nA6
	dc.b	$11, nFs6, $10, nA6, $0F, nAb6, $11, nCs6, $10, nF6, $0F, nAb6
	dc.b	$11, nB6, $10, nCs7, $0F, nF7, $11
	smpsSetvoice        $03

MM3Title_Loop17:
	dc.b	nCs6, $06, nCs6, nB5, nCs6, $0C, nB5, nCs6, nB5, nCs6, $06, $0C
	dc.b	nB5
	smpsLoop            $00, $02, MM3Title_Loop17
	dc.b	nA5, $06, nFs5, nAb5, nA5, nB5, nAb5, nA5, nB5, nCs6, nA5, nB5
	dc.b	nCs6, nE6, nD6, nCs6, nB5

MM3Title_Loop18:
	dc.b	nAb6, nFs6, nCs6
	smpsLoop            $00, $04, MM3Title_Loop18
	dc.b	nAb6, nFs6, nF6, nCs6, nFs5, $0C

MM3Title_Jump04:
	dc.b	nB5, nCs6, nFs5, nE6, nFs5, nEb6, nFs5, nB5, nE6, nFs5, nEb6, nFs5
	dc.b	nCs6, nFs5, nB5, nFs5, nB5, nCs6, nFs5, nE6, nFs5, nEb6, nFs5, nB5
	dc.b	nE6, nFs5, nEb6, nFs5, nCs6, nE6, nAb6, $24, nFs6, $0C, nE6, $18
	dc.b	nCs6, $0C, nE6, nAb6, $24, nFs6, $0C, nE6, $18, nEb6, nE6, nEb6
	dc.b	$0C, nCs6, $18, nCs6, nB5, nB5, $0C, nCs6, $18, $3C, $0C, nE6
	dc.b	nFs6, nCs6, nB6, nCs6, nA6, nCs6, nAb6, nCs6, nFs6, nCs6, nE6, nFs6
	dc.b	$18, nAb6, nE6, $0C, nCs6, nB5, nCs6, nE6, $18, nAb6, $0C, nE6
	dc.b	nCs6, nB5, nCs6, $18, nCs6, nCs6, nE6, $0C, nFs6, nCs6, nB6, nCs6
	dc.b	nA6, nCs6, nAb6, nCs6, nFs6, nCs6, nE6, nFs6, $24, nAb6, $0C, nAb6
	dc.b	nFs6, nAb6, $18, $0C, nFs6, nAb6, nCs7, nCs7, nB6, nCs7, $18, nB6
	dc.b	$0C, nCs7, $18, nFs5, $0C
	smpsPan             panCenter, $00
	smpsJump            MM3Title_Jump04

; FM3 Data
MM3Title_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $10
	smpsPan             panLeft, $00
	dc.b	nA4, $3C, nFs4, $0C, nCs5, nFs4, $0A, nA4, $02, nAb4, $30, nA4
	dc.b	$10, nFs4, $0F, nE4, $11, nEb4, $30, $0C, nE4, nFs4, nA4, $3C
	dc.b	nAb4, $30, nFs3, $18, nCs4, nA3, nB3, nFs3, nCs4, nA3, nB3, nD3
	dc.b	$7F, smpsNoAttack, $11, nD5, $0C, $24, nFs4, $60, nA4, nCs5, nE4, $30
	dc.b	nF4, nFs4, $60, nA4, nCs5, $7F, smpsNoAttack, $41
	smpsSetvoice        $03

MM3Title_Loop15:
	dc.b	nFs4, $06, nFs4, nFs4

MM3Title_Loop14:
	dc.b	nFs4, nRst
	smpsLoop            $00, $04, MM3Title_Loop14
	dc.b	nFs4, nFs4, nRst, nFs4, nRst
	smpsLoop            $01, $02, MM3Title_Loop15
	dc.b	nFs4, nD4, nE4, nFs4, nAb4, nE4, nFs4, nAb4, nA4, nFs4, nAb4, nA4
	dc.b	nCs5, nB4, nA4, nAb4, nCs4, $18, nF4, nAb4, nCs5, nCs5, $0C

MM3Title_Jump03:
	dc.b	nFs4, nB4, nCs5, nFs4, nE5, nFs4, nEb5, nFs4, nB4, nE5, nFs4, nEb5
	dc.b	nFs4, nCs5, nFs4, nB4, nFs4, nB4, nCs5, nFs4, nE5, nFs4, nEb5, nFs4
	dc.b	nB4, nE5, nFs4, nEb5, nFs4, nCs5, nE5

MM3Title_Loop16:
	dc.b	nE4, nA3, nCs4, nA3
	smpsLoop            $00, $04, MM3Title_Loop16
	dc.b	nFs4, nCs4, nE4, nCs4, nFs4, nCs4, nE4, nCs4, nFs4, nCs4, nAb4, nCs4
	dc.b	nFs4, nCs4, nE4, nCs4, nCs5, $60, nB4, nE5, nEb5, $30, nB4, nAb4
	dc.b	$60, nFs4, nCs4, $7F, smpsNoAttack, $41, nCs5, $0C
	smpsPan             panLeft, $00
	smpsJump            MM3Title_Jump03

; FM4 Data
MM3Title_FM4:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	dc.b	nRst, $0C
	smpsAlterVol        $1C
	dc.b	nA4, $3C, nFs4, $0C, nCs5, nFs4, $0A, nA4, $02, nAb4, $30, nA4
	dc.b	$10, nFs4, $0F, nE4, $11, nEb4, $30, $0C, nE4, nFs4, nA4, $3C
	dc.b	nAb4, $30, nFs3, $18, nCs4, nA3, nB3, nFs3, nCs4, nA3, nB3, nD3
	dc.b	$7F, smpsNoAttack, $11, nD5, $0C, $24, nFs4, $60, nA4, nCs5, nE4, $30
	dc.b	nF4, nFs4, $60, nA4, nCs5, $7F, smpsNoAttack, $41
	smpsSetvoice        $03

MM3Title_Loop12:
	dc.b	nFs4, $06, nFs4, nFs4

MM3Title_Loop11:
	dc.b	nFs4, nRst
	smpsLoop            $00, $04, MM3Title_Loop11
	dc.b	nFs4, nFs4, nRst, nFs4, nRst
	smpsLoop            $01, $02, MM3Title_Loop12
	dc.b	nFs4, nD4, nE4, nFs4, nAb4, nE4, nFs4, nAb4, nA4, nFs4, nAb4, nA4
	dc.b	nCs5, nB4, nA4, nAb4, nCs4, $18, nF4, nAb4, nCs5

MM3Title_Jump02:
	dc.b	nCs5, $0C, nFs4, nB4, nCs5, nFs4, nE5, nFs4, nEb5, nFs4, nB4, nE5
	dc.b	nFs4, nEb5, nFs4, nCs5, nFs4, nB4, nFs4, nB4, nCs5, nFs4, nE5, nFs4
	dc.b	nEb5, nFs4, nB4, nE5, nFs4, nEb5, nFs4, nCs5, nE5

MM3Title_Loop13:
	dc.b	nE4, nA3, nCs4, nA3
	smpsLoop            $00, $04, MM3Title_Loop13
	dc.b	nFs4, nCs4, nE4, nCs4, nFs4, nCs4, nE4, nCs4, nFs4, nCs4, nAb4, nCs4
	dc.b	nFs4, nCs4, nE4, nCs4, nCs5, $60, nB4, nE5, nEb5, $30, nB4, nAb4
	dc.b	$60, nFs4, nCs4, $7F, smpsNoAttack, $41
	smpsPan             panRight, $00
	smpsJump            MM3Title_Jump02

; FM5 Data
MM3Title_FM5:
	smpsSetvoice        $00
	smpsPan             panRight, $00
	dc.b	nRst, $0C
	smpsAlterVol        $16
	dc.b	nFs2, $60, nE2, $48, $0C, nFs2, nB1, $3C, nCs2, $0C, nRst, nD2
	dc.b	$60, nF2, $0C, nFs2, $60, nE2, nD2, $7F, smpsNoAttack, $11, $0C, nE2
	dc.b	$24, nFs2, $60, nE2, $48, $0C, nFs2, nB1, $48, nRst, $0C, nC2
	dc.b	nCs2, $60, nFs2, $48, $0C, nF2, nE2, $48, $0C, nEb2, nD2, $60
	dc.b	nCs3, $5A, nD2, $06, nD2, nD2

MM3Title_Loop05:
	dc.b	nD2, nRst
	smpsLoop            $00, $04, MM3Title_Loop05
	dc.b	nD2, nD2, nRst, nD2, nRst, nE2, nE2, nE2

MM3Title_Loop06:
	dc.b	nE2, nRst
	smpsLoop            $00, $04, MM3Title_Loop06
	dc.b	nE2, nE2, nRst, nE2, nRst, nFs2, $12, nRst, $06, nAb2, $12, nRst
	dc.b	$06, nA2, $12, nRst, $06, nB2, $12, nRst, $06, nCs3, $60, nFs2

MM3Title_Loop07:
	dc.b	$06

MM3Title_Jump01:
	dc.b	nRst, nFs2, nFs2
	smpsLoop            $00, $10, MM3Title_Loop07

MM3Title_Loop08:
	dc.b	nA2, nRst, nA2, nA2
	smpsLoop            $00, $04, MM3Title_Loop08

MM3Title_Loop09:
	dc.b	nB2, nRst, nB2, nB2
	smpsLoop            $00, $04, MM3Title_Loop09

MM3Title_Loop0A:
	dc.b	nCs2, nRst, nCs2, nCs2
	smpsLoop            $00, $08, MM3Title_Loop0A

MM3Title_Loop0B:
	dc.b	nA2, nRst, nA2, nA2
	smpsLoop            $00, $04, MM3Title_Loop0B

MM3Title_Loop0C:
	dc.b	nB2, nRst, nB2, nB2
	smpsLoop            $00, $04, MM3Title_Loop0C

MM3Title_Loop0D:
	dc.b	nCs3, nRst, nCs3, nCs3
	smpsLoop            $00, $06, MM3Title_Loop0D
	dc.b	nB2, nRst, nB2, nB2, nB2, nRst, nB2, nB2

MM3Title_Loop0E:
	dc.b	nA2, nRst, nA2, nA2
	smpsLoop            $00, $04, MM3Title_Loop0E

MM3Title_Loop0F:
	dc.b	nB2, nRst, nB2, nB2
	smpsLoop            $00, $04, MM3Title_Loop0F

MM3Title_Loop10:
	dc.b	nCs2, nRst, nCs2, nCs2
	smpsLoop            $00, $08, MM3Title_Loop10
	dc.b	nFs2
	smpsPan             panRight, $00
	smpsJump            MM3Title_Jump01

; PSG1 Data
MM3Title_PSG1:
	smpsPSGAlterVol     $01
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop129:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop129
	smpsPSGAlterVol     $01
	dc.b	$18
	smpsPSGAlterVol     $F9
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$02, nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop12A:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop12A
	smpsPSGAlterVol     $01
	dc.b	$24
	smpsPSGAlterVol     $F9
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop12B:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop12B
	smpsPSGAlterVol     $01
	dc.b	$18
	smpsPSGAlterVol     $F9
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nD2, $05
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop12C:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop12C
	smpsPSGAlterVol     $01
	dc.b	$30
	smpsPSGAlterVol     $F9
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$02, nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nE1, $05
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

MM3Title_Loop12D:
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MM3Title_Loop12D
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	$02, nC2, $05
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop12E:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop12E
	smpsPSGAlterVol     $01
	dc.b	$0A
	smpsPSGAlterVol     $F9
	dc.b	nB2, $02, nC3, $05
	smpsPSGAlterVol     $01
	dc.b	nC3
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2

MM3Title_Loop12F:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsLoop            $00, $02, MM3Title_Loop12F
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $18
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nBb2, $02, nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop130:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop130
	smpsPSGAlterVol     $FA
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nF2, $02, nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nF2, $05
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop131:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop131
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $F9
	dc.b	nF2, $05
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nC3, $02, nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $FF
	dc.b	$02, nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $FE
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $FE
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nF2, $05
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $FE
	dc.b	nF3
	smpsPSGAlterVol     $01
	dc.b	nF3
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nCs2

MM3Title_Loop132:
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, MM3Title_Loop132
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF

MM3Title_Loop133:
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, MM3Title_Loop133
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2

MM3Title_Loop134:
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, MM3Title_Loop134
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF

MM3Title_Loop135:
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, MM3Title_Loop135
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $05

MM3Title_Loop136:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1, $05
	smpsLoop            $00, $02, MM3Title_Loop136
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nD2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1, $05

MM3Title_Loop137:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsLoop            $00, $04, MM3Title_Loop137
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nF2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02

MM3Title_Jump08:
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2

MM3Title_Loop138:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsLoop            $00, $02, MM3Title_Loop138
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop139:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop139
	smpsPSGAlterVol     $FA
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop13A:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop13A
	smpsPSGAlterVol     $FA
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2

MM3Title_Loop13B:
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MM3Title_Loop13B
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop13C:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop13C
	smpsPSGAlterVol     $01
	dc.b	$18
	smpsPSGAlterVol     $F9
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2

MM3Title_Loop13D:
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $03, MM3Title_Loop13D
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop13E:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop13E
	smpsPSGAlterVol     $FA
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2

MM3Title_Loop13F:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsLoop            $00, $02, MM3Title_Loop13F
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

MM3Title_Loop140:
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MM3Title_Loop140
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsJump            MM3Title_Jump08

; PSG2 Data
MM3Title_PSG2:
	dc.b	nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop111:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop111
	smpsPSGAlterVol     $01
	dc.b	$18
	smpsPSGAlterVol     $F9
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$02, nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop112:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop112
	smpsPSGAlterVol     $01
	dc.b	$24
	smpsPSGAlterVol     $F9
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop113:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop113
	smpsPSGAlterVol     $01
	dc.b	$18
	smpsPSGAlterVol     $F9
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nD2, $05
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop114:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop114
	smpsPSGAlterVol     $01
	dc.b	$30
	smpsPSGAlterVol     $F9
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$02, nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nE1, $05
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

MM3Title_Loop115:
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MM3Title_Loop115
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	$02, nC2, $05
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop116:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop116
	smpsPSGAlterVol     $01
	dc.b	$0A
	smpsPSGAlterVol     $F9
	dc.b	nB2, $02, nC3, $05
	smpsPSGAlterVol     $01
	dc.b	nC3
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2

MM3Title_Loop117:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsLoop            $00, $02, MM3Title_Loop117
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $18
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nBb2, $02, nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop118:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop118
	smpsPSGAlterVol     $FA
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nF2, $02, nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nF2, $05
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop119:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop119
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $F9
	dc.b	nF2, $05
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nC3, $02, nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $FF
	dc.b	$02, nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $FE
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $FE
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nF2, $05
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $FE
	dc.b	nF3
	smpsPSGAlterVol     $01
	dc.b	nF3
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nCs2

MM3Title_Loop11A:
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, MM3Title_Loop11A
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF

MM3Title_Loop11B:
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, MM3Title_Loop11B
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2

MM3Title_Loop11C:
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, MM3Title_Loop11C
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF

MM3Title_Loop11D:
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsLoop            $00, $02, MM3Title_Loop11D
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $05

MM3Title_Loop11E:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1, $05
	smpsLoop            $00, $02, MM3Title_Loop11E
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nA1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nD2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1, $05

MM3Title_Loop11F:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsLoop            $00, $04, MM3Title_Loop11F
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nF2, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	$01

MM3Title_Jump07:
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2

MM3Title_Loop120:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsLoop            $00, $02, MM3Title_Loop120
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $05
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop121:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop121
	smpsPSGAlterVol     $FA
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop122:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop122
	smpsPSGAlterVol     $FA
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nEb2, $05
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2

MM3Title_Loop123:
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MM3Title_Loop123
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop124:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop124
	smpsPSGAlterVol     $01
	dc.b	$18
	smpsPSGAlterVol     $F9
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB1, $05
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2

MM3Title_Loop125:
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $03, MM3Title_Loop125
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nA2, $05
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs2, $05
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nE2, $05
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$06

MM3Title_Loop126:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM3Title_Loop126
	smpsPSGAlterVol     $FA
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $05
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $05
	smpsPSGAlterVol     $01
	dc.b	nAb2

MM3Title_Loop127:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsLoop            $00, $02, MM3Title_Loop127
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

MM3Title_Loop128:
	dc.b	nB2, $05
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $05
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, MM3Title_Loop128
	smpsJump            MM3Title_Jump07

; PSG3 Data
MM3Title_PSG3:
	smpsPSGform         $E7
	dc.b	nRst

MM3Title_Loop25:
	dc.b	$7F
	smpsLoop            $00, $0C, MM3Title_Loop25
	dc.b	$0C, nMaxPSG

MM3Title_Loop26:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop26
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop27:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop27
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop28:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop28
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop29:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop29
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop2A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop2A
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop2B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop2B
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop2C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop2C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop2D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop2D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop2E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop2E
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop2F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop2F
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop30:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop30
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop31:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop31
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop32:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop32
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop33:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop33
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop34:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop34
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop35:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop35
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop36:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop36
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop37:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop37
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop38:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop38
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop39:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop39
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop3A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop3A
	dc.b	nMaxPSG, nRst, $13
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop3B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop3B
	dc.b	nMaxPSG, nRst, $13
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop3C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop3C
	dc.b	nMaxPSG, nRst, $13
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop3D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop3D
	dc.b	nMaxPSG, nRst, $13
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop3E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop3E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop3F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop3F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop40:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop40
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop41:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop41
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop42:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop42
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop43:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop43
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop44:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop44
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop45:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop45
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop46:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop46
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop47:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop47
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop48:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop48
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop49:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop49
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop4A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop4A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop4B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop4B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop4C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop4C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop4D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop4D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop4E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop4E
	dc.b	nMaxPSG, nRst, $07

MM3Title_Jump06:
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop4F:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop4F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop50:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop50
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop51:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop51
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop52:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop52
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop53:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop53
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop54:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop54
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop55:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop55
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop56:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop56
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop57:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop57
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop58:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop58
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop59:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop59
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop5A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop5A
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop5B:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop5B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop5C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop5C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop5D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop5D
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop5E:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop5E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop5F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop5F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop60:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop60
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop61:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop61
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop62:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop62
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop63:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop63
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop64:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop64
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop65:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop65
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop66:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop66
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop67:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop67
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop68:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop68
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop69:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop69
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop6A:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop6A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop6B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop6B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop6C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop6C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop6D:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop6D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop6E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop6E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop6F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop6F
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop70:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop70
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop71:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop71
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop72:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop72
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop73:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop73
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop74:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop74
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop75:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop75
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop76:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop76
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop77:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop77
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop78:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop78
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop79:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop79
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop7A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop7A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop7B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop7B
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop7C:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop7C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop7D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop7D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop7E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop7E
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop7F:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop7F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop80:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop80
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop81:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop81
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop82:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop82
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop83:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop83
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop84:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop84
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop85:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop85
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop86:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop86
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop87:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop87
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop88:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop88
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop89:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop89
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop8A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop8A
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop8B:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop8B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop8C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop8C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop8D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop8D
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop8E:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop8E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop8F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop8F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop90:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop90
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop91:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop91
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop92:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop92
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop93:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop93
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop94:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop94
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop95:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop95
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop96:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop96
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop97:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop97
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop98:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop98
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop99:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop99
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop9A:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop9A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop9B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop9B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop9C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop9C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop9D:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop9D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop9E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop9E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop9F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop9F
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopA0:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopA0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopA1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopA1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopA2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopA2
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopA3:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopA3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopA4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopA4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopA5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopA5
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopA6:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopA6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopA7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopA7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopA8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopA8
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopA9:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopA9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopAA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopAA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopAB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopAB
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopAC:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopAC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopAD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopAD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopAE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopAE
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopAF:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopAF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopB0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopB0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopB1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopB1
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopB2:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopB2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopB3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopB3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopB4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopB4
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopB5:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopB5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopB6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopB6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopB7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopB7
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopB8:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopB8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopB9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopB9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopBA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopBA
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopBB:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopBB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopBC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopBC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopBD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopBD
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopBE:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopBE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopBF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopBF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopC0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopC0
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopC1:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopC1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopC2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopC2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopC3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopC3
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopC4:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopC4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopC5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopC5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopC6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopC6
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopC7:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopC7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopC8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopC8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopC9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopC9
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopCA:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopCA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopCB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopCB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopCC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopCC
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopCD:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopCD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopCE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopCE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopCF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopCF
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopD0:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopD0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopD1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopD1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopD2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopD2
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopD3:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopD3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopD4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopD4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopD5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopD5
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopD6:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopD6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopD7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopD7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopD8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopD8
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopD9:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopD9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopDA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopDA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopDB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopDB
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopDC:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopDC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopDD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopDD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopDE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopDE
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopDF:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopDF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopE0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopE0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopE1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopE1
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopE2:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopE2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopE3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopE3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopE4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopE4
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopE5:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopE5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopE6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopE6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopE7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopE7
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopE8:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopE8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopE9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopE9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopEA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopEA
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopEB:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopEB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopEC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopEC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopED:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopED
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopEE:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopEE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopEF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopEF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopF0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopF0
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopF1:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopF1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopF2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopF2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopF3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopF3
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopF4:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopF4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopF5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopF5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopF6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopF6
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopF7:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopF7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopF8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopF8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopF9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopF9
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopFA:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopFA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopFB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopFB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopFC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopFC
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_LoopFD:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopFD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopFE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_LoopFE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_LoopFF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_LoopFF
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop100:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop100
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop101:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop101
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop102:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop102
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop103:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop103
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop104:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop104
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop105:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop105
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM3Title_Loop106:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop106
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop107:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, MM3Title_Loop107
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

MM3Title_Loop108:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop108
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop109:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop109
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop10A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop10A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop10B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop10B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop10C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop10C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop10D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop10D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop10E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop10E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop10F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop10F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM3Title_Loop110:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM3Title_Loop110
	dc.b	nMaxPSG, nRst, $07
	smpsJump            MM3Title_Jump06

; DAC Data
MM3Title_DAC:
	dc.b	nRst

MM3Title_Loop00:
	dc.b	$7F
	smpsLoop            $00, $0C, MM3Title_Loop00

MM3Title_Loop01:
	dc.b	$0C, dSnare, $06, dSnare, dSnare, dSnare, $0C, dSnare, dSnare, dSnare, dSnare, $06
	dc.b	$0C
	smpsLoop            $00, $02, MM3Title_Loop01
	dc.b	dSnare, dSnare, $18, dSnare, dSnare, dSnare, dClap

MM3Title_Loop02:
	dc.b	$06
	smpsLoop            $00, $10, MM3Title_Loop02
	dc.b	$84, $0C

MM3Title_Jump00:
	dc.b	nRst, $0C

MM3Title_Loop03:
	dc.b	dSnare, $18, dKick
	smpsLoop            $00, $0E, MM3Title_Loop03
	dc.b	dSnare, dClap, $06, dClap, dClap, $0C, $06, dClap, dClap, $0C

MM3Title_Loop04:
	dc.b	dKick, $18, dSnare
	smpsLoop            $00, $0F, MM3Title_Loop04
	dc.b	dKick, $06, dClap, $12, $0C, $06, dClap, $84, $0C
	smpsJump            MM3Title_Jump00

MM3Title_Voices:
;	Voice $00
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

;	Voice $01
;	$3A
;	$71, $0C, $33, $01, 	$1C, $16, $1D, $1F, 	$04, $06, $04, $08
;	$00, $01, $03, $00, 	$16, $17, $16, $A6, 	$25, $2F, $25, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0C, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1D, $16, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $04, $06, $04
	smpsVcDecayRate2    $00, $03, $01, $00
	smpsVcDecayLevel    $0A, $01, $01, $01
	smpsVcReleaseRate   $06, $06, $07, $06
	smpsVcTotalLevel    $00, $25, $2F, $25

;	Voice $02
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $87, 	$1C, $22, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $08, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $15, $22, $1C

;	Voice $03
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $1E, $1E

