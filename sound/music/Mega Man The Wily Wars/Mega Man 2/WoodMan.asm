WoodMan_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     WoodMan_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       WoodMan_DAC,	$00, $F2
	smpsHeaderFM        WoodMan_FM1,	$00, $00
	smpsHeaderFM        WoodMan_FM2,	$00, $00
	smpsHeaderFM        WoodMan_FM3,	$00, $00
	smpsHeaderFM        WoodMan_FM4,	$00, $00
	smpsHeaderFM        WoodMan_FM5,	$00, $00
	smpsHeaderFM        WoodMan_FM6,	$00, $00
	smpsHeaderPSG       WoodMan_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       WoodMan_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       WoodMan_PSG3,	$00, $00, $00, $00

; DAC Data
WoodMan_DAC:
	smpsStop
; FM1 Data
WoodMan_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $15
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $76, nCs7, $05, nC7, nB6, nBb6, $06, nA6, $05, nAb6
	dc.b	nG6, nFs6, nF6, nE6, nEb6, $06, nD6, $05, nCs6, nC6, nB5, nBb5
	smpsSetvoice        $05
	smpsAlterVol        $FE
	dc.b	nB5, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nB5
	smpsAlterVol        $0D
	dc.b	$0B, nRst, $0A
	smpsAlterVol        $F3
	dc.b	nB5
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nA5, $01

WoodMan_Jump05:
	dc.b	smpsNoAttack, nA5, $12, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nAb5, $0B, nRst, $0A, nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs5, $0A, nRst, nFs5, $0B, nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $0A, nCs6, nRst, $0B, nB5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nA5, nB5, $13

WoodMan_Loop1B:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, WoodMan_Loop1B
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0B, nCs6, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nB5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nA5, nAb5, $0B, nFs5, $13

WoodMan_Loop1C:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WoodMan_Loop1C
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsSetvoice        $05
	smpsAlterVol        $01
	smpsAlterNote       $00
	dc.b	nB5, $0A
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsAlterVol        $0D
	dc.b	nB5, nRst, $0B
	smpsAlterVol        $F3
	dc.b	nB5, $0A
	smpsAlterVol        $0D
	dc.b	nB5
	smpsAlterVol        $F3
	dc.b	$0B
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nAb5, nRst, $0B, nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs5, $0B, nRst, $0A, nFs5, nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $0B, nCs6, $0A, nRst, nB5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nA5, nB5, $13

WoodMan_Loop1D:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, WoodMan_Loop1D
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0B, nCs6, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nB5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0B, nA5, $0A, nAb5, nFs5, $13

WoodMan_Loop1E:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WoodMan_Loop1E
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01
	smpsSetvoice        $05
	smpsAlterVol        $01
	smpsAlterNote       $00
	dc.b	nB5, $0A
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsAlterVol        $0D
	dc.b	nB5, nRst
	smpsAlterVol        $F3
	dc.b	nB5, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nB5
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nAb5, nRst, $0B, nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs5, $0A, nRst, $0B, nFs5, $0A, nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB5, $13

WoodMan_Loop1F:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WoodMan_Loop1F
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nA5, $0B, nE5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC6, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC6, $0B, nB5, $0A, nRst, nC6, $0B, nRst, $0A, nC6, nRst, $0B
	dc.b	nC6, $0A, nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC6, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsSetvoice        $00
	smpsAlterVol        $01
	smpsAlterNote       $00
	dc.b	nAb6, $05, nG6, nFs6, $06, nF6, $05, nE6, nEb6, nD6, nCs6, nC6
	dc.b	$06, nB5, $05, nBb5, nA5, nAb5, nG5, nFs5, $06, nF5, $05
	smpsSetvoice        $05
	dc.b	nCs6, $0A
	smpsAlterVol        $0D
	dc.b	nCs6
	smpsAlterVol        $F3
	dc.b	$0B
	smpsAlterVol        $0D
	dc.b	$0A, nRst
	smpsAlterVol        $F3
	dc.b	nCs6, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nCs6
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nA5, $01
	smpsPan             panCenter, $00
	smpsJump            WoodMan_Jump05

; FM2 Data
WoodMan_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $0C
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $49, nE3, $15, nE3, nRst, $0A, nE3, nRst, $0B
	dc.b	nE3, $0A, nFs3, $01

WoodMan_Jump04:
	dc.b	smpsNoAttack, nFs3, $09, $0A, $0B, $0A, nFs3, nFs3, $0B, $0A, $15, $0A
	dc.b	nFs3, nFs3, $0B, $0A, nFs3, nFs3, nFs3, $0B, nG3, $0A, nG3, nG3
	dc.b	$0B, $0A, nG3, nG3, $0B, $0A, $15, $0A, nG3, nG3, nG3, $0B
	dc.b	$0A, nG3, nE3, $15, $0A, $0B, $0A, nE3, nE3, $0B, $0A, nF3
	dc.b	$15, $0A, nF3, nF3, nF3, $0B, $0A, nF3, nF3, $0B, nRst, $0A
	dc.b	nAb3, nA3, $0B, nFs3, $0A, nAb3, nFs3, $15, $0A, nE3, $15, $14
	dc.b	nRst, $0B, nE3, $05, nE3, nE3, $0A, $0B, nFs3, $0A, nFs3, nFs3
	dc.b	$0B, $0A, nFs3, nFs3, nFs3, $0B, $14, $0B, $0A, nFs3, nFs3, $0B
	dc.b	$0A, nFs3, nFs3, $0B, nG3, $0A, nG3, nG3, nG3, $0B, $0A, nG3
	dc.b	nG3, $0B, $14, $0B, $0A, nG3, nG3, $0B, $0A, nG3, nE3, $15
	dc.b	$0A, nE3, nE3, $0B, $0A, nE3, nE3, $0B, nF3, $14, $0B, $0A
	dc.b	nF3, nF3, $0B, $0A, nF3, nF3, nRst, $0B, nAb3, $0A, nA3, nFs3
	dc.b	$0B, nAb3, $0A, nFs3, $15, $0A, nE3, $15, $14, nRst, $0A, nE3
	dc.b	$06, $05, $0A, nE3, nD3, $0B, $05, nD3, nD3, $0A, $05, $06

WoodMan_Loop1A:
	dc.b	$0A, $05, nD3, nD3, $0B, $05, nD3
	smpsLoop            $00, $02, WoodMan_Loop1A
	dc.b	nD3, $0A, $06, $05, $0A, $05, nD3, nE3, $0B, $05, nE3, nE3
	dc.b	$0A, $05, $06, $0A, $05, nE3, nE3, $0A, $06, $05, $0A, $05
	dc.b	nE3, nE3, $0B, $05, nE3, nE3, $0A, $05, $06, $0A, $05, nE3
	dc.b	nF3, $0B, $05, nF3, nF3, $0A, $05, nF3, nF3, $0B, $05, nF3
	dc.b	nF3, $0A, $06, $05, $0A, $05, nF3, nF3, $0B, $05, nF3, nF3
	dc.b	$0A, $05, $06, $0A, $05, nF3, nFs3, nFs3, nFs2, $06, nFs3, $05
	dc.b	nFs2, nFs3, nFs2, nFs3, nFs3, $06, nFs2, $05, nFs3, nFs2, nFs3, nFs2
	dc.b	nFs3, $06, nFs2, $05, nF3, $14, $15, nRst, $0A, nF3, $0B, nRst
	dc.b	$0A, nF3, nFs3, $01
	smpsPan             panCenter, $00
	smpsJump            WoodMan_Jump04

