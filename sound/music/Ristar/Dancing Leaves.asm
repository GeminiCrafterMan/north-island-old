DancingLeaves_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     DancingLeaves_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       DancingLeaves_DAC
	smpsHeaderFM        DancingLeaves_FM1,	$00, $00
	smpsHeaderFM        DancingLeaves_FM2,	$00, $00
	smpsHeaderFM        DancingLeaves_FM3,	$00, $00
	smpsHeaderFM        DancingLeaves_FM4,	$00, $00
	smpsHeaderFM        DancingLeaves_FM5,	$00, $00
	smpsHeaderPSG       DancingLeaves_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       DancingLeaves_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       DancingLeaves_PSG3,	$00, $00, $00, $00

; DAC Data
DancingLeaves_DAC:
	smpsStop

; FM1 Data
DancingLeaves_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $0B
	smpsPan             panCenter, $00
	dc.b	nD3, $36

DancingLeaves_Jump04:
	dc.b	nG3, $0F, $32, nFs3, $1E, $19, nA3, $0F, $1E, nA2, $14, nD3
	dc.b	$36, nG3, $0F, $32, nE3, $1E, nE3, nA3

DancingLeaves_Loop61:
	dc.b	nA2, nD3, nB2, nE3
	smpsLoop            $00, $04, DancingLeaves_Loop61
	dc.b	nA2, $0F, nA2, nD3, $1E, nB2, nE3, nA2, nD3, nB2, nE3, nA2
	dc.b	nD3, nB2, nE3, $1D, nA2, $1E, nD3, nB2, nE3, nA2, $0F

DancingLeaves_Loop62:
	dc.b	nA2, nD3, $1E, nB2, nE3
	smpsLoop            $00, $04, DancingLeaves_Loop62
	dc.b	nA2, $0F

DancingLeaves_Loop63:
	dc.b	nA2, nD3, $1E, nB2, nE3
	smpsLoop            $00, $03, DancingLeaves_Loop63
	dc.b	nA2, nD3, $1D, nB2, $1E, nE3, nA2, $0F, nA2
	smpsAlterVol        $06

DancingLeaves_Loop64:
	dc.b	nD3, $1E, nB2, nE3, nA2
	smpsLoop            $00, $03, DancingLeaves_Loop64
	dc.b	nD3, nB2
	smpsAlterVol        $FA
	dc.b	nE3, nA2, $0F

DancingLeaves_Loop65:
	dc.b	nA2, nD3, $1E, nB2, nE3
	smpsLoop            $00, $03, DancingLeaves_Loop65
	dc.b	nA2, nD3, $0F, nD3, nB2, nB2, nE3, nE3, nA2, $0E, nB2, $0A
	dc.b	nCs3, $05, nD3, $0F, nFs3, nA3, nFs3, nD3, nD3, nB2, nA2, nEb3
	dc.b	nFs3, nA3, nFs3, nA3, nFs3, nEb3, nFs3, nE3, nG3, nG3, nE3, nA3
	dc.b	nA3, nE3, nEb3, nD3, nFs3, nA3, nFs3, nE3, nB3, nBb3, nEb3, nD3
	dc.b	nFs3, nB3, nB3, nCs4, nB3, nFs3, nFs3, nEb3, nFs3, nA3, nFs3, nFs3
	dc.b	nC4, nB3, nFs3, nE3, nG3, nG3, nE3, nA3, nE3, nEb3, nEb3, nD3
	dc.b	nFs3, nFs3, nA3, nB3, nCs4, nCs4, nCs4, nFs3, nF3, nEb3, $0E, nCs3
	dc.b	$0F, nAb3, nAb3, nG3, nG3, nFs3, nF3, nEb3, nCs3, nAb3, nCs4, nAb3
	dc.b	nG3, nFs3, nAb3, nBb3, nFs3, nB3, nB3, nFs3, nFs3, nE3, nG3, nG3
	dc.b	nE3, nA3, nE3, nEb3, nAb3, nD3, $37
	smpsPan             panCenter, $00
	smpsJump            DancingLeaves_Jump04

; FM2 Data
DancingLeaves_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $0E
	smpsSetvoice        $03
	smpsAlterVol        $93
	dc.b	nA5, $04, nRst, $06, nA5, $03, nRst, $02, nA5, $04, nRst, $06
	dc.b	nA5, $04, nRst, $0B

DancingLeaves_Jump03:
	dc.b	nB5, $05, nRst, $0A, nB5, $05, nRst, $0A, nCs6, $03, nRst, $02
	dc.b	nD6, $05, nRst, nCs6, nRst, nB5, nRst, nA5, $04, nRst, $0B, nFs5
	dc.b	$04, nRst, $06, nFs5, $03, nRst, $02, nFs5, $04, nRst, $06, nFs5
	dc.b	$04, nRst, $0B, nG5, $05, nRst, $0A, nG5, $05, nRst, $0A, nA5
	dc.b	$03, nRst, $02, nB5, $05, nRst, nA5, nRst, nG5, nRst, nFs5, $04
	dc.b	nRst, $0B, nA5, $04, nRst, $05, nA5, $03, nRst, $02, nA5, $04
	dc.b	nRst, $06, nA5, $04, nRst, $0B, nB5, $05, nRst, $0A, nB5, $05
	dc.b	nRst, $0A, nCs6, $03, nRst, $02, nD6, $05, nRst, nCs6, nRst, nB5
	dc.b	nRst, nA5, $04, nRst, $0B, nD6, $04, nRst, $06, nD6, $03, nRst
	dc.b	$02, nD6, $04, nRst, $06, nD6, $04, nRst, $0B, nCs6, $05, nRst
	dc.b	$0A, nCs6, $05, nRst, $0A, nD6, $03, nRst, $02, nE6, $05, nRst
	dc.b	nD6, nRst, nCs6, nRst, nD6, $78, nRst, $7F, $7F, $4C
	smpsSetvoice        $06
	smpsAlterVol        $FC
	dc.b	nA4, $17, smpsNoAttack, nB4, $01, smpsNoAttack, nC5, smpsNoAttack, nD5, smpsNoAttack, nEb5, smpsNoAttack
	dc.b	nF5, smpsNoAttack, nFs5, smpsNoAttack, nG5, nA5, $17

DancingLeaves_Loop51:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, DancingLeaves_Loop51
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$03

DancingLeaves_Loop52:
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02
	smpsLoop            $00, $02, DancingLeaves_Loop52
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $08, nG5, $03, nRst, $02, nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nG5, $03, nRst, $02, nFs5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nD5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $05, nA4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, nRst, $09
	smpsAlterNote       $00
	dc.b	nA4, $03, nRst, $02, nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	dc.b	smpsNoAttack, $0F
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA5
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	$04

DancingLeaves_Loop53:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA5, $04
	smpsLoop            $00, $03, DancingLeaves_Loop53
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsAlterNote       $00
	dc.b	$04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop54:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsLoop            $00, $02, DancingLeaves_Loop54
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $0A
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nD5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nD5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$17, smpsNoAttack, nB4, $01, smpsNoAttack, nC5, smpsNoAttack, nD5, smpsNoAttack, nEb5, smpsNoAttack, nF5
	dc.b	smpsNoAttack, nFs5, smpsNoAttack, nG5, nA5, $17

DancingLeaves_Loop55:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, DancingLeaves_Loop55
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$03

DancingLeaves_Loop56:
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02
	smpsLoop            $00, $02, DancingLeaves_Loop56
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $07
	smpsAlterNote       $00
	dc.b	nG5, $04, nRst, $01, nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG5, $04, nRst, $01, nFs5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nD5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $05, nA4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, nRst, $09
	smpsAlterNote       $00
	dc.b	nA4, $04, nRst, $01, nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	dc.b	nRst, $0F
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA5, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00

DancingLeaves_Loop57:
	dc.b	$04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsLoop            $00, $03, DancingLeaves_Loop57
	dc.b	$04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsAlterNote       $00
	dc.b	$04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop58:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsLoop            $00, $02, DancingLeaves_Loop58
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $0A
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nD5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nD5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01
	smpsSetvoice        $03
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	nD6, $15, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack, nG5, smpsNoAttack, nFs5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack, nE5, smpsNoAttack, nEb5, smpsNoAttack, nD5, smpsNoAttack, nCs5, smpsNoAttack, nC5, smpsNoAttack
	dc.b	nB4, smpsNoAttack, nBb4, smpsNoAttack, nAb4, smpsNoAttack, nG4, nRst, $0A, nA4, $04, nRst
	dc.b	$01, nFs5, $09, nRst, $01, nA5, $04, nRst, $01, nD6, $06, nRst
	dc.b	$09, nA5, $06, nRst, $04, nB5, $06, nRst, $09, nD6, $06, nRst
	dc.b	$09, nG5, $06, nRst, $09, nB5, $06, nRst, $09, nA5, $7B, nRst
	dc.b	$0C, nA4, $03, nRst, $02, nFs5, $08, nRst, $02, nA5, $03, nRst
	dc.b	$02, nD6, $06, nRst, $09, nA5, $06, nRst, $04, nB5, $06, nRst
	dc.b	$09, nD6, $06, nRst, $09, nG5, $06, nRst, $09, nB5, $06, nRst
	dc.b	$09, nA5, $49, nRst, $01
	smpsSetvoice        $07
	dc.b	nA2, $05, nB2, $07, nRst, $03, nCs3, $05, nD3, $07, nRst, $03
	dc.b	nE3, $05, nFs3, $07, nRst, $03, nG3, $05
	smpsAlterVol        $0C

