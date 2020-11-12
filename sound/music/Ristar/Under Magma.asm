UnderMagma_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     UnderMagma_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       UnderMagma_DAC
	smpsHeaderFM        UnderMagma_FM1,	$00, $00
	smpsHeaderFM        UnderMagma_FM2,	$00, $00
	smpsHeaderFM        UnderMagma_FM3,	$00, $00
	smpsHeaderFM        UnderMagma_FM4,	$00, $00
	smpsHeaderFM        UnderMagma_FM5,	$00, $00
	smpsHeaderPSG       UnderMagma_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       UnderMagma_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       UnderMagma_PSG3,	$00, $00, $00, $00

; DAC Data
UnderMagma_DAC:
	smpsStop

; FM1 Data
UnderMagma_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $0B
	smpsPan             panCenter, $00
	dc.b	nE3, $05, nE2, $07, $06, nA2, nBb2, nB2, $07, nD3, $06, nE3

UnderMagma_Loop53:
	dc.b	nRst, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, nRst, $09
	smpsAlterNote       $00
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, nE2, $07, nA2, $06, nBb2, nB2, nD3, $07, nE3
	dc.b	$06
	smpsLoop            $00, $02, UnderMagma_Loop53
	dc.b	nRst, nE2, $09, nRst, $0A, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, nE2, $07, nA2, $06, nBb2

UnderMagma_Loop54:
	dc.b	nB2, nD3, nE3, $07, nRst, $06, nE2, $09, nRst, $0A

UnderMagma_Jump04:
	dc.b	nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, nE2, nA2, $07, nBb2, $06
	smpsLoop            $00, $02, UnderMagma_Loop54
	dc.b	nB2, nD3, nE3, $07, nRst, $06, nE2, $09, nRst, $0A, nE2, $09
	dc.b	smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01

UnderMagma_Loop55:
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nE3, $07, nE2, $06, nE2, nA2, nBb2, $07, nB2, $06, nD3, nE3
	dc.b	nRst, $07, nE2, $09, nRst, nE2, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nBb1
	smpsLoop            $00, $02, UnderMagma_Loop55
	dc.b	nRst
	smpsAlterNote       $00
	dc.b	nE3, $07, nE2, $06, nE2, nA2, nBb2, $07, nB2, $06, nD3, nE3
	dc.b	nRst, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, nRst, $09
	smpsAlterNote       $00
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nBb1, nRst
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, $07, $06, nA2, nBb2, nB2, $07, nD3, $06, nE3
	dc.b	nRst, nE2, nRst, $0D, nE2, $06, $07, nD2, $06, nEb2, nD2

UnderMagma_Loop56:
	dc.b	nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst, $02
	smpsAlterNote       $00
	dc.b	nD2, $06
	smpsLoop            $00, $02, UnderMagma_Loop56
	dc.b	nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst
	smpsAlterNote       $00
	dc.b	nD2, $07, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01

UnderMagma_Loop57:
	dc.b	nRst, $02
	smpsAlterNote       $00
	dc.b	nG2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FC
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst, $02
	smpsAlterNote       $00
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst
	smpsAlterNote       $00
	dc.b	nD2, $07, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst
	smpsAlterNote       $00
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2
	smpsLoop            $00, $02, UnderMagma_Loop57
	dc.b	nRst, $02
	smpsAlterNote       $00
	dc.b	nG2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	nG1, $04, nRst, $02
	smpsAlterVol        $FC
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst, $02
	smpsAlterNote       $00
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst
	smpsAlterNote       $00
	dc.b	nD2, $07, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01

UnderMagma_Loop58:
	dc.b	nRst, $02
	smpsAlterNote       $00
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst, $02
	smpsAlterNote       $00
	dc.b	nG2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nE2
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	nG1, $05, nRst, $02
	smpsAlterVol        $FC
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst
	smpsAlterNote       $00
	dc.b	nD2, $07, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst
	smpsAlterNote       $00
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2
	smpsLoop            $00, $02, UnderMagma_Loop58
	dc.b	nRst, $02
	smpsAlterNote       $00
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst, $02
	smpsAlterNote       $00
	dc.b	nG2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nE2
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	nG1, $05, nRst, $02
	smpsAlterVol        $FC
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst

UnderMagma_Loop59:
	smpsAlterNote       $00
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst, $02
	smpsLoop            $00, $02, UnderMagma_Loop59
	smpsAlterNote       $00
	dc.b	nD2, $06, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, nRst
	smpsAlterNote       $00
	dc.b	nG2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	nG1, $05, nRst, $01
	smpsAlterVol        $FC
	dc.b	nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nE2, $06, nA2, $07, nB2, $06, nD3, nE3, $04, nRst, $09, nD3
	dc.b	$04, nRst, $08, nB2, $06
	smpsAlterVol        $FC
	dc.b	nBb2, $03, smpsNoAttack, nA2, $04, smpsNoAttack, nG2, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	nFs2
	smpsAlterVol        $04
	smpsAlterNote       $00
	dc.b	nE2, $06, nD2, nE3, $07, nE2, $06, nE2, nA2, nBb2, $07, nB2
	dc.b	$06, nD3, nE3, nRst, $07, nE2, $09, nRst

UnderMagma_Loop5A:
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nBb1, nRst
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, $07, $06, nA2, nBb2, nB2, $07, nD3, $06, nE3
	dc.b	nRst, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, nRst, $09
	smpsAlterNote       $00
	smpsLoop            $00, $02, UnderMagma_Loop5A
	dc.b	nE2, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, $07, $06, nA2, nBb2, nB2, nD3, $07, nE3, $06
	dc.b	nRst, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, nRst, $09
	smpsAlterNote       $00
	dc.b	nE2

UnderMagma_Loop5B:
	dc.b	smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, nE2, $07, nA2, $06, nBb2, nB2, nD3, $07, nE3
	dc.b	$06, nRst, nE2, $09, nRst, $0A, nE2, $09
	smpsLoop            $00, $02, UnderMagma_Loop5B
	dc.b	smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, nE2, nA2, $07, nBb2, $06, nB2, nD3, nE3, $07
	dc.b	nRst, $06, nE2, $09, nRst, $0A, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, nE2, nA2, $07, nBb2, $06, nB2, nD3, nE3, $07
	dc.b	nRst, $06, nE2, $09, nRst, $0A, nE2, $06, nE2, nD2, nEb2, $07
	dc.b	nE2, $0C, $0D, nE3, $06, nD3, nRst, nB2, nRst, $07, nB2, $06
	dc.b	nG2, $0C, nE2, $0D, nD2, $0C, nE2, $12, nRst, $01, nE2, $0A
	dc.b	nRst, $1C, nG2, $06, nE2, nG2, nBb2, $03, smpsNoAttack, nA2, $04, smpsNoAttack
	dc.b	nG2, $06, nE2, nD2, nE2, $0D, $0C, nE3, $07, nD3, $06, nRst
	dc.b	nB2, nRst, $07, nB2, $06, nG2, $0C, nE2, $0D, nD2, $0C, nE2
	dc.b	$11, nRst, $02, nE2, $19, nRst, $0C, nD2, $07, nE2, $06, nG2
	dc.b	nA2, nG2, $07, nE2, $06, nD2, nE2, $0D, $0C, nB2, $06, nD3
	dc.b	$07, nRst, $06, nE3, nRst, nD3, $07, nB2, $0C, nA2, $0D, nG2
	dc.b	$0C, nA2, $06, nG2, $07, nE2, $30, nRst, $01, nD2, $13, nEb2
	dc.b	nE2, $3D, nRst, $01, nG2, $13, nA2, $0D, nBb2, $06, nB2, $09
	dc.b	smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack, nE2, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack, nD2, nRst, $32, nB2, $09, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nBb2, $01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nA2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nAb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nG2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nFs2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nF2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack, nE2, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack, nD2, nE3, $06, nE2, nE2, nA2, $07, nBb2, $06, nB2
	dc.b	nD3, nE3, $07, nRst, $06, nE2, $09, nRst, $0A, nE2, $09, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nEb2, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	nD2, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nCs2, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $13
	dc.b	nC2, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	nB1, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nE3, $06, nE2, nE2, nA2, $07, nBb2, $06, nB2, nD3, nE3, $07
	dc.b	nRst, $06, nE2, $09, nRst, $0A
	smpsPan             panCenter, $00
	smpsJump            UnderMagma_Jump04

