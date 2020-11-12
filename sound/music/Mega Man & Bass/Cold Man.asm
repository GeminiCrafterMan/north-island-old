ColdMan_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     ColdMan_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       ColdMan_DAC
	smpsHeaderFM        ColdMan_FM1,	$00, $00
	smpsHeaderFM        ColdMan_FM2,	$00, $00
	smpsHeaderFM        ColdMan_FM3,	$00, $00
	smpsHeaderFM        ColdMan_FM4,	$00, $00
	smpsHeaderFM        ColdMan_FM5,	$00, $00
	smpsHeaderPSG       ColdMan_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       ColdMan_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       ColdMan_PSG3,	$00, $00, $00, $00

; FM1 Data
ColdMan_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $09
	smpsPan             panCenter, $00
	dc.b	nA2, $0C, nRst, $0D, nA2, $3F, nG3, $0C, nA2, $0D, $06, nRst
	dc.b	$07, nB2, $06, nB2, nRst, nC3, $13, $0D, nCs3, nCs3, $0C

ColdMan_Jump05:
	dc.b	nD3, $0D, $06, nRst, nD4, $13, nD3, $07, nRst, $06, nD3, nD3
	dc.b	nRst, $07, nD4, $06, nD3, nC4, $07, nD4, $06, nC3, $0D, $06
	dc.b	nRst, nC4, $13, nC3, $06, nRst, $07, nC3, $06, $0D, nC4, $0C
	dc.b	nC3, $0D, nBb2, $13, nRst, $06, nBb3, $13, nBb2, $06, nRst, nBb2
	dc.b	$07, $0C, nBb3, $07, nBb2, $06, nF3, nBb3, $07, nBb2, $12, $07
	dc.b	nBb3, $13, nBb2, $06, nRst, nBb2, $07, $0C, nBb3, $0D, nA3, $0C
	dc.b	nG2, $13, nRst, $07, nG3, $12, nG2, $07, nRst, $06, nG2, nG2
	dc.b	$0D, nG3, nG2, $0C, nA2, $13, nRst, $06, nA3, $13, nA2, $07
	dc.b	nRst, $06, nA2, nA2, $0D, nC3, $0C, nCs3, $0D, nD3, $19, nD4
	dc.b	$13, nD3, $06, nRst, $07, nD3, $06, $0D, nD4, $06, nD3, nC4
	dc.b	nD4, $07, nA2, $0C, nRst, $0D, nA2, nA3, $0C, nA2, $0D, $0C
	dc.b	nC3, $0D, nCs3, nD3, $0C, $06, nRst, $07, nD4, $13, nD3, $06
	dc.b	nRst, nD3, $07, $06, nRst, nD4, nD3, $07, nC4, $06, nD4, nC3
	dc.b	$0D, $06, nRst, $07, nC4, $12, nC3, $07, nRst, $06, nC3, nC3
	dc.b	$0D, nC4, nC3, $0C, nBb2, $13, nRst, $06, nBb3, $13, nBb2, $07
	dc.b	nRst, $06, nBb2, nBb2, $0D, nBb3, $06, nBb2, nF3, $07, nBb3, $06
	dc.b	nBb2, $13, $06, nBb3, $13, nBb2, $06, nRst, $07, nBb2, $06, $0D
	dc.b	nBb3, $0C, nA3, $0D, nG2, $13, nRst, $06, nG3, $13, nG2, $06
	dc.b	nRst, nG2, $07, $0C, nG3, $0D, nG2, nA2, $12, nRst, $07, nA3
	dc.b	$13, nA2, $06, nRst, nA2, $07, $0C, nC3, $0D, nCs3, $0C, nD3
	dc.b	$1A, nD4, $12, nD3, $07, nRst, $06, nD3, nD3, $0D, nD4, nD3
	dc.b	$0C, $13, $06, nE3, $13, $07, nF3, $12, $07, nFs3, $0C, $0D
	dc.b	nBb2, $13, $06, nBb3, $13, nBb2, $0D, $06, $0D, nBb3, $0C, nBb2
	dc.b	$0D, nA2, $13, $06, nA3, $13, nA2, $0C, $07, $0C, nA3, $1A
	dc.b	nAb2, $12, $07, nAb3, $13, nAb2, $0C, $07, $0C, nAb3, $19, nG2
	dc.b	$13, $07, nG3, $12, nG2, $0D, $06, $0D, nD3, nCs3, $0C, nC3
	dc.b	$13, $06, nC4, $13, nC3, $0D, $06, $0D, nBb3, $0C, nEb3, $0D
	dc.b	nF3, $13, $06, nF4, $13, nF3, $0D, $06, $0D, nF4, $19, nD3
	dc.b	$13, $06, nD4, $13, nD3, $0C, $07, $0C, nF3, $0D, nFs3, nG3
	dc.b	$12, nG2, $07, $13, $06, $0D, $0C, nAb2, $0D, nA2, $0C, nBb2
	dc.b	$13, $07, nBb3, $12, nBb2, $0D, $06, $0D, nBb3, nBb2, $0C, nEb3
	dc.b	$13, $06, nBb3, $13, nEb3, $0D, $06, $0D, nBb3, $19, nAb2, $13
	dc.b	$06, nAb3, $13, nAb2, $0D, $06, $0D, nAb3, $19, nCs3, $13, $06
	dc.b	nCs4, $13, nCs3, $0C, $07, $0C, nAb2, $0D, nCs3, nC3, $12, $07
	dc.b	nC4, $13, nC3, $0C, $07, $0C, nC4, $06, nG3, $07, nBb3, $0C
	dc.b	nF3, $13, $07, nF4, $12, nF3, $0D, $06, $0D, nF4, nF3, $0C
	dc.b	nE3, $13, $06, nE4, $13, nE3, $0D, $06, $0D, nG3, $0C, nE3
	dc.b	$0D, nEb3, $13, $06, $13, $0D, $06, $0D, nBb2, $0C, nEb3, $0D
	dc.b	nD3, $13, $06, nD4, $13, nD3, $0C, $07, $0C, nD4, $07, nD3
	dc.b	$06, nC4, nD4, $07, nD3, $0C, $06, $07, nD4, $0C, nC4, $07
	dc.b	nD4, $06, nRst, $0D, nF4, $06, nG4, nC4, $0D, nD3, $06, nD3
	dc.b	nD4, $07, nA3, $06, nC4, nD4, $07, nC4, $0C, nG3, $06, nA3
	dc.b	$07, nRst, $0C, nG3, $07, nAb3, $06, nG3, nF3, $07, nD3, $06
	dc.b	nC3, nD3, $0D, $06, nD3, nF3, $0D, $06, $07, nG3, $0C, nF3
	dc.b	$06, nG3, $07, nA3, $06, nA3, nG3, $07, nA3, $06
	smpsPan             panCenter, $00
	smpsJump            ColdMan_Jump05

