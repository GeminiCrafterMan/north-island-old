WoodZone_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     WoodZone_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       WoodZone_DAC
	smpsHeaderFM        WoodZone_FM1,	$00, $00
	smpsHeaderFM        WoodZone_FM2,	$00, $00
	smpsHeaderFM        WoodZone_FM3,	$00, $00
	smpsHeaderFM        WoodZone_FM4,	$00, $00
	smpsHeaderFM        WoodZone_FM5,	$00, $00
	smpsHeaderPSG       WoodZone_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       WoodZone_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       WoodZone_PSG3,	$00, $00, $00, $00

; FM1 Data
WoodZone_FM1:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $63

WoodZone_Jump04:
	dc.b	nRst, $0F
	smpsSetvoice        $03
	smpsAlterVol        $0C
	dc.b	nE4, $08, nRst, $07, nD5, $0F, nCs5, $08, nRst, $07, nB4, $0F
	dc.b	nRst, $0A, nA4, $0F, nRst, $05, nE4, $08, nRst, $07

WoodZone_Loop10:
	dc.b	nAb4, $08, nRst, $02, nA4, $05
	smpsLoop            $00, $02, WoodZone_Loop10
	dc.b	nE4, $08, nRst, $02, nB3, $08, nRst, $07, nD4, $23, nRst, $0F
	dc.b	nB3, $08, nRst, $02, nD4, $05, nE4, $08, nRst, $02, nAb4, $08
	dc.b	nRst, $07, nAb4, $0F, nRst, $41
	smpsSetvoice        $04
	smpsAlterVol        $07
	dc.b	nB4, $08, nRst, $02, nD5, $05, nE5, $08, nRst, $02, nAb5, $08
	dc.b	nRst, $07, nAb5, $0F, nRst, $05
	smpsAlterVol        $F7
	dc.b	smpsNoAttack, $5A
	smpsSetvoice        $03
	smpsAlterVol        $02

WoodZone_Loop11:
	dc.b	nA4, $08, nRst, $07, nD5, $0F, nCs5, $08, nRst, $07, nB4, $08
	dc.b	nRst, $11, nA4, $0F, nRst, $05
	smpsLoop            $00, $02, WoodZone_Loop11
	dc.b	nE4, $08, nRst, $07, nA4, $08, nRst, $07, nE4, $08, nRst, $07
	dc.b	nFs4, $0A, nG4, $05, nRst, $0A, nAb4, $0F, nRst, $41
	smpsSetvoice        $04
	smpsAlterVol        $07
	dc.b	nD5, $0A, nEb5, $05, nFs5, $0A, nG5, $05, nRst, $0A, nAb5, nRst
	smpsAlterVol        $F7
	dc.b	smpsNoAttack, $5A
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nE4, $08, nRst, $07, nD5, $0F, nCs5, $08, nRst, $07, nB4, $0F
	dc.b	nRst, $0A, nA4, $0F, nRst, $05, nE4, $08, nRst, $07

WoodZone_Loop12:
	dc.b	nAb4, $08, nRst, $02, nA4, $05
	smpsLoop            $00, $02, WoodZone_Loop12
	dc.b	nE4, $08, nRst, $02, nB3, $08, nRst, $07, nD4, $23, nRst, $0F
	dc.b	nB3, $08, nRst, $02, nD4, $05, nE4, $08, nRst, $02, nAb4, $08
	dc.b	nRst, $07, nAb4, $0F, nRst, $41
	smpsSetvoice        $04
	smpsAlterVol        $07
	dc.b	nB4, $08, nRst, $02, nD5, $05, nE5, $08, nRst, $02, nAb5, $08
	dc.b	nRst, $07, nAb5, $0F, nRst, $05
	smpsAlterVol        $F7
	dc.b	smpsNoAttack, $5A
	smpsSetvoice        $03
	smpsAlterVol        $02