DancingLeaves_Loop59:
	dc.b	nA3
	smpsAlterVol        $FF
	smpsLoop            $00, $0B, DancingLeaves_Loop59
	dc.b	nA3
	smpsAlterVol        $FB
	dc.b	$06, nRst, $13
	smpsAlterVol        $04
	dc.b	nFs3, $06, nRst, $09, nG3, $05, nA3, $07, nRst, $03, nG3, $05
	dc.b	nFs3, $07, nRst, $03, nFs3, $07, nRst, $08, nD3, $07, nRst, $08
	dc.b	nD3, $05, nA2, $27, nRst, $01, nA2, $05, nFs3, $0E, nRst, $01
	dc.b	nG3, $0E, nRst, $10, nA3, $07, nRst, $03, nD4, $05, nB3, $07
	dc.b	nRst, $08, nG3, $07, nRst, $03, nCs4, $05, nA3, $07, nRst, $08
	dc.b	nFs3, $07, nRst, $03, nB3, $05, nG3, $07, nRst, $08, nE3, $07
	dc.b	nRst, $03, nA3

DancingLeaves_Loop5A:
	dc.b	$05
	smpsAlterVol        $01
	smpsLoop            $00, $12, DancingLeaves_Loop5A
	dc.b	nA3
	smpsSetvoice        $06
	smpsAlterVol        $EA
	dc.b	nA4, $17, smpsNoAttack, nB4, $01, smpsNoAttack, nC5, smpsNoAttack, nD5, smpsNoAttack, nEb5, smpsNoAttack
	dc.b	nF5, smpsNoAttack, nFs5, smpsNoAttack, nG5, nA5, $17

DancingLeaves_Loop5B:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, DancingLeaves_Loop5B
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$03

DancingLeaves_Loop5C:
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02
	smpsLoop            $00, $02, DancingLeaves_Loop5C
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $08, nG5, $04, nRst, $01, nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG5, $04, nRst, $01, nFs5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nD5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $05, nA4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, nRst, $09
	smpsAlterNote       $00
	dc.b	nA4, $03, nRst, $02, nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	dc.b	smpsNoAttack, $0F
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA5
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	$04

DancingLeaves_Loop5D:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA5, $04
	smpsLoop            $00, $03, DancingLeaves_Loop5D
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsAlterNote       $00
	dc.b	nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop5E:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nG5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsLoop            $00, $02, DancingLeaves_Loop5E
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $0B
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nD5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nD5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $06
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, nRst, $2C
	smpsSetvoice        $09
	smpsAlterVol        $04
	smpsAlterNote       $00

DancingLeaves_Loop5F:
	dc.b	nA4, $03, nRst, $02, nA3, $03, nRst, $02
	smpsAlterVol        $01
	smpsLoop            $00, $08, DancingLeaves_Loop5F
	dc.b	nA4, $03, nRst, $02, nA3, $03, nRst, $02
	smpsAlterVol        $F8
	dc.b	nFs4, $03, nRst, $07, nG4, $03, nRst, $02, nA4, $03, nRst, $07
	dc.b	nG4, $03, nRst, $02, nFs4, $03, nRst, $16, nEb4, $03, nRst, $11
	dc.b	nA3, $0F, nRst, $19, nA3, $04, nRst, $01, nFs4, $09, nRst, $01
	dc.b	nEb4, $04, nRst, $01, nBb4, $09, nRst, $01, nB4, $04, nRst, $01
	dc.b	nFs4, $03, nRst, $02, nEb4, $03, nRst, $02, nE4, $03, nRst, $02
	dc.b	nFs4, $03, nRst, $02, nG4, $03, nRst, $02, nB4, $03, nRst, $02
	dc.b	nFs5, $0C, nRst, $12, nFs5, $0C, nRst, $12, nCs5, $0C, nRst, $12
	dc.b	nE5, $17, nRst, $02, nD5, $31, nRst, $01, nE5, $06, nRst, $13
	dc.b	nF5, nRst, $01, nFs5, $06, nRst, $09, nF5, $06, nRst, $09, nFs5
	dc.b	nRst, $01, nF5, $06, nRst, $09, nFs5, $06, nRst, $27, nF5, $04
	dc.b	nRst, $01, nFs5, $09, nRst, $01, nF5, $04, nRst, $01, nFs5, $06
	dc.b	nRst, $09, nF5, $06, nRst, $09, nFs5, nRst, $01, nF5, $04, nRst
	dc.b	$01, nFs5, $09, nRst, $01, nA5, $06, nRst, $27, nA5, $03, nRst
	dc.b	$02, nFs5, $09, nRst, $01, nG5, $04, nRst, $01, nA5, $0F, nRst
	dc.b	nA5, $04, nRst, $01, nFs5, $04, nRst, $01, nG5, $04, nRst, $01
	dc.b	nA5, $04, nRst, $01, nG5, $04, nRst, $01, nFs5, $04, nRst, $01
	dc.b	nE5, $04, nRst, $01, nD5, $04, nRst, $01, nCs5, $04, nRst, $01
	dc.b	nB4, $04, nRst, $01, nA4, $04, nRst, $01, nAb4, $04, nRst, $01
	dc.b	nG4, $04, nRst, $01, nFs4, $04, nRst, $01, nF4, $04, nRst, $01
	dc.b	nE4, $04, nRst, $01, nEb4, $04, nRst, $01, nBb4, $04, nRst, $01

DancingLeaves_Loop60:
	dc.b	nB4, $04, nRst, $01, nFs4, $04, nRst, $01
	smpsAlterVol        $02
	smpsLoop            $00, $03, DancingLeaves_Loop60
	dc.b	nB4, $0F, nRst, $2D
	smpsSetvoice        $03
	smpsAlterVol        $F6
	dc.b	nBb5, $08, nRst, $02, nCs6, $04, nRst, $0B, nCs6, $04, nRst, $10
	dc.b	nCs6, $04, nRst, $06, nCs6, $03, nRst, $02, nCs6, $04, nRst, $05
	dc.b	nCs6, $04, nRst, $0B, nEb6, $04, nRst, $0B, nEb6, $04, nRst, $0B
	dc.b	nF6, $03, nRst, $02, nFs6, $05, nRst, nF6, nRst, nEb6, nRst, nCs6
	dc.b	$1D, nRst, $01, nBb5, $18, nRst, $01, nB5, $04, nRst, $0B, nB5
	dc.b	$04, nRst, $0B, nCs6, $03, nRst, $02, nD6, $05, nRst, nCs6, nRst
	dc.b	nB5, nRst, nBb5, $1D, nRst, $01, nFs5, $04, nRst, $0B, nAb5, $09
	dc.b	nRst, $01, nA5, $22, nRst, $01, nAb5, $0E, nRst, $01, nFs5, $0E
	dc.b	nRst, $01, nG5, $1D, nRst, $01, nE5, $04, nRst, $0B, nFs5, $09
	dc.b	nRst, $01, nG5, $22, nRst, $01, nFs5, $0E, nRst, $01, nF5, $0E
	dc.b	nRst, $01, nFs5, $08, nRst, $07
	smpsAlterVol        $04
	dc.b	nA5, $04, nRst, $06, nA5, $03, nRst, $02, nA5, $04, nRst, $06
	dc.b	nA5, $04, nRst, $0B
	smpsPan             panCenter, $00
	smpsJump            DancingLeaves_Jump03

; FM3 Data
DancingLeaves_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $0E
	smpsSetvoice        $03
	smpsAlterVol        $93
	dc.b	nFs5, $04, nRst, $06, nFs5, $03, nRst, $02, nFs5, $04, nRst, $06
	dc.b	nFs5, $04, nRst, $0B

DancingLeaves_Jump02:
	dc.b	nG5, $05, nRst, $0A, nG5, $05, nRst, $0A, nA5, $03, nRst, $02
	dc.b	nB5, $05, nRst, nA5, nRst, nG5, nRst, nFs5, $04, nRst, $0B, nD5
	dc.b	$04, nRst, $06, nD5, $03, nRst, $02, nD5, $04, nRst, $06, nD5
	dc.b	$04, nRst, $0B, nE5, $05, nRst, $0A, nE5, $05, nRst, $0A, nFs5
	dc.b	$03, nRst, $02, nG5, $05, nRst, nFs5, nRst, nE5, nRst, nD5, $04
	dc.b	nRst, $0B, nFs5, $04, nRst, $05, nFs5, $03, nRst, $02, nFs5, $04
	dc.b	nRst, $06, nFs5, $04, nRst, $0B, nG5, $05, nRst, $0A, nG5, $05
	dc.b	nRst, $0A, nA5, $03, nRst, $02, nB5, $05, nRst, nA5, nRst, nG5
	dc.b	nRst, nE5, $04, nRst, $0B, nA5, $04, nRst, $06, nA5, $03, nRst
	dc.b	$02, nA5, $04, nRst, $06, nA5, $04, nRst, $0B, nA5, $05, nRst
	dc.b	$0A, nA5, $05, nRst, $0A, nA5, $03, nRst, $02, nA5, $05, nRst
	dc.b	nA5, nRst, nA5, nRst
	smpsSetvoice        $05

