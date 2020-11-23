SMB2CharSel_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SMB2CharSel_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $3C

	smpsHeaderDAC       SMB2CharSel_DAC
	smpsHeaderFM        SMB2CharSel_FM1,	$00, $0B
	smpsHeaderFM        SMB2CharSel_FM2,	$00, $00
	smpsHeaderFM        SMB2CharSel_FM3,	$00, $0B
	smpsHeaderFM        SMB2CharSel_FM4,	$00, $0C
	smpsHeaderFM        SMB2CharSel_FM5,	$00, $00
	smpsHeaderFM        SMB2CharSel_FM6,	$00, $0E
	smpsHeaderPSG       SMB2CharSel_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       SMB2CharSel_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       SMB2CharSel_PSG3,	$00, $00, $00, fTone_02

; DAC Data
SMB2CharSel_DAC:
	smpsPan             panCenter, $00
	dc.b	nRst, $60

SMB2CharSel_Jump00:
	dc.b	nRst, $06, dSnare

SMB2CharSel_Loop00:
	dc.b	$0C
	smpsLoop            $00, $0C, SMB2CharSel_Loop00
	dc.b	$06, $06, $06, $02, $02, $02, $04, $02, $04, $02, $04, $08
	smpsLoop            $01, $02, SMB2CharSel_Loop00

SMB2CharSel_Loop01:
	dc.b	$0C
	smpsLoop            $00, $0C, SMB2CharSel_Loop01
	dc.b	$06, $06, $06, $1E

SMB2CharSel_Loop02:
	dc.b	$0C
	smpsLoop            $00, $0C, SMB2CharSel_Loop02
	dc.b	$06, $06, $06, $18
	smpsJump            SMB2CharSel_Jump00

; FM1 Data
SMB2CharSel_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsAlterNote       $05
	dc.b	nC5

SMB2CharSel_Loop0D:
	dc.b	$04, $02

SMB2CharSel_Loop0C:
	dc.b	nRst, $04, nC5, $02
	smpsLoop            $00, $03, SMB2CharSel_Loop0C
	smpsLoop            $01, $03, SMB2CharSel_Loop0D
	dc.b	nE5, $05, nRst, $07, nD5, $05, nRst, $07

SMB2CharSel_Jump04:
	smpsAlterVol        $02
	dc.b	nE5, $05, nRst, $07, nE5, $05, nRst, nE5, $02, nRst, $04, nC5
	dc.b	$02, nRst, $04, nA4, $02, nG4, $0B, nRst, $01, nC5, $05, nRst
	dc.b	$07, nC5, $05, nRst, nC5, $02, nRst, $04, nA4, $02, nRst, $04
	dc.b	nFs4, $02, nE4, $0B, nRst, $01, nE5, $05, nRst, $07, nE5, $05
	dc.b	nRst, nE5, $02, nRst, $04, nC5, $02, nRst, $04, nA4, $02, nE5
	dc.b	$05, nRst, $01, nE5, $05, nRst, $01, nC5, $03, nRst, $2D, nE5
	dc.b	$05, nRst, $07, nE5, $05, nRst, nE5, $02, nRst, $04, nC5, $02
	dc.b	nRst, $04, nA4, $02, nG4, $0B, nRst, $01, nC5, $05, nRst, $07
	dc.b	nC5, $05, nRst, nC5, $02, nRst, $04, nA4, $02, nRst, $04, nFs4
	dc.b	$02, nE4, $0B, nRst, $01, nE5, $05, nRst, $07, nE5, $05, nRst
	dc.b	nE5, $02, nRst, $04, nC5, $02, nRst, $04, nA4, $02, nE5, $05
	dc.b	nRst, $01, nE5, $05, nRst, $01, nC5, $03, nRst, $1B
	smpsSetvoice        $02
	smpsAlterNote       $0E
	smpsAlterVol        $FD
	dc.b	nC5, $06, nD5, nEb5, nE5, nRst, nE5, nRst, $04, nE5, $02, nRst
	dc.b	$04, nD5, $06, nRst, $02, nD5, $06, nE5, nD5, $03, nRst, nC5
	dc.b	nRst, nC5, $02, nB4, $04, nRst, nC5, $06, nRst, $02, nA4, $06
	dc.b	nB4, nC5, nD5, nRst, nD5, nRst, $04, nD5, $02, nRst, $04, nC5
	dc.b	$06, nRst, $02, nB4, $06, nA4, $03, nRst, $09, nB4, $06, nC5
	dc.b	nCs5, nD5, nRst, $0A, nG4, $06, nRst, $02
	smpsSetvoice        $00
	smpsAlterNote       $07
	smpsAlterVol        $06
	dc.b	nE5, $04, nEb5, $02, nE5, $04, nB5, $02, nAb5, $04, nE5, $02
	dc.b	nE6, $04, nB5, $02, nD6, $04, nB5, $02, nA5, $04, nB5, $02
	dc.b	nAb5, $04, nF5, $02, nE5, $04, nD5, $02, nC5, $04, nB4, $02
	dc.b	nC5, $04, nD5, $02, nE5, $04, nEb5, $02, nE5, $04, nA5, $02
	dc.b	nAb5, $04, nE5, $02, nD5, $04, nEb5, $02, nA5, $04, nE5, $02
	dc.b	nG5, $04, nFs5, $02, nF5, $04, nE5, $02, nF5, $04, nA5, $02
	dc.b	nE6, $04, nD6, $02, nA5, $04, nAb5, $02, nG5, $04, nE6, $02
	dc.b	nG5, $04, nFs5, $02, nF5, $04, nD6, $02, nA5, $04, nBb5, $02
	dc.b	nB5, $04, nBb5, $02, nB5, $04, nA5, $02, nG5, $04, nF5, $02
	dc.b	nA4, $04, nB4, $02, nG5, $04, nF5, $02, nB4, $04, nA4, $02
	dc.b	nF5, $04, nB4, $02, nA4, $04, nG4, $02
	smpsAlterVol        $FB
	smpsJump            SMB2CharSel_Jump04