WoodZone_Loop13:
	dc.b	nA4, $08, nRst, $07, nD5, $0F, nCs5, $08, nRst, $07, nB4, $08
	dc.b	nRst, $11, nA4, $0F, nRst, $05
	smpsLoop            $00, $02, WoodZone_Loop13
	dc.b	nE4, $08, nRst, $07, nA4, $08, nRst, $07, nE4, $08, nRst, $07
	dc.b	nFs4, $0A, nG4, $05, nRst, $0A, nAb4, $0F, nRst, $41
	smpsSetvoice        $04
	smpsAlterVol        $07
	dc.b	nD5, $0A, nEb5, $05, nFs5, $0A, nG5, $05, nRst, $0A, nAb5, nRst
	smpsAlterVol        $F7
	dc.b	smpsNoAttack, $4B
	smpsAlterVol        $0D

WoodZone_Loop14:
	smpsAlterNote       $02
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	nE6, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$65
	smpsLoop            $00, $02, WoodZone_Loop14
	smpsSetvoice        $06
	smpsAlterVol        $FD
	smpsAlterNote       $00
	dc.b	nEb5, $08, nRst, $11
	smpsSetvoice        $04
	smpsAlterVol        $FF
	dc.b	nAb5, $08, nRst, $39, nFs5, $08, nRst, $07, nG5, $08, nRst, $07
	dc.b	nAb5, $08, nRst, $34
	smpsSetvoice        $06
	smpsAlterVol        $01
	dc.b	nAb3, $0F, nRst, nE3, nRst
	smpsSetvoice        $04
	smpsAlterVol        $03

WoodZone_Loop15:
	smpsAlterNote       $02
	dc.b	nEb6, $01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $10
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $16
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	nE6, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$65
	smpsLoop            $00, $02, WoodZone_Loop15
	smpsAlterVol        $FC
	smpsAlterNote       $00
	dc.b	nAb5, $08, nRst, $11, nB5, $08, nRst, $39

WoodZone_Loop16:
	dc.b	nAb5, $08, nRst, $07, nA5, $08, nRst, $07
	smpsLoop            $00, $03, WoodZone_Loop16

WoodZone_Loop17:
	dc.b	nAb5, $08, nRst, $02, nA5, $05
	smpsLoop            $00, $04, WoodZone_Loop17
	smpsAlterVol        $ED
	smpsPan             panCenter, $00
	smpsJump            WoodZone_Jump04

; FM2 Data
WoodZone_FM2:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $63

WoodZone_Jump03:
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, nRst, $17
	smpsSetvoice        $03
	smpsAlterVol        $13
	dc.b	nE4, $07, nRst, $08, nD5, $0F, nCs5, $07, nRst, $08, nB4, $0F
	dc.b	nRst, $0A, nA4, $0F, nRst, $05, nE4, $07, nRst, $08

WoodZone_Loop0C:
	dc.b	nAb4, $07, nRst, $03, nA4, $05
	smpsLoop            $00, $02, WoodZone_Loop0C
	dc.b	nE4, $07, nRst, $03, nB3, $07, nRst, $08, nD4, $23, nRst, $0F
	dc.b	nB3, $07, nRst, $03, nD4, $05, nE4, $07, nRst, $03, nAb4, $07
	dc.b	nRst, $08, nAb4, $0F, nRst, $39
	smpsSetvoice        $05
	dc.b	nB3, $08, nRst, $02, nD4, $05, nE4, $08, nRst, $02, nAb4, $08
	dc.b	nRst, $07, nAb4, $0F, nRst, $67
	smpsSetvoice        $03

WoodZone_Loop0D:
	dc.b	nA4, $07, nRst, $08, nD5, $0F, nCs5, $07, nRst, $08, nB4, $07
	dc.b	nRst, $12, nA4, $0F, nRst, $05
	smpsLoop            $00, $02, WoodZone_Loop0D
	dc.b	nE4, $07, nRst, $08, nA4, $07, nRst, $08, nE4, $07, nRst, $08
	dc.b	nFs4, $0A, nG4, $05, nRst, $0A, nAb4, $0F, nRst, $39
	smpsSetvoice        $05
	dc.b	nD4, $0A, nEb4, $05, nFs4, $0A, nG4, $05, nRst, $0A, nAb4, nRst
	dc.b	$64, nAb4, $08, nRst, $07, nE5, $0F, $08, nRst, $07, nE5, $0F
	dc.b	nRst, $0A, nE5, $0F, nRst, $05, nE5, $0F