DancingLeaves_Loop39:
	dc.b	nCs5, $04, nRst, $06

DancingLeaves_Loop37:
	dc.b	nCs5, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop37
	dc.b	nCs5, $04, nRst, $01, nD5, $04, nRst, $06

DancingLeaves_Loop38:
	dc.b	nD5, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop38
	dc.b	nD5, $04, nRst, $01
	smpsLoop            $01, $06, DancingLeaves_Loop39
	dc.b	nCs5, $04, nRst, $06

DancingLeaves_Loop3A:
	dc.b	nCs5, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop3A
	dc.b	nCs5, $04, nRst, $01, nD5, $04, nRst, $06, nD5, $04, nRst, $0A

DancingLeaves_Loop3C:
	dc.b	nD5, $04, nRst, $0B, nD5, $04, nRst, $0B, nD5, $04, nRst, $01
	dc.b	nCs5, $04, nRst, $06

DancingLeaves_Loop3B:
	dc.b	nCs5, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop3B
	dc.b	nCs5, $04, nRst, $01, nD5, $04, nRst, $06, nD5, $04, nRst, $0B
	smpsLoop            $01, $08, DancingLeaves_Loop3C
	dc.b	nD5, $04, nRst, $0B, nD5, $04, nRst, $0B, nD5, $04, nRst, $01
	dc.b	nCs5, $04, nRst, $06, nCs5, $04, nRst, $0B, nCs5, $04, nRst, $0A
	dc.b	nCs5, $04, nRst, $0B, nCs5, $04, nRst, $01, nD5, $04, nRst, $06

DancingLeaves_Loop3D:
	dc.b	nD5, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop3D
	dc.b	nD5, $04, nRst, $7F, $54
	smpsSetvoice        $08
	dc.b	nFs4, $06, nRst, $09, nG4, $06, nRst, $18, nA4, $06, nRst, $04

DancingLeaves_Loop3E:
	dc.b	nA4, $06, nRst, $09
	smpsLoop            $00, $04, DancingLeaves_Loop3E
	dc.b	nA4, $04, nRst, $01, nG4, $06, nRst, $09, nG4, $06, nRst, $09
	dc.b	nFs4, $0F, nRst, $0A, nD4, $0F, nRst, $05, nA3, $2C, nRst, $01
	dc.b	nA3, $17, smpsNoAttack, nB3, $01, smpsNoAttack, nC4, smpsNoAttack, nD4, smpsNoAttack, nEb4, smpsNoAttack
	dc.b	nF4, smpsNoAttack, nFs4, smpsNoAttack, nG4, nA4, $54, nRst, $01, nFs4, $07, nRst
	dc.b	$08, nG4, $04, nRst, $01, nA4, $09, nRst, $01, nG4, $04, nRst
	dc.b	$01, nFs4, $0F, nRst, $0A, nD4, $0F, nRst, $05, nA3, $2B, nRst
	dc.b	$02, nFs4, $06, nRst, $09, nG4, $06, nRst, $18, nA4, $06, nRst
	dc.b	$04

DancingLeaves_Loop3F:
	dc.b	nA4, $06, nRst, $09
	smpsLoop            $00, $04, DancingLeaves_Loop3F
	dc.b	nA4, $03, nRst, $02, nG4, $06, nRst, $09, nG4, $06, nRst, $09
	dc.b	nFs4, $0F, nRst, $0A, nD4, $0F, nRst, $05, nA3, $1C, nRst, $02
	smpsSetvoice        $03
	smpsAlterVol        $FA
	dc.b	nA5, $05, nRst, nA5, $03, nRst, $02, nB5, $06, nRst, $03, nD6
	dc.b	$06, nRst, $09, nB5, $03, nRst, $02
	smpsSetvoice        $0A
	smpsAlterVol        $10
	dc.b	smpsNoAttack, $01, nCs5, $0E

DancingLeaves_Loop40:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop40
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$03

DancingLeaves_Loop41:
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02
	smpsLoop            $00, $03, DancingLeaves_Loop41
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, nRst, $0A
	smpsAlterNote       $00
	dc.b	nCs5, $05, nRst, $0F

DancingLeaves_Loop42:
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	smpsLoop            $00, $05, DancingLeaves_Loop42
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$03

DancingLeaves_Loop43:
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02
	smpsLoop            $00, $03, DancingLeaves_Loop43
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, nRst, $0A
	smpsAlterNote       $00
	dc.b	nC5, $05, nRst, $0F

DancingLeaves_Loop44:
	dc.b	nB4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	smpsLoop            $00, $04, DancingLeaves_Loop44
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nBb4, $0F

DancingLeaves_Loop45:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop45
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nA4, $0F, nRst, $0A, nA4, $0F

DancingLeaves_Loop46:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop46
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$03

DancingLeaves_Loop47:
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02
	smpsLoop            $00, $02, DancingLeaves_Loop47
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0C
	smpsSetvoice        $0B
	smpsAlterVol        $F2
	smpsPan             panLeft, $00
	dc.b	nA3, $04, nRst, $01
	smpsAlterVol        $13
	dc.b	nA3, $04, nRst, $06
	smpsAlterVol        $ED
	dc.b	nAb3, $04, nRst, $01
	smpsAlterVol        $13
	dc.b	nAb3, $04, nRst, $06
	smpsAlterVol        $ED
	dc.b	nA3, $0A, nAb3, $04, nRst, $01
	smpsAlterVol        $13
	dc.b	nAb3, $04, nRst, $06
	smpsAlterVol        $ED
	dc.b	nA3, $04, nRst, $01
	smpsAlterVol        $13
	dc.b	nA3, $04, nRst, $24
	smpsAlterVol        $ED
	dc.b	smpsNoAttack, $14
	smpsPan             panRight, $00
	dc.b	nA3, $04, nRst, $01
	smpsAlterVol        $13
	dc.b	nA3, $04, nRst, $06
	smpsAlterVol        $ED
	dc.b	nAb3, $04, nRst, $01
	smpsAlterVol        $13
	dc.b	nAb3, $04, nRst, $06
	smpsAlterVol        $ED
	dc.b	nA3, $0A, nAb3, $05, nA3, $0A, nC4, $04, nRst, $01
	smpsAlterVol        $13
	dc.b	nC4, $04, nRst, $24
	smpsSetvoice        $08
	smpsAlterVol        $F1
	smpsPan             panCenter, $00
	dc.b	nC4, $05, nRst, $0F

DancingLeaves_Loop48:
	dc.b	nB3, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	smpsLoop            $00, $04, DancingLeaves_Loop48
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nBb3, $0F

DancingLeaves_Loop49:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop49
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nA3, $0F

DancingLeaves_Loop4A:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop4A
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsSetvoice        $0A
	smpsAlterVol        $0A
	dc.b	nFs4, $0F, nRst, $0A, nAb4, nRst, nBb4, $0F

DancingLeaves_Loop4B:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop4B
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, nRst, $05
	smpsAlterNote       $00
	dc.b	nFs4, $0F, nRst, $0A, nAb4, nRst, nBb4, $0F

DancingLeaves_Loop4C:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop4C
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, nRst, $05
	smpsAlterNote       $00
	dc.b	nFs4, $0F, nRst, $0A, nAb4, nRst, nBb4, $0F

DancingLeaves_Loop4D:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop4D
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nB4, $0F

DancingLeaves_Loop4E:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop4E
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, smpsNoAttack, nB4, $0F

DancingLeaves_Loop4F:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop4F
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nBb4, $0F

DancingLeaves_Loop50:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop50
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nA4, $0F
	smpsSetvoice        $03
	smpsAlterVol        $F6
	dc.b	nFs5, $04, nRst, $06, nFs5, $03, nRst, $02, nFs5, $04, nRst, $06
	dc.b	nFs5, $04, nRst, $0B
	smpsPan             panCenter, $00
	smpsJump            DancingLeaves_Jump02

; FM4 Data
DancingLeaves_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $0E
	smpsAlterVol        $A6
	dc.b	smpsNoAttack, $08
	smpsSetvoice        $03
	smpsPan             panRight, $00
	dc.b	nA5, $04, nRst, $06, nA5, $03, nRst, $02, nA5, $04, nRst, $06
	dc.b	nA5, $04, nRst, $03

