WilyTower2_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     WilyTower2_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       WilyTower2_DAC,	$00, $F2
	smpsHeaderFM        WilyTower2_FM1,	$00, $00
	smpsHeaderFM        WilyTower2_FM2,	$00, $00
	smpsHeaderFM        WilyTower2_FM3,	$00, $00
	smpsHeaderFM        WilyTower2_FM4,	$00, $00
	smpsHeaderFM        WilyTower2_FM5,	$00, $00
	smpsHeaderFM        WilyTower2_FM6,	$00, $00
	smpsHeaderPSG       WilyTower2_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       WilyTower2_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       WilyTower2_PSG3,	$00, $00, $00, $00

; DAC Data
WilyTower2_DAC:
	smpsStop
; FM1 Data
WilyTower2_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $13
	smpsPan             panCenter, $00
	dc.b	nRst, $11, nE5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $0B
	smpsAlterNote       $00
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $0B
	smpsAlterNote       $00
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	nD5, nD5, $09, nE5, $0A, nRst

WilyTower2_Jump05:
	dc.b	nE5, $09, $0A, nE5, nE5, nB4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, nFs5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE5, $09
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nFs5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst, $09
	smpsAlterNote       $00
	dc.b	nEb5, $0A, nEb5, nEb5, $09, $0A, nE5, nFs5, nAb5, $0E

WilyTower2_Loop3D:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop3D
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0B, nFs5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $0A
	smpsAlterNote       $00
	dc.b	nE5, nE5, $09, $0A, nE5, nB4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, nFs5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE5, $0A
	smpsAlterVol        $0D
	dc.b	$09
	smpsAlterVol        $F3
	dc.b	nFs5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst, $09
	smpsAlterNote       $00
	dc.b	nEb5, $0A, nEb5, nEb5, nEb5, $09, nE5, $0A, nFs5, nE5, $0E

WilyTower2_Loop3E:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $07, WilyTower2_Loop3E
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, nRst, $14
	smpsAlterNote       $00
	dc.b	nAb5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs5, $0A, nE5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0A, nRst, nCs5, $09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb5, $0A, nE5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $13
	smpsAlterNote       $00
	dc.b	nAb5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $09, nB5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0A, nRst, $09, nAb5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, nA5, $0A, nB5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $14
	smpsAlterNote       $00
	dc.b	nAb5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs5, $0A, nE5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0A, nRst, nCs5, nCs5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb5, $0A, nE5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs5, $09, nAb5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $0E

WilyTower2_Loop3F:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop3F
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nB5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0E

WilyTower2_Loop40:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop40
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nA5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB5, $0E

WilyTower2_Loop41:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop41
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nCs6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE6, $0A
	smpsAlterVol        $0D
	dc.b	$09
	smpsAlterVol        $F3
	dc.b	$0A, nEb6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $09, nB5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB5, $0A, nCs6, nEb6, $09, nE6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $0A, nE6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E

WilyTower2_Loop42:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop42
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs6, $0A
	smpsAlterVol        $0B
	dc.b	nFs6
	smpsAlterVol        $F5
	dc.b	nA4, $09, nCs5, $0A, nE5, nB4, $09, nEb5, $0A, nFs5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA5, $0E

WilyTower2_Loop43:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop43
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0B, nB5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb5, $0E

WilyTower2_Loop44:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop44
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0B, nA5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB5, $0E

WilyTower2_Loop45:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop45
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nCs6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE6, $0A
	smpsAlterVol        $0D
	dc.b	nE6
	smpsAlterVol        $F3
	dc.b	$09, nEb6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $0A, nB5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB5, $0A, nCs6, nEb6, nE6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs6, $0A, nE6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E

WilyTower2_Loop46:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop46
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $14
	smpsAlterNote       $00
	dc.b	nE6, $0A, nEb6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE6, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nE5, $0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterVol        $0D
	smpsAlterNote       $01
	dc.b	$09
	smpsAlterVol        $F3
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $01

WilyTower2_Loop47:
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $01
	dc.b	$0A
	smpsLoop            $00, $02, WilyTower2_Loop47
	dc.b	nFs5, $0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, nRst, $0A
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            WilyTower2_Jump05

; FM2 Data
WilyTower2_FM2:
	smpsSetvoice        $00
	smpsAlterVol        $0A
	smpsPan             panCenter, $00
	dc.b	nRst, $11, nE3, $13
	smpsAlterVol        $0B
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	$14, $13, $0A, $13
	smpsAlterVol        $0B
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	nD3, nD3, $09, nE3, $0A
	smpsSetvoice        $04
	dc.b	nE3