WoodZone_Loop0E:
	dc.b	nD5, $08, nRst, $02, nE5, $05
	smpsLoop            $00, $02, WoodZone_Loop0E
	dc.b	nA4, $08, nRst, $02, nBb4, $08, nRst, $07, nB4, $23, nRst, $0F
	dc.b	nD4, $08, nRst, $02, nE4, $05, nAb4, $08, nRst, $02, nB4, $08
	dc.b	nRst, $07, nB4, $0F, nRst, $41, nB3, $08, nRst, $02, nD4, $05
	dc.b	nE4, $08, nRst, $02, nAb4, $08, nRst, $07, nAb4, $0F, nRst, $5F
	dc.b	nCs5, $08

WoodZone_Loop0F:
	dc.b	nRst, $07, nE5, $0F, $08, nRst, $07, nE5, $08, nRst, $11, nE5
	dc.b	$0F, nRst, $05, nE5, $08
	smpsLoop            $00, $02, WoodZone_Loop0F
	dc.b	nRst, $07, nCs5, $08, nRst, $07, nB4, $08, nRst, $07, nBb4, $0A
	dc.b	nB4, $05, nRst, $0A, nB4, $0F, nRst, $41, nD4, $0A, nEb4, $05
	dc.b	nFs4, $0A, nG4, $05, nRst, $0A, nAb4, nRst, $55
	smpsSetvoice        $06
	smpsAlterVol        $F8
	smpsPan             panCenter, $00
	dc.b	nB3, $0A, nRst, $05, nE4, $0A, nRst, $05, nAb4, $0A, nRst, $05
	dc.b	nE4, $0A, nRst, $05, nFs4, $0A, nRst, $05, nD4, $0A, nRst, $05
	dc.b	nA3, $0A, nRst, $05, nD4, $0A, nRst, $05, nCs4, $0F, nAb3, $0A
	dc.b	nRst, $05, nE3, $0A, nRst, $05, nAb3, $0A, nRst, $05, nG3, $0F
	dc.b	nRst, nE3, nRst, nAb3, $08, nRst, $11, nB3, $08, nRst, $39, nA3
	dc.b	$08, nRst, $07, nBb3, $08, nRst, $07, nB3, $08, nRst, $34, nB3
	dc.b	$0F, nRst, nAb3, nB2, nB3, $0A, nRst, $05, nE4, $0A, nRst, $05
	dc.b	nAb4, $0A, nRst, $05, nE4, $0A, nRst, $05, nFs4, $0A, nRst, $05
	dc.b	nD4, $0A, nRst, $05, nA3, $0A, nRst, $05, nD4, $0A, nRst, $05
	dc.b	nCs4, $0F, nAb3, $0A, nRst, $05, nE3, $0A, nRst, $05, nAb3, $0A
	dc.b	nRst, $05, nG3, $0F, nRst, nE3, nRst, nEb4, $08, nRst, $11, nEb4
	dc.b	$08, nRst, $39, nEb4, $08, nRst, $07, nE4, $08, nRst, $07, nEb4
	dc.b	$08, nRst, $34, nB3, $0F, nRst, nAb3, nRst
	smpsAlterVol        $F5
	smpsPan             panCenter, $00
	smpsJump            WoodZone_Jump03

; FM3 Data
WoodZone_FM3:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $63

WoodZone_Jump02:
	smpsSetvoice        $01
	smpsAlterVol        $16

WoodZone_Loop0A:
	dc.b	nE5, $05, nRst, $14, nE4, $05, nRst, $0F, nE5, $05, nRst, $0A
	dc.b	nE4, $05, nRst, $12, nE5, $05, nRst, $11, nE4, $05, nRst, $0A
	smpsLoop            $00, $16, WoodZone_Loop0A

