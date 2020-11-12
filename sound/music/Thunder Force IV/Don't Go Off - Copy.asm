DontGoOff_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     DontGoOff_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       DontGoOff_DAC,	$00, $F2
	smpsHeaderFM        DontGoOff_FM1,	$00, $00
	smpsHeaderFM        DontGoOff_FM2,	$00, $00
	smpsHeaderFM        DontGoOff_FM3,	$00, $00
	smpsHeaderFM        DontGoOff_FM4,	$00, $00
	smpsHeaderFM        DontGoOff_FM5,	$00, $00
	smpsHeaderFM        DontGoOff_FM6,	$00, $00
	smpsHeaderPSG       DontGoOff_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       DontGoOff_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       DontGoOff_PSG3,	$00, $00, $00, $00

; DAC Data
DontGoOff_DAC:
; PSG3 Data
DontGoOff_PSG3:
	smpsStop

; FM1 Data
DontGoOff_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $12
	smpsPan             panCenter, $00
	dc.b	nG2, $05, nRst, nG2, nRst, $04, nG2, $05, nRst, nA2, $04, nRst
	dc.b	$05, nA2, nRst, nA2, $04, nRst, $05, nB2, nRst, $04, nB2, $05
	dc.b	nRst, $19
	smpsModSet          $00, $02, $01, $03

DontGoOff_Loop06:
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop06
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $0A, nC3, $01
	smpsModOff
	dc.b	smpsNoAttack, $1C

DontGoOff_Jump05:
	dc.b	smpsNoAttack, nC3, $01
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, nC3
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nC3
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, nC3
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, nC3
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $03
	smpsModOff
	dc.b	nC3, $04, nRst, $0A, nC3, $04, nRst, $0A, nC3, $04, nRst, $03
	dc.b	nC3, $0B, nRst, $0A, nC3, $1E
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03

DontGoOff_Loop07:
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop07
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $02, nC3, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $09, nC3, $05, nRst, $09, nC3, $05, nRst, $03
	dc.b	smpsNoAttack, nC3, $0B, nRst, $0A, nBb2, $1D
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $02, $03

DontGoOff_Loop08:
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop08
	dc.b	smpsNoAttack, nBb2
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, nBb2
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, nBb2
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $12, nRst, $02, nBb2, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $09, nBb2, $05, nRst, $09, nBb2, $05, nRst, $02
	dc.b	nBb2, $0C, nRst, $09, nBb2, $1E
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $03
	smpsModOff
	dc.b	nBb2, $04, nRst, $0A, nBb2, $04, nRst, $0A, nBb2, $04, nRst, $03
	dc.b	nBb2, $0C, nRst, $09, nC3, $1D
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $02, $03

DontGoOff_Loop09:
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop09
	dc.b	smpsNoAttack, nC3
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $12, nRst, $02, nC3, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $09, nC3, $05, nRst, $09, nC3, $05, nRst, $03
	dc.b	nC3, $0B, nRst, $0A, nC3, $1D
	smpsModSet          $00, $02, $01, $03

DontGoOff_Loop0A:
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop0A
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $12, nRst, $02, nC3, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $09, nC3, $05, nRst, $09, nC3, $05, nRst, $02
	dc.b	nC3, $0C, nRst, $09, nC3, $1E
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $03
	smpsModOff
	dc.b	nC3, $04, nRst, $0A, nC3, $04, nRst, $0A, nC3, $04, nRst, $03
	dc.b	nC3, $0C, nRst, $09, nBb2, $1E
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03

DontGoOff_Loop0B:
	dc.b	smpsNoAttack, nBb2
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop0B
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, nBb2
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $02, nBb2, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $09, nBb2, $05, nRst, $0A, smpsNoAttack, nBb2, $04, nRst
	dc.b	$03, nBb2, $0B, nRst, $0A, nC3, $1E
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02

DontGoOff_Loop0C:
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, DontGoOff_Loop0C
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, nC3
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $02, nC3, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $09, nC3, $05, nRst, $09, nC3, $05, nRst, $02
	dc.b	nC3, $0C, nRst, $09, nC3, $1E
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $03
	smpsModOff
	dc.b	nC3, $04, nRst, $0A, nC3, $04, nRst, $0A, nC3, $04, nRst, $03
	dc.b	nC3, $0C, nRst, $09, nBb2, $1E
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03

DontGoOff_Loop0D:
	dc.b	smpsNoAttack, nBb2
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop0D
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, nBb2
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $02, nBb2, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $09, nBb2, $05, nRst, $0A, nBb2, $04, nRst, $03
	dc.b	nBb2, $0B, nRst, $0A, nBb2, $1E
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02

DontGoOff_Loop0E:
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, DontGoOff_Loop0E
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $02, nBb2, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $09, nBb2, $05, nRst, $09, nBb2, $05, nRst, $02
	dc.b	nBb2, $0C, nRst, $09, nC3, $1E
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, nC3
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, nC3
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $03
	smpsModOff
	dc.b	nC3, $04, nRst, $0A, nC3, $04, nRst, $0A, nC3, $05, nRst, $02
	dc.b	nC3, $0C, nRst, $09, nC3, $1E
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03

DontGoOff_Loop0F:
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop0F
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $02, nC3, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $0A, smpsNoAttack, nC3, $04, nRst, $0A, nC3, $04, nRst
	dc.b	$03, nC3, $0B, nRst, $0A, nC3, $1D
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $02, $03

DontGoOff_Loop10:
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop10
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $12, nRst, $02, nC3, $01
	smpsModOff
	dc.b	smpsNoAttack, $04, nRst, $09, nC3, $05, nRst, $09, nC3, $05, nRst, $02
	dc.b	nC3, $0C, nRst, $09, nBb2, $1E
	smpsModSet          $00, $02, $01, $03

