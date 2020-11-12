MM3Boss_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MM3Boss_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       MM3Boss_DAC,	$00, $F2
	smpsHeaderFM        MM3Boss_FM1,	$00, $00
	smpsHeaderFM        MM3Boss_FM2,	$00, $00
	smpsHeaderFM        MM3Boss_FM3,	$00, $00
	smpsHeaderFM        MM3Boss_FM4,	$00, $00
	smpsHeaderFM        MM3Boss_FM5,	$00, $00
	smpsHeaderFM        MM3Boss_FM6,	$00, $00
	smpsHeaderPSG       MM3Boss_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       MM3Boss_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       MM3Boss_PSG3,	$00, $00, $00, $00

; DAC Data
MM3Boss_DAC:
	smpsStop
; FM1 Data
MM3Boss_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $11
	smpsPan             panCenter, $00
	dc.b	nEb3, $0A

MM3Boss_Loop13:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, MM3Boss_Loop13
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nBb3, $0A

MM3Boss_Loop14:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, MM3Boss_Loop14
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nA3, $0A

MM3Boss_Loop15:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, MM3Boss_Loop15
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nF3, $0A

MM3Boss_Loop16:
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, MM3Boss_Loop16
	dc.b	smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nCs5, $02, nRst, $03

MM3Boss_Jump05:
	dc.b	nCs5, $04, nRst, $07, nD5, $02, nRst, $03, nD5, $05, nRst, $06
	dc.b	nEb5, $03, nRst, nEb5, $04, nRst, $06, nD5, $03, nRst, nD5, $04
	dc.b	nRst, $07, nCs5, $04, nRst, $01, nD5, $04, nRst, $01, nEb5, $05
	dc.b	nRst, $06, nCs5, $03, nRst, nCs5, $04, nRst, $06, nD5, $03, nRst
	dc.b	nD5, $04, nRst, $07, nEb5, $02, nRst, $03, nEb5, $04, nRst, $07
	dc.b	nD5, $02, nRst, $03, nD5, $05, nRst, $06, nCs5, $04, nRst, $01
	dc.b	nD5, $05, nRst, $01, nEb5, $04, nRst, $06
	smpsSetvoice        $05
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $06
	dc.b	nBb4, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nEb4, $09, nA4, $0C, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nBb4, $0A, nA4, $0C, nAb4, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nEb4, $0A, nFs4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $05
	smpsAlterNote       $00
	dc.b	nBb4, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nEb4, $0A, nA4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nBb4, $0A, nA4, $0C, nAb4, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nEb4, $0A, nFs4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $05
	smpsAlterNote       $00
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nAb4, $0A, nCs5, $0C, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb5, $06, nCs5, nB4, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0B, smpsNoAttack, nB4, $05, nBb4, $07, nG4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nAb4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nBb4, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nB4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, nAb4, $0A
	smpsAlterNote       $02
	dc.b	nE5, $0C, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, nRst, $0A
	smpsAlterNote       $02
	dc.b	nE5, $06
	smpsAlterNote       $00
	dc.b	nEb5, nCs5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $0B, smpsNoAttack, nCs5, $05, nEb5, $07
	smpsAlterNote       $02
	dc.b	nE5, $0B, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG5, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nAb5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nBb5, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, nRst, $04
	smpsSetvoice        $00
	smpsAlterNote       $00
	dc.b	nCs5, $03, nRst
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            MM3Boss_Jump05

; FM2 Data
MM3Boss_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $0F
	smpsPan             panCenter, $00
	dc.b	nEb2, $02, nRst
	smpsAlterVol        $05
	dc.b	nEb2, $04, nRst, $01, nEb2, $04, nRst, $02, nEb2, $03, nRst, nEb2
	dc.b	nRst, $02, nEb2, $03, nRst, $02, nEb2, $04, nRst, $01, nEb2, $04
	dc.b	nRst, $03, nEb2, $02, nRst

MM3Boss_Loop0E:
	dc.b	nEb2, $04, nRst, $02, nEb2, $03, nRst, $02
	smpsLoop            $00, $02, MM3Boss_Loop0E
	dc.b	nEb2, $03, nRst, $02, nEb2, $04, nRst, $02, nEb2, $03, nRst
	smpsAlterVol        $FB
	dc.b	nBb2, nRst, $01
	smpsAlterVol        $05
	dc.b	nBb2, $04, nRst, $02, nBb2, $03, nRst, $02, nBb2, $04, nRst, $03
	dc.b	nBb2, $02, nRst, nBb2, $04, nRst, $01, nBb2, $04, nRst, $02, nBb2
	dc.b	$04, nRst, $02, nBb2, $03, nRst, $02, nBb2, $03, nRst, $02, nBb2
	dc.b	$04, nRst, $02, nBb2, $03, nRst, nBb2, nRst, $01, nBb2, $04, nRst
	dc.b	$02, nBb2, $03, nRst, $02, nBb2, $04, nRst, $03
	smpsAlterVol        $FB
	dc.b	nA2, $02, nRst
	smpsAlterVol        $05
	dc.b	nA2, $04, nRst, $01, nA2, $04, nRst, $02, nA2, $03, nRst, nA2
	dc.b	nRst, $02, nA2, $03, nRst, $02, nA2, $04, nRst, $01, nA2, $04
	dc.b	nRst, $03, nA2, $02, nRst

