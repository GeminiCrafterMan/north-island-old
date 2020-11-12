Cutman_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Cutman_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       Cutman_DAC,	$00, $F2
	smpsHeaderFM        Cutman_FM1,	$00, $00
	smpsHeaderFM        Cutman_FM2,	$00, $00
	smpsHeaderFM        Cutman_FM3,	$00, $00
	smpsHeaderFM        Cutman_FM4,	$00, $00
	smpsHeaderFM        Cutman_FM5,	$00, $00
	smpsHeaderFM        Cutman_FM6,	$00, $00
	smpsHeaderPSG       Cutman_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Cutman_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Cutman_PSG3,	$00, $00, $00, $00

; DAC Data
Cutman_DAC:
; FM5 Data
Cutman_FM5:
	smpsStop

; FM1 Data
Cutman_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $12
	smpsPan             panCenter, $00
	smpsAlterNote       $02
	dc.b	nE4, $06, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst, smpsNoAttack

Cutman_Loop3A:
	dc.b	nE4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $02
	smpsLoop            $00, $02, Cutman_Loop3A
	dc.b	nE4, $05, nRst, $01, nE4, $06, nRst, $07, nE4, $06, nE4, nRst
	dc.b	$01, nE4, $05, nRst, $01

Cutman_Loop3B:
	dc.b	nE4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $02
	smpsLoop            $00, $04, Cutman_Loop3B
	dc.b	nE4, $05, $06, nRst, $01, nE4, $06, nRst, $01, nE4, $05, $07
	dc.b	nRst, $01, nE4, $05, $06, nRst, $01, nE4, $06, nRst, $01
	smpsAlterNote       $00
	dc.b	nFs4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nAb4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst

Cutman_Jump04:
	dc.b	nA3, $07

Cutman_Loop3C:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop3C
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, nRst, $1A
	smpsAlterNote       $00
	dc.b	nB3, $06, nRst, $01, nC4, $05, nRst, $08, nD4, $05, nRst, $07
	dc.b	nC4, $06, nRst, $07, nB3, $06, nRst, nC4, $07, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02

Cutman_Loop3D:
	dc.b	smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsLoop            $00, $09, Cutman_Loop3D
	dc.b	smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA3, $07

Cutman_Loop3E:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop3E
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, nRst, $19
	smpsAlterNote       $00
	dc.b	nB3, $07, nRst, $01, nC4, $05, nRst, $08, nD4, $05, nRst, $06
	dc.b	nC4, $07, nRst, nB3, $06, nRst, nD4, nRst, $01
	smpsAlterNote       $02
	dc.b	nE4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03

Cutman_Loop3F:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsLoop            $00, $09, Cutman_Loop3F
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nF4, $07

Cutman_Loop40:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop40
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, nRst, $19
	smpsAlterNote       $00
	dc.b	nF4, $07, nRst, $01, nG4, $05, nRst, $07, nF4, $06, nRst
	smpsAlterNote       $02
	dc.b	nE4, $07, nRst
	smpsAlterNote       $00
	dc.b	nD4, $05, nRst, $01
	smpsAlterNote       $02
	dc.b	nE4, $07

Cutman_Loop41:
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop41
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, nRst, $1A
	smpsAlterNote       $02
	dc.b	nE4, $06, nRst, $01
	smpsAlterNote       $00
	dc.b	nF4, $05, nRst, $08
	smpsAlterNote       $02
	dc.b	nE4, $05, nRst, $07
	smpsAlterNote       $00
	dc.b	nD4, $06, nRst, $07, nC4, $06, nRst, $01, nEb4, $07

Cutman_Loop42:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, Cutman_Loop42
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nB3, $07

Cutman_Loop43:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$08
	smpsLoop            $00, $02, Cutman_Loop43
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nCs4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nEb4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $02
	dc.b	nE4, $07

Cutman_Loop44:
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $0B, Cutman_Loop44
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA3, $07

Cutman_Loop45:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop45
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst, $1A
	smpsAlterNote       $00
	dc.b	nB3, $06, nRst, $01, nC4, $06, nRst, $07, nD4, $05, nRst, $07
	dc.b	nC4, $06, nRst, $08, nB3, $05, nRst, $06, nC4, $07, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03

Cutman_Loop46:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsLoop            $00, $09, Cutman_Loop46
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA3, $07

Cutman_Loop47:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop47
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, nRst, $1A
	smpsAlterNote       $00
	dc.b	nB3, $06, nRst, $01, nC4, $05, nRst, $08, nD4, $05, nRst, $07
	dc.b	nC4, $06, nRst, $07, nB3, $06, nRst, nD4, $07, nRst, $01
	smpsAlterNote       $02
	dc.b	nE4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02

Cutman_Loop48:
	dc.b	smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsLoop            $00, $09, Cutman_Loop48
	dc.b	smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nF4, $07

Cutman_Loop49:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop49
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, nRst, $19
	smpsAlterNote       $00
	dc.b	nF4, $07, nRst, $01, nG4, $05, nRst, $08, nF4, $05, nRst, $06
	smpsAlterNote       $02
	dc.b	nE4, $07, nRst
	smpsAlterNote       $00
	dc.b	nD4, $06, nRst, $01
	smpsAlterNote       $02
	dc.b	nE4, $07

Cutman_Loop4A:
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop4A
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst, $1A
	smpsAlterNote       $02
	dc.b	nE4, $06, nRst, $01
	smpsAlterNote       $00
	dc.b	nF4, $06, nRst, $07
	smpsAlterNote       $02
	dc.b	nE4, $05, nRst, $07
	smpsAlterNote       $00
	dc.b	nD4, $06, nRst, $08, nC4, $05, nRst, $01, nB3, $07

Cutman_Loop4B:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, Cutman_Loop4B
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA3, $07

Cutman_Loop4C:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop4C
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb3, $08, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nFs3, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nAb3, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nA3, $07

