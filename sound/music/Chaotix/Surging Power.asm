SurgingPower_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SurgingPower_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       SurgingPower_DAC,	$00, $F2
	smpsHeaderFM        SurgingPower_FM1,	$00, $00
	smpsHeaderFM        SurgingPower_FM2,	$00, $00
	smpsHeaderFM        SurgingPower_FM3,	$00, $00
	smpsHeaderFM        SurgingPower_FM4,	$00, $00
	smpsHeaderFM        SurgingPower_FM5,	$00, $00
	smpsHeaderFM        SurgingPower_FM6,	$00, $00
	smpsHeaderPSG       SurgingPower_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       SurgingPower_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       SurgingPower_PSG3,	$00, $00, $00, $00

; DAC Data
SurgingPower_DAC:
	smpsStop
; FM1 Data
SurgingPower_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsSetvoice        $02
	smpsAlterVol        $8E
	dc.b	smpsNoAttack, $2B

SurgingPower_Loop00:
	dc.b	nBb1, $0B, nBb2, $05, nRst, $06
	smpsLoop            $00, $03, SurgingPower_Loop00
	dc.b	nBb1, $0B, nBb2, $06

SurgingPower_Loop01:
	dc.b	nRst, $05, nA1, $0B, nA2, $06
	smpsLoop            $00, $02, SurgingPower_Loop01

SurgingPower_Loop02:
	dc.b	nRst, $05, nD2, $0B, nD3, $06
	smpsLoop            $00, $02, SurgingPower_Loop02
	dc.b	nRst, nBb1, $01

SurgingPower_Jump05:
	dc.b	smpsNoAttack, nBb1, $0A

SurgingPower_Loop03:
	dc.b	nBb2, $05, nRst, $06, nBb1, $0B
	smpsLoop            $00, $03, SurgingPower_Loop03
	dc.b	nBb2, $05, nRst, $06, nA1, $0B, nA2, $05, nRst, $06, nA1, $0B
	dc.b	nA2, $06, nRst, $26, nD3, $06

SurgingPower_Loop04:
	dc.b	nRst, $05, nBb1, $0B, nBb2, $06
	smpsLoop            $00, $02, SurgingPower_Loop04
	dc.b	nRst

SurgingPower_Loop05:
	dc.b	nBb1, $0B, nBb2, $05, nRst, $06
	smpsLoop            $00, $02, SurgingPower_Loop05

SurgingPower_Loop06:
	dc.b	nA1, $0B, nA2, $05, nRst, $06
	smpsLoop            $00, $02, SurgingPower_Loop06
	dc.b	nD2, $0B, nD3, $05, nRst, $06, nD2, $0B, nD3, $06

SurgingPower_Loop07:
	dc.b	nRst, $05, nBb1, $0B, nBb2, $06
	smpsLoop            $00, $02, SurgingPower_Loop07

SurgingPower_Loop08:
	dc.b	nRst, $05, nEb2, $0B, nEb3, $06
	smpsLoop            $00, $02, SurgingPower_Loop08
	dc.b	nRst

SurgingPower_Loop09:
	dc.b	nC2, $0B, nC3, $05, nRst, $06
	smpsLoop            $00, $04, SurgingPower_Loop09

SurgingPower_Loop0A:
	dc.b	nBb1, $0B, nBb2, $06, nRst, $05
	smpsLoop            $00, $04, SurgingPower_Loop0A
	dc.b	nA1, $0B, nA2, $06, nRst, $05, nA1, $0B, nA2, $06, nRst

SurgingPower_Loop0B:
	dc.b	nD2, $0B, nD3, $05, nRst, $06
	smpsLoop            $00, $02, SurgingPower_Loop0B
	dc.b	nBb1, $01
	smpsPan             panCenter, $00
	smpsJump            SurgingPower_Jump05

; FM2 Data
SurgingPower_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	smpsNoAttack, $36, nA3, $05
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $05, nA3, $06
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0B, nA3, $06, nC4, $05
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $0B, nA3, $06
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $11, nF4, $05
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nC4, $21
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nBb3, $0D