; FM2 Data
ColdMan_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $08
	smpsPan             panCenter, $00
	dc.b	nA3, $12, nAb4, $03, nA4, $01, nBb4, $02, nB4, $01, nC5, $06
	smpsAlterVol        $10
	dc.b	nAb4, $02, nA4, $01, nBb4, $02, nB4, $01, nC5, $07, nRst, $06
	smpsAlterVol        $F0
	dc.b	nC5, $0D, $06
	smpsAlterVol        $10
	dc.b	nC5, nC5, nRst, $07
	smpsAlterVol        $F0
	dc.b	nC5, $65, nBb4, $02, nA4, $01, nG4, $02, nFs4, $01, nF4, $02
	dc.b	nEb4, $01, nD4, $02, nCs4, $01

ColdMan_Jump04:
	smpsSetvoice        $02
	smpsAlterVol        $01
	dc.b	nD5, $19, nE5, $0D, nF5, nRst, $4B, nE5, $19, nF5, $1A, nG5
	dc.b	$0C, nF5, $19, nE5, $0D, nD5, $19, nRst, $7E, nD5, $0D, nE5
	dc.b	$0C, nF5, $1A, nG5, $0C, nD5, $0D, nRst, $32, nE5, $19, nF5
	dc.b	$0D, nE5, $19, nC5, nA4, $59
	smpsSetvoice        $01
	smpsAlterVol        $FF
	dc.b	nA3, $12, nAb4, $03, nA4, $01, nBb4, $02, nB4, $01, nC5, $06
	smpsAlterVol        $10
	dc.b	nAb4, $02, nA4, $01, nBb4, $02, nB4, $01, nC5, $07, nRst, $06
	smpsAlterVol        $F0
	dc.b	nC5, $3F, nBb4, $02, nA4, $01, nG4, $02, nFs4, $01, nF4, $02
	dc.b	nEb4, $01, nD4, $02, nCs4
	smpsSetvoice        $02
	smpsAlterVol        $01
	dc.b	nD5, $19, nE5, $0C, nF5, $0D, nRst, $4C, nE5, $19, nF5, nG5
	dc.b	$0D, nF5, $19, nE5, $0C, nD5, $1A, nRst, $7E, nD5, $0C, nE5
	dc.b	$0D, nF5, $19, nG5, $0D, nD5, $0C, nRst, $33, nE5, $19, nF5
	dc.b	$0C, nE5, $1A, nC5, $19, nE5, nD5, $0D, $4B, nRst, $3F
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nD4, $0D, nE4, $0C, smpsNoAttack, nF4, $0E, smpsNoAttack, nFs4, $01, smpsNoAttack, nG4
	dc.b	smpsNoAttack, nAb4, smpsNoAttack, nA4, $22, smpsNoAttack, nF4, $0D, smpsNoAttack, nFs4, $01, smpsNoAttack
	dc.b	nG4, smpsNoAttack, nAb4, $02, smpsNoAttack, nA4, $0E, nBb4, $13, nC5, $0D, nAb4
	dc.b	$01, smpsNoAttack, nA4, smpsNoAttack, nBb4, smpsNoAttack, nB4, smpsNoAttack, nC5, $3B, nF4, $26
	dc.b	nEb4, $01, smpsNoAttack, nE4, smpsNoAttack, nF4, smpsNoAttack, nFs4, smpsNoAttack, nG4, $21, smpsNoAttack
	dc.b	nEb4, $0E, smpsNoAttack, nE4, $01, smpsNoAttack, nF4, smpsNoAttack, nFs4, smpsNoAttack, nG4, $0F
	dc.b	nAb4, $13, nBb4, $0C, nFs4, $01, smpsNoAttack, nG4, smpsNoAttack, nAb4, smpsNoAttack, nA4
	dc.b	$02, smpsNoAttack, nBb4, $21, nEb4, $19, nAb4, $26, nEb4, $01, smpsNoAttack, nE4
	dc.b	smpsNoAttack, nF4, smpsNoAttack, nFs4, smpsNoAttack, nG4, $5B, smpsNoAttack, nD4, $06, smpsNoAttack, nG4
	dc.b	$26, nF4, $3F, nEb4, $01, smpsNoAttack, nE4, smpsNoAttack, nF4, smpsNoAttack, nFs4, smpsNoAttack
	dc.b	nG4, $22, nFs4, $01, smpsNoAttack, nG4, smpsNoAttack, nAb4, smpsNoAttack, nA4, smpsNoAttack, nBb4
	dc.b	$21, nAb4, $1A, nG4, $4B, $06, nE4, $07, nG4, $04, nA4, nBb4
	dc.b	nC5, $2C, $07, smpsNoAttack, nA4, $13, nBb4, nC5, $0C, nAb4, $01, smpsNoAttack
	dc.b	nA4, smpsNoAttack, nBb4, smpsNoAttack, nB4, smpsNoAttack, nC5, $3B, nAb4, $01, smpsNoAttack, nA4
	dc.b	smpsNoAttack, nBb4, smpsNoAttack, nB4, smpsNoAttack, nC5, $09, nBb4, $01, smpsNoAttack, nB4, smpsNoAttack
	dc.b	nC5, smpsNoAttack, nCs5, smpsNoAttack, nD5, $08, nCs4, $01, smpsNoAttack, nD4, smpsNoAttack, nEb4
	dc.b	smpsNoAttack, nE4, $02, smpsNoAttack, nF4, $08, nBb4, $2C, $06, smpsNoAttack, nG4, $13
	dc.b	nAb4, nBb4, $0D, nFs4, $01, smpsNoAttack, nG4, smpsNoAttack, nAb4, smpsNoAttack, nA4, smpsNoAttack
	dc.b	nBb4, $22, nEb4, $19, nAb4, $26, nEb4, $01, smpsNoAttack, nE4, smpsNoAttack, nF4
	dc.b	smpsNoAttack, nFs4, smpsNoAttack, nG4, $5A, smpsNoAttack, nD4, $06, smpsNoAttack, nG4, $26, nEb4
	dc.b	$19, nF4, $26, nG4, $19, nA4, $1A, nB4, $19, nC5, nCs5, $65
	dc.b	smpsNoAttack, nD5, $7F, smpsNoAttack, $4A, nRst, $7F, $4B
	smpsSetvoice        $01
	smpsAlterVol        $FD
	smpsPan             panCenter, $00
	smpsJump            ColdMan_Jump04