; FM2 Data
UnderMagma_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $19
	smpsPan             panLeft, $00
	dc.b	nRst, $7F, $2F, nB3, $06, nE4, $0D, nD4, $06

UnderMagma_Loop2F:
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nD4
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	smpsLoop            $00, $04, UnderMagma_Loop2F
	dc.b	nE4, nRst, $45

UnderMagma_Jump03:
	smpsAlterVol        $08
	dc.b	nB3, $06, nE4, $0C, nD4, $07, nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop30:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop30
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop31:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop31
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop32:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop32
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop33:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop33
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nE4, $06, nRst, $45
	smpsAlterVol        $08
	dc.b	nB3, $06, nE4, $0C, nD4, $06, nCs4, $04
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop34:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop34
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nCs4, $04
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop35:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop35
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nCs4, $04
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop36:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop36
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nCs4, $04
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop37:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop37
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nE4, $07, nRst, $44
	smpsAlterVol        $08
	dc.b	nB3, $07, nE4, $0C, nD4, $06, nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $07

UnderMagma_Loop38:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop38
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $07

UnderMagma_Loop39:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop39
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $07

UnderMagma_Loop3A:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop3A
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $07

UnderMagma_Loop3B:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop3B
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nE4, nRst, $13
	smpsSetvoice        $05
	smpsAlterVol        $0B
	dc.b	nD3, $03, nE3, nG3, $04, nA3, $03, nG3, nA3
	smpsAlterVol        $01
	dc.b	nB3, nA3, nB3, nD4, nB3, $04, nD4, $03
	smpsAlterVol        $01
	dc.b	nE4, nD4, nE4, nG4, nE4, nG4
	smpsAlterVol        $01
	smpsPan             panCenter, $00
	dc.b	nA4, nG4, $04, nA4, $03, nB4, nC5, nCs5
	smpsSetvoice        $01
	smpsAlterVol        $FE
	dc.b	nD5, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $03, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $13, nD5, $03, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $04
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$0F
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$09
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$09
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $13, nD5, $12, nB4, $0A
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $09
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $0A
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD5, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $03, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $04
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $0C, nD5, $03, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nE5, $19, nD5, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$04, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nCs5, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $38
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$07

UnderMagma_Loop3C:
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $03, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $03, nRst, $07
	smpsLoop            $00, $02, UnderMagma_Loop3C
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $12, nD5, $04, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$10
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$09
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$03
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$0A
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $12, nD5, $13, nB4, $09
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $09
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $09
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	$04
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $03, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD5, $04, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nD5
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $0D, nD5, $03, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panLeft, $00
	dc.b	nD5, $03, nRst, $12
	smpsSetvoice        $05
	smpsAlterVol        $F8
	smpsPan             panCenter, $00
	dc.b	nE5, $19, nD5, $13, nB4, $06
	smpsAlterVol        $FF
	dc.b	$03, nA4, $04, nG4, $03, nA4
	smpsAlterVol        $FF
	dc.b	nG4, nE4, nG4, nE4
	smpsAlterVol        $FF
	dc.b	nD4, nE4, $04, nD4, $03, nB3
	smpsAlterVol        $FF
	smpsPan             panLeft, $00
	dc.b	nD4, nB3, nA3, nG3
	smpsSetvoice        $01
	smpsAlterVol        $FE
	dc.b	nCs4
	smpsAlterVol        $08
	dc.b	nD4, $07

UnderMagma_Loop3D:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop3D
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $07

UnderMagma_Loop3E:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop3E
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $07

UnderMagma_Loop3F:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop3F
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $07

UnderMagma_Loop40:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop40
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nE4, nRst, $45
	smpsAlterVol        $08
	dc.b	nB3, $06, nE4, $0D, nD4, $06

UnderMagma_Loop41:
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nD4
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	smpsLoop            $00, $04, UnderMagma_Loop41
	dc.b	nE4, nRst, $45
	smpsAlterVol        $08
	dc.b	nB3, $06, nE4, $0D, nD4, $06

UnderMagma_Loop42:
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	smpsLoop            $00, $02, UnderMagma_Loop42

UnderMagma_Loop43:
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nD4
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	smpsLoop            $00, $02, UnderMagma_Loop43
	dc.b	nE4, nRst, $45
	smpsAlterVol        $08
	dc.b	nB3, $06, nE4, $0C, nD4, $07, nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop44:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop44
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop45:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop45
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop46:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop46
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop47:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop47
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nE4, $03, nRst, $61
	smpsSetvoice        $07
	smpsAlterVol        $07
	dc.b	nG4, $09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG4, $07
	smpsAlterVol        $0C
	dc.b	nRst, $06, smpsNoAttack, nG4

UnderMagma_Loop48:
	smpsAlterVol        $04
	dc.b	nRst, smpsNoAttack, nG4
	smpsAlterVol        $04
	dc.b	nRst, $07, smpsNoAttack, nG4, $06
	smpsLoop            $00, $02, UnderMagma_Loop48
	smpsAlterVol        $E4
	dc.b	nAb4
	smpsAlterVol        $0E
	dc.b	nAb4
	smpsAlterVol        $F2
	dc.b	nG4, $09

UnderMagma_Loop49:
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, UnderMagma_Loop49
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $0C
	dc.b	nRst, $07
	smpsAlterNote       $00
	dc.b	nG4, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nG4
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nG4, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nG4
	smpsAlterVol        $E2
	dc.b	$09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nG4, $06
	smpsAlterVol        $0C

UnderMagma_Loop4A:
	dc.b	nRst, $07, smpsNoAttack, nG4, $06
	smpsAlterVol        $04
	dc.b	nRst, smpsNoAttack, nG4
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnderMagma_Loop4A
	dc.b	nRst, $07, smpsNoAttack, nG4, $06
	smpsAlterVol        $E4
	dc.b	nAb4
	smpsAlterVol        $0E
	dc.b	nAb4
	smpsAlterVol        $F2
	dc.b	nBb4, $09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01
	smpsAlterVol        $0E
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nBb4, $07
	smpsAlterVol        $06
	dc.b	nRst, $06, smpsNoAttack, nBb4
	smpsAlterVol        $EC
	dc.b	nBb4, nRst, $07
	smpsAlterVol        $0E
	dc.b	nBb4, $06, nRst
	smpsAlterVol        $F2
	dc.b	nAb4, nRst, $07
	smpsAlterVol        $0E
	dc.b	nAb4, $06, nRst
	smpsAlterVol        $F2
	dc.b	nG4, $09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nG4, $06
	smpsAlterVol        $0C

UnderMagma_Loop4B:
	dc.b	nRst, smpsNoAttack, nG4, $07
	smpsAlterVol        $04
	dc.b	nRst, $06, smpsNoAttack, nG4
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnderMagma_Loop4B
	dc.b	nRst, smpsNoAttack, nG4, $07
	smpsAlterVol        $E4
	dc.b	nAb4, $06
	smpsAlterVol        $0E
	dc.b	nAb4
	smpsAlterVol        $F2
	dc.b	nG4, $09

UnderMagma_Loop4C:
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, UnderMagma_Loop4C
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $0C
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nG4
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nG4, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nG4
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nG4, $06
	smpsAlterVol        $E2
	dc.b	$09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nG4, $06
	smpsAlterVol        $0C
	dc.b	nRst, smpsNoAttack, nG4
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nG4, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nG4
	smpsAlterVol        $E8
	dc.b	nAb4, $07, nRst, $06
	smpsAlterVol        $0E
	dc.b	nAb4
	smpsAlterVol        $F2
	dc.b	nBb4
	smpsAlterVol        $0E
	dc.b	$07
	smpsAlterVol        $F2
	dc.b	nB4, $06, nC5
	smpsAlterVol        $06
	dc.b	nC5

