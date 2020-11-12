MMBIntro_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MMBIntro_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       MMBIntro_DAC
	smpsHeaderFM        MMBIntro_FM1,	$00, $00
	smpsHeaderFM        MMBIntro_FM2,	$00, $00
	smpsHeaderFM        MMBIntro_FM3,	$00, $00
	smpsHeaderFM        MMBIntro_FM4,	$00, $00
	smpsHeaderFM        MMBIntro_FM5,	$00, $00
	smpsHeaderPSG       MMBIntro_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       MMBIntro_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       MMBIntro_PSG3,	$00, $00, $00, $00

; FM1 Data
MMBIntro_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $08
	smpsPan             panCenter, $00

MMBIntro_Loop0F:
	dc.b	nC3, $14, nBb2, $0A, nC3, nRst, $1E, nBb2, $0A, nC3, nRst, $14
	dc.b	nBb2, nC3, nBb2, $0A, nC3, $14, nBb2, $0A, nC3, nRst, $1E, nBb2
	dc.b	$0A, nC3, nRst, $14, nG2, nG2, $0A, nBb2, nG2
	smpsLoop            $00, $03, MMBIntro_Loop0F
	dc.b	nC3, $14, nBb2, $0A, nC3, nRst, $1E, nBb2, $0A, nC3, nRst, $14
	dc.b	nBb2, nC3, nBb2, $0A, nD3, $14, nC3, $0A, nD3, nRst, $1E, nG3
	dc.b	$0A, nRst, $1E, nG2, $14, $0A, nBb2, nG2, nC3, $14, nBb2, $0A
	dc.b	nC3, nRst, $1E, nBb2, $0A, nC3, nRst, $14, nBb2, nC3, nBb2, $0A
	dc.b	nC3, $14, nBb2, $0A, nC3, nRst, $1E, nBb2, $0A, nC3, nRst, $14
	dc.b	nG2, nG2, $0A, nBb2, nG2, nC3, $14, nBb2, $0A, nC3, nRst, $1E
	dc.b	nBb2, $0A, nC3, nRst, $14, nBb2, nC3, nBb2, $0A, nD3, $14, nC3
	dc.b	$0A, nD3, nRst, $1E, nG3, $0A, nRst, $1E, nG2, $14, $0A, nBb2
	dc.b	nG2, nF2, $14, nC3, $0A, nF3, nRst, nC3, nF3, nRst, $28, nC3
	dc.b	$14, nF2, $0A, nC3, nF2, nCs3, $14, nAb3, $0A, nEb4, nRst, nCs4
	dc.b	nAb3, nRst, $28, nAb3, $0A, nCs3, $14, nAb3, $0A, nCs3, nC3, $14
	dc.b	nG3, $0A, nD4, nRst, nG3, nC4, nRst, $28, nG3, $0A, nC3, $14
	dc.b	nBb2, nA2, nE3, $0A, nA3, nRst, nE3, nA3, nRst, $28, nE3, $0A
	dc.b	nA2, $14, nA2, nAb2, nEb3, $0A, nBb3, nRst, nEb3, nAb3, nRst, $28
	dc.b	nEb3, $0A, nAb2, $14, nEb3, $0A, nAb2, nF2, $14, nC3, $0A, nG3
	dc.b	nRst, nC3, nF3, nRst, $28, nC3, $0A, nF2, $14, nC3, nF2, nC3
	dc.b	$0A, nG3, nRst, nC3, nF3, nRst, $28, nC3, $0A, nF2, $14, nEb3
	dc.b	nD3, nA3, $0A, nE4, nRst, nD3, nG2, nG2, nRst, $46, nBb2, $0A
	dc.b	nC3, $14, nBb2, $0A, nC3, nRst, $1E, nBb2, $0A, nC3, nRst, $14
	dc.b	nBb2, nC3, nBb2, $0A, nC3, $14, nBb2, $0A, nC3, nRst, $1E, nBb2
	dc.b	$0A, nC3, nRst, $14, nG2, nG2, $0A, nBb2, nG2, nC3, $14, nBb2
	dc.b	$0A, nC3, nRst, $1E, nBb2, $0A, nC3, nRst, $14, nBb2, nC3, nBb2
	dc.b	$0A, nD3, $14, nC3, $0A, nD3, nRst, nF3, nFs3, nG3, nRst, $1E
	dc.b	nG2, $14, $0A, nBb2, nG2, nC3, $14, nBb2, $0A, nC3, nRst, $1E
	dc.b	nBb2, $0A, nC3, nRst, $14, nBb2, nC3, nBb2, $0A, nA2, $14, nG2
	dc.b	$0A, nA2, nRst, $1E, nA2, $0A, nRst, $1E, nA2, $14, $0A, nG3
	dc.b	nA2, nAb2, $14, nG2, $0A, nAb2, nRst, $1E, nG2, $0A, nRst, $1E
	dc.b	nG2, $0A, nD3, $14, nG2, nF2, nE2, $0A, nF2, nRst, $1E, nE2
	dc.b	$0A, nF2, nRst, $14, nE2, nF2, nE2, $0A, nF2, $14, nE2, $0A
	dc.b	nF2, nRst, $1E, nF2, $0A, nRst, $1E, nE2, $14, nF2, nE2, $0A
	dc.b	nF2, $14, nE2, $0A, nF2, nRst, $1E, nE2, $0A, nF2, nRst, $14
	dc.b	nE2, nF2, nE2, $0A, nF2, $14, nE2, $0A, nF2, nRst, $1E, nF2
	dc.b	$0A, nRst, $1E, nE2, $0A, nF2, $14, nFs2, nG2, nF2, $0A, nG2
	dc.b	nRst, $1E, nF2, $0A, nG2, nRst, $14, nF2, nG2, nF2, $0A, nG2
	dc.b	$14, nF2, $0A, nG2, nRst, $1E, nG2, $0A, nRst, $1E, nF2, $14
	dc.b	nG2, nF2, $0A, nG2, $14, nF2, $0A, nG2, nRst, $1E, nF2, $0A
	dc.b	nG2, nRst, $14, nF2, nG2, nF2, $0A, nG2, $14, nF2, $0A, nG2
	dc.b	nRst, $1E, nG2, $0A, nRst, $1E, nF2, $14, nG2, nF2, $0A, nEb2
	dc.b	$14, nD2, $0A, nEb2, nRst, $1E, nD2, $0A, nEb2, nRst, $14, nD2
	dc.b	nEb2, nD2, $0A, nEb2, $14, nD2, $0A, nEb2, nRst, $1E, nEb2, $0A
	dc.b	nRst, $1E, nEb2, $14, $1E, nC3, $14, nBb2, $0A, nC3, nRst, $1E
	dc.b	nBb2, $0A, nC3, nRst, $14, nBb2, nC3, nBb2, $0A, nC3, $14, nBb2
	dc.b	$0A, nC3, nRst, $1E, nC3, $0A, nRst, $1E, nC3, $14, $0A, nBb2
	dc.b	$14, nA2, nG2, $0A, nA2, nRst, $1E, nG2, $0A, nA2, nRst, $14
	dc.b	nG2, nA2, nG2, $0A, nA2, $14, nG2, $0A, nA2, nRst, $1E, nA2
	dc.b	$0A, nRst, $1E, nA2, $14, $0A, nG2, $14, nF2, nE2, $0A, nF2
	dc.b	nRst, $1E, nE2, $0A, nF2, nRst, $14, nE2, nF2, nE2, $0A, nG2
	dc.b	$14, nF3, $0A, nG3, nRst, nF3, nG3, nG3, nRst, $1E, nG2, $14
	dc.b	$0A, nBb2, nG2
	smpsAlterVol        $F8
	smpsPan             panCenter, $00
	smpsJump            MMBIntro_FM1

