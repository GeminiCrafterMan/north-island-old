DancingLeaves_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     DancingLeaves_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $05

	smpsHeaderDAC       DancingLeaves_DAC
;	smpsHeaderFM        DancingLeaves_FM1,	$00, $00
	smpsHeaderFM        DancingLeaves_FM2,	$02, $0B
	smpsHeaderFM        DancingLeaves_FM3,	$F6, $12
	smpsHeaderFM        DancingLeaves_FM4,	$F6, $12
	smpsHeaderFM        DancingLeaves_FM5,	$F6, $12
	smpsHeaderFM        DancingLeaves_FM6,	$F6, $12
	smpsHeaderPSG       DancingLeaves_PSG1,	$D2, $03, $00, $00
	smpsHeaderPSG       DancingLeaves_PSG2,	$D2, $03, $00, $00
	smpsHeaderPSG       DancingLeaves_PSG3,	$00, $02, $00, $00

; FM2 Data
DancingLeaves_FM2:
	smpsSetvoice        $00

DancingLeaves_Jump04:
	dc.b	nC3, $2C, nF3, $0C, $28, nE3, $18, $14, nG3, $0C, $18, nG2
	dc.b	$10, nC3, $2C, nF3, $0C, $28, nD3, $18, nD3, nG3, nG2

DancingLeaves_Loop11:
	dc.b	nC3, $18, nA2, nD3, nG2
	smpsLoop            $00, $03, DancingLeaves_Loop11
	dc.b	nC3, $18, nA2, nD3, nG2, $0C, nG2
	smpsLoop            $01, $04, DancingLeaves_Loop11
	smpsAlterVol        $06

DancingLeaves_Loop12:
	dc.b	nC3, $18, nA2, nD3, nG2
	smpsLoop            $00, $03, DancingLeaves_Loop12
	dc.b	nC3, $18, nA2
	smpsAlterVol        $FA
	dc.b	nD3, nG2, $0C, nG2

DancingLeaves_Loop13:
	dc.b	nC3, $18, nA2, nD3, nG2
	smpsLoop            $00, $03, DancingLeaves_Loop13
	dc.b	nC3, $0C, nC3, nA2, nA2, nD3, nD3, nG2, nA2, $08, nB2, $04
	dc.b	nC3, $0C, nE3, nG3, nE3, nC3, nC3, nA2, nG2, nCs3, nE3, nG3
	dc.b	nE3, nG3, nE3, nCs3, nE3, nD3, nF3, nF3, nD3, nG3, nG3, nD3
	dc.b	nCs3, nC3, nE3, nG3, nE3, nD3, nA3, nAb3, nCs3, nC3, nE3, nA3
	dc.b	nA3, nB3, nA3, nE3, nE3, nCs3, nE3, nG3, nE3, nE3, nBb3, nA3
	dc.b	nE3, nD3, nF3, nF3, nD3, nG3, nD3, nCs3, nCs3, nC3, nE3, nE3
	dc.b	nG3, nA3, nB3, nB3, nB3, nE3, nEb3, nCs3, nB2, nFs3, nFs3, nF3
	dc.b	nF3, nE3, nEb3, nCs3, nB2, nFs3, nB3, nFs3, nF3, nE3, nFs3, nAb3
	dc.b	nE3, nA3, nA3, nE3, nE3, nD3, nF3, nF3, nD3, nG3, nD3, nCs3
	dc.b	nFs3
	smpsJump            DancingLeaves_Jump04

; FM3 Data
DancingLeaves_FM3:
	dc.b	nRst, $0C

DancingLeaves_Jump03:
	smpsSetvoice        $02
	smpsCall            DancingLeaves_Call05
	smpsNoteFill        $04
	dc.b	nG6, $0C, nE6, $08
	smpsNoteFill        $03
	dc.b	nE6, $04
	smpsNoteFill        $04
	dc.b	nE6, $08, $0C
	smpsNoteFill        $05
	dc.b	nF6, $0C, nF6
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $05
	dc.b	nA6, $08, nG6, nF6
	smpsNoteFill        $04
	dc.b	nE6, $0C
	smpsCall            DancingLeaves_Call05
	smpsNoteFill        $04
	dc.b	nG6, $0C, nC7, $08
	smpsNoteFill        $03
	dc.b	nC7, $04
	smpsNoteFill        $04
	dc.b	nC7, $08, $0C
	smpsNoteFill        $05
	dc.b	nB6, $0C, nB6
	smpsNoteFill        $03
	dc.b	nC7, $04
	smpsNoteFill        $05
	dc.b	nD7, $08, nC7, nB6
	smpsNoteFill        $00
	dc.b	nC7, $30, smpsNoAttack, $30, nRst, $30, nRst, nRst, nRst, nRst, nRst, $18
	smpsAlterVol        $FC
	smpsSetvoice        $05
	smpsCall            DancingLeaves_Call06
	smpsNoteFill        $1F
	dc.b	nG5, $20
	smpsModSet          $03, $01, $05, $03
	smpsNoteFill        $00
	dc.b	nG5, $03, nRst, $01
	smpsCall            DancingLeaves_Call0A
	dc.b	smpsNoAttack, nG5, $0C
	smpsCall            DancingLeaves_Call06
	smpsNoteFill        $1F
	dc.b	nG5, $20
	smpsModSet          $03, $01, $05, $03
	smpsNoteFill        $00
	dc.b	nG5, $03, nRst, $01
	smpsCall            DancingLeaves_Call0A
	smpsAlterVol        $04
	smpsSetvoice        $02
	smpsModSet          $14, $01, $EC, $EF
	dc.b	nC7, $24
	smpsModSet          $01, $01, $00, $00
	smpsCall            DancingLeaves_Call08
	smpsNoteFill        $00
	dc.b	nG6, $04, smpsNoAttack, $30, smpsNoAttack, $2F, nRst, $01
	smpsCall            DancingLeaves_Call08
	smpsNoteFill        $00
	dc.b	nG6, $04, smpsNoAttack, $30, smpsNoAttack, $07, nRst, $01
	smpsSetvoice        $03
	smpsAlterPitch      $F4
	smpsNoteFill        $07
	dc.b	nG4, $04, nA4, $08, nB4, $04, nC5, $08, nD5, $04, nE5, $08
	dc.b	nF5, $04
	smpsAlterVol        $0C