; FM3 Data
WoodMan_FM3:
	smpsSetvoice        $00
	smpsAlterVol        $18
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $76, nAb6, $05, nG6, nFs6, nF6, $06, nE6, $05, nEb6
	dc.b	nD6, nCs6, nC6, nB5, nBb5, $06, nA5, $05, nAb5, nG5, nFs5, nF5
	smpsSetvoice        $05
	smpsAlterVol        $FD
	dc.b	nAb5, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nAb5
	smpsAlterVol        $0D
	dc.b	$0B, nRst, $0A
	smpsAlterVol        $F3
	dc.b	nAb5
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nFs5, $01

WoodMan_Jump03:
	dc.b	smpsNoAttack, nFs5, $12, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nE5, $0B, nRst, $0A, nFs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, $0A, nRst, nCs5, $0B, nFs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $0A, nA5, nRst, $0B, nG5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nFs5, nE5, $13

WoodMan_Loop13:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, WoodMan_Loop13
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0B, nF5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$14, smpsNoAttack
	smpsAlterNote       $07

WoodMan_Loop14:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	smpsLoop            $00, $02, WoodMan_Loop14
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nCs5, nCs5, $0B, $13

WoodMan_Loop15:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WoodMan_Loop15
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsSetvoice        $05
	smpsAlterVol        $01
	smpsAlterNote       $00
	dc.b	nAb5, $0A
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsAlterVol        $0D
	dc.b	nAb5, nRst, $0B
	smpsAlterVol        $F3
	dc.b	nAb5, $0A
	smpsAlterVol        $0D
	dc.b	nAb5
	smpsAlterVol        $F3
	dc.b	$0B
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nFs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nE5, nRst, $0B, nFs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, $0B, nRst, $0A, nCs5, nFs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $0B, nA5, $0A, nRst, nG5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nFs5, nE5, $13

WoodMan_Loop16:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, WoodMan_Loop16
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0B, nF5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$14, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0B, $0A, nCs5, nCs5, $13

WoodMan_Loop17:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nC5, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WoodMan_Loop17
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $ED
	dc.b	nD5, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	nCs5, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $12
	dc.b	nC5
	smpsSetvoice        $05
	smpsAlterVol        $01
	smpsAlterNote       $00
	dc.b	nAb5, $0A
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsAlterVol        $0D
	dc.b	nAb5, nRst
	smpsAlterVol        $F3
	dc.b	nAb5, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nAb5
	smpsSetvoice        $0C
	smpsAlterVol        $FF
	dc.b	nFs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nE5, nRst, $0B, nFs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD5, $0A, nRst, $0B, nD5, $0A, nFs5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $13

WoodMan_Loop18:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WoodMan_Loop18
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nFs5, $0B, nB4, $13, smpsNoAttack
	smpsAlterNote       $07

WoodMan_Loop19:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	smpsLoop            $00, $02, WoodMan_Loop19
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $15
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0B, nG5, $0A, nRst, nA5, $0B, nRst, $0A, nA5, nRst, $0B, nA5
	dc.b	$0A, nF5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsSetvoice        $00
	smpsAlterVol        $07
	dc.b	nRst, $05
	smpsAlterNote       $03
	dc.b	nAb6, nG6, $06, nFs6, $05, nF6, nE6, nEb6, nD6, nCs6, $06, nC6
	dc.b	$05, nB5, nBb5, nA5, nAb5, nG5, $06, nFs5, $05
	smpsSetvoice        $05
	smpsAlterVol        $FA
	smpsAlterNote       $FD
	dc.b	nAb5, $0A
	smpsAlterVol        $0D
	dc.b	nAb5
	smpsAlterVol        $F3
	dc.b	$0B
	smpsAlterVol        $0D
	dc.b	$0A, nRst
	smpsAlterVol        $F3
	dc.b	nAb5, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nAb5
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nFs5, $01
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            WoodMan_Jump03

; FM4 Data
WoodMan_FM4:
	smpsSetvoice        $00
	smpsAlterVol        $15
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7B
	smpsAlterVol        $07
	smpsAlterNote       $03
	dc.b	nCs7, $05, nC7, nB6, $06, nBb6, $05, nA6, nAb6, nG6, nFs6, nF6
	dc.b	nE6, $06, nEb6, $05, nD6, nCs6, nC6, nB5
	smpsSetvoice        $06
	smpsAlterVol        $F9
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $05
	smpsAlterNote       $FD
	dc.b	nE4, $0A
	smpsAlterVol        $0D
	dc.b	nE4
	smpsAlterVol        $F3
	dc.b	nE4
	smpsAlterVol        $0D
	dc.b	$0B, nRst, $0A
	smpsAlterVol        $F3
	dc.b	nE4
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsSetvoice        $08
	dc.b	smpsNoAttack, $01

WoodMan_Jump02:
	smpsSetvoice        $09
	dc.b	nFs3, $09, nCs4, $05, $0B, nFs3, $05, nA3, nA3, nFs3, $0A, nCs4
	dc.b	$06, $0A, nFs3, $05, nA3, nA3, nFs3, $0B, nCs4, $05, $0A, nFs3
	dc.b	$05, nA3, nA3, $06, nFs3, $0A, nCs4, $05, $0A, nFs3, $05, nA3
	dc.b	$06

WoodMan_Loop0D:
	dc.b	$05, nD3, $0A, nB3, $05, $0B, nD3, $05, nG3
	smpsLoop            $00, $02, WoodMan_Loop0D
	dc.b	nG3, nD3, $0B, nB3, $05, $0A, nD3, $05, nG3, nG3, nD3, $0B
	dc.b	nB3, $05, $0A, nD3, $05, nG3, $06

