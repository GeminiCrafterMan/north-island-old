CountDown_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     CountDown_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       CountDown_DAC,	$00, $F2
	smpsHeaderFM        CountDown_FM1,	$00, $00
	smpsHeaderFM        CountDown_FM2,	$00, $00
	smpsHeaderFM        CountDown_FM3,	$00, $00
	smpsHeaderFM        CountDown_FM4,	$00, $00
	smpsHeaderFM        CountDown_FM5,	$00, $00
	smpsHeaderFM        CountDown_FM6,	$00, $00
	smpsHeaderPSG       CountDown_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       CountDown_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       CountDown_PSG3,	$00, $00, $00, $00

; DAC Data
CountDown_DAC:
; PSG3 Data
CountDown_PSG3:
	smpsStop

; FM1 Data
CountDown_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $14
	smpsPan             panCenter, $00
	dc.b	nF2, $20
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02

CountDown_Loop0B:
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, CountDown_Loop0B
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, nF2
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $08

CountDown_Jump05:
	dc.b	smpsNoAttack, nF2, $3B, nRst, $02, nFs2, $01
	smpsModOff
	dc.b	smpsNoAttack, $20
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nFs2
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, nFs2
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $03, nG2, $01
	smpsModOff
	dc.b	smpsNoAttack, $20
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02

CountDown_Loop0C:
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, CountDown_Loop0C
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $03
	smpsModOff
	dc.b	nAb2, $20
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02

CountDown_Loop0D:
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, CountDown_Loop0D
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $02
	smpsAlterVol        $6B
	smpsModOff
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $95
	dc.b	nF2, $21
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02

CountDown_Loop0E:
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, CountDown_Loop0E
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, nF2
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $43, nRst, $02, nFs2, $01
	smpsModOff
	dc.b	smpsNoAttack, $1F
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $02, $03

CountDown_Loop0F:
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, CountDown_Loop0F
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $03, nG2, $01
	smpsModOff
	dc.b	smpsNoAttack, $1F
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $02, $03

CountDown_Loop10:
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, CountDown_Loop10
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $03
	smpsModOff
	dc.b	nAb2, $20
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02

CountDown_Loop11:
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, CountDown_Loop11
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $02
	smpsAlterVol        $6B
	smpsModOff
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $95
	dc.b	nF2, $21
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nF2
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $02, nFs2, $01
	smpsModOff
	dc.b	smpsNoAttack, $20
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, nFs2
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, nFs2
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $03, nG2, $01
	smpsModOff
	dc.b	smpsNoAttack, $20
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03

CountDown_Loop12:
	dc.b	smpsNoAttack, nG2
	smpsModSet          $00, $02, $03, $03
	smpsLoop            $00, $02, CountDown_Loop12
	dc.b	smpsNoAttack, nG2
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $03
	smpsModOff
	dc.b	nAb2, $20
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02

CountDown_Loop13:
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, CountDown_Loop13
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $42, nRst, $02
	smpsAlterVol        $6B
	smpsModOff
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $95
	dc.b	nF2, $21
	smpsModSet          $00, $02, $01, $03
	dc.b	smpsNoAttack, $01
	smpsModSet          $00, $02, $02, $03
	dc.b	smpsNoAttack, $02

CountDown_Loop14:
	smpsModSet          $00, $02, $03, $03
	dc.b	smpsNoAttack, $01
	smpsLoop            $00, $02, CountDown_Loop14
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $02
	smpsModSet          $00, $02, $07, $03
	dc.b	smpsNoAttack, $07
	smpsPan             panCenter, $00
	smpsModOn
	smpsJump            CountDown_Jump05

; FM2 Data
CountDown_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $0B
	smpsPan             panCenter, $00

CountDown_Loop05:
	dc.b	nEb2, $07, smpsNoAttack, nF2, $05, nRst, $03, nF3, $05, nRst, $03
	smpsLoop            $00, $02, CountDown_Loop05

CountDown_Jump04:
	dc.b	nF2, $01, nRst, $06, nEb2, $08, smpsNoAttack, nF2, $05, nRst, $03, nF3
	dc.b	$05, nRst, $02, nF2, nRst, $06, nEb3, $01, nRst, $04, nC3, $01
	dc.b	nRst, $04, nEb2, $02, nRst, $04, nF2, $01, nRst, $06