MM3Boss_Loop0F:
	dc.b	nA2, $04, nRst, $02, nA2, $03, nRst, $02
	smpsLoop            $00, $02, MM3Boss_Loop0F
	dc.b	nA2, $03, nRst, $02, nA2, $04, nRst, $02, nA2, $03, nRst
	smpsAlterVol        $FB
	dc.b	nF2, nRst, $02
	smpsAlterVol        $05
	dc.b	nF2, $03, nRst, $02, nF2, $04, nRst, $01, nF2, $04, nRst, $03
	dc.b	nF2, $02, nRst, nF2, $04, nRst, $02, nF2, $03, nRst, $02, nF2
	dc.b	$04, nRst, $02

MM3Boss_Loop10:
	dc.b	nF2, $03, nRst, nF2, $02, nRst, $03
	smpsLoop            $00, $02, MM3Boss_Loop10
	dc.b	nF2, nRst, $02, nF2, $03, nRst, nF2, $02, nRst, $03, nF2, nRst
	smpsAlterVol        $FB
	dc.b	nFs3, $02, nRst, $03

MM3Boss_Jump04:
	dc.b	nFs3, $04, nRst, $07, nG3, $02, nRst, $03, nG3, $05, nRst, $06
	dc.b	nAb3, $03, nRst, nAb3, $04, nRst, $06, nG3, $03, nRst, nG3, $04
	dc.b	nRst, $07, nFs3, $05, nG3, nAb3, nRst, $06, nFs3, $03, nRst, nFs3
	dc.b	$04, nRst, $06, nG3, $03, nRst, nG3, $04, nRst, $07, nAb3, $02
	dc.b	nRst, $03, nAb3, $04, nRst, $07, nG3, $02, nRst, $03, nG3, $05
	dc.b	nRst, $06, nFs3, $05, nG3, $06, nAb3, $04, nRst, $07
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $0B, nEb4, $0A, nF4, nEb4, $0C, nF4, $0B, nFs4, nEb4, $09
	dc.b	nBb3, $0C

MM3Boss_Loop11:
	dc.b	nRst, $0B, nEb4, nF4, $0A, nEb4, $0C, nF4, $0A, nFs4, $0B, nEb4
	dc.b	$0A, nBb3, $0C, nRst, $0B, nEb4, $0A, nF4, nEb4, $0C, nF4, $0B
	dc.b	nFs4, nEb4, $0A, nBb3, $0B
	smpsLoop            $00, $02, MM3Boss_Loop11
	dc.b	nRst, nEb4, nF4, $0A, nEb4, $0C, nF4, $0A, nFs4, $0B, nEb4, $0A
	dc.b	nBb3, $0C, nRst, $0B, nEb4, nF4, $09, nEb4, $0C, nF4, $0B, nFs4
	dc.b	nEb4, $0A, nBb3, $0B, nRst, nEb4, nF4, $0A, nEb4, $0C, nF4, $0B
	dc.b	nFs4, $0A, nEb4, nBb3, $0C, nRst, $0B, nAb4, nBb4, $09, nEb4, $0C
	dc.b	nAb4, $0B, nBb4, nFs4, $0A, nEb4, $0C, nRst, $0A, nAb4, $0B, nBb4
	dc.b	$0A, nEb4, $0C, nAb4, $0B, nBb4, $0A, nFs4

MM3Boss_Loop12:
	dc.b	nEb4, $0C, nRst, $0B, nAb4, nBb4, $0A, nEb4, $0B, nAb4, nBb4, nFs4
	dc.b	$0A, nEb4, $0C, nRst, $0A, nAb4, $0B, nBb4, $0A, nEb4, $0C, nAb4
	dc.b	$0B, nBb4, nFs4, $09
	smpsLoop            $00, $02, MM3Boss_Loop12
	dc.b	nEb4, $0C, nRst, $0B, nAb4, nBb4, $0A, nEb4, $0B, nAb4, nBb4, nFs4
	dc.b	$0A, nEb4, $0C, nRst, $0B, nAb4, $0A, nBb4, nEb4, $0C, nAb4, $0B
	dc.b	nBb4, nFs4, $09, nEb4, $0C
	smpsAlterVol        $FD
	dc.b	nFs3, $03, nRst
	smpsPan             panCenter, $00
	smpsJump            MM3Boss_Jump04

