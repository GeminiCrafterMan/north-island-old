Bridge_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Bridge_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Bridge_DAC
	smpsHeaderFM        Bridge_FM1,	$00, $00
	smpsHeaderFM        Bridge_FM2,	$00, $00
	smpsHeaderFM        Bridge_FM3,	$00, $00
	smpsHeaderFM        Bridge_FM4,	$00, $00
	smpsHeaderFM        Bridge_FM5,	$00, $00
	smpsHeaderPSG       Bridge_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Bridge_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Bridge_PSG3,	$00, $00, $00, $00

; DAC Data
Bridge_DAC:
; PSG3 Data
Bridge_PSG3:
	smpsStop

; FM1 Data
Bridge_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $0F
	smpsPan             panCenter, $00
	dc.b	nF3, $0E, nF3, nF4, nF3, nE3, $0F, $0E, nE4, $0F, nE3, $0E
	dc.b	nD3, nD3, nD4, $0F, nD3, $0E, nC3, $0F, $0E, nC4, $0F, nC3
	dc.b	$0E, nBb2, nBb2, nBb3, $0F, nBb2, $0E, nA2, $0F, $0E, nA3, $0F
	dc.b	nA2, $0E, nBb2, nBb2, nBb3, $0F, nBb2, $0E, nC3, nC3, $0F, nC4
	dc.b	$0E, nC3, $0F, nF3, $0E, $0F, nF4, $0E, nF3, nE3, nE3, $0F
	dc.b	nE4, $0E, nE3, $0F, nD3, $0E, nD3, nD4, $0F, nD3, $0E, nC3
	dc.b	nC3, $0F, nC4, $0E, nC3, $0F, nBb2, $0E, nBb2, nBb3, $0F, nBb2
	dc.b	$0E, nA2, nA2, nA3, $0F, nA2, $0E, nEb3, $0F, $0E, nEb4, $0F
	dc.b	nEb3, $0E, nC3, nC3, $0F, nC4, $0E, nC3, nCs3, $0F, $0E, nCs4
	dc.b	$0F, nCs3, $0E, $0F, $0D, nCs4, $0F, nCs3, $0E, nEb3, $0F, $0E
	dc.b	nEb4, $0F, nEb3, $0E, nEb3, nEb3, nEb4, $0F, nEb3, $0E, nCs3, $0F
	dc.b	$0E, nCs4, $0F, nCs3, $0E, nCs3, nCs3, nCs4, $0F, nCs3, $0E, nEb3
	dc.b	nEb3, $0F, nEb4, $0E, nEb3, $0F, $0E, $0F, nEb4, $0E, nEb3, nCs3
	dc.b	nCs3, $0F, nCs4, $0E, nRst, $01, nCs3, $0E, nCs3, nCs3, nCs4, $0F
	dc.b	nCs3, $0E, nEb3, nEb3, nEb4, $0F, nEb3, nEb3, $0E, nEb3, nEb4, $0F
	dc.b	nEb3, $0E, nF3, nF3, nF4, $0F, nF3, nF3

Bridge_Loop04:
	dc.b	$0E, nF3, nF4, $0F, nF3, $0E
	smpsLoop            $00, $02, Bridge_Loop04
	dc.b	nF3, nC3, $0F, nD3, nE3, $0E
	smpsAlterVol        $F1
	smpsPan             panCenter, $00
	smpsJump            Bridge_FM1

; FM2 Data
Bridge_FM2:
	smpsSetvoice        $00
	smpsPan             panNone, $00
	dc.b	nRst, $1C
	smpsSetvoice        $02
	smpsAlterVol        $11
	smpsPan             panCenter, $00
	dc.b	nA5, nG5, $16, nC6, nF5, $1C, $0E, $0F, $0E, nE5, $16, nA5
	dc.b	nD5, $1C, $0E, $0F, $0E, nC5, $16, nF5, nBb5, $1C, nA5, $0E
	dc.b	nG5, $0F, nF5, $0E, $1D