; FM3 Data
ColdMan_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $08
	smpsPan             panCenter, $00
	dc.b	nRst, $19, nG4, $06, nRst
	smpsAlterVol        $10
	dc.b	nG4, $07, nRst, $06
	smpsAlterVol        $F0
	dc.b	nG4, $0D, $06
	smpsAlterVol        $10
	dc.b	nG4, nG4, nRst, $07
	smpsAlterVol        $F0
	dc.b	nG4, $65, nRst, $0C

ColdMan_Jump03:
	smpsSetvoice        $03
	smpsAlterVol        $0D
	dc.b	nA4, $65, nG4, $3F, nC5, $26, nA4, $7F, smpsNoAttack, $25, nC5, nF4
	dc.b	$3F, nBb4, $26, nG4, $65, nE4
	smpsSetvoice        $01
	smpsAlterVol        $F3
	dc.b	nG4, $06, nRst
	smpsAlterVol        $10
	dc.b	nG4, $07, nRst, $06
	smpsAlterVol        $F0
	dc.b	nG4, $3F, nRst, $0D
	smpsSetvoice        $03
	smpsAlterVol        $0D
	dc.b	nA4, $64, nG4, $3F, nC5, $26, nA4, $7F, smpsNoAttack, $25, nC5, $26
	dc.b	nF4, $3F, nBb4, $26, nG4, $64, nA4, $65, nFs4, nF4, nG4, nBb4
	dc.b	$64, nG4, $65, nG4, nBb3, $26, nC4, $3F, nA4, $65, nEb4, $25
	dc.b	nD4, $3F, nA5, $33, nF5, $32, nG5, $3F, nEb5, $26, nG5, $65
	dc.b	nF5, nEb5, $64, nBb3, $26, nC4, $3F, nD5, $65, nCs5, nD4, $7F
	dc.b	smpsNoAttack, $4A, nRst, $65, nD4, $0D, nRst, $0C, nF4, $0D, nRst, nG4
	dc.b	$0C, nRst, $0D, nG4, $0C, nRst, $0D
	smpsSetvoice        $01
	smpsAlterVol        $F3
	smpsPan             panCenter, $00
	smpsJump            ColdMan_Jump03

; FM4 Data
ColdMan_FM4:
	smpsSetvoice        $01
	smpsAlterVol        $08
	smpsPan             panLeft, $00
	dc.b	nRst, $19, nE4, $06, nRst
	smpsAlterVol        $0C
	dc.b	nE4, $07, nRst, $06
	smpsAlterVol        $F4
	dc.b	nE4, $0D, $06
	smpsAlterVol        $0C
	dc.b	nE4, nE4, nRst, $07
	smpsAlterVol        $F4
	dc.b	nE4, $65, nRst, $0C

