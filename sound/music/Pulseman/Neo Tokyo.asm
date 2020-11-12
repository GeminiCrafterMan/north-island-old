NeoTokyo_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     NeoTokyo_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       NeoTokyo_DAC
	smpsHeaderFM        NeoTokyo_FM1,	$00, $00
	smpsHeaderFM        NeoTokyo_FM2,	$00, $00
	smpsHeaderFM        NeoTokyo_FM3,	$00, $00
	smpsHeaderFM        NeoTokyo_FM4,	$00, $00
	smpsHeaderFM        NeoTokyo_FM5,	$00, $00
	smpsHeaderPSG       NeoTokyo_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       NeoTokyo_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       NeoTokyo_PSG3,	$00, $00, $00, $00

; DAC Data
NeoTokyo_DAC:
	smpsStop

; FM1 Data
NeoTokyo_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $14
	smpsPan             panCenter, $00
	smpsAlterNote       $04
	dc.b	nAb1, $04
	smpsAlterNote       $06
	dc.b	nBb1, $05, $06, nRst, $05, nBb1, nBb1, $06, nRst, $0A, nBb1, $06
	dc.b	nRst, $05
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, nRst, $05
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, $05, nRst, $0B, nBb1, $05, nRst
	smpsAlterNote       $00
	dc.b	nB1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nRst
	smpsAlterNote       $04
	dc.b	nAb1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nBb1, nRst, $0B, nBb1, $05
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nB1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05, nBb1, nRst, $06
	smpsAlterNote       $04
	dc.b	nAb1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05, nBb1, nBb1, $06, nRst, $0A, nBb1, $06
	dc.b	nRst, $05
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, nRst, $05
	smpsAlterNote       $04
	dc.b	nAb1, $01

NeoTokyo_Jump04:
	dc.b	smpsNoAttack, nAb1, $04

NeoTokyo_Loop01:
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, $05, nRst, $0B, nBb1, $05, nRst
	smpsAlterNote       $00
	dc.b	nB1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nRst
	smpsAlterNote       $04
	dc.b	nAb1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nBb1, nRst, $0B, nBb1, $05
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nB1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05, nBb1, nRst, $06
	smpsAlterNote       $04
	dc.b	nAb1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05, nBb1, nBb1, $06, nRst, $0A, nBb1, $06
	dc.b	nRst, $05
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, nRst, $05
	smpsAlterNote       $04
	dc.b	nAb1
	smpsLoop            $00, $06, NeoTokyo_Loop01
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, $05, nRst, $0B, nBb1, $05, nRst
	smpsAlterNote       $00
	dc.b	nB1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nRst
	smpsAlterNote       $04
	dc.b	nAb1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nBb1, nRst, $0B, nBb1, $05
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nB1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05, nBb1, nRst, $06
	smpsAlterNote       $04
	dc.b	nAb1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, nRst, $05
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, nRst, $05
	smpsAlterNote       $04
	dc.b	nAb1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst
	smpsAlterNote       $04
	dc.b	nAb1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nRst
	smpsAlterNote       $00
	dc.b	nB1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06
	smpsAlterNote       $04
	dc.b	nC2, $05, nRst
	smpsAlterNote       $06
	dc.b	nBb1, $06
	smpsAlterNote       $04
	dc.b	nD2, $05, nD2, nRst, $0B, nD2, $05, $06, nRst, $05, nD2, nRst
	dc.b	$06, nEb2, $05, nD2, nD2, $06, nRst, $05, nD2, nRst, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05
	smpsAlterNote       $04
	dc.b	nD2, nD2, $06, nRst, $0A, nD2, $06, $05, nRst, nD2, $06, nRst
	dc.b	$05, nEb2, nD2, $06, $05, nRst, nD2, $06, nRst, $05, nAb1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst
	smpsAlterNote       $04
	dc.b	nAb1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nRst
	smpsAlterNote       $00
	dc.b	nB1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nRst
	smpsAlterNote       $04
	dc.b	nAb1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06
	smpsAlterNote       $04
	dc.b	nAb1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05, nBb1, nRst, $06
	smpsAlterNote       $00
	dc.b	nB1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05
	smpsAlterNote       $04
	dc.b	nC2, nRst, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05
	smpsAlterNote       $04
	dc.b	nD2, nD2, $06, nRst, $0A, nD2, $06, $05, nRst, nD2, $06, nRst
	dc.b	$05, nEb2, nD2, $06, $05, nRst, nD2, $06, nRst, $05
	smpsAlterNote       $06
	dc.b	nBb1
	smpsAlterNote       $04
	dc.b	nD2, $06, $05, nRst, $0B, nD2, $05, nD2, nRst, $06, nD2, $05
	dc.b	nRst, nEb2, $06, nD2, $05, nD2, nRst, $06, nD2, $05, nRst
	smpsAlterNote       $06
	dc.b	nBb1, $06
	smpsAlterNote       $04
	dc.b	nD2, $05, nD2, nRst, $06, nD2, $05, nD2, nRst, $0B, nD2, $05
	dc.b	nRst, $06, nEb2, $05, nD2, nD2, $06, nRst, $05, nD2, nRst, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05
	smpsAlterNote       $04
	dc.b	nD2, nD2, $06, nRst, $05, nD2, nD2, $06, nRst, $0A, nD2, $06
	dc.b	nRst, $05, nEb2, nD2, $06, $05, nRst, nD2, $06, nRst, $05