; FM2 Data
MMBIntro_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $10
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $7F, $70, nG3, $14, nC4, $5A, $0A, nD4
	dc.b	$14, nEb4, nG4, nF4, nG4, $0A, nC4, $6E, $0A, nD4, nEb4, $5A
	dc.b	$0A, nD4, $14, nC4, nBb3, nG3, $3C, nF3, $0A, nG3, $46, $14
	dc.b	nC4, $5A, $0A, nD4, $14, nEb4, nG4, nF4, nG4, $0A, nC4, $6E
	dc.b	$0A, nD4, nEb4, $5A, $0A, nD4, $14, nC4, nBb3, nC4, nG4, $0A
	dc.b	$7F, smpsNoAttack, $03, $64, nEb4, $1E, nF4, nG4, $64, $14, nEb4, nC4
	dc.b	nD4, $64, nBb3, $1E, nC4, nD4, $78, nC4, $28, nG4, $64, nEb4
	dc.b	$1E, nF4, nG4, $78, nEb4, $14, nC4, nG4, $78, nC4, $28, nE4
	dc.b	$3C, nEb4, $0A, nRst, $46, nG4, $14, nC5, $5A, $0A, nD5, $14
	dc.b	nEb5, nG5, nF5, nG5, $0A, nC5, $6E, $0A, nD5, nEb5, $5A, $0A
	dc.b	nD5, $14, nC5, nBb4, nG4, nF4, $0A, nG4, $6E, $14, nC5, $5A
	dc.b	$0A, nD5, $14, nEb5, nG5, nF5, nG5, $0A, nC5, $6E, $0A, nD5
	dc.b	nEb5, $64, nD5, $14, nC5, nBb4, nC5, $7F, smpsNoAttack, $21, nRst, $7F
	dc.b	$7F, $7F, $1D, nBb3, $0A, nC4, nF4, nBb4, nF4, nBb4, nC5, nF5
	dc.b	$3C, nG5, $0A, nD5, $5A, nRst, $7F, $7F, $7F, $7F, $0C