ColdMan_Jump02:
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nF4, $65, nE4, $3F, nG4, $26, nF4, $7F, smpsNoAttack, $25, nA4, nD4
	dc.b	$3F, nF4, $26, nE4, $65, nC4
	smpsSetvoice        $01
	smpsAlterVol        $F7
	dc.b	nE4, $06, nRst
	smpsAlterVol        $0C
	dc.b	nE4, $07, nRst, $06
	smpsAlterVol        $F4
	dc.b	nE4, $3F, nRst, $0D
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nF4, $64, nE4, $3F, nG4, $26, nF4, $7F, smpsNoAttack, $25, nA4, $26
	dc.b	nD4, $3F, nF4, $26, nE4, $64, $65, nD4, nD4, nE4, nEb4, $64
	dc.b	nF4, $65, nEb4, nEb4, nF4, nB4, $64, nF4, $65, nCs4, nEb4, nB3
	dc.b	nEb4, $64, nG4, $65, nG4, nF4, nRst, $7F, $7F, $30, nA3, $0D
	dc.b	nRst, $0C, nD4, $0D, nRst, nD4, $0C, nRst, $0D, nCs4, $0C, nRst
	dc.b	$0D
	smpsSetvoice        $01
	smpsAlterVol        $F7
	smpsPan             panLeft, $00
	smpsJump            ColdMan_Jump02

; FM5 Data
ColdMan_FM5:
	smpsSetvoice        $01
	smpsAlterVol        $14
	smpsPan             panRight, $00
	dc.b	nRst, $0C, nA3, $0D
	smpsAlterVol        $F4
	dc.b	nCs4, $06, nRst
	smpsAlterVol        $0C
	dc.b	nCs4, $07, nRst, $06
	smpsAlterVol        $F4
	dc.b	nCs4, $0D, $06
	smpsAlterVol        $0C
	dc.b	nCs4, nCs4, nRst, $07
	smpsAlterVol        $F4
	dc.b	nCs4, $65, nRst, $0C

ColdMan_Jump01:
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nD4, $65, nC4, $3F, $26, nD4, $65, nBb3, $3F, $25, $3F, nD4
	dc.b	$26, nC4, $65, nA3, $58
	smpsSetvoice        $01
	smpsAlterVol        $03
	dc.b	$0D
	smpsAlterVol        $F4
	dc.b	nCs4, $06, nRst
	smpsAlterVol        $0C
	dc.b	nCs4, $07, nRst, $06
	smpsAlterVol        $F4
	dc.b	nCs4, $3F, nRst, $0D
	smpsSetvoice        $03
	smpsAlterVol        $09
	dc.b	nD4, $64, nC4, $3F, $26, nD4, $65, nBb3, $3F, $26, $3F, nD4
	dc.b	$26, nC4, $64, $65, nA3, nA3, nCs4, nC4, $64, nB3, $65, nBb3
	dc.b	nC5, nC4, nG4, $64, nC4, $65, nBb3, nBb3, nG4, nBb3, $64, nC5
	dc.b	$65, nB3, nCs4, nRst, $7F, $7F, $7F, $16
	smpsSetvoice        $01
	smpsAlterVol        $F7
	smpsPan             panRight, $00
	smpsJump            ColdMan_Jump01

; PSG1 Data
ColdMan_PSG1:
	dc.b	nRst, $7F, $57

ColdMan_Jump08:
	dc.b	nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nD2

ColdMan_Loop17A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop17A
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nE2

ColdMan_Loop17B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop17B
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nF2

ColdMan_Loop17C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop17C
	dc.b	nF2, nRst, $4C
	smpsPSGAlterVol     $FD
	dc.b	nE2

ColdMan_Loop17D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop17D
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nF2

ColdMan_Loop17E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop17E
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nG2

ColdMan_Loop17F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop17F
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nF2

ColdMan_Loop180:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop180
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nE2

ColdMan_Loop181:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop181
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nD2

ColdMan_Loop182:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop182
	dc.b	$04, nRst, $7E
	smpsPSGAlterVol     $F9
	dc.b	nD2

ColdMan_Loop183:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop183
	dc.b	nD2
	smpsPSGAlterVol     $FD

ColdMan_Loop184:
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop184
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nF2

ColdMan_Loop185:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop185
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nG2

ColdMan_Loop186:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop186
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nD2

ColdMan_Loop187:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop187
	dc.b	nD2, nRst, $33
	smpsPSGAlterVol     $FD
	dc.b	nE2

ColdMan_Loop188:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop188
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nF2

ColdMan_Loop189:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop189
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2

ColdMan_Loop18A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop18A
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nC2

ColdMan_Loop18B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop18B
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nA1

ColdMan_Loop18C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop18C
	dc.b	$50, nRst, $71
	smpsPSGAlterVol     $F9
	dc.b	nD2

ColdMan_Loop18D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop18D
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nE2

ColdMan_Loop18E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop18E
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nF2

ColdMan_Loop18F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop18F
	dc.b	$01, nRst, $4B
	smpsPSGAlterVol     $FC
	dc.b	nE2

ColdMan_Loop190:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop190
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nF2

ColdMan_Loop191:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop191
	dc.b	$05
	smpsPSGAlterVol     $F9
	dc.b	nG2

ColdMan_Loop192:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop192
	dc.b	nG2
	smpsPSGAlterVol     $FD

ColdMan_Loop193:
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop193
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nE2

ColdMan_Loop194:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop194
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nD2