DontGoOff_Loop11:
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, DontGoOff_Loop11
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, nBb2
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, nBb2
	smpsModSet          $00, $02, $10, $03
	dc.b	smpsNoAttack, $11, nRst, $03
	smpsModOff
	dc.b	nBb2, $04, nRst, $0A, nBb2, $04, nRst, $0A, nBb2, $05, nRst, $02
	dc.b	nBb2, $0C, nRst, $09, nC3, $1E
	smpsPan             panCenter, $00
	smpsModOff
	smpsJump            DontGoOff_Jump05

; FM2 Data
DontGoOff_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $0E
	smpsPan             panCenter, $00
	dc.b	nG1, $05, nRst, nD2, nRst, $04, nG2, $05, nRst, nA1, $04, nRst
	dc.b	$05, nE2, nRst, nA2, $04, nRst, $05, nB1, nRst, $04, nF2, $05
	dc.b	nRst, nB2, $04, nRst, $21, nC2, $13, nRst, $02, nG2, $08

DontGoOff_Jump04:
	dc.b	smpsNoAttack, nG2, $0B, nRst, $03, nC3, $44, nRst, $02, nC2, $13, nRst
	dc.b	$02, nG2, $13, nRst, $02, nC3, $44, nRst, $03, nBb1, $12, nRst
	dc.b	$03, nG2, $12, nRst, $03, nC3, $44, nRst, $02, nBb1, $13, nRst
	dc.b	$02, nG2, $13, nRst, $03, nC3, $44, nRst, $02, nAb1, $13, nRst
	dc.b	$02, nG2, $13, nRst, $02, nC3, $44, nRst, $03, nAb1, $12, nRst
	dc.b	$03, nG2, $12, nRst, $03, nC3, $44, nRst, $02, nA1, $13, nRst
	dc.b	$02, nG2, $13, nRst, $03, nC3, $44, nRst, $02, nBb1, $13, nRst
	dc.b	$02, nG2, $13, nRst, $02, nF2, $36, nRst, $03, nC2, $04, nRst
	dc.b	$03, nD2, $04, nRst, $03, nC2, $12, nRst, $03, nG2, $13, nRst
	dc.b	$02, nC3, $44, nRst, $03, nC2, $12, nRst, $02, nG2, $13, nRst
	dc.b	$03, nC3, $44, nRst, $02, nBb1, $13, nRst, $02, nG2, $13, nRst
	dc.b	$02, nC3, $44, nRst, $03, nBb1, $12, nRst, $03, nG2, $13, nRst
	dc.b	$02, nC3, $44, nRst, $03, nAb1, $12, nRst, $03, nG2, $12, nRst
	dc.b	$03, nC3, $44, nRst, $02, nAb1, $13, nRst, $02, nG2, $13, nRst
	dc.b	$02, nC3, $44, nRst, $03, nA1, $13, nRst, $02, nG2, $13, nRst
	dc.b	$02, nC3, $44, nRst, $03, nBb1, $12, nRst, $03, nG2, $12, nRst
	dc.b	$03, nF2, $36, nRst, $02, nC2, $05, nRst, $02, nD2, $05, nRst
	dc.b	$02, nC2, $14, nRst, $02, nG2, $08
	smpsPan             panCenter, $00
	smpsJump            DontGoOff_Jump04

; FM3 Data
DontGoOff_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $12
	smpsPan             panCenter, $00
	dc.b	nBb1, $05, nRst, nBb1, nRst, nBb1, $04, nRst, $05, nC2, $04, nRst
	dc.b	$05, nC2, nRst, nC2, $04, nRst, $05, nD2, nRst, $05, smpsNoAttack, nD2
	dc.b	$04, nRst, $2B, nEb2, $1C

DontGoOff_Jump03:
	dc.b	smpsNoAttack, nEb2, $19, nRst, $03, nEb2, $04, nRst, $0A, nEb2, $04, nRst
	dc.b	$0A, nEb2, $04, nRst, $03, nEb2, $0B, nRst, $0A, nEb2, $36, nRst
	dc.b	$02, nEb2, $05, nRst, $09, nEb2, $05, nRst, $0A, nEb2, $04, nRst
	dc.b	$03, nEb2, $0B, nRst, $0A, nG2, $36, nRst, $02, nG2, $05, nRst
	dc.b	$09, nG2, $05, nRst, $09, nG2, $05, nRst, $02, nG2, $0C, nRst
	dc.b	$0A, smpsNoAttack, nG2, $35, nRst, $03, nG2, $04, nRst, $0A, nG2, $04
	dc.b	nRst, $0A, nG2, $04, nRst, $03, nG2, $0C, nRst, $09
	smpsSetvoice        $00
	dc.b	nAb2, $36, nRst, $02, nAb2, $05, nRst, $0A, smpsNoAttack, nAb2, $04, nRst
	dc.b	$0A, nAb2, $04, nRst, $03, nAb2, $0B, nRst, $0A, nAb2, $36, nRst
	dc.b	$02, nAb2, $05, nRst, $09, nAb2, $05, nRst, $09, nAb2, $05, nRst
	dc.b	$02, nAb2, $0C, nRst, $0A, nA2, $35, nRst, $03, nA2, $04, nRst
	dc.b	$0A, nA2, $04, nRst, $0A, nA2, $04, nRst, $03, nA2, $0C, nRst
	dc.b	$09
	smpsSetvoice        $02
	dc.b	nG2, $36, nRst, $02, nG2, $05, nRst, $0A, nG2, $04, nRst, $0A
	dc.b	nG2, $04, nRst, $03, nG2, $0B, nRst, $0A, nEb2, $36, nRst, $02
	dc.b	nEb2, $05, nRst, $09, nEb2, $05, nRst, $09, nEb2, $05, nRst, $02
	dc.b	nEb2, $0C, nRst, $0A, nEb2, $35, nRst, $03, nEb2, $04, nRst, $0A
	dc.b	nEb2, $04, nRst, $0A, nEb2, $04, nRst, $03, nEb2, $0C, nRst, $09
	dc.b	nG2, $36, nRst, $02, nG2, $05, nRst, $0A, nG2, $04, nRst, $0A
	dc.b	nG2, $04, nRst, $03, nG2, $0B, nRst, $0A, nG2, $36, nRst, $02
	dc.b	nG2, $05, nRst, $09, nG2, $05, nRst, $09, nG2, $05, nRst, $02
	dc.b	nG2, $0C, nRst, $0A
	smpsSetvoice        $00
	dc.b	nAb2, $35, nRst, $03, nAb2, $04, nRst, $0A, nAb2, $04, nRst, $0A
	dc.b	nAb2, $05, nRst, $02, nAb2, $0C, nRst, $0A, smpsNoAttack, nAb2, $35, nRst
	dc.b	$03, nAb2, $04, nRst, $0A, nAb2, $04, nRst, $0A, nAb2, $04, nRst
	dc.b	$03, nAb2, $0B, nRst, $0A, nA2, $36, nRst, $02, nA2, $05, nRst
	dc.b	$09, nA2, $05, nRst, $09, nA2, $05, nRst, $02, nA2, $0C, nRst
	dc.b	$0A
	smpsSetvoice        $02
	dc.b	nG2, $35, nRst, $03, nG2, $04, nRst, $0A, nG2, $04, nRst, $0A
	dc.b	nG2, $05, nRst, $02, nG2, $0C, nRst, $09
	smpsAlterVol        $6D
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $93
	dc.b	nEb2, $1D
	smpsPan             panCenter, $00
	smpsJump            DontGoOff_Jump03