MMBIntro_Loop0E:
	dc.b	nG3, $28, nC4, nD4, nG4, $7F, smpsNoAttack, $21, nRst, $28
	smpsLoop            $00, $02, MMBIntro_Loop0E
	dc.b	nC4, nF4, nG4, nC5, $50, nG4, $28, nEb4, nC4, $7F, smpsNoAttack, $21
	dc.b	nA3, $50, nRst
	smpsSetvoice        $00
	smpsAlterVol        $F0
	smpsPan             panCenter, $00
	smpsJump            MMBIntro_FM2

; FM3 Data
MMBIntro_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $14
	smpsPan             panCenter, $00

MMBIntro_Loop09:
	dc.b	nBb3, $1E, $28, $1E, nBb3, nBb3, nC4, nC4, $28, $1E, nC4, nC4
	smpsLoop            $00, $05, MMBIntro_Loop09
	dc.b	nBb3, nBb3, $28, $1E, nBb3, nBb3, nC4, nC4, $28, nEb4, $1E, nEb4
	dc.b	nEb4, nG4, nG4, $28, $1E, nG4, nG4, nEb4, nEb4, $28, $1E, nEb4
	dc.b	nEb4, nBb3, nBb3, $28, $1E, nBb3, nBb3, nF4, nF4, $28, $1E, nF4
	dc.b	nF4, nC4, nC4, $28, $1E, nC4, nC4

MMBIntro_Loop0A:
	dc.b	nEb4, nEb4, $28, $1E, nEb4, nEb4
	smpsLoop            $00, $02, MMBIntro_Loop0A
	dc.b	nC4, nC4, nB3, $0A, nB3, nRst, $50, nBb3, $1E, $28, $1E, nBb3
	dc.b	nBb3, nC4, nC4, $28, $1E, nC4, nC4, nBb3, nBb3, $28, $1E, nBb3
	dc.b	nBb3, nC4, nC4, $28, nA3, $1E, nA3, nA3, nBb3, nBb3, $28, $1E
	dc.b	nBb3, nBb3, nC4, nC4, $28, $1E, nC4, nC4, nEb4, nC4, $28, nA3
	dc.b	$1E, nA3, nA3

MMBIntro_Loop0B:
	dc.b	nBb3, $3C, nRst, $0A, nA3, $50, nBb3, $46, nRst, $0A, nA3, $14
	dc.b	nRst, nA3, $28, nRst, $0A
	smpsLoop            $00, $02, MMBIntro_Loop0B

MMBIntro_Loop0C:
	dc.b	nC4, $3C, nRst, $0A, nB3, $50, nC4, $46, nRst, $0A, nB3, $14
	dc.b	nRst, nB3, $28, nRst, $0A
	smpsLoop            $00, $02, MMBIntro_Loop0C

MMBIntro_Loop0D:
	dc.b	nF4, $3C, nRst, $0A, nD4, $50, nF4, $46, nRst, $0A, nD4, $14
	dc.b	nRst, nD4, $28, nRst, $0A
	smpsLoop            $00, $02, MMBIntro_Loop0D
	dc.b	nF4, $3C, nRst, $0A, nD4, $50, nF4, $46, nRst, $0A, nG3, $14
	dc.b	nRst, nG3, $28, nRst, $0A, nEb4, $3C, nRst, $0A, nC4, $50, $28
	dc.b	$14, nRst, $0A, nC4, nC4, nRst, $50
	smpsSetvoice        $00
	smpsAlterVol        $EC
	smpsPan             panCenter, $00
	smpsJump            MMBIntro_FM3

