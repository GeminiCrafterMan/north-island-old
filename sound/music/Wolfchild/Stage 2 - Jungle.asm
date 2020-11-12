Jungle_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Jungle_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Jungle_DAC,	$00, $F2
	smpsHeaderFM        Jungle_FM1,	$00, $00
	smpsHeaderFM        Jungle_FM2,	$00, $00
	smpsHeaderFM        Jungle_FM3,	$00, $00
	smpsHeaderFM        Jungle_FM4,	$00, $00
	smpsHeaderFM        Jungle_FM5,	$00, $00
	smpsHeaderFM        Jungle_FM6,	$00, $00
	smpsHeaderPSG       Jungle_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Jungle_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Jungle_PSG3,	$00, $00, $00, $00

; DAC Data
Jungle_DAC:
; PSG1 Data
Jungle_PSG1:
; PSG2 Data
Jungle_PSG2:
; PSG3 Data
Jungle_PSG3:
	smpsStop

; FM1 Data
Jungle_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $11
	smpsPan             panCenter, $00
	dc.b	nBb2, $07, nC3, nCs3, nF3, $08

Jungle_Jump05:
	dc.b	smpsNoAttack, nF3, $0E, nBb2, $07, nC3, nCs3, nF3, nAb3, $2C, nBb2, $07
	dc.b	nC3, nCs3, nF3, $16, nBb2, $07, nC3, nCs3, nF3, $08, nAb3, $0E
	dc.b	nG3, nEb3, $0F, nBb2, $07, nC3, nCs3, nF3, $16, nBb2, $07, nC3
	dc.b	nCs3, $08, nF3, $07, nAb3, $2B, nBb2, $07, nC3, nCs3, $08, nF3
	dc.b	$15, nBb2, $07, nC3, $08, nCs3, $07, nF3, nAb3, $0E, nG3, $0F
	dc.b	nEb3, $0E, nBb2, $07, nC3, $08, nCs3, $07, nF3, $15, nBb2, $08
	dc.b	nC3, $07, nCs3, nF3, nAb3, $2B, nBb2, $08, nC3, $07, nCs3, nF3
	dc.b	$16, nBb2, $07, nC3, nCs3, nF3, nAb3, $0F, nG3, $0E, nEb3, $0F
	dc.b	nBb2, $07, nC3, nCs3, nF3, $16, nBb2, $07, nC3, nCs3, nF3, $08
	dc.b	nAb3, $2B, nBb2, $07, nC3, nCs3, nF3, $16, nBb2, $07, nC3, nCs3
	dc.b	$08, nF3, $07, nAb3, $0E, nG3, $0F, nEb3, $0E
	smpsSetvoice        $04
	smpsAlterVol        $F7
	dc.b	smpsNoAttack, $01
	smpsPan             panLeft, $00
	dc.b	nF3, $06, nBb3, $07, nBb2, $08, nF3, $07, nBb3, nBb2, nF3, nBb3
	dc.b	$08, nBb2, $07, nF3, nBb3, nBb2, nF3, $08, nBb2, $07, nBb3, nBb2
	dc.b	nEb3, nBb3, $08, nBb2, $07, nEb3, nBb3, nBb2, nEb3, $08, nBb3, $07
	dc.b	nBb2, nEb3, nBb3, nBb2, $08, nEb3, $07, nBb2, nBb3, nBb2, nCs3, $08
	dc.b	nBb3, $07, nBb2, nCs3, nBb3, nBb2, $08, nCs3, $07, nBb3, nBb2, nCs3
	dc.b	nBb3, $08, nBb2, $07, nCs3, nBb2, nBb3, nBb2, $08, nC3, $07, nBb3
	dc.b	nBb2, nC3, nBb3, $08, nBb2, $07, nC3, nBb3, nBb2, nC3, $08, nBb3
	dc.b	$07, nBb2, nC3, nBb2, nBb3, $08, nBb2, $07, nF3, nBb3, nBb2, nF3
	dc.b	$08, nBb3, $07, nBb2, nF3, nBb3, nBb2, $08, nF3, $07, nBb3, nBb2
	dc.b	nF3, nBb2, $08, nBb3, $07, nBb2, nEb3, nBb3, nBb2, $08, nEb3, $07
	dc.b	nBb3, nBb2, nEb3, nBb3, $08, nBb2, $07, nEb3, nBb3, nBb2, nEb3, $08
	dc.b	nBb2, $07, nBb3, nBb2, nCs3, nBb3, $08, nBb2, $07, nCs3, nBb3, nBb2
	dc.b	nCs3, $08, nBb3, $07, nBb2, nCs3, nBb3, nBb2, $08, nCs3, $07, nBb2
	dc.b	nBb3, nBb2, nC3, $08, nBb3, $07, nBb2, nC3, nBb3, nBb2, $08, nC3
	dc.b	$07, nBb3, nBb2, nC3, nBb3, $08, nBb2, $07, nC3, nBb2, nBb3, nBb2
	dc.b	$08
	smpsSetvoice        $06
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $00
	smpsAlterVol        $07
	smpsPan             panCenter, $00
	dc.b	$06, nC3, $07, nCs3, nF3, $16, nBb2, $07, nC3, nCs3, nF3, $08
	dc.b	nAb3, $2B, nBb2, $07, nC3, nCs3, nF3, $16, nBb2, $07, nC3, nCs3
	dc.b	$08, nF3, $07, nAb3, $0E, nG3, $0F, nEb3, $0E, nBb2, $07, nC3
	dc.b	nCs3, $08, nF3, $15, nBb2, $07, nC3, $08, nCs3, $07, nF3, nAb3
	dc.b	$2B, nBb2, $07, nC3, $08, nCs3, $07, nF3, $15, nBb2, $08, nC3
	dc.b	$07, nCs3, nF3, nAb3, $0F, nG3, $0E, nEb3, nBb2, $08, nC3, $07
	dc.b	nCs3, nF3, $16, nBb2, $07, nC3, nCs3, nF3, nAb3, $2C, nBb2, $07
	dc.b	nC3, nCs3, nF3, $16, nBb2, $07, nC3, nCs3, nF3, $08, nAb3, $0E
	dc.b	nG3, nEb3, $0F, nBb2, $07, nC3, nCs3, nF3, $16, nBb2, $07, nC3
	dc.b	nCs3, $08, nF3, $07, nAb3, $2B, nBb2, $07, nC3, nCs3, $08, nF3
	dc.b	$15, nBb2, $07, nC3, $08, nCs3, $07, nF3, nAb3, $0E, nG3, $0F
	dc.b	nEb3, $1D
	smpsSetvoice        $09
	smpsAlterVol        $FD
	dc.b	smpsNoAttack, $24, nCs3, $07, nEb3, nF3, $0E, nBb2, $5E, nF3, $07, nAb3
	dc.b	nBb3, $08, nCs4, $0E, nBb3, $07, nCs4, nF4, $08, nEb4, $56, nCs4
	dc.b	$0E, nEb4, $1D, nBb3, nAb3, $0E, nBb3, $2C
	smpsModSet          $00, $02, $04, $03
	dc.b	smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $5E
	smpsSetvoice        $00
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01
	smpsModOff
	dc.b	nBb2, $06, nC3, $07, nCs3, nF3, $09
	smpsPan             panCenter, $00
	smpsModOff
	smpsJump            Jungle_Jump05

