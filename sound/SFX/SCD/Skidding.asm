CDSkidding_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     CDSkidding_Voices
	smpsHeaderTempoSFX  $01
	smpsHeaderChanSFX   $02

	smpsHeaderSFXChannel cFM4, CDSkidding_FM4,	$F5, $10
	smpsHeaderSFXChannel cFM5, CDSkidding_FM5,	$F6, $10

; FM4 Data
CDSkidding_FM4:
	smpsSetvoice        $00

CDSkidding_Loop00:
	dc.b	nBb3, $01, nRst, $01
	smpsLoop            $00, $0B, CDSkidding_Loop00
	smpsStop

; FM5 Data
CDSkidding_FM5:
	smpsSetvoice        $00
	dc.b	nRst, $01, nAb3, $01, nRst, $01
	smpsLoop            $00, $0B, CDSkidding_FM4
	smpsStop

CDSkidding_Voices:
;	Voice $00
;	$07
;	$07, $07, $08, $08, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$80, $80, $80, $80
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $08, $08, $07, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $00