CountDown_Loop06:
	dc.b	nE2, $08, smpsNoAttack, nFs2, $05, nRst, $03, nFs3, $05, nRst, $02
	smpsLoop            $00, $02, CountDown_Loop06
	dc.b	nFs2, nRst, $06, nE2, $08, smpsNoAttack, nFs2, $05, nRst, $02, nFs3, $05
	dc.b	nRst, $03, nFs2, $01, nRst, $07, nE3, $01, nRst, $04, nCs3, $01
	dc.b	nRst, $04, nE2, $01, nRst, $04, nFs2, $01, nRst, $07

CountDown_Loop07:
	dc.b	nF2, $08, smpsNoAttack, nG2, $05, nRst, $02, nG3, $05, nRst, $03
	smpsLoop            $00, $02, CountDown_Loop07
	dc.b	nG2, $01, nRst, $07, nF2, smpsNoAttack, nG2, $05, nRst, $03, nG3, $05
	dc.b	nRst, $03, nG2, $01, nRst, $07, nF3, $01, nRst, $04, nD3, $01
	dc.b	nRst, $04, nF2, $01, nRst, $04, nG2, $01, nRst, $07, nFs2, smpsNoAttack
	dc.b	nAb2, $05, nRst, $03, nAb3, $05, nRst, $03, nFs2, $07, smpsNoAttack, nAb2
	dc.b	$05, nRst, $03, nAb3, $05, nRst, $03, nAb2, $01, nRst, $06, nFs2
	dc.b	$08, smpsNoAttack, nAb2, $05, nRst, $03, nAb3, $05, nRst, $03, nAb2, $01
	dc.b	nRst, $06, nFs3, $01, nRst, $04, nEb3, $02, nRst, $03, nFs2, $02
	dc.b	nRst, $04, nAb2, $01, nRst, $07, nEb2, $08, smpsNoAttack, nF2, $05, nRst
	dc.b	$03, nF3, $05, nRst, $03, nEb2, $07, smpsNoAttack, nF2, $05, nRst, $03
	dc.b	nF3, $05, nRst, $03, nF2, $01, nRst, $06, nEb2, $08, smpsNoAttack, nF2
	dc.b	$05, nRst, $03, nF3, $05, nRst, $02, nF2, nRst, $06, nEb3, $01
	dc.b	nRst, $04, nC3, $02, nRst, $03, nEb2, $02, nRst, $04, nF2, $01
	dc.b	nRst, $06

CountDown_Loop08:
	dc.b	nE2, $08, smpsNoAttack, nFs2, $05, nRst, $03, nFs3, $05, nRst, $02
	smpsLoop            $00, $02, CountDown_Loop08
	dc.b	nFs2, nRst, $06, nE2, $08, smpsNoAttack, nFs2, $05, nRst, $02, nFs3, $06
	dc.b	nRst, $02, nFs2, $01, nRst, $07, nE3, $01, nRst, $04, nCs3, $01
	dc.b	nRst, $04, nE2, $01, nRst, $04, nFs2, $01, nRst, $07

CountDown_Loop09:
	dc.b	nF2, $08, smpsNoAttack, nG2, $05, nRst, $02, nG3, $05, nRst, $03
	smpsLoop            $00, $02, CountDown_Loop09
	dc.b	nG2, $01, nRst, $07, nF2, smpsNoAttack, nG2, $06, nRst, $02, nG3, $05
	dc.b	nRst, $03, nG2, $01, nRst, $07, nF3, $01, nRst, $04, nD3, $01
	dc.b	nRst, $04, nF2, $01, nRst, $04, nG2, $01, nRst, $07, nFs2, smpsNoAttack
	dc.b	nAb2, $05, nRst, $03, nAb3, $05, nRst, $03, nFs2, $07, smpsNoAttack, nAb2
	dc.b	$05, nRst, $03, nAb3, $05, nRst, $03, nAb2, $01, nRst, $06, nFs2
	dc.b	$08, smpsNoAttack, nAb2, $05, nRst, $03, nAb3, $05, nRst, $03, nAb2, $01
	dc.b	nRst, $06, nFs3, $01, nRst, $04, nEb3, $02, nRst, $04, nFs2, $01
	dc.b	nRst, $04, nAb2, $01, nRst, $07, nEb2, $08, smpsNoAttack, nF2, $05, nRst
	dc.b	$03, nF3, $05, nRst, $03, nEb2, $07, smpsNoAttack, nF2, $05, nRst, $03
	dc.b	nF3, $05, nRst, $03, nF2, $01, nRst, $06, nEb2, $08, smpsNoAttack, nF2
	dc.b	$05, nRst, $03, nF3, $05, nRst, $03, nF2, $01, nRst, $06, nEb3
	dc.b	$01, nRst, $04, nC3, $02, nRst, $03, nEb2, $02, nRst, $04, nF2
	dc.b	$01, nRst, $06