; FM3 Data
MM3Boss_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $0F
	smpsPan             panCenter, $00
	dc.b	nEb3, $02, nRst
	smpsAlterVol        $05
	dc.b	nEb3, $04, nRst, $01, nEb3, $04, nRst, $02, nEb3, $03, nRst, nEb3
	dc.b	nRst, $02, nEb3, $03, nRst, $02, nEb3, $04, nRst, $01, nEb3, $04
	dc.b	nRst, $03, nEb3, $02, nRst

MM3Boss_Loop09:
	dc.b	nEb3, $04, nRst, $02, nEb3, $03, nRst, $02
	smpsLoop            $00, $02, MM3Boss_Loop09
	dc.b	nEb3, $03, nRst, $02, nEb3, $04, nRst, $02, nEb3, $03, nRst
	smpsAlterVol        $FB
	dc.b	nBb3, nRst, $01
	smpsAlterVol        $05
	dc.b	nBb3, $04, nRst, $02, nBb3, $03, nRst, $02, nBb3, $04, nRst, $03
	dc.b	nBb3, $02, nRst, nBb3, $04, nRst, $01, nBb3, $04, nRst, $02, nBb3
	dc.b	$04, nRst, $02, nBb3, $03, nRst, $02, nBb3, $03, nRst, $02, nBb3
	dc.b	$04, nRst, $02, nBb3, $03, nRst, nBb3, nRst, $01, nBb3, $04, nRst
	dc.b	$02, nBb3, $03, nRst, $02, nBb3, $04, nRst, $03
	smpsAlterVol        $FB
	dc.b	nA3, $02, nRst
	smpsAlterVol        $05
	dc.b	nA3, $04, nRst, $01, nA3, $04, nRst, $02, nA3, $03, nRst, nA3
	dc.b	nRst, $02, nA3, $03, nRst, $02, nA3, $04, nRst, $01, nA3, $04
	dc.b	nRst, $03, nA3, $02, nRst

MM3Boss_Loop0A:
	dc.b	nA3, $04, nRst, $02, nA3, $03, nRst, $02
	smpsLoop            $00, $02, MM3Boss_Loop0A
	dc.b	nA3, $03, nRst, $02, nA3, $04, nRst, $02, nA3, $03, nRst
	smpsAlterVol        $FB
	dc.b	nF3, nRst, $02
	smpsAlterVol        $05
	dc.b	nF3, $03, nRst, $02, nF3, $04, nRst, $01, nF3, $04, nRst, $03
	dc.b	nF3, $02, nRst, nF3, $04, nRst, $02, nF3, $03, nRst, $02, nF3
	dc.b	$04, nRst, $02

MM3Boss_Loop0B:
	dc.b	nF3, $03, nRst, nF3, $02, nRst, $03
	smpsLoop            $00, $02, MM3Boss_Loop0B
	dc.b	nF3, nRst, $02, nF3, $03, nRst, nF3, $02, nRst, $03, nF3, nRst
	smpsAlterVol        $FB
	dc.b	nB3, $02, nRst, $03

MM3Boss_Jump03:
	dc.b	nB3, $04, nRst, $07, nC4, $02, nRst, $03, nC4, $05, nRst, $06
	dc.b	nCs4, $03, nRst, nCs4, $04, nRst, $06, nC4, $03, nRst, nC4, $04
	dc.b	nRst, $07, nB3, $05, nC4, nCs4, nRst, $06, nB3, $03, nRst, nB3
	dc.b	$04, nRst, $06, nC4, $03, nRst, nC4, $04, nRst, $07, nCs4, $02
	dc.b	nRst, $03, nCs4, $04, nRst, $07, nC4, $02, nRst, $03, nC4, $05
	dc.b	nRst, $06, nB3, $05, nC4, $06, nCs4, $04, nRst, $07
	smpsAlterVol        $05
	dc.b	smpsNoAttack, $0B, nBb3, $0A, nCs4, nBb3, $0C, nCs4, $0B, nEb3, nBb3, $09
	dc.b	nFs3, $0C

MM3Boss_Loop0C:
	dc.b	nRst, $0B, nBb3, nCs4, $0A, nBb3, $0C, nCs4, $0A, nEb3, $0B, nBb3
	dc.b	$0A, nFs3, $0C, nRst, $0B, nBb3, $0A, nCs4, nBb3, $0C, nCs4, $0B
	dc.b	nEb3, nBb3, $0A, nFs3, $0B
	smpsLoop            $00, $02, MM3Boss_Loop0C
	dc.b	nRst, nBb3, nCs4, $0A, nBb3, $0C, nCs4, $0A, nEb3, $0B, nBb3, $0A
	dc.b	nFs3, $0C, nRst, $0B, nBb3, nCs4, $09, nBb3, $0C, nCs4, $0B, nEb3
	dc.b	nBb3, $0A, nFs3, $0B, nRst, nBb3, nCs4, $0A, nBb3, $0C, nCs4, $0B
	dc.b	nEb3, $0A, nBb3, nFs3, $0C, nRst, $0B, nEb4, nF4, $09, nBb3, $0C
	dc.b	nEb4, $0B, nF4, nCs4, $0A, nBb3, $0C, nRst, $0A, nEb4, $0B, nF4
	dc.b	$0A, nBb3, $0C, nEb4, $0B, nF4, $0A, nCs4