WilyTower2_Jump04:
	dc.b	nE3, $09, nB3, $0A, nE3, $14, $09, nB2, $0A, nA2, $14, $09
	dc.b	nE3, $0A, nA2, $13, $0A, nE3, nA2, nB2, $09, $0A, nFs3, nB2
	dc.b	$13, $0A, nFs3, nCs3, $13, $0A, nAb3, nCs3, $09, $0A, nB2, $13
	dc.b	$0A, nE3, nE3, nB3, $09, nE3, $14, $09, nB2, $0A, nA2, $14
	dc.b	$09, nE3, $0A, nA2, $14, $09, nE3, $0A, nA2, nB2, $09, $0A
	dc.b	nFs3, nB2, $13, $0A, nFs3, nE3, $13, $0A, nB3, nE3, $13, $0A
	dc.b	nE3, nA2, $13, $0A, $09, $0A, nA2, nA2, nA2, $09, $14, $09
	dc.b	$0A, nA2, nA2, nA2, $09, $0A, nE3, $13, $0A, nE3, nE3, nE3
	dc.b	$09, $0A, nE3, nE3, $13, $0A, nE3, nE3, $09, $0A, nE3, nE3
	dc.b	nA2, $13, $0A, $09, $0A, nA2, nA2, nA2, $09, $14, $0A, $09
	dc.b	$0A, nA2, nA2, $09, $0A, nB2, $14, $09, nFs3, $0A, nB2, nB2
	dc.b	$09, $14, $13, $0A, nEb3, nB2, nB2, $09, nCs3, $1D, nE3, $0A
	dc.b	nE3, nAb3, nE3, $09, $0A, nE3, nAb3, $09, nEb3, $14, $0A, nAb3
	dc.b	$09, nEb3, $0A, nEb3, nAb3, nEb3, $09, nCs3, $14, $09, nAb3, $0A
	dc.b	nCs3, nCs3, nAb3, $09, nCs3, $0A, nB2, $13, $0A, nAb3, nB2, nB2
	dc.b	$09, nAb3, $0A, nB2, nB2, $09, nA2, $0A, nA2, nE3, nA2, $09
	dc.b	$0A, nE3, nA2, nA2, $09, nAb2, $0A, nAb2, nE3, $09, nAb2, $0A
	dc.b	nAb2, nE3, nAb2, $09, $0A, nFs2, nFs2, $09, nCs3, $0A, nFs2, nFs2
	dc.b	nCs3, $09, nA2, $0A, nB2, $14, nA2, $09, nCs3, $0A, nA2, nB2
	dc.b	$09, nEb3, $0A, nFs3, $14, nE3, $09, $0A, nAb3, nE3, $09, $0A
	dc.b	nE3, nAb3, nEb3, $13, $0A, nAb3, nEb3, $09, $0A, nAb3, nEb3, $09
	dc.b	nCs3, $14, $0A, nAb3, $09, nCs3, $0A, nCs3, nAb3, $09, nCs3, $0A
	dc.b	nB2, $14, $09, nAb3, $0A, nB2, nB2, nAb3, $09, nB2, $0A, nB2
	dc.b	nA2, $09, $0A, nE3, nA2, nA2, $09, nE3, $0A, nA2, nA2, $09
	dc.b	nAb2, $0A, nAb2, nE3, nAb2, $09, $0A, nE3, nAb2, $09, $0A, nFs2
	dc.b	nFs2, nCs3, $09, nFs2, $0A, nFs2, nCs3, nA2, $09, nB2, $14, $09
	dc.b	$14, nRst, $1D, nC3

WilyTower2_Loop3C:
	dc.b	$13, $0A, nC3
	smpsLoop            $00, $03, WilyTower2_Loop3C
	dc.b	nC3, $09, nCs3, $0A, nEb3, $1D, nE3, $0A
	smpsPan             panCenter, $00
	smpsJump            WilyTower2_Jump04

; FM3 Data
WilyTower2_FM3:
	smpsSetvoice        $00
	smpsAlterVol        $15
	smpsPan             panCenter, $00
	dc.b	nRst, $11, nB4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $0B
	smpsAlterNote       $00
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $0B
	smpsAlterNote       $00
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	nA4, nA4, $09, nB4, $0A, nRst

WilyTower2_Jump03:
	dc.b	nRst, $09, nAb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst, $13
	smpsAlterNote       $00
	dc.b	nFs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E

WilyTower2_Loop2F:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop2F
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0B, nEb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $14
	smpsAlterNote       $00
	dc.b	nAb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $13
	smpsAlterNote       $00
	dc.b	nFs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, nAb4, nAb4, $09, $0A, nA4, nB4, nE4, $0E