WoodMan_Loop0E:
	dc.b	$05, nE3, $0A, nB3, $05, $0B, nE3, $05, nG3
	smpsLoop            $00, $02, WoodMan_Loop0E
	dc.b	nG3, nCs3, $0B, nA3, $05, $0A, nCs3, $05, nF3, nF3, nCs3, $0B
	dc.b	nA3, $05, $0A, nCs3, $05, nF3, $06, $05, nCs3, $0A, nA3, $05
	dc.b	$0A, nCs3, $06, nFs3, $05, nFs3, nCs3, $0A, nA3, $05, $0B, nCs3
	dc.b	$05, nFs3, nFs3
	smpsSetvoice        $0A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $05
	dc.b	nE4, $09
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsAlterVol        $0D
	dc.b	nE4, nRst, $0B
	smpsAlterVol        $F3
	dc.b	nE4, $0A
	smpsAlterVol        $0D
	dc.b	nE4
	smpsAlterVol        $F3
	dc.b	$0B
	smpsSetvoice        $0B
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	dc.b	nFs3, $09, nCs4, $05, $0A, nFs3, $06, nA3, $05, nA3, nFs3, $0A
	dc.b	nCs4, $05, $0B, nFs3, $05, nA3, nA3, nFs3, $0A, nCs4, $06, $0A
	dc.b	nFs3, $05, nA3, nA3, nFs3, $0B, nCs4, $05, $0A, nFs3, $05, nA3
	dc.b	nA3, $06, nD3, $0A, nB3, $05, $0A, nD3, $05, nG3, $06

WoodMan_Loop0F:
	dc.b	$05, nD3, $0A, nB3, $05, $0B, nD3, $05, nG3
	smpsLoop            $00, $02, WoodMan_Loop0F
	dc.b	nG3, nD3, $0B, nB3, $05, $0A, nD3, $05, nG3, nG3, nE3, $0B
	dc.b	nB3, $05, $0A, nE3, $05, nG3, $06, $05, nE3, $0A, nB3, $05
	dc.b	$0A, nE3, $06, nG3, $05, nG3, nCs3, $0A, nA3, $05, $0B

WoodMan_Loop10:
	dc.b	nCs3, $05, nF3, nF3, nCs3, $0B, nA3, $05, $0A
	smpsLoop            $00, $02, WoodMan_Loop10
	dc.b	nCs3, $05, nFs3, $06, $05, nCs3, $0A, nA3, $05, $0A, nCs3, $06
	dc.b	nFs3, $05, nFs3
	smpsSetvoice        $0A
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $05
	dc.b	nE4, $09
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsAlterVol        $0D
	dc.b	nE4, nRst
	smpsAlterVol        $F3
	dc.b	nE4, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nE4
	smpsSetvoice        $0D
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $09
	dc.b	nD3, $0A, $05, nD3, nD4, $0A, nD3, $0B

WoodMan_Loop11:
	dc.b	$0A, $05, nD3, nD4, $0B, nD3, $0A
	smpsLoop            $00, $02, WoodMan_Loop11
	dc.b	nD3, nD3, $06, $05, nD4, $0A, nD3, nE3, $0B

WoodMan_Loop12:
	dc.b	$05, nE3, nE4, $0A, nE3, $0B, $0A
	smpsLoop            $00, $02, WoodMan_Loop12
	dc.b	$05, nE3, nE4, $0B, nE3, $0A, nE3, nE3, $05, $06, nE4, $0A
	dc.b	nE3, nF3, $0B, $05, nF3, nF4, $0A, nF3, nF3, $0B, $05, nF3
	dc.b	nF4, $0A, nF3, $0B, $0A, $05, nF3, nF4, $0B, nF3, $0A, nF3
	dc.b	nF3, $05, $06, nF4, $0A, nF3
	smpsSetvoice        $0E
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $05
	smpsAlterVol        $02
	dc.b	nFs3, $04, $05, nFs2, $06, nFs3, $05, nFs2, nFs3, nFs2, nFs3, nFs3
	dc.b	$06, nFs2, $05, nFs3, nFs2, nFs3, nFs2, nFs3, $06, nFs2, $05
	smpsAlterVol        $FE
	dc.b	nF4, $0A
	smpsAlterVol        $0D
	dc.b	nF4
	smpsAlterVol        $F3
	dc.b	$0B
	smpsAlterVol        $0D
	dc.b	$0A, nRst
	smpsAlterVol        $F3
	dc.b	nF4, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nF4
	smpsSetvoice        $0F
	dc.b	smpsNoAttack, $01
	smpsSetvoice        $08
	smpsPan             panCenter, $00
	smpsJump            WoodMan_Jump02

; FM5 Data
WoodMan_FM5:
	smpsSetvoice        $02
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $08
	smpsSetvoice        $00
	smpsAlterVol        $A4
	dc.b	smpsNoAttack, $7F, $78
	smpsAlterNote       $03
	dc.b	nCs7, $05, nC7, $06, nB6, $05, nBb6, nA6, nAb6, nG6, nFs6, nF6
	dc.b	$06, nE6, $05, nEb6, nD6, nCs6, nC6, $06, nB5, $05, nBb5
	smpsSetvoice        $05
	smpsAlterVol        $FE
	dc.b	nB5, $0A
	smpsAlterVol        $0D
	dc.b	nB5
	smpsAlterVol        $F3
	dc.b	$0B
	smpsAlterVol        $0D
	dc.b	$0A, nRst
	smpsAlterVol        $F3
	dc.b	nB5, $0B
	smpsAlterVol        $0D
	dc.b	nB5

WoodMan_Jump01:
	smpsAlterVol        $F3
	dc.b	nB5, $09
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$0B, nAb5, $0A, nRst, nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nFs5, $0A, nRst, $0B, nFs5, $0A, nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nCs6, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nB5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nA5, $0A, nCs6, $0B, nRst, $0A, nB5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$0A, nA5, $0B, nB5, $13

WoodMan_Loop0A:
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsLoop            $00, $04, WoodMan_Loop0A
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$0A, nCs6, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, nB5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nAb5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$0A, nA5, $0B, nAb5, $0A, nFs5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsSetvoice        $05
	smpsAlterVol        $01
	smpsAlterNote       $03
	dc.b	nB5, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nB5
	smpsAlterVol        $0D
	dc.b	$0B, nRst, $0A
	smpsAlterVol        $F3
	dc.b	nB5
	smpsAlterVol        $0D
	dc.b	$0C
	smpsAlterVol        $F3
	dc.b	$09
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$0A, nAb5, $0B, nRst, $0A, nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nFs5, $0A, nRst, nFs5, $0B, nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nCs6, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nB5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nA5, $0A, nCs6, nRst, $0B, nB5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$0A, nA5, nB5, $13

WoodMan_Loop0B:
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsLoop            $00, $04, WoodMan_Loop0B
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$0B, nCs6, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	nD6, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, nB5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nAb5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$0A, nA5, nAb5, $0B, nFs5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsSetvoice        $05
	smpsAlterVol        $01
	smpsAlterNote       $03
	dc.b	nB5, $0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nB5
	smpsAlterVol        $0D
	dc.b	nB5, nRst, $0B
	smpsAlterVol        $F3
	dc.b	nB5, $0A
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsSetvoice        $07
	smpsAlterVol        $FF
	dc.b	nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$0A, nAb5, $0B, nRst, $0A, nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nFs5, $0B, nRst, $0A, nFs5, nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nCs6, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nB5, $13