MM3Boss_Loop0D:
	dc.b	nBb3, $0C, nRst, $0B, nEb4, nF4, $0A, nBb3, $0B, nEb4, nF4, nCs4
	dc.b	$0A, nBb3, $0C, nRst, $0A, nEb4, $0B, nF4, $0A, nBb3, $0C, nEb4
	dc.b	$0B, nF4, nCs4, $09
	smpsLoop            $00, $02, MM3Boss_Loop0D
	dc.b	nBb3, $0C, nRst, $0B, nEb4, nF4, $0A, nBb3, $0B, nEb4, nF4, nCs4
	dc.b	$0A, nBb3, $0C, nRst, $0B, nEb4, $0A, nF4, nBb3, $0C, nEb4, $0B
	dc.b	nF4, nCs4, $09, nBb3, $0C
	smpsAlterVol        $FB
	dc.b	nB3, $03, nRst
	smpsPan             panCenter, $00
	smpsJump            MM3Boss_Jump03

; FM4 Data
MM3Boss_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $0E
	smpsPan             panCenter, $00
	dc.b	nEb3, $56, nBb3, $57, nA3, $56, nF3, $57, nEb3, $02, nRst, $03

MM3Boss_Jump02:
	dc.b	nEb3, $04, nRst, $07
	smpsAlterNote       $02
	dc.b	nE3, $02, nRst, $03, nE3, $05, nRst, $06
	smpsAlterNote       $00
	dc.b	nF3, $03, nRst, nF3, $04, nRst, $06
	smpsAlterNote       $02
	dc.b	nE3, $03, nRst, nE3, $04, nRst, $07
	smpsAlterNote       $00
	dc.b	nEb3, $05
	smpsAlterNote       $02
	dc.b	nE3
	smpsAlterNote       $00
	dc.b	nF3, nRst, $06, nEb3, $03, nRst, nEb3, $04, nRst, $06
	smpsAlterNote       $02
	dc.b	nE3, $03, nRst, nE3, $04, nRst, $07
	smpsAlterNote       $00
	dc.b	nF3, $02, nRst, $03, nF3, $04, nRst, $07
	smpsAlterNote       $02
	dc.b	nE3, $02, nRst, $03, nE3, $05, nRst, $06
	smpsAlterNote       $00
	dc.b	nEb3, $05
	smpsAlterNote       $02
	dc.b	nE3, $06
	smpsAlterNote       $00
	dc.b	nF3, $04, nRst, $07, nEb3, $06, nRst, $05, nEb3, $0A, nCs3, nRst
	dc.b	$01, nBb2, $0B, nRst, nEb3, nCs3, $09, nRst, $01, nBb2, $0B, nEb3
	dc.b	$06, nRst, $05