; FM4 Data
DontGoOff_FM4:
	smpsSetvoice        $03
	smpsAlterVol        $1B
	smpsPan             panRight, $00
	dc.b	nG4, $02, nRst, $01
	smpsAlterVol        $F4
	dc.b	nG4, nRst, $06
	smpsAlterVol        $0C
	smpsPan             panCenter, $00
	dc.b	nD4, $01, nRst
	smpsAlterVol        $F4
	dc.b	nD4, nRst, $07
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nA3, $01, nRst
	smpsAlterVol        $F4
	dc.b	nA3, nRst, $06
	smpsAlterVol        $0C
	smpsPan             panRight, $00
	dc.b	nG4, $01, nRst
	smpsAlterVol        $F4
	dc.b	nG4, nRst, $06
	smpsAlterVol        $0C
	smpsPan             panCenter, $00
	dc.b	nD4, $01, nRst, $02
	smpsAlterVol        $F4
	dc.b	nD4, $01, nRst, $06
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nA3, $01, nRst
	smpsAlterVol        $F4
	dc.b	nA3, nRst, $06
	smpsSetvoice        $06
	smpsAlterVol        $FE
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nRst, nE3, $04, nRst, $05
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nE3, $04, nRst, $05
	smpsSetvoice        $06
	smpsAlterVol        $0B
	dc.b	nE3, $01, nRst, $02
	smpsAlterVol        $F4
	dc.b	nE3, $04, nRst, $16
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nE3, $04, nRst, $09
	smpsSetvoice        $08
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $07, nE3, $04, nRst, $02
	smpsSetvoice        $0A
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01

DontGoOff_Jump02:
	smpsSetvoice        $06
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08

DontGoOff_Loop00:
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	smpsLoop            $00, $02, DontGoOff_Loop00
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $02
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $0B
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06
	smpsSetvoice        $07
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $05, nE3, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $03, nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08

DontGoOff_Loop01:
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $07
	smpsLoop            $00, $02, DontGoOff_Loop01
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $02
	smpsSetvoice        $06
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $03, nE3, $04, nRst, $09
	smpsSetvoice        $0C
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	nE3, nRst, $06, nE3, $04, nRst, $02
	smpsSetvoice        $0D
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $06
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $03, nE3, $04, nRst, $0A
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $03
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nE3, $04, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $02
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	smpsNoAttack, $01, smpsNoAttack, nE3, $04, nRst, $02
	smpsSetvoice        $0E
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	smpsNoAttack, $06
	smpsSetvoice        $07
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $05, nE3, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $03, nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08

DontGoOff_Loop02:
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $07
	smpsLoop            $00, $02, DontGoOff_Loop02
	dc.b	smpsNoAttack, $07, nE3, $05, nRst, $02
	smpsSetvoice        $06
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03, nE3, $04, nRst, $09
	smpsSetvoice        $0F
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	nE3, nRst, $06, nE3, $04, nRst, $02
	smpsSetvoice        $10
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $06
	smpsAlterVol        $F0
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08

DontGoOff_Loop03:
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	smpsLoop            $00, $02, DontGoOff_Loop03
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $03, nE3, $04, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $02
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06
	smpsSetvoice        $07
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $FF
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nE3, $04, nRst, $02
	smpsSetvoice        $11
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $06
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $0A, nE3, $04, nRst, $03, nE3, $04, nRst, $03
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nE3, $04, nRst, $03, nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06, nE3, $05, nRst, $02
	smpsSetvoice        $12
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $06
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $07
	smpsSetvoice        $07
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03, nE3, $04, nRst, $09
	smpsSetvoice        $13
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	nE3, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08

DontGoOff_Loop04:
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	smpsLoop            $00, $02, DontGoOff_Loop04
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $03, nE3, $04, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $02
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $14
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06
	smpsSetvoice        $07
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $05
	smpsSetvoice        $15
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $07
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $04, smpsNoAttack, nE3, $03, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06, nE3, $05, nRst, $02
	smpsSetvoice        $16
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $06
	smpsAlterVol        $8E
	dc.b	nE3, $02, nRst, $01, nE3, $02, nRst, $02, smpsNoAttack, nE3, $04, nRst
	dc.b	$02, nE3, $05, nRst, $02, nE3, $05, nRst, $03
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nE3, $04, nRst, $09
	smpsSetvoice        $0B
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	nE3, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08