UnderMagma_Loop4D:
	dc.b	nRst, $02
	smpsAlterVol        $06
	dc.b	nC5, $06
	smpsLoop            $00, $03, UnderMagma_Loop4D
	dc.b	nRst, $01
	smpsAlterVol        $06
	dc.b	nC5, $07, nRst, $01

UnderMagma_Loop4E:
	smpsAlterVol        $06
	dc.b	nC5, $06, nRst, $02
	smpsLoop            $00, $03, UnderMagma_Loop4E
	smpsAlterVol        $06
	dc.b	nC5, $06
	smpsSetvoice        $01
	smpsAlterVol        $CB
	dc.b	nB3, nE4, $0D, nD4, $06, nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop4F:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop4F
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop50:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop50
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop51:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop51
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nCs4, $03
	smpsAlterVol        $08
	dc.b	nD4, $06

UnderMagma_Loop52:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop52
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nE4, $06, nRst, $45
	smpsPan             panLeft, $00
	smpsJump            UnderMagma_Jump03

; FM3 Data
UnderMagma_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $19
	smpsPan             panRight, $00
	dc.b	nRst, $7F, $2F, nFs3, $06, nB3, $0D, nA3, $06

UnderMagma_Loop0B:
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nA3
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	smpsLoop            $00, $04, UnderMagma_Loop0B
	dc.b	nB3, nRst, $45

UnderMagma_Jump02:
	smpsAlterVol        $08
	dc.b	nFs3, $06, nB3, $0C, nA3, $07, nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop0C:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop0C
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop0D:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop0D
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop0E:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop0E
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop0F:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop0F
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nB3, $06, nRst, $45
	smpsAlterVol        $08
	dc.b	nFs3, $06, nB3, $0C, nA3, $06, nAb3, $04
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop10:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop10
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nAb3, $04
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop11:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop11
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nAb3, $04
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop12:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop12
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nAb3, $04
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop13:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop13
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nB3, $07, nRst, $44
	smpsAlterVol        $08
	dc.b	nFs3, $07, nB3, $0C, nA3, $06, nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $07

UnderMagma_Loop14:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop14
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $07

UnderMagma_Loop15:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop15
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $07

UnderMagma_Loop16:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop16
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $07

UnderMagma_Loop17:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop17
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nB3, nRst, $13
	smpsSetvoice        $05
	smpsAlterVol        $0A
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	nD3, $02, nE3, $03, nG3, $04, nA3, $03, nG3, nA3
	smpsAlterVol        $01
	dc.b	nB3, nA3, nB3, nD4, nB3, $04, nD4, $03
	smpsAlterVol        $01
	dc.b	nE4, nD4, nE4, nG4, nE4, nG4
	smpsAlterVol        $01
	smpsPan             panCenter, $00
	dc.b	nA4, nG4, $04, nA4, $03, nB4, nC5, nCs5
	smpsSetvoice        $01
	smpsAlterVol        $FE
	dc.b	nB4, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $03, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $13, nB4, $03, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $04
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$0F
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$09
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$04
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$09
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $13, nB4, $12, nAb4, $0A
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $09
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nAb4, $0A
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $03, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $04
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $0C, nB4, $03, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nCs5, $19, nB4, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$04, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nA4, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nAb4, $38
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$07

UnderMagma_Loop18:
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $03, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $03, nRst, $07
	smpsLoop            $00, $02, UnderMagma_Loop18
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $12, nB4, $04, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$10
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$09
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	$03
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$0A
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $12, nB4, $13, nAb4, $09
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $09
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nAb4, $09
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	$04
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $03, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $03, nRst, $06
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4, $04, nRst, $0C
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $03
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nB4
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	nA4, $0D, nB4, $03, nRst, $0D
	smpsAlterVol        $0A
	smpsPan             panRight, $00
	dc.b	nB4, $03, nRst, $12
	smpsSetvoice        $05
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	nB4, $18, nA4, $13, nG4, $06
	smpsAlterVol        $FF
	dc.b	nB4, $03, nA4, $04, nG4, $03, nA4
	smpsAlterVol        $FF
	dc.b	nG4, nE4, nG4, nE4
	smpsAlterVol        $FF
	dc.b	nD4, nE4, $04, nD4, $03, nB3
	smpsAlterVol        $FF
	smpsPan             panRight, $00
	dc.b	nD4, nB3, nA3, nG3
	smpsSetvoice        $01
	smpsAlterVol        $FE
	dc.b	nAb3
	smpsAlterVol        $08
	dc.b	nA3, $07

UnderMagma_Loop19:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop19
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $07

UnderMagma_Loop1A:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop1A
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $07

UnderMagma_Loop1B:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop1B
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $07

UnderMagma_Loop1C:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop1C
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	dc.b	nB3, nRst, $45
	smpsAlterVol        $08
	dc.b	nFs3, $06, nB3, $0D, nA3, $06

UnderMagma_Loop1D:
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nA3
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	smpsLoop            $00, $04, UnderMagma_Loop1D
	dc.b	nB3, nRst, $45
	smpsAlterVol        $08
	dc.b	nFs3, $06, nB3, $0D, nA3, $06

UnderMagma_Loop1E:
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	smpsLoop            $00, $02, UnderMagma_Loop1E

UnderMagma_Loop1F:
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, nA3
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $04
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $FE
	smpsLoop            $00, $02, UnderMagma_Loop1F
	dc.b	nB3, nRst, $45
	smpsAlterVol        $08
	dc.b	nFs3, $06, nB3, $0C, nA3, $07, nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop20:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop20
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop21:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop21
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop22:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop22
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop23:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop23
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nB3, $03, nRst, $61
	smpsSetvoice        $08
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $07
	smpsAlterVol        $05
	dc.b	nFs5, $08, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nFs5, $07
	smpsAlterVol        $0C
	dc.b	nRst, $06, smpsNoAttack, nFs5

UnderMagma_Loop24:
	smpsAlterVol        $04
	dc.b	nRst, smpsNoAttack, nFs5
	smpsAlterVol        $04
	dc.b	nRst, $07, smpsNoAttack, nFs5, $06
	smpsLoop            $00, $02, UnderMagma_Loop24
	smpsAlterVol        $E4
	dc.b	nG5
	smpsAlterVol        $0E
	dc.b	nG5
	smpsAlterVol        $F2
	dc.b	nFs5, $09

UnderMagma_Loop25:
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, UnderMagma_Loop25
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $0C
	dc.b	nRst, $07
	smpsAlterNote       $00
	dc.b	nFs5, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nFs5
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nFs5, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nFs5
	smpsAlterVol        $E2
	dc.b	$09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nFs5, $06
	smpsAlterVol        $0C

UnderMagma_Loop26:
	dc.b	nRst, $07, smpsNoAttack, nFs5, $06
	smpsAlterVol        $04
	dc.b	nRst, smpsNoAttack, nFs5
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnderMagma_Loop26
	dc.b	nRst, $07, smpsNoAttack, nFs5, $06
	smpsAlterVol        $E4
	dc.b	nG5
	smpsAlterVol        $0E
	dc.b	nG5
	smpsAlterVol        $F2
	dc.b	nA5, $09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01
	smpsAlterVol        $0E
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nA5, $07
	smpsAlterVol        $06
	dc.b	nRst, $06, smpsNoAttack, nA5
	smpsAlterVol        $EC
	dc.b	nA5, nRst, $07
	smpsAlterVol        $0E
	dc.b	nA5, $06, nRst
	smpsAlterVol        $F2
	dc.b	nG5, nRst, $07
	smpsAlterVol        $0E
	dc.b	nG5, $06, nRst
	smpsAlterVol        $F2
	dc.b	nFs5, $09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nFs5, $06
	smpsAlterVol        $0C