MM3Boss_Loop08:
	dc.b	nEb3, $0B, nCs3, $0A, nRst, $01, nBb2, $0B, nRst, $0A, nEb3, $0B
	dc.b	nCs3, $0A, nRst, $01, nBb2, $0B, nEb3, $06, nRst, $05, nEb3, $0A
	dc.b	nCs3, nRst, $01, nBb2, $0B, nRst, nEb3, nCs3, $0A, nRst, $01, nBb2
	dc.b	$0A, nEb3, $07, nRst, $04
	smpsLoop            $00, $02, MM3Boss_Loop08
	dc.b	nEb3, $0B, nCs3, $0A, nRst, $01, nBb2, $0B, nRst, $0A, nEb3, $0B
	dc.b	nCs3, $0A, nRst, $01, nBb2, $0B, nEb3, $06, nRst, $05, nEb3, $0B
	dc.b	nCs3, $09, nRst, $01, nBb2, $0B, nRst, nEb3, nCs3, $0A, nRst, $01
	dc.b	nBb2, $0A, nEb3, $07, nRst, $04, nEb3, $0B, nCs3, $0A, nRst, $01
	dc.b	nBb2, $0B, nRst, nEb3, $0A, nCs3, nRst, $01, nBb2, $0B, nAb3, $06
	dc.b	nRst, $05, nAb3, $0B, nFs3, $09, nRst, $01, nEb3, $0B, nRst, nAb3
	dc.b	nFs3, $0A, nRst, $01, nEb3, $0B, nAb3, $06, nRst, $04, nAb3, $0B
	dc.b	nFs3, $0A, nRst, $01, nEb3, $0B, nRst, nAb3, $0A, nFs3, nRst, $01
	dc.b	nEb3, $0B, nAb3, $06, nRst, $05, nAb3, $0B, nFs3, $0A, nRst, $01
	dc.b	nEb3, $0A, nRst, $0B, nAb3, nFs3, $0A, nRst, $01, nEb3, $0B, nAb3
	dc.b	$06, nRst, $04, nAb3, $0B, nFs3, $0A, nRst, $01, nEb3, $0B, nRst
	dc.b	nAb3, nFs3, $09, nEb3, $0C, nAb3, $06, nRst, $05, nAb3, $0B, nFs3
	dc.b	$0A, nRst, $01, nEb3, $0A, nRst, $0B, nAb3, nFs3, $0A, nRst, $01
	dc.b	nEb3, $0B, nAb3, $06, nRst, $04, nAb3, $0B, nFs3, $0A, nRst, $01
	dc.b	nEb3, $0B, nRst, nAb3, nFs3, $09, nRst, $01, nEb3, $0B, nAb3, $06
	dc.b	nRst, $05, nAb3, $0B, nFs3, $0A, nRst, $01, nEb3, $0A, nRst, $0B
	dc.b	nAb3, nFs3, $0A, nRst, $01, nEb3, $0B, nAb3, $06, nRst, $05, nAb3
	dc.b	$0A, nFs3, nRst, $01, nEb3, $0B, nRst, nAb3, nFs3, $09, nEb3, $0C
	dc.b	$03, nRst
	smpsPan             panCenter, $00
	smpsJump            MM3Boss_Jump02

; FM5 Data
MM3Boss_FM5:
	smpsSetvoice        $00
	smpsAlterVol        $15
	smpsPan             panCenter, $00
	dc.b	nRst, $05, nEb3, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nBb3, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nA3, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nF3, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02

MM3Boss_Jump01:
	dc.b	nRst, $7F, $2D
	smpsSetvoice        $06
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nBb4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nEb4, $0A, nA4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nBb4, $09, nA4, $0B, nAb4, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nEb4, $0A, nFs4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FE
	dc.b	$01, nRst, $03
	smpsAlterNote       $00
	dc.b	nBb4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nEb4, $0A, nA4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nBb4, $0A, nA4, nAb4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nEb4, $0A, nFs4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FE
	dc.b	$01, nRst, $03
	smpsAlterNote       $00
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nAb4, $0A, nCs5, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb5, $06, nCs5, $04, nB4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A, smpsNoAttack, nB4, $07, nBb4, $04, nG4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nAb4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nBb4, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nB4, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb5, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nAb4, $0A
	smpsAlterNote       $02
	dc.b	nE5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$03, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, nRst, $0A
	smpsAlterNote       $02
	dc.b	nE5, $06
	smpsAlterNote       $00
	dc.b	nEb5, $05, nCs5, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nRst, $09, smpsNoAttack, nCs5, $07, nEb5, $04
	smpsAlterNote       $02
	dc.b	nE5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $08
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, nG5, $0B, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0B, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nBb5, $0A, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FE
	dc.b	$02
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	smpsJump            MM3Boss_Jump01

; FM6 Data
MM3Boss_FM6:
	smpsSetvoice        $03
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	smpsAlterNote       $FB

MM3Boss_Loop00:
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $08
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $08
	smpsAlterNote       $F0
	smpsLoop            $00, $02, MM3Boss_Loop00

MM3Boss_Loop01:
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $08
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $08
	smpsAlterNote       $F0
	smpsLoop            $00, $02, MM3Boss_Loop01
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02

MM3Boss_Loop02:
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $08
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02
	smpsLoop            $00, $02, MM3Boss_Loop02
	dc.b	smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $08
	smpsAlterNote       $F0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01

MM3Boss_Loop03:
	dc.b	nFs4, $05, nRst, $01, smpsNoAttack, nFs4, $04, nRst, $01, smpsNoAttack
	smpsLoop            $00, $02, MM3Boss_Loop03

MM3Boss_Loop04:
	dc.b	nFs4, $04, nRst, $01, smpsNoAttack, nFs4, $05, nRst, $01, smpsNoAttack
	smpsLoop            $00, $02, MM3Boss_Loop04

MM3Boss_Loop05:
	dc.b	nFs4, $04, nRst, $01