NeoTokyo_Loop02:
	dc.b	nAb1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, $05, nRst, $0B, nBb1, $05, nRst
	smpsAlterNote       $00
	dc.b	nB1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nRst
	smpsAlterNote       $04
	dc.b	nAb1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nBb1, nRst, $0B, nBb1, $05
	dc.b	nRst, $06
	smpsAlterNote       $00
	dc.b	nB1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05, nBb1, nRst, $06
	smpsAlterNote       $04
	dc.b	nAb1, $05
	smpsAlterNote       $06
	dc.b	nBb1, nBb1, $06, nRst, $05, nBb1, nBb1, $06, nRst, $0A, nBb1, $06
	dc.b	nRst, $05
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, nRst, $05
	smpsAlterNote       $04
	smpsLoop            $00, $03, NeoTokyo_Loop02
	dc.b	nAb1
	smpsAlterNote       $06
	dc.b	nBb1, $06, $05, nRst, nBb1, $06, $05, nRst, $0B, nBb1, $05, nRst
	smpsAlterNote       $00
	dc.b	nB1, $06
	smpsAlterNote       $06
	dc.b	nBb1, $05, nBb1, nRst, $06, nBb1, $05, nRst
	smpsAlterNote       $04
	dc.b	nAb1, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $04
	smpsJump            NeoTokyo_Jump04

; FM2 Data
NeoTokyo_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $18
	smpsPan             panCenter, $00
	dc.b	nEb4, $29, nRst, $2B, nEb4, nRst, $2A, nF4, $2B, nRst, nF4, $2A
	dc.b	nRst, $2B
	smpsSetvoice        $04
	dc.b	smpsNoAttack, $01

NeoTokyo_Jump03:
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nEb4
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nEb3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nEb4, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nEb3, $05, nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3, nEb3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF4, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nEb3, nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF4
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsSetvoice        $01
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	nEb4, $2A, nRst, $2B, nEb4, $2A, nRst, $2B, nF4, nRst, $2A, nF4
	dc.b	$2B, nRst, nEb4, $2A, nRst, $2B, nEb4, nRst, $2A, nF4, $2B, nRst
	dc.b	nF4, $2A, nRst, $2B, nEb4, nRst, $2A, nEb4, $2B, nRst, nF4, $2A
	dc.b	nRst, $2B, nF4, nRst, $2A, nEb4, $2B, nRst, nEb4, $2A, nRst, $2B
	dc.b	nF4, nRst, $2A
	smpsSetvoice        $07
	smpsAlterVol        $F9
	dc.b	smpsNoAttack, $01, nD5, $55, nC5, $05, nRst, nC5, $06, nRst, $05, nAb4
	dc.b	$2B, nRst, $15, nAb4, $05, nRst, $06, nAb4, $05, nRst, nEb4, $2B
	dc.b	nAb4, $15, nF4, $7F, smpsNoAttack, $2C, nC5, $05, nRst, $06, nC5, $05
	dc.b	nRst, nAb4, $2B, nRst, $15, nAb4, $06, nRst, $05, nAb4, nRst, $06
	dc.b	nEb4, $2A, nAb4, $16, nF4, $7F, smpsNoAttack, $2B, nEb4, $40, nD4, $16
	dc.b	nEb4, $15, nD4, nEb4, $0B, nD4, nEb4, $0A, nE4, $0B, nF4, $2B
	dc.b	nRst, $2A, nF4, $2B, nRst
	smpsSetvoice        $04
	smpsAlterVol        $07
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3, nEb3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nEb4, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nEb3, nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nEb4
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nEb3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF4, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nEb3, $05, nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3, nEb3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF4, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nEb3, nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nEb4
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nEb3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nEb4, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nEb3, $05, nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3, nEb3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF4, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nEb3, nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF4
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsSetvoice        $01
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            NeoTokyo_Jump03

; FM3 Data
NeoTokyo_FM3:
	smpsSetvoice        $02
	smpsAlterVol        $18
	smpsPan             panRight, $00
	smpsAlterNote       $FE
	dc.b	nF3, $29, nRst, $2B, nF3, nRst, $2A, nF3, $2B, nRst, nF3, $2A
	dc.b	nRst, $2C