; FM4 Data
MMBIntro_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $10
	smpsPan             panLeft, $00

MMBIntro_Loop05:
	dc.b	nG3, $1E, $28, $1E, nG3, nG3, nA3, nA3, $28, $1E, nA3, nA3
	smpsLoop            $00, $05, MMBIntro_Loop05
	dc.b	nG3, nG3, $28, $1E, nG3, nG3, nA3, nA3, $28, nB3, $1E, nF3
	dc.b	nB3, nEb4, nEb4, $28, $1E, nEb4, nEb4, nB3, nB3, $28, $1E, nB3
	dc.b	nB3, nG3, nG3, $28, $1E, nG3, nG3, nC4, nC4, $28, $1E, nC4
	dc.b	nC4, nBb3, nBb3, $28, $1E, nBb3, nBb3, nD4, nD4, $28, $1E, nD4
	dc.b	nD4, nAb3, nAb3, $28, $1E, nAb3, nAb3, nA3, nA3, nEb4, $0A, nEb4
	dc.b	nRst, $50, nG3, $1E, $28, $1E, nG3, nG3, nA3, nA3, $28, $1E
	dc.b	nA3, nA3, nG3, nG3, $28, $1E, nG3, nG3, nA3, nA3, $28, nB3
	dc.b	$1E, nB3, nB3, nG3, nG3, $28, $1E, nG3, nG3, nA3, nA3, $28
	dc.b	$1E, nA3, nA3, nC4, nEb4, $28, nF4, $1E, nF4, nF4

MMBIntro_Loop06:
	dc.b	nG3, $3C, nRst, $0A, nG3, $50, $46, nRst, $0A, nG3, $14, nRst
	dc.b	nG3, $28, nRst, $0A
	smpsLoop            $00, $02, MMBIntro_Loop06

MMBIntro_Loop07:
	dc.b	nA3, $3C, nRst, $0A, nA3, $50, $46, nRst, $0A, nA3, $14, nRst
	dc.b	nA3, $28, nRst, $0A
	smpsLoop            $00, $02, MMBIntro_Loop07

MMBIntro_Loop08:
	dc.b	nD4, $3C, nRst, $0A, nBb3, $50, nD4, $46, nRst, $0A, nBb3, $14
	dc.b	nRst, nBb3, $28, nRst, $0A
	smpsLoop            $00, $02, MMBIntro_Loop08
	dc.b	nD4, $3C, nRst, $0A, nG3, $50, nD4, $46, nRst, $0A, nF4, $14
	dc.b	nRst, nF4, $28, nRst, $0A, nC4, $3C, nRst, $0A, nAb3, $50, nF3
	dc.b	$28, $14, nRst, $0A, nA3, nA3, nRst, $50
	smpsSetvoice        $00
	smpsAlterVol        $F0
	smpsPan             panCenter, $00
	smpsJump            MMBIntro_FM4

; FM5 Data
MMBIntro_FM5:
	smpsSetvoice        $02
	smpsAlterVol        $10
	smpsPan             panRight, $00

MMBIntro_Loop01:
	dc.b	nEb3, $1E, $28, $1E, nEb3, nEb3, nF3, nF3, $28, $1E, nF3, nF3
	dc.b	nEb3, nEb3, $28, $1E, nEb3, nEb3, nF3, nF3, $28, nF4, $1E, nF4
	dc.b	nF4
	smpsLoop            $00, $02, MMBIntro_Loop01
	dc.b	nEb3, nEb3, $28, $1E, nEb3, nEb3, nF3, nF3, $28, $1E, nF3, nF3
	dc.b	nEb3, nEb3, $28, $1E, nEb3, nEb3, nF3, nF3, $28, $1E, nB3, nF3
	dc.b	nC4, nC4, $28, $1E, nC4, nC4, nF3, nF3, $28, $1E, nF3, nF3
	dc.b	nEb3, nEb3, $28, $1E, nEb3, nEb3