WilyTower2_Loop30:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, WilyTower2_Loop30
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB3, $0E

WilyTower2_Loop31:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, WilyTower2_Loop31
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0F, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E

WilyTower2_Loop32:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, WilyTower2_Loop32
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6

WilyTower2_Loop33:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	smpsLoop            $00, $02, WilyTower2_Loop33

WilyTower2_Loop34:
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	smpsLoop            $00, $04, WilyTower2_Loop34
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb4, $09, nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0A, nB4, nB4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6

WilyTower2_Loop35:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	smpsLoop            $00, $02, WilyTower2_Loop35
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A

WilyTower2_Loop36:
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	smpsLoop            $00, $02, WilyTower2_Loop36
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E

WilyTower2_Loop37:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop37
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0E

WilyTower2_Loop38:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop38
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0A
	smpsAlterVol        $0B
	dc.b	nB4
	smpsAlterVol        $F5
	dc.b	nCs4, $09, nE4, $0A, nA4, nEb4, $09, nFs4, $0A, nB4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00

WilyTower2_Loop39:
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A
	smpsLoop            $00, $02, WilyTower2_Loop39
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6

WilyTower2_Loop3A:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	smpsLoop            $00, $02, WilyTower2_Loop3A
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E

WilyTower2_Loop3B:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop3B
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nA4, $0A, nCs5, nE5, $09, nA4, $0A, nCs5, nE5, nA4, $09
	dc.b	nB4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs4, $09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs5, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG5, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterVol        $0D
	smpsAlterNote       $00
	dc.b	$09
	smpsAlterVol        $F3
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA4, $0A, nB4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $0A
	smpsPan             panCenter, $00
	smpsJump            WilyTower2_Jump03

; FM4 Data
WilyTower2_FM4:
	smpsSetvoice        $00
	smpsAlterVol        $15
	smpsPan             panCenter, $00
	dc.b	nRst, $11, nAb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $0B
	smpsAlterNote       $00
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterVol        $0B
	smpsAlterNote       $00
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	nFs4, nFs4, $09, nAb4, $0A, nRst

WilyTower2_Jump02:
	dc.b	nRst, $09, nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, nRst, $13
	smpsAlterNote       $00
	dc.b	nEb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E

WilyTower2_Loop22:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop22
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0B, nB3, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $14
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $13
	smpsAlterNote       $00
	dc.b	nEb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB3, $0A, nB3, nB3, $09, $0A, nB3, nB3, nCs4, $0E

WilyTower2_Loop23:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, WilyTower2_Loop23
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb3, $0E

WilyTower2_Loop24:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, WilyTower2_Loop24
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$0F, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E

WilyTower2_Loop25:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $06, WilyTower2_Loop25
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6

WilyTower2_Loop26:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	smpsLoop            $00, $02, WilyTower2_Loop26
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb4, $0A, nB3, $09, $0A, nEb4, nB3, $09, $0A, nEb4, nB3, nB3
	dc.b	$09, nEb4, $0A, nB3, nB3, nB3, $09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $0A, nAb4, nAb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6

WilyTower2_Loop27:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	smpsLoop            $00, $02, WilyTower2_Loop27
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A

WilyTower2_Loop28:
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	smpsLoop            $00, $02, WilyTower2_Loop28
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA3, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB3, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E

WilyTower2_Loop29:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop29
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E

WilyTower2_Loop2A:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop2A
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb4, $0A
	smpsAlterVol        $0B
	dc.b	nEb4
	smpsAlterVol        $F5
	dc.b	nE3, $09, nA3, $0A, nCs4, nFs3, $09, nB3, $0A, nEb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nAb4, $09, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00

WilyTower2_Loop2B:
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A
	smpsLoop            $00, $02, WilyTower2_Loop2B
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nE4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6

WilyTower2_Loop2C:
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	smpsLoop            $00, $02, WilyTower2_Loop2C
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nA3, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB3, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E

WilyTower2_Loop2D:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop2D
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nCs4, $0E

WilyTower2_Loop2E:
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop2E
	dc.b	smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nEb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB4, $0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nC4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterVol        $0D
	smpsAlterNote       $00
	dc.b	$09
	smpsAlterVol        $F3
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs4, $0A, nEb4, $0E, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F6
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $05
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FB
	dc.b	$01, nRst, $0A
	smpsPan             panCenter, $00
	smpsJump            WilyTower2_Jump02