WoodMan_Loop0C:
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $EE
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F5
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsLoop            $00, $03, WoodMan_Loop0C
	dc.b	smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $18
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, nRst, $0B, nA5, $0A, nE5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nFs5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nAb5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nB5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nC6, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	nCs6, smpsNoAttack
	smpsAlterNote       $11
	dc.b	nC6, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	nB5, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nC6, $0A, nB5, nRst, $0B, nC6, $0A, nRst, nC6, $0B, nRst, $0A
	dc.b	nC6, nA5, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $11
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nC6, $13, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01
	smpsSetvoice        $00
	smpsAlterVol        $01
	smpsAlterNote       $03
	dc.b	nAb6, $06, nG6, $05, nFs6, nF6, nE6, nEb6, nD6, $06, nCs6, $05
	dc.b	nC6, nB5, nBb5, nA5, nAb5, $06, nG5, $05, nFs5, nF5
	smpsSetvoice        $05
	dc.b	nCs6, $0A
	smpsAlterVol        $0D
	dc.b	$0B
	smpsAlterVol        $F3
	dc.b	$0A
	smpsAlterVol        $0D
	dc.b	nCs6, nRst, $0B
	smpsAlterVol        $F3
	dc.b	nCs6, $0A
	smpsAlterVol        $0D
	dc.b	$0B
	smpsPan             panCenter, $00
	smpsJump            WoodMan_Jump01

; FM6 Data
WoodMan_FM6:
	smpsSetvoice        $03
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	smpsAlterNote       $E0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE

WoodMan_Loop00:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsLoop            $00, $02, WoodMan_Loop00
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE

WoodMan_Loop01:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsLoop            $00, $02, WoodMan_Loop01
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15

WoodMan_Loop02:
	dc.b	$05, nFs4, nFs4, nFs4, $06, $05, nFs4, nFs4
	smpsLoop            $00, $02, WoodMan_Loop02
	dc.b	nFs4, nFs4, nRst, $01, smpsNoAttack, nFs4, $14, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $05, nFs4, nFs4, $0B, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01

WoodMan_Jump00:
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE

WoodMan_Loop03:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsLoop            $00, $02, WoodMan_Loop03
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE

WoodMan_Loop04:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsLoop            $00, $02, WoodMan_Loop04
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15

WoodMan_Loop05:
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsLoop            $00, $02, WoodMan_Loop05
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nRst, $01, nFs4, $09
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A, nFs4, nFs4, $0B
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
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $06
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE

WoodMan_Loop06:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsLoop            $00, $02, WoodMan_Loop06
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $06
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE

WoodMan_Loop07:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsLoop            $00, $02, WoodMan_Loop07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE

WoodMan_Loop08:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsLoop            $00, $02, WoodMan_Loop08
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $0B
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nRst, $01, nFs4, $09
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0B, $0A, nFs4
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01

WoodMan_Loop09:
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $06
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsLoop            $00, $02, WoodMan_Loop09
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $08, nRst, $07
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst
	smpsSetvoice        $04
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $14
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
	dc.b	$01
	smpsAlterNote       $FB
	dc.b	nB0, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $F4
	dc.b	$01
	smpsSetvoice        $04
	smpsAlterVol        $02
	smpsAlterNote       $00
	dc.b	nFs4, $06
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A, $05
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $0A, nFs4, nFs4, $06, $05, nRst, $01, smpsNoAttack, nFs4, $09
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $15
	smpsSetvoice        $03
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
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
	smpsAlterVol        $02
	dc.b	nFs4, $05, $06, $0A, nFs4
	smpsSetvoice        $03
	smpsAlterVol        $FE
	dc.b	nRst, $01
	smpsPan             panCenter, $00
	smpsJump            WoodMan_Jump00

; PSG1 Data
WoodMan_PSG1:
	dc.b	nRst, $7F, $7F, $4A
	smpsPSGAlterVol     $02
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
	dc.b	nB1
	smpsPSGAlterVol     $FC
	dc.b	$01
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
	dc.b	nB1, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0B
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB1

WoodMan_Jump08:
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$0A

WoodMan_Loop14B:
	smpsAlterNote       $01
	dc.b	$01
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
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsLoop            $00, $0C, WoodMan_Loop14B
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$0A
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$0A

WoodMan_Loop14C:
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsLoop            $00, $0D, WoodMan_Loop14C
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$0A

WoodMan_Loop14D:
	smpsAlterNote       $01
	dc.b	$01
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
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsLoop            $00, $06, WoodMan_Loop14D
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$0A

WoodMan_Loop14E:
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsLoop            $00, $07, WoodMan_Loop14E
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsPSGAlterVol     $FF
	dc.b	nFs2
	smpsPSGAlterVol     $FF
	dc.b	nFs2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$0A

WoodMan_Loop14F:
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	nFs2
	smpsLoop            $00, $06, WoodMan_Loop14F
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	nB1, $04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nB1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB1, nRst, $0B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02, nRst, $0A
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$0A

WoodMan_Loop150:
	smpsAlterNote       $01
	dc.b	$01
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
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsLoop            $00, $0C, WoodMan_Loop150
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$0A
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$0A

WoodMan_Loop151:
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FD
	dc.b	nD2
	smpsAlterNote       $FE
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsLoop            $00, $0D, WoodMan_Loop151
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $02
	dc.b	nD2
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $00
	dc.b	nD2
	smpsAlterNote       $FF
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$0A

WoodMan_Loop152:
	smpsAlterNote       $01
	dc.b	$01
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
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsLoop            $00, $06, WoodMan_Loop152
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$0A

WoodMan_Loop153:
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsLoop            $00, $07, WoodMan_Loop153
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$0A

WoodMan_Loop154:
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	nFs2
	smpsLoop            $00, $06, WoodMan_Loop154
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FD
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
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nB1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nB1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB1, nRst, $0A
	smpsPSGAlterVol     $FC

WoodMan_Loop155:
	smpsAlterNote       $00
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nB1, nRst, $0A
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, WoodMan_Loop155
	dc.b	nD1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01

WoodMan_Loop156:
	dc.b	$01
	smpsAlterNote       $01
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
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	smpsLoop            $00, $02, WoodMan_Loop156
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2, nRst, $0A
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nD1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
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
	dc.b	$01
	smpsAlterNote       $01
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
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $02
	dc.b	nA1, nRst, $0B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01

WoodMan_Loop157:
	dc.b	$01
	smpsAlterNote       $01
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
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	smpsLoop            $00, $02, WoodMan_Loop157
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $02
	dc.b	nE2, nRst, $0A
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
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
	dc.b	$01
	smpsAlterNote       $01
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
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nB1, nRst, $0B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01