; FM3 Data
SMB2CharSel_FM3:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nC4

SMB2CharSel_Loop07:
	dc.b	$04, $02

SMB2CharSel_Loop06:
	dc.b	nRst, $04, nC4, $02
	smpsLoop            $00, $03, SMB2CharSel_Loop06
	smpsLoop            $01, $03, SMB2CharSel_Loop07
	dc.b	nG3, $05, nRst, $07, nB3, $05, nRst, $07

SMB2CharSel_Jump03:
	smpsAlterVol        $FE

SMB2CharSel_Loop08:
	dc.b	nC3, $06, nRst
	smpsLoop            $00, $04, SMB2CharSel_Loop08

SMB2CharSel_Loop09:
	dc.b	nD3, nRst
	smpsLoop            $00, $04, SMB2CharSel_Loop09

SMB2CharSel_Loop0A:
	dc.b	nG3, nRst
	smpsLoop            $00, $04, SMB2CharSel_Loop0A
	dc.b	nC3, $03, nRst, $2D
	smpsLoop            $01, $02, SMB2CharSel_Loop08

SMB2CharSel_Loop0B:
	dc.b	nE3, $06, nRst, nFs3, nRst, nG3, nRst, nAb3, nB3, nA3, nRst, nB3
	dc.b	nRst, nC4, nRst, nB3, nA3, nD3, nRst, nE3, nRst, nF3, nRst, nFs3
	dc.b	nA3, nRst, nG3, nA3, nBb3, nB3, nRst, $12
	smpsLoop            $00, $02, SMB2CharSel_Loop0B
	smpsAlterVol        $02
	smpsJump            SMB2CharSel_Jump03

; FM4 Data
SMB2CharSel_FM4:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	smpsAlterNote       $07
	dc.b	nG4, $04, $02

SMB2CharSel_Loop03:
	dc.b	nRst, $04, nG4, $02
	smpsLoop            $00, $03, SMB2CharSel_Loop03
	dc.b	nFs4, $04, $02

SMB2CharSel_Loop04:
	dc.b	nRst, $04, nFs4, $02
	smpsLoop            $00, $03, SMB2CharSel_Loop04
	dc.b	nF4, $04, $02

SMB2CharSel_Loop05:
	dc.b	nRst, $04, nF4, $02
	smpsLoop            $00, $03, SMB2CharSel_Loop05
	dc.b	nB4, $05, nRst, $07, nF4, $05, nRst, $07