; FM5 Data
WilyTower2_FM5:
	smpsSetvoice        $01
	smpsAlterVol        $7F
	smpsPan             panCenter, $00
	dc.b	nRst, $07
	smpsSetvoice        $00
	smpsAlterVol        $9E
	dc.b	smpsNoAttack, $14
	smpsAlterNote       $02
	dc.b	nE5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterVol        $0B
	smpsAlterNote       $02
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterVol        $0B
	smpsAlterNote       $02
	dc.b	$0A
	smpsAlterVol        $F5
	dc.b	nD5, $09, $0A, nE5

WilyTower2_Jump01:
	dc.b	nRst, $09, nE5, $0A, nE5, nE5, nE5, $09, nB4, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nG5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0A, nFs5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nE5, $0A
	smpsAlterVol        $0D
	dc.b	nE5
	smpsAlterVol        $F3
	dc.b	nFs5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $0A
	smpsAlterNote       $02
	dc.b	nEb5, nEb5, $09, $0A, nEb5, nE5, nFs5, $09, nAb5, $0E

WilyTower2_Loop17:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop17
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0A, nFs5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $0A
	smpsAlterNote       $02
	dc.b	nE5, $09, $0A, nE5, nE5, $09, nB4, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nG5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0A, nFs5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nE5, $09
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nFs5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $0A
	smpsAlterNote       $02
	dc.b	nEb5, nEb5, nEb5, $09, $0A, nE5, nFs5, $09, nE5, $0E

WilyTower2_Loop18:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $07, WilyTower2_Loop18
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, nRst, $13, nAb5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs5, $0A, nE5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nAb5, $0A, nRst, $09, nCs5, $0A, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nEb5, $09, nE5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $14
	smpsAlterNote       $02
	dc.b	nAb5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nA5, $0A, nB5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nAb5, $09, nRst, $0A, nAb5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0A, nA5, nB5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $13
	smpsAlterNote       $02
	dc.b	nAb5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs5, $0A, nE5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nAb5, $0A, nRst, nCs5, $09, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nEb5, $09, nE5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB4, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nEb5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nE5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs5, $0A, nAb5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nA5, $0E

WilyTower2_Loop19:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop19
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0A, nB5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nAb5, $0E

WilyTower2_Loop1A:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop1A
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0A, nA5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB5, $0E

WilyTower2_Loop1B:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop1B
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$09, nCs6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nE6, $09
	smpsAlterVol        $0D
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	nE6, nEb6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs6, $0A, nB5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nE5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB5, $0A, nCs6, $09, nEb6, $0A, nE6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs6, $09, nE6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0E

WilyTower2_Loop1C:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop1C
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$09, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs6, $0A
	smpsAlterVol        $0B
	dc.b	$09
	smpsAlterVol        $F5
	dc.b	nA4, $0A, nCs5, nE5, $09, nB4, $0A, nEb5, nFs5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nA5, $0E

WilyTower2_Loop1D:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop1D
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0A, nB5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nAb5, $0E

WilyTower2_Loop1E:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop1E
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0A, nA5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB5, $0E

WilyTower2_Loop1F:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop1F
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$09, nCs6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nE6, $0A
	smpsAlterVol        $0D
	dc.b	$09
	smpsAlterVol        $F3
	dc.b	$0A, nEb6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs6, $09, nB5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nE5, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB5, $0A, nCs6, nEb6, $09, nE6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nCs6, $09, nE6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0E

WilyTower2_Loop20:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop20
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$0A, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, nRst, $14
	smpsAlterNote       $02
	dc.b	nE6, $09, nEb6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nE6, $0E, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F3
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F8
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0C
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $02
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FD
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nE5, $0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterVol        $0D
	smpsAlterNote       $01
	dc.b	$0A
	smpsAlterVol        $F3
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01
	smpsAlterNote       $01

WilyTower2_Loop21:
	dc.b	$0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsAlterNote       $01
	dc.b	$0A
	smpsLoop            $00, $02, WilyTower2_Loop21
	dc.b	nFs5, $0E, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F7
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FC
	dc.b	$01
	smpsPan             panCenter, $00
	smpsAlterNote       $02
	smpsJump            WilyTower2_Jump01

; FM6 Data
WilyTower2_FM6:
	smpsSetvoice        $02
	smpsAlterVol        $04
	smpsPan             panCenter, $00
	smpsAlterNote       $E0
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $06, nRst, $07
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop00:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop00
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop01:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop01
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, $09, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04

WilyTower2_Jump00:
	dc.b	smpsNoAttack, nCs1, $03, nRst, $06

WilyTower2_Loop02:
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsLoop            $00, $02, WilyTower2_Loop02
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06