Cutman_Loop4D:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, Cutman_Loop4D
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterVol        $0A
	dc.b	smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$03, nRst, $01, nB2, $02, nC3, $03
	smpsAlterVol        $FB
	dc.b	nD3, $04
	smpsAlterNote       $02
	dc.b	nE3, $03, nRst, $01
	smpsAlterNote       $00
	dc.b	nF3, $02, nG3, $03
	smpsAlterVol        $FB
	dc.b	nRst, $01, nA3, $02, nB3, $04, nC4, $03, nD4, nRst, $01
	smpsAlterNote       $02
	dc.b	nE4, $02
	smpsAlterNote       $00
	dc.b	nF4, $03, nRst, $01, nG4, $03, nA4, nRst, $01, nA4, $07

Cutman_Loop4E:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $07, Cutman_Loop4E
	dc.b	nB4, $08

Cutman_Loop4F:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop4F
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG4, $07

Cutman_Loop50:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $0B, Cutman_Loop50
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nF4, $07

Cutman_Loop51:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $07, Cutman_Loop51
	dc.b	nG4, $08

Cutman_Loop52:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop52
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nF4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $02
	dc.b	nE4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nF4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nFs4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nG4, $07

Cutman_Loop53:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $07, Cutman_Loop53
	dc.b	nRst, nA4, $07

Cutman_Loop54:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $07, Cutman_Loop54
	dc.b	nB4, $08

Cutman_Loop55:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop55
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG4, $07

Cutman_Loop56:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop56
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nD5, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nC5, $07

Cutman_Loop57:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, Cutman_Loop57
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nA4, $06, $08, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$08, nRst, $01, smpsNoAttack, nA4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$09, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$08, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nB4, $07

Cutman_Loop58:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA4, $07
	smpsLoop            $00, $02, Cutman_Loop58

Cutman_Loop59:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, Cutman_Loop59
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $08

Cutman_Loop5A:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $05, Cutman_Loop5A
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            Cutman_Jump04

; FM2 Data
Cutman_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	smpsAlterNote       $02
	dc.b	nE2, $0B, $0D
	smpsAlterNote       $00
	dc.b	nB2, $06, $07, $06, nB2
	smpsAlterNote       $02
	dc.b	nE2, $07, $06, $07, $06, nE3, $0D, nE2, nE2, nE2
	smpsAlterNote       $00
	dc.b	nB2, $05, $07, nB2, nB2, $05
	smpsAlterNote       $02
	dc.b	nE2, $08, $05, $07, nE2, nE3, $0D, nE2, $0C

Cutman_Jump03:
	smpsAlterNote       $00
	dc.b	nA2, $0D, $0C, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $05, $0D, nRst, $01, nE3, $06
	smpsAlterNote       $00
	dc.b	nA2, $07, $05, $08, $05, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $0C, nRst, $01
	smpsAlterNote       $00
	dc.b	nA2, $0D, nA2, nA2, $0C
	smpsAlterNote       $02
	dc.b	nE3, $06, $0E, $05
	smpsAlterNote       $00
	dc.b	nA2, $07, $06, $07, nA2
	smpsAlterNote       $02
	dc.b	nE3, $0C
	smpsAlterNote       $00
	dc.b	nA2, $0D, nA2, nA2, $0C, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $05, $0D, nRst, $01, nE3, $05
	smpsAlterNote       $00
	dc.b	nA2, $08, $05, $08, $05, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $0C, nRst, $01
	smpsAlterNote       $00
	dc.b	nA2, $0D, $0C, $0D
	smpsAlterNote       $02
	dc.b	nE3, $06, $0D, $06
	smpsAlterNote       $00
	dc.b	nA2, $07, $06, $07, $06
	smpsAlterNote       $02
	dc.b	nE3, $0D
	smpsAlterNote       $00
	dc.b	nA2, nD2, nD2, $05, $07, nRst, $01, nA2, $05, $0D, nRst, $01
	dc.b	nA2, $05, nD2, $08, $05, $07, $06, nRst, $01, nA2, $0C, nRst
	dc.b	$01, nD2, $0C, nA2, $0D, $06, nA2, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $05, $0D, nRst, $01, nE3, $06
	smpsAlterNote       $00
	dc.b	nA2, $07, $05, $08, $05, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $0C, nRst, $01
	smpsAlterNote       $00
	dc.b	nA2, $0D, nB2, nB2, $05, $07, nFs3, $06, $0D, nRst, $01, nFs3
	dc.b	$05, nB2, $06, nRst, $01, nB2, $06, nB2, nRst, $01, nB2, $07
	dc.b	nFs3, $0C, nB2, $0D
	smpsAlterNote       $02
	dc.b	nE2, nE2, $05, $08
	smpsAlterNote       $00
	dc.b	nB2, $05, $0E, $05
	smpsAlterNote       $02
	dc.b	nE2, $08, $05, $08, $06, nE3, $0D, nE2
	smpsAlterNote       $00
	dc.b	nA2, $0C, nA2, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $06, $0C, nRst, $01, nE3, $06
	smpsAlterNote       $00
	dc.b	nA2, $07, $06, $07, $05, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $0C, nRst, $01
	smpsAlterNote       $00
	dc.b	nA2, $0D, nA2, nA2
	smpsAlterNote       $02
	dc.b	nE3, $05, $0E, $05
	smpsAlterNote       $00
	dc.b	nA2, $08, $05, $07, nA2
	smpsAlterNote       $02
	dc.b	nE3, $0D
	smpsAlterNote       $00
	dc.b	nA2, $0C, $0D, $0C, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $05, $0D, nRst, $01, nE3, $06
	smpsAlterNote       $00
	dc.b	nA2, $07, $05, $08, $05, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $0C, nRst, $01
	smpsAlterNote       $00
	dc.b	nA2, $0D, nA2, nA2, $0C
	smpsAlterNote       $02
	dc.b	nE3, $06, $0E, $05
	smpsAlterNote       $00
	dc.b	nA2, $07, $06, $07, nA2
	smpsAlterNote       $02
	dc.b	nE3, $0C
	smpsAlterNote       $00
	dc.b	nA2, $0D, nD2, nD2, $05, $07, nRst, $01, nA2, $05, $0D, nRst
	dc.b	$01, nA2, $05, nD2, $08, $05, $08, $05, nRst, $01, nA2, $0C
	dc.b	nRst, $01, nD2, $0D, nA2, $0C, $06, nA2, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $06, $0C, nRst, $01, nE3, $06
	smpsAlterNote       $00
	dc.b	nA2, $07, $06, $07, $05, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $0C, nRst, $01
	smpsAlterNote       $00
	dc.b	nA2, $0D, nB2, nB2, $05, $08, nFs3, $05, $0D, nRst, $01
	smpsAlterNote       $02
	dc.b	nE3, $05, nE2, $08, $05, $06, nRst, $01, nE2, $07, nE3, $0D
	dc.b	nE2, $0C
	smpsAlterNote       $00
	dc.b	nA2, $0D, $06, $07
	smpsAlterNote       $02
	dc.b	nE3, $05, $0E, $06
	smpsAlterNote       $00
	dc.b	nA2, $07, $05, $08, $06
	smpsAlterNote       $02
	dc.b	nE3, $0D
	smpsAlterNote       $00
	dc.b	nA2, nF2, nF2, $05, $07, nF3, $06, $0E, $05, nG2, $0D, $06
	dc.b	nRst, $01, nG2, $07, nG3, $0C, $0D, nC2, nC2, $05, $08, nC3
	dc.b	$05, $0E, $05, nC2, $0D, $08, $06, nC3, $0D, nC3, nD2, $0C
	dc.b	$06, $07, nD3, $06, $0D, $06, nG2, $0D, $06, nRst, $01, nG2
	dc.b	$06, nG3, $0D, nG3, nC2, nC2, $05, $08, nC3, $05, $0D, nRst
	dc.b	$01, nC3, $05, nC2, $0D, $07, nC2, nC3, $0D, $0C, nF2, $0D
	dc.b	$06, $07, nF3, $05, $0E, $06, nG2, $07, $05, $07, nRst, $01
	dc.b	nG2, $06, nG3, $0D, nG3
	smpsAlterNote       $02
	dc.b	nE2, nE2, $05, $07, nE3, $06, $0D, nRst, $01, nE3, $05
	smpsAlterNote       $00
	dc.b	nA2, $07, $06, $07, nA2, nA3, $0C, $0D, nD2, $0C, nRst, $01
	dc.b	nD2, $05, $08, nD3, $05, $0D, nRst, $01, nD3, $05, nEb2, $07
	dc.b	nRst, $01, nEb2, $05, $07, nRst, $01, nEb2, $06, nEb3, $0D, nEb3
	smpsAlterNote       $02
	dc.b	nE2, $0C, $06, $07, nE3, $06, $0D, $06, nE2, nRst, $01, nE2
	dc.b	$06, $07, $06, nE3, $0D, nE3
	smpsPan             panCenter, $00
	smpsJump            Cutman_Jump03

