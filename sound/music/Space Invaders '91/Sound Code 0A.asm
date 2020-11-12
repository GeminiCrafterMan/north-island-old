SC0A_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     SC0A_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       SC0A_DAC
	smpsHeaderFM        SC0A_FM1,	$00, $00
	smpsHeaderFM        SC0A_FM2,	$00, $00
	smpsHeaderFM        SC0A_FM3,	$00, $00
	smpsHeaderFM        SC0A_FM4,	$00, $00
	smpsHeaderFM        SC0A_FM5,	$00, $00
	smpsHeaderPSG       SC0A_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       SC0A_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       SC0A_PSG3,	$00, $00, $00, $00

; DAC Data
SC0A_DAC:
; PSG1 Data
SC0A_PSG1:
; PSG2 Data
SC0A_PSG2:
; PSG3 Data
SC0A_PSG3:
	smpsStop

; FM1 Data
SC0A_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $10
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	nC3, $09, nRst, $01, nC3, $09, nRst, $01

SC0A_Jump04:
	dc.b	nC3, $0A, nRst, $01
	smpsAlterNote       $07
	dc.b	nBb2, $09, nRst, $01, nBb2, $09, nRst, $01, nBb2, $0A, nRst, $01
	dc.b	nAb2, $09, nRst, $01, nAb2, $0A, nRst, $01, nAb2, $09, nRst, $01
	dc.b	nF2, $09, nRst, $01, nF2, $0A, nRst, $01, nF2, $09, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nG2, $09, nRst, $01, nG2, $09, nRst, $01
	dc.b	nG2, $0A, nRst, $01, nAb2, $09, nRst, $01, nAb2, $0A, nRst, $01
	smpsAlterNote       $06
	dc.b	nC3, $09, nRst, $01, nC3, $0A
	smpsAlterNote       $07
	dc.b	nEb3, nRst, $01, nEb3, $09, nRst, $01, nAb2, $0A, nRst, $01, nAb2
	dc.b	$09, nRst, $01, nBb2, $0A, nBb2, nRst, $01, nD3, $09, nRst, $01
	dc.b	nBb2, $11, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nF3, $0A, nBb2, nRst, $01, nBb2, $09, nRst, $01
	smpsAlterNote       $06
	dc.b	nC3, $0A, nRst, $01, nC3, $09, nRst, $01
	smpsPan             panCenter, $00
	smpsJump            SC0A_Jump04

; FM2 Data
SC0A_FM2:
	smpsSetvoice        $01
	smpsAlterVol        $10
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	nC4, $10, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01

SC0A_Jump03:
	dc.b	smpsNoAttack
	smpsAlterNote       $06
	dc.b	nC4, $01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nD4, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, nRst, nEb4, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, nRst, nF4, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, nRst, nG4, $11, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nG4, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nAb4, $10

SC0A_Loop06:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsLoop            $00, $02, SC0A_Loop06
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, nRst, nG4, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst, $0B
	smpsAlterNote       $07
	dc.b	nF4, $11, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nEb4, $0A
	smpsAlterNote       $06
	dc.b	nC4, nRst, $01
	smpsAlterNote       $07
	dc.b	nBb3, $09, nRst, $01
	smpsAlterNote       $06
	dc.b	nC4, $11, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01
	smpsPan             panCenter, $00
	smpsAlterNote       $03
	smpsJump            SC0A_Jump03

; FM3 Data
SC0A_FM3:
	smpsSetvoice        $01
	smpsAlterVol        $18
	smpsPan             panCenter, $00
	dc.b	nRst, $14

SC0A_Jump02:
	dc.b	nRst, $0B
	smpsAlterNote       $07
	dc.b	nBb3, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, nRst
	smpsAlterNote       $06
	dc.b	nC4, $10, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $09
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst, smpsNoAttack, nC4, $10, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
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
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $06
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nD4, $11, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nD4, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nEb4, $10