DontGoOff_Loop05:
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	smpsLoop            $00, $02, DontGoOff_Loop05
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $03, nE3, $04, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $02
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $17
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06
	smpsSetvoice        $18
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $07
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $05
	smpsSetvoice        $19
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $07
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $04, nRst, $03
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $03, nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $02
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $0F
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06, nE3, $05, nRst, $02
	smpsSetvoice        $0D
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $06
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $09
	smpsSetvoice        $1A
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	smpsNoAttack, $06
	smpsSetvoice        $1B
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $07
	smpsAlterVol        $8F
	dc.b	nE3, $04, nRst, $03, nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $07
	dc.b	nE3, $04, nRst, $03, nE3, $01, nRst, $06
	smpsSetvoice        $06
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $03
	smpsAlterVol        $01
	smpsPan             panRight, $00
	dc.b	nG4, $01, nRst, $02, nG4, $01, nRst, $03, nG4, $01, nRst, $06
	dc.b	nG4, $01, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD4, $01, nRst, $06, nD4, $01, nRst, $06
	smpsPan             panLeft, $00
	dc.b	nA3, $01, nRst, $06
	smpsSetvoice        $06
	smpsAlterVol        $FE
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nRst, $02, nE3, $05, nRst, $03
	smpsSetvoice        $07
	smpsAlterVol        $01
	dc.b	nE3, $05, nRst, $09
	smpsSetvoice        $1C
	smpsAlterVol        $71
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $96
	dc.b	nE3, nRst, $06, nE3, $04, nRst, $02
	smpsSetvoice        $1D
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $0A
	smpsPan             panCenter, $00
	smpsJump            DontGoOff_Jump02

; FM5 Data
DontGoOff_FM5:
	smpsSetvoice        $04
	smpsAlterVol        $7F
	smpsPan             panLeft, $00
	dc.b	nRst, $0B
	smpsSetvoice        $00
	smpsAlterVol        $96
	smpsAlterNote       $07
	dc.b	nG2, $05, nRst, nG2, $04, nRst, $05, nG2, nRst, $04
	smpsAlterNote       $08
	dc.b	nA2, $05, nRst, nA2, $04, nRst, $05, nA2, nRst
	smpsAlterNote       $09
	dc.b	nB2, $04, nRst, $05, nB2, nRst, $2A
	smpsAlterNote       $05
	dc.b	nC3, $12

DontGoOff_Jump01:
	dc.b	smpsNoAttack, nC3, $24, nRst, $02, nC3, $05, nRst, $09, nC3, $05, nRst
	dc.b	$09, nC3, $05, nRst, $02, nC3, $0C, nRst, $0A, nC3, $35, nRst
	dc.b	$03, nC3, $05, nRst, $09, nC3, $05, nRst, $09, nC3, $05, nRst
	dc.b	$02, nC3, $0C, nRst, $09
	smpsAlterNote       $09
	dc.b	nBb2, $36, nRst, $03, nBb2, $04, nRst, $0A, nBb2, $04, nRst, $0A
	dc.b	nBb2, $04, nRst, $03, nBb2, $0B, nRst, $0A, nBb2, $36, nRst, $02
	dc.b	nBb2, $05, nRst, $09, nBb2, $05, nRst, $09, nBb2, $05, nRst, $02
	dc.b	nBb2, $0C, nRst, $0A
	smpsAlterNote       $05
	dc.b	nC3, $35, nRst, $03, nC3, $05, nRst, $09, nC3, $05, nRst, $09
	dc.b	nC3, $05, nRst, $02, nC3, $0C, nRst, $09, nC3, $36, nRst, $03
	dc.b	nC3, $04, nRst, $0A, nC3, $04, nRst, $0A, nC3, $04, nRst, $03
	dc.b	nC3, $0B, nRst, $0A, nC3, $36, nRst, $02, nC3, $05, nRst, $09
	dc.b	nC3, $05, nRst, $09, nC3, $05, nRst, $03, nC3, $0B, nRst, $0A
	smpsAlterNote       $09
	dc.b	nBb2, $36, nRst, $02, nBb2, $05, nRst, $09, nBb2, $05, nRst, $09
	dc.b	nBb2, $05, nRst, $02, nBb2, $0C, nRst, $09
	smpsAlterNote       $05
	dc.b	nC3, $36, nRst, $03, nC3, $04, nRst, $0A, nC3, $04, nRst, $0A
	dc.b	nC3, $04, nRst, $03, nC3, $0C, nRst, $09, nC3, $36, nRst, $02
	dc.b	nC3, $05, nRst, $09, nC3, $05, nRst, $09, nC3, $05, nRst, $03
	dc.b	nC3, $0B, nRst, $0A
	smpsAlterNote       $09
	dc.b	nBb2, $36, nRst, $02, nBb2, $05, nRst, $09, nBb2, $05, nRst, $09
	dc.b	nBb2, $05, nRst, $02, nBb2, $0C, nRst, $09, nBb2, $36, nRst, $03
	dc.b	nBb2, $04, nRst, $0A, nBb2, $04, nRst, $0A, nBb2, $04, nRst, $03
	dc.b	nBb2, $0C, nRst, $09
	smpsAlterNote       $05
	dc.b	nC3, $36, nRst, $02, nC3, $05, nRst, $09, nC3, $05, nRst, $0A
	dc.b	smpsNoAttack, nC3, $04, nRst, $03, nC3, $0B, nRst, $0A, nC3, $36, nRst
	dc.b	$02, nC3, $05, nRst, $09, nC3, $05, nRst, $09, nC3, $05, nRst
	dc.b	$02, nC3, $0C, nRst, $09, nC3, $36, nRst, $03, nC3, $04, nRst
	dc.b	$0A, nC3, $04, nRst, $0A, nC3, $04, nRst, $03, nC3, $0C, nRst
	dc.b	$09
	smpsAlterNote       $09
	dc.b	nBb2, $36, nRst, $02, nBb2, $05, nRst, $09, nBb2, $05, nRst, $0A
	dc.b	nBb2, $04, nRst, $03, nBb2, $0C, nRst, $0A
	smpsAlterNote       $05
	dc.b	nC3, $12
	smpsPan             panLeft, $00
	smpsAlterNote       $05
	smpsJump            DontGoOff_Jump01