WilyTower2_Loop03:
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $06, nRst, $07
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, $09, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09

WilyTower2_Loop04:
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsLoop            $00, $03, WilyTower2_Loop04
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06

WilyTower2_Loop05:
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop05
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, nFs4, nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop06:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop06
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, nFs4
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop07:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop07
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst

WilyTower2_Loop08:
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop08
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, nFs4
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, nFs4, nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop09:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop09
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop0A:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop0A
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop0B:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop0B
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop0C:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop0C
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03

WilyTower2_Loop0D:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop0D
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop0E:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop0E
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop0F:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop0F
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop10:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop10
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09, $14
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, nFs4, nFs4
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop11:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop11
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop12:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop12
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
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
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03

WilyTower2_Loop13:
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop13
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop14:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop14
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop15:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop15
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE

WilyTower2_Loop16:
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsLoop            $00, $02, WilyTower2_Loop16
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $09, $1E, $09, $0A, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $14
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $03
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $07, nRst, $06
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $13
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nFs4, $0A, nFs4, nFs4, $09
	smpsSetvoice        $02
	smpsAlterVol        $FE
	smpsAlterNote       $FB
	dc.b	nB0, $01, smpsNoAttack
	smpsAlterNote       $F0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E0
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $20
	dc.b	nBb0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $14
	dc.b	nA0, smpsNoAttack
	smpsAlterNote       $00
	dc.b	nCs1, $04
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            WilyTower2_Jump00

; PSG1 Data
WilyTower2_PSG1:
	dc.b	nRst, $11
	smpsPSGAlterVol     $03
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	$01
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	$01
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	nD2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $0A

WilyTower2_Jump08:
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1

WilyTower2_Loop171:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop171
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
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $FC
	dc.b	nB1

WilyTower2_Loop172:
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, WilyTower2_Loop172
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1

WilyTower2_Loop173:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop173
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
	dc.b	$0B

WilyTower2_Loop174:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsLoop            $00, $02, WilyTower2_Loop174
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE2
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
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0B, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
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
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02, nRst, $09
	smpsPSGAlterVol     $FC
	dc.b	nB1

WilyTower2_Loop175:
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, WilyTower2_Loop175
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1

WilyTower2_Loop176:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop176
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
	dc.b	$0B

WilyTower2_Loop177:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nB1
	smpsLoop            $00, $07, WilyTower2_Loop177
	smpsAlterNote       $01
	dc.b	nB1, nRst, $0A
	smpsPSGAlterVol     $FD
	smpsAlterNote       $00
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nA0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop178:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsLoop            $00, $03, WilyTower2_Loop178
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nA0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop179:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsLoop            $00, $03, WilyTower2_Loop179
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop17A:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsLoop            $00, $03, WilyTower2_Loop17A
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop17B:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsLoop            $00, $03, WilyTower2_Loop17B
	smpsAlterNote       $01
	dc.b	nE2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nA0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nA0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop17C:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsLoop            $00, $03, WilyTower2_Loop17C
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	nA0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nA1, $01
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop17D:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsLoop            $00, $02, WilyTower2_Loop17D
	smpsAlterNote       $01
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $FE
	dc.b	nFs1

WilyTower2_Loop17E:
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, WilyTower2_Loop17E
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
	dc.b	$0B
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
	dc.b	$0B
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE2
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	nE1, $01
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
	dc.b	$0B
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $01
	dc.b	nE1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
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
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nEb1
	smpsPSGAlterVol     $FF
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
	dc.b	$0B

WilyTower2_Loop17F:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb1
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nEb1
	smpsLoop            $00, $02, WilyTower2_Loop17F
	smpsAlterNote       $01
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nEb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
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
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
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
	dc.b	$0B

WilyTower2_Loop180:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsLoop            $00, $02, WilyTower2_Loop180
	smpsAlterNote       $01
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
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
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FC
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nE1, $01
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
	dc.b	$0B
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
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
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$02
	smpsPSGAlterVol     $FC
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
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nCs2
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
	dc.b	$0B
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
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
	smpsAlterNote       $00
	dc.b	$01
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
	smpsPSGAlterVol     $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nA2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nCs3
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nE3, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nB2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nEb3
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nFs3, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs3
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nE1, $01
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
	dc.b	$0B
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE1
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
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nEb1, $01
	smpsPSGAlterVol     $FF
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
	dc.b	$0B

WilyTower2_Loop181:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nEb1
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	nEb1
	smpsLoop            $00, $02, WilyTower2_Loop181
	smpsAlterNote       $01
	dc.b	nEb1
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nEb1
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
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
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
	dc.b	$0B