Bridge_Loop03:
	dc.b	nG5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $02
	dc.b	smpsNoAttack
	smpsLoop            $00, $02, Bridge_Loop03
	dc.b	$08
	smpsAlterVol        $FA
	dc.b	nA5, $1C, nG5, $15, nC6, $16, nF5, $1D, $0E, $0F, $0E, nE5
	dc.b	$15, nA5, $16, nD5, $1D, $0E, $0F, $0E, nC5, $15, nF5, $16
	dc.b	nG5, $7F, smpsNoAttack, $02, nF5, $49, $0D, nG5, $0F, nAb5, $0E, $2C
	dc.b	nG5, $47, nAb5, $48, $0E, nBb5, $0F, nC6, $0E, nBb5, nEb6, $0F
	dc.b	nEb5, $0E, nBb5, $1D, nG5, $0F, nBb5, $0E, nF5, $56, $0E, nG5
	dc.b	$0F, nAb5, $0E, nG5, nBb5, nEb5, $0F, nG5, $1D, nEb5, $0E, nG5
	dc.b	$0F, nF5, $7F, smpsNoAttack, $6E, nRst, $07
	smpsSetvoice        $00
	smpsAlterVol        $EF
	smpsPan             panCenter, $00
	smpsJump            Bridge_FM2

; FM3 Data
Bridge_FM3:
	smpsSetvoice        $00
	smpsPan             panNone, $00
	dc.b	nRst

Bridge_Loop01:
	dc.b	$7F
	smpsLoop            $00, $07, Bridge_Loop01
	dc.b	$1D
	smpsSetvoice        $03
	smpsAlterVol        $1A
	smpsPan             panCenter, $00
	dc.b	nCs5, $07, nAb4, $08, nCs5, $07, nF5, nAb5, nF5, $08, nCs5, $07
	dc.b	nAb4, nCs5, nAb4, $08, nCs5, $07, nF5, $06, nAb5, $08, nF5, $07
	dc.b	nCs5, nAb4, nEb5, $08, nBb4, $07, nEb5, nG5, nBb5, $08, nG5, $07
	dc.b	nEb5, nBb4, nEb5, nBb4, nEb5, nG5, nBb5, $08, nG5, $07, nEb5, nBb4
	dc.b	nCs5, nAb4, $08, nCs5, $07, nF5, nAb5, $08, nF5, $07, nCs5, nAb4
	dc.b	nCs5, nAb4, nCs5, nF5, nAb5, $08, nF5, $07, nCs5, nAb4, nEb5, nBb4
	dc.b	nEb5, $08, nG5, $07, nBb5, nG5, nEb5, $08, nBb4, $07, nEb5, nBb4
	dc.b	nEb5, nG5, $08, nBb5, $07, nG5, nEb5, nBb4, nF5, nCs5, nF5, nRst
	dc.b	$01, nAb5, $07
	smpsAlterVol        $04
	dc.b	nCs6
	smpsAlterVol        $FC
	dc.b	nAb5, $08, nF5, $07, nCs5, nF5, nCs5, nF5, nAb5
	smpsAlterVol        $04
	dc.b	nCs6, $08
	smpsAlterVol        $FC
	dc.b	nAb5, $07, nF5, nCs5, nG5, nEb5, nG5, nBb5
	smpsAlterVol        $04
	dc.b	nEb6, $08
	smpsAlterVol        $FC
	dc.b	nBb5, $07, nG5, nEb5, $08, nG5, $07, nEb5, nG5, nBb5
	smpsAlterVol        $04
	dc.b	nG6, $08, nEb6, $07, nA6, nG6
	smpsAlterVol        $FC
	dc.b	nA5, nF5, nA5
	smpsAlterVol        $04
	dc.b	nC6, nF6, $08, nC6, $07, nF6, $08

Bridge_Loop02:
	dc.b	nA6, $07
	smpsAlterVol        $FC
	dc.b	nA5, nF5, nA5
	smpsAlterVol        $04
	dc.b	nC6, nF6, $08, nC6, $07, nF6
	smpsLoop            $00, $02, Bridge_Loop02
	dc.b	nA6
	smpsAlterVol        $FC
	dc.b	nA5, nF5, nA5, $08
	smpsAlterVol        $04
	dc.b	nC6, $07, nF6, nC6, $08, nF6, $07, nA6
	smpsSetvoice        $00
	smpsAlterVol        $E2
	smpsPan             panCenter, $00
	smpsJump            Bridge_FM3