ColdMan_Loop195:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop195
	dc.b	$04, nRst, $7E
	smpsPSGAlterVol     $F9
	dc.b	nD2

ColdMan_Loop196:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop196
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2

ColdMan_Loop197:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop197
	dc.b	nE2
	smpsPSGAlterVol     $FD

ColdMan_Loop198:
	dc.b	nF2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop198
	dc.b	$05
	smpsPSGAlterVol     $F9
	dc.b	nG2

ColdMan_Loop199:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop199
	dc.b	nG2
	smpsPSGAlterVol     $FD

ColdMan_Loop19A:
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop19A
	dc.b	$01, nRst, $32
	smpsPSGAlterVol     $FC
	dc.b	nE2

ColdMan_Loop19B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop19B
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nF2

ColdMan_Loop19C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop19C
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2

ColdMan_Loop19D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop19D
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nC2

ColdMan_Loop19E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop19E
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nE2

ColdMan_Loop19F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop19F
	dc.b	$05
	smpsPSGAlterVol     $F9
	dc.b	nD2

ColdMan_Loop1A0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop1A0
	dc.b	nD2
	smpsPSGAlterVol     $FD

ColdMan_Loop1A1:
	dc.b	nD2
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop1A1
	dc.b	$37, nRst, $3F
	smpsPSGAlterVol     $F9
	dc.b	nD1, $0C, nE1, $0D, nF1, $0E, nFs1, $01, nG1, nAb1, nA1, $21
	dc.b	nF1, $0E, nFs1, $01, nG1, nAb1, nA1, $0F, nBb1, $13, nC2, $0C
	dc.b	nAb1, $01, nA1, nBb1, nB1, $02, nC2, $3A, nF1, $26, nEb1, $01
	dc.b	nE1, nF1, nFs1, nG1, $22, nEb1, $0E, nE1, $01, nF1, nFs1, nG1
	dc.b	$0E, nAb1, $13, nBb1, $0D, nFs1, $01, nG1, nAb1, nA1, nBb1, $22
	dc.b	nEb1, $19, nAb1, $26, nEb1, $01, nE1, nF1, nFs1, nG1, $5A, nD1
	dc.b	$07, nG1, $25, nF1, $3F, nEb1, $01, nE1, nF1, nFs1, $02, nG1
	dc.b	$21, nFs1, $01, nG1, nAb1, nA1, nBb1, $22, nAb1, $19, nG1, $52
	dc.b	nE1, $06, nG1, $05, nA1, $04, nBb1, nC2, $32, nA1, $13, nBb1
	dc.b	nC2, $0D, nAb1, $01, nA1, nBb1, nB1, nC2, $3B, nAb1, $01, nA1
	dc.b	nBb1, nB1, nC2, $08, nBb1, $01, nB1, nC2, nCs2, $02, nD2, $08
	dc.b	nCs1, $01, nD1, nEb1, nE1, nF1, $09, nBb1, $32, nG1, $13, nAb1
	dc.b	nBb1, $0C, nFs1, $01, nG1, nAb1, nA1, $02, nBb1, $21, nEb1, $19
	dc.b	nAb1, $26, nEb1, $01, nE1, nF1, nFs1, nG1, $5B, nD1, $06, nG1
	dc.b	$26, nEb1, $19, nF1, $26, nG1, $19, nA1, nB1, nC2, $1A, nCs2
	dc.b	$64, nD2, $7F, $4B, nRst, $7F, $3E
	smpsPSGAlterVol     $FB
	smpsJump            ColdMan_Jump08

; PSG2 Data
ColdMan_PSG2:
	smpsPSGAlterVol     $05
	dc.b	nA0, $7F, $4A

ColdMan_Jump07:
	dc.b	nA2, $65, nG2, nA2, nF2, $3F, nA2, $7F, $0B, nG2, $65, nF2
	dc.b	nE2, nA2, $64, nG2, $65, nA2, nF2, $3F, nA2, $7F, $0C, nG2
	dc.b	$7F, $4A, nFs2, $65, nC3, $7F, $4B, nBb2, $7F, $24, nAb2, $26
	dc.b	nG2, $65, nEb2, nF2, $4B, nAb2, $1A, nG2, $25, nBb2, $26, nG2
	dc.b	$19, nA2, $65, nG2, $7F, $4B, nF2, $3F, nBb2, $26, nG2, $64
	dc.b	nEb2, $26, nF2, $3F, nG2, $65, nA2, $58, nB2, $04, nC3, $05
	dc.b	nCs3, $04, nD3, $7F, $4A, nRst, $65
	smpsPSGAlterVol     $FD
	dc.b	nD3, $06, nA2, $07, nC2, $06, nD2, nF2, $07, nD2, $06, nE2
	dc.b	nF2, $07, nG2, $06, nF2, nG2, nAb2, $07, nA2, $06, nG2, nA2
	dc.b	$07, nCs3, $06
	smpsPSGAlterVol     $FE
	smpsJump            ColdMan_Jump07

; PSG3 Data
ColdMan_PSG3:
	smpsPSGform         $E7
	dc.b	nMaxPSG

ColdMan_Loop00:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop00
	dc.b	$04
	smpsPSGAlterVol     $F9
	dc.b	nAb5

ColdMan_Loop01:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop01
	dc.b	$04

ColdMan_Loop02:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $06, ColdMan_Loop02
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $13
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop03:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop03
	dc.b	$06