NeoTokyo_Jump02:
	dc.b	nF3, $2A, nRst, nF3, $2B, nRst, nF3, $2A, nRst, $2B, nF3, nRst
	smpsSetvoice        $06
	smpsAlterVol        $FC
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	dc.b	nBb4, $2A
	smpsAlterNote       $FE
	dc.b	nAb4, $2B, nC5, $2A, nAb4, $2B
	smpsAlterNote       $00
	dc.b	nBb4, $40
	smpsAlterNote       $FE
	dc.b	nC5, $0B
	smpsAlterNote       $00
	dc.b	nBb4, $0A
	smpsAlterNote       $FE
	dc.b	nAb4, $2B, nEb4
	smpsAlterNote       $00
	dc.b	nBb4, $2A
	smpsAlterNote       $FE
	dc.b	nAb4, $2B, nC5, nAb4, $15, nF4, $0B, nAb4, $0A
	smpsAlterNote       $00
	dc.b	nBb4, $40
	smpsAlterNote       $FE
	dc.b	nF4, $0B, nG4, nAb4, $15, nEb4, $0B, nF4, $0A
	smpsAlterNote       $00
	dc.b	nBb3, $2B, nBb4
	smpsAlterNote       $FE
	dc.b	nAb4, $2A, nC5, $2B, nAb4
	smpsAlterNote       $00
	dc.b	nBb4, $40
	smpsAlterNote       $FE
	dc.b	nC5, $0A
	smpsAlterNote       $00
	dc.b	nBb4, $0B
	smpsAlterNote       $FE
	dc.b	nAb4, $2B, nEb4, $2A
	smpsAlterNote       $00
	dc.b	nBb4, $2B
	smpsAlterNote       $FE
	dc.b	nAb4, nC5, $2A, nAb4, $16, nF4, $0A, nAb4, $0B
	smpsAlterNote       $00
	dc.b	nBb4, $56, $55
	smpsSetvoice        $08
	smpsAlterVol        $04
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $01
	dc.b	nRst, $14
	smpsAlterNote       $FE
	dc.b	nC4, $2B, nRst, $2A, nAb3, $2B, nRst, $40
	smpsAlterNote       $00
	dc.b	nBb3, $2B
	smpsAlterNote       $FE
	dc.b	nD4, $2A
	smpsAlterNote       $00
	dc.b	nBb3, $2B, nRst, $15
	smpsAlterNote       $FE
	dc.b	nC4, $2B, nRst, nAb3, $2A, nRst, $40
	smpsAlterNote       $00
	dc.b	nBb3, $2B
	smpsAlterNote       $FE
	dc.b	nD4
	smpsAlterNote       $00
	dc.b	nBb3, $2A
	smpsAlterNote       $FE
	dc.b	nC4, $40
	smpsAlterNote       $00
	dc.b	nBb3, $16
	smpsAlterNote       $FE
	dc.b	nC4, $15
	smpsAlterNote       $00
	dc.b	nBb3
	smpsAlterNote       $FE
	dc.b	nC4, $0B
	smpsAlterNote       $00
	dc.b	nBb3
	smpsAlterNote       $FE
	dc.b	nC4, $0A
	smpsAlterNote       $00
	dc.b	nCs4, $0B
	smpsAlterNote       $FE
	dc.b	nD4, $2B, nRst, $2A, nD4, $2B
	smpsSetvoice        $0A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $0B
	smpsAlterNote       $00
	dc.b	nBb2, $2B
	smpsSetvoice        $02
	smpsPan             panRight, $00
	dc.b	nRst, $7F, $7F, $56
	smpsAlterNote       $FE
	dc.b	nF3, $2B, nRst, $2A, nF3, $2B, nRst, nF3, $2A, nRst, $2B, nF3
	dc.b	nRst
	smpsPan             panRight, $00
	smpsJump            NeoTokyo_Jump02

; FM4 Data
NeoTokyo_FM4:
	smpsSetvoice        $03
	smpsAlterVol        $10
	smpsPan             panLeft, $00
	smpsAlterNote       $04
	dc.b	nBb3, $29, nRst, $2C, nBb3, $2A

NeoTokyo_Loop00:
	dc.b	nRst, $2B, nBb3, $2A, nRst, $2C, nBb3, $29, nRst, $2C