WilyTower2_Loop182:
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsLoop            $00, $02, WilyTower2_Loop182
	smpsAlterNote       $01
	dc.b	nAb1
	smpsAlterNote       $00
	dc.b	nAb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
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
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FC
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE1
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
	dc.b	$0B
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $01
	dc.b	nA1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01

WilyTower2_Loop183:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
	smpsLoop            $00, $02, WilyTower2_Loop183
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
	smpsPSGAlterVol     $FC
	dc.b	nAb1
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
	smpsPSGAlterVol     $FC
	dc.b	nCs2
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
	dc.b	$0B
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $01
	dc.b	nCs2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$01
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
	smpsAlterNote       $00
	dc.b	$01
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
	smpsPSGAlterVol     $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0B, nRst, $14
	smpsPSGAlterVol     $FC
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB1

WilyTower2_Loop184:
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsLoop            $00, $02, WilyTower2_Loop184
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC

WilyTower2_Loop185:
	dc.b	$01
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, WilyTower2_Loop185
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
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
	dc.b	$0B, nRst, $0A
	smpsPSGAlterVol     $FD
	smpsJump            WilyTower2_Jump08

; PSG2 Data
WilyTower2_PSG2:
	dc.b	nRst, $1B
	smpsPSGAlterVol     $06
	smpsAlterNote       $FF
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$0B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nE2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$0B
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nD2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02

WilyTower2_Jump07:
	dc.b	nRst, $09

WilyTower2_Loop15C:
	smpsPSGAlterVol     $FF
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $03, WilyTower2_Loop15C
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$02
	smpsPSGAlterVol     $FC
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nCs2
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
	smpsPSGAlterVol     $FC
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1

WilyTower2_Loop15D:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $03, WilyTower2_Loop15D
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE2
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
	dc.b	$0B

WilyTower2_Loop15E:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsLoop            $00, $02, WilyTower2_Loop15E
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0B, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1

WilyTower2_Loop15F:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop15F
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$02
	smpsPSGAlterVol     $FC
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $0A
	smpsPSGAlterVol     $FC
	dc.b	nB1

WilyTower2_Loop160:
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, WilyTower2_Loop160
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1

WilyTower2_Loop161:
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsLoop            $00, $02, WilyTower2_Loop161
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$0B

WilyTower2_Loop162:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	nB1
	smpsLoop            $00, $07, WilyTower2_Loop162
	smpsAlterNote       $00
	dc.b	nB1
	smpsAlterNote       $FF
	dc.b	$01, nRst, $0A
	smpsPSGAlterVol     $FD
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop163:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsLoop            $00, $03, WilyTower2_Loop163
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop164:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsLoop            $00, $03, WilyTower2_Loop164
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop165:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsLoop            $00, $03, WilyTower2_Loop165
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $02
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop166:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsLoop            $00, $03, WilyTower2_Loop166
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nE2
	smpsAlterNote       $FE
	dc.b	nE2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop167:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsLoop            $00, $03, WilyTower2_Loop167
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nA0
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE1, $01
	smpsPSGAlterVol     $FF
	dc.b	nE1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	nA1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $02
	dc.b	$14

WilyTower2_Loop168:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsLoop            $00, $02, WilyTower2_Loop168
	smpsAlterNote       $00
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsPSGAlterVol     $FE
	dc.b	nFs1

WilyTower2_Loop169:
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, WilyTower2_Loop169
	dc.b	nB1

WilyTower2_Loop16A:
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, WilyTower2_Loop16A
	dc.b	nEb2, $01
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	nE1, $01
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
	dc.b	$0B
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nEb1
	smpsPSGAlterVol     $FF
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
	dc.b	$0B

WilyTower2_Loop16B:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsAlterNote       $FE
	dc.b	nEb1
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsLoop            $00, $02, WilyTower2_Loop16B
	smpsAlterNote       $00
	dc.b	nEb1
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
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
	dc.b	$0B

WilyTower2_Loop16C:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsLoop            $00, $02, WilyTower2_Loop16C
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FC
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
	smpsPSGAlterVol     $FC
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nE1, $01
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
	dc.b	$0B
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$02
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
	dc.b	$0B
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nEb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nA2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nE3, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	nB2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nEb3, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nFs3, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nFs3
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
	dc.b	$0B
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nE1
	smpsAlterNote       $00
	dc.b	nE1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nE1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nEb1
	smpsPSGAlterVol     $FF
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
	dc.b	$0B