DancingLeaves_Loop0D:
	dc.b	nG5, $04
	smpsAlterVol        $FF
	smpsLoop            $00, $0C, DancingLeaves_Loop0D
	smpsNoteFill        $06
	smpsAlterVol        $FC
	dc.b	nG5, $13, nRst, $01
	smpsAlterVol        $04
	dc.b	nE5, $0C
	smpsNoteFill        $07
	dc.b	nF5, $04, nG5, $08, nF5, $04, nE5, $08, $0C, nC5, nC5, $04
	smpsNoteFill        $00
	dc.b	nG4, $1F, nRst, $01, nG4, $04, nE5, $0B, nRst, $01, nF5, $0B
	dc.b	nRst, $01, nRst, $0C
	smpsNoteFill        $07
	dc.b	nG5, $08, nC6, $04, nA5, $0C, nF5, $08, nB5, $04, nG5, $0C
	dc.b	nE5, $08, nA5, $04, nF5, $0C, nD5, $08

DancingLeaves_Loop0E:
	dc.b	nG5, $04
	smpsAlterVol        $01
	smpsLoop            $00, $13, DancingLeaves_Loop0E
	smpsAlterVol        $ED
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsAlterVol        $FC
	smpsSetvoice        $05
	smpsCall            DancingLeaves_Call06
	smpsNoteFill        $1F
	dc.b	nG5, $20
	smpsModSet          $03, $01, $05, $03
	smpsNoteFill        $00
	dc.b	nG5, $03, nRst, $01
	smpsCall            DancingLeaves_Call0A
	dc.b	nRst, $24
	smpsModSet          $01, $01, $00, $00
	smpsAlterVol        $04
	smpsSetvoice        $01
	smpsNoteFill        $03

DancingLeaves_Loop0F:
	dc.b	nG5, $04, nG4
	smpsAlterVol        $01
	smpsLoop            $00, $09, DancingLeaves_Loop0F
	smpsAlterVol        $F7
	smpsNoteFill        $03
	dc.b	nE5, $08, nF5, $04, nG5, $08, nF5, $04, nE5, $14, nCs5, $10
	smpsNoteFill        $00
	dc.b	nG4, $0C, nRst, $0C, nRst, $08, nG4, $03, nRst, $01, nE5, $07
	dc.b	nRst, $01, nCs5, $03, nRst, $01, nAb5, $07, nRst, $01, nA5, $03
	dc.b	nRst, $01
	smpsNoteFill        $03
	dc.b	nE5, $04, nCs5, nD5, nE5, nF5, nA5
	smpsNoteFill        $0C
	dc.b	nE6, $18, nE6, nB5
	smpsNoteFill        $00
	dc.b	nD6, $12, nRst, $02, nC6, $27, nRst, $01
	smpsNoteFill        $06
	dc.b	nD6, $14
	smpsNoteFill        $00
	dc.b	nEb6, $0F, nRst, $01
	smpsNoteFill        $06
	dc.b	nE6, $0C, nEb6
	smpsNoteFill        $00
	dc.b	nE6, $07, nRst, $01
	smpsNoteFill        $06
	dc.b	nEb6, $0C, nE6, $24
	smpsNoteFill        $00
	dc.b	nEb6, $03, nRst, $01, nE6, $07, nRst, $01, nEb6, $03, nRst, $01
	smpsNoteFill        $06
	dc.b	nE6, $0C, nEb6
	smpsNoteFill        $00
	dc.b	nE6, $07, nRst, $01, nEb6, $03, nRst, $01, nE6, $07, nRst, $01
	smpsNoteFill        $06
	dc.b	nG6, $24
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $00
	dc.b	nE6, $07, nRst, $01, nF6, $03, nRst, $01, nG6, $0C, nRst
	smpsNoteFill        $04
	dc.b	nG6, $04, nE6, nF6, nG6, nF6, nE6, nD6, nC6, nB5, nA5, nG5
	dc.b	nFs5, nF5, nE5, nEb5, nD5, nCs5, nAb5

DancingLeaves_Loop10:
	dc.b	nA5, nE5
	smpsAlterVol        $02
	smpsLoop            $00, $03, DancingLeaves_Loop10
	smpsNoteFill        $00
	dc.b	nA5, $0C, nRst, nRst, $18
	smpsAlterVol        $FA
	smpsAlterVol        $FC
	smpsSetvoice        $02
	dc.b	nAb6, $07, nRst, $01
	smpsNoteFill        $04
	dc.b	nB6, $0C, nB6, $04, nRst, $0C, nB6, $08
	smpsNoteFill        $03
	dc.b	nB6, $04
	smpsNoteFill        $04
	dc.b	nB6, $08, $0C, nCs7, nCs7
	smpsNoteFill        $03
	dc.b	nEb7, $04
	smpsNoteFill        $05
	dc.b	nE7, $08, nEb7, nCs7
	smpsNoteFill        $00
	dc.b	nB6, $17, nRst, $01, nAb6, $13, nRst, $01
	smpsNoteFill        $04
	dc.b	nA6, $0C, nA6
	smpsNoteFill        $03
	dc.b	nB6, $04
	smpsNoteFill        $05
	dc.b	nC7, $08, nB6, nA6
	smpsNoteFill        $00
	dc.b	nAb6, $17, nRst, $01, nE6, $03, nRst, nRst, $06, nFs6, $07, nRst
	dc.b	$01, nG6, $1B, nRst, $01, nFs6, $0B, nRst, $01, nE6, $0B, nRst
	dc.b	$01, nF6, $17, nRst, $01, nD6, $03, nRst, nRst, $06, nE6, $07
	dc.b	nRst, $01, nF6, $1B, nRst, $01, nE6, $0B, nRst, $01, nEb6, $0B
	dc.b	nRst, $01, nE6, $06, nRst
	smpsAlterVol        $04
	smpsJump            DancingLeaves_Jump03

DancingLeaves_Call05:
	smpsNoteFill        $04
	dc.b	nG6, $08
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $04
	dc.b	nG6, $08, $0C
	smpsNoteFill        $05
	dc.b	nA6, $0C, nA6
	smpsNoteFill        $03
	dc.b	nB6, $04
	smpsNoteFill        $05
	dc.b	nC7, $08, nB6, nA6
	smpsReturn

DancingLeaves_Call06:
	smpsModSet          $16, $01, $79, $22
	dc.b	nG5, $18
	smpsModSet          $16, $01, $08, $04
	dc.b	nG6, $30, smpsNoAttack, $13, nRst, $01
	smpsModSet          $03, $01, $05, $03
	dc.b	nE6, $06, nRst, nF6, $03, nRst, $01, nG6, $07, nRst, $01, nF6
	dc.b	$03, nRst, $01
	smpsNoteFill        $0F
	dc.b	nE6, $14, nC6, $10
	smpsModSet          $16, $01, $08, $04
	smpsReturn