NeoTokyo_Jump01:
	dc.b	nBb3, $2A
	smpsLoop            $00, $02, NeoTokyo_Loop00
	dc.b	nRst, $2B
	smpsSetvoice        $04
	smpsAlterVol        $08
	smpsPan             panCenter, $00
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nEb3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nRst, $01
	smpsAlterNote       $FE
	dc.b	nBb3, $04
	smpsAlterNote       $FC
	dc.b	nEb4, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nEb3, $05, nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3, nEb3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, nRst, $01
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nEb4
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nEb3, nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF4
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nEb3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nRst, $01
	smpsAlterNote       $FE
	dc.b	nBb3, $04
	smpsAlterNote       $FC
	dc.b	nEb4, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nEb3, $05, nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3, nEb3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, nRst, $01
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nEb4
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nEb3, nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06, nRst, $01
	smpsAlterNote       $FE
	dc.b	nBb3, $04
	smpsAlterNote       $FC
	dc.b	nEb4, $05
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nEb3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF4, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nEb3, $05, nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3, nEb3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, nRst, $01
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nEb4
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nEb3, nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nEb4
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nEb3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nRst, $01
	smpsAlterNote       $FE
	dc.b	nBb3, $04
	smpsAlterNote       $FC
	dc.b	nEb4, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nEb3, $05, nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3, nEb3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF4, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nEb3, nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nEb4
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nEb3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nRst, $01
	smpsAlterNote       $FE
	dc.b	nBb3, $04
	smpsAlterNote       $FC
	dc.b	nEb4, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nEb3, $05, nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06, nRst, $01
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3, nEb3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nF3, nRst, $01
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nEb4
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb2, $05
	smpsAlterNote       $FC
	dc.b	nEb3, nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $04
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF3, $06, nEb3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF4
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nEb3, $06, nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb2
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05, nEb3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nF3, $05
	smpsAlterNote       $FE
	dc.b	nBb3
	smpsAlterNote       $FC
	dc.b	nF4, $06
	smpsAlterNote       $FE
	dc.b	nBb3, $05
	smpsAlterNote       $FC
	dc.b	nF3
	smpsAlterNote       $FE
	dc.b	nBb2, $06
	smpsAlterNote       $FC
	dc.b	nEb3, $05, nF3
	smpsAlterNote       $FE
	dc.b	nBb3, $07
	smpsSetvoice        $09
	smpsAlterNote       $02
	dc.b	nC4, $04, nRst, $05, nC4, $06, nRst, nAb3, $2A, nRst, $15, nAb3
	dc.b	$05, nRst, $06, nAb3, $05, nRst, $06, nEb3, $2A, nRst, $01, nC3
	dc.b	$14, nF3, $56, nRst, $01, nF3, $54, nRst, $01, nC4, $04, nRst
	dc.b	$06, nC4, $05, nRst, $06, nAb3, $2A, nRst, $15, nAb3, $06, nRst
	dc.b	$05, nAb3, nRst, $07, nEb3, $29, nRst, $01, nC3, $15, nF3, $55
	dc.b	nRst, $01, nF3, $55, nAb3, $40, nG3, $15, nRst, $01, nAb3, $14
	dc.b	nRst, $01, nG3, $14, nRst, $01, nAb3, $0A, nRst, $01, nG3, $0A
	dc.b	nRst, $01, nAb3, $09, nRst, $01
	smpsAlterNote       $00
	dc.b	nA3, $0B
	smpsAlterNote       $04
	dc.b	nBb3, $2A, nRst, $2B, nBb3, nRst, $7F, $7F, $7F, $03
	smpsSetvoice        $03
	smpsAlterVol        $F8
	smpsPan             panLeft, $00
	dc.b	nBb3, $2A, nRst, $2B, nBb3, $2A, nRst, $2C, nBb3, $29, nRst, $2C
	dc.b	nBb3, $2A, nRst, $2B
	smpsPan             panLeft, $00
	smpsJump            NeoTokyo_Jump01

; FM5 Data
NeoTokyo_FM5:
	smpsSetvoice        $04
	smpsAlterVol        $18
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $57