MMBIntro_Loop02:
	dc.b	nG3, nG3, $28, $1E, nG3, nG3
	smpsLoop            $00, $02, MMBIntro_Loop02
	dc.b	nA3, nA3, $28, $1E, nA3, nA3, nG3, nG3, $28, $1E, nG3, nG3
	dc.b	nF3, nF3, nF4, $0A, nF4, nRst, $50, nEb3, $1E, $28, $1E, nEb3
	dc.b	nEb3, nF3, nF3, $28, $1E, nF3, nF3, nEb3, nEb3, $28, $1E, nEb3
	dc.b	nEb3, nF3, nF3, $28, nEb4, $1E, nEb4, nEb4, nEb3, nEb3, $28, $1E
	dc.b	nEb3, nEb3, nF3, nF3, $28, $1E, nF3, nF3, nG3, nG3, $28, nC4
	dc.b	$1E, nC4, nC4

MMBIntro_Loop03:
	dc.b	nEb3, $3C, nRst, $0A, nEb3, $50, $46, nRst, $0A, nEb3, $14, nRst
	dc.b	nEb3, $28, nRst, $0A
	smpsLoop            $00, $02, MMBIntro_Loop03

MMBIntro_Loop04:
	dc.b	nF3, $3C, nRst, $0A, nF3, $50, $46, nRst, $0A, nF3, $14, nRst
	dc.b	nF3, $28, nRst, $0A
	smpsLoop            $00, $02, MMBIntro_Loop04
	dc.b	nBb3, $3C, nRst, $0A, nG3, $50, nBb3, $46, nRst, $0A, nG3, $14
	dc.b	nRst, nG3, $28, nRst, $0A, nEb3, $3C, nRst, $0A, nEb3, $50, $46
	dc.b	nRst, $0A, nEb3, $14, nRst, nEb3, $28, nRst, $0A, nG3, $3C, nRst
	dc.b	$0A, nF4, $50, nG3, $46, nRst, $0A, nD4, $14, nRst, nD4, $28
	dc.b	nRst, $0A, nAb3, $3C, nRst, $0A, nEb3, $50, nA3, $28, $14, nRst
	dc.b	$0A, nF3, nF3, nRst, $50
	smpsSetvoice        $00
	smpsAlterVol        $F0
	smpsPan             panCenter, $00
	smpsJump            MMBIntro_FM5

; PSG1 Data
MMBIntro_PSG1:
	dc.b	nRst, $7F, $7F, $7F, $7F, $7A
	smpsPSGAlterVol     $07
	dc.b	nG0, $14, nC1, $64, nD1, $14, nEb1, nG1, nF1, nG1, $0A, nC1
	dc.b	$78, nD1, $0A, nEb1, $64, nD1, $14, nC1, nBb0, nG0, $3C, nF0
	dc.b	$0A, nG0, $5A, nC1, $64, nD1, $14, nEb1, nG1, nF1, nG1, $0A
	dc.b	nC1, $78, nD1, $0A, nEb1, $64, nD1, $14, nC1, nBb0, nC1, nG1
	dc.b	$7F, $71, nEb1, $1E, nF1, nG1, $78, nEb1, $14, nC1, nD1, $64
	dc.b	nBb0, $1E, nC1, nD1, $78, nC1, $28, nG1, $64, nEb1, $1E, nF1
	dc.b	nG1, $78, nEb1, $14, nC1, nG1, $78, nC1, $28, nE1, $3C, nEb1
	dc.b	$0A, nRst, $46, nG1, $14, nC2, $64, nD2, $14, nEb2, nG2, nF2
	dc.b	nG2, $0A, nC2, $78, nD2, $0A, nEb2, $64, nD2, $14, nC2, nBb1
	dc.b	nG1, nF1, $0A, nG1, $7F, $03, nC2, $64, nD2, $14, nEb2, nG2
	dc.b	nF2, nG2, $0A, nC2, $78, nD2, $0A, nEb2, $64, nD2, $14, nC2
	dc.b	nBb1, nC2, $7F, $21, nRst, $7F, $7F, $7F, $1D, nBb0, $0A, nC1
	dc.b	nF1, nBb1, nF1, nBb1, nC2, nF2, $3C, nG2, $0A, nD2, $5A, nRst
	dc.b	$7F, $7F, $7F, $7F, $0C

MMBIntro_Loop193:
	dc.b	nG0, $28, nC1, nD1, nG1, $7F, $21, nRst, $28
	smpsLoop            $00, $02, MMBIntro_Loop193
	dc.b	nC1, nF1, nG1, nC2, $50, nG1, $28, nEb1, nC1, $7F, $21, nA0
	dc.b	$50, nRst, $46
	smpsPSGAlterVol     $F9
	smpsJump            MMBIntro_PSG1