UnderMagma_Loop27:
	dc.b	nRst, smpsNoAttack, nFs5, $07
	smpsAlterVol        $04
	dc.b	nRst, $06, smpsNoAttack, nFs5
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnderMagma_Loop27
	dc.b	nRst, smpsNoAttack, nFs5, $07
	smpsAlterVol        $E4
	dc.b	nG5, $06
	smpsAlterVol        $0E
	dc.b	nG5
	smpsAlterVol        $F2
	dc.b	nFs5, $09

UnderMagma_Loop28:
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, UnderMagma_Loop28
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $0C
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nFs5
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nFs5, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nFs5
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nFs5, $06
	smpsAlterVol        $E2
	dc.b	$09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nFs5, $06
	smpsAlterVol        $0C
	dc.b	nRst, smpsNoAttack, nFs5
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nFs5, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nFs5
	smpsAlterVol        $E8
	dc.b	nG5, $07, nRst, $06
	smpsAlterVol        $0E
	dc.b	nG5
	smpsAlterVol        $F2
	dc.b	nA5
	smpsAlterVol        $0E
	dc.b	$07
	smpsAlterVol        $F2
	dc.b	nBb5, $06, nB5
	smpsAlterVol        $06
	dc.b	nB5

UnderMagma_Loop29:
	dc.b	nRst, $02
	smpsAlterVol        $06
	dc.b	nB5, $06
	smpsLoop            $00, $03, UnderMagma_Loop29
	dc.b	nRst, $01
	smpsAlterVol        $06
	dc.b	nB5, $07, nRst, $01

UnderMagma_Loop2A:
	smpsAlterVol        $06
	dc.b	nB5, $06, nRst, $02
	smpsLoop            $00, $03, UnderMagma_Loop2A
	smpsAlterVol        $06
	dc.b	nB5, $06
	smpsSetvoice        $0A
	smpsAlterVol        $D2
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $01
	smpsAlterVol        $F9
	dc.b	nFs3, $05, nB3, $0D, nA3, $06, nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop2B:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop2B
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop2C:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop2C
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop2D:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop2D
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nAb3, $03
	smpsAlterVol        $08
	dc.b	nA3, $06

UnderMagma_Loop2E:
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $03
	smpsLoop            $00, $03, UnderMagma_Loop2E
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $07
	smpsAlterVol        $FE
	dc.b	nB3, $06, nRst, $45
	smpsPan             panRight, $00
	smpsJump            UnderMagma_Jump02

; FM4 Data
UnderMagma_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $53
	smpsSetvoice        $04
	smpsAlterVol        $9A
	dc.b	smpsNoAttack, $64, nE3, $06, nE4, nB3, nA4, $07, nG4, $06, nD4, nE4
	dc.b	nB3, $07, nD4, $06, nA3, nRst, $02

UnderMagma_Jump01:
	dc.b	nRst, $7F, $09, nE3, $06, nE4, nB3, nA4, nG4, $07, nD4, $06
	dc.b	nE4, nB3, nD4, $07, nA3, $06, nFs4, nRst, $7F, $04, nE3, $07
	dc.b	nE4, $06, nB3, nA4, nG4, $07, nD4, $06, nE4, nB3, nD4, $07
	dc.b	nA3, $06, nRst, $7F, $64
	smpsSetvoice        $06
	smpsAlterVol        $02
	dc.b	nB4, $55, nRst, $02, nA4, $0A

UnderMagma_Loop02:
	dc.b	nRst, $02, nB4, $56, nRst, $01, nA4, $0B
	smpsLoop            $00, $02, UnderMagma_Loop02
	dc.b	nRst, $02, nAb4, $56, nRst, $01, nA4, $0B, nRst, $02, nB4, $56
	dc.b	nRst, $01

UnderMagma_Loop03:
	dc.b	nA4, $0B, nRst, $02, nB4, $55, nRst, $02
	smpsLoop            $00, $02, UnderMagma_Loop03
	dc.b	nA4, $0B, nRst, $02, nAb4, $62, nRst, $0C
	smpsSetvoice        $04
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $64, nE3, $06, nE4, $07, nB3, $06, nA4, nG4, nD4, $07
	dc.b	nE4, $06, nB3, nD4, nA3, $07, nRst, $7F, $0A, nE3, $06, nE4
	dc.b	nB3, $07, nA4, $06, nG4, nD4, nE4, $07, nB3, $06, nD4, nA3
	dc.b	nFs4, $07, nRst, $7F, $04, nE3, $06, nE4, nB3, nA4, $07, nG4
	dc.b	$06, nD4, nE4, nB3, $07, nD4, $06, nA3, nRst, $7F, $65
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nB4, $08, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nB4, $07
	smpsAlterVol        $0C
	dc.b	nRst, $06, smpsNoAttack, nB4

UnderMagma_Loop04:
	smpsAlterVol        $04
	dc.b	nRst, smpsNoAttack, nB4
	smpsAlterVol        $04
	dc.b	nRst, $07, smpsNoAttack, nB4, $06
	smpsLoop            $00, $02, UnderMagma_Loop04
	smpsAlterVol        $E4
	dc.b	nC5
	smpsAlterVol        $0E
	dc.b	nC5
	smpsAlterVol        $F2
	dc.b	nB4, $09

UnderMagma_Loop05:
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, UnderMagma_Loop05
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $0C
	dc.b	nRst, $07
	smpsAlterNote       $00
	dc.b	nB4, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nB4
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nB4, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nB4
	smpsAlterVol        $E2
	dc.b	nRst, $01, smpsNoAttack, nB4, $08, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, nRst
	smpsAlterNote       $00
	dc.b	nB4, $06
	smpsAlterVol        $0C

UnderMagma_Loop06:
	dc.b	nRst, $07, smpsNoAttack, nB4, $06
	smpsAlterVol        $04
	dc.b	nRst, smpsNoAttack, nB4
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnderMagma_Loop06
	dc.b	nRst, $07, smpsNoAttack, nB4, $06
	smpsAlterVol        $E4
	dc.b	nC5
	smpsAlterVol        $0E
	dc.b	nC5
	smpsAlterVol        $F2
	dc.b	nD5, $09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01
	smpsAlterVol        $0E
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nD5, $07
	smpsAlterVol        $06
	dc.b	nRst, $06, smpsNoAttack, nD5
	smpsAlterVol        $EC
	dc.b	nD5, nRst, $07
	smpsAlterVol        $0E
	dc.b	nD5, $06, nRst
	smpsAlterVol        $F2
	dc.b	nC5, nRst, $07
	smpsAlterVol        $0E
	dc.b	nC5, $06, nRst
	smpsAlterVol        $F2
	dc.b	nB4, $09, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nB4, $06
	smpsAlterVol        $0C

UnderMagma_Loop07:
	dc.b	nRst, smpsNoAttack, nB4, $07
	smpsAlterVol        $04
	dc.b	nRst, $06, smpsNoAttack, nB4
	smpsAlterVol        $04
	smpsLoop            $00, $02, UnderMagma_Loop07
	dc.b	nRst, smpsNoAttack, nB4, $07
	smpsAlterVol        $E4
	dc.b	nC5, $06
	smpsAlterVol        $0E
	dc.b	nC5
	smpsAlterVol        $F2
	dc.b	nB4, $09

UnderMagma_Loop08:
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, UnderMagma_Loop08
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $FA
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $0C
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nB4
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nB4, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nB4
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nB4, $06
	smpsAlterVol        $E2
	dc.b	nRst, $01, smpsNoAttack, nB4, $08, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nB4, $06
	smpsAlterVol        $0C
	dc.b	nRst, smpsNoAttack, nB4
	smpsAlterVol        $06
	dc.b	nRst, $07, smpsNoAttack, nB4, $06
	smpsAlterVol        $06
	dc.b	nRst, smpsNoAttack, nB4
	smpsAlterVol        $E8
	dc.b	nC5, $07, nRst, $06
	smpsAlterVol        $0E
	dc.b	nC5
	smpsAlterVol        $F2
	dc.b	nD5
	smpsAlterVol        $0E
	dc.b	$07
	smpsAlterVol        $F2
	dc.b	nEb5, $06, nE5
	smpsAlterVol        $06
	dc.b	nE5