ColdMan_Loop04:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $06, ColdMan_Loop04
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $F9

ColdMan_Loop05:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop05
	dc.b	$04
	smpsPSGAlterVol     $F9

ColdMan_Loop06:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_Loop06
	dc.b	$04, nRst, $19

ColdMan_Jump06:
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

ColdMan_Loop07:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop07
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_Loop08:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop08
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop09:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop09
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop0A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop0A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop0B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop0B
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop0C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop0C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop0D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop0D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop0E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop0E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop0F:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop0F
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop10:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop10
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop11:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop11
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop12:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop12
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop13:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop13
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop14:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop14
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop15:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop15
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop16:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop16
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop17:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop17
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop18:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop18
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop19:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop19
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop1A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop1A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop1B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop1B
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop1C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop1C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop1D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop1D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop1E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop1E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop1F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop1F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop20:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop20
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop21:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop21
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop22:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop22
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop23:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop23
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop24:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop24
	dc.b	nMaxPSG, nRst, $0B
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop25:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop25
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop26:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop26
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop27:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop27
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop28:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop28
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop29:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop29
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop2A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop2A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop2B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop2B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop2C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop2C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop2D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop2D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop2E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop2E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop2F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop2F
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop30:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop30
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop31:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop31
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop32:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop32
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop33:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop33
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop34:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop34
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop35:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop35
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop36:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop36
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop37:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop37
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop38:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop38
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop39:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop39
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop3A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop3A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop3B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop3B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop3C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop3C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop3D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop3D
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop3E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop3E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop3F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop3F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop40:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop40
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop41:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop41
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop42:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop42
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop43:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop43
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop44:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop44
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop45:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop45
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop46:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop46
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop47:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop47
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop48:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop48
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop49:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop49
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop4A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop4A
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop4B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop4B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop4C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop4C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop4D:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop4D
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop4E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop4E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FD

ColdMan_Loop4F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop4F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop50:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop50
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop51:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop51
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_Loop52:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop52
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop53:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop53
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop54:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop54
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop55:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop55
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop56:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop56
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop57:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, ColdMan_Loop57
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FA

ColdMan_Loop58:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop58
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop59:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop59
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop5A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop5A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FD

ColdMan_Loop5B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop5B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop5C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop5C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop5D:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop5D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop5E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop5E
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop5F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop5F
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop60:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop60
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop61:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop61
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop62:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop62
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop63:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop63
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop64:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop64
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop65:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop65
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop66:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop66
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop67:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop67
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop68:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop68
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop69:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop69
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop6A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop6A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop6B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop6B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop6C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop6C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop6D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, ColdMan_Loop6D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FA

ColdMan_Loop6E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop6E
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop6F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop6F
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop70:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop70
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop71:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop71
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop72:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop72
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop73:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop73
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop74:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop74
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop75:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop75
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop76:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop76
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop77:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop77
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop78:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop78
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop79:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop79
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop7A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop7A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop7B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop7B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop7C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop7C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop7D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop7D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop7E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop7E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop7F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop7F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop80:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop80
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop81:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop81
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop82:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop82
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop83:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop83
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop84:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop84
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop85:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop85
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop86:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop86
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop87:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop87
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop88:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop88
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop89:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop89
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop8A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop8A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop8B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop8B
	dc.b	nMaxPSG, nRst, $0B
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop8C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop8C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop8D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop8D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop8E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop8E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop8F:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop8F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop90:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop90
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop91:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop91
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop92:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop92
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop93:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop93
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop94:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop94
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop95:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop95
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop96:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, ColdMan_Loop96
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FA

ColdMan_Loop97:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop97
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop98:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop98
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop99:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop99
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop9A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop9A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop9B:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop9B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop9C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop9C
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop9D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop9D
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop9E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop9E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop9F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop9F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopA0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_LoopA0
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_LoopA1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_LoopA1
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_LoopA2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopA2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopA3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopA3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopA4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_LoopA4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_LoopA5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopA5
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopA6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopA6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopA7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopA7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopA8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopA8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopA9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopA9
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopAA:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_LoopAA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_LoopAB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_LoopAB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_LoopAC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopAC
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopAD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_LoopAD
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_LoopAE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopAE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopAF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopAF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopB0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_LoopB0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_LoopB1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopB1
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopB2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopB2
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopB3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopB3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopB4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopB4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopB5:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_LoopB5
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_LoopB6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopB6
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopB7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopB7
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopB8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopB8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopB9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_LoopB9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_LoopBA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopBA
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopBB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopBB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopBC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopBC
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopBD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopBD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopBE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopBE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopBF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, ColdMan_LoopBF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FA

ColdMan_LoopC0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_LoopC0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_LoopC1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopC1
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopC2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopC2
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopC3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopC3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopC4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopC4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopC5:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_LoopC5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_LoopC6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopC6
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopC7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopC7
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopC8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopC8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopC9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopC9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopCA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_LoopCA
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_LoopCB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopCB
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopCC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopCC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopCD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopCD
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopCE:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_LoopCE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_LoopCF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopCF
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopD0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopD0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopD1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopD1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopD2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopD2
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopD3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopD3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopD4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_LoopD4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_LoopD5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopD5
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopD6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_LoopD6
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_LoopD7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopD7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopD8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopD8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopD9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_LoopD9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_LoopDA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopDA
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopDB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopDB
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopDC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopDC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopDD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopDD
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopDE:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_LoopDE
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_LoopDF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopDF
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopE0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopE0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopE1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopE1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopE2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_LoopE2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_LoopE3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopE3
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopE4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopE4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopE5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopE5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopE6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopE6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopE7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopE7
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopE8:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_LoopE8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_LoopE9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_LoopE9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_LoopEA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopEA
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopEB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_LoopEB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FD