SurgingPower_Jump04:
	dc.b	smpsNoAttack, nBb3, $04
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$05
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $05, nG3, $06
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nC4, $37
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $31, nA3, $06
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $06, nA3, $05
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B, nA3, $06, nC4, $05
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $0B, nA3, $05
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $10, nF4, $06
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nC4, $21
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nBb3, $11
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$06
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $06, nG3, $05
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD3, $0B
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nF3, $17, nG3, $47
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0B, nA3, $06
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $06, nA3, $05
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B, nA3, $05, nC4, $06
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD4, $0B, nA3, $06
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $11, nF4, $05
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nC4, $22
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nBb3, $0C
	smpsPan             panCenter, $00
	smpsJump            SurgingPower_Jump04

; FM3 Data
SurgingPower_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $92
	dc.b	smpsNoAttack, $36, nF3, $05
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nF3, $06
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B, $06, $05
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0B, nE3, $06
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $11, $05
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nA3, $21
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nF3, $0D

SurgingPower_Jump03:
	dc.b	smpsNoAttack, nF3, $04
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$05
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nD3, $06
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$0B
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nG3, $16, nA3, $21
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $31, nF3, $06
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $06, nF3, $05
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$0B, $06, $05
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0B, nE3, $05
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $10, $06
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nA3, $21
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nF3, $11
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$06
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $06, nD3, $05
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nBb2, $0B
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$0B
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nC3, $5E
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $0B, nF3, $06
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE3, $06, nF3, $05
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$0B, $05, $06
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $0B, nE3, $06
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nG3, $11, $05
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nA3, $22
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nRst, $06, nF3, $0C
	smpsPan             panCenter, $00
	smpsJump            SurgingPower_Jump03

; FM4 Data
SurgingPower_FM4:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $97
	dc.b	smpsNoAttack, $36, nF4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0C
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0B, nRst, nF4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0C, nRst, $01

SurgingPower_Jump02:
	dc.b	nRst, $0A, nF4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B, nRst, nF4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0B, nRst, nF4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B, nRst, nF4
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0C
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0B, nRst, nF4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0C, nRst, $0B, nF4
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B, nRst, nF4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nD4, $0B, nRst, nF4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nE4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nD4, $0B, nRst, $01
	smpsPan             panCenter, $00
	smpsJump            SurgingPower_Jump02

; FM5 Data
SurgingPower_FM5:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $97
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, $36, nD4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0C
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B, nRst, nD4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0C, nRst, $01

SurgingPower_Jump01:
	dc.b	nRst, $0A, nD4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$0B, nRst, nD4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B, nRst, nD4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$0B, nRst, nD4
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0C
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B, nRst, nD4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nBb3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nBb3, $0C, nRst, $0B, nD4
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$0B, nRst, nD4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B, nRst, nD4
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nC4, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nA3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	$0B, nRst, $01
	smpsPan             panRight, $00
	smpsJump            SurgingPower_Jump01

; FM6 Data
SurgingPower_FM6:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $01
	smpsSetvoice        $04
	smpsAlterVol        $97
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, $36, nA3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE3, $0C
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nF3, $0B, nRst, nA3
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nE3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nF3, $0C, nRst, $01

SurgingPower_Jump00:
	dc.b	nRst, $0A, nA3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B, nRst, nA3
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nE3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nF3, $0B, nRst, nA3
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B, nRst, nA3
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE3, $0C
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nF3, $0B, nRst, nA3
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	$0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nG3, $0C, nRst, $0B, nA3
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B, nRst, nA3
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nE3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nF3, $0B, nRst, nA3
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nG3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B
	smpsAlterVol        $0A
	dc.b	$05
	smpsAlterVol        $F6
	dc.b	nE3, $0B
	smpsAlterVol        $0A
	dc.b	$06
	smpsAlterVol        $F6
	dc.b	nF3, $0B, nRst, $01
	smpsPan             panLeft, $00
	smpsJump            SurgingPower_Jump00

; PSG1 Data
SurgingPower_PSG1:
	dc.b	nRst, $2C
	smpsPSGAlterVol     $05
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop64:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop64
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop65:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop65
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop66:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop66
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop67:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop67
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop68:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop68
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop69:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop69
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03