NeoTokyo_Jump00:
	smpsSetvoice        $01
	dc.b	nEb4, $2A, nRst, $2B, nEb4, nRst, nF4, $29, nRst, $2C, nF4, $2B
	dc.b	nRst, $35
	smpsSetvoice        $06
	smpsAlterNote       $02
	dc.b	nBb4, $2A
	smpsAlterNote       $00
	dc.b	nAb4, nC5, $2B, nAb4
	smpsAlterNote       $02
	dc.b	nBb4, $40, nRst, $01
	smpsAlterNote       $00
	dc.b	nC5, $0A
	smpsAlterNote       $02
	dc.b	nBb4
	smpsAlterNote       $00
	dc.b	nAb4, $2B, nEb4, $2A
	smpsAlterNote       $02
	dc.b	nBb4, $2B
	smpsAlterNote       $00
	dc.b	nAb4, nC5, $2A, nRst, $01, nAb4, $15, nRst, $01, nF4, $0A, nAb4
	smpsAlterNote       $02
	dc.b	nBb4, $40, nRst, $01
	smpsAlterNote       $00
	dc.b	nF4, $0B, nG4, $09, nAb4, $16, nRst, $01, nEb4, $0A, nF4
	smpsAlterNote       $02
	dc.b	nBb3, $2B, nBb4, $2A
	smpsAlterNote       $00
	dc.b	nAb4, $2B, nC5, nAb4, $2A
	smpsAlterNote       $02
	dc.b	nBb4, $41
	smpsAlterNote       $00
	dc.b	nC5, $0B
	smpsAlterNote       $02
	dc.b	nBb4, $0A
	smpsAlterNote       $00
	dc.b	nAb4, $2A, nRst, $01, nEb4, $2A
	smpsAlterNote       $02
	dc.b	nBb4, $2B
	smpsAlterNote       $00
	dc.b	nAb4, $2A, nC5, $2B, nAb4, $15, nRst, $01, nF4, $0B, nAb4, $0A
	smpsAlterNote       $02
	dc.b	nBb4, $4B
	smpsSetvoice        $01
	smpsAlterNote       $00
	dc.b	nF4, $56
	smpsSetvoice        $04
	smpsAlterNote       $FC
	dc.b	nAb3, $04, nC3, $06, nAb3, $05, nC4, $06, nAb3, $04, nF3, $06
	dc.b	nC3, $05, nAb3, nC4, $06, nAb4, $05, nC4, nAb3, $06, nRst, $01
	dc.b	nC3, $04, nF3, $05, nAb3, $06, nC4, nAb3, $04, nC3, $06, nRst
	dc.b	$01, nAb3, $04, nC4, $06, nAb3, $05, nF3, nC3, nAb3, $06, nC4
	dc.b	$05, nAb4, nC4, $06, nAb3, nC3, $04, nF3, $06, nAb3, $05, nC4
	dc.b	$06, nRst, $7F, $2C, nAb3, $04, nC3, $06, nRst, $01, nAb3, $04
	dc.b	nC4, $06, nAb3, $05, nF3, nC3, nAb3, $06, nC4, $05, nAb4, nC4
	dc.b	$06, nAb3, $05, nRst, $01, nC3, $04, nF3, $06, nAb3, $05, nC4
	dc.b	$06, nAb3, $05, nC3, nRst, $01, nAb3, $04, nC4, $07, nAb3, $04
	dc.b	nF3, $05, nC3, $06, nAb3, $05, nC4, nAb4, $06, nC4, $05, nAb3
	dc.b	$06, nC3, $05, nF3, nAb3, nC4, $06, nRst, $7F, $7F, $7F, $7F
	dc.b	$7F, $7F, $5C
	smpsSetvoice        $01
	smpsAlterNote       $00
	dc.b	nEb4, $2A, nRst, $2B, nEb4, $2A, nRst, $2C, nF4, $29, nRst, $2C
	dc.b	nF4, $2B, nRst, $2A
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	smpsJump            NeoTokyo_Jump00

; PSG1 Data
NeoTokyo_PSG1:
	smpsPSGAlterVol     $03
	dc.b	nBb1, $14, nRst, $41, nBb1, $14

NeoTokyo_Loop162:
	dc.b	nRst, $41, nBb1, $14, nRst, $42, nBb1, $14, nRst, $41

NeoTokyo_Jump07:
	dc.b	nBb1, $14
	smpsLoop            $00, $04, NeoTokyo_Loop162
	dc.b	nRst, $41, nBb1, $14, nRst, $42, nBb1, $15, nRst, $40

NeoTokyo_Loop163:
	dc.b	nBb1, $14, nRst, $41, nBb1, $14, nRst, $42, nBb1, $14, nRst, $41
	smpsLoop            $00, $02, NeoTokyo_Loop163
	dc.b	nBb1, $14, nRst, $41, nBb1, $14, nRst

NeoTokyo_Loop164:
	dc.b	$7F
	smpsLoop            $00, $07, NeoTokyo_Loop164
	dc.b	$1E, nBb1, $14, nRst, $41, nBb1, $14, nRst, $7F, $7F, $7F, $1A
	dc.b	nBb1, $14, nRst, $41, nBb1, $14, nRst, $42, nBb1, $14, nRst, $41
	dc.b	nBb1, $14, nRst, $41
	smpsJump            NeoTokyo_Jump07

; PSG2 Data
NeoTokyo_PSG2:
	smpsPSGAlterVol     $03
	dc.b	nEb2, $14, nRst, $41, nEb2, $14, nRst, $41, nF2, $14, nRst, $42
	dc.b	nF2, $14, nRst, $41

NeoTokyo_Jump06:
	dc.b	nEb2, $14, nRst, $41, nEb2, $14, nRst, $42, nF2, $14, nRst, $41
	dc.b	nF2, $14, nRst, $41, nEb2, $14, nRst, $42, nEb2, $14, nRst, $41
	dc.b	nF2, $14, nRst, $41, nF2, $14, nRst, $42, nEb2, $14, nRst, $41
	dc.b	nEb2, $14, nRst, $41, nF2, $14, nRst, $42, nF2, $15, nRst, $40
	dc.b	nEb2, $14, nRst, $41, nEb2, $14, nRst, $42, nF2, $14, nRst, $41
	dc.b	nF2, $14, nRst, $41, nEb2, $14, nRst, $42, nEb2, $14, nRst, $41
	dc.b	nF2, $14, nRst, $41, nF2, $14, nRst