; FM2 Data
Jungle_FM2:
	smpsSetvoice        $00
	smpsPan             panNone, $00
	dc.b	nRst, $08
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	$14
	smpsSetvoice        $00
	smpsAlterVol        $9A
	dc.b	smpsNoAttack, $01

Jungle_Jump04:
	smpsPan             panLeft, $00
	dc.b	nBb2, $06, nC3, $08, nCs3, $07, nF3, $15, nBb2, $08, nC3, $07
	dc.b	nCs3, nF3, nAb3, $2B, nBb2, $08, nC3, $07, nCs3, nF3, $16, nBb2
	dc.b	$07, nC3, nCs3, nF3, nAb3, $0F, nG3, $0E, nEb3, $0F, nBb2, $07
	dc.b	nC3, nCs3, nF3, $16, nBb2, $07, nC3, nCs3, nF3, $08, nAb3, $2B
	dc.b	nBb2, $07, nC3, nCs3, nF3, $16, nBb2, $07, nC3, nCs3, $08, nF3
	dc.b	$07, nAb3, $0E, nG3, $0F, nEb3, $0E, nBb2, $07, nC3, nCs3, $08
	dc.b	nF3, $15, nBb2, $07, nC3, $08, nCs3, $07, nF3, nAb3, $2B, nBb2
	dc.b	$07, nC3, $08, nCs3, $07, nF3, $15, nBb2, $08, nC3, $07, nCs3
	dc.b	nF3, nAb3, $0F, nG3, $0E, nEb3, nBb2, $08, nC3, $07, nCs3, nF3
	dc.b	$16, nBb2, $07, nC3, nCs3, nF3, nAb3, $2C, nBb2, $07, nC3, nCs3
	dc.b	nF3, $16, nBb2, $07, nC3, nCs3, nF3, $08, nAb3, $0F
	smpsSetvoice        $05
	smpsAlterVol        $06
	smpsPan             panCenter, $00
	dc.b	nF4, $72, nEb4, $73, nCs4, $74, nC4, $73, nF4, nEb4, nCs4, nC4
	dc.b	$75, nF4, $7F, smpsNoAttack, $66