SC0A_Loop05:
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01
	smpsLoop            $00, $02, SC0A_Loop05
	dc.b	smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, nRst, nD4, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst, $0B
	smpsAlterNote       $07
	dc.b	nD4, $11, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsAlterNote       $06
	dc.b	nC4, $0A
	smpsAlterNote       $07
	dc.b	nG3, nRst, $01, nF3, $09, nRst, $16
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsJump            SC0A_Jump02

; FM4 Data
SC0A_FM4:
	smpsSetvoice        $02
	smpsAlterVol        $26
	smpsPan             panCenter, $00
	smpsAlterNote       $06
	dc.b	nC5, $09, nRst, $01, nC5, $04, nRst, $01, nC5, $04, nRst, $01

SC0A_Jump01:
	dc.b	nC5

SC0A_Loop02:
	dc.b	$0A, nRst, $01, nC5, $09, nRst, $01, nC5, $0A
	smpsLoop            $00, $02, SC0A_Loop02

SC0A_Loop03:
	dc.b	nRst, $01, nC5, $04
	smpsLoop            $00, $03, SC0A_Loop03
	dc.b	nRst, $01, nC5, $05, $0A

SC0A_Loop04:
	dc.b	nRst, $01, nC5, $09, nRst, $01, nC5, $0A
	smpsLoop            $00, $02, SC0A_Loop04
	dc.b	nC5, nRst, $01, nC5, $09, nRst, $01, nC5, $05, nC5, nRst, $01
	dc.b	nC5, $09, nRst, $01, nC5, $04, nRst, $01, nC5, $05, $0A, nRst
	dc.b	$01, nC5, $02, nRst, $03, nC5, $02, nRst, $03, nC5, $0A, nRst
	dc.b	$01, nC5, $09, nRst, $01, nC5, $04, nRst, $01, nC5, $05, nC5
	dc.b	nRst, $01, nC5, $04, nRst, $01, nC5, $09, nRst, $01, nC5, $11
	dc.b	smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst
	smpsAlterNote       $06
	dc.b	nC5, $0A
	smpsAlterNote       $07
	dc.b	nBb4, nRst, $01, nG4, $09, nRst, $02
	smpsAlterNote       $06
	dc.b	nC5, $09, nRst, $01, nC5, $04, nRst, $01, nC5, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsJump            SC0A_Jump01

; FM5 Data
SC0A_FM5:
	smpsSetvoice        $03
	smpsAlterVol        $26
	smpsPan             panCenter, $00
	dc.b	nRst, $0A
	smpsAlterNote       $06
	dc.b	nC5, $04, nRst, $01, nC5, $04, nRst, $01

SC0A_Jump00:
	dc.b	nC5

SC0A_Loop00:
	dc.b	$0A, nRst, $01, nC5, $09, nRst, $01, nC5, $0A
	smpsLoop            $00, $02, SC0A_Loop00
	dc.b	nRst, $01, nC5, $04, nRst, $01, nC5, $04, nRst, $06, nC5, $05
	dc.b	$0A

SC0A_Loop01:
	dc.b	nRst, $01, nC5, $09, nRst, $01, nC5, $0A
	smpsLoop            $00, $02, SC0A_Loop01
	dc.b	nC5, nRst, $0B, nC5, $05, nC5, nRst, $01, nC5, $09, nRst, $01
	smpsSetvoice        $04
	smpsAlterNote       $07
	dc.b	nG4, $11, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nG5, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0B
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0A
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, nRst
	smpsSetvoice        $03
	smpsAlterNote       $06
	dc.b	nC5, $04, nRst, $01, nC5, $05, nRst, $06, nC5, $04, nRst, $01
	dc.b	nC5, $09, nRst, $01
	smpsSetvoice        $04
	dc.b	nC5, $11, smpsNoAttack
	smpsAlterNote       $03
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $FF
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst
	smpsAlterNote       $07
	dc.b	nBb4, $0A, nRst, $01, nG4, $10, smpsNoAttack
	smpsAlterNote       $04
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $01
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, nRst, $02
	smpsSetvoice        $03
	dc.b	smpsNoAttack, $0A
	smpsAlterNote       $06
	dc.b	nC5, $04, nRst, $01, nC5, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsJump            SC0A_Jump00