; FM4 Data
Bridge_FM4:
	smpsSetvoice        $00
	smpsPan             panNone, $00
	dc.b	nRst, $2A
	smpsSetvoice        $02
	smpsAlterVol        $18
	smpsPan             panLeft, $00
	dc.b	nA5, $1D, nG5, $16, nC6, $15, nF5, $1C, $0F, $0E, $0F, nE5
	dc.b	$16, nA5, $15, nD5, $1C, $0F, $0E, $0F, nC5, $16, nF5, $15
	dc.b	nBb5, $1C, nA5, $0F, nG5, $0E, nF5, nF5, $1D, nG5
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $08
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG5
	smpsAlterVol        $FA
	dc.b	nA5, $1C, nG5, $16, nC6, nF5, $1C, $0F, $0E, nF5, nE5, $16
	dc.b	nA5, nD5, $1C, $0F, $0E, nD5, nC5, $16, nF5, nG5, $7F, smpsNoAttack
	dc.b	$02, nF5, $47, $0F, nG5, $0E, nAb5, $0F, $2B, nG5, $48, nAb5
	dc.b	$47, $0F, nBb5, $0E, nC6, nBb5, $0F, nEb6, $0E, nEb5, $0F, nBb5
	dc.b	$1D, nG5, $0E, nBb5, nF5, $56, $0F, nG5, $0E, nAb5, nG5, nBb5
	dc.b	$0F, nEb5, nG5, $1C, nEb5, $0F, nG5, $0E, nF5, $7F, smpsNoAttack, $67
	smpsSetvoice        $00
	smpsAlterVol        $E8
	smpsPan             panCenter, $00
	smpsJump            Bridge_FM4

; FM5 Data
Bridge_FM5:
	smpsSetvoice        $01
	smpsAlterVol        $0F
	smpsPan             panRight, $00
	dc.b	nF3, $0E, nF3, nF4, nF3, nE3, $0F, $0E, nE4, $0F, nE3, $0E
	dc.b	nD3, nD3, nD4, $0F, nD3, $0E, nC3, $0F, $0E, nC4, $0F, nC3
	dc.b	$0E, nBb2, nBb2, nBb3, $0F, nBb2, $0E, nA2, $0F, $0E, nA3, $0F
	dc.b	nA2, $0E, nBb2, nBb2, nBb3, $0F, nBb2, $0E, nC3, nC3, $0F, nC4
	dc.b	$0E, nC3, $0F, nF3, $0E, $0F, nF4, $0E, nF3, nE3, nE3, $0F
	dc.b	nE4, $0E, nE3, $0F, nD3, $0E, nD3, nD4, $0F, nD3, $0E, nC3
	dc.b	nC3, $0F, nC4, $0E, nC3, $0F, nBb2, $0E, nBb2, nBb3, $0F, nBb2
	dc.b	$0E, nA2, nA2, nA3, $0F, nA2, nEb3, $0E, nEb3, nEb4, $0F, nEb3
	dc.b	$0E, nC3, nC3, $0F, nC4, $0E, nC3, nCs3, $0F, $0E, nCs4, $0F
	dc.b	nCs3, $0E, $0F, $0D, nCs4, $0F, nCs3, $0E, nEb3, $0F, $0E, nEb4
	dc.b	$0F, nEb3, $0E, nEb3, nEb3, nEb4, $0F, nEb3, $0E, nCs3, $0F, $0E
	dc.b	nCs4, $0F, nCs3, $0E, nCs3, nCs3, nCs4, $0F, nCs3, $0E, nEb3, nEb3
	dc.b	$0F, nEb4, nEb3, $0E, nEb3, nEb3, $0F, nEb4, $0E, nEb3, nCs3, nCs3
	dc.b	$0F, nCs4, nCs3, $0E, nCs3, nCs3, nCs4, $0F, nCs3, $0E, nEb3, nEb3
	dc.b	nEb4, $0F, nEb3, nEb3, $0E, nEb3, nEb4, $0F, nEb3, $0E, nF3, nF3
	dc.b	$0F, nF4, $0E, nF3, $0F

Bridge_Loop00:
	dc.b	$0E, nF3, nF4, $0F, nF3, $0E
	smpsLoop            $00, $02, Bridge_Loop00
	dc.b	nF3, nRst, $01, nC3, $0E, nD3, $0F, nE3, $0E
	smpsSetvoice        $00
	smpsAlterVol        $F1
	smpsPan             panCenter, $00
	smpsJump            Bridge_FM5

; PSG1 Data
Bridge_PSG1:
	dc.b	nRst, $1C
	smpsPSGAlterVol     $06
	dc.b	nA2, $07
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $FC
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $FD
	dc.b	nC3
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	$07
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	$08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nE2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$07
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	nA2
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$08
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$07
	smpsPSGAlterVol     $FD
	dc.b	nD2
	smpsPSGAlterVol     $02
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $FC
	dc.b	nD2
	smpsPSGAlterVol     $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	$08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nD2
	smpsPSGAlterVol     $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	nC2, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	$07
	smpsPSGAlterVol     $FD
	dc.b	nBb2
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $01
	dc.b	nBb2
	smpsPSGAlterVol     $01
	dc.b	nBb2
	smpsPSGAlterVol     $FC
	dc.b	nA2
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $FE
	dc.b	nG2, $08