DancingLeaves_Jump01:
	dc.b	nRst, $08, nB5, $05, nRst, $0A, nB5, $05, nRst, $0A, nCs6, $03
	dc.b	nRst, $02, nD6, $05, nRst, nCs6, nRst, nB5, nRst, nA5, $04, nRst
	dc.b	$0B, nFs5, $04, nRst, $06, nFs5, $03, nRst, $02, nFs5, $04, nRst
	dc.b	$06, nFs5, $04, nRst, $0B, nG5, $05, nRst, $0A, nG5, $05, nRst
	dc.b	$0A, nA5, $03, nRst, $02, nB5, $05, nRst, nA5, nRst, nG5, nRst
	dc.b	nFs5, $04, nRst, $0B, nA5, $04, nRst, $06, nA5, $03, nRst, $02
	dc.b	nA5, $04, nRst, $06, nA5, $04, nRst, $0B, nB5, $05, nRst, $0A
	dc.b	nB5, $05, nRst, $0A, nCs6, $03, nRst, $02, nD6, $05, nRst, nCs6
	dc.b	nRst, nB5, nRst, nA5, $04, nRst, $0B, nD6, $04, nRst, $06, nD6
	dc.b	$03, nRst, $02, nD6, $04, nRst, $06, nD6, $04, nRst, $0B, nCs6
	dc.b	$05, nRst, $0A, nCs6, $05, nRst, $0A, nD6, $03, nRst, $02, nE6
	dc.b	$05, nRst, nD6, nRst, $06
	smpsAlterVol        $ED
	smpsPan             panCenter, $00
	dc.b	nA5, $0D

DancingLeaves_Loop22:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, DancingLeaves_Loop22
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02

DancingLeaves_Loop23:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop23
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $7F, $7F, $57
	smpsSetvoice        $06
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA4, $17, smpsNoAttack, nB4, $01, smpsNoAttack, nC5, smpsNoAttack, nD5, smpsNoAttack, nEb5, smpsNoAttack
	dc.b	nF5, smpsNoAttack, nFs5, smpsNoAttack, nG5, nA5, $17

DancingLeaves_Loop24:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, DancingLeaves_Loop24
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$03

DancingLeaves_Loop25:
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02
	smpsLoop            $00, $02, DancingLeaves_Loop25
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $08, nG5, $04, nRst, $01, nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG5, $04, nRst, $01, nFs5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nD5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $05
	smpsAlterVol        $F2
	dc.b	nA4, $0F, nRst, $13
	smpsPan             panCenter, $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	dc.b	smpsNoAttack, $0F
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	$04

DancingLeaves_Loop26:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04
	smpsLoop            $00, $03, DancingLeaves_Loop26
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsAlterNote       $00
	dc.b	$04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop27:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsLoop            $00, $02, DancingLeaves_Loop27
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $0A
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nFs4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nFs4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nD4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, $02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, nRst, $0C
	smpsAlterVol        $0E
	smpsAlterNote       $00
	dc.b	nA4, $17, smpsNoAttack, nB4, $01, smpsNoAttack, nC5, smpsNoAttack, nD5, smpsNoAttack, nEb5, smpsNoAttack
	dc.b	nF5, smpsNoAttack, nFs5, smpsNoAttack, nG5, nA5, $17

DancingLeaves_Loop28:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, DancingLeaves_Loop28
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$03

DancingLeaves_Loop29:
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02
	smpsLoop            $00, $02, DancingLeaves_Loop29
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $07, nG5, $04, nRst, $01, nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG5, $04, nRst, $01, nFs5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nD5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $05
	smpsAlterVol        $F2
	dc.b	nA4, $0F, nRst, $13
	smpsPan             panCenter, $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	dc.b	nRst, $0F
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00

DancingLeaves_Loop2A:
	dc.b	$04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsLoop            $00, $03, DancingLeaves_Loop2A
	dc.b	$04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsAlterNote       $00
	dc.b	$04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop2B:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterVol        $F2
	smpsLoop            $00, $02, DancingLeaves_Loop2B
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $0A
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nFs4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $03
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nFs4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $05
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nD4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01
	smpsSetvoice        $03
	smpsAlterVol        $17
	smpsPan             panRight, $00
	dc.b	nRst, $09
	smpsAlterNote       $00
	dc.b	nD6, $15, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nAb5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack, nG5, smpsNoAttack, nFs5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nF5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack, nE5, smpsNoAttack, nEb5, smpsNoAttack, nD5, smpsNoAttack, nCs5, smpsNoAttack, nC5, smpsNoAttack
	dc.b	nB4, smpsNoAttack, nBb4, smpsNoAttack, nAb4, smpsNoAttack, nG4, nRst, $0A, nA4, $03, nRst
	dc.b	$02, nFs5, $08, nRst, $02, nA5, $03, nRst, $02, nD6, $06, nRst
	dc.b	$09, nA5, $06, nRst, $04, nB5, $06, nRst, $09, nD6, $06, nRst
	dc.b	$09, nG5, $06, nRst, $09, nB5, $06, nRst, $09, nA5, $0E

DancingLeaves_Loop2C:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop2C
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03

DancingLeaves_Loop2D:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02
	smpsLoop            $00, $04, DancingLeaves_Loop2D
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0B, nA4, $04, nRst, $01, nFs5, $09, nRst, $01, nA5
	dc.b	$04, nRst, $01, nD6, $06, nRst, $09, nA5, $06, nRst, $04, nB5
	dc.b	$06, nRst, $09, nD6, $06, nRst, $09, nG5, $06, nRst, $09, nB5
	dc.b	$06, nRst, $09, nA5, $0E

DancingLeaves_Loop2E:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop2E
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst, $04
	smpsSetvoice        $07
	smpsAlterVol        $FB
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA2, $05, nB2, $07, nRst, $03, nCs3, $05, nD3, $07, nRst, $03
	dc.b	nE3, $05, nFs3, $07, nRst, $03, nG3, $05
	smpsAlterVol        $0C

DancingLeaves_Loop2F:
	dc.b	nA3
	smpsAlterVol        $FF
	smpsLoop            $00, $0B, DancingLeaves_Loop2F
	dc.b	nA3
	smpsAlterVol        $FB
	dc.b	$06, nRst, $13
	smpsAlterVol        $04
	dc.b	nFs3, $06, nRst, $09, nG3, $05, nA3, $07, nRst, $03, nG3, $05
	dc.b	nFs3, $07, nRst, $03, nFs3, $07, nRst, $08, nD3, $07, nRst, nD3
	dc.b	$05, nA2, $27, nRst, $01, nA2, $05, nFs3, $0E, nRst, $01, nG3
	dc.b	$0E, nRst, $10, nA3, $07, nRst, $03, nD4, $05, nB3, $07, nRst
	dc.b	$08, nG3, $07, nRst, $03, nCs4, $05, nA3, $07, nRst, $08, nFs3
	dc.b	$07, nRst, $03, nB3, $05, nG3, $07, nRst, $08, nE3, $07, nRst
	dc.b	$03, nA3

DancingLeaves_Loop30:
	dc.b	$05
	smpsAlterVol        $01
	smpsLoop            $00, $12, DancingLeaves_Loop30
	dc.b	nA3
	smpsSetvoice        $06
	smpsAlterVol        $EA
	dc.b	nA4, $17, smpsNoAttack, nB4, $01, smpsNoAttack, nC5, smpsNoAttack, nD5, smpsNoAttack, nEb5, smpsNoAttack
	dc.b	nF5, smpsNoAttack, nFs5, smpsNoAttack, nG5, nA5, $17

DancingLeaves_Loop31:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, DancingLeaves_Loop31
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$03

DancingLeaves_Loop32:
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$02
	smpsLoop            $00, $02, DancingLeaves_Loop32
	dc.b	smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nFs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $07
	smpsAlterNote       $00
	dc.b	nG5, $04, nRst, $01, nA5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG5, $04, nRst, $01, nFs5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0A, nD5, $04, smpsNoAttack
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
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $05
	smpsAlterVol        $F2
	dc.b	nA4, $0F, nRst, $13
	smpsPan             panCenter, $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	dc.b	smpsNoAttack, $0F
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	dc.b	$04

DancingLeaves_Loop33:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04
	smpsLoop            $00, $03, DancingLeaves_Loop33
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsAlterNote       $00
	dc.b	nCs5, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop34:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nB4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $01
	smpsAlterVol        $F2
	smpsLoop            $00, $02, DancingLeaves_Loop34
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nA4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $0B
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nFs4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst
	smpsAlterVol        $0E
	smpsPan             panLeft, $00
	smpsAlterNote       $00
	dc.b	nFs4, $04, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$02, nRst, $06
	smpsAlterVol        $F2
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nD4, $17, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01
	smpsPan             panLeft, $00
	dc.b	nRst, $2D
	smpsSetvoice        $03
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nD6, $14, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nCs6, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nBb5, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsPan             panLeft, $00
	dc.b	nRst, $0C
	smpsSetvoice        $09
	smpsAlterVol        $11