WoodMan_Loop158:
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $00
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FD
	dc.b	nF2
	smpsAlterNote       $FE
	dc.b	nF2
	smpsAlterNote       $FF
	dc.b	nF2
	smpsAlterNote       $00
	smpsLoop            $00, $02, WoodMan_Loop158
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2
	smpsAlterNote       $02
	dc.b	nF2
	smpsAlterNote       $01
	dc.b	nF2, nRst, $0A
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $02
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FD
	dc.b	nC2
	smpsAlterNote       $FE
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nC2
	smpsAlterNote       $00
	dc.b	nC2
	smpsAlterNote       $01
	dc.b	nC2
	smpsAlterNote       $02
	dc.b	$02
	smpsPSGAlterVol     $FB
	smpsAlterNote       $00
	dc.b	nFs2, $04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01

WoodMan_Loop159:
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsAlterNote       $FD
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsLoop            $00, $06, WoodMan_Loop159
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FB
	dc.b	nCs2, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nCs2
	smpsAlterNote       $02
	dc.b	nCs2, nRst, $0A
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nCs2, nRst, $0A
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	smpsJump            WoodMan_Jump08

; PSG2 Data
WoodMan_PSG2:
	smpsAlterNote       $FA
	dc.b	nG0, $01
	smpsAlterNote       $0D
	dc.b	nG0
	smpsAlterNote       $FE
	dc.b	nFs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nFs0
	smpsAlterNote       $00
	dc.b	nF0
	smpsAlterNote       $EE
	dc.b	nE0
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE0
	smpsAlterNote       $14
	dc.b	nE0
	smpsAlterNote       $FE
	dc.b	nEb0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nEb0
	smpsAlterNote       $F9
	dc.b	nD0
	smpsAlterNote       $0C
	dc.b	nD0
	smpsAlterNote       $F2
	dc.b	nCs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	nCs0
	smpsAlterNote       $E8
	dc.b	nC0
	smpsAlterNote       $FB
	dc.b	nC0
	smpsPSGAlterVol     $01
	smpsAlterNote       $0E
	dc.b	nC0
	smpsAlterNote       $21
	dc.b	nC0
	smpsPSGAlterVol     $FC
	smpsAlterNote       $02
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nAb1
	smpsAlterNote       $F9
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FA
	dc.b	nF1, nE1
	smpsAlterNote       $F9
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $F6
	dc.b	nD1
	smpsAlterNote       $09
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $01
	dc.b	nC1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $F3
	dc.b	nBb0
	smpsAlterNote       $06
	dc.b	nBb0
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA0
	smpsAlterNote       $F1
	dc.b	nAb0
	smpsAlterNote       $04
	dc.b	nAb0
	smpsPSGAlterVol     $FC

WoodMan_Loop142:
	smpsAlterNote       $F4
	dc.b	nAb0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $07
	dc.b	nAb0
	smpsAlterNote       $FA
	dc.b	nG0
	smpsAlterNote       $0D
	dc.b	nG0
	smpsAlterNote       $FE
	dc.b	nFs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nFs0
	smpsAlterNote       $00
	dc.b	nF0
	smpsAlterNote       $EE
	dc.b	nE0
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE0
	smpsAlterNote       $14
	dc.b	nE0
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, WoodMan_Loop142
	smpsAlterNote       $02
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nAb1
	smpsAlterNote       $F9
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FA
	dc.b	nF1, nE1
	smpsAlterNote       $F9
	dc.b	nEb1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $F4
	dc.b	nAb0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $07
	dc.b	nAb0
	smpsAlterNote       $FA
	dc.b	nG0
	smpsAlterNote       $0D
	dc.b	nG0
	smpsAlterNote       $FE
	dc.b	nFs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nFs0
	smpsAlterNote       $00
	dc.b	nF0
	smpsAlterNote       $EE
	dc.b	nE0
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE0
	smpsAlterNote       $14
	dc.b	nE0, nRst, $0A
	smpsPSGAlterVol     $FF
	smpsAlterNote       $F4
	dc.b	nAb0, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $07
	dc.b	nAb0
	smpsAlterNote       $FA
	dc.b	nG0
	smpsAlterNote       $0D
	dc.b	nG0
	smpsAlterNote       $FE
	dc.b	nFs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nFs0
	smpsAlterNote       $00
	dc.b	nF0
	smpsAlterNote       $EE
	dc.b	nE0
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE0
	smpsAlterNote       $14
	dc.b	nE0
	smpsAlterNote       $FE
	dc.b	nEb0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nAb1
	smpsAlterNote       $F9
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FA
	dc.b	nF1, nE1

WoodMan_Loop143:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $F4
	dc.b	nAb0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $07
	dc.b	nAb0
	smpsAlterNote       $FA
	dc.b	nG0
	smpsAlterNote       $0D
	dc.b	nG0
	smpsAlterNote       $FE
	dc.b	nFs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nFs0
	smpsAlterNote       $00
	dc.b	nF0
	smpsAlterNote       $EE
	dc.b	nE0
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE0
	smpsAlterNote       $14
	dc.b	nE0
	smpsLoop            $00, $02, WoodMan_Loop143
	smpsAlterNote       $FE
	dc.b	nEb0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nEb0
	smpsAlterNote       $F9
	dc.b	nD0
	smpsAlterNote       $0C
	dc.b	nD0
	smpsAlterNote       $F2
	dc.b	nCs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	nCs0
	smpsAlterNote       $E8
	dc.b	nC0
	smpsAlterNote       $FB
	dc.b	nC0
	smpsPSGAlterVol     $01
	smpsAlterNote       $0E
	dc.b	nC0
	smpsAlterNote       $21
	dc.b	nC0
	smpsAlterNote       $34
	dc.b	nC0
	smpsPSGAlterVol     $FC
	smpsAlterNote       $02
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nAb1
	smpsAlterNote       $F9
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FA
	dc.b	nF1, nE1
	smpsAlterNote       $F9
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $F6
	dc.b	nD1
	smpsAlterNote       $09
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $01
	dc.b	nC1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $F3
	dc.b	nBb0
	smpsAlterNote       $06
	dc.b	nBb0
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA0
	smpsAlterNote       $F1
	dc.b	nAb0
	smpsPSGAlterVol     $FC
	smpsAlterNote       $F4
	dc.b	nAb0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $07
	dc.b	nAb0
	smpsAlterNote       $FA
	dc.b	nG0
	smpsAlterNote       $0D
	dc.b	nG0
	smpsAlterNote       $FE
	dc.b	nFs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nFs0
	smpsAlterNote       $00
	dc.b	nF0
	smpsAlterNote       $EE
	dc.b	nE0
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE0
	smpsAlterNote       $14
	dc.b	nE0
	smpsAlterNote       $FE
	dc.b	nEb0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nEb0
	smpsAlterNote       $F9
	dc.b	nD0
	smpsAlterNote       $0C
	dc.b	nD0
	smpsAlterNote       $F2
	dc.b	nCs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $05
	dc.b	nCs0
	smpsAlterNote       $E8
	dc.b	nC0
	smpsAlterNote       $FB
	dc.b	nC0
	smpsPSGAlterVol     $01
	smpsAlterNote       $0E
	dc.b	nC0
	smpsAlterNote       $21
	dc.b	nC0
	smpsAlterNote       $34
	dc.b	nC0
	smpsPSGAlterVol     $FC
	smpsAlterNote       $02
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nAb1
	smpsAlterNote       $F9
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FA
	dc.b	nF1, nE1
	smpsAlterNote       $F9
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $F6
	dc.b	nD1
	smpsAlterNote       $09
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $01
	dc.b	nC1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $F3
	dc.b	nBb0
	smpsAlterNote       $06
	dc.b	nBb0
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA0
	smpsAlterNote       $F1
	dc.b	nAb0
	smpsAlterNote       $04
	dc.b	nAb0
	smpsPSGAlterVol     $FC