SMB2CharSel_Jump02:
	smpsSetvoice        $00
	smpsAlterNote       $07
	smpsAlterVol        $01
	dc.b	nG4, $05, nRst, $07, nG4, $05, nRst, nG4, $02, nRst, $04, nE4
	dc.b	$02, nRst, $04, nE4, $02, nC4, $0B, nRst, $01, nFs4, $05, nRst
	dc.b	$07, nFs4, $05, nRst, nFs4, $02, nRst, $04, nD4, $02, nRst, $04
	dc.b	nD4, $02, nC4, $0B, nRst, $01, nF4, $05, nRst, $07, nF4, $05
	dc.b	nRst, nF4, $02, nRst, $04, nD4, $02, nRst, $04, nB3, $02, nG4
	dc.b	$05, nRst, $01, nG4, $05, nRst, $01, nE4, $03, nRst, $2D, nG4
	dc.b	$05, nRst, $07, nG4, $05, nRst, nG4, $02, nRst, $04, nE4, $02
	dc.b	nRst, $04, nE4, $02, nC4, $0B, nRst, $01, nFs4, $05, nRst, $07
	dc.b	nFs4, $05, nRst, nFs4, $02, nRst, $04, nD4, $02, nRst, $04, nD4
	dc.b	$02, nC4, $0B, nRst, $01, nF4, $05, nRst, $07, nF4, $05, nRst
	dc.b	nF4, $02, nRst, $04, nD4, $02, nRst, $04, nB3, $02, nG4, $05
	dc.b	nRst, $01, nG4, $05, nRst, $01, nE4, $03, nRst, $1B
	smpsSetvoice        $02
	smpsAlterNote       $13
	smpsAlterVol        $FD
	dc.b	nE4, $06, nF4, nFs4, nAb4, nRst, nAb4, nRst, $04, nAb4, $02, nRst
	dc.b	$04, nFs4, $06, nRst, $02, nFs4, $06, nAb4, nE4, $03, nRst, nE4
	dc.b	nRst, nE4, $02, nD4, $04, nRst, nE4, $06, nRst, $02, nC4, $06
	dc.b	nD4, nE4, nFs4, nRst, nFs4, nRst, $04, nFs4, $02, nRst, $04, nE4
	dc.b	$06, nRst, $02, nD4, $06, nC4, $03, nRst, $09, nD4, $06, nE4
	dc.b	nF4, nFs4, nRst, $0A, nB3, $06, nRst, $02, nE5, $06, nRst, nE5
	dc.b	nRst, $04, nE5, $02, nRst, $04, nD5, $06, nRst, $02, nD5, $06
	dc.b	nE5, nD5, $03, nRst, nC5, nRst, nC5, $02, nB4, $04, nRst, nC5
	dc.b	$06, nRst, $02, nA4, $06, nB4, nC5, nD5, nRst, nD5, nRst, $04
	dc.b	nD5, $02, nRst, $04, nC5, $06, nRst, $02, nB4, $06, nA4, $03
	dc.b	nRst, $09, nB4, $06, nC5, nCs5, nD5, nRst, $0A, nG4, $06, nRst
	dc.b	$02
	smpsAlterVol        $02
	smpsJump            SMB2CharSel_Jump02

; FM6 Data
SMB2CharSel_FM6:
	dc.b	nRst, $60

SMB2CharSel_Jump01:
	dc.b	nRst, $60, $60, $60, $60, $60, $60
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	smpsAlterNote       $17
	dc.b	nAb4, $06, nRst, nAb4, nRst, $04, nAb4, $02, nRst, $04, nFs4, $06
	dc.b	nRst, $02, nFs4, $06, nAb4, nE4, $03, nRst, nE4, nRst, nE4, $02
	dc.b	nD4, $04, nRst, nE4, $06, nRst, $02, nC4, $06, nD4, nE4, nF4
	dc.b	nRst, nF4, nRst, $04, nF4, $02, nRst, $04, nE4, $06, nRst, $02
	dc.b	nD4, $06, nC4, $03, nRst, $09, nD4, $06, nE4, nF4, nF4, nRst
	dc.b	$0A, nB3, $06, nRst, $02
	smpsJump            SMB2CharSel_Jump01

; PSG3 Data
SMB2CharSel_PSG3:
	smpsPSGform         $E7
	dc.b	nMaxPSG, $18, $18, $18, $0C, $0C

SMB2CharSel_Jump05:
	dc.b	nMaxPSG

SMB2CharSel_Loop0E:
	dc.b	$06
	smpsLoop            $00, $1C, SMB2CharSel_Loop0E
	dc.b	$02, $02, $02, $04, $02, $04, $02, $04, $02
	smpsLoop            $01, $02, SMB2CharSel_Loop0E

SMB2CharSel_Loop0F:
	dc.b	$06
	smpsLoop            $00, $1D, SMB2CharSel_Loop0F
	dc.b	$0C, $06
	smpsLoop            $01, $02, SMB2CharSel_Loop0F
	smpsJump            SMB2CharSel_Jump05

; FM2 Data
SMB2CharSel_FM2:
; FM5 Data
SMB2CharSel_FM5:
; PSG1 Data
SMB2CharSel_PSG1:
; PSG2 Data
SMB2CharSel_PSG2:
	smpsStop

SMB2CharSel_Voices:
;	Voice $00
;	$3A
;	$01, $07, $31, $71, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $06
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $2F, 	$18, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $03, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $18

;	Voice $01
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

;	Voice $02
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