SurgingPower_Loop6A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop6A
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop6B:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop6B
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop6C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop6C
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop6D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop6D
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop6E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop6E
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop6F:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop6F
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop70:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop70
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop71:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop71
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop72:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop72
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop73:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop73
	smpsPSGAlterVol     $FA
	dc.b	$03

SurgingPower_Loop74:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop74
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03

SurgingPower_Jump08:
	dc.b	nF1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop75:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop75
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop76:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop76
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop77:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop77
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop78:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop78
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop79:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop79
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop7A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop7A
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop7B:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop7B
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop7C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop7C
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop7D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop7D
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop7E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop7E
	smpsPSGAlterVol     $FA
	dc.b	$03

SurgingPower_Loop7F:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop7F
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop80:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop80
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2, nRst, $2C
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop81:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop81
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop82:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop82
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop83:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop83
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop84:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop84
	smpsPSGAlterVol     $FA
	dc.b	$03

SurgingPower_Loop85:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop85
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop86:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop86
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop87:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop87
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop88:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop88
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop89:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop89
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop8A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop8A
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop8B:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop8B
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop8C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop8C
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop8D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop8D
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop8E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop8E
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop8F:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop8F
	smpsPSGAlterVol     $FA
	dc.b	$03

SurgingPower_Loop90:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop90
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop91:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop91
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop92:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop92
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop93:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop93
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop94:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop94
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop95:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop95
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop96:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop96
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop97:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop97
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop98:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop98
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop99:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop99
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03

SurgingPower_Loop9A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop9A
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop9B:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop9B
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop9C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop9C
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop9D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop9D
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop9E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop9E
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_Loop9F:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop9F
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_LoopA0:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA0
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_LoopA1:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA1
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_LoopA2:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA2
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_LoopA3:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA3
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03

SurgingPower_LoopA4:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA4
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_LoopA5:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA5
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_LoopA6:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA6
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_LoopA7:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA7
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_LoopA8:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA8
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_LoopA9:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopA9
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_LoopAA:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopAA
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_LoopAB:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopAB
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_LoopAC:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopAC
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_LoopAD:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopAD
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_LoopAE:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopAE
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03

SurgingPower_LoopAF:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopAF
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_LoopB0:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopB0
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF2, $03

SurgingPower_LoopB1:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopB1
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_LoopB2:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopB2
	smpsPSGAlterVol     $FA
	dc.b	nF2, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_LoopB3:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_LoopB3
	smpsPSGAlterVol     $FA
	dc.b	nF1
	smpsPSGAlterVol     $06
	smpsJump            SurgingPower_Jump08

; PSG2 Data
SurgingPower_PSG2:
	dc.b	nRst, $2C
	smpsPSGAlterVol     $04
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop14:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop14
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop15:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop15
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop16:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop16
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop17:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop17
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop18:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop18
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop19:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop19
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03

SurgingPower_Loop1A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop1A
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop1B:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop1B
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop1C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop1C
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop1D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop1D
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop1E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop1E
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop1F:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop1F
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop20:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop20
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop21:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop21
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop22:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop22
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop23:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop23
	smpsPSGAlterVol     $FA
	dc.b	$03

SurgingPower_Loop24:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop24
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03

SurgingPower_Jump07:
	dc.b	nF0, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop25:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop25
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop26:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop26
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop27:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop27
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop28:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop28
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop29:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop29
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop2A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop2A
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop2B:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop2B
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop2C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop2C
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop2D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop2D
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop2E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop2E
	smpsPSGAlterVol     $FA
	dc.b	$03

SurgingPower_Loop2F:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop2F
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop30:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop30
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1, nRst, $2C
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop31:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop31
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop32:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop32
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop33:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop33
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop34:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop34
	smpsPSGAlterVol     $FA
	dc.b	$03

SurgingPower_Loop35:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop35
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop36:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop36
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop37:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop37
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop38:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop38
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop39:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop39
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop3A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop3A
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop3B:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop3B
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop3C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop3C
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop3D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop3D
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop3E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop3E
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop3F:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop3F
	smpsPSGAlterVol     $FA
	dc.b	$03

SurgingPower_Loop40:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop40
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop41:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop41
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop42:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop42
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop43:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop43
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop44:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop44
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop45:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop45
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop46:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop46
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop47:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop47
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop48:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop48
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop49:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop49
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03