WoodZone_Loop0B:
	dc.b	nB4, $05, nRst, $14, nB3, $05, nRst, $0F, nB4, $05, nRst, $0A
	dc.b	nB3, $05, nRst, $12, nB4, $05, nRst, $11, nB3, $05, nRst, $0A
	smpsLoop            $00, $02, WoodZone_Loop0B
	smpsAlterVol        $EA
	smpsPan             panCenter, $00
	smpsJump            WoodZone_Jump02

; FM4 Data
WoodZone_FM4:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $63

WoodZone_Jump01:
	smpsSetvoice        $02
	smpsAlterVol        $0C
	smpsPan             panLeft, $00
	dc.b	nE3

WoodZone_Loop05:
	dc.b	$05, nRst, $0A, nE3, $05, nRst, $0A, nE4, $05, nRst, nD4

WoodZone_Loop04:
	dc.b	nRst, $0A, nE3, $05
	smpsLoop            $00, $03, WoodZone_Loop04
	dc.b	nD4, nRst, nE3, nEb4, nRst, nE3
	smpsLoop            $01, $14, WoodZone_Loop05

WoodZone_Loop06:
	dc.b	nE4, $08, nRst, $07, nE3, $08, nRst, $07
	smpsLoop            $00, $02, WoodZone_Loop06

WoodZone_Loop07:
	dc.b	nD4, $08, nRst, $07, nD3, $08, nRst, $07
	smpsLoop            $00, $02, WoodZone_Loop07

WoodZone_Loop08:
	dc.b	nCs4, $08, nRst, $07, nCs3, $08, nRst, $07
	smpsLoop            $00, $02, WoodZone_Loop08
	dc.b	nC4, $08, nRst, $07, nC3, $08, nRst, $07, nC4, $08, nRst, $07
	dc.b	nC4, $08, nRst, $07, nB3, $08, nRst, $16, nBb3, $08

WoodZone_Loop09:
	dc.b	nRst, $07, nC4, $08, nRst, $07, nB3, $08
	smpsLoop            $00, $04, WoodZone_Loop09
	dc.b	nRst, $07, nC4, $08, nRst, $07, nD4, $08, nRst, $07, nB3, $08
	dc.b	nRst, $07, nEb4, $08, nRst, $07, nB3, $0F
	smpsAlterVol        $F4
	smpsPan             panCenter, $00
	smpsJump            WoodZone_Jump01

; FM5 Data
WoodZone_FM5:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $7F, $31
	smpsSetvoice        $00
	smpsAlterVol        $0C

WoodZone_Loop01:
	dc.b	nB2, $05, nD3, nRst, $0A, nD3, $0F, nEb3

WoodZone_Loop02:
	dc.b	nE3, $19, $05, nRst, $1E, nE3, $05, nRst
	smpsLoop            $00, $04, WoodZone_Loop01
	dc.b	nB2, nA3, nRst, $0A, nAb3, $0F, nFs3, nA2, $19, $05, nRst, $1E
	dc.b	nA2, $05, nRst, nA3, nA2, $0F, nCs3, nG2, nA2, $19, $05, nRst
	dc.b	$0F, nA2, nAb3, $05, nRst, nA3, nA2, $0F, nD3, nEb3, nE3, $19
	dc.b	$05, nRst, $1E, nE3, $05, nRst, nB2, nD3, nRst, $0A, nD3, $0F
	dc.b	nEb3, nE3, $19, $05, nRst, $1E, nE3, $05, nRst, nB2, nA3, nRst
	dc.b	$0A, nAb3, $0F, nFs3
	smpsLoop            $01, $02, WoodZone_Loop02
	dc.b	nE3, $19, $08, nRst, $0C, nE3, $08, nRst, $07, nD3, $19, $08
	dc.b	nRst, $0C, nD3, $08, nRst, $07, nCs3, $19, $08, nRst, $0C, nCs3
	dc.b	$08, nRst, $07, nC3, $1E, $08, nRst, $07, nC3, $08, nRst, $07
	dc.b	nE3, $19, $05, nRst, $1E, nE3, $05, nRst, nB2, nD3, nRst, $0A
	dc.b	nD3, $0F, nEb3, nE3, $19, $05, nRst, $1E, nE3, $05, nRst, nB2
	dc.b	nA3, nRst, $0A, nAb3, $0F, nFs3, nE3, $19, $08, nRst, $0C, nE3
	dc.b	$08, nRst, $07, nD3, $19, $08, nRst, $0C, nD3, $08, nRst, $07
	dc.b	nCs3, $19, $08, nRst, $0C, nCs3, $08, nRst, $07, nC3, $1E, $08
	dc.b	nRst, $07, nC3, $08, nRst, $07, nB2, $19, nRst, $14