DancingLeaves_Loop35:
	dc.b	nA4, $03, nRst, $02, nA3, $03, nRst, $02
	smpsAlterVol        $01
	smpsLoop            $00, $05, DancingLeaves_Loop35
	dc.b	nA4, $03, nRst, $02, nA3, $03, nRst, $02
	smpsAlterVol        $F8
	dc.b	nFs4, $03, nRst, $07, nG4, $03, nRst, $02, nA4, $03, nRst, $07
	dc.b	nG4, $03, nRst, $02, nFs4, $03, nRst, $16, nEb4, $03, nRst, $11
	dc.b	nA3, $0F, nRst, $19, nA3, $03, nRst, $02, nFs4, $08, nRst, $01
	dc.b	nEb4, $04, nRst, $01, nBb4, $09, nRst, $01, nB4, $04, nRst, $01
	dc.b	nFs4, $03, nRst, $02, nEb4, $03, nRst, $02, nE4, $03, nRst, $02
	dc.b	nFs4, $03, nRst, $02, nG4, $03, nRst, $02, nB4, $03, nRst, $02
	dc.b	nFs5, $0C, nRst, $12, nFs5, $0C, nRst, $12, nCs5, $0C, nRst, $12
	dc.b	nE5, $17, nRst, $02, nD5, $31, nRst, $01, nE5, $06, nRst, $13
	dc.b	nF5, nRst, $01, nFs5, $06, nRst, $09, nF5, $06, nRst, $09, nFs5
	dc.b	nRst, $01, nF5, $06, nRst, $09, nFs5, $06, nRst, $27, nF5, $04
	dc.b	nRst, $01, nFs5, $09, nRst, $01, nF5, $04, nRst, $01, nFs5, $06
	dc.b	nRst, $09, nF5, $06, nRst, $09, nFs5, nRst, $01, nF5, $04, nRst
	dc.b	$01, nFs5, $09, nRst, $01, nA5, $06, nRst, $27, nA5, $03, nRst
	dc.b	$02, nFs5, $09, nRst, $01, nG5, $04, nRst, $01, nA5, $0F, nRst
	dc.b	nA5, $04, nRst, $01, nFs5, $04, nRst, $01, nG5, $04, nRst, $01
	dc.b	nA5, $04, nRst, $01, nG5, $04, nRst, $01, nFs5, $04, nRst, $01
	dc.b	nE5, $04, nRst, $01, nD5, $04, nRst, $01, nCs5, $04, nRst, $01
	dc.b	nB4, $04, nRst, $01, nA4, $04, nRst, $01, nAb4, $04, nRst, $01
	dc.b	nG4, $04, nRst, $01, nFs4, $04, nRst, $01, nF4, $04, nRst, $01
	dc.b	nE4, $04, nRst, $01, nEb4, $04, nRst, $01, nBb4, $04, nRst, $01

DancingLeaves_Loop36:
	dc.b	nB4, $04, nRst, $01, nFs4, $04, nRst, $01
	smpsAlterVol        $02
	smpsLoop            $00, $03, DancingLeaves_Loop36
	dc.b	nB4, $0F, nRst, $2A
	smpsSetvoice        $03
	smpsAlterVol        $FB
	smpsPan             panRight, $00
	dc.b	nBb5, $09, nRst, $01, nCs6, $04, nRst, $0B, nCs6, $04, nRst, $10
	dc.b	nCs6, $04, nRst, $06, nCs6, $03, nRst, $02, nCs6, $04, nRst, $06
	dc.b	nCs6, $04, nRst, $0B, nEb6, $04, nRst, $0B, nEb6, $04, nRst, $0B
	dc.b	nF6, $03, nRst, $02, nFs6, $05, nRst, nF6, nRst, nEb6, nRst, nCs6
	dc.b	$0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nBb5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nB5, $04, nRst, $0B, nB5, $04, nRst, $0B, nCs6, $03, nRst, $02
	dc.b	nD6, $05, nRst, nCs6, nRst, nB5, nRst, nBb5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nFs5, $04, nRst, $0B, nAb5, $09, nRst, $01, nA5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, nRst, $01
	smpsAlterNote       $00
	dc.b	nAb5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nFs5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nE5, $04, nRst, $0B, nFs5, $09, nRst, $01, nG5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, nRst, $01
	smpsAlterNote       $00
	dc.b	nFs5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nF5, $0D, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nFs5, $07, nRst, $08
	smpsAlterVol        $04
	dc.b	nA5, $04, nRst, $06, nA5, $03, nRst, $02, nA5, $04, nRst, $06
	dc.b	nA5, $04, nRst, $02
	smpsPan             panRight, $00
	smpsJump            DancingLeaves_Jump01

; FM5 Data
DancingLeaves_FM5:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $0E
	smpsAlterVol        $A6
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, $08
	smpsSetvoice        $03
	dc.b	nFs5, $04, nRst, $06, nFs5, $03, nRst, $02, nFs5, $04, nRst, $06
	dc.b	nFs5, $04, nRst, $03

DancingLeaves_Jump00:
	dc.b	nRst, $08, nG5, $05, nRst, $0A, nG5, $05, nRst, $0A, nA5, $03
	dc.b	nRst, $02, nB5, $05, nRst, nA5, nRst, nG5, nRst, nFs5, $04, nRst
	dc.b	$0B, nD5, $04, nRst, $06, nD5, $03, nRst, $02, nD5, $04, nRst
	dc.b	$06, nD5, $04, nRst, $0B, nE5, $05, nRst, $0A, nE5, $05, nRst
	dc.b	$0A, nFs5, $03, nRst, $02, nG5, $05, nRst, nFs5, nRst, nE5, nRst
	dc.b	nD5, $04, nRst, $0B, nFs5, $04, nRst, $06, nFs5, $03, nRst, $02
	dc.b	nFs5, $04, nRst, $06, nFs5, $04, nRst, $0B, nG5, $05, nRst, $0A
	dc.b	nG5, $05, nRst, $0A, nA5, $03, nRst, $02, nB5, $05, nRst, nA5
	dc.b	nRst, nG5, nRst, nE5, $04, nRst, $0B, nA5, $04, nRst, $06, nA5
	dc.b	$03, nRst, $02, nA5, $04, nRst, $06, nA5, $04, nRst, $0B, nA5
	dc.b	$05, nRst, $0A, nA5, $05, nRst, $0A, nA5, $03, nRst, $02, nA5
	dc.b	$05, nRst, nA5, nRst, $06
	smpsAlterVol        $ED
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $05
	dc.b	nA4, $04, nRst, $06, nA4, $04, nRst, $0B, nA4, $04, nRst, $0A
	dc.b	nA4, $04, nRst, $0B

DancingLeaves_Loop02:
	dc.b	nA4, $04, nRst, $01, nB4, $04, nRst, $06

DancingLeaves_Loop00:
	dc.b	nB4, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop00
	dc.b	nB4, $04, nRst, $01, nA4, $04, nRst, $06

DancingLeaves_Loop01:
	dc.b	nA4, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop01
	smpsLoop            $01, $08, DancingLeaves_Loop02
	dc.b	nA4, $04, nRst, $01, nB4, $04, nRst, $06, nB4, $04, nRst, $0B
	dc.b	nB4, $04, nRst, $0A, nB4, $04, nRst, $0B

DancingLeaves_Loop05:
	dc.b	nB4, $04, nRst, $01, nA4, $04, nRst, $06

DancingLeaves_Loop03:
	dc.b	nA4, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop03
	dc.b	nA4, $04, nRst, $01, nB4, $04, nRst, $06

DancingLeaves_Loop04:
	dc.b	nB4, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop04
	smpsLoop            $01, $02, DancingLeaves_Loop05
	dc.b	nB4, $04, nRst, $01, nA4, $04, nRst, $06

DancingLeaves_Loop06:
	dc.b	nA4, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop06
	dc.b	nA4, $04, nRst, $01, nB4, $04, nRst, $06, nB4, $05, nRst, $0A

DancingLeaves_Loop08:
	dc.b	nB4, $04, nRst, $0B, nB4, $04, nRst, $0B, nB4, $04, nRst, $01
	dc.b	nA4, $04, nRst, $06

DancingLeaves_Loop07:
	dc.b	nA4, $04, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop07
	dc.b	nA4, $04, nRst, $01, nB4, $04, nRst, $06, nB4, $04, nRst, $0B
	smpsLoop            $01, $04, DancingLeaves_Loop08
	dc.b	nB4, $04, nRst, $0B, nB4, $04, nRst, $0B, nB4, $04, nRst, $7F
	dc.b	$52
	smpsAlterVol        $13
	dc.b	smpsNoAttack, $09
	smpsSetvoice        $08
	dc.b	nFs4, $06, nRst, $09, nG4, $06, nRst, $18, nA4, $06, nRst, $04

DancingLeaves_Loop09:
	dc.b	nA4, $06, nRst, $09
	smpsLoop            $00, $04, DancingLeaves_Loop09
	dc.b	nA4, $04, nRst, $01, nG4, $06, nRst, $09, nG4, $06, nRst, $09
	dc.b	nFs4, $0F, nRst, $0A, nD4, $0F, nRst, $05, nA3, $2B, nRst, $02
	dc.b	nA3, $17, smpsNoAttack, nB3, $01, smpsNoAttack, nC4, smpsNoAttack, nD4, smpsNoAttack, nEb4, smpsNoAttack
	dc.b	nF4, smpsNoAttack, nFs4, smpsNoAttack, nG4, nA4, $53, nRst, $02, nFs4, $07, nRst
	dc.b	$08, nG4, $03, nRst, $02, nA4, $08, nRst, $02, nG4, $03, nRst
	dc.b	$02, nFs4, $0F, nRst, $0A, nD4, $0F, nRst, $05, nA3, $2B, nRst
	dc.b	$01, nFs4, $06, nRst, $09, nG4, $06, nRst, $18, nA4, $06, nRst
	dc.b	$04