CountDown_Loop0A:
	dc.b	nE2, $08, smpsNoAttack, nFs2, $05, nRst, $03, nFs3, $05, nRst, $02
	smpsLoop            $00, $02, CountDown_Loop0A
	dc.b	nFs2, nRst, $06, nE2, $08, smpsNoAttack, nFs2, $05, nRst, $03, nFs3, $05
	dc.b	nRst, $02, nFs2, $01, nRst, $07, nE3, $01, nRst, $04, nCs3, $01
	dc.b	nRst, $04, nE2, $01, nRst, $04, nFs2, $02, nRst, $06, nF2, $08
	dc.b	smpsNoAttack, nG2, $05, nRst, $02, nG3, $05, nRst, $03, nF2, $08, smpsNoAttack
	dc.b	nG2, $05, nRst, $02, nG3, $06, nRst, $02, nG2, $01, nRst, $07
	dc.b	nF2, smpsNoAttack, nG2, $06, nRst, $02, nG3, $05, nRst, $03, nG2, $01
	dc.b	nRst, $07, nF3, $01, nRst, $04, nD3, $01, nRst, $04, nF2, $01
	dc.b	nRst, $04, nG2, $01, nRst, $07, nFs2, smpsNoAttack, nAb2, $05, nRst, $03
	dc.b	nAb3, $05, nRst, $03, nFs2, $07, smpsNoAttack, nAb2, $06, nRst, $02, nAb3
	dc.b	$05, nRst, $03, nAb2, $01, nRst, $07, nFs2, smpsNoAttack, nAb2, $05, nRst
	dc.b	$03, nAb3, $05, nRst, $03, nAb2, $01, nRst, $06, nFs3, $02, nRst
	dc.b	$03, nEb3, $02, nRst, $04, nFs2, $01, nRst, $04, nAb2, $01, nRst
	dc.b	$07, nEb2, $08, smpsNoAttack, nF2, $05, nRst, $03, nF3, $05, nRst, $03
	dc.b	nEb2, $07, smpsNoAttack, nF2, $05, nRst, $03, nF3, $05, nRst, $03
	smpsPan             panCenter, $00
	smpsJump            CountDown_Jump04

; FM3 Data
CountDown_FM3:
	smpsSetvoice        $00
	smpsAlterVol        $14
	smpsPan             panCenter, $00
	dc.b	nAb2, $2E

CountDown_Jump03:
	dc.b	smpsNoAttack, nAb2, $3B

CountDown_Loop04:
	dc.b	nRst, $02, nA2, $69, nRst, $03, nBb2, $69, nRst, $03, nB2, $69
	dc.b	nRst, $03, nAb2, $6A
	smpsLoop            $00, $02, CountDown_Loop04
	dc.b	nRst, $03, nA2, $68, nRst, $03, nBb2, $69, nRst, $03, nB2, $69
	dc.b	nRst, $03, nAb2, $2F
	smpsPan             panCenter, $00
	smpsJump            CountDown_Jump03

; FM4 Data
CountDown_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $0F
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07

CountDown_Jump02:
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $05
	smpsAlterVol        $68
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	smpsAlterVol        $90
	dc.b	nE3, $04, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07, nE3, $04, nRst, $03, nE3, $01, nRst, $04
	dc.b	nE3, $01, nRst, $05, smpsNoAttack, nE3, $01, nRst, $04
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $03, smpsNoAttack, nE3, $04, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $06
	smpsAlterVol        $68
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	smpsAlterVol        $90
	dc.b	nE3, $04, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $03
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $03

CountDown_Loop02:
	dc.b	nE3, $01, nRst, $04
	smpsLoop            $00, $03, CountDown_Loop02
	smpsSetvoice        $02
	smpsAlterVol        $68
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $90
	dc.b	nE3, $04, nRst, $03, nE3, $05, nRst, $0A
	smpsSetvoice        $07
	smpsAlterVol        $70
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	smpsAlterVol        $98
	dc.b	nE3, nRst, $06
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $08
	smpsAlterVol        $70
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	smpsAlterVol        $98
	dc.b	nE3, nRst, $06, nE3, $05, nRst, $03
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07, nE3, $05, nRst, $03