; FM6 Data
DontGoOff_FM6:
	smpsSetvoice        $04
	smpsAlterVol        $7F
	smpsPan             panRight, $00
	dc.b	nRst, $0B
	smpsSetvoice        $05
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	smpsAlterVol        $96
	smpsAlterNote       $09
	dc.b	nBb1, $04, nRst, $05, nBb1, $04, nRst, $05, nBb1, nRst, $04
	smpsAlterNote       $05
	dc.b	nC2, $05, nRst, nC2, $04, nRst, $05, nC2, nRst, nD2, $04, nRst
	dc.b	$05, nD2, nRst, $2A
	smpsAlterNote       $06
	dc.b	nEb2, $12

DontGoOff_Jump00:
	dc.b	smpsNoAttack, nEb2, $24, nRst, $02, nEb2, $05, nRst, $09, nEb2, $05, nRst
	dc.b	$09, nEb2, $05, nRst, $03, nEb2, $0B, nRst, $0A, nEb2, $35, nRst
	dc.b	$03, nEb2, $05, nRst, $09, nEb2, $05, nRst, $09, nEb2, $05, nRst
	dc.b	$02, nEb2, $0C, nRst, $09
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	smpsAlterNote       $07
	dc.b	nG2, $35, nRst, $03, nG2, $04, nRst, $0A, nG2, $04, nRst, $0A
	dc.b	nG2, $04, nRst, $03, nG2, $0B, nRst, $0A, nG2, $36, nRst, $02
	dc.b	nG2, $05, nRst, $09, nG2, $05, nRst, $0A, smpsNoAttack, nG2, $04, nRst
	dc.b	$03, nG2, $0B, nRst, $0A
	smpsSetvoice        $00
	smpsAlterNote       $08
	dc.b	nAb2, $36, nRst, $02, nAb2, $05, nRst, $09, nAb2, $05, nRst, $09
	dc.b	nAb2, $05, nRst, $02, nAb2, $0C, nRst, $09
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	dc.b	nAb2, $35, nRst, $03, nAb2, $04, nRst, $0A, nAb2, $04, nRst, $0A
	dc.b	nAb2, $04, nRst, $03, nAb2, $0B, nRst, $0A, nA2, $36, nRst, $02
	dc.b	nA2, $05, nRst, $09, nA2, $05, nRst, $0A, nA2, $04, nRst, $03
	dc.b	nA2, $0B, nRst, $0A
	smpsSetvoice        $02
	smpsAlterNote       $07
	dc.b	nG2, $36, nRst, $02, nG2, $05, nRst, $09, nG2, $05, nRst, $09
	dc.b	nG2, $05, nRst, $02, nG2, $0C, nRst, $09
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	smpsAlterNote       $06
	dc.b	nEb2, $35, nRst, $03, nEb2, $04, nRst, $0A, nEb2, $04, nRst, $0A
	dc.b	nEb2, $04, nRst, $03, nEb2, $0C, nRst, $09, nEb2, $36, nRst, $02
	dc.b	nEb2, $05, nRst, $09, nEb2, $05, nRst, $0A, nEb2, $04, nRst, $03
	dc.b	nEb2, $0B, nRst, $0A
	smpsAlterNote       $07
	dc.b	nG2, $36, nRst, $02, nG2, $05, nRst, $09, nG2, $05, nRst, $09
	dc.b	nG2, $05, nRst, $02, nG2, $0C, nRst, $09
	smpsAlterVol        $6A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $96
	dc.b	nG2, $35, nRst, $03, nG2, $04, nRst, $0A, nG2, $04, nRst, $0A
	dc.b	nG2, $04, nRst, $03, nG2, $0C, nRst, $09
	smpsSetvoice        $00
	smpsAlterNote       $08
	dc.b	nAb2, $36, nRst, $02, nAb2, $05, nRst, $0A, smpsNoAttack, nAb2, $04, nRst
	dc.b	$0A, nAb2, $04, nRst, $03, nAb2, $0B, nRst, $0A, nAb2, $36, nRst
	dc.b	$02, nAb2, $05, nRst, $09, nAb2, $05, nRst, $09, nAb2, $05, nRst
	dc.b	$02, nAb2, $0C, nRst, $0A, nA2, $35, nRst, $03, nA2, $04, nRst
	dc.b	$0A, nA2, $04, nRst, $0A, nA2, $05, nRst, $02, nA2, $0C, nRst
	dc.b	$09
	smpsSetvoice        $02
	smpsAlterNote       $07
	dc.b	nG2, $36, nRst, $02, nG2, $05, nRst, $0A, nG2, $04, nRst, $0A
	dc.b	nG2, $04, nRst, $03, nG2, $0C, nRst, $0A
	smpsAlterNote       $06
	dc.b	nEb2, $12
	smpsPan             panRight, $00
	smpsAlterNote       $06
	smpsJump            DontGoOff_Jump00