WoodMan_Loop144:
	smpsAlterNote       $F4
	dc.b	nAb0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $07
	dc.b	nAb0
	smpsAlterNote       $FA
	dc.b	nG0
	smpsAlterNote       $0D
	dc.b	nG0
	smpsAlterNote       $FE
	dc.b	nFs0
	smpsPSGAlterVol     $01
	smpsAlterNote       $11
	dc.b	nFs0
	smpsAlterNote       $00
	dc.b	nF0
	smpsAlterNote       $EE
	dc.b	nE0
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nE0
	smpsAlterNote       $14
	dc.b	nE0
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, WoodMan_Loop144
	smpsAlterNote       $02
	dc.b	nF2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nEb2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $05
	dc.b	nC2
	smpsAlterNote       $FF
	dc.b	nBb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $03
	dc.b	nA1
	smpsAlterNote       $07
	dc.b	nAb1
	smpsAlterNote       $F9
	dc.b	nFs1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FA
	dc.b	nF1, nE1
	smpsAlterNote       $F9
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $F6
	dc.b	nD1
	smpsAlterNote       $09
	dc.b	nD1
	smpsAlterNote       $06
	dc.b	nCs1
	smpsAlterNote       $01
	dc.b	nC1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $F3
	dc.b	nBb0
	smpsAlterNote       $06
	dc.b	nBb0
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nA0
	smpsAlterNote       $F1
	dc.b	nAb0
	smpsAlterNote       $04
	dc.b	nAb0
	smpsPSGAlterVol     $FC

WoodMan_Loop145:
	smpsAlterNote       $FE
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	nBb1
	smpsAlterNote       $FB
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, WoodMan_Loop145
	smpsAlterNote       $FE
	dc.b	nG1

WoodMan_Loop146:
	smpsAlterNote       $06
	dc.b	nBb1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FB
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, WoodMan_Loop146

WoodMan_Loop147:
	smpsAlterNote       $03
	dc.b	nG1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $05
	dc.b	nFs1
	smpsAlterNote       $06
	dc.b	nF1, nE1
	smpsAlterNote       $05
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, WoodMan_Loop147
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $03
	dc.b	nG1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $05
	dc.b	nFs1
	smpsAlterNote       $06
	dc.b	nF1, nE1
	smpsAlterNote       $05
	dc.b	nEb1

WoodMan_Loop148:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FA
	dc.b	nCs1
	smpsAlterNote       $F5
	dc.b	nC1
	smpsAlterNote       $08
	dc.b	nC1
	smpsAlterNote       $02
	dc.b	nB0
	smpsLoop            $00, $03, WoodMan_Loop148
	smpsPSGAlterVol     $01
	smpsAlterNote       $FD
	dc.b	nD1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FA
	dc.b	nCs1
	smpsAlterNote       $F5
	dc.b	nC1
	smpsAlterNote       $08
	dc.b	nC1
	smpsAlterNote       $02
	dc.b	nB0, $02, nRst, $33

WoodMan_Loop149:
	smpsPSGAlterVol     $01
	smpsAlterNote       $FE
	dc.b	nD2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $06
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	nBb1
	smpsAlterNote       $FB
	dc.b	nAb1
	smpsLoop            $00, $02, WoodMan_Loop149
	smpsPSGAlterVol     $01
	smpsAlterNote       $06
	dc.b	nBb1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FB
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nG1
	smpsAlterNote       $00
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nEb1
	smpsAlterNote       $FD
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FA
	dc.b	nCs1
	smpsAlterNote       $F5
	dc.b	nC1
	smpsAlterNote       $08
	dc.b	nC1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nD1
	smpsAlterNote       $F9
	dc.b	nCs1
	smpsAlterNote       $F4
	dc.b	nC1
	smpsAlterNote       $07
	dc.b	nC1
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $F9
	dc.b	nBb0
	smpsAlterNote       $0C
	dc.b	nBb0
	smpsPSGAlterVol     $01
	smpsAlterNote       $03
	dc.b	nA0
	smpsAlterNote       $F7
	dc.b	nAb0, $02

WoodMan_Jump07:
	dc.b	nRst, $09
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	nA1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $02
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $02
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $02
	dc.b	$7F, $08
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGAlterVol     $FF
	dc.b	nD2, $01
	smpsPSGAlterVol     $FF
	dc.b	nD2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$7F, $13
	smpsPSGAlterVol     $FF
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$49
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$54
	smpsPSGAlterVol     $FF
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	dc.b	nFs2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$49
	smpsPSGAlterVol     $FE
	dc.b	nB1, $01
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
	dc.b	nB1
	smpsPSGAlterVol     $FC
	dc.b	$01
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
	dc.b	nB1, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0C
	smpsPSGAlterVol     $FE
	dc.b	nB1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02, nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$7F, $08
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$0C
	smpsPSGAlterVol     $FF
	dc.b	nD2, $01
	smpsPSGAlterVol     $FF
	dc.b	nD2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$7F, $12
	smpsPSGAlterVol     $FF
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$4A
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	dc.b	nF2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$54
	smpsPSGAlterVol     $FF
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	dc.b	nFs2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$49
	smpsPSGAlterVol     $FE
	dc.b	nB1, $01
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
	dc.b	nB1
	smpsPSGAlterVol     $FC
	dc.b	$01
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
	dc.b	$02, nRst, $0B
	smpsPSGAlterVol     $FC
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0B
	smpsPSGAlterVol     $FE
	dc.b	nB1, $04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB1, nRst, $0A
	smpsPSGAlterVol     $FF
	dc.b	nD1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$17, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nD1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD1
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
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
	dc.b	$0D, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$17, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
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
	dc.b	$0D, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$17, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nF1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $FF
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nF2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nF2
	smpsPSGAlterVol     $FF
	dc.b	nC2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FC
	dc.b	nFs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$41
	smpsPSGAlterVol     $FC
	dc.b	nCs2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FA