CountDown_Loop03:
	dc.b	nE3, $01, nRst, $04
	smpsLoop            $00, $03, CountDown_Loop03
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $03, nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07, nE3, $05, nRst, $03
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0B
	smpsSetvoice        $09
	smpsAlterVol        $FE
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $02
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $90
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $FE
	dc.b	nE3, $05, nRst, $03, nE3, $05, nRst, $03
	smpsSetvoice        $0A
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	smpsAlterVol        $90
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $0A
	dc.b	nE3, $01, nRst, $07, nE3, $05, nRst, $03
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $04, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07, nE3, $05, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	smpsNoAttack, $01, smpsNoAttack, nE3, $04, nRst, $0B
	smpsSetvoice        $02
	smpsAlterVol        $02
	dc.b	nE3, $05, nRst, $03, nE3, $04, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $0B
	smpsAlterVol        $68
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $0A
	dc.b	nE3, $01, nRst, $07, nE3, $04, nRst, $03
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06, nE3, $05, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $02
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $90
	dc.b	nE3, $04, nRst, $03, nE3, $05, nRst, $0A
	smpsSetvoice        $0C
	smpsAlterVol        $70
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	smpsAlterVol        $98
	dc.b	nE3, nRst, $06
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $0D
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	smpsAlterVol        $0F
	dc.b	nE3, nRst, $06, nE3, $05, nRst, $03
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $08, nE3, $05, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $02
	smpsAlterVol        $02
	dc.b	nE3, $05, nRst, $03, nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $0A
	dc.b	nE3, $01, nRst, $07, nE3, $05, nRst, $03
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $09
	smpsAlterVol        $FE
	dc.b	nE3, $01, nRst, $03, nE3, $01, nRst, $03, nE3, $05, nRst, $02
	dc.b	nE3, $05, nRst, $03, nE3, $05, nRst, $03, nE3, $05, nRst, $04
	smpsSetvoice        $02
	smpsAlterVol        $02
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $0A
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $0E
	smpsAlterVol        $F6
	smpsPan             panRight, $00
	dc.b	nG4, $01, nRst, $07
	smpsSetvoice        $02
	smpsAlterVol        $02
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $0E
	smpsAlterVol        $FE
	smpsPan             panLeft, $00
	dc.b	nA3, $01, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $09
	smpsAlterVol        $68
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $0B
	smpsSetvoice        $02
	smpsAlterVol        $02
	dc.b	nE3, $05, nRst, $03, nE3, $04, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $0F
	smpsAlterVol        $68
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	smpsAlterVol        $8E
	dc.b	nE3, $04, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $0A
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $0E
	smpsAlterVol        $F6
	smpsPan             panRight, $00
	dc.b	nG4, $01, nRst, $06
	smpsSetvoice        $02
	smpsAlterVol        $02
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nRst, $0B
	smpsSetvoice        $0E
	smpsAlterVol        $FE
	smpsPan             panLeft, $00
	dc.b	nA3, $01, nRst, $06
	smpsSetvoice        $04
	smpsAlterVol        $72
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $98
	dc.b	nE3, $04, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $10
	smpsAlterVol        $72
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	smpsAlterVol        $90
	dc.b	nE3, $04, nRst, $03
	smpsAlterVol        $70
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $90
	dc.b	nE3, $04, nRst, $0A
	smpsSetvoice        $11
	smpsAlterVol        $70
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	smpsAlterVol        $98
	dc.b	nE3, nRst, $06
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0B
	smpsSetvoice        $04
	smpsAlterVol        $0A
	dc.b	nE3, $01, nRst, $06
	smpsSetvoice        $0E
	smpsAlterVol        $68
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8E
	dc.b	smpsNoAttack, $07
	smpsSetvoice        $02
	smpsAlterVol        $02
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $0E
	smpsAlterVol        $70
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8E
	dc.b	smpsNoAttack, $07
	smpsSetvoice        $04
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nRst, $03
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $02
	smpsAlterVol        $02
	dc.b	nE3, $05, nRst, $03, nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $0A
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $09
	smpsAlterVol        $F6
	dc.b	nE3, $05, nRst, $03
	smpsSetvoice        $02
	smpsAlterVol        $02
	dc.b	nE3, $05, nRst, $02
	smpsSetvoice        $0E
	smpsAlterVol        $70
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $8E
	dc.b	nG4, nRst, $02, nG4, $01, nRst, $03, nG4, $01, nRst, $07, nG4
	dc.b	$01, nRst, $06
	smpsPan             panCenter, $00
	dc.b	nD4, $02, nRst, $06, nD4, $01, nRst, $07
	smpsPan             panLeft, $00
	dc.b	nA3, $01, nRst, $08
	smpsSetvoice        $02
	smpsAlterVol        $02
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	nE3, $05, nRst, $0A
	smpsSetvoice        $04
	smpsAlterVol        $08
	dc.b	nE3, $01, nRst, $07
	smpsPan             panCenter, $00
	smpsJump            CountDown_Jump02

