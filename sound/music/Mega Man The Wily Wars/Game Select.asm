GameSelect_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     GameSelect_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       GameSelect_DAC,	$00, $F2
	smpsHeaderFM        GameSelect_FM1,	$00, $00
	smpsHeaderFM        GameSelect_FM2,	$00, $00
	smpsHeaderFM        GameSelect_FM3,	$00, $00
	smpsHeaderFM        GameSelect_FM4,	$00, $00
	smpsHeaderFM        GameSelect_FM5,	$00, $00
	smpsHeaderFM        GameSelect_FM6,	$00, $00
	smpsHeaderPSG       GameSelect_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       GameSelect_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       GameSelect_PSG3,	$00, $00, $00, $00

; DAC Data
GameSelect_DAC:
	smpsStop
; FM1 Data
GameSelect_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $11
	smpsPan             panCenter, $00
	dc.b	nRst, $18, nG5, $12

GameSelect_Jump05:
	dc.b	nFs5, $08, nF5, $09, nRst, nEb5, nRst, $12, nFs5, $08
	smpsAlterVol        $10
	dc.b	$12
	smpsAlterVol        $F0
	dc.b	nF5, $09, nRst, $12, nC5, $08, nEb5, $13

GameSelect_Loop0A:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, GameSelect_Loop0A
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $1B, nG5, $12, nFs5, $08, nF5, $09, nRst, nFs5, nRst
	dc.b	$11, nG5, $09
	smpsAlterVol        $0E
	dc.b	$12
	smpsAlterVol        $F2
	dc.b	nBb5, $13

GameSelect_Loop0B:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, GameSelect_Loop0B
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, nRst, $1B
	smpsAlterNote       $00
	dc.b	nG5, $11
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            GameSelect_Jump05

; FM2 Data
GameSelect_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	dc.b	nC3, $18, nRst, $12

GameSelect_Jump04:
	dc.b	nC3, $1A, nEb3, $1B, nA2, $08, nF2, $1B, nRst, $12, nF2, $1A
	dc.b	nA2, $09, nEb3, nD3, nCs3, $08, nC3, $1B, nRst, $12, nC3, $1A
	dc.b	nEb3, nA2, $09, nF2, $1B, nRst, $11, nF2, $1B, nA2, $09, nEb3
	dc.b	nD3, $08, nCs3, $0A, nC3, $1A, nRst, $11
	smpsPan             panCenter, $00
	smpsJump            GameSelect_Jump04

; FM3 Data
GameSelect_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $16
	smpsPan             panCenter, $00
	dc.b	nBb3, $18, nRst, $12

GameSelect_Jump03:
	dc.b	nBb3, $1D

GameSelect_Loop06:
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, GameSelect_Loop06
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb3, $1B, nRst, $12, nEb3, $1D

GameSelect_Loop07:
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD3, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb3, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, GameSelect_Loop07
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsSetvoice        $06
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	smpsAlterNote       $00
	dc.b	nBb3, $1A, nRst, $12, nBb3, $1D

GameSelect_Loop08:
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, GameSelect_Loop08
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb3, $1B, nRst, $11, nEb3, $1D

GameSelect_Loop09:
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	nD3, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nEb3, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, GameSelect_Loop09
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nBb3, $1A, nRst, $11
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            GameSelect_Jump03

; FM4 Data
GameSelect_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $16
	smpsPan             panCenter, $00
	dc.b	nG3, $18, nRst, $12

GameSelect_Jump02:
	dc.b	nRst, $01, nG3, $1C

GameSelect_Loop02:
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, GameSelect_Loop02
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nC3, $1A, nRst, $13, nC3, $1C

GameSelect_Loop03:
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, GameSelect_Loop03
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nG3, $1A, nRst, $13, nG3, $1C

GameSelect_Loop04:
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1B
	dc.b	nFs3, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nG3, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, GameSelect_Loop04
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nC3, $1A, nRst, $12, nC3, $1C

GameSelect_Loop05:
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	nB2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	nC3, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, GameSelect_Loop05
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nG3, $1A, nRst, $11
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            GameSelect_Jump02