WoodZone_Loop03:
	dc.b	nC3, $08, nRst, $07, nB2, $08, nRst, $07
	smpsLoop            $00, $02, WoodZone_Loop03
	dc.b	nC3, $08, nRst, $07, nB2, $17, nRst, $07, nB2, $17, nRst, $07
	dc.b	nD3, $17, nRst, $07, nEb3, $17, nRst, $07
	smpsPan             panCenter, $00
	smpsJump            WoodZone_Loop02

; PSG1 Data
WoodZone_PSG1:
	dc.b	nRst, $7F, $7F, $7F, $63

WoodZone_LoopFA:
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nG1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, WoodZone_LoopFA
	dc.b	nA1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nD1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00

WoodZone_LoopFB:
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nG1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodZone_LoopFB
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	dc.b	nA1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nD1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nG1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $34
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $03

WoodZone_LoopFC:
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $34
	smpsPSGAlterVol     $FC
	dc.b	nE1, $03
	smpsLoop            $00, $02, WoodZone_LoopFC
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $34
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nG1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $34
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $03

WoodZone_LoopFD:
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $34
	smpsPSGAlterVol     $FC
	dc.b	nE1, $03
	smpsLoop            $00, $02, WoodZone_LoopFD
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $34
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	smpsJump            WoodZone_LoopFA

; PSG2 Data
WoodZone_PSG2:
	dc.b	nRst, $7F, $7F, $7F, $63

WoodZone_Jump06:
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nD1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nD1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nCs1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nB0, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nC1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nCs1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02

WoodZone_LoopF8:
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nD1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	smpsLoop            $00, $03, WoodZone_LoopF8
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nCs1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nB0, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nC1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nCs1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $70

WoodZone_LoopF9:
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nD1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nEb1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$03, nRst, $34
	smpsPSGAlterVol     $FC
	dc.b	nD1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $34
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nCs1, $03
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$03, nRst, $34
	smpsPSGAlterVol     $FC
	dc.b	nC1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $34
	smpsLoop            $00, $02, WoodZone_LoopF9
	smpsPSGAlterVol     $FC
	dc.b	nB0, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $52
	smpsPSGAlterVol     $FC
	dc.b	nB0, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nCs1, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $07
	smpsPSGAlterVol     $FC
	dc.b	nB0, $03
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$03, nRst, $70
	smpsPSGAlterVol     $FC
	smpsJump            WoodZone_Jump06

; PSG3 Data
WoodZone_PSG3:
	smpsPSGAlterVol     $03
	smpsPSGform         $E7

WoodZone_Loop18:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop18
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop19:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop19
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop1A:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop1A
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop1B:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop1B
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop1C:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop1C
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop1D:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop1D
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop1E:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop1E
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop1F:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop1F
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop20:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop20
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop21:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop21
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop22:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop22
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop23:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop23
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop24:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop24
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop25:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop25
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop26:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop26
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop27:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop27
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop28:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop28
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop29:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop29
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop2A:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop2A
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop2B:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop2B
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop2C:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop2C
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop2D:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop2D
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop2E:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop2E
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop2F:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop2F
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop30:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop30
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop31:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop31
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop32:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop32
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop33:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop33
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop34:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop34
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop35:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop35
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop36:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop36
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop37:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop37
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09

WoodZone_Jump05:
	smpsPSGAlterVol     $F6

