Distracted_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Distracted_Voices
	smpsHeaderChan      $04, $03
	smpsHeaderTempo     $02, $08

	smpsHeaderDAC       Distracted_DAC
	smpsHeaderFM        Distracted_FM1,	$00, $1E
	smpsHeaderFM        Distracted_FM2,	$00, $1E
	smpsHeaderFM        Distracted_FM3,	$00, $1E
	smpsHeaderPSG       Distracted_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       Distracted_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Distracted_PSG3,	$00, $08, $00, fTone_02

; DAC Data
Distracted_DAC:
	dc.b	dSnare, $0C, $84, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C
	dc.b	dSnare, $0C, dKick, $0C, dSnare, $0C, dSnare, $0C, dSnare, $0C, dSnare, $0C
	dc.b	dSnare, $0C, dSnare, $0C, dKick, $0C, dKick, $0C, dKick, $0C, dKick, $0C
	dc.b	dSnare, $0C, dKick, $0C, dSnare, $0C, dSnare, $0C, dSnare, $0C, dKick, $0C
	dc.b	dKick, $0C, $84, $0C, dSnare, $0C, dSnare, $0C
	smpsStop

; FM1 Data
Distracted_FM1:
	smpsSetvoice        $00
	dc.b	nRst, $06, nG3, $03, nRst, $09, nE3, $03, nRst, $09, nG3, $03
	dc.b	nRst, $09, nG3, $03, nRst, $09, nG3, $03, nRst, $09, nE3, $03
	dc.b	nRst, $09, nG3, $03, nRst, $09, nG3, $03, nRst, $09, nG3, $03
	dc.b	nRst, $09, nG3, $03, nRst, $09, nE3, $03, nRst, $09, nG3, $03
	dc.b	nRst, $09, nG3, $03, nRst, $09, nE3, $03, nRst, $09, nE3, $03
	dc.b	nRst, $09, nE3, $03, nRst, $09, nG3, $03, nRst, $09, nG3, $03
	dc.b	nRst, $09, nG3, $03, nRst, $09, nG3, $03, nRst, $09, nG3, $03
	dc.b	nRst, $09, nE3, $03, nRst, $09, nG3, $03, nRst, $09, nE3, $03
	dc.b	nRst, $09, nE3, $03, nRst, $09, nG3, $03, nRst, $09, nG3, $03
	dc.b	nRst, $09, nG3, $03
	smpsStop

; FM2 Data
Distracted_FM2:
	smpsSetvoice        $01
	dc.b	nC3, $06, nRst, $06, nG3, $06, nRst, $06, nC3, $06, nG2, $06
	dc.b	nA2, $06, nB2, $06, nC3, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nC3, $06, nG2, $06, nA2, $06, nB2, $06, nC3, $06, nRst, $06
	dc.b	nG3, $06, nRst, $06, nC3, $06, nG2, $06, nA2, $06, nB2, $06
	dc.b	nC3, $06, nRst, $06, nG3, $06, nRst, $06, nC3, $06, nG2, $06
	dc.b	nA2, $06, nB2, $06, nC3, $06, nRst, $06, nG3, $06, nRst, $06
	dc.b	nC3, $06, nG2, $06, nA2, $06, nB2, $06, nC3, $06, nRst, $06
	dc.b	nG3, $06, nRst, $06, nC3, $06, nG2, $06, nA2, $06, nB2, $06
	dc.b	nC3, $06, nRst, $06, nG3, $06, nRst, $06, nC3, $06, nG2, $06
	dc.b	nA2, $06, nB2, $06
	smpsStop

; FM3 Data
Distracted_FM3:
	smpsSetvoice        $02
	dc.b	nRst, $06, nE5, $03, nRst, $09, nG5, $03, nRst, $09, nE5, $03
	dc.b	nRst, $09, nE5, $03, nRst, $09, nE5, $03, nRst, $09, nG5, $03
	dc.b	nRst, $09, nE5, $03, nRst, $09, nE5, $03, nRst, $09, nE5, $03
	dc.b	nRst, $09, nE5, $03, nRst, $09, nG5, $03, nRst, $09, nE5, $03
	dc.b	nRst, $09, nE5, $03, nRst, $09, nG5, $03, nRst, $09, nG5, $03
	dc.b	nRst, $09, nG5, $03, nRst, $09, nE5, $03, nRst, $09, nE5, $03
	dc.b	nRst, $09, nE5, $03, nRst, $09, nE5, $03, nRst, $09, nE5, $03
	dc.b	nRst, $09, nG5, $03, nRst, $09, nE5, $03, nRst, $09, nG5, $03
	dc.b	nRst, $09, nG5, $03, nRst, $09, nE5, $03, nRst, $09, nE5, $03
	dc.b	nRst, $09, nE5, $03
	smpsStop

; PSG3 Data
Distracted_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $06, nMaxPSG, $1E, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $1E, nMaxPSG, $06
	dc.b	nMaxPSG, $0C, nMaxPSG, $1E, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $30, nMaxPSG, $1E
	dc.b	nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $1E, nMaxPSG, $06, nMaxPSG, $0C, nMaxPSG, $1E
	dc.b	nMaxPSG, $06, nMaxPSG, $06
	smpsStop

; PSG1 Data
Distracted_PSG1:
; PSG2 Data
Distracted_PSG2:
	smpsStop

Distracted_Voices:
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
;	$3B
;	$3A, $31, $71, $74, 	$DF, $1F, $1F, $DF, 	$00, $0A, $0A, $05
;	$00, $05, $05, $03, 	$0F, $5F, $1F, $5F, 	$32, $1E, $0F, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $03, $03
	smpsVcCoarseFreq    $04, $01, $01, $0A
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $0A, $0A, $00
	smpsVcDecayRate2    $03, $05, $05, $00
	smpsVcDecayLevel    $05, $01, $05, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $1E, $32

;	Voice $02
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $00
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
	smpsVcReleaseRate   $08, $00, $00, $00
	smpsVcTotalLevel    $00, $13, $37, $19