WilyTower2_Loop16D:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsAlterNote       $FE
	dc.b	nEb1
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsLoop            $00, $02, WilyTower2_Loop16D
	smpsAlterNote       $00
	dc.b	nEb1
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nEb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
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
	dc.b	$0B

WilyTower2_Loop16E:
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsAlterNote       $FE
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsLoop            $00, $02, WilyTower2_Loop16E
	smpsAlterNote       $00
	dc.b	nAb1
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nAb1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FC
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
	smpsPSGAlterVol     $FC
	dc.b	nB1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	nA0, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	nE1, $01
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
	dc.b	$0B
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $FE
	dc.b	nA1
	smpsAlterNote       $FF
	dc.b	nA1
	smpsAlterNote       $00
	dc.b	nA1
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nA1
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	dc.b	$01
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
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$02
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
	dc.b	$0B
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $FE
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsAlterNote       $00
	dc.b	nCs2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	nCs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nEb2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nEb2
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0B, nRst, $14
	smpsPSGAlterVol     $FC
	dc.b	nB1, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
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
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB1

WilyTower2_Loop16F:
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$0B
	smpsPSGAlterVol     $FC
	dc.b	nE2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nE2
	smpsLoop            $00, $02, WilyTower2_Loop16F
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FC

WilyTower2_Loop170:
	dc.b	$01
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
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nE2
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, WilyTower2_Loop170
	dc.b	nFs1, $01
	smpsPSGAlterVol     $FF
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
	dc.b	$0B
	smpsPSGAlterVol     $FC
	smpsJump            WilyTower2_Jump07

; PSG3 Data
WilyTower2_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $11
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $01

WilyTower2_Loop48:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $07, WilyTower2_Loop48
	dc.b	nRst, $18
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG, $01

WilyTower2_Loop49:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $07, WilyTower2_Loop49
	dc.b	nRst, $18
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG, $01

WilyTower2_Loop4A:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $07, WilyTower2_Loop4A
	dc.b	nRst, $0E
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG, $01

WilyTower2_Loop4B:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop4B
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_Loop4C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop4C
	smpsPSGAlterVol     $FC
	dc.b	$01

WilyTower2_Loop4D:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop4D
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop4E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop4E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02

WilyTower2_Jump06:
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop4F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop4F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop50:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop50
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop51:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop51
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop52:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop52
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop53:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop53
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop54:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop54
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop55:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop55
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop56:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop56
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop57:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop57
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop58:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop58
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop59:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop59
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop5A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop5A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop5B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop5B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop5C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop5C
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop5D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop5D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop5E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop5E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop5F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop5F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop60:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop60
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop61:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop61
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop62:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop62
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop63:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop63
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop64:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop64
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop65:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop65
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop66:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop66
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop67:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop67
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop68:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop68
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop69:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop69
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop6A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop6A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop6B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop6B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop6C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop6C
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop6D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop6D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop6E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop6E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop6F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop6F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop70:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop70
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop71:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop71
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop72:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop72
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop73:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop73
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop74:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop74
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop75:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop75
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop76:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop76
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop77:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop77
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop78:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop78
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop79:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop79
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop7A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop7A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop7B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop7B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop7C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop7C
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop7D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop7D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop7E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop7E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop7F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop7F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop80:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop80
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop81:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop81
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop82:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop82
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop83:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop83
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop84:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop84
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop85:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop85
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop86:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop86
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop87:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop87
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop88:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop88
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop89:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop89
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop8A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop8A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop8B:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop8B
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_Loop8C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop8C
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_Loop8D:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop8D
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop8E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop8E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop8F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop8F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop90:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop90
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop91:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop91
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop92:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop92
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop93:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop93
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop94:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop94
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop95:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop95
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop96:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop96
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop97:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop97
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop98:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop98
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop99:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop99
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop9A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop9A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop9B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop9B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop9C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop9C
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop9D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop9D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop9E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop9E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop9F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop9F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopA0:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopA0
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopA1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopA1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopA2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopA2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopA3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopA3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopA4:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopA4
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopA5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopA5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopA6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopA6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopA7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopA7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopA8:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopA8
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopA9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopA9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopAA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopAA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopAB:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopAB
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_LoopAC:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopAC
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopAD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopAD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopAE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopAE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopAF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopAF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopB0:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopB0
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopB1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopB1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopB2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopB2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopB3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopB3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopB4:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopB4
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopB5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopB5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopB6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopB6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopB7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopB7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopB8:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopB8
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopB9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopB9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopBA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopBA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopBB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopBB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_LoopBC:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopBC
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopBD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopBD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopBE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopBE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopBF:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopBF
	smpsPSGAlterVol     $FC
	dc.b	$01