; FM3 Data
Cutman_FM3:
	smpsSetvoice        $00
	smpsAlterVol        $12
	smpsPan             panCenter, $00
	dc.b	nAb3, $06, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$09, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$06, nAb3, nRst, $07, nAb3, $06, $07, $06

Cutman_Loop37:
	dc.b	$07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	smpsLoop            $00, $04, Cutman_Loop37
	dc.b	$05, $07, nAb3, nAb3, $05, $08, $05, $07, nAb3, nA3, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nB3, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02

Cutman_Jump02:
	smpsSetvoice        $05
	smpsAlterVol        $FD
	dc.b	nA4, $06, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, $07, nRst, $05, nA4, $08
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, nRst, $07, nA4, $05
	smpsAlterNote       $02
	dc.b	nE4, $08
	smpsAlterNote       $00
	dc.b	nG4, $06, nA4, nA4, $07, nRst, $06, nA4, $07, $05, $08
	smpsAlterNote       $02
	dc.b	nE4, $05
	smpsAlterNote       $00
	dc.b	nG4, $07, nRst, $06, nA4, $07
	smpsAlterNote       $02
	dc.b	nE4
	smpsAlterNote       $00
	dc.b	nG4, $05, nRst, $07, nA4, $06
	smpsAlterNote       $02
	dc.b	nE4, $07
	smpsAlterNote       $00
	dc.b	nG4, nA4, $05, $07, nRst, nA4, $06, nA4, nA4, $07
	smpsAlterNote       $02
	dc.b	nE4, $05
	smpsAlterNote       $00
	dc.b	nG4, $08, nRst, $05, nA4, $08
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, $05, nRst, $08, nA4, $05
	smpsAlterNote       $02
	dc.b	nE4, $08
	smpsAlterNote       $00
	dc.b	nG4, $06, nA4, $05, $08, nRst, $06, nA4, $07, $05, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, $07, nRst, $06, nA4, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, nRst, $07, nA4, $06
	smpsAlterNote       $02
	dc.b	nE4, $07
	smpsAlterNote       $00
	dc.b	nG4, $06, nA4, nA4, $07, nRst, nA4, $06, nD4, $05, $08, nA3
	dc.b	$05, nC4, $08, nRst, $05, nD4, $07, nA3, nC4, $05, nRst, $08
	dc.b	nD4, $05, nA3, $07, nC4, nD4, $05, $08, nRst, $06, nD4, nA4
	dc.b	nA4, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, $07, nRst, $05, nA4, $08
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, nRst, $07, nA4, $05
	smpsAlterNote       $02
	dc.b	nE4, $08
	smpsAlterNote       $00
	dc.b	nG4, $06, nA4, nA4, $07, nRst, $06, nA4, $07, nB3, $05, $08
	dc.b	nFs3, $05, nA3, $07, nRst, $06, nB3, $07, nFs3, nA3, $05, nRst
	dc.b	$07, nB3, $06, nFs3, $07, nA3, nB3, $05, $07, nRst, nB3, $06
	smpsAlterNote       $02
	dc.b	nE4, nE4, $07
	smpsAlterNote       $00
	dc.b	nB3, $05, nD4, $08, nRst, $05
	smpsAlterNote       $02
	dc.b	nE4, $08
	smpsAlterNote       $00
	dc.b	nB3, $06, nD4, $05, nRst, $08
	smpsAlterNote       $02
	dc.b	nE4, $05
	smpsAlterNote       $00
	dc.b	nB3, $08, nD4, $06
	smpsAlterNote       $02
	dc.b	nE4, $05, $08, nRst, $06, nE4, $07
	smpsAlterNote       $00
	dc.b	nA4, $05, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, $07, nRst, $06, nA4, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, nRst, $07, nA4, $06
	smpsAlterNote       $02
	dc.b	nE4, $07
	smpsAlterNote       $00
	dc.b	nG4, $06, nA4, nA4, $07, nRst, nA4, $06, $05, $08
	smpsAlterNote       $02
	dc.b	nE4, $05
	smpsAlterNote       $00
	dc.b	nG4, $08, nRst, $05, nA4, $07
	smpsAlterNote       $02
	dc.b	nE4
	smpsAlterNote       $00
	dc.b	nG4, $05, nRst, $08, nA4, $05
	smpsAlterNote       $02
	dc.b	nE4, $07
	smpsAlterNote       $00
	dc.b	nG4, nA4, $05, $08, nRst, $06, nA4, nA4, nA4, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, $07, nRst, $05, nA4, $08
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, nRst, $07, nA4, $05
	smpsAlterNote       $02
	dc.b	nE4, $08
	smpsAlterNote       $00
	dc.b	nG4, $06, nA4, nA4, $07, nRst, $06, nA4, $07, $05, $08
	smpsAlterNote       $02
	dc.b	nE4, $05
	smpsAlterNote       $00
	dc.b	nG4, $07, nRst, $06, nA4, $07
	smpsAlterNote       $02
	dc.b	nE4
	smpsAlterNote       $00
	dc.b	nG4, $05, nRst, $07, nA4, $06
	smpsAlterNote       $02
	dc.b	nE4, $07
	smpsAlterNote       $00
	dc.b	nG4, nA4, $05, $07, nRst, nA4, $06, nD4, nD4, $07, nA3, $05
	dc.b	nC4, $08, nRst, $05, nD4, $08, nA3, $06, nC4, $05, nRst, $08
	dc.b	nD4, $05, nA3, $08, nC4, $06, nD4, $05, $08, nRst, $06, nD4
	dc.b	$07, nA4, $05, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, $07, nRst, $06, nA4, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, nRst, $07, nA4, $06
	smpsAlterNote       $02
	dc.b	nE4, $07
	smpsAlterNote       $00
	dc.b	nG4, $06, nA4, nA4, $07, nRst, nA4, $06, nB3, $05, $08, nFs3
	dc.b	$05, nA3, $08, nRst, $05, nB3, $07, nFs3, nA3, $05, nRst, $08
	smpsAlterNote       $02
	dc.b	nE4, $05
	smpsAlterNote       $00
	dc.b	nB3, $07, nD4
	smpsAlterNote       $02
	dc.b	nE4, $05, $08, nRst, $06, nE4
	smpsAlterNote       $00
	dc.b	nA4, nA4, $07
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, $07, nRst, $05, nA4, $08
	smpsAlterNote       $02
	dc.b	nE4, $06
	smpsAlterNote       $00
	dc.b	nG4, nRst, $07, nA4, $05
	smpsAlterNote       $02
	dc.b	nE4, $08
	smpsAlterNote       $00
	dc.b	nG4, $06, nA4, nA4, $07, nRst, $06, nA4, $07
	smpsSetvoice        $00
	smpsAlterVol        $03
	dc.b	nF4, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nG4, $08, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nF4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nE4, $07