SC0A_Voices:
;	Voice $00
;	$3A
;	$74, $70, $10, $40, 	$CA, $08, $1F, $9F, 	$1A, $12, $0A, $01
;	$01, $01, $01, $01, 	$FF, $FF, $FF, $FF, 	$27, $28, $0A, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $01, $07, $07
	smpsVcCoarseFreq    $00, $00, $00, $04
	smpsVcRateScale     $02, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $08, $0A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $0A, $12, $1A
	smpsVcDecayRate2    $01, $01, $01, $01
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0A, $28, $27

;	Voice $01
;	$3D
;	$21, $12, $11, $02, 	$4F, $10, $0F, $50, 	$07, $0C, $08, $13
;	$07, $07, $07, $0C, 	$48, $18, $48, $47, 	$1B, $00, $00, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $01, $02
	smpsVcCoarseFreq    $02, $01, $02, $01
	smpsVcRateScale     $01, $00, $00, $01
	smpsVcAttackRate    $10, $0F, $10, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $13, $08, $0C, $07
	smpsVcDecayRate2    $0C, $07, $07, $07
	smpsVcDecayLevel    $04, $04, $01, $04
	smpsVcReleaseRate   $07, $08, $08, $08
	smpsVcTotalLevel    $00, $00, $00, $1B

;	Voice $02
;	$3A
;	$7B, $5B, $41, $41, 	$9F, $1F, $1F, $1F, 	$0F, $0B, $05, $0C
;	$0F, $19, $0C, $13, 	$F9, $F5, $F9, $06, 	$21, $01, $01, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $04, $05, $07
	smpsVcCoarseFreq    $01, $01, $0B, $0B
	smpsVcRateScale     $00, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $05, $0B, $0F
	smpsVcDecayRate2    $13, $0C, $19, $0F
	smpsVcDecayLevel    $00, $0F, $0F, $0F
	smpsVcReleaseRate   $06, $09, $05, $09
	smpsVcTotalLevel    $00, $01, $01, $21

;	Voice $03
;	$07
;	$11, $7E, $74, $71, 	$1F, $5F, $1F, $1F, 	$0D, $0A, $0D, $0D
;	$07, $15, $0B, $07, 	$D7, $06, $D7, $D7, 	$00, $00, $00, $00
	smpsVcAlgorithm     $07
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $07, $07, $01
	smpsVcCoarseFreq    $01, $04, $0E, $01
	smpsVcRateScale     $00, $00, $01, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $0D, $0A, $0D
	smpsVcDecayRate2    $07, $0B, $15, $07
	smpsVcDecayLevel    $0D, $0D, $00, $0D
	smpsVcReleaseRate   $07, $07, $06, $07
	smpsVcTotalLevel    $00, $00, $00, $00

;	Voice $04
;	$24
;	$43, $71, $73, $11, 	$1A, $9C, $5A, $98, 	$01, $01, $0B, $01
;	$05, $07, $18, $0A, 	$B3, $73, $F3, $E3, 	$1C, $00, $15, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $07, $04
	smpsVcCoarseFreq    $01, $03, $01, $03
	smpsVcRateScale     $02, $01, $02, $00
	smpsVcAttackRate    $18, $1A, $1C, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $0B, $01, $01
	smpsVcDecayRate2    $0A, $18, $07, $05
	smpsVcDecayLevel    $0E, $0F, $07, $0B
	smpsVcReleaseRate   $03, $03, $03, $03
	smpsVcTotalLevel    $00, $15, $00, $1C