; PSG1 Data
DontGoOff_PSG1:
	dc.b	nRst, $01
	smpsPSGAlterVol     $08
	dc.b	nG1
	smpsPSGAlterVol     $FD
	dc.b	$02, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nBb1, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $04
	smpsAlterNote       $01
	dc.b	nBb1, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD2, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nF2, $02
	smpsPSGAlterVol     $FD
	dc.b	nF2, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	nG2, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nBb2, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	nBb2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FD
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nC2
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FF
	dc.b	$02, nRst
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nE2, $01
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	nE2
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	nE2, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$01, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nA2
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	$02, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	nC3, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	nC3, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	$02, nRst, $01
	smpsPSGAlterVol     $03
	dc.b	nD2
	smpsPSGAlterVol     $FD
	dc.b	$02, nRst
	smpsPSGAlterVol     $03
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FD
	dc.b	nFs2
	smpsPSGAlterVol     $04
	dc.b	nFs2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA2
	smpsPSGAlterVol     $FD
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01, nRst
	smpsPSGAlterVol     $FF
	dc.b	nB2, $02
	smpsPSGAlterVol     $FD
	dc.b	nB2, nRst, $01
	smpsPSGAlterVol     $03
	dc.b	nD3, $02
	smpsPSGAlterVol     $FD
	dc.b	$01, nRst, $1E
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nEb2, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF

DontGoOff_Loop1B:
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$02, nRst

DontGoOff_Jump07:
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, DontGoOff_Loop1B
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nBb2
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03

DontGoOff_Loop1C:
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	smpsLoop            $00, $02, DontGoOff_Loop1C
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nG2, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nBb2, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	nEb2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	nD2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	nF2

DontGoOff_Loop1D:
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsLoop            $00, $02, DontGoOff_Loop1D
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nF2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nBb2

DontGoOff_Loop1E:
	dc.b	nRst
	smpsPSGAlterVol     $FF
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsLoop            $00, $02, DontGoOff_Loop1E
	dc.b	nRst
	smpsPSGAlterVol     $FF
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nG2

DontGoOff_Loop1F:
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nC3, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsLoop            $00, $03, DontGoOff_Loop1F
	smpsPSGAlterVol     $03
	dc.b	nG2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nC3, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nC3, nRst
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nEb2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	nEb2
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nC3, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	nEb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nC3
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nC3, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nC3, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	nG2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nC3, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nC3, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nE2, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nC3
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	nD2

DontGoOff_Loop20:
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsLoop            $00, $02, DontGoOff_Loop20
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	smpsAlterNote       $01
	dc.b	nBb1, $05, nRst, $02
	smpsAlterNote       $FF
	dc.b	nC2, $05, nRst, $03
	smpsAlterNote       $00
	dc.b	nD2, $35
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	$04
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$03, nRst, $01, nF2, $04, nRst, $03
	smpsAlterNote       $FF
	dc.b	nEb2, $04, nRst, $03, nG2, $27, nRst, $03
	smpsAlterNote       $00
	dc.b	nF2, $1A, nRst, $02
	smpsAlterNote       $FF
	dc.b	nEb2, $1A, nRst, $02
	smpsAlterNote       $00
	dc.b	nD2, $05, nRst, $02
	smpsAlterNote       $FF
	dc.b	nC2, $05, nRst, $03
	smpsAlterNote       $00
	dc.b	nD2, $35

DontGoOff_Loop21:
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsLoop            $00, $03, DontGoOff_Loop21
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$03, nRst, $02
	smpsAlterNote       $FF
	dc.b	nC2, $27, nRst, $02
	smpsAlterNote       $01
	dc.b	nBb1, $39
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $06
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1, nRst
	smpsAlterNote       $FF
	dc.b	nC2, $39
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	nC2
	smpsAlterNote       $04
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	nC2
	smpsAlterNote       $FB
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nC2, nRst, $02
	smpsAlterNote       $06
	dc.b	nCs2, $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FB
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD2, $01
	smpsAlterNote       $FB
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nF2, $01
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	$03, nRst, $02
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsAlterNote       $03
	dc.b	nAb2
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $03
	dc.b	nA2, $01
	smpsAlterNote       $00
	dc.b	nA2
	smpsAlterNote       $03
	dc.b	nBb2, $02, nB2, $01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nC3, $69, nRst, $03, nC2, $53, nRst, $02
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $FB
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nFs2, $02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FF
	dc.b	$03, nRst, $02
	smpsAlterNote       $00
	dc.b	nF2, $39
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FC
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $03
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	$04

DontGoOff_Loop22:
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nF2
	smpsLoop            $00, $02, DontGoOff_Loop22
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$05, nRst, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nEb2, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsJump            DontGoOff_Jump07

; PSG2 Data
DontGoOff_PSG2:
	dc.b	nRst, $0C
	smpsPSGAlterVol     $09
	smpsAlterNote       $03
	dc.b	nG1, $01
	smpsPSGAlterVol     $FD
	smpsAlterNote       $03
	dc.b	$02, nRst, $01
	smpsPSGAlterVol     $03
	dc.b	nBb1, $02
	smpsPSGAlterVol     $FD
	dc.b	nBb1, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $FD
	smpsAlterNote       $02
	dc.b	$02, nRst
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nF2, $01
	smpsPSGAlterVol     $FD
	smpsAlterNote       $01
	dc.b	$02, nRst, $01
	smpsPSGAlterVol     $03
	dc.b	nG2, $02
	smpsPSGAlterVol     $FD
	dc.b	nG2, nRst, $01
	smpsPSGAlterVol     $03
	dc.b	nBb2, $02
	smpsPSGAlterVol     $FD
	dc.b	nBb2, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	nA1
	smpsPSGAlterVol     $FD
	smpsAlterNote       $02
	dc.b	$02, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nC2, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $01
	dc.b	nC2, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	nE2, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $02
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nG2, $01
	smpsPSGAlterVol     $FD
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $03
	dc.b	nA2, $02
	smpsPSGAlterVol     $FD
	dc.b	nA2, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nC3, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	nC3, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	nB1
	smpsPSGAlterVol     $FD
	smpsAlterNote       $02
	dc.b	$02, nRst
	smpsPSGAlterVol     $03
	dc.b	nD2, $01
	smpsPSGAlterVol     $FD
	dc.b	$02, nRst, $01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nFs2, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $04
	smpsAlterNote       $01
	dc.b	nFs2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nA2
	smpsPSGAlterVol     $FD
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01, nRst
	smpsPSGAlterVol     $FF
	dc.b	nB2
	smpsPSGAlterVol     $FD
	dc.b	$02, nRst, $01
	smpsPSGAlterVol     $03
	dc.b	nD3, $02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	nD3, nRst, $1D
	smpsPSGAlterVol     $FD
	dc.b	nEb2, $02
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02