UnderMagma_Loop09:
	dc.b	nRst, $02
	smpsAlterVol        $06
	dc.b	nE5, $06
	smpsLoop            $00, $03, UnderMagma_Loop09
	dc.b	nRst, $01
	smpsAlterVol        $06
	dc.b	nE5, $07, nRst, $01

UnderMagma_Loop0A:
	smpsAlterVol        $06
	dc.b	nE5, $06, nRst, $02
	smpsLoop            $00, $03, UnderMagma_Loop0A
	smpsAlterVol        $06
	dc.b	nE5, $07
	smpsAlterVol        $CA
	dc.b	nRst, $23
	smpsSetvoice        $04
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $64, nE3, $06, nE4, nB3, nA4, $07, nG4, $06, nD4, nE4
	dc.b	nB3, $07, nD4, $06, nA3, nRst, $02
	smpsPan             panCenter, $00
	smpsJump            UnderMagma_Jump01

; FM5 Data
UnderMagma_FM5:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panRight, $00
	dc.b	nRst, $7F, $48
	smpsSetvoice        $04
	smpsAlterVol        $90
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, $64, nE3, $06, nE4, nB3, $07, nA4, $06, nG4, nD4, nE4
	dc.b	nB3, $07, nD4, $06, nA3, nRst, $0D

UnderMagma_Jump00:
	dc.b	nRst, $7D, nE3, $06, nE4, nB3, nA4, $07, nG4, $06, nD4, nE4
	dc.b	nB3, $07, nD4, $06, nA3, nFs4, nRst, $7F, $04, nE3, $07, nE4
	dc.b	$06, nB3, nA4, nG4, $07, nD4, $06, nE4, nB3, nD4, $07, nA3
	dc.b	$06, nRst, $7F, $6F
	smpsSetvoice        $06
	smpsAlterVol        $0C
	dc.b	nD5, $55, nRst, $02, nCs5, $0A

UnderMagma_Loop00:
	dc.b	nRst, $02, nD5, $56, nRst, $01, nCs5, $0B
	smpsLoop            $00, $02, UnderMagma_Loop00
	dc.b	nRst, $02, nB4, $56, nRst, $01, nCs5, $0B, nRst, $02, nD5, $56
	dc.b	nRst, $01

UnderMagma_Loop01:
	dc.b	nCs5, $0B, nRst, $02, nD5, $55, nRst, $02
	smpsLoop            $00, $02, UnderMagma_Loop01
	dc.b	nCs5, $0B, nRst, $02, nB4, $62, nRst, $02
	smpsSetvoice        $04
	smpsAlterVol        $F4
	dc.b	smpsNoAttack, $63, nE3, $06, nE4, $07, nB3, $06, nA4, nG4, nD4, $07
	dc.b	nE4, $06, nB3, nD4, nA3, $07, nRst, $7F, $0A, nE3, $06, nE4
	dc.b	$07, nB3, $06, nA4, nG4, nD4, nE4, $07, nB3, $06, nD4, nA3
	dc.b	nFs4, $07, nRst, $7F, $04, nE3, $06, nE4, nB3, $07, nA4, $06
	dc.b	nG4, nD4, nE4, $07, nB3, $06, nD4, nA3, nRst, $7F, $70
	smpsSetvoice        $09
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $30
	smpsAlterVol        $FC
	smpsPan             panRight, $00
	dc.b	nG4, $32
	smpsAlterVol        $02
	dc.b	smpsNoAttack, nG4
	smpsAlterVol        $02
	dc.b	nRst, $64
	smpsPan             panCenter, $00
	dc.b	nG4, $32
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $32
	smpsAlterVol        $FE
	dc.b	nRst, $64
	smpsPan             panLeft, $00
	dc.b	nG4, $32
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $32
	smpsAlterVol        $02
	dc.b	nRst, $64
	smpsPan             panCenter, $00
	dc.b	nG4, $32
	smpsAlterVol        $FE
	dc.b	smpsNoAttack, $32
	smpsAlterVol        $FE
	dc.b	nRst, $1A
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $18
	smpsSetvoice        $04
	smpsAlterVol        $F8
	dc.b	smpsNoAttack, $64, nE3, $06, nE4, nB3, nA4, $07, nG4, $06, nD4, nE4
	dc.b	nB3, $07, nD4, $06, nA3, nRst, $0D
	smpsPan             panCenter, $00
	smpsJump            UnderMagma_Jump00

; PSG1 Data
UnderMagma_PSG1:
	dc.b	nRst, $7F, $38
	smpsPSGAlterVol     $06
	dc.b	nB0, $07, nE1, $0C, nD1, $06, nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $07

UnderMagma_Loop26C:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop26C
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $07

UnderMagma_Loop26D:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop26D
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $07

UnderMagma_Loop26E:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop26E
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $07

UnderMagma_Loop26F:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop26F
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nE1, nRst, $45

UnderMagma_Jump07:
	dc.b	nRst, $09, nB0, $06, nE1, $0D, nD1, $06

UnderMagma_Loop270:
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, UnderMagma_Loop270
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nE1, nRst, $45, nB0, $06, nE1, $0D, nD1, $06

UnderMagma_Loop271:
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, UnderMagma_Loop271
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nE1, nRst, $45, nB0, $06, nE1, $0C, nD1, $07, nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop272:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop272
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop273:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop273
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop274:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop274
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop275:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop275
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $03
	dc.b	nE1, $06, nRst, $13, nD0, $03, nE0, nG0, nA0, nG0, nA0, nB0
	dc.b	nA0, $04, nB0, $03, nD1, nB0, nD1, nE1, nD1, nE1, nG1, nE1
	dc.b	$04, nG1, $03, nA1, nG1, nA1, $04, nB1, $02, nC2, $03, nCs2

UnderMagma_Loop276:
	dc.b	nD2, $04, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $FB
	smpsLoop            $00, $02, UnderMagma_Loop276
	dc.b	nCs2, $13, nD2, $03, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nD2, $03
	smpsPSGAlterVol     $FB
	dc.b	$0F
	smpsPSGAlterVol     $05
	dc.b	$0A
	smpsPSGAlterVol     $FB
	dc.b	$03
	smpsPSGAlterVol     $05
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $13, nD2, nB1, $09
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $0A
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nB1, $09
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nD2, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nD2, $03, nRst, $06
	smpsPSGAlterVol     $FB
	dc.b	nD2, $03, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nD2, $03
	smpsPSGAlterVol     $FB
	dc.b	nD2
	smpsPSGAlterVol     $05
	dc.b	nD2
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $0D, nD2, $03, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nD2, $03, nRst, $07
	smpsPSGAlterVol     $FB
	dc.b	nE2, $19, nD2, $03
	smpsPSGAlterVol     $05
	dc.b	nD2, nRst, $06
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $03
	smpsPSGAlterVol     $05
	dc.b	nCs2, nRst, $07
	smpsPSGAlterVol     $FB
	dc.b	nB1, $38
	smpsPSGAlterVol     $05
	dc.b	$06