DancingLeaves_Loop0A:
	dc.b	nA4, $06, nRst, $09
	smpsLoop            $00, $04, DancingLeaves_Loop0A
	dc.b	nA4, $04, nRst, $01, nG4, $06, nRst, $09, nG4, $06, nRst, $09
	dc.b	nFs4, $0F, nRst, $0A, nD4, $0F, nRst, $05, nA3, $1D, nRst, $01
	smpsSetvoice        $03
	smpsAlterVol        $FA
	dc.b	nA5, $05, nRst, nA5, $03, nRst, $02, nB5, $06, nRst, $04, nD6
	dc.b	$06, nRst
	smpsSetvoice        $0A
	smpsAlterVol        $FD
	dc.b	nA4, $0A

DancingLeaves_Loop0B:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, DancingLeaves_Loop0B
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03

DancingLeaves_Loop0C:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02
	smpsLoop            $00, $03, DancingLeaves_Loop0C
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, nRst, $0A
	smpsAlterNote       $00
	dc.b	nA4, $05, nRst, $0F, nA4, $0B

DancingLeaves_Loop0D:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, DancingLeaves_Loop0D
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03

DancingLeaves_Loop0E:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02
	smpsLoop            $00, $03, DancingLeaves_Loop0E
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, nRst, $0A
	smpsAlterNote       $00
	dc.b	nA4, $05, nRst, $0F, nG4, $0B

DancingLeaves_Loop0F:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop0F
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nG4, $0B

DancingLeaves_Loop10:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop10
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02

DancingLeaves_Loop11:
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nFs4, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop11

DancingLeaves_Loop12:
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop12
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03

DancingLeaves_Loop13:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02
	smpsLoop            $00, $02, DancingLeaves_Loop13
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0D
	smpsAlterNote       $00
	dc.b	nCs5, $0A

DancingLeaves_Loop14:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, DancingLeaves_Loop14
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03

DancingLeaves_Loop15:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02
	smpsLoop            $00, $03, DancingLeaves_Loop15
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, nRst, $0A
	smpsAlterNote       $00
	dc.b	nCs5, $05, nRst, $0F, nC5, $0B

DancingLeaves_Loop16:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, DancingLeaves_Loop16
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03

DancingLeaves_Loop17:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02
	smpsLoop            $00, $03, DancingLeaves_Loop17
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, nRst, $0A
	smpsAlterNote       $00
	dc.b	nC5, $05, nRst, $0F, nG4, $0B

DancingLeaves_Loop18:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop18
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nG4, $0B

DancingLeaves_Loop19:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop19
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02

DancingLeaves_Loop1A:
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nFs4, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop1A

DancingLeaves_Loop1B:
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, DancingLeaves_Loop1B
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, nRst, $05
	smpsAlterNote       $00
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nF5, nRst, nFs5, $0B

DancingLeaves_Loop1C:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop1C
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst, $05
	smpsAlterNote       $00
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nF5, nRst, nFs5, $0B

DancingLeaves_Loop1D:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, DancingLeaves_Loop1D
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, nRst, $05
	smpsAlterNote       $00
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nF5, nRst, nFs5, $0B

DancingLeaves_Loop1E:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop1E
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nD5, $0B

DancingLeaves_Loop1F:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop1F
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nD5, $0B

DancingLeaves_Loop20:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop20
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nCs5, $0B

DancingLeaves_Loop21:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop21
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nD5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterVol        $09
	smpsPan             panLeft, $00
	dc.b	nRst, $08
	smpsSetvoice        $03
	smpsAlterNote       $00
	dc.b	nFs5, $04, nRst, $06, nFs5, $03, nRst, $02, nFs5, $04, nRst, $06
	dc.b	nFs5, $04, nRst, $02
	smpsPan             panLeft, $00
	smpsJump            DancingLeaves_Jump00

; PSG1 Data
DancingLeaves_PSG1:
	dc.b	nRst, $7F, $7F, $7F, $6A

DancingLeaves_Jump07:
	dc.b	nRst, $7F, $7F, $7F, $34
	smpsPSGAlterVol     $09
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop266:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop266
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop267:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop267
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop268:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop268
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop269:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop269
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop26A:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop26A
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop26B:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop26B
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop26C:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop26C
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop26D:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop26D
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop26E:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop26E
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop26F:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop26F
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop270:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop270
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop271:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop271
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop272:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop272
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop273:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop273
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop274:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop274
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop275:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop275
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop276:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop276
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop277:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop277
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop278:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop278
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop279:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop279
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop27A:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop27A
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop27B:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop27B
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop27C:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop27C
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop27D:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop27D
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop27E:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop27E
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop27F:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop27F
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $05

DancingLeaves_Loop280:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop280
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop281:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop281
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop282:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop282
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop283:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop283
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop284:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop284
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop285:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $02, DancingLeaves_Loop285
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop286:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop286
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop287:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop287
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop288:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop288
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop289:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop289
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop28A:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop28A
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop28B:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop28B
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop28C:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop28C
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop28D:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop28D
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop28E:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop28E
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop28F:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop28F
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop290:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop290
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop291:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop291
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop292:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop292
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06

DancingLeaves_Loop293:
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop293
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $06

DancingLeaves_Loop294:
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop294
	smpsPSGAlterVol     $FD
	dc.b	nCs2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nCs2, nRst
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $06
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0A
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $0B
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nD2, nRst, $02
	smpsPSGAlterVol     $05
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

DancingLeaves_Loop295:
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop295
	smpsPSGAlterVol     $FF
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FB
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop296:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop296
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$05

DancingLeaves_Loop297:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop297
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$01, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nFs1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01, nRst, $0F
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs1, $02

DancingLeaves_Loop298:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop298
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FB
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop299:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop299
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$05

DancingLeaves_Loop29A:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop29A
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$01, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nFs1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01, nRst, $0F
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs1, $02

DancingLeaves_Loop29B:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop29B
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FB
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop29C:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop29C
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nFs1, $02

DancingLeaves_Loop29D:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop29D
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FB
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop29E:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop29E
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nE1, $02

DancingLeaves_Loop29F:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop29F
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE1, nRst, $0A
	smpsPSGAlterVol     $05
	dc.b	nD1, $02

DancingLeaves_Loop2A0:
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2A0
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $FB
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop2A1:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop2A1
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$05
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $0D
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nD1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02

DancingLeaves_Loop2A2:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop2A2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $FB
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop2A3:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop2A3
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$05

DancingLeaves_Loop2A4:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop2A4
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$01, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nD1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01, nRst, $0F
	smpsPSGAlterVol     $02
	dc.b	nEb1, $02

DancingLeaves_Loop2A5:
	smpsPSGAlterVol     $FF
	dc.b	nEb1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2A5
	smpsPSGAlterVol     $FF
	dc.b	nEb1
	smpsPSGAlterVol     $FF
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nEb1
	smpsAlterNote       $FB
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop2A6:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop2A6
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$05

DancingLeaves_Loop2A7:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop2A7
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$01, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nD1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01, nRst, $0F
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nD1, $02

DancingLeaves_Loop2A8:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2A8
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nD1
	smpsAlterNote       $FB
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop2A9:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop2A9
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop2AA:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2AA
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nCs1
	smpsAlterNote       $FB
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop2AB:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop2AB
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop2AC:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2AC
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs1, nRst, $0A
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop2AD:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2AD
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nCs1
	smpsAlterNote       $FB
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop2AE:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop2AE
	smpsAlterNote       $00
	dc.b	$01, nRst, $7F, $7F, $5F
	smpsPSGAlterVol     $03
	dc.b	nA0, $02

DancingLeaves_Loop2AF:
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2AF
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA0
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA0
	smpsAlterNote       $FB
	dc.b	nA0
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop2B0:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop2B0
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nFs1, $02

DancingLeaves_Loop2B1:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2B1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FB
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop2B2:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop2B2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nF1, $02

DancingLeaves_Loop2B3:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nF1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2B3
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nF1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nF1
	smpsAlterNote       $FB
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	$03

DancingLeaves_Loop2B4:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop2B4
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nFs1, $02

DancingLeaves_Loop2B5:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop2B5
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02, nRst, $27
	smpsPSGAlterVol     $F9
	smpsJump            DancingLeaves_Jump07

; PSG2 Data
DancingLeaves_PSG2:
	dc.b	nRst, $7F, $7F, $7F, $6A

DancingLeaves_Jump06:
	dc.b	nRst, $7F, $7F, $7F, $34
	smpsPSGAlterVol     $09
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop20A:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop20A
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop20B:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop20B
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop20C:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop20C
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop20D:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop20D
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop20E:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop20E
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop20F:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop20F
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop210:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop210
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop211:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop211
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop212:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop212
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop213:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop213
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop214:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop214
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop215:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop215
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop216:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop216
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop217:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop217
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop218:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop218
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop219:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop219
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop21A:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop21A
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop21B:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop21B
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop21C:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop21C
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop21D:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop21D
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop21E:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop21E
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop21F:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop21F
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop220:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop220
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop221:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop221
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop222:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop222
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop223:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop223
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $05