WoodMan_Loop14A:
	smpsAlterNote       $FC
	dc.b	nD2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $04
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsAlterNote       $F9
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsLoop            $00, $02, WoodMan_Loop14A
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $04
	dc.b	nBb1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $F9
	dc.b	nAb1
	smpsAlterNote       $FC
	dc.b	nG1
	smpsAlterNote       $FE
	dc.b	nFs1
	smpsAlterNote       $FF
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nEb1
	smpsAlterNote       $FB
	dc.b	nD1
	smpsPSGAlterVol     $01
	smpsAlterNote       $F8
	dc.b	nCs1
	smpsAlterNote       $0B
	dc.b	nCs1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FD
	dc.b	nEb1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FA
	dc.b	nD1
	smpsAlterNote       $F7
	dc.b	nCs1
	smpsAlterNote       $0A
	dc.b	nCs1
	smpsAlterNote       $05
	dc.b	nC1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nB0
	smpsAlterNote       $F7
	dc.b	nBb0
	smpsAlterNote       $0A
	dc.b	nBb0
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nA0
	smpsAlterNote       $F5
	dc.b	nAb0, $02
	smpsPSGAlterVol     $FF
	smpsJump            WoodMan_Jump07

; PSG3 Data
WoodMan_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $12
	smpsPSGAlterVol     $01
	dc.b	nD5, $01
	smpsPSGAlterVol     $01

WoodMan_Loop20:
	dc.b	nD5
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop20
	dc.b	nD5
	smpsPSGAlterVol     $01
	dc.b	nD5, nRst, $21
	smpsPSGAlterVol     $F4
	dc.b	nD5, $01
	smpsPSGAlterVol     $01

WoodMan_Loop21:
	dc.b	nD5
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop21
	dc.b	nD5
	smpsPSGAlterVol     $01
	dc.b	nD5, nRst, $22
	smpsPSGAlterVol     $F4
	dc.b	nD5, $01
	smpsPSGAlterVol     $01

WoodMan_Loop22:
	dc.b	nD5
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop22
	dc.b	nD5
	smpsPSGAlterVol     $01
	dc.b	nD5, nRst, $21
	smpsPSGAlterVol     $F4
	dc.b	nD5, $01
	smpsPSGAlterVol     $01

WoodMan_Loop23:
	dc.b	nD5
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop23
	dc.b	nD5
	smpsPSGAlterVol     $01
	dc.b	nD5, nRst, $21
	smpsPSGAlterVol     $F4
	dc.b	nD5, $01
	smpsPSGAlterVol     $01

WoodMan_Loop24:
	dc.b	nD5
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop24
	dc.b	nD5
	smpsPSGAlterVol     $01
	dc.b	nD5, nRst, $21
	smpsPSGAlterVol     $F4
	dc.b	nD5, $01
	smpsPSGAlterVol     $01

WoodMan_Loop25:
	dc.b	nD5
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop25
	dc.b	nD5
	smpsPSGAlterVol     $01
	dc.b	nD5, nRst, $7F, $34

WoodMan_Jump06:
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

WoodMan_Loop26:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop26
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop27:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop27
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop28:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop28
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop29:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop29
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop2A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop2A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop2B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop2B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop2C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop2C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop2D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop2D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop2E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop2E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop2F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop2F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop30:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop30
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop31:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop31
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop32:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop32
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop33:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop33
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop34:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop34
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop35:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop35
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop36:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop36
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop37:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop37
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop38:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop38
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop39:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop39
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop3A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop3A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop3B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop3B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop3C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop3C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop3D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop3D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop3E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop3E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop3F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop3F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop40:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop40
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop41:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop41
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop42:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop42
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop43:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop43
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop44:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop44
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop45:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop45
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop46:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop46
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop47:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop47
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop48:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop48
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop49:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop49
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop4A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop4A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop4B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop4B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop4C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop4C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop4D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop4D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop4E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop4E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop4F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop4F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop50:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop50
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop51:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop51
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop52:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop52
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop53:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop53
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop54:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop54
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop55:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop55
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop56:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop56
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop57:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop57
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop58:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop58
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop59:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop59
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop5A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop5A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop5B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop5B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop5C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop5C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop5D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop5D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop5E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop5E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop5F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop5F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop60:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop60
	dc.b	nMaxPSG, nRst, $0B
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop61:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop61
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop62:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop62
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop63:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop63
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop64:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop64
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop65:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop65
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop66:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop66
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop67:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop67
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop68:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop68
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop69:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop69
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop6A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop6A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop6B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop6B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop6C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop6C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop6D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop6D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop6E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop6E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop6F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop6F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop70:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop70
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop71:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop71
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop72:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop72
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop73:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop73
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop74:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop74
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop75:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop75
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop76:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop76
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop77:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop77
	dc.b	$02
	smpsPSGAlterVol     $FA

WoodMan_Loop78:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop78
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop79:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop79
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop7A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop7A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop7B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop7B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop7C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop7C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop7D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop7D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop7E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop7E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop7F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop7F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop80:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop80
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop81:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop81
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop82:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop82
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

WoodMan_Loop83:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop83
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop84:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop84
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop85:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop85
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop86:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop86
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop87:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop87
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop88:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop88
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop89:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop89
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop8A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop8A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop8B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop8B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop8C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop8C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop8D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop8D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop8E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop8E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop8F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop8F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop90:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop90
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop91:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop91
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop92:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop92
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop93:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop93
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop94:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop94
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop95:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop95
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop96:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop96
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop97:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop97
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop98:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop98
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop99:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop99
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop9A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop9A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop9B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop9B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop9C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop9C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop9D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop9D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop9E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop9E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop9F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop9F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopA0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopA0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopA1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopA1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopA2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopA2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopA3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopA3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopA4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopA4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopA5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopA5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopA6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopA6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopA7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopA7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopA8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopA8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopA9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_LoopA9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopAA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopAA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopAB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopAB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopAC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopAC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopAD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopAD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopAE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopAE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopAF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopAF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopB0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopB0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopB1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopB1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopB2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopB2
	dc.b	nMaxPSG, nRst, $0B
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopB3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopB3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopB4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopB4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopB5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopB5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopB6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_LoopB6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopB7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopB7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopB8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopB8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopB9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopB9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopBA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopBA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopBB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopBB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopBC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopBC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopBD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopBD
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopBE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopBE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopBF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_LoopBF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopC0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopC0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopC1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopC1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopC2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopC2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopC3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopC3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopC4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopC4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopC5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopC5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopC6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopC6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopC7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopC7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopC8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopC8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopC9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopC9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopCA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopCA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopCB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopCB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopCC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopCC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopCD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_LoopCD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopCE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopCE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopCF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopCF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopD0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopD0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopD1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopD1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopD2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopD2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopD3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopD3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopD4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopD4
	dc.b	$02
	smpsPSGAlterVol     $FA

WoodMan_LoopD5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopD5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopD6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopD6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopD7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopD7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopD8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_LoopD8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopD9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopD9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopDA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopDA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopDB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopDB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopDC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_LoopDC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopDD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopDD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopDE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopDE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopDF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopDF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F5
	dc.b	nMaxPSG