; FM5 Data
GameSelect_FM5:
	smpsSetvoice        $03
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $0F
	smpsSetvoice        $00
	smpsAlterVol        $99
	dc.b	smpsNoAttack, $1B

GameSelect_Jump01:
	dc.b	nRst, $01
	smpsAlterNote       $02
	dc.b	nG5, $10, nFs5, $09, nRst, $01, nF5, $08, nRst, $09, nEb5, nRst
	dc.b	$11, nFs5, $09
	smpsAlterVol        $10
	dc.b	$12
	smpsAlterVol        $F0
	dc.b	nF5, $0A, nRst, $10, nC5, $09, nEb5, $13, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst, $1C, nG5, $10, nFs5, $09, nRst, $01, nF5, $08, nRst
	dc.b	$09, nFs5, $08, nRst, $12, nG5, $09
	smpsAlterVol        $0E
	dc.b	$12
	smpsAlterVol        $F2
	dc.b	nBb5, $13

GameSelect_Loop01:
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $05, GameSelect_Loop01
	dc.b	smpsNoAttack
	smpsAlterNote       $09
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $1A
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            GameSelect_Jump01

; FM6 Data
GameSelect_FM6:
	smpsSetvoice        $04
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $12
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nFs4

GameSelect_Jump00:
	smpsSetvoice        $04
	smpsAlterVol        $FE
	dc.b	nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $13, nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nFs4, $12
	smpsSetvoice        $04
	smpsAlterVol        $FE
	dc.b	nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $12
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nFs4
	smpsSetvoice        $04
	smpsAlterVol        $FE
	dc.b	nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $13, nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nRst, $01, nFs4, $11
	smpsSetvoice        $04
	smpsAlterVol        $FE
	dc.b	nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $12
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nFs4
	smpsSetvoice        $04
	smpsAlterVol        $FE
	dc.b	nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $13, nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nFs4, $11
	smpsSetvoice        $04
	smpsAlterVol        $FE

GameSelect_Loop00:
	dc.b	nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsLoop            $00, $02, GameSelect_Loop00
	dc.b	nRst, $12
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nFs4, $10
	smpsSetvoice        $04
	smpsAlterVol        $FE
	dc.b	nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $13, nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nRst, $01, nFs4, $08, nRst, $01, smpsNoAttack, nFs4, $07, nRst, $01, smpsNoAttack
	dc.b	nFs4, $08
	smpsSetvoice        $04
	smpsAlterVol        $FE
	dc.b	nRst, $01, nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $12
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nFs4, $11
	smpsPan             panCenter, $00
	smpsJump            GameSelect_Jump00

; PSG1 Data
GameSelect_PSG1:
	smpsPSGAlterVol     $02
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$12, nRst

GameSelect_Jump08:
	dc.b	nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$35
	smpsPSGAlterVol     $FE
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$13, nRst, $12
	smpsPSGAlterVol     $FE
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$35
	smpsPSGAlterVol     $FE
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$13, nRst, $12
	smpsPSGAlterVol     $FE
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$35
	smpsPSGAlterVol     $FE
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$13, nRst, $11
	smpsPSGAlterVol     $FE
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$36
	smpsPSGAlterVol     $FE
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$13, nRst, $10
	smpsJump            GameSelect_Jump08

; PSG2 Data
GameSelect_PSG2:
	smpsPSGAlterVol     $02
	dc.b	nC1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$12, nRst

GameSelect_Jump07:
	dc.b	nRst, $01
	smpsPSGAlterVol     $FE
	dc.b	nC1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$35
	smpsPSGAlterVol     $FE
	dc.b	nF0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$13, nRst, $12
	smpsPSGAlterVol     $FE
	dc.b	nF0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$35
	smpsPSGAlterVol     $FE
	dc.b	nC1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$13, nRst, $12
	smpsPSGAlterVol     $FE
	dc.b	nC1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$35
	smpsPSGAlterVol     $FE
	dc.b	nF0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$13, nRst, $11
	smpsPSGAlterVol     $FE
	dc.b	nF0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$36
	smpsPSGAlterVol     $FE
	dc.b	nC1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$13, nRst, $10
	smpsJump            GameSelect_Jump07