Cutman_Loop38:
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop38
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nE4, $08, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nC4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nE4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nF4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nG4, $08, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nF4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nE4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nB4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nA4, $07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nD4, $06, $08, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$07, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nEb4, $08, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$08

Cutman_Loop39:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$07
	smpsLoop            $00, $02, Cutman_Loop39
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nE4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$08, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            Cutman_Jump02

; FM4 Data
Cutman_FM4:
	smpsSetvoice        $00
	smpsAlterVol        $17
	smpsPan             panCenter, $00
	smpsAlterNote       $04
	dc.b	nE5, $06, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$09, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$07, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$06, nE5, nRst, $07, nE5, $06, $07, $06

Cutman_Loop2E:
	dc.b	$07, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $04
	smpsLoop            $00, $04, Cutman_Loop2E
	dc.b	$05, $07, nE5, nE5, $05, $08, $05, $07, nE5
	smpsAlterNote       $02
	dc.b	nFs5, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nAb5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02

Cutman_Jump01:
	dc.b	nA4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $19
	smpsAlterNote       $02
	dc.b	nB4, $07, nC5, $05, nRst, $08, nD5, $06, nRst, nC5, $07, nRst
	dc.b	$06, nB4, $07, nRst, $05, nC5, $08
	smpsAlterNote       $04
	dc.b	nE4, $07

Cutman_Loop2F:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop2F
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nA4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $18
	smpsAlterNote       $02
	dc.b	nB4, $08, nC5, $05, nRst, $08, nD5, $06, nRst, $05, nC5, $08
	dc.b	nRst, $06, nB4, $07, nRst, $05, nD5, $07

Cutman_Loop30:
	smpsAlterNote       $04
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsLoop            $00, $02, Cutman_Loop30
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nF5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $18
	smpsAlterNote       $02
	dc.b	nF5, $08, nG5, $05, nRst, $07, nF5, nRst, $05
	smpsAlterNote       $04
	dc.b	nE5, $08, nRst, $06
	smpsAlterNote       $02
	dc.b	nD5
	smpsAlterNote       $04
	dc.b	nE5, $07, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$02, nRst, $19
	smpsAlterNote       $04
	dc.b	nE5, $07
	smpsAlterNote       $02
	dc.b	nF5, $05, nRst, $08
	smpsAlterNote       $04
	dc.b	nE5, $06, nRst
	smpsAlterNote       $02
	dc.b	nD5, $07, nRst, $06, nC5, $07, nEb5, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nB4, $07

Cutman_Loop31:
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$08
	smpsLoop            $00, $02, Cutman_Loop31
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nCs5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, nEb5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nE5, $07