DancingLeaves_Call0A:
	smpsNoteFill        $06
	smpsPan             panCenter, $00
	dc.b	nE6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nE6, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nF6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nF6, $05
	smpsAlterVol        $F2
	dc.b	nRst, $0C
	smpsPan             panCenter, $00
	dc.b	nG6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nG6, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nG6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nG6, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nG6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nG6, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nG6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nG6, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nG6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nG6, $05
	smpsAlterVol        $F2
	smpsNoteFill        $00
	dc.b	nG6, $04
	smpsNoteFill        $06
	smpsPan             panCenter, $00
	dc.b	nF6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nF6, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nF6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nF6, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nE6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nE6, $0D
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nC6, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nC6, $09
	smpsAlterVol        $F2
	smpsNoteFill        $00
	smpsModSet          $16, $01, $08, $04
	smpsPan             panCenter, $00
	dc.b	nG5, $18
	smpsReturn

DancingLeaves_Call08:
	dc.b	nRst, $08, nG5, $03, nRst, $01, nE6, $07, nRst, $01, nG6, $03
	dc.b	nRst, $01
	smpsNoteFill        $06
	dc.b	nC7, $0C, nG6, $08, nA6, $0C, nC7, nF6, nA6
	smpsReturn

; FM4 Data
DancingLeaves_FM4:
	dc.b	nRst, $0C

DancingLeaves_Jump02:
	smpsSetvoice        $02
	smpsCall            DancingLeaves_Call03
	smpsNoteFill        $04
	dc.b	nE6, $0C, nC6, $08
	smpsNoteFill        $03
	dc.b	nC6, $04
	smpsNoteFill        $04
	dc.b	nC6, $08, $0C
	smpsNoteFill        $05
	dc.b	nD6, $0C, nD6
	smpsNoteFill        $03
	dc.b	nE6, $04
	smpsNoteFill        $05
	dc.b	nF6, $08, nE6, nD6
	smpsNoteFill        $04
	dc.b	nC6, $0C
	smpsCall            DancingLeaves_Call03
	smpsNoteFill        $04
	dc.b	nD6, $0C, nG6, $08
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $04
	dc.b	nG6, $08, $0C
	smpsNoteFill        $05
	dc.b	nG6, $0C, nG6
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $05
	dc.b	nG6, $08, nG6, nG6
	smpsSetvoice        $04
	smpsNoteFill        $04

DancingLeaves_Loop0C:
	smpsCall            DancingLeaves_Call09
	smpsLoop            $00, $10, DancingLeaves_Loop0C
	smpsNoteFill        $00
	dc.b	nRst, $30, nRst, nRst, nRst, $18
	smpsSetvoice        $07
	smpsNoteFill        $06
	dc.b	nE5, $0C, nF5, nRst, nG5, $08, $0C, nG5, nG5, nG5
	smpsNoteFill        $00
	dc.b	nG5, $03, nRst, $01
	smpsNoteFill        $06
	dc.b	nF5, $0C, nF5
	smpsNoteFill        $0F
	dc.b	nE5, $14, nC5, $10
	smpsNoteFill        $00
	dc.b	nG4, $23, nRst, $01
	smpsModSet          $16, $01, $79, $22
	dc.b	nG4, $18
	smpsModSet          $01, $01, $00, $00
	dc.b	nG5, $30, smpsNoAttack, $13, nRst, $01, nE5, $06, nRst, nF5, $03, nRst
	dc.b	$01, nG5, $07, nRst, $01, nF5, $03, nRst, $01
	smpsNoteFill        $0F
	dc.b	nE5, $14, nC5, $10
	smpsNoteFill        $00
	dc.b	nG4, $23, nRst, $01
	smpsNoteFill        $06
	dc.b	nE5, $0C, nF5, nRst, nG5, $08, $0C, nG5, nG5, nG5
	smpsNoteFill        $00
	dc.b	nG5, $03, nRst, $01
	smpsNoteFill        $06
	dc.b	nF5, $0C, nF5
	smpsNoteFill        $0F
	dc.b	nE5, $14, nC5, $10
	smpsNoteFill        $00
	dc.b	nG4, $17, nRst, $01
	smpsAlterVol        $FA
	smpsAlterPitch      $0C
	smpsSetvoice        $02
	dc.b	nG5, $04, nRst
	smpsNoteFill        $03
	dc.b	nG5, $04
	smpsNoteFill        $06
	dc.b	nA5, $08, nC6, $0C
	smpsNoteFill        $03
	dc.b	nA5, $04
	smpsAlterVol        $06
	smpsNoteFill        $00
	smpsAlterVol        $0A
	smpsSetvoice        $06
	smpsModSet          $0E, $01, $04, $03
	dc.b	nB4, $30, smpsNoAttack, $18, nRst, $08, nB4, $04, nRst, $0C, nBb4, $30
	dc.b	smpsNoAttack, $18, nRst, $08, nBb4, $04, nRst, $0C, nA4, $28, nRst, $08
	dc.b	nAb4, $28, nRst, $08, nG4, $0C, nRst, $08, nG4, $30, smpsNoAttack, $12
	dc.b	nRst, $0A
	smpsAlterPitch      $F4
	smpsAlterVol        $F6
	smpsPan             panLeft, $00
	smpsAlterVol        $FC
	smpsSetvoice        $08
	smpsNoteFill        $04
	dc.b	nG4, $04
	smpsAlterVol        $13
	dc.b	nG4, $08
	smpsAlterVol        $ED
	dc.b	nFs4, $04
	smpsAlterVol        $13
	dc.b	nFs4, $08
	smpsAlterVol        $ED
	smpsNoteFill        $00
	dc.b	nG4, $08
	smpsNoteFill        $04
	dc.b	nFs4, $04
	smpsAlterVol        $13
	dc.b	nFs4, $08
	smpsAlterVol        $ED
	dc.b	nG4, $04
	smpsAlterVol        $13
	dc.b	nG4, $20
	smpsAlterVol        $ED
	dc.b	nRst, $10
	smpsPan             panRight, $00
	dc.b	nG4, $04
	smpsAlterVol        $13
	dc.b	nG4, $08
	smpsAlterVol        $ED
	dc.b	nFs4, $04
	smpsAlterVol        $13
	dc.b	nFs4, $08
	smpsAlterVol        $ED
	smpsNoteFill        $00
	dc.b	nG4, $08, nFs4, $04, nG4, $08
	smpsNoteFill        $04
	dc.b	nBb4, $04
	smpsAlterVol        $13
	dc.b	nBb4, $20
	smpsAlterVol        $ED
	smpsNoteFill        $00
	smpsSetvoice        $07
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	dc.b	nBb4, $04, nRst, $0C, nA4, $28, nRst, $08, nAb4, $28, nRst, $08
	dc.b	nG4, $30, smpsNoAttack, $0C
	smpsAlterVol        $FC
	smpsAlterVol        $04
	smpsAlterVol        $0A
	smpsAlterPitch      $0C
	smpsSetvoice        $06
	dc.b	nE4, $0C, nRst, $08, nFs4, nRst, nAb4, $30, smpsNoAttack, $08, nRst, $04
	dc.b	nE4, $0C, nRst, $08, nFs4, nRst, nAb4, $30, smpsNoAttack, $08, nRst, $04
	dc.b	nE4, $0C, nRst, $08, nFs4, nRst, nAb4, $28, nRst, $08, nA4, $28
	dc.b	nRst, $08, nA4, $28, nRst, $08, nAb4, $28, nRst, $08, nG4, $0C
	smpsAlterPitch      $F4
	smpsModSet          $01, $01, $00, $00
	smpsAlterVol        $F6
	smpsJump            DancingLeaves_Jump02