Bridge_Loop09:
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsLoop            $00, $02, Bridge_Loop09
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	$07
	smpsPSGAlterVol     $FC
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $FB
	dc.b	nA2, $07
	smpsPSGAlterVol     $02
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $FC
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $FD
	dc.b	nC3, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $01
	dc.b	nC3
	smpsPSGAlterVol     $FD
	dc.b	nF2, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $FC
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	$08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE2
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	nA2, $08
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$07
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA2
	smpsPSGAlterVol     $FD
	dc.b	nD2, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $FC
	dc.b	nD2
	smpsPSGAlterVol     $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	$08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nD2
	smpsPSGAlterVol     $02
	dc.b	nD2
	smpsPSGAlterVol     $FE
	dc.b	nC2
	smpsPSGAlterVol     $02
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $FD
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	$07
	smpsPSGAlterVol     $FD
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	$16
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $F9
	dc.b	nF2, $07
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $01
	dc.b	$0F
	smpsPSGAlterVol     $FB
	dc.b	$07
	smpsPSGAlterVol     $02
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	dc.b	$08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$0F
	smpsPSGAlterVol     $FC
	dc.b	nG2, $07
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $FB
	dc.b	nAb2, $07
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $FB
	dc.b	$07
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nC3
	smpsPSGAlterVol     $02
	dc.b	nC3
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nEb3, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nEb2
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $07
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $01
	dc.b	nBb2
	smpsPSGAlterVol     $01
	dc.b	nBb2
	smpsPSGAlterVol     $FC
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $FE
	dc.b	nBb2, $07
	smpsPSGAlterVol     $02
	dc.b	nBb2
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $01
	dc.b	$07
	smpsPSGAlterVol     $FA
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $FE
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nAb2
	smpsPSGAlterVol     $02
	dc.b	nAb2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $FE
	dc.b	nBb2
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $FE
	dc.b	nEb2, $07
	smpsPSGAlterVol     $02
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	$07
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $FC
	dc.b	nEb2
	smpsPSGAlterVol     $02
	dc.b	nEb2
	smpsPSGAlterVol     $FE
	dc.b	nG2, $08
	smpsPSGAlterVol     $02
	dc.b	$07
	smpsPSGAlterVol     $FE
	dc.b	nF2
	smpsPSGAlterVol     $02
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$1D
	smpsPSGAlterVol     $01
	dc.b	nF2

Bridge_Loop0A:
	smpsPSGAlterVol     $01
	dc.b	$1C
	smpsPSGAlterVol     $01
	dc.b	$1D
	smpsLoop            $00, $02, Bridge_Loop0A
	dc.b	nRst, $3A
	smpsPSGAlterVol     $F2
	smpsJump            Bridge_PSG1

; PSG2 Data
Bridge_PSG2:
	dc.b	nRst

Bridge_Loop05:
	dc.b	$7F
	smpsLoop            $00, $07, Bridge_Loop05
	dc.b	$1D
	smpsPSGAlterVol     $08
	smpsAlterNote       $01
	dc.b	nCs1, $07, nAb0, $08, nCs1, $07
	smpsAlterNote       $00
	dc.b	nF1, nAb1, nF1, $08
	smpsAlterNote       $01
	dc.b	nCs1, $07, nAb0, nCs1, nAb0, $08, nCs1, $07
	smpsAlterNote       $00
	dc.b	nF1, $06, nAb1, $08, nF1, $07
	smpsAlterNote       $01
	dc.b	nCs1, nAb0, nEb1, $08, nBb0, $07, nEb1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $01
	dc.b	nBb1, $08
	smpsAlterNote       $00
	dc.b	nG1, $07
	smpsAlterNote       $01
	dc.b	nEb1, nBb0, nEb1, nBb0, nEb1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $01
	dc.b	nBb1, $08
	smpsAlterNote       $00
	dc.b	nG1, $07
	smpsAlterNote       $01
	dc.b	nEb1, nBb0, nCs1, nAb0, $08, nCs1, $07
	smpsAlterNote       $00
	dc.b	nF1, nAb1, $08, nF1, $07
	smpsAlterNote       $01
	dc.b	nCs1, nAb0, nCs1, nAb0, nCs1
	smpsAlterNote       $00
	dc.b	nF1, nAb1, $08, nF1, $07
	smpsAlterNote       $01
	dc.b	nCs1, nAb0, nEb1, nBb0, nEb1, $08
	smpsAlterNote       $00
	dc.b	nG1, $07
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nG1, $08
	smpsAlterNote       $01
	dc.b	nEb1, $07, nBb0, nEb1, nBb0, nEb1
	smpsAlterNote       $00
	dc.b	nG1, $08
	smpsAlterNote       $01
	dc.b	nBb1, $07
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $01
	dc.b	nEb1, nBb0
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $00
	dc.b	nF1, $08, nAb1, $07
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nAb1, $08