; PSG2 Data
MMBIntro_PSG2:
	dc.b	nRst, $7F, $7F, $7F, $7F, $7F, $7F, $6C
	smpsPSGAlterVol     $02
	dc.b	nG0, $0A, nF0, $14, nG0, $0A, nC0, $32, nRst, $7F, $7F, $7F
	dc.b	$7F, $2A, nG0, $0A, nF0, $14, nG0, $0A, nC0, $32, nRst, $7F
	dc.b	$21, nE0, $46, nEb0, $5A, nBb1, $64, nG1, $1E, nAb1, nBb1, $78
	dc.b	nG1, $14, nEb1, nF1, $64, nD1, $1E, nEb1, nF1, $78, nEb1, $28
	dc.b	nBb1, $64, nG1, $1E, nAb1, nBb1, $78, nG1, $14, nEb1, nC2, $78
	dc.b	nD2, $14, nEb2, nD2, $1E, nC2, nG1, $64, nG0, $7F, $21, nA0
	dc.b	$46, nBb0, $0A, nA0, $14, nBb0, $0A, nA0, $14, nF0, $1E, nG0
	dc.b	$7F, $21, nA0, $46, nBb0, $5A, nEb1, $64, nF1, $14, nG1, nC2
	dc.b	$5A, nG2, $0A, nF2, $14, nG2, $0A, nC2, $28, nD2, $0A, nG2
	dc.b	$64, nF2, $14, nEb2, nD2, nC1, $46, nG1, $0A, nF1, $14, nG1
	dc.b	$0A, nD1, $5A, nBb0, $0A, nG0, $14, nC1, $3C, nD1, $0A, nEb1
	dc.b	nF1, $28, nEb1, $1E, nD1, $14, nC1, $1E, nBb0, $14, nC1, $0A
	dc.b	nD1, nC1, $14, nF0, $5A, nBb0, $0A, nC1, nF1, nC1, nF1, nBb1
	dc.b	nC2, $3C, nD2, $0A, nB1, $28, nG1, $1E, nD1, $14, nF1, $3C
	dc.b	nG1, $0A, nD1, $50, nF1, $0A, nC2, $32, nD2, $0A, nRst, nB1
	dc.b	$3C, nC2, $0A, nD2, nE2, $32, nC2, $0A, nG1, nRst, nF2, $28
	dc.b	nD2, $14, nG1, nG2, $3C, nF2, $0A, nEb2, nD2, $3C, nEb2, $0A
	dc.b	nF2, $32, nEb2, $1E, nD2, $14, nC2, $1E, nG1, nC2, $0A, nD2
	dc.b	nG2, $3C, nF2, $0A, nEb2, nD2, $1E, nC2, $28, nD2, $0A, nEb2
	dc.b	$1E, nF2, nD2, $14, nC2, $1E, nG1, nC2, $0A, nD2, nG2, $3C
	dc.b	nF2, $0A, nEb2, nD2, $1E, nEb2, nF2, $32, nEb2, $1E, nD2, $14
	dc.b	nC2, $1E, nG1, nC2, $14, nBb2, $1E, nAb2, nG2, $14, nF2, $1E
	dc.b	nC2, nF2, $14, nG2, $50, nRst
	smpsPSGAlterVol     $FE
	smpsJump            MMBIntro_PSG2

; PSG3 Data
MMBIntro_PSG3:
	smpsPSGAlterVol     $02
	smpsPSGform         $E7
	dc.b	nMaxPSG