ColdMan_LoopEC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopEC
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopED:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopED
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopEE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_LoopEE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_LoopEF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_LoopEF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FD

ColdMan_LoopF0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopF0
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopF1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopF1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopF2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopF2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopF3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, ColdMan_LoopF3
	dc.b	$05
	smpsPSGAlterVol     $F9

ColdMan_LoopF4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopF4
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopF5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopF5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopF6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopF6
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopF7:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_LoopF7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_LoopF8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopF8
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopF9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopF9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopFA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopFA
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopFB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopFB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopFC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopFC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_LoopFD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_LoopFD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_LoopFE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_LoopFE
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_LoopFF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_LoopFF
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_Loop100:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop100
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop101:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop101
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop102:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop102
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop103:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop103
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop104:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop104
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop105:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop105
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop106:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop106
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop107:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop107
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop108:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop108
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop109:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop109
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop10A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop10A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop10B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop10B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop10C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop10C
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop10D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop10D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop10E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop10E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop10F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop10F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop110:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop110
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop111:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop111
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop112:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop112
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop113:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop113
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop114:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop114
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop115:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop115
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop116:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop116
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop117:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop117
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop118:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop118
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop119:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop119
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop11A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop11A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop11B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop11B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop11C:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop11C
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop11D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop11D
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop11E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop11E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop11F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop11F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop120:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop120
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop121:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop121
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop122:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop122
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop123:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop123
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop124:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop124
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop125:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop125
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop126:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop126
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop127:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop127
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop128:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop128
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FD

ColdMan_Loop129:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop129
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop12A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop12A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop12B:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop12B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop12C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop12C
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop12D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop12D
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop12E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop12E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop12F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop12F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop130:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop130
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop131:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop131
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop132:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop132
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop133:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop133
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop134:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop134
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop135:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop135
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop136:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop136
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop137:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop137
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop138:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop138
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop139:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop139
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop13A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop13A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop13B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, ColdMan_Loop13B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FA

ColdMan_Loop13C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop13C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop13D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop13D
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_Loop13E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop13E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop13F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop13F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop140:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop140
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop141:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop141
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop142:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop142
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FD

ColdMan_Loop143:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop143
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop144:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop144
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop145:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop145
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop146:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop146
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_Loop147:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop147
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop148:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop148
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop149:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop149
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop14A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop14A
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop14B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop14B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop14C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop14C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop14D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop14D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop14E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop14E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop14F:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop14F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop150:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop150
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop151:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop151
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop152:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop152
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FD

ColdMan_Loop153:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop153
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop154:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop154
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop155:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop155
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F4

ColdMan_Loop156:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop156
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop157:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop157
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop158:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop158
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop159:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop159
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop15A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop15A
	dc.b	nMaxPSG, nRst, $0B
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop15B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop15B
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop15C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop15C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop15D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop15D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop15E:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop15E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop15F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop15F
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop160:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop160
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop161:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop161
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop162:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop162
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop163:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop163
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop164:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, ColdMan_Loop164
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FB

ColdMan_Loop165:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, ColdMan_Loop165
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FA

ColdMan_Loop166:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop166
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop167:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop167
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop168:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop168
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop169:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop169
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop16A:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0B, ColdMan_Loop16A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5

ColdMan_Loop16B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop16B
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop16C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop16C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop16D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop16D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop16E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop16E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop16F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0E, ColdMan_Loop16F
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F2
	dc.b	nMaxPSG

ColdMan_Loop170:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop170
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_Loop171:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop171
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop172:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop172
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop173:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, ColdMan_Loop173
	dc.b	$01
	smpsPSGAlterVol     $FC

ColdMan_Loop174:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop174
	dc.b	nMaxPSG, nRst, $08
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

ColdMan_Loop175:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop175
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop176:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop176
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

ColdMan_Loop177:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, ColdMan_Loop177
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

ColdMan_Loop178:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, ColdMan_Loop178
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FD

ColdMan_Loop179:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $0C, ColdMan_Loop179
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE
	smpsJump            ColdMan_Jump06

; DAC Data
ColdMan_DAC:
	dc.b	dKick, $19, dKick, dKick, $06, dSnare, $07, dKick, $19, dSnare, $06, dSnare
	dc.b	dKick, $1A, $06, dKick, dSnare, dSnare, $07, dKick, $06, dClap, dClap, $07
	dc.b	dKick, $06, dClap, dClap, $07, $0C