Jungle_Loop04:
	dc.b	nG3, $7F, smpsNoAttack, $67, nF4, $7F, smpsNoAttack, $68
	smpsLoop            $00, $02, Jungle_Loop04
	dc.b	nG3, $7F, smpsNoAttack, $67, nF4, $7F, smpsNoAttack, $67, nG3, $7F, smpsNoAttack, $6F
	smpsSetvoice        $0C
	smpsAlterVol        $60
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	dc.b	nRst, $15
	smpsSetvoice        $00
	smpsAlterVol        $9A
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, nG3, $01
	smpsPan             panCenter, $00
	smpsJump            Jungle_Jump04

; FM3 Data
Jungle_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $0B
	smpsPan             panCenter, $00
	dc.b	nBb2, $08, $15

Jungle_Jump03:
	dc.b	smpsNoAttack, nBb2, $0E, $07, nRst, $01, nBb2, $40, $07, $24, nRst, $01
	dc.b	nBb2, $06, $16, $0E, nRst, $01, nAb3, $0D, nRst, $01, nF3, $0E
	dc.b	nRst, $01, nBb2, $06, $24, nRst, $01, nBb2, $06, nRst, $01, nBb2
	dc.b	$40, $07, $24, nRst, $01, nBb2, $06, nRst, $01, nBb2, $15, nRst
	dc.b	$01, nBb2, $0D, nRst, $01, nAb3, $0E, nF3, $0F, nBb2, $06, $24
	dc.b	nRst, $01, nBb2, $07, nRst, $01, nBb2, $3F, $08, $24, $07, nRst
	dc.b	$01, nBb2, $14, nRst, $01, nBb2, $0E, nRst, $01, nAb3, $0D, nRst
	dc.b	$01, nF3, $0E, nBb2, $07, $24, $07, nRst, $01, nBb2, $40, $07
	dc.b	$24, nRst, $01, nBb2, $06, nRst, $01, nBb2, $15, $0E, nRst, $01
	dc.b	nAb3, $0E, nF3, $0F, nBb2, $06, nBb3, $24, $07, nBb2, $0F, nBb3
	dc.b	$07, nBb2, $0E, nAb3, $0F, nF3, $0E, nRst, $01, nBb2, $06, nBb3
	dc.b	$24, $08, nBb2, $0E, nBb3, $07, nBb2, $0F, nAb3, $0E, nF3, nRst
	dc.b	$01, nBb2, $07, nBb3, $24, $07, nBb2, $0E, nBb3, $07, nBb2, $0F
	dc.b	nAb3, $0E, nF3, $0F, nRst, $01, nBb2, $06, nBb3, $24, $07, nBb2
	dc.b	$0E, nBb3, $08, nBb2, $0E, nAb3, nF3, $10