NeoTokyo_Loop161:
	dc.b	$7F
	smpsLoop            $00, $07, NeoTokyo_Loop161
	dc.b	$1E, nF2, $14, nRst, $41, nF2, $14, nRst, $7F, $7F, $7F, $1A
	dc.b	nEb2, $14, nRst, $41, nEb2, $14, nRst, $42, nF2, $14, nRst, $41
	dc.b	nF2, $14, nRst, $41
	smpsJump            NeoTokyo_Jump06

; PSG3 Data
NeoTokyo_PSG3:
	smpsPSGAlterVol     $07
	smpsPSGform         $E7
	dc.b	nMaxPSG

NeoTokyo_Loop03:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop03
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop04:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop04
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop05:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop05
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop06:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop06
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop07:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop07
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop08:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop08
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop09:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop09
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop0A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop0A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop0B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop0B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop0C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop0C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop0D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop0D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop0E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop0E
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop0F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop0F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop10:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop10
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop11:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop11
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop12:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop12
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop13:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop13
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop14:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop14
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop15:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop15
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop16:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop16
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop17:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop17
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop18:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop18
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop19:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop19
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop1A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop1A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop1B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop1B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop1C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop1C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop1D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop1D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop1E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop1E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop1F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop1F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop20:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop20
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop21:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop21
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop22:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop22
	dc.b	nMaxPSG

NeoTokyo_Jump05:
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG

NeoTokyo_Loop23:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop23
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop24:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop24
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop25:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop25
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop26:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop26
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop27:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop27
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop28:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop28
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop29:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop29
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop2A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop2A
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop2B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop2B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop2C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop2C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop2D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop2D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop2E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop2E
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop2F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop2F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop30:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop30
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop31:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop31
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop32:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop32
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop33:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop33
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop34:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop34
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop35:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop35
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop36:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop36
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop37:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop37
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop38:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop38
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop39:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop39
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop3A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop3A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop3B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop3B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop3C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop3C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop3D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop3D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop3E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop3E
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop3F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop3F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop40:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop40
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop41:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop41
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop42:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop42
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop43:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop43
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop44:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop44
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop45:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop45
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop46:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop46
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop47:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop47
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop48:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop48
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop49:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop49
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop4A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop4A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop4B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop4B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop4C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop4C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop4D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop4D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop4E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop4E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop4F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop4F
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop50:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop50
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop51:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop51
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop52:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop52
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop53:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop53
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop54:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop54
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop55:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop55
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop56:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop56
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop57:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop57
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop58:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop58
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop59:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop59
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop5A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop5A
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop5B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop5B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop5C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop5C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop5D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop5D
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop5E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop5E
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop5F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop5F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop60:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop60
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop61:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop61
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop62:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop62
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop63:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop63
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop64:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop64
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop65:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop65
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop66:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop66
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop67:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop67
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop68:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop68
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop69:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop69
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop6A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop6A
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop6B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop6B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop6C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop6C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop6D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop6D
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop6E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop6E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop6F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop6F
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop70:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop70
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop71:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop71
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop72:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop72
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop73:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop73
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop74:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop74
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop75:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop75
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop76:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop76
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop77:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop77
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $02

NeoTokyo_Loop78:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, NeoTokyo_Loop78
	smpsPSGAlterVol     $FF

NeoTokyo_Loop79:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop79
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop7A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop7A
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop7B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop7B
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop7C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop7C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop7D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop7D
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop7E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop7E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop7F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop7F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop80:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop80
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop81:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop81
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop82:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop82
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop83:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop83
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop84:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop84
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop85:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop85
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop86:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop86
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop87:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop87
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop88:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop88
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop89:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop89
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop8A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop8A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop8B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop8B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop8C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop8C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop8D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop8D
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop8E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop8E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop8F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop8F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop90:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop90
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop91:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop91
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop92:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop92
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop93:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop93
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop94:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop94
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop95:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop95
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop96:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop96
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop97:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop97
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $02

NeoTokyo_Loop98:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, NeoTokyo_Loop98
	smpsPSGAlterVol     $FF

NeoTokyo_Loop99:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop99
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop9A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop9A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop9B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop9B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop9C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop9C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop9D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop9D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop9E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop9E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop9F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop9F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopA0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopA0
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_LoopA1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopA1
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopA2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopA2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopA3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopA3
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopA4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopA4
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopA5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopA5
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopA6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopA6
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopA7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopA7
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopA8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopA8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_LoopA9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopA9
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopAA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopAA
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopAB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopAB
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopAC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopAC
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopAD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopAD
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopAE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopAE
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopAF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopAF
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $02

NeoTokyo_LoopB0:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, NeoTokyo_LoopB0
	smpsPSGAlterVol     $FF