WilyTower2_LoopC0:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopC0
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopC1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopC1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopC2:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopC2
	smpsPSGAlterVol     $FC
	dc.b	$01

WilyTower2_LoopC3:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopC3
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopC4:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopC4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopC5:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopC5
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_LoopC6:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopC6
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopC7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopC7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopC8:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopC8
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_LoopC9:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopC9
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopCA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopCA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_LoopCB:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopCB
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_LoopCC:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopCC
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_LoopCD:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopCD
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopCE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopCE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopCF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopCF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopD0:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopD0
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopD1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopD1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopD2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopD2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopD3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopD3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopD4:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopD4
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopD5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopD5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopD6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopD6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopD7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopD7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopD8:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopD8
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopD9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopD9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopDA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopDA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopDB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopDB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopDC:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopDC
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopDD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopDD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopDE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopDE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopDF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopDF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_LoopE0:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopE0
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopE1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopE1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopE2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopE2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopE3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopE3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_LoopE4:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopE4
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopE5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopE5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopE6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopE6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopE7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopE7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopE8:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopE8
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopE9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopE9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopEA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopEA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopEB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopEB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopEC:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopEC
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopED:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopED
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopEE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopEE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopEF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopEF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopF0:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopF0
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopF1:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopF1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopF2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopF2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopF3:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopF3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopF4:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopF4
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopF5:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopF5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_LoopF6:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopF6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopF7:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopF7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopF8:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopF8
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopF9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopF9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopFA:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopFA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopFB:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopFB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_LoopFC:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_LoopFC
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_LoopFD:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopFD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopFE:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopFE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_LoopFF:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_LoopFF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop100:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop100
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop101:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop101
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop102:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop102
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop103:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop103
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop104:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop104
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop105:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop105
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop106:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop106
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop107:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop107
	smpsPSGAlterVol     $FC
	dc.b	$01

WilyTower2_Loop108:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop108
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop109:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop109
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop10A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop10A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop10B:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop10B
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_Loop10C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop10C
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_Loop10D:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop10D
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop10E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop10E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop10F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop10F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop110:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop110
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop111:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop111
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop112:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop112
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop113:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop113
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop114:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop114
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop115:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop115
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop116:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop116
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop117:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop117
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop118:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop118
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop119:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop119
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop11A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop11A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop11B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop11B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop11C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop11C
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop11D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop11D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop11E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop11E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop11F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop11F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop120:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop120
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop121:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop121
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop122:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop122
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop123:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop123
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop124:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop124
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop125:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop125
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop126:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop126
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop127:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop127
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop128:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop128
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop129:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop129
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop12A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop12A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop12B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop12B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG

WilyTower2_Loop12C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop12C
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop12D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop12D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop12E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop12E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop12F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop12F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop130:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop130
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop131:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop131
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop132:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop132
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop133:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop133
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop134:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop134
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop135:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop135
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop136:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop136
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop137:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop137
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop138:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop138
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop139:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop139
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop13A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop13A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop13B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop13B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop13C:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop13C
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop13D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop13D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop13E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop13E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop13F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop13F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop140:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop140
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop141:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop141
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop142:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop142
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop143:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop143
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop144:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop144
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop145:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop145
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $0C
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop146:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop146
	smpsPSGAlterVol     $FC
	dc.b	$01

WilyTower2_Loop147:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $07, WilyTower2_Loop147
	dc.b	nRst, $0F
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG, $01

WilyTower2_Loop148:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop148
	smpsPSGAlterVol     $FC
	dc.b	$01

WilyTower2_Loop149:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop149
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_Loop14A:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop14A
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop14B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop14B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop14C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop14C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop14D:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop14D
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop14E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop14E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop14F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop14F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop150:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop150
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop151:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop151
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop152:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop152
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01

WilyTower2_Loop153:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop153
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop154:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop154
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop155:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop155
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop156:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop156
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01

WilyTower2_Loop157:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop157
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F4
	dc.b	nMaxPSG, $01

WilyTower2_Loop158:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop158
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_Loop159:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop159
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FB
	dc.b	nMaxPSG

WilyTower2_Loop15A:
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsLoop            $00, $04, WilyTower2_Loop15A
	smpsPSGAlterVol     $FC
	dc.b	$01
	smpsPSGAlterVol     $01

WilyTower2_Loop15B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $05, WilyTower2_Loop15B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, nRst, $02
	smpsJump            WilyTower2_Jump06

WilyTower2_Voices:
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

;	Voice $02
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

;	Voice $03
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

;	Voice $04
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