Jungle_Loop03:
	dc.b	nBb2, $06, nBb3, $24, $07, nBb2, $0F, nBb3, $07, nBb2, $0E, nAb3
	dc.b	$0F, nF3, $0E, nRst, $01
	smpsLoop            $00, $02, Jungle_Loop03
	dc.b	nBb2, $06, nBb3, $24, $08, nBb2, $0E, nBb3, $07, nBb2, $0F, nAb3
	dc.b	$0E, nF3, nRst, $01, nBb2, $07, nBb3, $24, $07, nBb2, $0E, nBb3
	dc.b	$07, nBb2, $0F, nAb3, $0E, nF3, $10, nBb2, $06, nBb3, $24, $07
	dc.b	nBb2, $0E, nBb3, $08, nBb2, $1C, nBb3, $0F, nAb2, $07, nAb3, $24
	dc.b	$07, nAb2, $0F, nAb3, $07, nAb2, $1D, nAb3, $0E, nRst, $01, nEb2
	dc.b	$06, nEb3, $24, $07, nEb2, $0F, nEb3, $07, nEb2, $1D, nEb3, $0E
	dc.b	nEb2, $07, nEb3, $24, $08, nEb2, $0E, nEb3, $07, nEb2, $1D, nEb3
	dc.b	$0F, nBb2, $07, nBb3, $24, $07, nBb2, $0E, nBb3, $07, nBb2, $1D
	dc.b	nBb3, $0F, nAb2, $07, nAb3, $24, $07, nAb2, $0E, nAb3, $08, nAb2
	dc.b	$1C, nAb3, $0F, nRst, $01, nEb2, $06, nEb3, $24, $07, nEb2, $0F
	dc.b	nEb3, $07, nEb2, $1D, nEb3, $0E, nEb2, $07, nEb3, $24, $07, nEb2
	dc.b	$0F, nEb3, $07, nEb2, $1D, nEb3, $0E, nBb2, $07, nBb3, $24, $08
	dc.b	nBb2, $0E, nBb3, $07, nBb2, $1D, nBb3, $0E, nAb2, $08, nAb3, $24
	dc.b	$07, nAb2, $0E, nAb3, $07, nAb2, $1D, nAb3, $0F, nRst, $01, nEb2
	dc.b	$06, nEb3, $24, $07, nEb2, $0E, nEb3, $08, nEb2, $1C, nEb3, $0F
	dc.b	nEb2, $07, nEb3, $24, $07, nEb2, $0F, nEb3, $07, nEb2, $1E, nEb3
	dc.b	$0D, nBb2, $07, nBb3, $24, $07, nBb2, $0F, nBb3, $07, nBb2, $1D
	dc.b	nBb3, $0E, nAb2, $07, nAb3, $24, $08, nAb2, $0E, nAb3, $07, nAb2
	dc.b	$1D, nAb3, $0E, nEb2, $08, nEb3, $24, $07, nEb2, $0E, nEb3, $07
	dc.b	nEb2, $1D, nEb3, $0F, nEb2, $07, nEb3, $24, $07, nEb2, $0E, nEb3
	dc.b	$08, nEb2, $1C, nEb3, $10, nBb2, $07, $16
	smpsPan             panCenter, $00
	smpsJump            Jungle_Jump03

; FM4 Data
Jungle_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $1D

Jungle_Jump02:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $39, smpsNoAttack, $7F, smpsNoAttack
	dc.b	$7F, smpsNoAttack, $7F, smpsNoAttack, $4A
	smpsSetvoice        $05
	smpsAlterVol        $A0
	dc.b	nBb3, $73, nAb3, nFs3, $74, nF3, $73, nBb3, nAb3, nFs3, nF3, $74
	dc.b	nCs4, $7F, smpsNoAttack, $67

Jungle_Loop02:
	dc.b	nBb3, $7F, smpsNoAttack, $67, nCs4, $7F, smpsNoAttack, $68
	smpsLoop            $00, $02, Jungle_Loop02
	dc.b	nBb3, $7F, smpsNoAttack, $67, nCs4, $7F, smpsNoAttack, $66, nRst, $01, nBb3, $7F
	dc.b	smpsNoAttack, $68
	smpsSetvoice        $02
	smpsAlterVol        $60
	dc.b	nRst, $07, smpsNoAttack, nBb3, $16
	smpsPan             panCenter, $00
	smpsJump            Jungle_Jump02

; FM5 Data
Jungle_FM5:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $1D