UnderMagma_Loop277:
	smpsPSGAlterVol     $FB
	dc.b	nD2, $03, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nD2, $03, nRst, $06
	smpsLoop            $00, $02, UnderMagma_Loop277
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $13, nD2, $03, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nD2, $03
	smpsPSGAlterVol     $FB
	dc.b	$10
	smpsPSGAlterVol     $05
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $05
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $13, nD2, $12, nB1, $0A
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $09
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nB1, $0A
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nD2, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nD2, $04, nRst, $06
	smpsPSGAlterVol     $FB
	dc.b	nD2, $03, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nD2, $04
	smpsPSGAlterVol     $FB
	dc.b	$03
	smpsPSGAlterVol     $05
	dc.b	nD2
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $0C, nD2, $03, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nD2, $03, nRst, $13
	smpsPSGAlterVol     $FB
	dc.b	nE2, $19, nD2, $12, nB1, $0A, nA1, $03, nG1, nA1, nG1, nE1
	dc.b	nG1, $04, nE1, $03, nD1, nE1, nD1, nB0, nD1, $04, nB0, $02
	dc.b	nA0, $04, nG0, $03, nCs1
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop278:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop278
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop279:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop279
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop27A:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop27A
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop27B:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop27B
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $03
	dc.b	nE1, $06, nRst, $45, nB0, $06, nE1, $0C, nD1, $06, nCs1, $04
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop27C:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop27C
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $04
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop27D:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop27D
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $04
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop27E:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop27E
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $04
	smpsPSGAlterVol     $04
	dc.b	nD1, $06

UnderMagma_Loop27F:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop27F
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nE1, $07, nRst, $44, nB0, $07, nE1, $0C, nD1, $06, nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $07

UnderMagma_Loop280:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop280
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $07

UnderMagma_Loop281:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop281
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $07

UnderMagma_Loop282:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop282
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $07

UnderMagma_Loop283:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop283
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nE1, nRst, $45, nB0, $06, nE1, $0D, nD1, $06

UnderMagma_Loop284:
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, UnderMagma_Loop284
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nE1, $03, nRst, $7F, $7F, $7F, $7F, $7F, $7F, $6D, nB0, $06
	dc.b	nE1, $0D, nD1, $06

UnderMagma_Loop285:
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, UnderMagma_Loop285
	dc.b	nCs1, $03
	smpsPSGAlterVol     $04
	dc.b	nD1, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nE1, nRst, $3C
	smpsJump            UnderMagma_Jump07

; PSG2 Data
UnderMagma_PSG2:
	dc.b	nRst, $7F, $38
	smpsPSGAlterVol     $06
	dc.b	nFs0, $07, nB0, $0C, nA0, $06, nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $07

UnderMagma_Loop252:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop252
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $07

UnderMagma_Loop253:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop253
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $07

UnderMagma_Loop254:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop254
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $07

UnderMagma_Loop255:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop255
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nB0, nRst, $45

UnderMagma_Jump06:
	dc.b	nRst, $09, nFs0, $06, nB0, $0D, nA0, $06

UnderMagma_Loop256:
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, UnderMagma_Loop256
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nB0, nRst, $45, nFs0, $06, nB0, $0D, nA0, $06

UnderMagma_Loop257:
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, UnderMagma_Loop257
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nB0, nRst, $45, nFs0, $06, nB0, $0C, nA0, $07, nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop258:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop258
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop259:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop259
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop25A:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop25A
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop25B:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop25B
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $03
	dc.b	nB0, $06, nRst, $13, nD0, $03, nE0, nG0, nA0, nG0, nA0, nB0
	dc.b	nA0, $04, nB0, $03, nD1, nB0, nD1, nE1, nD1, nE1, nG1, nE1
	dc.b	$04, nG1, $03, nA1, nG1, nA1, $04, nB1, $02, nC2, $03, nCs2

UnderMagma_Loop25C:
	dc.b	nB1, $04, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nB1, $03, nRst, $06
	smpsPSGAlterVol     $FB
	smpsLoop            $00, $02, UnderMagma_Loop25C
	dc.b	nA1, $13, nB1, $03, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nB1, $03
	smpsPSGAlterVol     $FB
	dc.b	$0F
	smpsPSGAlterVol     $05
	dc.b	$0A
	smpsPSGAlterVol     $FB
	dc.b	$03
	smpsPSGAlterVol     $05
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	nA1, $13, nB1, nAb1, $09
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nA1, $0A
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nAb1, $09
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nB1, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nB1, $03, nRst, $06
	smpsPSGAlterVol     $FB
	dc.b	nB1, $03, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nB1, $03
	smpsPSGAlterVol     $FB
	dc.b	nB1
	smpsPSGAlterVol     $05
	dc.b	nB1
	smpsPSGAlterVol     $FB
	dc.b	nA1, $0D, nB1, $03, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nB1, $03, nRst, $07
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $19, nB1, $03
	smpsPSGAlterVol     $05
	dc.b	nB1, nRst, $06
	smpsPSGAlterVol     $FB
	dc.b	nA1, $03
	smpsPSGAlterVol     $05
	dc.b	nA1, nRst, $07
	smpsPSGAlterVol     $FB
	dc.b	nAb1, $38
	smpsPSGAlterVol     $05
	dc.b	$06

UnderMagma_Loop25D:
	smpsPSGAlterVol     $FB
	dc.b	nB1, $03, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nB1, $03, nRst, $06
	smpsLoop            $00, $02, UnderMagma_Loop25D
	smpsPSGAlterVol     $FB
	dc.b	nA1, $13, nB1, $03, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nB1, $03
	smpsPSGAlterVol     $FB
	dc.b	$10
	smpsPSGAlterVol     $05
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	$04
	smpsPSGAlterVol     $05
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	nA1, $13, nB1, $12, nAb1, $0A
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nA1, $09
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nAb1, $0A
	smpsPSGAlterVol     $05
	dc.b	$03
	smpsPSGAlterVol     $FB
	dc.b	nB1, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nB1, $04, nRst, $06
	smpsPSGAlterVol     $FB
	dc.b	nB1, $03, nRst, $0C
	smpsPSGAlterVol     $05
	dc.b	nB1, $04
	smpsPSGAlterVol     $FB
	dc.b	$03
	smpsPSGAlterVol     $05
	dc.b	nB1
	smpsPSGAlterVol     $FB
	dc.b	nA1, $0C, nB1, $03, nRst, $0D
	smpsPSGAlterVol     $05
	dc.b	nB1, $03, nRst, $13
	smpsPSGAlterVol     $FB
	dc.b	nB1, $19, nA1, $12, nG1, $07, nB1, $03, nA1, nG1, nA1, nG1
	dc.b	nE1, nG1, $04, nE1, $03, nD1, nE1, nD1, nB0, nD1, $04, nB0
	dc.b	$02, nA0, $04, nG0, $03, nAb0
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop25E:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop25E
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop25F:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop25F
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop260:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop260
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop261:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop261
	smpsPSGAlterVol     $FF
	dc.b	$07
	smpsPSGAlterVol     $03
	dc.b	nB0, $06, nRst, $45, nFs0, $06, nB0, $0C, nA0, $06, nAb0, $04
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop262:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop262
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $04
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop263:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop263
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $04
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop264:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop264
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $04
	smpsPSGAlterVol     $04
	dc.b	nA0, $06

UnderMagma_Loop265:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop265
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nB0, $07, nRst, $44, nFs0, $07, nB0, $0C, nA0, $06, nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $07

UnderMagma_Loop266:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop266
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $07

UnderMagma_Loop267:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop267
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $07

UnderMagma_Loop268:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop268
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $07

UnderMagma_Loop269:
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop269
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nB0, nRst, $45, nFs0, $06, nB0, $0D, nA0, $06

UnderMagma_Loop26A:
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, UnderMagma_Loop26A
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nB0, $03, nRst, $7F, $7F, $7F, $7F, $7F, $7F, $6D, nFs0, $06
	dc.b	nB0, $0D, nA0, $06

UnderMagma_Loop26B:
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, UnderMagma_Loop26B
	dc.b	nAb0, $03
	smpsPSGAlterVol     $04
	dc.b	nA0, $06
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$06
	smpsPSGAlterVol     $03
	dc.b	nB0, nRst, $3C
	smpsJump            UnderMagma_Jump06

; PSG3 Data
UnderMagma_PSG3:
	smpsPSGAlterVol     $06
	smpsPSGform         $E7
	dc.b	nMaxPSG