NeoTokyo_LoopB1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopB1
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopB2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopB2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopB3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopB3
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopB4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopB4
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopB5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopB5
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopB6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopB6
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopB7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopB7
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopB8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopB8
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_LoopB9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopB9
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopBA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopBA
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopBB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopBB
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopBC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopBC
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopBD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopBD
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopBE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopBE
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopBF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopBF
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopC0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopC0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_LoopC1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopC1
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopC2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopC2
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopC3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopC3
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopC4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopC4
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopC5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopC5
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopC6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopC6
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopC7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopC7
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopC8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopC8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_LoopC9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopC9
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopCA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopCA
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopCB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopCB
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopCC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopCC
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopCD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopCD
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopCE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopCE
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopCF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopCF
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopD0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopD0
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_LoopD1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopD1
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopD2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopD2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopD3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopD3
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopD4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopD4
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopD5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopD5
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopD6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopD6
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopD7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopD7
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopD8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopD8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_LoopD9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopD9
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopDA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopDA
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopDB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopDB
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopDC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopDC
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopDD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopDD
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopDE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopDE
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopDF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopDF
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopE0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopE0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_LoopE1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopE1
	dc.b	$02, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopE2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopE2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopE3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopE3
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopE4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopE4
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopE5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopE5
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopE6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopE6
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopE7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopE7
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopE8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopE8
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_LoopE9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopE9
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopEA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopEA
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopEB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopEB
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopEC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopEC
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopED:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopED
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopEE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopEE
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_LoopEF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopEF
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopF0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopF0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_LoopF1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopF1
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopF2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopF2
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopF3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopF3
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopF4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopF4
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopF5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopF5
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopF6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopF6
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopF7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopF7
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopF8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_LoopF8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_LoopF9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_LoopF9
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopFA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopFA
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopFB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopFB
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopFC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopFC
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopFD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopFD
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopFE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopFE
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_LoopFF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_LoopFF
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop100:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop100
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop101:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop101
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop102:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop102
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop103:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop103
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop104:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop104
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop105:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop105
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop106:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop106
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop107:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop107
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop108:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop108
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop109:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop109
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop10A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop10A
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop10B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop10B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop10C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop10C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop10D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop10D
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop10E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop10E
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop10F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop10F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG, $02

NeoTokyo_Loop110:
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsLoop            $00, $03, NeoTokyo_Loop110
	smpsPSGAlterVol     $FF

NeoTokyo_Loop111:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop111
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop112:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop112
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop113:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop113
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop114:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop114
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop115:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop115
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop116:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop116
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop117:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop117
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop118:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop118
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop119:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop119
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop11A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop11A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop11B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop11B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop11C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop11C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop11D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop11D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop11E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop11E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop11F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop11F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop120:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop120
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop121:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop121
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop122:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop122
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop123:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop123
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop124:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop124
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop125:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop125
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop126:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop126
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop127:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop127
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop128:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop128
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop129:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop129
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop12A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop12A
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop12B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop12B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop12C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop12C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop12D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop12D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop12E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop12E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop12F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop12F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop130:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop130
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop131:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop131
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop132:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop132
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop133:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop133
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop134:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop134
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop135:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop135
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop136:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop136
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop137:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop137
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop138:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop138
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop139:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop139
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop13A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop13A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop13B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop13B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop13C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop13C
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop13D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop13D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop13E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop13E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop13F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop13F
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop140:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop140
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop141:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop141
	dc.b	$02, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop142:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop142
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop143:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop143
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop144:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop144
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop145:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop145
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop146:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop146
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop147:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop147
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop148:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop148
	dc.b	$02
	smpsPSGAlterVol     $FF

NeoTokyo_Loop149:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop149
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop14A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop14A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop14B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop14B
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop14C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop14C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop14D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop14D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop14E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop14E
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop14F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop14F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop150:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop150
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop151:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop151
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop152:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop152
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop153:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop153
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop154:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop154
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop155:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop155
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop156:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop156
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop157:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop157
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop158:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop158
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF

NeoTokyo_Loop159:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop159
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop15A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop15A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop15B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop15B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop15C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop15C
	dc.b	nMaxPSG, nRst, $07
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

NeoTokyo_Loop15D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, NeoTokyo_Loop15D
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop15E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop15E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop15F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, NeoTokyo_Loop15F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

NeoTokyo_Loop160:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, NeoTokyo_Loop160
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsJump            NeoTokyo_Jump05

NeoTokyo_Voices:
;	Voice $00
;	$35
;	$02, $02, $01, $02, 	$DF, $DF, $DF, $DF, 	$0C, $00, $08, $08
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$12, $04, $04, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $02, $02
	smpsVcRateScale     $03, $03, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $00, $0C
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $04, $04, $12