DancingLeaves_Loop224:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop224
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop225:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop225
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop226:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop226
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop227:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop227
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop228:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop228
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop229:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $02, DancingLeaves_Loop229
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $09
	smpsPSGAlterVol     $FA
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop22A:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop22A
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop22B:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop22B
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop22C:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $02, DancingLeaves_Loop22C
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0A
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop22D:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop22D
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop22E:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop22E
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop22F:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop22F
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop230:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop230
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FB
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop231:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop231
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop232:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop232
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop233:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop233
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop234:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop234
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop235:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop235
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop236:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop236
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $06

DancingLeaves_Loop237:
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop237
	smpsPSGAlterVol     $FD
	dc.b	nA1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nA1, nRst
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $06

DancingLeaves_Loop238:
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0B
	smpsLoop            $00, $03, DancingLeaves_Loop238
	smpsPSGAlterVol     $FD
	dc.b	nB1, $02
	smpsPSGAlterVol     $02
	dc.b	nB1
	smpsPSGAlterVol     $06
	dc.b	nD1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02

DancingLeaves_Loop239:
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop239
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop23A:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop23A
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$05

DancingLeaves_Loop23B:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop23B
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nD1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01, nRst, $0F
	smpsPSGAlterVol     $02
	dc.b	nEb1, $02

DancingLeaves_Loop23C:
	smpsPSGAlterVol     $FF
	dc.b	nEb1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop23C
	smpsPSGAlterVol     $FF
	dc.b	nEb1
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop23D:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop23D
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$05

DancingLeaves_Loop23E:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop23E
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nD1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01, nRst, $0F
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nD1, $02

DancingLeaves_Loop23F:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop23F
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop240:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop240
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $03
	dc.b	nCs1, $02

DancingLeaves_Loop241:
	smpsPSGAlterVol     $FF
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop241
	smpsPSGAlterVol     $FF
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop242:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop242
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop243:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop243
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nCs1, nRst, $0A
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop244:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop244
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop245:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop245
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$05
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	nCs1, nRst, $0D
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02

DancingLeaves_Loop246:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop246
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop247:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop247
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$05

DancingLeaves_Loop248:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop248
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nFs1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01, nRst, $0F
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs1, $02

DancingLeaves_Loop249:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop249
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop24A:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop24A
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$05

DancingLeaves_Loop24B:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop24B
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$03, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nFs1, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01, nRst, $0F
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	nFs1, $02

DancingLeaves_Loop24C:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop24C
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop24D:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop24D
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nFs1, $02

DancingLeaves_Loop24E:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop24E
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop24F:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop24F
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $03
	dc.b	nE1, $02

DancingLeaves_Loop250:
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop250
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nE1, nRst, $0A
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	nD1, $02

DancingLeaves_Loop251:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop251
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop252:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop252
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$01, nRst, $06
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nB0, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02

DancingLeaves_Loop253:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, DancingLeaves_Loop253
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nB0, nRst, $0A
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop254:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop254
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $06
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop255:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop255
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop256:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop256
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$05
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $03
	dc.b	nB0, $02

DancingLeaves_Loop257:
	smpsPSGAlterVol     $FF
	dc.b	nB0
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop257
	smpsPSGAlterVol     $FF
	dc.b	nB0
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nB0, nRst, $0A
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop258:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop258
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $06
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop259:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop259
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop25A:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $03, DancingLeaves_Loop25A
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$05
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$01, nRst, $05
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nB0, $02

DancingLeaves_Loop25B:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nB0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop25B
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nB0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nB0, nRst, $0A
	smpsPSGAlterVol     $05
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop25C:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop25C
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $06
	smpsAlterNote       $00
	dc.b	nCs1, $02

DancingLeaves_Loop25D:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop25D
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nCs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop25E:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop25E
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $03
	dc.b	nFs1, $02

DancingLeaves_Loop25F:
	smpsPSGAlterVol     $FF
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop25F
	smpsPSGAlterVol     $FF
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop260:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop260
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $03
	dc.b	nG0, $02

DancingLeaves_Loop261:
	smpsPSGAlterVol     $FF
	dc.b	nG0
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop261
	smpsPSGAlterVol     $FF
	dc.b	nG0
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nG0
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop262:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop262
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $03
	smpsAlterNote       $00
	dc.b	nG0, $02

DancingLeaves_Loop263:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nG0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop263
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nG0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$05
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $05
	dc.b	nG0
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	$01

DancingLeaves_Loop264:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$04
	smpsLoop            $00, $02, DancingLeaves_Loop264
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FB
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $03
	dc.b	nFs0, $02

DancingLeaves_Loop265:
	smpsPSGAlterVol     $FF
	dc.b	nFs0
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, DancingLeaves_Loop265
	smpsPSGAlterVol     $FF
	dc.b	nFs0
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $05
	dc.b	$02, nRst, $27
	smpsPSGAlterVol     $F9
	smpsJump            DancingLeaves_Jump06

; PSG3 Data
DancingLeaves_PSG3:
	smpsPSGAlterVol     $02
	smpsPSGform         $E7
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop66:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop66
	dc.b	nRst, $29

DancingLeaves_Jump05:
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop67:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop67
	dc.b	nRst
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop68:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop68
	dc.b	nRst, $24
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop69:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop69
	dc.b	nRst, $10
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop6A:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop6A
	dc.b	nRst, $0B
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop6B:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop6B
	dc.b	nRst
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop6C:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop6C
	dc.b	nRst, $10
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop6D:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop6D
	dc.b	nRst, $06
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop6E:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop6E
	dc.b	nRst, $28
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop6F:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop6F
	dc.b	nRst
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop70:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop70
	dc.b	nRst, $24
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop71:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop71
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop72:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop72
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop73:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop73
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop74:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop74
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop75:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop75
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop76:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop76
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop77:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop77
	dc.b	nRst
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop78:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop78
	dc.b	nRst
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop79:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop79
	dc.b	nRst
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop7A:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop7A
	dc.b	nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop7B:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop7B
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop7C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop7C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop7D:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop7D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop7E:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop7E
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop7F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop7F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop80:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop80
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop81:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop81
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop82:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop82
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop83:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop83
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop84:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop84
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop85:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop85
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop86:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop86
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop87:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop87
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop88:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop88
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop89:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop89
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop8A:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop8A
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop8B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop8B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop8C:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop8C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop8D:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop8D
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop8E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop8E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop8F:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop8F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop90:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop90
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop91:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop91
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop92:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop92
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop93:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop93
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop94:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop94
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop95:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop95
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop96:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop96
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop97:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop97
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop98:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop98
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop99:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop99
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop9A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop9A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop9B:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop9B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop9C:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop9C
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop9D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop9D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop9E:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop9E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop9F:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop9F
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopA0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopA0
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopA1:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopA1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopA2:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopA2
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopA3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopA3
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopA4:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopA4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopA5:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopA5
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopA6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopA6
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopA7:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopA7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopA8:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopA8
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopA9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopA9
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopAA:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopAA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopAB:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopAB
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopAC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopAC
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopAD:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopAD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopAE:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopAE
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopAF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopAF
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopB0:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopB0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopB1:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopB1
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopB2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopB2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopB3:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopB3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopB4:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopB4
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopB5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopB5
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopB6:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopB6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopB7:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopB7
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopB8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopB8
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopB9:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopB9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopBA:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopBA
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopBB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopBB
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopBC:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopBC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopBD:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopBD
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopBE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopBE
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopBF:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopBF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopC0:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopC0
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopC1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopC1
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopC2:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopC2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopC3:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopC3
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopC4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopC4
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopC5:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopC5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopC6:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopC6
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopC7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopC7
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopC8:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopC8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopC9:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopC9
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopCA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopCA
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopCB:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopCB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopCC:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopCC
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopCD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopCD
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopCE:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopCE
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopCF:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopCF
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopD0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopD0
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopD1:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopD1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopD2:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopD2
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopD3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopD3
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopD4:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopD4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopD5:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopD5
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopD6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopD6
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopD7:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopD7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopD8:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopD8
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopD9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopD9
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopDA:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopDA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopDB:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopDB
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopDC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopDC
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopDD:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopDD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopDE:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopDE
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopDF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopDF
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopE0:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopE0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopE1:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopE1
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopE2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopE2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopE3:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopE3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopE4:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopE4
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopE5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopE5
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopE6:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopE6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopE7:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopE7
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopE8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopE8
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopE9:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopE9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopEA:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopEA
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopEB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopEB
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopEC:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopEC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopED:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopED
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopEE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopEE
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopEF:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopEF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopF0:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopF0
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopF1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopF1
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopF2:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopF2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopF3:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopF3
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopF4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopF4
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopF5:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopF5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopF6:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopF6
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopF7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopF7
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopF8:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopF8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopF9:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopF9
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopFA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopFA
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopFB:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopFB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopFC:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopFC
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_LoopFD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopFD
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_LoopFE:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_LoopFE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_LoopFF:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_LoopFF
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop100:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop100
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop101:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop101
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop102:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop102
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop103:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop103
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop104:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop104
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop105:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop105
	dc.b	nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop106:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop106
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop107:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop107
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop108:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop108
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop109:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop109
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop10A:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop10A
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop10B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop10B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop10C:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop10C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop10D:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop10D
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop10E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop10E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop10F:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop10F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop110:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop110
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop111:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop111
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop112:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop112
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop113:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop113
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop114:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop114
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop115:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop115
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop116:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop116
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop117:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop117
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop118:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop118
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop119:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop119
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop11A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop11A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop11B:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop11B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop11C:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop11C
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop11D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop11D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop11E:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop11E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop11F:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop11F
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop120:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop120
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop121:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop121
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop122:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop122
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop123:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop123
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop124:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop124
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop125:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop125
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop126:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop126
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop127:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop127
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop128:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop128
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop129:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop129
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop12A:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop12A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop12B:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop12B
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop12C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop12C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop12D:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop12D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop12E:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop12E
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop12F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop12F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop130:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop130
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop131:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop131
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop132:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop132
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop133:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop133
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop134:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop134
	dc.b	nRst
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop135:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop135
	dc.b	nRst
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop136:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $07, DancingLeaves_Loop136
	dc.b	nRst, $02
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop137:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $06, DancingLeaves_Loop137
	dc.b	nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop138:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop138
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop139:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop139
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop13A:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop13A
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop13B:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop13B
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop13C:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop13C
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop13D:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop13D
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop13E:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop13E
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop13F:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop13F
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop140:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop140
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop141:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop141
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop142:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop142
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop143:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop143
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop144:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop144
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop145:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop145
	dc.b	nRst, $04
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop146:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $05, DancingLeaves_Loop146
	dc.b	nRst, $04
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop147:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $06, DancingLeaves_Loop147
	dc.b	nRst, $04
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop148:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $07, DancingLeaves_Loop148
	dc.b	nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop149:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop149
	dc.b	nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop14A:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop14A
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop14B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop14B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop14C:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop14C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop14D:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop14D
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop14E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop14E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop14F:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop14F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop150:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop150
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop151:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop151
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop152:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop152
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop153:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop153
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop154:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop154
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop155:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop155
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop156:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop156
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop157:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop157
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop158:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop158
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop159:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop159
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop15A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop15A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop15B:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop15B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop15C:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop15C
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop15D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop15D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop15E:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop15E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop15F:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop15F
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop160:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop160
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop161:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop161
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop162:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop162
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop163:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop163
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop164:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop164
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop165:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop165
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop166:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop166
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop167:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop167
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop168:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop168
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop169:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop169
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop16A:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop16A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop16B:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop16B
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop16C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop16C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop16D:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop16D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop16E:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop16E
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop16F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop16F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop170:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop170
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop171:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop171
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop172:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop172
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop173:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop173
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop174:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop174
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop175:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop175
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop176:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop176
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop177:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop177
	smpsPSGAlterVol     $F5