; FM5 Data
CountDown_FM5:
	smpsSetvoice        $03
	smpsAlterVol        $7F
	smpsPan             panLeft, $00
	dc.b	nRst, $0B
	smpsSetvoice        $00
	smpsAlterVol        $97
	smpsAlterNote       $06
	dc.b	nF2, $23

CountDown_Jump01:
	dc.b	smpsNoAttack, nF2, $46, nRst, $03
	smpsAlterNote       $07
	dc.b	nFs2, $69, nRst, $02, nG2, $6A, nRst, $02
	smpsAlterNote       $08
	dc.b	nAb2, $6A, nRst, $03

CountDown_Loop01:
	smpsAlterNote       $06
	dc.b	nF2, $69, nRst, $03
	smpsAlterNote       $07
	dc.b	nFs2, $69, nRst, $03, nG2, $69, nRst, $02
	smpsAlterNote       $08
	dc.b	nAb2, $6B, nRst, $02
	smpsLoop            $00, $02, CountDown_Loop01
	smpsAlterVol        $69
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $97
	smpsAlterNote       $06
	dc.b	nF2, $22
	smpsPan             panLeft, $00
	smpsAlterNote       $06
	smpsJump            CountDown_Jump01

; FM6 Data
CountDown_FM6:
	smpsSetvoice        $03
	smpsAlterVol        $7F
	smpsPan             panRight, $00
	dc.b	nRst, $0B
	smpsSetvoice        $00
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $97
	smpsAlterNote       $08
	dc.b	nAb2, $22

CountDown_Jump00:
	dc.b	smpsNoAttack, nAb2, $46, nRst, $03, nA2, $69, nRst, $03
	smpsAlterNote       $09
	dc.b	nBb2, $69, nRst, $02, nB2, $6B, nRst, $02
	smpsAlterVol        $69
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $97

CountDown_Loop00:
	smpsAlterNote       $08
	dc.b	nAb2, $68, nRst, $03, nA2, $69, nRst, $03
	smpsAlterNote       $09
	dc.b	nBb2, $69, nRst, $02, nB2, $6B, nRst, $03
	smpsLoop            $00, $02, CountDown_Loop00
	smpsAlterNote       $08
	dc.b	nAb2, $22
	smpsPan             panRight, $00
	smpsAlterNote       $08
	smpsJump            CountDown_Jump00

; PSG1 Data
CountDown_PSG1:
	dc.b	nRst, $7F, $7F, $7F, $33

CountDown_Jump07:
	dc.b	nRst, $7F, $7F, $7F, $05
	smpsPSGAlterVol     $06
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF

CountDown_Loop35:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop35
	dc.b	nF1, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $FF

CountDown_Loop36:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop36
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04

CountDown_Loop37:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop37
	dc.b	nRst
	smpsPSGAlterVol     $FC
	dc.b	nF1, $02
	smpsPSGAlterVol     $FF

CountDown_Loop38:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop38
	dc.b	$02, nRst
	smpsPSGAlterVol     $FE
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	dc.b	$03, nRst
	smpsPSGAlterVol     $01
	dc.b	nF2, $02
	smpsPSGAlterVol     $FF

CountDown_Loop39:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop39
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $02
	smpsPSGAlterVol     $FF

CountDown_Loop3A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop3A
	dc.b	$02, nRst
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF

CountDown_Loop3B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop3B
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1, nRst
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF

CountDown_Loop3C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop3C
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $02
	smpsPSGAlterVol     $FF
	dc.b	$03, nRst
	smpsPSGAlterVol     $01
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03, nRst
	smpsPSGAlterVol     $FE
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF

CountDown_Loop3D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop3D
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04

CountDown_Loop3E:
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsLoop            $00, $04, CountDown_Loop3E
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FB
	smpsAlterNote       $00
	dc.b	nG1
	smpsPSGAlterVol     $FF

CountDown_Loop3F:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop3F
	smpsAlterNote       $00
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01, nRst, $02
	smpsAlterNote       $FF
	dc.b	nG2
	smpsPSGAlterVol     $FF