DancingLeaves_Call03:
	smpsNoteFill        $04
	dc.b	nE6, $08
	smpsNoteFill        $03
	dc.b	nE6, $04
	smpsNoteFill        $04
	dc.b	nE6, $08, $0C
	smpsNoteFill        $05
	dc.b	nF6, $0C, nF6
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $05
	dc.b	nA6, $08, nG6, nF6
	smpsReturn

DancingLeaves_Call09:
	dc.b	nB5, $08, $0C, nB5, nB5, nB5, $04, nC6, $08, $0C, nC6, nC6
	dc.b	nC6, $04
	smpsReturn

; FM5 Data
DancingLeaves_FM5:
	dc.b	nRst, $0C
	smpsAlterVol        $13
	dc.b	nRst, $07

DancingLeaves_Jump01:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsModSet          $0C, $01, $02, $05
	smpsCall            DancingLeaves_Call05
	smpsNoteFill        $04
	dc.b	nG6, $0C, nE6, $08
	smpsNoteFill        $03
	dc.b	nE6, $04
	smpsNoteFill        $04
	dc.b	nE6, $08, $0C
	smpsNoteFill        $05
	dc.b	nF6, $0C, nF6
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $05
	dc.b	nA6, $08, nG6, nF6
	smpsNoteFill        $04
	dc.b	nE6, $0C
	smpsCall            DancingLeaves_Call05
	smpsNoteFill        $04
	dc.b	nG6, $0C, nC7, $08
	smpsNoteFill        $03
	dc.b	nC7, $04
	smpsNoteFill        $04
	dc.b	nC7, $08, $0C
	smpsNoteFill        $05
	dc.b	nB6, $0C, nB6
	smpsNoteFill        $03
	dc.b	nC7, $04
	smpsNoteFill        $05
	dc.b	nD7, $08, nC7, $09
	smpsAlterVol        $ED
	smpsNoteFill        $00
	smpsPan             panCenter, $00
	dc.b	nG6, $30, smpsNoAttack, $30, nRst, $30, nRst, nRst, nRst, nRst, nRst, $18
	dc.b	nRst, $09
	smpsAlterVol        $0E
	smpsModSet          $01, $01, $00, $00
	smpsAlterVol        $FC
	smpsSetvoice        $05
	smpsPan             panLeft, $00
	smpsCall            DancingLeaves_Call06
	smpsAlterVol        $F2
	dc.b	nG5, $1B
	smpsModSet          $03, $01, $05, $03
	smpsCall            DancingLeaves_Call07
	dc.b	smpsNoAttack, nC5, $0C, nRst, $09
	smpsAlterVol        $0E
	smpsCall            DancingLeaves_Call06
	smpsAlterVol        $F2
	dc.b	nG5, $1B
	smpsModSet          $03, $01, $05, $03
	smpsCall            DancingLeaves_Call07
	smpsAlterVol        $04
	smpsSetvoice        $02
	smpsPan             panRight, $00
	smpsModSet          $14, $01, $EC, $EF
	smpsAlterVol        $13
	dc.b	nRst, $07, nC7, $24
	smpsModSet          $0C, $01, $02, $05
	smpsCall            DancingLeaves_Call08
	smpsNoteFill        $00
	dc.b	nG6, $04, smpsNoAttack, $30, smpsNoAttack, $2F, nRst, $01
	smpsCall            DancingLeaves_Call08
	smpsNoteFill        $00
	dc.b	nG6, $04, smpsNoAttack, $30, smpsNoAttack, $07, nRst, $01
	smpsModSet          $01, $01, $00, $00
	dc.b	nRst, $02
	smpsAlterVol        $FB
	smpsSetvoice        $03
	smpsPan             panLeft, $00
	smpsAlterPitch      $F4
	smpsNoteFill        $07
	dc.b	nG4, $04, nA4, $08, nB4, $04, nC5, $08, nD5, $04, nE5, $08
	dc.b	nF5, $04
	smpsAlterVol        $0C

DancingLeaves_Loop08:
	dc.b	nG5, $04
	smpsAlterVol        $FF
	smpsLoop            $00, $0C, DancingLeaves_Loop08
	smpsNoteFill        $06
	smpsAlterVol        $FC
	dc.b	nG5, $13, nRst, $01
	smpsAlterVol        $04
	dc.b	nE5, $0C
	smpsNoteFill        $07
	dc.b	nF5, $04, nG5, $08, nF5, $04, nE5, $08, $0C, nC5, nC5, $04
	smpsNoteFill        $00
	dc.b	nG4, $1F, nRst, $01, nG4, $04, nE5, $0B, nRst, $01, nF5, $0B
	dc.b	nRst, $01, nRst, $0C
	smpsNoteFill        $07
	dc.b	nG5, $08, nC6, $04, nA5, $0C, nF5, $08, nB5, $04, nG5, $0C
	dc.b	nE5, $08, nA5, $04, nF5, $0C, nD5, $08