UnderMagma_Loop5C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop5C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop5D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop5D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop5E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop5E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop5F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop5F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop60:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop60
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop61:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop61
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop62:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop62
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop63:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop63
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop64:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop64
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop65:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop65
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop66:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop66
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop67:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop67
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop68:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop68
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop69:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop69
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop6A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop6A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop6B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop6B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop6C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop6C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop6D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop6D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop6E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop6E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop6F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop6F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop70:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop70
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop71:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop71
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop72:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop72
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop73:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop73
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop74:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop74
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop75:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop75
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop76:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop76
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop77:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop77
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop78:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop78
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop79:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop79
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop7A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop7A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop7B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop7B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop7C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop7C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop7D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop7D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop7E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop7E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop7F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop7F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop80:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop80
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop81:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop81
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop82:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop82
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop83:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop83
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop84:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop84
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop85:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop85
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop86:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop86
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop87:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop87
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop88:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop88
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop89:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop89
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop8A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop8A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop8B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop8B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop8C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop8C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop8D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop8D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop8E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop8E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop8F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop8F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop90:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop90
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop91:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop91
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop92:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop92
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop93:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop93
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop94:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop94
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop95:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop95
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop96:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop96
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop97:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop97
	dc.b	nMaxPSG, nRst, $02

UnderMagma_Jump05:
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop98:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop98
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop99:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop99
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop9A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop9A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop9B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop9B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop9C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop9C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop9D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop9D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop9E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop9E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop9F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop9F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopA0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopA1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopA2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopA3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA3
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopA4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopA5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopA6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopA7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA7
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopA8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopA9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopA9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopAA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopAA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopAB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopAB
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_LoopAC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_LoopAC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopAD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopAD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopAE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopAE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopAF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopAF
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopB0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopB1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopB2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopB3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB3
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopB4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopB5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopB6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopB7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB7
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopB8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopB9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopB9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopBA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopBA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopBB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopBB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopBC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopBC
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopBD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopBD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopBE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopBE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopBF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopBF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopC0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC0
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopC1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopC2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopC3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopC4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopC5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopC6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopC7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopC8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC8
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopC9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopC9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopCA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopCA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopCB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopCB
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_LoopCC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_LoopCC
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopCD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopCD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopCE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopCE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopCF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopCF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopD0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD0
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopD1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopD2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopD3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopD4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopD5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopD6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopD7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopD8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD8
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopD9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopD9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopDA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopDA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopDB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopDB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopDC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopDC
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopDD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopDD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopDE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopDE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopDF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopDF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopE0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE0
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_LoopE1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_LoopE2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopE3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopE4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopE5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE5
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_LoopE6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopE7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopE8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopE9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopE9
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_LoopEA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopEA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopEB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopEB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopEC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopEC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopED:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopED
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_LoopEE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopEE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopEF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopEF
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_LoopF0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_LoopF0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopF1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopF1
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_LoopF2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopF2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopF3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopF3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopF4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopF4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopF5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopF5
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_LoopF6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopF6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopF7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopF7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopF8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopF8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopF9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopF9
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_LoopFA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopFA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_LoopFB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopFB
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_LoopFC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_LoopFC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_LoopFD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopFD
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_LoopFE:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_LoopFE
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

UnderMagma_LoopFF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_LoopFF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop100:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop100
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop101:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop101
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

UnderMagma_Loop102:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop102
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop103:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop103
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop104:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop104
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

UnderMagma_Loop105:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop105
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop106:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop106
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop107:
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop107
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

UnderMagma_Loop108:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop108
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop109:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop109
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop10A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop10A
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop10B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop10B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop10C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop10C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop10D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop10D
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop10E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop10E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop10F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop10F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop110:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop110
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop111:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop111
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop112:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop112
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop113:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop113
	dc.b	$02

UnderMagma_Loop114:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop114
	smpsPSGAlterVol     $FF

UnderMagma_Loop115:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop115
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop116:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop116
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop117:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop117
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop118:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop118
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop119:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop119
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop11A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop11A
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop11B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop11B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop11C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop11C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop11D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop11D
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop11E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop11E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop11F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop11F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop120:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop120
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop121:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop121
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop122:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop122
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop123:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop123
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop124:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop124
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop125:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop125
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop126:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop126
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop127:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop127
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop128:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop128
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop129:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop129
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop12A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop12A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop12B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop12B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop12C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop12C
	dc.b	$02

UnderMagma_Loop12D:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop12D
	smpsPSGAlterVol     $FF

UnderMagma_Loop12E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop12E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop12F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop12F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop130:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop130
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop131:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop131
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop132:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop132
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop133:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop133
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop134:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop134
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop135:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop135
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop136:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop136
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop137:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop137
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop138:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop138
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop139:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop139
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop13A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop13A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop13B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop13B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop13C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop13C
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop13D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop13D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop13E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop13E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop13F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop13F
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop140:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop140
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop141:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop141
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop142:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop142
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FD

UnderMagma_Loop143:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop143
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop144:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop144
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop145:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop145
	dc.b	$02

UnderMagma_Loop146:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, UnderMagma_Loop146
	smpsPSGAlterVol     $FF

UnderMagma_Loop147:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop147
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop148:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop148
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop149:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop149
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

UnderMagma_Loop14A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop14A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop14B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop14B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop14C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop14C
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

UnderMagma_Loop14D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop14D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop14E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop14E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop14F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop14F
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FD

UnderMagma_Loop150:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop150
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop151:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop151
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop152:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop152
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FB

UnderMagma_Loop153:
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F3
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop153
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop154:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop154
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop155:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop155
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop156:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop156
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop157:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop157
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop158:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop158
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop159:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop159
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop15A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop15A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop15B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop15B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop15C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop15C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop15D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop15D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop15E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop15E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop15F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop15F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop160:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop160
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop161:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop161
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop162:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop162
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop163:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop163
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop164:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop164
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop165:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop165
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop166:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop166
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop167:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop167
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop168:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop168
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop169:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop169
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop16A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop16A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop16B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop16B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop16C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop16C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop16D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop16D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop16E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop16E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop16F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop16F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop170:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop170
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop171:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop171
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop172:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop172
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop173:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop173
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop174:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop174
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop175:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop175
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop176:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop176
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop177:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop177
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop178:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop178
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop179:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop179
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop17A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop17A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop17B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop17B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop17C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop17C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop17D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop17D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop17E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop17E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop17F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop17F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop180:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop180
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop181:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop181
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop182:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop182
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop183:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop183
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop184:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop184
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop185:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop185
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

UnderMagma_Loop186:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop186
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop187:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop187
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop188:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop188
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop189:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop189
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop18A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop18A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop18B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop18B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop18C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop18C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop18D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop18D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop18E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop18E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop18F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop18F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop190:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop190
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop191:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop191
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop192:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop192
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop193:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop193
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop194:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop194
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop195:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop195
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop196:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop196
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop197:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop197
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop198:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop198
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop199:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop199
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop19A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop19A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop19B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop19B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop19C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop19C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop19D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop19D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop19E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop19E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop19F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop19F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1A0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1A0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1A1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1A1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop1A2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1A2
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop1A3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1A3
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop1A4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop1A4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1A5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1A5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop1A6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1A6
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop1A7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1A7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1A8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1A8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1A9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1A9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop1AA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1AA
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop1AB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1AB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1AC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1AC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1AD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1AD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop1AE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1AE
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