SurgingPower_Loop4A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop4A
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop4B:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop4B
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop4C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop4C
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop4D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop4D
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop4E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop4E
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop4F:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop4F
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop50:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop50
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop51:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop51
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop52:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop52
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop53:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop53
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03

SurgingPower_Loop54:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop54
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop55:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop55
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop56:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop56
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop57:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop57
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop58:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop58
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop59:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop59
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop5A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop5A
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop5B:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop5B
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop5C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop5C
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop5D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop5D
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop5E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop5E
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03

SurgingPower_Loop5F:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop5F
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop60:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop60
	smpsPSGAlterVol     $FA
	dc.b	nF0, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF0
	smpsPSGAlterVol     $FC
	dc.b	nF1, $03

SurgingPower_Loop61:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop61
	smpsPSGAlterVol     $FA
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	nF0, $03

SurgingPower_Loop62:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop62
	smpsPSGAlterVol     $FA
	dc.b	nF1, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nF1
	smpsPSGAlterVol     $FC
	dc.b	$03

SurgingPower_Loop63:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, SurgingPower_Loop63
	smpsPSGAlterVol     $FA
	dc.b	nF0
	smpsPSGAlterVol     $06
	smpsJump            SurgingPower_Jump07

; PSG3 Data
SurgingPower_PSG3:
	dc.b	nRst, $01
	smpsPSGAlterVol     $02
	smpsPSGform         $E7
	dc.b	$02

SurgingPower_Loop0C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FC
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsLoop            $00, $05, SurgingPower_Loop0C

SurgingPower_Loop0D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FA
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FF
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsLoop            $00, $04, SurgingPower_Loop0D
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FA
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FF
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	$03

SurgingPower_Jump06:
	dc.b	$02

SurgingPower_Loop0E:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FC
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsLoop            $00, $05, SurgingPower_Loop0E
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FA
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FF
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00, nRst, $1B
	smpsPSGAlterVol     $FD
	dc.b	$01

SurgingPower_Loop0F:
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FA
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FF
	dc.b	$00
	smpsLoop            $00, $02, SurgingPower_Loop0F
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00

SurgingPower_Loop10:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FC
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, SurgingPower_Loop10

SurgingPower_Loop11:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FA
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FF
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, SurgingPower_Loop11
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FA
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FF
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00

SurgingPower_Loop12:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FC
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, SurgingPower_Loop12

SurgingPower_Loop13:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FA
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FF
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, SurgingPower_Loop13
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FA
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FF
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00, $01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FC
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FC
	dc.b	$00, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $02
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $FD
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $01
	dc.b	$00, $02
	smpsPSGAlterVol     $01
	dc.b	$00
	smpsPSGAlterVol     $FB
	dc.b	$00, $01
	smpsPSGAlterVol     $05
	smpsJump            SurgingPower_Jump06

SurgingPower_Voices:
;	Voice $00
;	$3C
;	$01, $03, $00, $00, 	$1F, $00, $00, $00, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$7F, $00, $7F, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $00, $00, $00, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $7F, $00, $7F

;	Voice $01
;	$00
;	$00, $00, $00, $00, 	$00, $00, $00, $00, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$7F, $7F, $7F, $00
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
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $02
;	$3C
;	$01, $03, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $0D, $10, $05
;	$07, $04, $09, $02, 	$55, $1A, $55, $1A, 	$0E, $00, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $03, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $10, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $05, $01, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $08, $00, $0E

;	Voice $03
;	$3D
;	$02, $02, $01, $02, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$14, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $02, $02
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $14

;	Voice $04
;	$33
;	$11, $08, $11, $02, 	$5F, $9F, $5F, $1F, 	$0B, $0F, $02, $09
;	$10, $13, $13, $10, 	$05, $15, $25, $3A, 	$0A, $1D, $09, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $01
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $02, $0F, $0B
	smpsVcDecayRate2    $10, $13, $13, $10
	smpsVcDecayLevel    $03, $02, $01, $00
	smpsVcReleaseRate   $0A, $05, $05, $05
	smpsVcTotalLevel    $00, $09, $1D, $0A