Jungle_Jump01:
	dc.b	smpsNoAttack, nRst, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $3A, smpsNoAttack, $7F, smpsNoAttack
	dc.b	$7F, smpsNoAttack, $7F, smpsNoAttack, $4F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack
	dc.b	$50, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $65
	smpsSetvoice        $07
	smpsAlterVol        $9A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	dc.b	nBb2, $07, nC3, nRst, $01, nCs3, $06, nRst, $01, nF3, $15, nRst
	dc.b	$01, nBb2, $06, nC3, $07, nCs3, nF3, nAb3, $2C, nBb2, $07, nC3
	dc.b	nRst, $01, nCs3, $06, nRst, $01, nF3, $15, nRst, $01, nBb2, $06
	dc.b	nC3, $07, nCs3, nF3, $08, nRst, $01, nAb3, $0E, nG3, $0D, nEb3
	dc.b	$0F, nBb2, $07, nC3, nRst, $01, nCs3, $06, nRst, $01, nF3, $15
	dc.b	nRst, $01, nBb2, $06, nC3, $07, nCs3, $08, nF3, $07, nAb3, $2B
	dc.b	nBb2, $07, nC3, nRst, $01, nCs3, $07, nRst, $01, nF3, $14, nRst
	dc.b	$01, nBb2, $06, nC3, $08, nCs3, $07, nF3, nRst, $01, nAb3, $15
	smpsSetvoice        $08
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $02
	smpsAlterVol        $66
	smpsPan             panCenter, $00
	dc.b	nRst, $14
	smpsSetvoice        $07
	smpsAlterVol        $9A
	dc.b	smpsNoAttack, nAb3, $01
	smpsSetvoice        $00
	smpsPan             panLeft, $00
	dc.b	nBb2, $06, nC3, $08, nRst, $01, nCs3, $06, nRst, $01, nF3, $14
	dc.b	nRst, $01, nBb2, $07, nC3, nCs3, nF3, nAb3, $2B, nBb2, $08, nC3
	dc.b	$07, nRst, $01, nCs3, $06, nRst, $01, nF3, $15, nRst, $01, nBb2
	dc.b	$06, nC3, $07, nCs3, nF3, nRst, $01, nAb3, $0F, nG3, $0D, nEb3
	dc.b	$0F, nBb2, $07, nC3, nRst, $01, nCs3, $06, nRst, $01, nF3, $15
	dc.b	nRst, $01, nBb2, $06, nC3, $07, nCs3, nF3, $08, nAb3, $2B, nBb2
	dc.b	$07, nC3, nRst, $01, nCs3, $06, nRst, $01, nF3, $15, nRst, $01
	dc.b	nBb2, $06, nC3, $07, nCs3, $08, nF3, $07, nRst, $01, nAb3, $38
	smpsSetvoice        $0A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $0B
	smpsPan             panCenter, $00
	dc.b	nEb3, $0E, $15, nCs3, $08, nEb3, $07, nF3, $0E, nBb2, $5E, nF3
	dc.b	$07, nAb3, nRst, $01, nBb3, $06, nCs4, $0F, nBb3, $07, nCs4, nF4
	dc.b	nEb4, $57, nCs4, $0E, nEb4, $1D, nRst, $01, nBb3, $1C, nAb3, $0E
	dc.b	nBb3, $7F, smpsNoAttack, $7F, smpsNoAttack, $7F, smpsNoAttack, $6E
	smpsSetvoice        $02
	smpsAlterVol        $66
	dc.b	nRst, $07, smpsNoAttack, nBb3, $16
	smpsPan             panCenter, $00
	smpsJump            Jungle_Jump01

; FM6 Data
Jungle_FM6:
	smpsSetvoice        $00
	smpsPan             panNone, $00
	dc.b	nRst, $1D

Jungle_Jump00:
	dc.b	nRst, $2B
	smpsSetvoice        $03
	smpsAlterVol        $13
	smpsPan             panCenter, $00
	dc.b	nF3

Jungle_Loop00:
	dc.b	$7F, smpsNoAttack, $67, nRst, $01, nF3, $7F, smpsNoAttack, $67
	smpsLoop            $00, $02, Jungle_Loop00

Jungle_Loop01:
	dc.b	$7F, smpsNoAttack, $66, nRst, $01, nF3, $7F, smpsNoAttack, $68
	smpsLoop            $00, $02, Jungle_Loop01
	dc.b	$7F, smpsNoAttack, $67, $7F, smpsNoAttack, $67, $7F, smpsNoAttack, $68, $7F, smpsNoAttack, $66
	dc.b	$7F, smpsNoAttack, $68, $7F, smpsNoAttack, $67, $7F, smpsNoAttack, $67, $7F, smpsNoAttack, $3E
	smpsSetvoice        $00
	smpsAlterVol        $ED
	smpsPan             panNone, $00
	smpsJump            Jungle_Jump00

Jungle_Voices:
;	Voice $00
;	$2A
;	$01, $04, $01, $04, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $0E
;	$10, $00, $0F, $1F, 	$00, $00, $00, $30, 	$14, $0A, $1A, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $01, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $00, $00, $00
	smpsVcDecayRate2    $1F, $0F, $00, $10
	smpsVcDecayLevel    $03, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $1A, $0A, $14