Cutman_Loop32:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop32
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nA4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, nRst, $19
	smpsAlterNote       $02
	dc.b	nB4, $07, nC5, $06, nRst, $07, nD5, $06, nRst, nC5, $07, nRst
	dc.b	nB4, $06, nRst, $05, nC5, $08
	smpsAlterNote       $04
	dc.b	nE4, $07

Cutman_Loop33:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop33
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nA4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $19
	smpsAlterNote       $02
	dc.b	nB4, $07, nC5, $05, nRst, $08, nD5, $06, nRst, nC5, $07, nRst
	dc.b	$06, nB4, $07, nRst, $05, nD5, $08
	smpsAlterNote       $04
	dc.b	nE5, $07

Cutman_Loop34:
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsLoop            $00, $02, Cutman_Loop34
	dc.b	smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nF5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, nRst, $18
	smpsAlterNote       $02
	dc.b	nF5, $08, nG5, $05, nRst, $08, nF5, $06, nRst, $05
	smpsAlterNote       $04
	dc.b	nE5, $08, nRst, $06
	smpsAlterNote       $02
	dc.b	nD5, $07
	smpsAlterNote       $04
	dc.b	nE5, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, nRst, $19
	smpsAlterNote       $04
	dc.b	nE5, $07
	smpsAlterNote       $02
	dc.b	nF5, $06, nRst, $07
	smpsAlterNote       $04
	dc.b	nE5, $06, nRst
	smpsAlterNote       $02
	dc.b	nD5, $07, nRst, nC5, $06, nB4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nA4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nAb4, $08, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nFs4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nAb4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, nA4, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, $01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	nA3, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$04, nB3, $02, nC4, $03
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01, nD4, $03
	smpsAlterNote       $04
	dc.b	nE4, $04
	smpsAlterNote       $02
	dc.b	nF4, $02, nG4, $04
	smpsAlterVol        $FB
	dc.b	nA4, $02, nB4, $04, nC5, $03, nD5, $04
	smpsAlterNote       $04
	dc.b	nE5, $02
	smpsAlterNote       $02
	dc.b	nF5, $04, nG5, $03, nA5, $04, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nB5, $08, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nA5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nG5, $07

Cutman_Loop35:
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop35
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nF5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nG5, $08, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nF5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nE5, $07, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nF5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nFs5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, nG5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, nA5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst, nB5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nA5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nG5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nD6, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nC6, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, nA5, $06, $08, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$10, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$09, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$08, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nB5, $07

Cutman_Loop36:
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nA5, $07
	smpsLoop            $00, $02, Cutman_Loop36
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst
	smpsAlterNote       $02
	dc.b	nAb5, $07, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02
	smpsPan             panCenter, $00
	smpsAlterNote       $02
	smpsJump            Cutman_Jump01

; FM6 Data
Cutman_FM6:
	smpsSetvoice        $03
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop00:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop00

Cutman_Loop01:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop01
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1

Cutman_Loop02:
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop02
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop03:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop03
	dc.b	nRst

Cutman_Jump00:
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop04:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop04
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop05:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop05
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1

Cutman_Loop06:
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop06
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop07:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop07
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop08:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop08

Cutman_Loop09:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop09
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1

Cutman_Loop0A:
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop0A
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop0B:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $03, Cutman_Loop0B
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop0C:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop0C
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop0D:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop0D
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1

Cutman_Loop0E:
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop0E
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop0F:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop0F

Cutman_Loop10:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop10
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop11:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop11
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop12:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop12

Cutman_Loop13:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop13
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop14:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $03, Cutman_Loop14
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop15:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop15
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop16:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop16
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1

Cutman_Loop17:
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop17
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop18:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop18
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop19:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop19

Cutman_Loop1A:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop1A
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1

Cutman_Loop1B:
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop1B
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop1C:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $03, Cutman_Loop1C
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop1D:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop1D
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop1E:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop1E
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1

Cutman_Loop1F:
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop1F
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop20:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop20

Cutman_Loop21:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop21
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop22:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop22
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop23:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop23

Cutman_Loop24:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop24
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1

Cutman_Loop25:
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop25
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop26:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $03, Cutman_Loop26
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop27:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop27
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop28:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop28
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst, nF4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1

Cutman_Loop29:
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop29
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, nRst
	smpsAlterNote       $F0
	dc.b	nB0

Cutman_Loop2A:
	dc.b	smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $01, nRst, $06
	smpsAlterNote       $F0
	dc.b	nB0, $01
	smpsLoop            $00, $02, Cutman_Loop2A
	dc.b	smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop2B:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop2B
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $02, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01, nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE

Cutman_Loop2C:
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop2C

Cutman_Loop2D:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03, nRst, $05
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsLoop            $00, $02, Cutman_Loop2D
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nF4, $0C
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, nRst
	smpsPan             panCenter, $00
	smpsAlterNote       $14
	smpsJump            Cutman_Jump00

; PSG1 Data
Cutman_PSG1:
	smpsPSGAlterVol     $02
	dc.b	nB0

Cutman_Loop1C1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Cutman_Loop1C1
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop1C2:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1C2
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop1C3:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1C3
	smpsPSGAlterVol     $FD
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $07
	smpsPSGAlterVol     $FF
	dc.b	nB0, $04
	smpsPSGAlterVol     $01
	dc.b	$03

Cutman_Loop1C4:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1C4
	smpsPSGAlterVol     $FF
	dc.b	$04

Cutman_Loop1C5:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1C5
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop1C6:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1C6
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop1C7:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1C7
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop1C8:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1C8
	smpsPSGAlterVol     $FD

Cutman_Loop1C9:
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, Cutman_Loop1C9

Cutman_Loop1CA:
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, Cutman_Loop1CA
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nD1, $04

Cutman_Loop1CB:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1CB
	smpsPSGAlterVol     $FD
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$02

Cutman_Jump07:
	dc.b	nRst, $0D
	smpsPSGAlterVol     $FD
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04

Cutman_Loop1CC:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1CC
	smpsPSGAlterVol     $FD
	dc.b	nG1, $04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0F, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$23, nRst, $0C
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04

Cutman_Loop1CD:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1CD
	smpsPSGAlterVol     $FD
	dc.b	nG1, $04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0F, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D