MMBIntro_Loop10:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop10
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop11:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop11
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop12:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop12
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop13:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop13
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop14:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop14
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop15:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop15
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop16:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop16
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop17:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop17
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop18:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop18
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop19:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop19
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop1A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop1A
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop1B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop1B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop1C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop1C
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop1D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop1D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop1E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop1E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop1F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop1F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop20:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop20
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop21:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop21
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop22:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop22
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop23:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop23
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop24:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop24
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop25:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop25
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop26:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop26
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop27:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop27
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop28:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop28
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop29:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop29
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop2A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop2A
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop2B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop2B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop2C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop2C
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop2D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop2D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop2E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop2E
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop2F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop2F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop30:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop30
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop31:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop31
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop32:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop32
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop33:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop33
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop34:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop34
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop35:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop35
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop36:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop36
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop37:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop37
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop38:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop38
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop39:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop39
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop3A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop3A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop3B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop3B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop3C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop3C
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop3D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop3D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop3E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop3E
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop3F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop3F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop40:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop40
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop41:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop41
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop42:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop42
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop43:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop43
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop44:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop44
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop45:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop45
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop46:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop46
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop47:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop47
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop48:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop48
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop49:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop49
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop4A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop4A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop4B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop4B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop4C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop4C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop4D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop4D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop4E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop4E
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop4F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop4F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop50:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop50
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop51:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop51
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop52:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop52
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop53:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop53
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop54:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop54
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop55:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop55
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop56:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop56
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop57:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop57
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop58:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop58
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop59:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop59
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop5A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop5A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop5B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop5B
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop5C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop5C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop5D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop5D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop5E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop5E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop5F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop5F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop60:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop60
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop61:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop61
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop62:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop62
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop63:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop63
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop64:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop64
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop65:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop65
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop66:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop66
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop67:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop67
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop68:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop68
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop69:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop69
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop6A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop6A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop6B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop6B
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop6C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop6C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop6D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop6D
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop6E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop6E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop6F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop6F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop70:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop70
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop71:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop71
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop72:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop72
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop73:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop73
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop74:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop74
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop75:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop75
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop76:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop76
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop77:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop77
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop78:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop78
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop79:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop79
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop7A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop7A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop7B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop7B
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop7C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop7C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop7D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop7D
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop7E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop7E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop7F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop7F
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop80:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop80
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop81:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop81
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop82:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop82
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop83:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop83
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop84:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop84
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop85:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop85
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop86:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop86
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop87:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop87
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop88:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop88
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop89:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop89
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop8A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop8A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop8B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop8B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop8C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop8C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop8D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop8D
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop8E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop8E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop8F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop8F
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop90:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop90
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop91:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop91
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop92:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop92
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop93:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop93
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop94:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop94
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop95:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop95
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop96:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop96
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop97:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop97
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop98:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop98
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop99:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop99
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop9A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop9A
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop9B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop9B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop9C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop9C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop9D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop9D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop9E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop9E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop9F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop9F
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA0
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA1
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA2
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA3
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA4
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA5
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA6
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA7
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA8
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopA9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopA9
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopAA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopAA
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopAB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopAB
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopAC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopAC
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopAD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopAD
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopAE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopAE
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopAF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopAF
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB0
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB1
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB2
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB3
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB4
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB5
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB6
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB7
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB8
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopB9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopB9
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopBA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopBA
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopBB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopBB
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopBC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopBC
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopBD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopBD
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopBE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopBE
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopBF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopBF
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC0
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC1
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC2
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC3
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC4
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC5
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC6
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC7
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC8
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopC9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopC9
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopCA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopCA
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopCB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopCB
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopCC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopCC
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopCD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopCD
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopCE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopCE
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopCF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopCF
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD0
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD1
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD2
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD3
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD4
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD5
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD6
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD7
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD8
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopD9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopD9
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopDA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopDA
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopDB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopDB
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopDC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopDC
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopDD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopDD
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopDE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopDE
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopDF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopDF
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE0
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE1
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE2
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE3
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE4
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE5
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE6
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE7
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE8
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopE9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopE9
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopEA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopEA
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopEB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopEB
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopEC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopEC
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopED:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopED
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopEE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopEE
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopEF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopEF
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF0
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF1
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF2
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF3
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF4
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF5
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF6
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF7
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF8
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopF9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopF9
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopFA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopFA
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopFB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopFB
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopFC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopFC
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopFD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopFD
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopFE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopFE
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_LoopFF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_LoopFF
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop100:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop100
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop101:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop101
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop102:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop102
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop103:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop103
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop104:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop104
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop105:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop105
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop106:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop106
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop107:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop107
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop108:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop108
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop109:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop109
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop10A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop10A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop10B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop10B
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop10C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop10C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop10D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop10D
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop10E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop10E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop10F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop10F
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop110:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop110
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop111:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop111
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop112:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop112
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop113:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop113
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop114:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop114
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop115:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop115
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop116:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop116
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop117:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop117
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop118:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop118
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop119:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop119
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop11A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop11A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop11B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop11B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop11C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop11C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop11D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop11D
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop11E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop11E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop11F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop11F
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop120:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop120
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop121:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop121
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop122:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop122
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop123:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop123
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop124:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop124
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop125:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop125
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop126:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop126
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop127:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop127
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop128:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop128
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop129:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop129
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop12A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop12A
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop12B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop12B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop12C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop12C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop12D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop12D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop12E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop12E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop12F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop12F
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop130:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop130
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop131:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop131
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop132:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop132
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop133:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop133
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop134:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop134
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop135:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop135
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop136:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop136
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop137:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop137
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop138:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop138
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop139:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop139
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop13A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop13A
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop13B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop13B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop13C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop13C
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop13D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop13D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop13E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop13E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop13F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop13F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop140:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop140
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop141:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop141
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop142:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop142
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop143:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop143
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop144:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop144
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop145:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop145
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop146:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop146
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop147:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop147
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop148:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop148
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop149:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop149
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop14A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop14A
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop14B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop14B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop14C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop14C
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop14D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop14D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop14E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop14E
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop14F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop14F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop150:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop150
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop151:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop151
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop152:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop152
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop153:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop153
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop154:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop154
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop155:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop155
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop156:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop156
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop157:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop157
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop158:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop158
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop159:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop159
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop15A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop15A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop15B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop15B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop15C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop15C
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop15D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop15D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop15E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop15E
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop15F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop15F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop160:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop160
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop161:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop161
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop162:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop162
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop163:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop163
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop164:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop164
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop165:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop165
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop166:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop166
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop167:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop167
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop168:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop168
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop169:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop169
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop16A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop16A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop16B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop16B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop16C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop16C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop16D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop16D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop16E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop16E
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop16F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop16F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop170:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop170
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop171:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop171
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop172:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop172
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop173:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop173
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop174:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop174
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop175:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop175
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop176:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop176
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop177:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop177
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop178:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop178
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop179:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop179
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop17A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop17A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop17B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop17B
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop17C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop17C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop17D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop17D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop17E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop17E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop17F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop17F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop180:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop180
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop181:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop181
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop182:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop182
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop183:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop183
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop184:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop184
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop185:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop185
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop186:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop186
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop187:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop187
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop188:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop188
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop189:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop189
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop18A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop18A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop18B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop18B
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop18C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop18C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop18D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop18D
	dc.b	nMaxPSG, nRst, $19
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop18E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop18E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop18F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop18F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop190:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop190
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop191:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop191
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MMBIntro_Loop192:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MMBIntro_Loop192
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F6
	smpsJump            MMBIntro_PSG3