CountDown_Loop40:
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop40
	smpsAlterNote       $FF
	dc.b	nG2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nAb1
	smpsPSGAlterVol     $FF

CountDown_Loop41:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop41
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nAb2
	smpsPSGAlterVol     $FF

CountDown_Loop42:
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop42
	smpsAlterNote       $FF
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04

CountDown_Loop43:
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop43
	dc.b	nRst
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nAb1, $02
	smpsPSGAlterVol     $FF

CountDown_Loop44:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop44
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nAb2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01, nRst, $02
	smpsAlterNote       $FF
	dc.b	nAb2
	smpsPSGAlterVol     $FF

CountDown_Loop45:
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop45
	smpsAlterNote       $FF
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02, nRst
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $FF

CountDown_Loop46:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop46
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF

CountDown_Loop47:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, CountDown_Loop47
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03, nRst
	smpsPSGAlterVol     $FC
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nF2, $02
	smpsPSGAlterVol     $FF

CountDown_Loop48:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop48
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $02, nF2
	smpsPSGAlterVol     $FF

CountDown_Loop49:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop49
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $02
	smpsPSGAlterVol     $FF

CountDown_Loop4A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop4A
	dc.b	$02, nRst
	smpsPSGAlterVol     $FE
	dc.b	nFs1
	smpsPSGAlterVol     $FF

CountDown_Loop4B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, CountDown_Loop4B
	dc.b	$04, nRst, $03
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $FE
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $02, nFs2
	smpsPSGAlterVol     $FF

CountDown_Loop4C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop4C
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF

CountDown_Loop4D:
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop4D
	smpsAlterNote       $FF
	dc.b	nG2, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nG1
	smpsPSGAlterVol     $FF

CountDown_Loop4E:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, CountDown_Loop4E
	smpsAlterNote       $00
	dc.b	nG1, nRst
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nG1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF

CountDown_Loop4F:
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop4F
	smpsAlterNote       $FF
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nG1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$03, nRst
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nG2, $02
	smpsPSGAlterVol     $FF

CountDown_Loop50:
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop50
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FF

CountDown_Loop51:
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop51
	smpsAlterNote       $FF
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nAb1, $02
	smpsPSGAlterVol     $FF

CountDown_Loop52:
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, CountDown_Loop52
	smpsAlterNote       $00
	dc.b	nAb1, nRst
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nAb2, $02
	smpsPSGAlterVol     $FF

CountDown_Loop53:
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop53
	smpsAlterNote       $FF
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $00
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01, nRst, $02
	smpsAlterNote       $FF
	dc.b	nAb2
	smpsPSGAlterVol     $FF

CountDown_Loop54:
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, CountDown_Loop54
	smpsAlterNote       $FF
	dc.b	$02, nRst, $32
	smpsPSGAlterVol     $F8
	smpsJump            CountDown_Jump07

; PSG2 Data
CountDown_PSG2:
	dc.b	nRst, $7F, $7F, $7F, $3F

CountDown_Jump06:
	dc.b	nRst, $7F, $7F, $7F, $11
	smpsPSGAlterVol     $07
	smpsAlterNote       $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$02

CountDown_Loop15:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop15
	dc.b	nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$02

CountDown_Loop16:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop16
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FE
	dc.b	nF1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$04

CountDown_Loop17:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $04, CountDown_Loop17
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$02, nRst
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FE
	dc.b	nF1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$04, nRst, $03
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$02

CountDown_Loop18:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop18
	dc.b	nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nF1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$02, nRst, $03
	smpsAlterNote       $FF
	dc.b	nF2, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nF2

CountDown_Loop19:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop19
	dc.b	nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$01

CountDown_Loop1A:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop1A
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FF
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$02

CountDown_Loop1B:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop1B
	dc.b	nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nFs1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	nFs1

CountDown_Loop1C:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $05, CountDown_Loop1C
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$02, nRst
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$01

CountDown_Loop1D:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop1D
	dc.b	nRst, $04
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$02

CountDown_Loop1E:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop1E
	dc.b	nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nFs1, nRst
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FE
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$02

CountDown_Loop1F:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop1F
	dc.b	nRst, $04
	smpsPSGAlterVol     $FE
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop20:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop20
	dc.b	nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nG1
	smpsPSGAlterVol     $FF
	dc.b	nG1

CountDown_Loop21:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $05, CountDown_Loop21
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FB
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop22:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop22
	dc.b	nRst
	smpsPSGAlterVol     $FE
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop23:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop23
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	dc.b	nG1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $02, nG2
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03, nRst
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop24:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop24
	dc.b	nRst
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop25:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop25
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04