;	Voice $01
;	$35
;	$52, $16, $13, $31, 	$1F, $1F, $1F, $1F, 	$06, $06, $06, $00
;	$08, $00, $00, $00, 	$20, $1B, $18, $1A, 	$12, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $01, $05
	smpsVcCoarseFreq    $01, $03, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $06, $06, $06
	smpsVcDecayRate2    $00, $00, $00, $08
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $08, $0B, $00
	smpsVcTotalLevel    $00, $00, $00, $12

;	Voice $02
;	$15
;	$02, $21, $02, $22, 	$1F, $1F, $1F, $1E, 	$09, $09, $00, $01
;	$00, $1F, $0A, $05, 	$08, $00, $08, $08, 	$00, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $00, $02, $00
	smpsVcCoarseFreq    $02, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $00, $09, $09
	smpsVcDecayRate2    $05, $0A, $1F, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $08, $00, $08
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $03
;	$34
;	$02, $04, $00, $02, 	$1F, $05, $1F, $1F, 	$14, $1F, $09, $07
;	$05, $00, $00, $08, 	$1A, $0A, $1A, $0A, 	$00, $09, $00, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $00, $04, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $05, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $09, $1F, $14
	smpsVcDecayRate2    $08, $00, $00, $05
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $0A
	smpsVcTotalLevel    $00, $00, $09, $00

;	Voice $04
;	$35
;	$02, $12, $12, $12, 	$08, $1A, $1D, $1E, 	$16, $08, $0C, $00
;	$04, $06, $0A, $08, 	$1F, $1F, $1F, $1F, 	$10, $00, $00, $13
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $01, $01, $00
	smpsVcCoarseFreq    $02, $02, $02, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1D, $1A, $08
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0C, $08, $16
	smpsVcDecayRate2    $08, $0A, $06, $04
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $13, $00, $00, $10

;	Voice $05
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

;	Voice $06
;	$35
;	$31, $20, $61, $22, 	$1F, $1F, $1F, $1F, 	$02, $0B, $04, $01
;	$06, $00, $02, $06, 	$08, $08, $08, $08, 	$10, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $06, $02, $03
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $0B, $02
	smpsVcDecayRate2    $06, $02, $00, $06
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $00, $00, $10

;	Voice $07
;	$35
;	$22, $31, $63, $02, 	$1C, $1F, $1F, $1E, 	$01, $07, $00, $00
;	$03, $04, $02, $00, 	$02, $08, $08, $08, 	$11, $08, $08, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $03, $02
	smpsVcCoarseFreq    $02, $03, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1E, $1F, $1F, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $07, $01
	smpsVcDecayRate2    $00, $02, $04, $03
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $08, $08, $02
	smpsVcTotalLevel    $00, $08, $08, $11

;	Voice $08
;	$35
;	$52, $16, $13, $31, 	$1F, $1F, $1F, $1F, 	$02, $0B, $04, $01
;	$06, $00, $02, $06, 	$08, $08, $08, $08, 	$10, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $01, $05
	smpsVcCoarseFreq    $01, $03, $06, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $0B, $02
	smpsVcDecayRate2    $06, $02, $00, $06
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $00, $00, $10

;	Voice $09
;	$34
;	$32, $20, $60, $20, 	$1F, $1F, $1F, $1F, 	$14, $1F, $06, $10
;	$02, $01, $18, $05, 	$51, $A9, $2C, $08, 	$00, $00, $00, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $02, $06, $02, $03
	smpsVcCoarseFreq    $00, $00, $00, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $06, $1F, $14
	smpsVcDecayRate2    $05, $18, $01, $02
	smpsVcDecayLevel    $00, $02, $0A, $05
	smpsVcReleaseRate   $08, $0C, $09, $01
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $0A
;	$31
;	$51, $18, $10, $32, 	$1F, $1F, $1F, $1F, 	$1F, $09, $00, $11
;	$01, $1F, $00, $00, 	$78, $08, $18, $1A, 	$12, $18, $18, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $01, $05
	smpsVcCoarseFreq    $02, $00, $08, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $00, $09, $1F
	smpsVcDecayRate2    $00, $00, $1F, $01
	smpsVcDecayLevel    $01, $01, $00, $07
	smpsVcReleaseRate   $0A, $08, $08, $08
	smpsVcTotalLevel    $00, $18, $18, $12

;	Voice $0B
;	$31
;	$51, $18, $10, $32, 	$1F, $1F, $1F, $1F, 	$1F, $09, $00, $11
;	$01, $1F, $00, $00, 	$78, $08, $08, $0A, 	$00, $00, $00, $00
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $01, $01, $05
	smpsVcCoarseFreq    $02, $00, $08, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $11, $00, $09, $1F
	smpsVcDecayRate2    $00, $00, $1F, $01
	smpsVcDecayLevel    $00, $00, $00, $07
	smpsVcReleaseRate   $0A, $08, $08, $08
	smpsVcTotalLevel    $00, $00, $00, $00