UnderMagma_Loop1AF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1AF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1B0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1B1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop1B2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop1B3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B3
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1B4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B4
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1B5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop1B6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop1B7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B7
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1B8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1B9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1B9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop1BA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1BA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop1BB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1BB
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1BC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1BC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1BD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1BD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop1BE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1BE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop1BF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1BF
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1C0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1C0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1C1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1C1
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop1C2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1C2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop1C3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1C3
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1C4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1C4
	dc.b	nMaxPSG, nRst, $60
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop1C5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop1C5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1C6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1C6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1C7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1C7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1C8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1C8
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1C9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1C9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1CA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1CA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1CB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1CB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1CC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1CC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1CD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1CD
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1CE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1CE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1CF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1CF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1D0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1D0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1D1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1D1
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1D2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1D2
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop1D3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop1D3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1D4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1D4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop1D5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop1D5
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1D6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1D6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1D7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1D7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1D8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1D8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1D9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1D9
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1DA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1DA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1DB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1DB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1DC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1DC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1DD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1DD
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1DE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1DE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1DF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1DF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1E0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1E0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1E1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1E1
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1E2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1E2
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1E3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1E3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1E4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1E4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop1E5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop1E5
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1E6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1E6
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1E7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1E7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1E8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1E8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1E9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1E9
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1EA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1EA
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1EB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1EB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1EC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1EC
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1ED:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1ED
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1EE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1EE
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1EF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1EF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1F0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1F0
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1F1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1F1
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1F2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1F2
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop1F3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop1F3
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1F4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1F4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop1F5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop1F5
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1F6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1F6
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1F7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1F7
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1F8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1F8
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1F9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1F9
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1FA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1FA
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1FB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1FB
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1FC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1FC
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop1FD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop1FD
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop1FE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1FE
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop1FF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop1FF
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop200:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop200
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop201:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop201
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop202:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop202
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop203:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop203
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop204:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop204
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop205:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop205
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop206:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop206
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop207:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop207
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop208:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop208
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop209:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop209
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop20A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop20A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop20B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop20B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop20C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop20C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop20D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop20D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop20E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop20E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop20F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop20F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop210:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop210
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop211:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop211
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop212:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop212
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop213:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop213
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop214:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop214
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop215:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop215
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop216:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop216
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop217:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop217
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop218:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop218
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop219:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop219
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop21A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop21A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop21B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop21B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop21C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop21C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop21D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop21D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop21E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop21E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop21F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop21F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop220:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop220
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop221:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop221
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop222:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop222
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop223:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop223
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop224:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop224
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop225:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop225
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop226:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop226
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop227:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop227
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop228:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop228
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop229:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop229
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop22A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop22A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop22B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop22B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop22C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop22C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop22D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop22D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop22E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop22E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop22F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop22F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop230:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop230
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop231:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop231
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop232:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop232
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop233:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop233
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop234:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop234
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop235:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, UnderMagma_Loop235
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $03
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	dc.b	$02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $52
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop236:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop236
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop237:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop237
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop238:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop238
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop239:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop239
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop23A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop23A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop23B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop23B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop23C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop23C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop23D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop23D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop23E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop23E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop23F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop23F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop240:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop240
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop241:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop241
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop242:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop242
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop243:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop243
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop244:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop244
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop245:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop245
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

UnderMagma_Loop246:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, UnderMagma_Loop246
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop247:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop247
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop248:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop248
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop249:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop249
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop24A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop24A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop24B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop24B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop24C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop24C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop24D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop24D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

UnderMagma_Loop24E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop24E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

UnderMagma_Loop24F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop24F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5

UnderMagma_Loop250:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop250
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FB

UnderMagma_Loop251:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, UnderMagma_Loop251
	dc.b	nMaxPSG, nRst, $02
	smpsJump            UnderMagma_Jump05

UnderMagma_Voices:
;	Voice $00
;	$3B
;	$11, $10, $20, $60, 	$1F, $1F, $1F, $1E, 	$02, $0C, $13, $07
;	$12, $0A, $05, $04, 	$0F, $3F, $5F, $3F, 	$1D, $14, $17, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $02, $01, $01
	smpsVcCoarseFreq    $00, $00, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $13, $0C, $02
	smpsVcDecayRate2    $04, $05, $0A, $12
	smpsVcDecayLevel    $03, $05, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $14, $1D

;	Voice $01
;	$3D
;	$76, $74, $27, $23, 	$16, $16, $1F, $1F, 	$05, $05, $05, $05
;	$02, $02, $02, $02, 	$2A, $2A, $2A, $2A, 	$17, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $07, $07
	smpsVcCoarseFreq    $03, $07, $04, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $16, $16
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $0A
	smpsVcTotalLevel    $00, $00, $00, $17

;	Voice $02
;	$04
;	$30, $74, $70, $64, 	$00, $11, $1F, $11, 	$00, $06, $00, $06
;	$00, $03, $00, $03, 	$0B, $1E, $0E, $1E, 	$7F, $00, $7F, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $07, $07, $03
	smpsVcCoarseFreq    $04, $00, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $11, $1F, $11, $00
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $00, $06, $00
	smpsVcDecayRate2    $03, $00, $03, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0E, $0E, $0E, $0B
	smpsVcTotalLevel    $00, $7F, $00, $7F

;	Voice $03
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

;	Voice $04
;	$34
;	$50, $70, $53, $52, 	$5F, $5F, $5F, $5F, 	$0F, $0E, $09, $0F
;	$04, $04, $02, $02, 	$0F, $FF, $0F, $FF, 	$12, $04, $33, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $05, $07, $05
	smpsVcCoarseFreq    $02, $03, $00, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $09, $0E, $0F
	smpsVcDecayRate2    $02, $02, $04, $04
	smpsVcDecayLevel    $0F, $00, $0F, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $33, $04, $12

;	Voice $05
;	$3D
;	$76, $74, $27, $23, 	$12, $10, $12, $10, 	$05, $03, $05, $03
;	$07, $07, $07, $07, 	$83, $47, $63, $47, 	$17, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $07, $07
	smpsVcCoarseFreq    $03, $07, $04, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $12, $10, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $03, $05
	smpsVcDecayRate2    $07, $07, $07, $07
	smpsVcDecayLevel    $04, $06, $04, $08
	smpsVcReleaseRate   $07, $03, $07, $03
	smpsVcTotalLevel    $00, $00, $00, $17

;	Voice $06
;	$3D
;	$70, $01, $01, $01, 	$58, $5A, $5A, $5A, 	$0C, $04, $04, $13
;	$02, $03, $03, $09, 	$25, $27, $27, $27, 	$1C, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $07
	smpsVcCoarseFreq    $01, $01, $01, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1A, $1A, $1A, $18
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $04, $04, $0C
	smpsVcDecayRate2    $09, $03, $03, $02
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $07, $07, $07, $05
	smpsVcTotalLevel    $00, $00, $00, $1C

;	Voice $07
;	$07
;	$00, $01, $02, $04, 	$5D, $5D, $5D, $5D, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0C, $0C, $0C, $0C, 	$00, $02, $03, $04
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $02, $01, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1D, $1D, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0C, $0C, $0C, $0C
	smpsVcTotalLevel    $04, $03, $02, $00

;	Voice $08
;	$07
;	$00, $01, $02, $04, 	$5D, $5D, $5D, $5D, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$2A, $2A, $2A, $2A, 	$04, $00, $00, $00
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $02, $01, $00
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1D, $1D, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $0A
	smpsVcTotalLevel    $00, $00, $00, $04

;	Voice $09
;	$03
;	$18, $38, $68, $01, 	$1F, $1F, $1F, $0B, 	$1F, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$01, $01, $01, $04, 	$1A, $0C, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $03, $01
	smpsVcCoarseFreq    $01, $08, $08, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0B, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $1F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $04, $01, $01, $01
	smpsVcTotalLevel    $00, $15, $0C, $1A

;	Voice $0A
;	$3D
;	$76, $74, $27, $23, 	$16, $16, $1F, $1F, 	$05, $05, $05, $05
;	$02, $02, $02, $02, 	$2A, $2A, $0C, $0C, 	$1E, $00, $01, $02
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $02, $07, $07
	smpsVcCoarseFreq    $03, $07, $04, $06
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $16, $16
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $00, $00, $02, $02
	smpsVcReleaseRate   $0C, $0C, $0A, $0A
	smpsVcTotalLevel    $02, $01, $00, $1E