DancingLeaves_Loop178:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop178
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop179:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop179
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop17A:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop17A
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop17B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop17B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop17C:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop17C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop17D:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop17D
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop17E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop17E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop17F:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop17F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop180:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop180
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop181:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop181
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop182:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop182
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop183:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop183
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop184:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop184
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop185:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop185
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop186:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop186
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop187:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop187
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop188:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop188
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop189:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop189
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop18A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop18A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop18B:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop18B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop18C:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop18C
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop18D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop18D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop18E:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop18E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop18F:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop18F
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop190:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop190
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop191:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop191
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop192:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop192
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop193:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop193
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop194:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop194
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop195:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop195
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop196:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop196
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop197:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop197
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop198:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop198
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop199:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop199
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop19A:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop19A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop19B:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop19B
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop19C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop19C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop19D:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop19D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop19E:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop19E
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop19F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop19F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1A0:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1A0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1A1:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1A1
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1A2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1A2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1A3:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1A3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1A4:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1A4
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1A5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1A5
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1A6:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1A6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1A7:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1A7
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1A8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1A8
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1A9:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1A9
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1AA:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1AA
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1AB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1AB
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1AC:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1AC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1AD:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1AD
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1AE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1AE
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1AF:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1AF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1B0:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1B0
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1B1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1B1
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1B2:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1B2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1B3:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1B3
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1B4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1B4
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1B5:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1B5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1B6:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1B6
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1B7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1B7
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1B8:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1B8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1B9:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1B9
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1BA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1BA
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1BB:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1BB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1BC:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1BC
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1BD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1BD
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1BE:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1BE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1BF:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $03, DancingLeaves_Loop1BF
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1C0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1C0
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1C1:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1C1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1C2:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1C2
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1C3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1C3
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1C4:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1C4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1C5:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1C5
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1C6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1C6
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1C7:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1C7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1C8:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1C8
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1C9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1C9
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1CA:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1CA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1CB:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1CB
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1CC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1CC
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1CD:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1CD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1CE:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1CE
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1CF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1CF
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1D0:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1D0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1D1:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1D1
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1D2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1D2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1D3:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1D3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1D4:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1D4
	dc.b	nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1D5:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1D5
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1D6:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1D6
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1D7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1D7
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1D8:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1D8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1D9:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1D9
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1DA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1DA
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1DB:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1DB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1DC:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1DC
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1DD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1DD
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1DE:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1DE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1DF:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1DF
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1E0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1E0
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1E1:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1E1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1E2:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1E2
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1E3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1E3
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1E4:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1E4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1E5:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1E5
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1E6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1E6
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1E7:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1E7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1E8:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1E8
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1E9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1E9
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1EA:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1EA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1EB:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1EB
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1EC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1EC
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1ED:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1ED
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1EE:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1EE
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1EF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1EF
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1F0:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1F0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1F1:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1F1
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1F2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1F2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1F3:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1F3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1F4:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1F4
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1F5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1F5
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1F6:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1F6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1F7:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1F7
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1F8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1F8
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1F9:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1F9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1FA:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1FA
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1FB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1FB
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1FC:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1FC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop1FD:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop1FD
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop1FE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1FE
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop1FF:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop1FF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop200:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop200
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop201:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop201
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop202:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop202
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop203:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop203
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop204:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop204
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop205:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop205
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop206:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop206
	dc.b	nRst
	smpsPSGAlterVol     $F5

DancingLeaves_Loop207:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop207
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

DancingLeaves_Loop208:
	dc.b	$01
	smpsPSGAlterVol     $03
	smpsLoop            $00, $03, DancingLeaves_Loop208
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02

DancingLeaves_Loop209:
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $08, DancingLeaves_Loop209
	dc.b	nRst, $29
	smpsJump            DancingLeaves_Jump05

DancingLeaves_Voices:
;	Voice $00
;	$32
;	$40, $30, $60, $30, 	$1F, $1F, $1F, $1F, 	$0A, $08, $08, $09
;	$0B, $0E, $0C, $0A, 	$0F, $0E, $0F, $0F, 	$25, $10, $20, $00
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
;	$07
;	$00, $01, $02, $04, 	$54, $54, $54, $54, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$07, $07, $07, $07, 	$00, $00, $00, $00
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
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $02
;	$3A
;	$01, $02, $01, $01, 	$50, $10, $0E, $52, 	$04, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$48, $08, $08, $09, 	$7F, $7F, $7F, $00
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
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $03
;	$3A
;	$01, $01, $00, $01, 	$50, $15, $0F, $52, 	$04, $0E, $0E, $0E
;	$00, $00, $00, $00, 	$48, $08, $08, $09, 	$1C, $43, $30, $00
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

;	Voice $04
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

;	Voice $05
;	$3C
;	$3F, $33, $30, $31, 	$96, $D9, $97, $D9, 	$1C, $06, $12, $04
;	$01, $01, $01, $01, 	$A7, $27, $E7, $17, 	$28, $0B, $1E, $00
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
	smpsVcTotalLevel    $00, $1E, $0B, $28

;	Voice $06
;	$39
;	$32, $33, $33, $31, 	$DF, $DF, $DF, $9F, 	$07, $04, $04, $0D
;	$04, $04, $04, $03, 	$FF, $FF, $FF, $0F, 	$29, $23, $2B, $00
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

;	Voice $07
;	$2C
;	$6E, $64, $2F, $24, 	$5C, $58, $5C, $58, 	$0C, $0A, $0C, $0C
;	$05, $05, $05, $05, 	$FF, $EF, $DF, $EF, 	$2B, $00, $31, $00
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

;	Voice $08
;	$3D
;	$01, $01, $02, $01, 	$4C, $17, $50, $19, 	$0B, $05, $01, $02
;	$01, $00, $00, $00, 	$2F, $2F, $2F, $1F, 	$1D, $00, $06, $00
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

;	Voice $09
;	$04
;	$27, $01, $2A, $22, 	$57, $57, $15, $15, 	$05, $05, $09, $09
;	$03, $03, $06, $06, 	$28, $28, $28, $28, 	$26, $00, $20, $00
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

;	Voice $0A
;	$3A
;	$01, $05, $00, $01, 	$0D, $15, $15, $17, 	$04, $05, $04, $03
;	$00, $00, $00, $00, 	$07, $07, $17, $07, 	$1B, $47, $1F, $00
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

;	Voice $0B
;	$3D
;	$01, $01, $02, $01, 	$5C, $17, $57, $19, 	$0B, $05, $01, $02
;	$01, $00, $00, $00, 	$2F, $2F, $2F, $1F, 	$1D, $00, $06, $00
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