WoodZone_Loop38:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop38
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop39:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop39
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop3A:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop3A
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop3B:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop3B
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop3C:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop3C
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop3D:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop3D
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop3E:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop3E
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop3F:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop3F
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop40:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop40
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop41:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop41
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop42:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop42
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop43:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop43
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop44:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop44
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop45:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop45
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop46:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop46
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop47:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop47
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop48:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop48
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop49:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop49
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop4A:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop4A
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop4B:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop4B
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop4C:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop4C
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop4D:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop4D
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop4E:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop4E
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop4F:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop4F
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop50:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop50
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop51:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop51
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop52:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop52
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop53:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop53
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop54:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop54
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop55:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop55
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop56:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop56
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop57:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop57
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop58:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop58
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop59:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop59
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop5A:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop5A
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop5B:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop5B
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop5C:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop5C
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop5D:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop5D
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop5E:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop5E
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop5F:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop5F
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop60:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop60
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop61:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop61
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop62:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop62
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop63:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop63
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop64:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop64
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop65:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop65
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop66:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop66
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop67:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop67
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop68:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop68
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop69:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop69
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop6A:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop6A
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop6B:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop6B
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop6C:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop6C
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop6D:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop6D
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop6E:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop6E
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop6F:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop6F
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop70:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop70
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop71:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop71
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop72:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop72
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop73:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop73
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop74:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop74
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop75:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop75
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop76:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop76
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop77:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop77
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop78:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop78
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop79:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop79
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop7A:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop7A
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop7B:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop7B
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop7C:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop7C
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop7D:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop7D
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop7E:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop7E
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop7F:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop7F
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop80:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop80
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop81:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop81
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop82:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop82
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop83:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop83
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop84:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop84
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop85:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop85
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop86:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop86
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop87:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop87
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop88:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop88
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop89:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop89
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop8A:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop8A
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop8B:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop8B
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop8C:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop8C
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop8D:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop8D
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop8E:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop8E
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop8F:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop8F
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop90:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop90
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop91:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop91
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop92:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop92
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop93:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop93
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop94:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop94
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop95:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop95
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop96:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop96
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop97:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop97
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop98:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop98
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop99:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop99
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop9A:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop9A
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop9B:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop9B
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_Loop9C:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_Loop9C
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_Loop9D:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop9D
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop9E:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop9E
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_Loop9F:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_Loop9F
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopA0:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopA0
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopA1:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopA1
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopA2:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopA2
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopA3:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopA3
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopA4:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopA4
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopA5:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopA5
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopA6:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopA6
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopA7:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopA7
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopA8:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopA8
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopA9:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopA9
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopAA:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopAA
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopAB:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopAB
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopAC:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopAC
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopAD:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopAD
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopAE:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopAE
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopAF:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopAF
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopB0:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopB0
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopB1:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopB1
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopB2:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopB2
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopB3:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopB3
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopB4:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopB4
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopB5:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopB5
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopB6:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopB6
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopB7:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopB7
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopB8:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopB8
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopB9:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopB9
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopBA:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopBA
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopBB:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopBB
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopBC:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopBC
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopBD:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopBD
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopBE:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopBE
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopBF:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopBF
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopC0:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopC0
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopC1:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopC1
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopC2:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopC2
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopC3:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopC3
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopC4:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopC4
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopC5:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopC5
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopC6:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopC6
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopC7:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopC7
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopC8:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopC8
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopC9:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopC9
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopCA:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopCA
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopCB:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopCB
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopCC:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopCC
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopCD:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopCD
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopCE:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopCE
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopCF:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopCF
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopD0:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopD0
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopD1:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopD1
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopD2:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopD2
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopD3:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopD3
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopD4:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopD4
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopD5:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopD5
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopD6:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopD6
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopD7:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopD7
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopD8:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopD8
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopD9:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopD9
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopDA:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopDA
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopDB:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopDB
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopDC:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopDC
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopDD:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopDD
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopDE:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopDE
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopDF:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopDF
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopE0:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopE0
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopE1:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopE1
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopE2:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopE2
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopE3:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopE3
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopE4:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopE4
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopE5:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopE5
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopE6:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopE6
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopE7:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopE7
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopE8:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopE8
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopE9:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopE9
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopEA:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopEA
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopEB:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopEB
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopEC:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopEC
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopED:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopED
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopEE:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopEE
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopEF:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopEF
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopF0:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopF0
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopF1:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopF1
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopF2:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopF2
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopF3:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopF3
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F5