MM3Boss_Jump00:
	dc.b	smpsNoAttack, nFs4, $0A, nRst, $01, smpsNoAttack
	smpsLoop            $00, $02, MM3Boss_Loop05
	dc.b	nFs4, $05, nRst, $01, smpsNoAttack, nFs4, $09, nRst, $01, smpsNoAttack, nFs4, $05
	dc.b	nRst, $01, smpsNoAttack, nFs4, $0A, nRst, $01, smpsNoAttack, nFs4, $04, nRst, $01
	dc.b	smpsNoAttack, nFs4, $04, nRst, $01, smpsNoAttack, nFs4, $0A, nRst, $01, smpsNoAttack, nFs4
	dc.b	$05, nRst, $01, smpsNoAttack, nFs4, $09, nRst, $01, smpsNoAttack, nFs4, $05

MM3Boss_Loop06:
	dc.b	nRst, $01, smpsNoAttack, nFs4, $0A, nRst, $01, smpsNoAttack, nFs4, $04
	smpsLoop            $00, $03, MM3Boss_Loop06
	dc.b	nRst, $01, smpsNoAttack, nFs4, $05, nRst, $01, smpsNoAttack, nFs4, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02

MM3Boss_Loop07:
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $01
	smpsLoop            $00, $02, MM3Boss_Loop07
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $01
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, $02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsAlterVol        $FB
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $05
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05, nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterVol        $FB
	dc.b	nRst
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsAlterVol        $05
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $05
	smpsSetvoice        $04
	smpsAlterVol        $FD
	dc.b	nRst, $01, nFs4, $04
	smpsSetvoice        $03
	smpsAlterVol        $03
	dc.b	nRst, $01
	smpsAlterNote       $F0
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $02
	smpsSetvoice        $04
	smpsAlterVol        $F7
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $06
	dc.b	nFs4, $05, nRst, $01
	smpsPan             panCenter, $00
	smpsJump            MM3Boss_Jump00

; PSG1 Data
MM3Boss_PSG1:
	smpsPSGAlterVol     $04
	dc.b	nEb2, $05, nE2, nEb2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD2, $05, nEb2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nE2, $05, nEb2, nD2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb2, $05, nE2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb2, $05, nD2

MM3Boss_Loop2D:
	dc.b	nEb2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nE2, $05, nEb2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD2, $05, nEb2, nE2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb2, $05, nD2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb2, $05, nE2, nEb2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD2, $05
	smpsLoop            $00, $02, MM3Boss_Loop2D

MM3Boss_Loop2E:
	dc.b	nEb2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nE2, $05, nEb2, nD2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb2, $05, nE2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb2, $05, nD2, nEb2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nE2, $05, nEb2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nD2, $05
	smpsLoop            $00, $02, MM3Boss_Loop2E
	dc.b	nEb2, nE2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb2, $05, nD2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb0, nRst, $03