CountDown_Loop26:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $04, CountDown_Loop26
	smpsPSGAlterVol     $01
	dc.b	$02, nRst
	smpsPSGAlterVol     $FB
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$04, nRst, $03
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop27:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop27
	dc.b	nRst
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03, nAb2, $02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FD
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop28:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop28
	dc.b	nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nF2, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03, nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nF1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$01, nRst, $04
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FE
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$02

CountDown_Loop29:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop29
	dc.b	nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FE
	dc.b	nF1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$02, nRst, $03
	smpsAlterNote       $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$02

CountDown_Loop2A:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop2A
	dc.b	nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nFs1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	nFs1

CountDown_Loop2B:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop2B
	dc.b	nRst, $02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$01

CountDown_Loop2C:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop2C
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FE
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$02

CountDown_Loop2D:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop2D
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$02, nRst, $03
	smpsAlterNote       $FF
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$02

CountDown_Loop2E:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop2E
	dc.b	nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $FE
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FE
	dc.b	$02

CountDown_Loop2F:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop2F
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG2, nRst
	smpsPSGAlterVol     $FE
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop30:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop30
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FB
	dc.b	nG1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop31:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop31
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $02
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nG1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $02, nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop32:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop32
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $03
	smpsPSGAlterVol     $FD
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop33:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop33
	dc.b	nRst
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $FB
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

CountDown_Loop34:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, CountDown_Loop34
	dc.b	nRst
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $02
	smpsPSGAlterVol     $FF
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $02
	smpsPSGAlterVol     $FE
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03, nRst, $02, nAb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $25
	smpsPSGAlterVol     $F6
	smpsJump            CountDown_Jump06

CountDown_Voices:
;	Voice $00
;	$2C
;	$33, $53, $52, $32, 	$13, $17, $13, $17, 	$06, $03, $06, $03
;	$04, $00, $04, $00, 	$F7, $27, $F7, $27, 	$1E, $00, $1E, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $02, $02, $03, $03
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $17, $13, $17, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $06, $03, $06
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $02, $0F, $02, $0F
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $1E, $00, $1E

;	Voice $01
;	$20
;	$3F, $03, $00, $01, 	$9F, $9F, $5F, $5F, 	$0E, $0D, $0C, $07
;	$08, $08, $08, $08, 	$27, $27, $27, $17, 	$13, $38, $18, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $00, $03, $0F
	smpsVcRateScale     $01, $01, $02, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0C, $0D, $0E
	smpsVcDecayRate2    $08, $08, $08, $08
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $18, $38, $13

;	Voice $02
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$00, $00, $14, $0B
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
	smpsVcTotalLevel    $0B, $14, $00, $00

;	Voice $03
;	$20
;	$3F, $03, $00, $01, 	$9F, $9F, $5F, $5F, 	$0E, $0D, $0C, $07
;	$08, $08, $08, $08, 	$27, $27, $27, $17, 	$7F, $7F, $7F, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $00, $03, $0F
	smpsVcRateScale     $01, $01, $02, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0C, $0D, $0E
	smpsVcDecayRate2    $08, $08, $08, $08
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $04
;	$3A
;	$05, $05, $05, $01, 	$1F, $1F, $1F, $1F, 	$0E, $0D, $0F, $13
;	$00, $00, $00, $0C, 	$A7, $A7, $C6, $4B, 	$08, $08, $08, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $05, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $0F, $0D, $0E
	smpsVcDecayRate2    $0C, $00, $00, $00
	smpsVcDecayLevel    $04, $0C, $0A, $0A
	smpsVcReleaseRate   $0B, $06, $07, $07
	smpsVcTotalLevel    $00, $08, $08, $08

;	Voice $05
;	$2C
;	$00, $00, $00, $00, 	$18, $1F, $1F, $1F, 	$0E, $0D, $0F, $13
;	$00, $00, $00, $0C, 	$A7, $A7, $C6, $4B, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $0F, $0D, $0E
	smpsVcDecayRate2    $0C, $00, $00, $00
	smpsVcDecayLevel    $04, $0C, $0A, $0A
	smpsVcReleaseRate   $0B, $06, $07, $07
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $06
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1F, 	$0E, $0D, $0F, $13
;	$00, $00, $00, $0C, 	$A7, $A7, $C6, $4B, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $0F, $0D, $0E
	smpsVcDecayRate2    $0C, $00, $00, $00
	smpsVcDecayLevel    $04, $0C, $0A, $0A
	smpsVcReleaseRate   $0B, $06, $07, $07
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $07
;	$3A
;	$05, $05, $05, $01, 	$1F, $1F, $1F, $1F, 	$0E, $0D, $0F, $13
;	$00, $00, $00, $0C, 	$A7, $A7, $C6, $07, 	$08, $08, $08, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $05, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $0F, $0D, $0E
	smpsVcDecayRate2    $0C, $00, $00, $00
	smpsVcDecayLevel    $00, $0C, $0A, $0A
	smpsVcReleaseRate   $07, $06, $07, $07
	smpsVcTotalLevel    $00, $08, $08, $08