DancingLeaves_Loop09:
	dc.b	nG5, $04
	smpsAlterVol        $01
	smpsLoop            $00, $13, DancingLeaves_Loop09
	smpsAlterVol        $ED
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsAlterVol        $FC
	smpsSetvoice        $05
	smpsCall            DancingLeaves_Call06
	smpsAlterVol        $F2
	dc.b	nG5, $1B
	smpsModSet          $03, $01, $05, $03
	smpsCall            DancingLeaves_Call07
	dc.b	nRst, $24
	smpsModSet          $01, $01, $00, $00
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	smpsSetvoice        $02
	smpsModSet          $14, $01, $EC, $EF
	dc.b	nC6, $18
	smpsModSet          $01, $01, $00, $00
	smpsPan             panLeft, $00
	smpsAlterPitch      $F4
	dc.b	nRst, $09
	smpsAlterVol        $0E
	smpsSetvoice        $01
	smpsNoteFill        $03
	smpsAlterVol        $03

DancingLeaves_Loop0A:
	dc.b	nG5, $04, nG4
	smpsAlterVol        $01
	smpsLoop            $00, $06, DancingLeaves_Loop0A
	smpsAlterVol        $F7
	smpsNoteFill        $03
	dc.b	nE5, $08, nF5, $04, nG5, $08, nF5, $04, nE5, $14, nCs5, $10
	smpsNoteFill        $00
	dc.b	nG4, $0C, nRst, $0C, nRst, $08, nG4, $03, nRst, $01, nE5, $07
	dc.b	nRst, $01, nCs5, $03, nRst, $01, nAb5, $07, nRst, $01, nA5, $03
	dc.b	nRst, $01
	smpsNoteFill        $03
	dc.b	nE5, $04, nCs5, nD5, nE5, nF5, nA5
	smpsNoteFill        $0C
	dc.b	nE6, $18, nE6, nB5
	smpsNoteFill        $00
	dc.b	nD6, $12, nRst, $02, nC6, $27, nRst, $01
	smpsNoteFill        $06
	dc.b	nD6, $14
	smpsNoteFill        $00
	dc.b	nEb6, $0F, nRst, $01
	smpsNoteFill        $06
	dc.b	nE6, $0C, nEb6
	smpsNoteFill        $00
	dc.b	nE6, $07, nRst, $01
	smpsNoteFill        $06
	dc.b	nEb6, $0C, nE6, $24
	smpsNoteFill        $00
	dc.b	nEb6, $03, nRst, $01, nE6, $07, nRst, $01, nEb6, $03, nRst, $01
	smpsNoteFill        $06
	dc.b	nE6, $0C, nEb6
	smpsNoteFill        $00
	dc.b	nE6, $07, nRst, $01, nEb6, $03, nRst, $01, nE6, $07, nRst, $01
	smpsNoteFill        $06
	dc.b	nG6, $24
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $00
	dc.b	nE6, $07, nRst, $01, nF6, $03, nRst, $01, nG6, $0C, nRst
	smpsNoteFill        $04
	dc.b	nG6, $04, nE6, nF6, nG6, nF6, nE6, nD6, nC6, nB5, nA5, nG5
	dc.b	nFs5, nF5, nE5, nEb5, nD5, nCs5, nAb5

DancingLeaves_Loop0B:
	dc.b	nA5, nE5
	smpsAlterVol        $02
	smpsLoop            $00, $03, DancingLeaves_Loop0B
	smpsNoteFill        $00
	dc.b	nA5, $0C, nRst, nRst, $16
	smpsAlterVol        $FA
	smpsAlterVol        $05
	smpsAlterVol        $FC
	smpsModSet          $0C, $01, $02, $05
	smpsSetvoice        $02
	smpsPan             panRight, $00
	dc.b	nAb6, $07, nRst, $01
	smpsNoteFill        $04
	dc.b	nB6, $0C, $04, nRst, $0C, nB6, $08
	smpsNoteFill        $03
	dc.b	nB6, $04
	smpsNoteFill        $04
	dc.b	nB6, $08, $0C, nCs7, nCs7
	smpsNoteFill        $03
	dc.b	nEb7, $04
	smpsNoteFill        $05
	dc.b	nE7, $08, nEb7, nCs7
	smpsNoteFill        $00
	dc.b	nB6, $17, nRst, $01, nAb6, $13, nRst, $01
	smpsNoteFill        $04
	dc.b	nA6, $0C, nA6
	smpsNoteFill        $03
	dc.b	nB6, $04
	smpsNoteFill        $05
	dc.b	nC7, $08, nB6, nA6
	smpsNoteFill        $00
	dc.b	nAb6, $17, nRst, $01, nE6, $03, nRst, nRst, $06, nFs6, $07, nRst
	dc.b	$01, nG6, $1B, nRst, $01, nFs6, $0B, nRst, $01, nE6, $0B, nRst
	dc.b	$01, nF6, $17, nRst, $01, nD6, $03, nRst, nRst, $06, nE6, $07
	dc.b	nRst, $01, nF6, $1B, nRst, $01, nE6, $0B, nRst, $01, nEb6, $0B
	dc.b	nRst, $01, nE6, $06, nRst
	smpsAlterVol        $04
	smpsModSet          $01, $01, $00, $00
	smpsJump            DancingLeaves_Jump01

DancingLeaves_Call07:
	smpsNoteFill        $06
	smpsPan             panCenter, $00
	dc.b	nG5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nG5, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nA5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nA5, $05
	smpsAlterVol        $F2
	dc.b	nRst, $0C
	smpsPan             panCenter, $00
	dc.b	nB5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nB5, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nB5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nB5, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nB5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nB5, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nB5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nB5, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nB5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nB5, $05
	smpsAlterVol        $F2
	smpsNoteFill        $00
	dc.b	nB5, $04
	smpsNoteFill        $06
	smpsPan             panCenter, $00
	dc.b	nA5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nA5, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nA5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nA5, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nG5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nG5, $0D
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	nE5, $07
	smpsPan             panLeft, $00
	smpsAlterVol        $0E
	dc.b	nE5, $09
	smpsAlterVol        $F2
	smpsNoteFill        $00
	smpsModSet          $16, $01, $08, $04
	smpsPan             panCenter, $00
	dc.b	nC5, $18
	smpsPan             panLeft, $00
	smpsReturn

; FM6 Data
DancingLeaves_FM6:
	dc.b	nRst, $0C