WoodMan_LoopE0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopE0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopE1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopE1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopE2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopE2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopE3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopE3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopE4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopE4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopE5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_LoopE5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopE6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopE6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopE7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopE7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopE8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopE8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopE9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopE9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopEA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopEA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopEB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopEB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopEC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopEC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopED:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopED
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopEE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopEE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopEF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopEF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopF0:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopF0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopF1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopF1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopF2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopF2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopF3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_LoopF3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopF4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopF4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopF5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopF5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopF6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopF6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopF7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopF7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopF8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopF8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopF9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopF9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopFA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopFA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopFB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopFB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopFC:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopFC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopFD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_LoopFD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_LoopFE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_LoopFE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_LoopFF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_LoopFF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop100:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop100
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop101:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop101
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop102:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop102
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop103:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop103
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop104:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop104
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop105:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop105
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop106:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop106
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop107:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop107
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop108:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop108
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop109:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop109
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop10A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop10A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop10B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop10B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop10C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop10C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop10D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop10D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop10E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop10E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop10F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop10F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop110:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop110
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop111:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop111
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop112:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop112
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop113:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop113
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop114:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop114
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop115:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop115
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop116:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop116
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop117:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop117
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop118:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop118
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop119:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop119
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop11A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop11A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop11B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop11B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop11C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop11C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop11D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop11D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop11E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop11E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop11F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop11F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop120:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop120
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop121:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop121
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop122:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop122
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop123:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop123
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop124:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop124
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop125:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop125
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop126:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop126
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop127:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop127
	dc.b	$02
	smpsPSGAlterVol     $FA

WoodMan_Loop128:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop128
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop129:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop129
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop12A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop12A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop12B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop12B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop12C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop12C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop12D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop12D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop12E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop12E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop12F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop12F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop130:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop130
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop131:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop131
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop132:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop132
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop133:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop133
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop134:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop134
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop135:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop135
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop136:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, WoodMan_Loop136
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop137:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop137
	dc.b	$02
	smpsPSGAlterVol     $FA

WoodMan_Loop138:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop138
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop139:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop139
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop13A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop13A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop13B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $03, WoodMan_Loop13B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WoodMan_Loop13C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop13C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop13D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop13D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop13E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop13E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop13F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop13F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop140:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop140
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WoodMan_Loop141:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WoodMan_Loop141
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $03
	smpsJump            WoodMan_Jump06

WoodMan_Voices:
;	Voice $00
;	$3E
;	$07, $01, $02, $01, 	$1F, $1F, $1F, $1F, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$15, $0A, $0A, $0A, 	$1B, $00, $00, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $0A, $0A, $0A, $05
	smpsVcTotalLevel    $00, $00, $00, $1B

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
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$FF, $FF, $FF, $FF, 	$7F, $00, $00, $00
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
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $7F

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

;	Voice $06
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0D, $06, $00, $00
;	$08, $06, $00, $00, 	$FF, $FF, $FF, $FF, 	$1B, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $06, $0D
	smpsVcDecayRate2    $00, $00, $06, $08
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $07
;	$34
;	$00, $02, $01, $01, 	$1F, $1F, $1F, $1F, 	$10, $06, $06, $06
;	$01, $06, $06, $06, 	$35, $1A, $15, $1A, 	$10, $00, $18, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $02, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $06, $06, $10
	smpsVcDecayRate2    $06, $06, $06, $01
	smpsVcDecayLevel    $01, $01, $01, $03
	smpsVcReleaseRate   $0A, $05, $0A, $05
	smpsVcTotalLevel    $00, $18, $00, $10

;	Voice $08
;	$03
;	$00, $57, $33, $02, 	$5F, $9F, $5F, $1F, 	$13, $0F, $0A, $0A
;	$10, $0F, $02, $09, 	$FF, $FF, $FF, $FF, 	$15, $15, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $05, $00
	smpsVcCoarseFreq    $02, $03, $07, $00
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0F, $13
	smpsVcDecayRate2    $09, $02, $0F, $10
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $15, $15

;	Voice $09
;	$03
;	$00, $57, $33, $02, 	$5F, $9F, $5F, $1F, 	$13, $0F, $0A, $0A
;	$10, $0F, $02, $09, 	$35, $15, $25, $1A, 	$13, $16, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $05, $00
	smpsVcCoarseFreq    $02, $03, $07, $00
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0F, $13
	smpsVcDecayRate2    $09, $02, $0F, $10
	smpsVcDecayLevel    $01, $02, $01, $03
	smpsVcReleaseRate   $0A, $05, $05, $05
	smpsVcTotalLevel    $00, $15, $16, $13

;	Voice $0A
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $0F, $02, $09, 	$FF, $FF, $FF, $FF, 	$13, $01, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $19, $19, $19, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0D, $0F
	smpsVcDecayRate2    $09, $02, $0F, $07
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $01, $13

;	Voice $0B
;	$03
;	$00, $57, $33, $02, 	$5F, $9F, $5F, $1F, 	$13, $0F, $0D, $0D
;	$07, $04, $04, $04, 	$FF, $FF, $FF, $FF, 	$15, $15, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $05, $00
	smpsVcCoarseFreq    $02, $03, $07, $00
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0F, $13
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $15, $15

;	Voice $0C
;	$2A
;	$00, $00, $02, $02, 	$13, $11, $14, $14, 	$04, $06, $05, $05
;	$02, $00, $00, $06, 	$A8, $A8, $09, $AE, 	$11, $0A, $3E, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $14, $11, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $06, $04
	smpsVcDecayRate2    $06, $00, $00, $02
	smpsVcDecayLevel    $0A, $00, $0A, $0A
	smpsVcReleaseRate   $0E, $09, $08, $08
	smpsVcTotalLevel    $00, $3E, $0A, $11

;	Voice $0D
;	$03
;	$00, $57, $33, $02, 	$5F, $9F, $5F, $1F, 	$13, $0F, $0A, $0D
;	$07, $04, $04, $04, 	$FF, $FF, $FF, $FF, 	$15, $15, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $05, $00
	smpsVcCoarseFreq    $02, $03, $07, $00
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0A, $0F, $13
	smpsVcDecayRate2    $04, $04, $04, $07
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $15, $15

;	Voice $0E
;	$3D
;	$01, $01, $01, $01, 	$94, $19, $19, $19, 	$0F, $0D, $0D, $0D
;	$07, $04, $04, $04, 	$25, $FF, $FF, $FF, 	$13, $01, $00, $00
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
	smpsVcDecayLevel    $0F, $0F, $0F, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $05
	smpsVcTotalLevel    $00, $00, $01, $13

;	Voice $0F
;	$03
;	$00, $57, $33, $02, 	$5F, $9F, $5F, $1F, 	$13, $0F, $0A, $0A
;	$10, $0F, $04, $04, 	$FF, $FF, $FF, $FF, 	$15, $15, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $05, $00
	smpsVcCoarseFreq    $02, $03, $07, $00
	smpsVcRateScale     $00, $01, $02, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0F, $13
	smpsVcDecayRate2    $04, $04, $0F, $10
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $15, $15, $15