;	Voice $01
;	$04
;	$00, $00, $00, $01, 	$1F, $1F, $1F, $1F, 	$00, $0D, $00, $09
;	$15, $1F, $07, $1F, 	$00, $10, $00, $50, 	$0A, $00, $25, $02
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $00, $0D, $00
	smpsVcDecayRate2    $1F, $07, $1F, $15
	smpsVcDecayLevel    $05, $00, $01, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $02, $25, $00, $0A

;	Voice $02
;	$00
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00, 	$7F, $7F, $7F, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $1F, $1F, $1F, $1F
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $7F, $7F, $7F

;	Voice $03
;	$03
;	$0E, $7E, $07, $0F, 	$1E, $1F, $1F, $1F, 	$00, $00, $00, $0C
;	$00, $00, $00, $1F, 	$00, $00, $00, $B0, 	$15, $01, $0A, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $00
	smpsVcCoarseFreq    $0F, $07, $0E, $0E
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $00, $00, $00
	smpsVcDecayRate2    $1F, $00, $00, $00
	smpsVcDecayLevel    $0B, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $0A, $01, $15

;	Voice $04
;	$06
;	$06, $08, $08, $01, 	$1F, $1F, $1F, $1F, 	$00, $0C, $0F, $0C
;	$00, $1F, $1F, $1F, 	$00, $10, $10, $10, 	$1C, $18, $00, $08
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $08, $08, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0F, $0C, $00
	smpsVcDecayRate2    $1F, $1F, $1F, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $08, $00, $18, $1C

;	Voice $05
;	$33
;	$75, $22, $42, $04, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$02, $02, $02, $00, 	$00, $00, $00, $00, 	$19, $19, $1A, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $04, $02, $07
	smpsVcCoarseFreq    $04, $02, $02, $05
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $02, $02, $02
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $1A, $19, $19

;	Voice $06
;	$06
;	$01, $04, $01, $04, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $0E
;	$10, $00, $0F, $1F, 	$00, $00, $00, $30, 	$14, $00, $11, $07
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $01, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $00, $00, $00
	smpsVcDecayRate2    $1F, $0F, $00, $10
	smpsVcDecayLevel    $03, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $07, $11, $00, $14

;	Voice $07
;	$00
;	$01, $04, $01, $04, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $0E
;	$10, $00, $0F, $1F, 	$00, $00, $00, $00, 	$14, $0A, $1A, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $01, $04, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $00, $00, $00
	smpsVcDecayRate2    $1F, $0F, $00, $10
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $1A, $0A, $14

;	Voice $08
;	$2A
;	$00, $00, $00, $04, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $0E
;	$10, $00, $0F, $1F, 	$00, $00, $00, $30, 	$14, $0A, $1A, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $00, $00, $00
	smpsVcDecayRate2    $1F, $0F, $00, $10
	smpsVcDecayLevel    $03, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $1A, $0A, $14

;	Voice $09
;	$22
;	$17, $72, $03, $04, 	$1F, $06, $1F, $1F, 	$00, $00, $00, $00
;	$04, $08, $09, $02, 	$00, $00, $00, $00, 	$28, $14, $19, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $01
	smpsVcCoarseFreq    $04, $03, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $06, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $02, $09, $08, $04
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $19, $14, $28

;	Voice $0A
;	$2A
;	$07, $72, $03, $04, 	$1F, $06, $1F, $1F, 	$00, $00, $00, $0E
;	$10, $00, $0F, $1F, 	$00, $00, $00, $30, 	$1E, $14, $19, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $00
	smpsVcCoarseFreq    $04, $03, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $06, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0E, $00, $00, $00
	smpsVcDecayRate2    $1F, $0F, $00, $10
	smpsVcDecayLevel    $03, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $19, $14, $1E

;	Voice $0B
;	$22
;	$07, $72, $03, $04, 	$1F, $06, $1F, $1F, 	$00, $00, $00, $00
;	$04, $08, $09, $02, 	$00, $00, $00, $00, 	$1E, $14, $19, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $00
	smpsVcCoarseFreq    $04, $03, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $06, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $02, $09, $08, $04
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $19, $14, $1E

;	Voice $0C
;	$33
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$02, $02, $02, $00, 	$00, $00, $00, $00, 	$7F, $7F, $7F, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $02, $02, $02
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $00, $00, $00, $00
	smpsVcTotalLevel    $00, $7F, $7F, $7F