;	Voice $08
;	$3A
;	$05, $05, $05, $01, 	$1F, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$08, $08, $08, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $05, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $08, $08, $08

;	Voice $09
;	$3E
;	$01, $01, $31, $51, 	$1F, $1F, $1F, $1F, 	$07, $17, $07, $07
;	$00, $08, $08, $08, 	$43, $36, $44, $44, 	$00, $00, $02, $02
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $07, $17, $07
	smpsVcDecayRate2    $08, $08, $08, $00
	smpsVcDecayLevel    $04, $04, $03, $04
	smpsVcReleaseRate   $04, $04, $06, $03
	smpsVcTotalLevel    $02, $02, $00, $00

;	Voice $0A
;	$2C
;	$00, $01, $31, $51, 	$1F, $1F, $1F, $1F, 	$07, $17, $07, $07
;	$00, $08, $08, $08, 	$43, $36, $44, $44, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $07, $17, $07
	smpsVcDecayRate2    $08, $08, $08, $00
	smpsVcDecayLevel    $04, $04, $03, $04
	smpsVcReleaseRate   $04, $04, $06, $03
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $0B
;	$3E
;	$01, $01, $31, $51, 	$1F, $1F, $1F, $1F, 	$07, $0D, $0F, $13
;	$00, $00, $00, $0C, 	$A7, $A7, $C6, $4B, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $0F, $0D, $07
	smpsVcDecayRate2    $0C, $00, $00, $00
	smpsVcDecayLevel    $04, $0C, $0A, $0A
	smpsVcReleaseRate   $0B, $06, $07, $07
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $0C
;	$3A
;	$05, $05, $05, $01, 	$1F, $1F, $1F, $1F, 	$0E, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$08, $08, $08, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $05, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $0E
	smpsVcDecayRate2    $00, $1F, $00, $1F
	smpsVcDecayLevel    $00, $0F, $00, $0F
	smpsVcReleaseRate   $07, $0F, $07, $0F
	smpsVcTotalLevel    $00, $08, $08, $08

;	Voice $0D
;	$3E
;	$01, $01, $31, $51, 	$1F, $1F, $1F, $1F, 	$07, $17, $07, $07
;	$00, $08, $08, $08, 	$43, $36, $44, $44, 	$08, $00, $07, $07
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $07, $17, $07
	smpsVcDecayRate2    $08, $08, $08, $00
	smpsVcDecayLevel    $04, $04, $03, $04
	smpsVcReleaseRate   $04, $04, $06, $03
	smpsVcTotalLevel    $07, $07, $00, $08

;	Voice $0E
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

;	Voice $0F
;	$3E
;	$05, $05, $05, $01, 	$1F, $1F, $1F, $1F, 	$0E, $0D, $0F, $13
;	$00, $00, $00, $0C, 	$A7, $A7, $C6, $4B, 	$00, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $05, $05, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $0F, $0D, $0E
	smpsVcDecayRate2    $0C, $00, $00, $00
	smpsVcDecayLevel    $04, $0C, $0A, $0A
	smpsVcReleaseRate   $0B, $06, $07, $07
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $10
;	$2C
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$00, $08, $08, $08, 	$43, $36, $44, $44, 	$00, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $17, $00, $1A
	smpsVcDecayRate2    $08, $08, $08, $00
	smpsVcDecayLevel    $04, $04, $03, $04
	smpsVcReleaseRate   $04, $04, $06, $03
	smpsVcTotalLevel    $00, $14, $00, $00

;	Voice $11
;	$3A
;	$00, $00, $00, $00, 	$18, $1A, $1A, $1A, 	$1A, $00, $17, $00
;	$1F, $00, $1F, $00, 	$FF, $07, $FF, $07, 	$08, $08, $08, $00
	smpsVcAlgorithm     $02
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
	smpsVcTotalLevel    $00, $08, $08, $08