MM3Boss_Jump08:
	smpsAlterNote       $00
	dc.b	nEb0, $04, nRst, $07, nE0, $02, nRst, $03, nE0, $04
	smpsAlterNote       $01
	dc.b	$01, nRst, $06
	smpsAlterNote       $00
	dc.b	nF0, $03, nRst
	smpsAlterNote       $00
	dc.b	nF0, $04, nRst, $06, nE0, $03, nRst, nE0, $04, nRst, $07, nEb0
	dc.b	$05, nE0, nF0, $04
	smpsAlterNote       $01
	dc.b	$01, nRst, $06
	smpsAlterNote       $00
	dc.b	nEb0, $03, nRst
	smpsAlterNote       $00
	dc.b	nEb0, $04, nRst, $06, nE0, $03, nRst, nE0, $04, nRst, $07, nF0
	dc.b	$02, nRst, $03, nF0, $04, nRst, $07, nE0, $02, nRst, $03, nE0
	dc.b	$04
	smpsAlterNote       $01
	dc.b	$01, nRst, $06
	smpsAlterNote       $00
	dc.b	nEb0, $05, nE0, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nF0, $04, nRst, $0C, nBb1, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FE
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FE
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FE
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb1, $05
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nEb1
	smpsAlterNote       $04
	dc.b	nEb1
	smpsAlterNote       $03
	dc.b	nEb1
	smpsAlterNote       $02
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nA1, $06
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nBb1, $05
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nA1, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nAb1, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FD
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FD
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FD
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb1, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nEb1
	smpsAlterNote       $03
	dc.b	nEb1
	smpsAlterNote       $02
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nFs1, $06
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsAlterNote       $00
	dc.b	nBb1, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FE
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FE
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FE
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb1, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nEb1
	smpsAlterNote       $03
	dc.b	nEb1
	smpsAlterNote       $02
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nA1, $06
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	nA1
	smpsAlterNote       $FC
	dc.b	nA1
	smpsAlterNote       $FD
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nBb1, $05
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nA1, $06
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $04
	dc.b	nA1
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nAb1, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FD
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FD
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FD
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FD
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb1, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nEb1
	smpsAlterNote       $03
	dc.b	nEb1
	smpsAlterNote       $02
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nFs1, $06
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FD
	dc.b	nFs1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	nFs1
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01, nRst, $03
	smpsAlterNote       $00
	dc.b	nEb2, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	nEb2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nAb1, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nCs2, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb2, $05, nCs2, $04, nB1, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $04
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	nB1
	smpsAlterNote       $FC
	dc.b	$02, nRst, $0B
	smpsAlterNote       $00
	dc.b	nB1, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nBb1, $04, nG1, $06
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nG1
	smpsAlterNote       $03
	dc.b	nG1
	smpsAlterNote       $02
	dc.b	nG1
	smpsAlterNote       $01
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $FF
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nG1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nAb1, $05
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1, nBb1, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $03
	dc.b	nBb1
	smpsAlterNote       $02
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $FE
	dc.b	nBb1
	smpsAlterNote       $FD
	dc.b	nBb1
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsAlterNote       $00
	dc.b	nBb1
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nB1, $05
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $04
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nEb2, $06
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $00
	dc.b	nEb2
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $04
	dc.b	nEb2
	smpsAlterNote       $03
	dc.b	nEb2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nEb2
	smpsAlterNote       $FE
	dc.b	nEb2
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nAb1, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $03
	dc.b	nAb1
	smpsAlterNote       $02
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nE2, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FD
	dc.b	nE2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FD
	dc.b	nE2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FD
	dc.b	nE2
	smpsAlterNote       $FC
	dc.b	nE2
	smpsAlterNote       $FD
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	$02, nRst, $0B
	smpsAlterNote       $00
	dc.b	nE2, $05, nEb2, $04
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs2, $06
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $03
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FD
	dc.b	nCs2
	smpsAlterNote       $FC
	dc.b	$02, nRst, $0A
	smpsAlterNote       $00
	dc.b	nCs2, $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb2, $04, nE2, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nE2
	smpsAlterNote       $03
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nG2, $05
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $FC
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	nG2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nG2
	smpsAlterNote       $FE
	dc.b	nG2
	smpsAlterNote       $FD
	dc.b	$03
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nG2
	smpsAlterNote       $00
	dc.b	nG2, nAb2, $05
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FC
	dc.b	nG2
	smpsAlterNote       $03
	dc.b	nAb2
	smpsAlterNote       $02
	dc.b	nAb2
	smpsAlterNote       $01
	dc.b	nAb2
	smpsAlterNote       $00
	dc.b	nAb2
	smpsAlterNote       $FF
	dc.b	nAb2
	smpsAlterNote       $FE
	dc.b	nAb2
	smpsAlterNote       $FD
	dc.b	nAb2
	smpsAlterNote       $FC
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nAb2
	smpsAlterNote       $00
	dc.b	nAb2
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nBb2, $05
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $FD
	dc.b	nA2
	smpsAlterNote       $03
	dc.b	nBb2
	smpsAlterNote       $02
	dc.b	nBb2
	smpsAlterNote       $01
	dc.b	nBb2
	smpsAlterNote       $00
	dc.b	nBb2
	smpsAlterNote       $FF
	dc.b	nBb2
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb0, $03, nRst
	smpsJump            MM3Boss_Jump08

; PSG2 Data
MM3Boss_PSG2:
	smpsPSGAlterVol     $04
	dc.b	nEb3, $05, nE3, nEb3, $06, nD3, $05, nEb3, $06, nE3, $05, nEb3
	dc.b	nD3, $06, nEb3, $05, nE3, $06, nEb3, $05, nD3

MM3Boss_Loop2B:
	dc.b	nEb3, $06, nE3, $05, nEb3, $06, nD3, $05, nEb3, nE3, $06, nEb3
	dc.b	$05, nD3, $06, nEb3, $05, nE3, nEb3, $06, nD3, $05
	smpsLoop            $00, $02, MM3Boss_Loop2B

MM3Boss_Loop2C:
	dc.b	nEb3, $06, nE3, $05, nEb3, nD3, $06, nEb3, $05, nE3, $06, nEb3
	dc.b	$05, nD3, nEb3, $06, nE3, $05, nEb3, $06, nD3, $05
	smpsLoop            $00, $02, MM3Boss_Loop2C
	dc.b	nEb3, nE3, $06, nEb3, $05, nD3, $06, nEb1, $02, nRst, $03