WoodZone_LoopF4:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, WoodZone_LoopF4
	smpsAlterNote       $02
	dc.b	$07
	smpsPSGAlterVol     $F9

WoodZone_LoopF5:
	smpsAlterNote       $02
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopF5
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopF6:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopF6
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsPSGAlterVol     $F6

WoodZone_LoopF7:
	smpsAlterNote       $02
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodZone_LoopF7
	smpsAlterNote       $02
	dc.b	nMaxPSG, nRst, $09
	smpsJump            WoodZone_Jump05

; DAC Data
WoodZone_DAC:
	dc.b	dKick, $19

WoodZone_Loop00:
	dc.b	$05, dClap, $0F, dKick, $0A, dClap, $05, dKick, $0A, dClap, $05, dKick
	dc.b	$0A, $05, dClap, $0F, dSnare, $0A, $05, dKick, $19, $05, dClap, $0F
	dc.b	dKick, $0A, dClap, $05, dKick, $0A, dClap, $05, dKick, $0A, $05, dClap
	dc.b	$0F, dSnare
	smpsLoop            $00, $02, WoodZone_DAC

WoodZone_Jump00:
	dc.b	dKick, $19
	smpsLoop            $01, $06, WoodZone_Loop00
	dc.b	$05, dClap, $0F, dKick, $0A, dClap, $05, dKick, $0A, dClap, $05, dKick
	dc.b	$0A, $05, dClap, $0F, dSnare, $0A, $05, dKick, $19, $05, dClap, $0F
	dc.b	dKick, $0A, dClap, $05, dKick, $0A, dClap, $05, dKick, $0A, $05, dClap
	dc.b	$0F, dSnare, dKick, $19, $05, dClap, $0F, dKick, $0A, dClap, $05, dKick
	dc.b	$0A, dClap, $05, dKick, $0A, $05, dClap, $0F, dSnare, $0A, $05, dKick
	dc.b	$19, $05, dClap, $0F, dKick, $0A, dClap, $05, dKick, $0A, dClap, $05
	dc.b	dKick, $0A, $05, dClap, $0F, dSnare
	smpsJump            WoodZone_Jump00

WoodZone_Voices:
;	Voice $00
;	$08
;	$09, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$25, $30, $13, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $09
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $30, $25

;	Voice $01
;	$0D
;	$32, $04, $02, $01, 	$1F, $19, $19, $19, 	$0A, $05, $05, $05
;	$00, $02, $02, $02, 	$3F, $2F, $2F, $2F, 	$28, $00, $06, $0E
	smpsVcAlgorithm     $05
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $02, $04, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $19, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $02, $02, $02, $00
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0E, $06, $00, $28

;	Voice $02
;	$39
;	$06, $60, $30, $01, 	$1F, $1F, $5F, $5F, 	$11, $0F, $13, $09
;	$05, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$27, $2C, $17, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $06, $00
	smpsVcCoarseFreq    $01, $00, $00, $06
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $13, $0F, $11
	smpsVcDecayRate2    $03, $04, $04, $05
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $2C, $27

;	Voice $03
;	$3C
;	$01, $01, $0E, $04, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $6F, 	$15, $00, $10, $07
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $0E, $01, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $06, $00, $00, $02
	smpsVcReleaseRate   $0F, $02, $08, $03
	smpsVcTotalLevel    $07, $10, $00, $15

;	Voice $04
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $00, $16, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $00, $1A

;	Voice $05
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$14, $37, $0F, $00
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
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $37, $14

;	Voice $06
;	$3A
;	$01, $07, $01, $01, 	$5D, $5D, $5D, $13, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $1F, 	$18, $20, $2F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $00, $01, $01, $01
	smpsVcAttackRate    $13, $1D, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $2F, $20, $18