DontGoOff_Jump06:
	dc.b	nBb2, $01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	nEb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nBb2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nEb2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nG2

DontGoOff_Loop12:
	dc.b	nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsLoop            $00, $03, DontGoOff_Loop12
	dc.b	nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nF2
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	nD2

DontGoOff_Loop13:
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$02
	smpsLoop            $00, $03, DontGoOff_Loop13
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nF2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nBb2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2

DontGoOff_Loop14:
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsLoop            $00, $03, DontGoOff_Loop14
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03

DontGoOff_Loop15:
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	smpsLoop            $00, $02, DontGoOff_Loop15
	dc.b	nEb2, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	nG2

DontGoOff_Loop16:
	dc.b	nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsLoop            $00, $02, DontGoOff_Loop16
	dc.b	nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	dc.b	nEb2
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nG2

DontGoOff_Loop17:
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsLoop            $00, $03, DontGoOff_Loop17
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nC3, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nG2, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	nE2, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	nG2

DontGoOff_Loop18:
	dc.b	nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nE2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$02
	smpsLoop            $00, $02, DontGoOff_Loop18
	dc.b	nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nE2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nG2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nE2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	nE2
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $02
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nC3
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nC3
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nG2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nF2
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	nD2
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nD2, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $02
	dc.b	$02
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FD
	smpsAlterNote       $03
	dc.b	nBb1, $05, nRst, $02
	smpsAlterNote       $01
	dc.b	nC2, $05, nRst, $02
	smpsAlterNote       $02
	dc.b	nD2, $35
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	nCs2, $01
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nD2, nRst, $01
	smpsAlterNote       $01
	dc.b	nF2, $05, nRst, $02, nEb2, $05, nRst, $03, nG2, $27, nRst, $03
	dc.b	nF2, $1A, nRst, $02, nEb2, $1A, nRst, $02
	smpsAlterNote       $02
	dc.b	nD2, $05, nRst, $02
	smpsAlterNote       $01
	dc.b	nC2, $05, nRst, $02
	smpsAlterNote       $02
	dc.b	nD2, $36

DontGoOff_Loop19:
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $02, DontGoOff_Loop19
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nD2
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nD2, $02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nD2
	smpsAlterNote       $FB
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nD2, $02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02, nRst
	smpsAlterNote       $01
	dc.b	nC2, $28, nRst, $02
	smpsAlterNote       $03
	dc.b	nBb1, $39
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $06
	dc.b	nBb1
	smpsAlterNote       $F9
	dc.b	nA1, $02
	smpsAlterNote       $06
	dc.b	nBb1, $01, nRst
	smpsAlterNote       $01
	dc.b	nC2, $39
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nC2
	smpsAlterNote       $FA
	dc.b	nB1
	smpsAlterNote       $04
	dc.b	nC2
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FD
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FD
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2, nRst, $02
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $01
	dc.b	nEb2, $01
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $FD
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $01
	dc.b	nFs2, $01
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nG2, $03, nRst, $02
	smpsAlterNote       $01
	dc.b	nG2, $01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsAlterNote       $01
	dc.b	nA2
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $01
	dc.b	nBb2, $01
	smpsAlterNote       $FD
	dc.b	nBb2
	smpsAlterNote       $01
	dc.b	nB2
	smpsAlterNote       $FE
	dc.b	nB2
	smpsAlterNote       $00
	dc.b	nC3, $6A, nRst, $03
	smpsAlterNote       $01
	dc.b	nC2, $52, nRst, $02
	smpsAlterNote       $01
	dc.b	nC2, $01
	smpsAlterNote       $FB
	dc.b	nC2
	smpsAlterNote       $02
	dc.b	nCs2, $02
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $FC
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nE2, $02
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nG2, $03, nRst, $02, nF2, $3A
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nF2
	smpsAlterNote       $FC
	dc.b	nE2
	smpsAlterNote       $04
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	$02

DontGoOff_Loop1A:
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	nF2
	smpsAlterNote       $FC
	dc.b	nE2
	smpsAlterNote       $04
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $02, DontGoOff_Loop1A
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $FC
	dc.b	nE2, $01
	smpsAlterNote       $04
	dc.b	nF2, $02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $01
	dc.b	$05, nRst, $02
	smpsPSGAlterVol     $02
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	nEb2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $03
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FF
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsJump            DontGoOff_Jump06

DontGoOff_Voices:
;	Voice $00
;	$3C
;	$33, $03, $32, $02, 	$13, $17, $13, $17, 	$09, $0F, $09, $0F
;	$08, $00, $08, $00, 	$48, $18, $48, $18, 	$1C, $00, $1C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $03
	smpsVcCoarseFreq    $02, $02, $03, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $13, $17, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $09, $0F, $09
	smpsVcDecayRate2    $00, $08, $00, $08
	smpsVcDecayLevel    $01, $04, $01, $04
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $1C, $00, $1C

;	Voice $01
;	$39
;	$30, $51, $32, $31, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $0B, $09
;	$05, $04, $05, $05, 	$46, $46, $36, $16, 	$1B, $18, $19, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $05, $03
	smpsVcCoarseFreq    $01, $02, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0B, $0A, $0A
	smpsVcDecayRate2    $05, $05, $04, $05
	smpsVcDecayLevel    $01, $03, $04, $04
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $19, $18, $1B

;	Voice $02
;	$3C
;	$34, $04, $33, $03, 	$13, $17, $13, $17, 	$09, $0F, $09, $0F
;	$08, $00, $08, $00, 	$48, $18, $48, $18, 	$1C, $00, $1C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $03
	smpsVcCoarseFreq    $03, $03, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $13, $17, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $09, $0F, $09
	smpsVcDecayRate2    $00, $08, $00, $08
	smpsVcDecayLevel    $01, $04, $01, $04
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $1C, $00, $1C