MM3Boss_Jump07:
	dc.b	nEb1, $04, nRst, $07, nE1, $02, nRst, $03, nE1, $05, nRst, $06
	dc.b	nF1, $03, nRst, nF1, $04, nRst, $06, nE1, $03, nRst, nE1, $04
	dc.b	nRst, $07, nEb1, $05, nE1, nF1, nRst, $06, nEb1, $03, nRst, nEb1
	dc.b	$04, nRst, $06, nE1, $03, nRst, nE1, $04, nRst, $07, nF1, $02
	dc.b	nRst, $03, nF1, $04, nRst, $07, nE1, $02, nRst, $03, nE1, $05
	dc.b	nRst, $06, nEb1, $05, nE1, $06, nF1, $04, nRst, $0C, nBb2, $41
	dc.b	nEb2, $0B, nA2, $4C, nBb2, $0A, nA2, $0B, nAb2, $41, nEb2, $0B
	dc.b	nFs2, $5D, nRst, $04, nBb2, $41, nEb2, $0B, nA2, $4C, nBb2, $0B
	dc.b	nA2, $0A, nAb2, $41, nEb2, $0B, nFs2, $5D, nRst, $04, nEb3, $41
	dc.b	nAb2, $0B, nCs3, $57, nEb3, $05, nCs3, nB2, $41, nRst, $0B, nB2
	dc.b	$06, nBb2, $05, nG2, $16, nAb2, $15, nBb2, $16, nB2, nEb3, $40
	dc.b	nAb2, $0B, nE3, $4C, nRst, $0B, nE3, $05, nEb3, $06, nCs3, $41
	dc.b	nRst, $0A, nCs3, $06, nEb3, $05, nE3, $16, nG3, $15, nAb3, $16
	dc.b	nBb3, $10, nEb1, $03, nRst
	smpsJump            MM3Boss_Jump07

; PSG3 Data
MM3Boss_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $7F, $7F, $7F, $7F, $2B

MM3Boss_Jump06:
	dc.b	nRst, $7F, $49
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $01

MM3Boss_Loop17:
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, MM3Boss_Loop17
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02

MM3Boss_Loop18:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, MM3Boss_Loop18
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $24
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01

MM3Boss_Loop19:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $03, MM3Boss_Loop19
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02

MM3Boss_Loop1A:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, MM3Boss_Loop1A
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

MM3Boss_Loop1B:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, MM3Boss_Loop1B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $24
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01

MM3Boss_Loop1C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $03, MM3Boss_Loop1C
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02

MM3Boss_Loop1D:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, MM3Boss_Loop1D
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $01

MM3Boss_Loop1E:
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, MM3Boss_Loop1E
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $1D
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $24
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01

MM3Boss_Loop1F:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $03, MM3Boss_Loop1F
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $1D
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $24
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

MM3Boss_Loop20:
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, MM3Boss_Loop20
	dc.b	nMaxPSG, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $01

MM3Boss_Loop21:
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $02, MM3Boss_Loop21
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02

MM3Boss_Loop22:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, MM3Boss_Loop22
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

MM3Boss_Loop23:
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, MM3Boss_Loop23
	dc.b	nMaxPSG, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
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
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02

MM3Boss_Loop24:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, MM3Boss_Loop24
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

MM3Boss_Loop25:
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, MM3Boss_Loop25
	dc.b	nMaxPSG, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

MM3Boss_Loop26:
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, MM3Boss_Loop26
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $04
	dc.b	$02

MM3Boss_Loop27:
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsLoop            $00, $03, MM3Boss_Loop27
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

MM3Boss_Loop28:
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, MM3Boss_Loop28
	dc.b	nMaxPSG, nRst, $1E
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $03

MM3Boss_Loop29:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, MM3Boss_Loop29
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $23
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02

MM3Boss_Loop2A:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsLoop            $00, $02, MM3Boss_Loop2A
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $03
	smpsPSGAlterVol     $F6
	smpsJump            MM3Boss_Jump06

MM3Boss_Voices:
;	Voice $00
;	$3D
;	$01, $02, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $02, $02, $02, 	$25, $1A, $1A, $1A, 	$15, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $02, $02, $02, $07
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $15

;	Voice $01
;	$10
;	$42, $45, $74, $72, 	$1F, $12, $1F, $5F, 	$04, $01, $04, $0C
;	$01, $01, $01, $02, 	$10, $18, $19, $18, 	$28, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $04, $04
	smpsVcCoarseFreq    $02, $04, $05, $02
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $04, $01, $04
	smpsVcDecayRate2    $02, $01, $01, $01
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $08, $09, $08, $00
	smpsVcTotalLevel    $00, $1E, $1E, $28

;	Voice $02
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

;	Voice $05
;	$3D
;	$01, $02, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $02, $02, $02, 	$FF, $FF, $FF, $1A, 	$15, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $02, $02, $02, $07
	smpsVcDecayLevel    $01, $0F, $0F, $0F
	smpsVcReleaseRate   $0A, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $15

;	Voice $06
;	$30
;	$01, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$04, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$F2, $02, $02, $08, 	$1E, $19, $1B, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $0F
	smpsVcReleaseRate   $08, $02, $02, $02
	smpsVcTotalLevel    $00, $1B, $19, $1E