Cutman_Loop1CE:
	smpsPSGAlterVol     $FB
	dc.b	nFs1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1CE
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nAb1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nAb1

Cutman_Loop1CF:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $02, Cutman_Loop1CF
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $FD
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0C
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04

Cutman_Loop1D0:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D0
	smpsPSGAlterVol     $FD
	dc.b	nG1, $04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0F, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04

Cutman_Loop1D1:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D1
	smpsPSGAlterVol     $FD
	dc.b	nG1, $04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0F, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$23, nRst, $0C
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nFs1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22
	smpsPSGAlterVol     $FB
	dc.b	nF1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	nG1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $FB
	dc.b	nC1, $04

Cutman_Loop1D2:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D2
	smpsPSGAlterVol     $FD
	dc.b	nE1, $04

Cutman_Loop1D3:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D3
	smpsPSGAlterVol     $FD
	dc.b	nG1, $04

Cutman_Loop1D4:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D4
	smpsPSGAlterVol     $FD
	dc.b	nC2, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$01, nE2
	smpsPSGAlterVol     $FD
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $FB
	dc.b	nD1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04

Cutman_Loop1D5:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D5
	smpsPSGAlterVol     $FD
	dc.b	nF1, $04

Cutman_Loop1D6:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D6
	smpsPSGAlterVol     $FD
	dc.b	nFs1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nG1, $04

Cutman_Loop1D7:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D7
	smpsPSGAlterVol     $FD
	dc.b	nE2, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04

Cutman_Loop1D8:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D8
	smpsPSGAlterVol     $FD
	dc.b	nFs2, $04

Cutman_Loop1D9:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1D9
	smpsPSGAlterVol     $FD
	dc.b	nG2, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nF1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FB
	dc.b	nG1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $FB
	dc.b	nB1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $FB
	dc.b	nA1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2F
	smpsPSGAlterVol     $FB
	dc.b	nF1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FB
	dc.b	nFs1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$23, nRst, $0C
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04

Cutman_Loop1DA:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1DA
	smpsPSGAlterVol     $FD
	dc.b	nAb1, $04

Cutman_Loop1DB:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1DB
	smpsPSGAlterVol     $FD
	dc.b	nB1, $04

Cutman_Loop1DC:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1DC
	smpsPSGAlterVol     $FD
	dc.b	nE2, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FB
	dc.b	nD2, $03
	smpsPSGAlterVol     $01
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$03, nAb1, $02
	smpsPSGAlterVol     $01
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04, nE1, $02
	smpsPSGAlterVol     $01
	dc.b	nD1, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsJump            Cutman_Jump07

; PSG2 Data
Cutman_PSG2:
	smpsPSGAlterVol     $02
	dc.b	nE0

Cutman_Loop19D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Cutman_Loop19D
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop19E:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop19E
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop19F:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop19F
	smpsPSGAlterVol     $FD
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $07
	smpsPSGAlterVol     $FF
	dc.b	nE0, $04
	smpsPSGAlterVol     $01
	dc.b	$03

Cutman_Loop1A0:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1A0
	smpsPSGAlterVol     $FF
	dc.b	$04

Cutman_Loop1A1:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1A1
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop1A2:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1A2
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop1A3:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1A3
	smpsPSGAlterVol     $FD
	dc.b	$04

Cutman_Loop1A4:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1A4
	smpsPSGAlterVol     $FD

Cutman_Loop1A5:
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, Cutman_Loop1A5

Cutman_Loop1A6:
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, Cutman_Loop1A6
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nFs0, $04

Cutman_Loop1A7:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1A7
	smpsPSGAlterVol     $FD
	dc.b	nAb0, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb0
	smpsPSGAlterVol     $01
	dc.b	$02

Cutman_Jump06:
	dc.b	nRst, $0D
	smpsPSGAlterVol     $FD
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D

Cutman_Loop1A8:
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1A8
	smpsPSGAlterVol     $FB
	dc.b	$04

Cutman_Loop1A9:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1A9
	smpsPSGAlterVol     $FD
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0F, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$23, nRst, $0C
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04

Cutman_Loop1AA:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1AA
	smpsPSGAlterVol     $FD
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0F, nRst, $0D

Cutman_Loop1AB:
	smpsPSGAlterVol     $FB
	dc.b	nF1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1AB
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D

Cutman_Loop1AC:
	smpsPSGAlterVol     $FB
	dc.b	nEb1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1AC
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D

Cutman_Loop1AD:
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1AD
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$04

Cutman_Loop1AE:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1AE
	smpsPSGAlterVol     $FD
	dc.b	nFs1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nAb1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1, nRst, $0C
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D

Cutman_Loop1AF:
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1AF
	smpsPSGAlterVol     $FB
	dc.b	$04

Cutman_Loop1B0:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1B0
	smpsPSGAlterVol     $FD
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0F, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D

Cutman_Loop1B1:
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1B1
	smpsPSGAlterVol     $FB
	dc.b	$04

Cutman_Loop1B2:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1B2
	smpsPSGAlterVol     $FD
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0F, nRst, $0D

Cutman_Loop1B3:
	smpsPSGAlterVol     $FB
	dc.b	nF1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1B3
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$23, nRst, $0C
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D

Cutman_Loop1B4:
	smpsPSGAlterVol     $FB
	dc.b	nEb1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, Cutman_Loop1B4
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22, nRst, $0D
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$22
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FF
	dc.b	nC1, $04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nC1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$15
	smpsPSGAlterVol     $FB
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nC1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	nD1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$15, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nC1, $04

Cutman_Loop1B5:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1B5
	smpsPSGAlterVol     $FD
	dc.b	nE1, $04

Cutman_Loop1B6:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1B6
	smpsPSGAlterVol     $FD
	dc.b	nG1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nC2, $04

Cutman_Loop1B7:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1B7
	smpsPSGAlterVol     $FD
	dc.b	nE2, $04

Cutman_Loop1B8:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1B8
	smpsPSGAlterVol     $FD
	dc.b	nG2, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$09
	smpsPSGAlterVol     $F8
	dc.b	nA0, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA0
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA0
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	nB0, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB0
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$15, nRst, $0D
	smpsPSGAlterVol     $FE
	dc.b	nE1, $04