; DAC Data
MMBIntro_DAC:
	dc.b	dKick

MMBIntro_Loop00:
	dc.b	$14, dSnare, $0A, dKick, $1E, dSnare, $0A, dKick, $1E, dSnare, dKick, $0A
	dc.b	dSnare, dKick
	smpsLoop            $00, $2B, MMBIntro_Loop00
	smpsJump            MMBIntro_DAC

MMBIntro_Voices:
;	Voice $00
;	$2A
;	$30, $70, $08, $01, 	$1F, $1F, $1F, $1F, 	$08, $10, $0E, $0C
;	$00, $03, $06, $05, 	$30, $20, $29, $28, 	$22, $14, $2A, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $01, $08, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0E, $10, $08
	smpsVcDecayRate2    $05, $06, $03, $00
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $08, $09, $00, $00
	smpsVcTotalLevel    $00, $2A, $14, $22

;	Voice $01
;	$2C
;	$71, $41, $51, $11, 	$12, $12, $12, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$00, $06, $00, $06, 	$15, $00, $15, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $05, $04, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $00, $06, $00
	smpsVcTotalLevel    $00, $15, $00, $15

;	Voice $02
;	$3A
;	$3F, $7D, $73, $31, 	$9F, $5F, $54, $17, 	$0D, $14, $0A, $05
;	$01, $05, $01, $01, 	$F4, $EF, $87, $F9, 	$29, $39, $23, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $01, $03, $0D, $0F
	smpsVcRateScale     $00, $01, $01, $02
	smpsVcAttackRate    $17, $14, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $14, $0D
	smpsVcDecayRate2    $01, $01, $05, $01
	smpsVcDecayLevel    $0F, $08, $0E, $0F
	smpsVcReleaseRate   $09, $07, $0F, $04
	smpsVcTotalLevel    $00, $23, $39, $29