ColdMan_Jump00:
	dc.b	dKick, $13, $06, dSnare, $1A, dKick, $12, $07, dSnare, $06, $13, dKick
	dc.b	$06, $13, dSnare, $0D, dKick, $0C, $1A, dSnare, $0C, $0D, dKick, $0C
	dc.b	$0D, dSnare, $19, dKick, $13, $06, dSnare, $07, $13, dKick, $06, $13
	dc.b	dSnare, $0C, dKick, $0D, $19, dSnare, $06, $07, $0C, dKick, $13, $07
	dc.b	dSnare, $19, dKick, $13, $06, dSnare, dSnare, $13, dKick, $06, $13, dSnare
	dc.b	$0D, dKick, dKick, $19, dSnare, $0C, $0D, dKick, dKick, $0C, dSnare, $19
	dc.b	dKick, $13, $07, dSnare, $06, $13, dKick, $06, $13, dSnare, $0D, dKick
	dc.b	$0C, $19, dSnare, $07, $06, $0D, dKick, $12, $07, dSnare, $19, dKick
	dc.b	$13, $06, dSnare, dSnare, $13, dKick, $07, $13, dSnare, $0C, dKick, $0D
	dc.b	$19, dSnare, $0D, $0C, dKick, $0D, $0C, dSnare, $1A, dKick, $12, $07
	dc.b	dSnare, $06, $13, dKick, $06, $13, dSnare, $0D, dKick, $0C, $1A, dSnare
	dc.b	$06, dSnare, dSnare, $0D, dKick, $13, $06, dSnare, $19, dKick, $13, $06
	dc.b	dSnare, $07, $13, dKick, $06, $13, dSnare, $0C, dKick, $0D, $19, dSnare
	dc.b	$0D, $0C, dKick, $0D, dKick, dSnare, $19, dKick, $13, $06, dSnare, dSnare
	dc.b	$13, dKick, $06, $13, dSnare, $0D, dKick, dKick, $06, dSnare, $13, $06
	dc.b	dSnare, dSnare, $07, $06, dKick, $13, $06, dSnare, $19, dKick, $13, $07
	dc.b	dSnare, $06, $13, dKick, $06, $13, dSnare, $0D, dKick, $0C, $19, dSnare
	dc.b	$0D, dSnare, dKick, $0C, $0D, dSnare, $19, dKick, $13, $06, dSnare, dSnare
	dc.b	$13, dKick, $07, $13, dSnare, $0C, dKick, $0D, $19, dSnare, $06, $07
	dc.b	$0C, dKick, $13, $06, dSnare, $1A, dKick, $12, $07, dSnare, $06, $13
	dc.b	dKick, $06, $13, dSnare, $0D, dKick, $0C, $1A, dSnare, $0C, $0D, dKick
	dc.b	$0C, $0D, dSnare, $19, dKick, $13, $06, dSnare, $07, $13, dKick, $06
	dc.b	$13, dSnare, $0C, dKick, $0D, $19, dSnare, $06, $07, $0C, dKick, $13
	dc.b	$07, dSnare, $19, dKick, $13, $06, dSnare, dSnare, $13, dKick, $06, $13
	dc.b	dSnare, $0D, dKick, dKick, $19, dSnare, $0C, $0D, dKick, dKick, $0C, dSnare
	dc.b	$19, dKick, $13, $07, dSnare, $06, $13, dKick, $06, $13, dSnare, $0D
	dc.b	dKick, $0C, $19, dSnare, $07, $06, $0D, dKick, $12, $07, dSnare, $19
	dc.b	dKick, $13, $06, dSnare, dSnare, $13, dKick, $07, $13, dSnare, $0C, dKick
	dc.b	$0D, $19, dSnare, $0D, $0C, dKick, $0D, $0C, dSnare, $1A, dKick, $12
	dc.b	$07, dSnare, $06, $13, dKick, $06, $13, dSnare, $0D, dKick, $0C, $1A
	dc.b	dSnare, $06, dSnare, dSnare, $0D, dKick, $13, $06, dSnare, $19, dKick, $13
	dc.b	$06, dSnare, $07, $13, dKick, $06, $13, dSnare, $0C, dKick, $0D, $19
	dc.b	dSnare, $0D, $0C, dKick, $0D, dKick, dSnare, $19, dKick, $13, $06, dSnare
	dc.b	dSnare, $13, $06, dKick, $13, dSnare, $0D, dKick, dKick, $06, dSnare, $13
	dc.b	$06, dSnare, dSnare, $07, dKick, $06
	smpsJump            ColdMan_Jump00

ColdMan_Voices:
;	Voice $00
;	$28
;	$39, $35, $30, $31, 	$1F, $1F, $1F, $1F, 	$0C, $0A, $07, $0A
;	$07, $07, $07, $09, 	$20, $10, $10, $F8, 	$17, $32, $14, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $07, $0A, $0C
	smpsVcDecayRate2    $09, $07, $07, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $14, $32, $17

;	Voice $01
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $07
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $1F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $02
;	$34
;	$33, $41, $7E, $74, 	$5B, $9F, $5F, $1F, 	$04, $05, $07, $08
;	$00, $00, $00, $00, 	$F2, $F3, $E3, $F4, 	$23, $00, $29, $07
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $03
	smpsVcCoarseFreq    $04, $0E, $01, $03
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $07, $05, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0E, $0F, $0F
	smpsVcReleaseRate   $04, $03, $03, $02
	smpsVcTotalLevel    $07, $29, $00, $23

;	Voice $03
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

;	Voice $04
;	$3B
;	$3E, $42, $41, $33, 	$DE, $14, $1E, $14, 	$14, $0F, $0F, $00
;	$01, $00, $00, $00, 	$36, $25, $26, $29, 	$14, $13, $0A, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $03, $01, $02, $0E
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $14, $1E, $14, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0F, $0F, $14
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $09, $06, $05, $06
	smpsVcTotalLevel    $00, $0A, $13, $14