Cutman_Loop1B9:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1B9
	smpsPSGAlterVol     $FD
	dc.b	nF1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	nFs1, $04

Cutman_Loop1BA:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1BA
	smpsPSGAlterVol     $FD
	dc.b	nG1, $04

Cutman_Loop1BB:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1BB
	smpsPSGAlterVol     $FD
	dc.b	nE2, $04

Cutman_Loop1BC:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1BC
	smpsPSGAlterVol     $FD
	dc.b	nF2, $04

Cutman_Loop1BD:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1BD
	smpsPSGAlterVol     $FD
	dc.b	nFs2, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FA
	dc.b	nC1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nC1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nC1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FB
	dc.b	nD1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$16
	smpsPSGAlterVol     $FB
	dc.b	nG1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$15
	smpsPSGAlterVol     $FB
	dc.b	nE1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$2F
	smpsPSGAlterVol     $FB
	dc.b	nD1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FB
	dc.b	nEb1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$23, nRst, $19
	smpsPSGAlterVol     $FE
	dc.b	nE1, $04

Cutman_Loop1BE:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1BE
	smpsPSGAlterVol     $FD
	dc.b	nAb1, $04

Cutman_Loop1BF:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1BF
	smpsPSGAlterVol     $FD
	dc.b	nB1, $04

Cutman_Loop1C0:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, Cutman_Loop1C0
	smpsPSGAlterVol     $FD
	dc.b	nE2, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $04
	smpsPSGAlterVol     $FD
	dc.b	nD2, $02, nC2, $03, nB1, $04, nA1, $03, nAb1, $04, nF1, $03
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsJump            Cutman_Jump06

; PSG3 Data
Cutman_PSG3:
	smpsPSGAlterVol     $02
	smpsPSGform         $E7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop5B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop5B
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop5C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop5C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop5D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop5D
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop5E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop5E
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop5F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop5F
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop60:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop60
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop61:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop61
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop62:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop62
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop63:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop63
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop64:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop64
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Cutman_Loop65:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop65
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop66:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop66
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop67:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop67
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop68:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop68
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop69:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop69
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop6A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop6A
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop6B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop6B
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop6C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop6C
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop6D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop6D
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop6E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop6E
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop6F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop6F
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop70:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop70
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

Cutman_Loop71:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $04, Cutman_Loop71

Cutman_Jump05:
	smpsPSGAlterVol     $F8

Cutman_Loop72:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop72
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop73:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop73
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop74:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop74
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop75:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop75
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop76:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop76
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop77:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop77
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop78:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop78
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop79:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop79
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop7A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop7A
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop7B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop7B
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop7C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop7C
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop7D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop7D
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop7E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop7E
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop7F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop7F
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop80:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop80
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop81:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop81
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop82:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop82
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop83:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop83
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop84:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop84
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop85:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop85
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop86:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop86
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop87:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop87
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop88:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop88
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop89:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop89
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop8A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop8A
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop8B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop8B
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop8C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop8C
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop8D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop8D
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop8E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop8E
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop8F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop8F
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop90:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop90
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop91:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop91
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop92:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop92
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop93:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop93
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop94:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop94
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop95:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop95
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop96:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop96
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop97:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop97
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop98:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop98
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop99:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop99
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop9A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop9A
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop9B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop9B
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop9C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop9C
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop9D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop9D
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop9E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop9E
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop9F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop9F
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopA0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopA0
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopA1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopA1
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopA2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopA2
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_LoopA3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopA3
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopA4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopA4
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_LoopA5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopA5
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopA6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopA6
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopA7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopA7
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopA8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopA8
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopA9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopA9
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopAA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopAA
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopAB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopAB
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_LoopAC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopAC
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopAD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopAD
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopAE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopAE
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopAF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopAF
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopB0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopB0
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopB1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopB1
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopB2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopB2
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_LoopB3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopB3
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopB4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopB4
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopB5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopB5
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopB6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopB6
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopB7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopB7
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopB8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopB8
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_LoopB9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopB9
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_LoopBA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopBA
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopBB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopBB
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopBC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopBC
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopBD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopBD
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopBE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopBE
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopBF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopBF
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopC0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopC0
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_LoopC1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopC1
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopC2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopC2
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopC3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopC3
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopC4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopC4
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopC5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopC5
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopC6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopC6
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopC7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopC7
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_LoopC8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopC8
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopC9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopC9
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopCA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopCA
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopCB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopCB
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopCC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopCC
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopCD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopCD
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_LoopCE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopCE
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopCF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopCF
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopD0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopD0
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopD1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopD1
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopD2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopD2
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopD3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopD3
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopD4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopD4
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_LoopD5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopD5
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopD6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopD6
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopD7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopD7
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopD8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopD8
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopD9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopD9
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopDA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopDA
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopDB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopDB
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_LoopDC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopDC
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopDD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopDD
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopDE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopDE
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_LoopDF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopDF
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopE0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopE0
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopE1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopE1
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_LoopE2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopE2
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopE3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopE3
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopE4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopE4
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopE5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopE5
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopE6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopE6
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopE7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopE7
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopE8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopE8
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_LoopE9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopE9
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopEA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopEA
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopEB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopEB
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopEC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopEC
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopED:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopED
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopEE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopEE
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopEF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopEF
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_LoopF0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopF0
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopF1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopF1
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopF2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopF2
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopF3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopF3
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopF4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopF4
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_LoopF5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopF5
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopF6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopF6
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopF7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopF7
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopF8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopF8
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopF9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopF9
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopFA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopFA
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_LoopFB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopFB
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_LoopFC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopFC
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopFD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopFD
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_LoopFE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_LoopFE
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_LoopFF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_LoopFF
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop100:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop100
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop101:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop101
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop102:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop102
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop103:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop103
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop104:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop104
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop105:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop105
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop106:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop106
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop107:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop107
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop108:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop108
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop109:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop109
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop10A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop10A
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop10B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop10B
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop10C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop10C
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop10D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop10D
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop10E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop10E
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop10F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop10F
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop110:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop110
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop111:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop111
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop112:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop112
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop113:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop113
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop114:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop114
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop115:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop115
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop116:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop116
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop117:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop117
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop118:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop118
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop119:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop119
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop11A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop11A
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop11B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop11B
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop11C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop11C
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop11D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop11D
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop11E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop11E
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop11F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop11F
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop120:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop120
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop121:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop121
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop122:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop122
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop123:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop123
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop124:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop124
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop125:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop125
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop126:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop126
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop127:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop127
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop128:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop128
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop129:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop129
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop12A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop12A
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop12B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop12B
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop12C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop12C
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop12D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop12D
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop12E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop12E
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop12F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop12F
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop130:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop130
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop131:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop131
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop132:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop132
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop133:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop133
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop134:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop134
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop135:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop135
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop136:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop136
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop137:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop137
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop138:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop138
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop139:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop139
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop13A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop13A
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop13B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop13B
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop13C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop13C
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop13D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop13D
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop13E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop13E
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop13F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop13F
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop140:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop140
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop141:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop141
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop142:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop142
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop143:
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8
	smpsLoop            $00, $02, Cutman_Loop143
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop144:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop144
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop145:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop145
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop146:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop146
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Cutman_Loop147:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop147
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop148:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop148
	dc.b	$02
	smpsPSGAlterVol     $F7
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop149:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop149
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop14A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop14A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop14B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop14B
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