DancingLeaves_Jump00:
	smpsModSet          $0C, $01, $02, $05
	smpsPan             panLeft, $00
	smpsAlterVol        $13
	dc.b	nRst, $07
	smpsSetvoice        $02
	smpsCall            DancingLeaves_Call03
	smpsNoteFill        $04
	dc.b	nE6, $0C, nC6, $08
	smpsNoteFill        $03
	dc.b	nC6, $04
	smpsNoteFill        $04
	dc.b	nC6, $08, $0C
	smpsNoteFill        $05
	dc.b	nD6, $0C, nD6
	smpsNoteFill        $03
	dc.b	nE6, $04
	smpsNoteFill        $05
	dc.b	nF6, $08, nE6, nD6
	smpsNoteFill        $04
	dc.b	nC6, $0C
	smpsCall            DancingLeaves_Call03
	smpsNoteFill        $04
	dc.b	nD6, $0C, nG6, $08
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $04
	dc.b	nG6, $08, $0C
	smpsNoteFill        $05
	dc.b	nG6, $0C, nG6
	smpsNoteFill        $03
	dc.b	nG6, $04
	smpsNoteFill        $05
	dc.b	nG6, $08, nG6, $09
	smpsAlterVol        $ED
	smpsPan             panCenter, $00
	smpsNoteFill        $04
	smpsModSet          $01, $01, $00, $00
	dc.b	nRst, $01
	smpsSetvoice        $04

DancingLeaves_Loop07:
	smpsCall            DancingLeaves_Call04
	smpsLoop            $00, $10, DancingLeaves_Loop07
	smpsNoteFill        $00
	dc.b	nRst, $2F, nRst, $30, nRst, nRst, $18
	smpsAlterVol        $13
	dc.b	nRst, $07
	smpsSetvoice        $07
	smpsNoteFill        $06
	dc.b	nE5, $0C, nF5, nRst, nG5, $08, $0C, nG5, nG5, nG5
	smpsNoteFill        $00
	dc.b	nG5, $03, nRst, $01
	smpsNoteFill        $06
	dc.b	nF5, $0C, nF5
	smpsNoteFill        $0F
	dc.b	nE5, $14, nC5, $10
	smpsNoteFill        $00
	dc.b	nG4, $23, nRst, $01
	smpsModSet          $16, $01, $79, $22
	dc.b	nG4, $18
	smpsModSet          $01, $01, $00, $00
	dc.b	nG5, $30, smpsNoAttack, $13, nRst, $01, nE5, $06, nRst, nF5, $03, nRst
	dc.b	$01, nG5, $07, nRst, $01, nF5, $03, nRst, $01
	smpsNoteFill        $0F
	dc.b	nE5, $14, nC5, $10
	smpsNoteFill        $00
	dc.b	nG4, $23, nRst, $01
	smpsNoteFill        $06
	dc.b	nE5, $0C, nF5, nRst, nG5, $08, $0C, nG5, nG5, nG5
	smpsNoteFill        $00
	dc.b	nG5, $03, nRst, $01
	smpsNoteFill        $06
	dc.b	nF5, $0C, nF5
	smpsNoteFill        $0F
	dc.b	nE5, $14, nC5, $10
	smpsNoteFill        $00
	dc.b	nG4, $17, nRst, $01
	smpsAlterVol        $FA
	smpsAlterPitch      $0C
	smpsSetvoice        $02
	dc.b	nG5, $04, nRst
	smpsNoteFill        $03
	dc.b	nG5, $04
	smpsNoteFill        $06
	dc.b	nA5, $08, nC6, $09
	smpsAlterVol        $ED
	smpsNoteFill        $00
	smpsAlterVol        $06
	smpsAlterVol        $0A
	smpsSetvoice        $06
	smpsModSet          $0A, $01, $04, $03
	dc.b	nG4, $30, smpsNoAttack, $18, nRst, $08, nG4, $04, nRst, $0C, nG4, $30
	dc.b	smpsNoAttack, $18, nRst, $08, nG4, $04, nRst, $0C, nF4, $28, nRst, $08
	dc.b	nF4, $28, nRst, $08, nE4, $0C, nRst, $08, nE4, $30, smpsNoAttack, $12
	dc.b	nRst, $0A, nB4, $30, smpsNoAttack, $18, nRst, $08, nB4, $04, nRst, $0C
	dc.b	nBb4, $30, smpsNoAttack, $18, nRst, $08, nBb4, $04, nRst, $0C, nF4, $28
	dc.b	nRst, $08, nF4, $28, nRst, $08, nE4, $0C, nRst, $08, nE4, $24
	dc.b	nRst, $04, nCs5, $0C, nRst, $08, nEb5, nRst, nE5, $30, smpsNoAttack, $08
	dc.b	nRst, $04, nCs5, $0C, nRst, $08, nEb5, nRst, nE5, $30, smpsNoAttack, $08
	dc.b	nRst, $04, nCs5, $0C, nRst, $08, nEb5, nRst, nE5, $28, nRst, $08
	dc.b	nC5, $28, nRst, $08, nC5, $28, nRst, $08, nB4, $28, nRst, $08
	dc.b	nC5, $0C
	smpsAlterPitch      $F4
	smpsAlterVol        $F6
	smpsModSet          $01, $01, $00, $00
	smpsJump            DancingLeaves_Jump00

DancingLeaves_Call04:
	dc.b	nG5, $08, $0C, nG5, nG5, nG5, $04, nA5, $08, $0C, nA5, nA5
	dc.b	nA5, $04
	smpsReturn

; PSG1 Data
DancingLeaves_PSG1:
	smpsPSGAlterVol     $06
	dc.b	nRst, $0C

DancingLeaves_Jump07:
	dc.b	nRst, $07, nRst, $24, nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	smpsPSGvoice        fTone_07 ; edited
	smpsNoteFill        $04

DancingLeaves_Loop1C:
	smpsCall            DancingLeaves_Call09
	smpsLoop            $00, $0F, DancingLeaves_Loop1C
	dc.b	nB5, $08, $0C, nB5, nB5, nB5, $04, nC6, $08, $0C, nC6, nC6
	dc.b	$09
	smpsPSGAlterVol     $FD

DancingLeaves_Loop1D:
	dc.b	nB5, $08, $0C, nB5, nB5, nB5, $04, nC6, $08, $0C, nC6, nC6
	dc.b	nC6, $04
	smpsLoop            $00, $04, DancingLeaves_Loop1D
	smpsPSGAlterVol     $FE