Bridge_Loop06:
	dc.b	nF1, $07
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $00
	smpsLoop            $00, $02, Bridge_Loop06
	dc.b	nF1, nAb1
	smpsAlterNote       $01
	dc.b	nCs2, $08
	smpsAlterNote       $00
	dc.b	nAb1, $07, nF1
	smpsAlterNote       $01
	dc.b	nCs1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $01
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $01
	dc.b	nBb1, $08
	smpsAlterNote       $00
	dc.b	nEb2, $07
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nG2, $08

Bridge_Loop07:
	smpsAlterNote       $01
	dc.b	nEb1, $07
	smpsAlterNote       $00
	dc.b	nG1
	smpsLoop            $00, $02, Bridge_Loop07
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nG2, $08, nEb2, $07, nA2, nG2, nA1, nF1, nA1, nC2, $08, nF2
	dc.b	$07, nC2, nF2, $08

Bridge_Loop08:
	dc.b	nA2, $07, nA1, nF1, nA1, nC2, nF2, $08, nC2, $07, nF2
	smpsLoop            $00, $02, Bridge_Loop08
	dc.b	nA2, nA1, nF1, $08, nA1, $07, nC2, nF2, nC2, $08, nF2, $07
	dc.b	nA2
	smpsPSGAlterVol     $F8
	smpsJump            Bridge_PSG2

Bridge_Voices:
;	Voice $00
;	$15
;	$60, $30, $20, $51, 	$1E, $16, $1B, $1F, 	$10, $01, $01, $0B
;	$01, $00, $01, $01, 	$32, $68, $C8, $28, 	$17, $00, $00, $09
	smpsVcAlgorithm     $05
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $02, $03, $06
	smpsVcCoarseFreq    $01, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1B, $16, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0B, $01, $01, $10
	smpsVcDecayRate2    $01, $01, $00, $01
	smpsVcDecayLevel    $02, $0C, $06, $03
	smpsVcReleaseRate   $08, $08, $08, $02
	smpsVcTotalLevel    $09, $00, $00, $17

;	Voice $01
;	$3A
;	$60, $00, $00, $30, 	$DF, $C0, $D4, $1F, 	$06, $0D, $0D, $12
;	$01, $0C, $02, $01, 	$15, $75, $15, $06, 	$20, $20, $14, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $00, $06
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $03, $03, $03
	smpsVcAttackRate    $1F, $14, $00, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $12, $0D, $0D, $06
	smpsVcDecayRate2    $01, $02, $0C, $01
	smpsVcDecayLevel    $00, $01, $07, $01
	smpsVcReleaseRate   $06, $05, $05, $05
	smpsVcTotalLevel    $00, $14, $20, $20

;	Voice $02
;	$3C
;	$30, $51, $20, $20, 	$10, $4C, $10, $1F, 	$03, $00, $00, $0E
;	$00, $04, $00, $01, 	$12, $07, $22, $C7, 	$1F, $00, $23, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $05, $03
	smpsVcCoarseFreq    $00, $00, $01, $00
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $1F, $10, $0C, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $00, $00, $03
	smpsVcDecayRate2    $01, $00, $04, $00
	smpsVcDecayLevel    $0C, $02, $00, $01
	smpsVcReleaseRate   $07, $02, $07, $02
	smpsVcTotalLevel    $00, $23, $00, $1F

;	Voice $03
;	$04
;	$31, $31, $30, $30, 	$1F, $9F, $1C, $9F, 	$11, $0D, $12, $09
;	$06, $01, $06, $04, 	$05, $38, $05, $29, 	$28, $00, $15, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $00, $00, $01, $01
	smpsVcRateScale     $02, $00, $02, $00
	smpsVcAttackRate    $1F, $1C, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $12, $0D, $11
	smpsVcDecayRate2    $04, $06, $01, $06
	smpsVcDecayLevel    $02, $00, $03, $00
	smpsVcReleaseRate   $09, $05, $08, $05
	smpsVcTotalLevel    $00, $15, $00, $28