;	Voice $03
;	$3C
;	$31, $30, $51, $50, 	$17, $1A, $17, $1A, 	$16, $00, $1C, $00
;	$1F, $00, $1F, $00, 	$FF, $03, $FF, $03, 	$0F, $00, $0F, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $05, $03, $03
	smpsVcCoarseFreq    $00, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $17, $1A, $17
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $1C, $00, $16
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $03, $0F, $03, $0F
	smpsVcTotalLevel    $00, $0F, $00, $0F

;	Voice $04
;	$39
;	$30, $51, $32, $31, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $0B, $09
;	$05, $04, $05, $05, 	$46, $46, $36, $16, 	$7F, $7F, $7F, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $05, $03
	smpsVcCoarseFreq    $01, $02, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0B, $0A, $0A
	smpsVcDecayRate2    $05, $05, $04, $05
	smpsVcDecayLevel    $01, $03, $04, $04
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $05
;	$3C
;	$34, $51, $32, $31, 	$1F, $1F, $1F, $1F, 	$0A, $0A, $0B, $09
;	$05, $04, $05, $05, 	$46, $46, $36, $16, 	$1C, $00, $1C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $05, $03
	smpsVcCoarseFreq    $01, $02, $01, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0B, $0A, $0A
	smpsVcDecayRate2    $05, $05, $04, $05
	smpsVcDecayLevel    $01, $03, $04, $04
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $1C, $00, $1C

;	Voice $06
;	$3E
;	$01, $01, $31, $51, 	$1F, $1B, $18, $17, 	$0B, $17, $0A, $0A
;	$00, $00, $0C, $0C, 	$05, $36, $75, $75, 	$00, $00, $02, $02
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $18, $1B, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $17, $0B
	smpsVcDecayRate2    $0C, $0C, $00, $00
	smpsVcDecayLevel    $07, $07, $03, $00
	smpsVcReleaseRate   $05, $05, $06, $05
	smpsVcTotalLevel    $02, $02, $00, $00

;	Voice $07
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $14, $0A
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
	smpsVcTotalLevel    $0A, $14, $00, $00

;	Voice $08
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$0C, $00, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $11, $06
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $08, $00, $0C

;	Voice $09
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $6F, 	$0C, $00, $08, $09
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $09, $08, $00, $0C

;	Voice $0A
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $6F, 	$00, $00, $7F, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $00, $7F, $00, $00

;	Voice $0B
;	$3C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$0C, $00, $08, $00
	smpsVcAlgorithm     $04
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
	smpsVcTotalLevel    $00, $08, $00, $0C

;	Voice $0C
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $10, $00, 	$FF, $07, $FF, $07, 	$0C, $00, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $00, $10, $0C, $00
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $08, $00, $0C

;	Voice $0D
;	$3E
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $6F, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $0E
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$0C, $00, $14, $0A
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
	smpsVcTotalLevel    $0A, $14, $00, $0C

;	Voice $0F
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$0C, $00, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $11, $06
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $08, $00, $0C

;	Voice $10
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $6F, 	$00, $7F, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $00, $08, $7F, $00

;	Voice $11
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

;	Voice $12
;	$3E
;	$01, $01, $31, $51, 	$1F, $1B, $18, $17, 	$0B, $17, $0A, $0A
;	$00, $00, $0C, $0E, 	$43, $3B, $FF, $6F, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $18, $1B, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $17, $0B
	smpsVcDecayRate2    $0E, $0C, $00, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $13
;	$3C
;	$02, $06, $05, $01, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$0C, $00, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $08, $00, $0C

;	Voice $14
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $0C, $0C, 	$05, $36, $75, $75, 	$0C, $00, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $0C, $0C, $0C, $00
	smpsVcDecayLevel    $07, $07, $03, $00
	smpsVcReleaseRate   $05, $05, $06, $05
	smpsVcTotalLevel    $00, $08, $00, $0C

;	Voice $15
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $6F, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $1A
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $16
;	$3E
;	$01, $01, $31, $51, 	$1F, $1B, $18, $17, 	$0B, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $6F, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $18, $1B, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $0B
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $17
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $17, $0A, $0A
;	$00, $00, $0C, $0C, 	$05, $36, $75, $75, 	$0C, $00, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $17, $06
	smpsVcDecayRate2    $0C, $0C, $00, $00
	smpsVcDecayLevel    $07, $07, $03, $00
	smpsVcReleaseRate   $05, $05, $06, $05
	smpsVcTotalLevel    $00, $08, $00, $0C

;	Voice $18
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $6F, 	$00, $00, $14, $00
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
	smpsVcDecayLevel    $06, $0F, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $07, $0F
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $19
;	$2C
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $6F, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $1A
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $75, 	$0C, $00, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $07, $0F, $03, $04
	smpsVcReleaseRate   $05, $0F, $0B, $03
	smpsVcTotalLevel    $00, $08, $00, $0C

;	Voice $1B
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $6F, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $1C
;	$3C
;	$02, $06, $05, $01, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $07, 	$0C, $00, $08, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $00, $0F, $03, $04
	smpsVcReleaseRate   $07, $0F, $0B, $03
	smpsVcTotalLevel    $00, $08, $00, $0C

;	Voice $1D
;	$3E
;	$01, $01, $31, $51, 	$1F, $1F, $1F, $1F, 	$06, $11, $08, $15
;	$00, $0C, $10, $0E, 	$43, $3B, $FF, $6F, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $08, $11, $06
	smpsVcDecayRate2    $0E, $10, $0C, $00
	smpsVcDecayLevel    $06, $0F, $03, $04
	smpsVcReleaseRate   $0F, $0F, $0B, $03
	smpsVcTotalLevel    $00, $00, $00, $00