DancingLeaves_Loop1E:
	dc.b	nB5, $08, $0C, nB5, nB5, nB5, $04, nC6, $08, $0C, nC6, nC6
	dc.b	nC6, $04
	smpsLoop            $00, $04, DancingLeaves_Loop1E
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $03
	smpsPSGAlterVol     $FD
	smpsNoteFill        $00
	smpsPSGvoice        fTone_0B ; from 1B... idk man
	smpsModSet          $08, $02, $05, $02
	dc.b	nE5, $30, smpsNoAttack, $18, nRst, $08, nE5, $04, nRst, $0C, nE5, $30
	dc.b	smpsNoAttack, $18, nRst, $08, nE5, $04, nRst, $0C, nE5, $28, nRst, $08
	dc.b	nE5, $28, nRst, $08, nD5, $0C, nRst, $08, nC5, $30, smpsNoAttack, $12
	dc.b	nRst, $0A, nC5, $30, smpsNoAttack, $18, nRst, $08, nC5, $04, nRst, $0C
	dc.b	nCs5, $30, smpsNoAttack, $18, nRst, $08, nC5, $04, nRst, $0C, nC5, $28
	dc.b	nRst, $08, nB4, $28, nRst, $08, nB4, $0C, nRst, $08, nB4, $24
	dc.b	nRst, $04, nRst, $24, nRst, $30, nRst, nRst, nRst, nRst, nG4, $28
	dc.b	nRst, $08, nE5, $28, nRst, $08, nEb5, $28, nRst, $08, nE5, $0C
	smpsModSet          $01, $01, $00, $00
	smpsPSGAlterVol     $03
	smpsJump            DancingLeaves_Jump07

; PSG2 Data
DancingLeaves_PSG2:
	smpsPSGAlterVol     $06
	dc.b	nRst, $0C

DancingLeaves_Jump06:
	dc.b	nRst, $06, nRst, $24, nRst, $30, nRst, nRst, nRst, nRst, nRst, nRst
	smpsPSGvoice        fTone_07 ; edited
	dc.b	nRst, $01
	smpsNoteFill        $04

DancingLeaves_Loop19:
	smpsCall            DancingLeaves_Call04
	smpsLoop            $00, $0F, DancingLeaves_Loop19
	dc.b	nG5, $08, $0C, nG5, nG5, nG5, $04, nA5, $08, $0C, nA5, nA5
	dc.b	$0A
	smpsPSGAlterVol     $FD

DancingLeaves_Loop1A:
	dc.b	nG5, $08, $0C, nG5, nG5, nG5, $04, nA5, $08, $0C, nA5, nA5
	dc.b	nA5, $04
	smpsLoop            $00, $04, DancingLeaves_Loop1A
	smpsPSGAlterVol     $FE

DancingLeaves_Loop1B:
	dc.b	nG5, $08, $0C, nG5, nG5, nG5, $04, nA5, $08, $0C, nA5, nA5
	dc.b	nA5, $04
	smpsLoop            $00, $03, DancingLeaves_Loop1B
	dc.b	nG5, $08, $0C, nG5, nG5, nG5, $04, nA5, $08, $0C, nA5, nA5
	dc.b	nA5, $03
	smpsPSGAlterVol     $02
	smpsPSGAlterVol     $03
	smpsNoteFill        $00
	smpsPSGAlterVol     $FD
	smpsPSGvoice        fTone_0B ; from 1B... idk man
	smpsModSet          $0C, $02, $05, $02
	dc.b	nC5, $30, smpsNoAttack, $18, nRst, $08, nC5, $04, nRst, $0C, nCs5, $30
	dc.b	smpsNoAttack, $18, nRst, $08, nC5, $04, nRst, $0C, nC5, $28, nRst, $08
	dc.b	nB4, $28, nRst, $08, nB4, $0C, nRst, $08, nB4, $30, smpsNoAttack, $12
	dc.b	nRst, $0A, nE5, $30, smpsNoAttack, $18, nRst, $08, nE5, $04, nRst, $0C
	dc.b	nE5, $30, smpsNoAttack, $18, nRst, $08, nE5, $04, nRst, $0C, nE5, $28
	dc.b	nRst, $08, nE5, $28, nRst, $08, nD5, $0C, nRst, $08, nC5, $24
	dc.b	nRst, $04, nA4, $0C, nRst, $08, nB4, nRst, nB4, $30, smpsNoAttack, $08
	dc.b	nRst, $04, nA4, $0C, nRst, $08, nB4, nRst, nB4, $30, smpsNoAttack, $08
	dc.b	nRst, $04, nA4, $0C, nRst, $08, nB4, nRst, nB4, $28, nRst, $08
	dc.b	nE5, $28, nRst, $08, nF4, $28, nRst, $08, nF4, $28, nRst, $08
	dc.b	nE4, $0C
	smpsModSet          $01, $01, $00, $00
	smpsPSGAlterVol     $03
	smpsJump            DancingLeaves_Jump06

; PSG3 Data
DancingLeaves_PSG3:
	smpsAlterPitch      $F7
	smpsPSGform         $E7

DancingLeaves_Jump05:
	smpsPSGvoice        fTone_07 ; edited
	dc.b	nB6, $2C, $0C, $28, $18, $14, $0C, $18, $10, $2C, $0C, $28
	dc.b	nB6, $0C
	smpsPSGvoice        fTone_09 ; from 18... idk man
	dc.b	nC7, $08, $04
	smpsPSGvoice        fTone_07 ; edited
	dc.b	nB6, $0C
	smpsPSGvoice        fTone_09 ; from 18... idk man
	dc.b	nC7, $08, $04
	smpsPSGvoice        fTone_07 ; edited
	dc.b	nB6, $0C, nB6, nB6, nB6

DancingLeaves_Loop14:
	smpsPSGvoice        fTone_07 ; edited
	dc.b	nB6, $0C
	smpsPSGvoice        fTone_09 ; from 18... idk man
	dc.b	nC7, $08, $04
	smpsLoop            $00, $3E, DancingLeaves_Loop14
	smpsPSGvoice        fTone_07 ; edited

DancingLeaves_Loop15:
	dc.b	nB6, $0C
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, DancingLeaves_Loop15

DancingLeaves_Loop16:
	smpsPSGvoice        fTone_07 ; edited
	dc.b	nB6, $0C
	smpsPSGvoice        fTone_09 ; from 18... idk man
	dc.b	nC7, $08, $04
	smpsLoop            $00, $0E, DancingLeaves_Loop16
	smpsPSGvoice        fTone_07 ; edited

DancingLeaves_Loop17:
	dc.b	nB6, $0C
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $04, DancingLeaves_Loop17

DancingLeaves_Loop18:
	smpsPSGvoice        fTone_07 ; edited
	dc.b	nB6, $0C
	smpsPSGvoice        fTone_09 ; from 18... idk man
	dc.b	nC7, $08, $04
	smpsLoop            $00, $40, DancingLeaves_Loop18
	smpsJump            DancingLeaves_Jump05