; PSG3 Data
GameSelect_PSG3:
	smpsPSGAlterVol     $04
	smpsPSGform         $E7
	dc.b	nMaxPSG

GameSelect_Loop0C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, GameSelect_Loop0C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop0D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop0D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop0E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop0E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop0F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop0F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop10:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop10
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02

GameSelect_Jump06:
	dc.b	nRst, $01
	smpsPSGAlterVol     $F5

GameSelect_Loop11:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop11
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop12:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop12
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop13:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop13
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop14:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop14
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop15:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop15
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop16:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop16
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop17:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop17
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $F5

GameSelect_Loop18:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop18
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop19:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop19
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop1A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop1A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop1B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop1B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop1C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop1C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop1D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop1D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop1E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop1E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop1F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop1F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop20:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop20
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop21:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop21
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop22:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop22
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop23:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop23
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $F5

GameSelect_Loop24:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop24
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop25:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop25
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop26:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop26
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop27:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop27
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop28:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop28
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop29:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop29
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop2A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop2A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop2B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop2B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop2C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop2C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop2D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop2D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop2E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop2E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $F5

GameSelect_Loop2F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop2F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop30:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop30
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop31:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop31
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop32:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop32
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop33:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop33
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop34:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop34
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $F5

GameSelect_Loop35:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop35
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop36:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop36
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop37:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop37
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop38:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop38
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop39:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop39
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop3A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop3A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $F5

GameSelect_Loop3B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop3B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop3C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop3C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop3D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop3D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop3E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop3E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

GameSelect_Loop3F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop3F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

GameSelect_Loop40:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, GameSelect_Loop40
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsJump            GameSelect_Jump06

GameSelect_Voices:
;	Voice $00
;	$2A
;	$00, $00, $02, $02, 	$13, $11, $14, $14, 	$04, $06, $05, $05
;	$02, $00, $00, $06, 	$A8, $A8, $09, $AE, 	$11, $0A, $3E, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $11, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $06, $04
	smpsVcDecayRate2    $06, $00, $00, $02
	smpsVcDecayLevel    $0A, $00, $0A, $0A
	smpsVcReleaseRate   $0E, $09, $08, $08
	smpsVcTotalLevel    $00, $3E, $0A, $11

;	Voice $01
;	$3C
;	$01, $00, $00, $00, 	$1F, $1F, $15, $1F, 	$11, $0D, $12, $05
;	$07, $04, $09, $02, 	$55, $3A, $25, $1A, 	$1A, $00, $07, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $15, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0D, $11
	smpsVcDecayRate2    $02, $09, $04, $07
	smpsVcDecayLevel    $01, $02, $03, $05
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $07, $00, $1A

;	Voice $02
;	$3E
;	$07, $01, $02, $01, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $03
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

;	Voice $04
;	$3C
;	$01, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$15, $13, $13, $10
;	$10, $12, $0A, $05, 	$9F, $3F, $AF, $1F, 	$0D, $00, $0B, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $13, $13, $15
	smpsVcDecayRate2    $05, $0A, $12, $10
	smpsVcDecayLevel    $01, $0A, $03, $09
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0B, $00, $0D

;	Voice $05
;	$3C
;	$0F, $00, $00, $00, 	$1F, $1A, $18, $1C, 	$17, $11, $1A, $0E
;	$00, $0F, $14, $10, 	$1F, $EC, $FF, $FF, 	$07, $00, $16, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1C, $18, $1A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $1A, $11, $17
	smpsVcDecayRate2    $10, $14, $0F, $00
	smpsVcDecayLevel    $0F, $0F, $0E, $01
	smpsVcReleaseRate   $0F, $0F, $0C, $0F
	smpsVcTotalLevel    $00, $16, $00, $07

;	Voice $06
;	$3E
;	$07, $01, $02, $01, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$FF, $FF, $FF, $FF, 	$1B, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1B