Cutman_Loop14C:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $05, Cutman_Loop14C
	smpsPSGAlterVol     $F6
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop14D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop14D
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop14E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop14E
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop14F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop14F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop150:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop150
	dc.b	$02
	smpsPSGAlterVol     $F7
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop151:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop151
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8
	dc.b	$02
	smpsPSGAlterVol     $04

Cutman_Loop152:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, Cutman_Loop152
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop153:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop153
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop154:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop154
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8
	dc.b	$02
	smpsPSGAlterVol     $04

Cutman_Loop155:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, Cutman_Loop155
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop156:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop156
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Cutman_Loop157:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop157
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop158:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop158
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop159:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop159
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop15A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop15A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F6

Cutman_Loop15B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop15B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop15C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop15C
	dc.b	$02
	smpsPSGAlterVol     $F7
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop15D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop15D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F6

Cutman_Loop15E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop15E
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop15F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop15F
	dc.b	$02
	smpsPSGAlterVol     $F7
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop160:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop160
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop161:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop161
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F6
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop162:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop162
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

Cutman_Loop163:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $04, Cutman_Loop163
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

Cutman_Loop164:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $03, Cutman_Loop164
	smpsPSGAlterVol     $FE

Cutman_Loop165:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop165
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop166:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop166
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop167:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop167
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop168:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop168
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop169:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop169
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop16A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop16A
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop16B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop16B
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop16C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop16C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Cutman_Loop16D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop16D
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop16E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop16E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Cutman_Loop16F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop16F
	dc.b	$02
	smpsPSGAlterVol     $F7
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop170:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop170
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F6
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop171:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop171
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop172:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop172
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Cutman_Loop173:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop173
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F7
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop174:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop174
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F6

Cutman_Loop175:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop175
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop176:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop176
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop177:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop177
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop178:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop178
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F6

Cutman_Loop179:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop179
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop17A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop17A
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop17B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop17B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop17C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop17C
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop17D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop17D
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop17E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop17E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop17F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop17F
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop180:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop180
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Cutman_Loop181:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop181
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE

Cutman_Loop182:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop182
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop183:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop183
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop184:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop184
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Cutman_Loop185:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop185
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop186:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop186
	dc.b	$02
	smpsPSGAlterVol     $F7
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F6
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

Cutman_Loop187:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop187
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop188:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop188
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop189:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop189
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

Cutman_Loop18A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $04, Cutman_Loop18A
	smpsPSGAlterVol     $F8

Cutman_Loop18B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop18B
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop18C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop18C
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8

Cutman_Loop18D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop18D
	dc.b	$02
	smpsPSGAlterVol     $F5
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop18E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop18E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

Cutman_Loop18F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop18F
	dc.b	$02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $F6

Cutman_Loop190:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop190
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F6

Cutman_Loop191:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop191
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop192:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop192
	dc.b	$02
	smpsPSGAlterVol     $F7
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop193:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop193
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F6

Cutman_Loop194:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop194
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop195:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop195
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop196:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop196
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F6

Cutman_Loop197:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop197
	dc.b	$02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

Cutman_Loop198:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $05, Cutman_Loop198
	smpsPSGAlterVol     $F6

Cutman_Loop199:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop199
	dc.b	$02
	smpsPSGAlterVol     $F7
	dc.b	$01
	smpsPSGAlterVol     $01

Cutman_Loop19A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop19A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	$02
	smpsPSGAlterVol     $04
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop19B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, Cutman_Loop19B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

Cutman_Loop19C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, Cutman_Loop19C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE
	smpsJump            Cutman_Jump05

Cutman_Voices:
;	Voice $00
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $1A, $1A, $1A, 	$15, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $15

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

;	Voice $03
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

;	Voice $04
;	$3C
;	$0F, $00, $60, $60, 	$1F, $17, $1F, $1F, 	$00, $0F, $18, $13
;	$00, $11, $00, $10, 	$08, $2C, $B8, $2C, 	$04, $11, $09, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $06, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $17, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $18, $0F, $00
	smpsVcDecayRate2    $10, $00, $11, $00
	smpsVcDecayLevel    $02, $0B, $02, $00
	smpsVcReleaseRate   $0C, $08, $0C, $08
	smpsVcTotalLevel    $00, $09, $11, $04

;	Voice $05
;	$1C
;	$3F, $01, $01, $01, 	$9F, $DB, $1E, $5E, 	$1F, $07, $06, $06
;	$08, $0A, $0B, $00, 	$88, $8A, $F6, $F7, 	$28, $18, $2A, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $01, $00, $03, $02
	smpsVcAttackRate    $1E, $1E, $1B, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $07, $1F
	smpsVcDecayRate2    $00, $0B, $0A, $08
	smpsVcDecayLevel    $0F, $0F, $08, $08
	smpsVcReleaseRate   $07, $06, $0A, $08
	smpsVcTotalLevel    $00, $2A, $18, $28

