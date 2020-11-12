SA1Up_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SA1Up_Voices
	smpsHeaderChan      $05, $00
	smpsHeaderTempo     $02, $05

	smpsHeaderDAC       SA1Up_DAC
	smpsHeaderFM        SA1Up_FM1,	$00, $0E
	smpsHeaderFM        SA1Up_FM2,	$00, $0E
	smpsHeaderFM        SA1Up_FM3,	$00, $18

; DAC Data
SA1Up_DAC:
	dc.b	dHiTimpani, $12, $06, dVLowTimpani, $09, $09, $06, dHiTimpani, $06, dLowTimpani, dHiTimpani, dLowTimpani
	dc.b	dHiTimpani, $0C
	smpsStop

; DAC Data
;SA1Up_DAC:
;	dc.b	$85, $21, dSnare, $02, dSnare, $01, dSnare, $02, dSnare, $01, dSnare, $02
;	dc.b	dSnare, $01, dSnare, $02, dSnare, $01, dSnare, $02, dSnare, $0A, dSnare, $02
;	dc.b	dSnare, $0A, dSnare, $02, dSnare, $01, dKick, $03
;	smpsStop

; FM1 Data
SA1Up_FM1:
	smpsSetvoice        $07	; this is the main part of the song. originally Brass 1
	dc.b	nD5, $03, nRst, $03, nD5, $03, nD5, $03, nFs5, $03, nA5, $03
	dc.b	nD6, $06, nC6, $09, nB5, $09, nG5, $06, nFs5, $18
	smpsStop

; FM2 Data
SA1Up_FM2:
	smpsSetvoice        $00	; Supposed to be timpanis...
	dc.b	nD3, $03, nRst, $27, nA2, $02, nA2, $01, nA2, $02, nRst, $01
	dc.b	nD3, $03, nRst, $03, nA2, $03, nRst, $03, nD3, $03, nRst, $03
	dc.b	nA2, $03, nRst, $03, nD3, $03
	smpsStop

; FM4 Data
SA1Up_FM3:
	smpsSetvoice        $07	; supposed to be organ 3? backing part
	dc.b	nRst, $18, nC6, $09, nG5, $09, nC6, $06, nFs5, $18
	smpsStop

; Voices were not within the file: they are the first 1 voices located at 131 bytes from the start of the song.
; The following label is a dummy label and should be moved to the correct location.
SA1Up_Voices:
;	Voice $00	; nothing.
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $01	; slap bass.
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$20, $10, $10, $F8, 	$19, $37, $13, $80
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

;	Voice $02	; bells? like, ghz dudududududu bells.
;	$36
;	$0F, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$12, $11, $0E, $00
;	$00, $0A, $07, $09, 	$FF, $0F, $1F, $0F, 	$18, $80, $80, $80
	smpsVcAlgorithm     $06
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $0F
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0E, $11, $12
	smpsVcDecayRate2    $09, $07, $0A, $00
	smpsVcDecayLevel    $00, $01, $00, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $18

;	Voice $03	; brass??????? square??? sawtooth???????
;	$3D
;	$01, $02, $02, $02, 	$14, $0E, $8C, $0E, 	$08, $05, $02, $05
;	$00, $0D, $0D, $0D, 	$1F, $1F, $1F, $1F, 	$1A, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0E, $0C, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $05, $08
	smpsVcDecayRate2    $0D, $0D, $0D, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1A

;	Voice $04	; high pitched uh... not sure what this is
;	$2C
;	$72, $78, $34, $34, 	$1F, $12, $1F, $12, 	$00, $0A, $00, $0A
;	$00, $00, $00, $00, 	$0F, $1F, $0F, $1F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $08, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $00, $0A, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $05	; more high pitched weirdness
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $00, $00, $00
;	$00, $01, $00, $01, 	$0F, $3F, $0F, $3F, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $01, $00, $01, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $00, $16

;	Voice $06	; ghz lead
;	$04
;	$72, $42, $32, $32, 	$12, $12, $12, $12, 	$00, $08, $00, $08
;	$00, $08, $00, $08, 	$0F, $1F, $0F, $1F, 	$23, $80, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $00, $08, $00
	smpsVcDecayRate2    $08, $00, $08, $00
	smpsVcDecayLevel    $01, $00, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $07	; VERY brassy. might be the equivalent of Bass + Lead
;	$3D
;	$01, $02, $02, $02, 	$10, $50, $50, $50, 	$07, $08, $08, $08
;	$01, $00, $00, $00, 	$20, $17, $17, $17, 	$1C, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $07, $07, $07, $00
	smpsVcTotalLevel    $00, $00, $00, $1C

;	Voice $08	; mORE HIGH PITCHED STUFF.
;	$2C
;	$74, $74, $34, $34, 	$1F, $12, $1F, $1F, 	$00, $07, $00, $07
;	$00, $07, $00, $07, 	$00, $38, $00, $38, 	$16, $80, $17, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $12, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $00, $07, $00
	smpsVcDecayRate2    $07, $00, $07, $00
	smpsVcDecayLevel    $03, $00, $03, $00
	smpsVcReleaseRate   $08, $00, $08, $00
	smpsVcTotalLevel    $00, $17, $00, $16