; DAC Data
DancingLeaves_DAC:
	dc.b	dSnare, $2C, $0C, $28, $18, $14, $0C, $18, $10, $2C, $0C, $28

DancingLeaves_Loop00:
	dc.b	dSnare, $14, dKick, $04
	smpsLoop            $00, $04, DancingLeaves_Loop00

DancingLeaves_Loop01:
	smpsCall            DancingLeaves_Call00
	smpsLoop            $00, $48, DancingLeaves_Loop01
	smpsJump            DancingLeaves_DAC

DancingLeaves_Call00:
	dc.b	dSnare, $14, dKick, $04, dSnare, $18
	smpsReturn

; FM1 Data
DancingLeaves_FM1:
	dc.b	nG1, $2C, $0C, $28, $18, $14, $0C, $18, $10, $2C, $0C, $28
	smpsCall            DancingLeaves_Call01

DancingLeaves_Loop02:
	smpsCall            DancingLeaves_Call02
	smpsLoop            $00, $1E, DancingLeaves_Loop02
	smpsCall            DancingLeaves_Call02
	dc.b	nD0, $0C, $14, $04, $08, $04

DancingLeaves_Loop03:
	dc.b	nRst, $30, nRst
	smpsLoop            $01, $03, DancingLeaves_Loop03
	dc.b	nD0, $0C, nD0, nD0, $08, $04, $08, $02, nD0, nG1, $08, $0C
	dc.b	$04, $08, $04, $08, $04

DancingLeaves_Loop04:
	smpsCall            DancingLeaves_Call02
	smpsLoop            $00, $06, DancingLeaves_Loop04
	smpsCall            DancingLeaves_Call01

DancingLeaves_Loop06:
	dc.b	nRst, $0C

DancingLeaves_Loop05:
	dc.b	nG1, $18
	smpsLoop            $00, $07, DancingLeaves_Loop05
	dc.b	nG1, $08, $04
	smpsLoop            $01, $06, DancingLeaves_Loop06
	smpsJump            DancingLeaves_FM1

DancingLeaves_Call01:
	dc.b	nG1, $0C, nG1, nG1, $08, $04, $08, nD0, $02, nD0, nG1, $08
	dc.b	$0C, nG1, nG1, $04, $08, $04
	smpsReturn

DancingLeaves_Call02:
	dc.b	nRst, $08, nD0, $0C, $10, nG1, $08, $04
	smpsReturn

DancingLeaves_Voices:
;	Voice $00
;	$32
;	$40, $30, $60, $30, 	$1F, $1F, $1F, $1F, 	$0A, $08, $08, $09
;	$0B, $0E, $0C, $0A, 	$0F, $0E, $0F, $0F, 	$25, $10, $20, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $06, $03, $04
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $08, $08, $0A
	smpsVcDecayRate2    $0A, $0C, $0E, $0B
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0E, $0F
	smpsVcTotalLevel    $00, $20, $10, $25

;	Voice $01
;	$04
;	$27, $01, $2A, $22, 	$57, $57, $15, $15, 	$05, $05, $09, $09
;	$03, $03, $06, $06, 	$28, $28, $28, $28, 	$26, $80, $20, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $00, $02
	smpsVcCoarseFreq    $02, $0A, $01, $07
	smpsVcRateScale     $00, $00, $01, $01
	smpsVcAttackRate    $15, $15, $17, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $05, $05
	smpsVcDecayRate2    $06, $06, $03, $03
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $20, $00, $26

;	Voice $02
;	$3A
;	$01, $01, $00, $01, 	$50, $15, $0F, $52, 	$04, $0E, $0E, $0E
;	$00, $00, $00, $00, 	$48, $08, $08, $09, 	$1C, $43, $30, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $01, $01
	smpsVcRateScale     $01, $00, $00, $01
	smpsVcAttackRate    $12, $0F, $15, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $0E, $0E, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $04
	smpsVcReleaseRate   $09, $08, $08, $08
	smpsVcTotalLevel    $00, $30, $43, $1C

;	Voice $03
;	$2C
;	$6E, $64, $2F, $24, 	$5C, $58, $5C, $58, 	$0C, $0A, $0C, $0C
;	$05, $05, $05, $05, 	$FF, $EF, $DF, $EF, 	$2B, $80, $31, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $06, $06
	smpsVcCoarseFreq    $04, $0F, $04, $0E
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $18, $1C, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0C, $0A, $0C
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $0E, $0D, $0E, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $31, $00, $2B

;	Voice $04
;	$3C
;	$3F, $33, $30, $31, 	$96, $D9, $97, $D9, 	$1C, $06, $12, $04
;	$01, $01, $01, $01, 	$A7, $27, $E7, $17, 	$28, $8A, $1E, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $03, $0F
	smpsVcRateScale     $03, $02, $03, $02
	smpsVcAttackRate    $19, $17, $19, $16
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $12, $06, $1C
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $01, $0E, $02, $0A
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $1E, $0A, $28

;	Voice $05
;	$39
;	$32, $33, $33, $31, 	$DF, $DF, $DF, $9F, 	$07, $04, $04, $0D
;	$04, $04, $04, $03, 	$FF, $FF, $FF, $0F, 	$29, $23, $2B, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $03, $03, $02
	smpsVcRateScale     $02, $03, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $04, $04, $07
	smpsVcDecayRate2    $03, $04, $04, $04
	smpsVcDecayLevel    $00, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2B, $23, $29

;	Voice $06
;	$3A
;	$01, $05, $00, $01, 	$0D, $15, $15, $17, 	$04, $05, $04, $03
;	$00, $00, $00, $00, 	$07, $07, $17, $07, 	$1B, $47, $1F, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $05, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $15, $15, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $04, $05, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $00, $00
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $1F, $47, $1B

;	Voice $07
;	$3D
;	$01, $01, $02, $01, 	$4C, $17, $50, $19, 	$0B, $05, $01, $02
;	$01, $00, $00, $00, 	$2F, $2F, $2F, $1F, 	$1D, $80, $86, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $01
	smpsVcRateScale     $00, $01, $00, $01
	smpsVcAttackRate    $19, $10, $17, $0C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $01, $05, $0B
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $06, $00, $1D

;	Voice $08
;	$3D
;	$01, $01, $02, $01, 	$5C, $17, $57, $19, 	$0B, $05, $01, $02
;	$01, $00, $00, $00, 	$2F, $2F, $2F, $1F, 	$1D, $80, $86, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $01
	smpsVcRateScale     $00, $01, $00, $01
	smpsVcAttackRate    $19, $17, $17, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $01, $05, $0B
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $06, $00, $1D

