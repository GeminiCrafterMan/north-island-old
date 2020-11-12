MM2Title_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     MM2Title_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       MM2Title_DAC
	smpsHeaderFM        MM2Title_FM1,	$00, $00
	smpsHeaderFM        MM2Title_FM2,	$00, $00
	smpsHeaderFM        MM2Title_FM3,	$00, $00
	smpsHeaderFM        MM2Title_FM4,	$00, $00
	smpsHeaderFM        MM2Title_FM5,	$00, $00
	smpsHeaderPSG       MM2Title_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       MM2Title_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       MM2Title_PSG3,	$00, $00, $00, $00

; FM1 Data
MM2Title_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $2B

MM2Title_Jump05:
	smpsAlterVol        $09
	dc.b	nC3, $0A, nRst, $01, nC3, $06, $05

MM2Title_Loop04:
	dc.b	$0A

MM2Title_Loop08:
	dc.b	nRst, $01, nC3, $05, $06
	smpsLoop            $00, $02, MM2Title_Loop04
	dc.b	$09, nRst, $02, nC3, $05, nC3, nC3

MM2Title_Loop05:
	dc.b	$0A, nRst, $01, nC3, $06, $05
	smpsLoop            $00, $02, MM2Title_Loop05

MM2Title_Loop06:
	dc.b	$0A, nRst, $01, nC3, $05, $06
	smpsLoop            $00, $03, MM2Title_Loop06
	dc.b	$09

MM2Title_Loop07:
	dc.b	nRst, $01, nC3, $06, $05, $0A
	smpsLoop            $00, $03, MM2Title_Loop07
	smpsLoop            $01, $02, MM2Title_Loop08
	dc.b	nRst, $01, nC3, $05, $06, $0A, nRst, $01, nC3, $05, $06, $09
	dc.b	nRst, $02, nC3, $05, nC3, nC3

MM2Title_Loop09:
	dc.b	$0A, nRst, $01, nC3, $06, $05
	smpsLoop            $00, $02, MM2Title_Loop09

MM2Title_Loop0A:
	dc.b	$0A, nRst, $01, nC3, $05, $06
	smpsLoop            $00, $02, MM2Title_Loop0A
	dc.b	$0A, nRst, $01, nG2, $09, nRst, $02, nA2, $09, nRst, $01, nC3
	dc.b	$0A, nRst, $01
	smpsAlterVol        $F7
	smpsPan             panCenter, $00
	smpsJump            MM2Title_Jump05

; FM2 Data
MM2Title_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $2B

MM2Title_Jump04:
	smpsAlterVol        $09
	dc.b	nC5, $0B, $06, $05, $0B, $05, $06, $0B, nD5, nRst, nBb4, $2B

MM2Title_Loop00:
	dc.b	smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, MM2Title_Loop00
	dc.b	smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0B, nAb4, nAb4, $05, $06, $0A, nF4, $0B, nRst, nF4, nRst, nG4
	dc.b	$2B, nRst, $01, nG4, $0B, nAb4, nBb4, $0A, nRst, $16, nC5, $0B
	dc.b	$06, $05, $0B, $05, $06, $0B, nD5, nRst, nBb4, $2B

MM2Title_Loop01:
	dc.b	smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $E2
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F1
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $04, MM2Title_Loop01
	dc.b	smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $1E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $0F
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$0B, nAb4, $15, nRst, $01, nAb4, $0B, nBb4, $0A, nRst, $0B, nBb4
	dc.b	nRst, nC5, $16

MM2Title_Loop02:
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $0E
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $F2
	dc.b	$02, smpsNoAttack
	smpsAlterNote       $F9
	dc.b	$01, smpsNoAttack
	smpsAlterNote       $00
	dc.b	$01
	smpsLoop            $00, $03, MM2Title_Loop02
	dc.b	smpsNoAttack
	smpsAlterNote       $07
	dc.b	$01, nRst, $02
	smpsAlterNote       $00
	dc.b	nG6

MM2Title_Loop03:
	dc.b	nRst, $03, nF6, $02, nRst, $04, nEb6, $02
	smpsLoop            $00, $02, MM2Title_Loop03
	dc.b	nRst, $03, nD6, $02, nRst, $03, nCs6, nRst, nC6, $02, nRst, $03
	smpsAlterVol        $F7
	smpsPan             panCenter, $00
	smpsJump            MM2Title_Jump04

; FM3 Data
MM2Title_FM3:
	smpsSetvoice        $02
	smpsPan             panLeft, $00
	dc.b	nRst, $2B

MM2Title_Jump03:
	smpsAlterVol        $0C
	dc.b	nG3, $15, nRst, $01, nG3, $1F, nRst, $02, nG3, $0A, nRst, $0C
	dc.b	nF3, $29, nRst, $02, nF3, $15, nRst, $01, nF3, $0A, nRst, $01
	dc.b	nF3, $15, nRst, $01, nAb3, $14, nRst, $02, nAb3, $09, nRst, $01
	dc.b	nF3, $0A, nRst, $0C, nF3, $0A, nRst, $0C, nG3, $2A, nRst, $02
	dc.b	nG3, $0A, nRst, $01, nEb3, $09, nRst, $02, nF3, $09, nRst, $17
	dc.b	nG3, $15, nRst, $01, nG3, $1F, nRst, $02, nG3, $0A, nRst, $0C
	dc.b	nF3, $29, nRst, $02, nF3, $15, nRst, $01, nF3, $0A, nRst, $01
	dc.b	nF3, $15, nRst, $01, nAb3, $15, nRst, $01, nAb3, $09, nRst, $02
	dc.b	nF3, $09, nRst, $0C, nF3, $0A, nRst, $0C, nG3, $15, nRst, $01
	dc.b	nG3, $0A, nRst, $01, nG3, $15, nRst, $01, nG4, $05, nF4, $06
	dc.b	nEb4, $05, nF4, $06, nEb4, $05, nD4, nCs4, $06, nC4, $05
	smpsAlterVol        $F4
	smpsPan             panLeft, $00
	smpsJump            MM2Title_Jump03

; FM4 Data
MM2Title_FM4:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $2B

MM2Title_Jump02:
	smpsAlterVol        $10
	dc.b	nC4, $15, nRst, $01, nC4, $1F, nRst, $02, nC4, $0A, nRst, $0C
	dc.b	nBb3, $29, nRst, $02, nBb3, $15, nRst, $01, nBb3, $0A, nRst, $01
	dc.b	nBb3, $15, nRst, $01, nC4, $14, nRst, $02, nC4, $09, nRst, $01
	dc.b	nBb3, $0A, nRst, $0C, nBb3, $0A, nRst, $0C, nC4, $2A, nRst, $02
	dc.b	nC4, $0A, nRst, $01, nAb3, $09, nRst, $02, nBb3, $09, nRst, $17
	dc.b	nC4, $15, nRst, $01, nC4, $1F, nRst, $02, nC4, $0A, nRst, $0C
	dc.b	nBb3, $29, nRst, $02, nBb3, $15, nRst, $01, nBb3, $0A, nRst, $01
	dc.b	nBb3, $15, nRst, $01, nC4, $15, nRst, $01, nC4, $09, nRst, $02
	dc.b	nBb3, $09, nRst, $0C, nBb3, $0A, nRst, $0C, nC4, $15, nRst, $01
	dc.b	nC4, $0A, nRst, $01, nC4, $15, nRst, $2C
	smpsAlterVol        $F0
	smpsPan             panCenter, $00
	smpsJump            MM2Title_Jump02

; FM5 Data
MM2Title_FM5:
	smpsSetvoice        $02
	smpsPan             panRight, $00
	dc.b	nRst, $2B

MM2Title_Jump01:
	smpsAlterVol        $0C
	dc.b	nE4, $15, nRst, $01, nE4, $1F, nRst, $02, nE4, $0A, nRst, $0C
	dc.b	nD4, $29, nRst, $02, nD4, $15, nRst, $01, nD4, $0A, nRst, $01
	dc.b	nD4, $15, nRst, $01, nEb4, $14, nRst, $02, nEb4, $09, nRst, $01
	dc.b	nD4, $0A, nRst, $0C, nD4, $0A, nRst, $0C, nE4, $2A, nRst, $02
	dc.b	nE4, $0A, nRst, $01, nC4, $09, nRst, $02, nD4, $09, nRst, $17
	dc.b	nE4, $15, nRst, $01, nE4, $1F, nRst, $02, nE4, $0A, nRst, $0C
	dc.b	nD4, $29, nRst, $02, nD4, $15, nRst, $01, nD4, $0A, nRst, $01
	dc.b	nD4, $15, nRst, $01, nEb4, $15, nRst, $01, nEb4, $09, nRst, $02
	dc.b	nD4, $09, nRst, $0C, nD4, $0A, nRst, $0C, nE4, $15, nRst, $01
	dc.b	nE4, $0A, nRst, $01, nE4, $15, nRst, $01, nG5, $05, nF5, $06
	dc.b	nEb5, $05, nF5, $06, nEb5, $05, nD5, nCs5, $06, nC5, $05
	smpsAlterVol        $F4
	smpsPan             panRight, $00
	smpsJump            MM2Title_Jump01

; PSG1 Data
MM2Title_PSG1:
	dc.b	nRst, $2B

MM2Title_Jump08:
	smpsPSGAlterVol     $03
	dc.b	nC2, $05
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	nD2, $05
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $0B
	smpsPSGAlterVol     $FE
	dc.b	nBb1, $05
	smpsPSGAlterVol     $01
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$06

MM2Title_Loop6E:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM2Title_Loop6E
	smpsPSGAlterVol     $01
	dc.b	$33
	smpsPSGAlterVol     $F9
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $FF
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $0B
	smpsPSGAlterVol     $FE
	dc.b	nF1, $05
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $0B
	smpsPSGAlterVol     $FE
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$06

MM2Title_Loop6F:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM2Title_Loop6F
	smpsPSGAlterVol     $01
	dc.b	$07, nRst, $01
	smpsPSGAlterVol     $F9
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	nBb1, $05
	smpsPSGAlterVol     $01
	dc.b	nBb1, nRst, $16
	smpsPSGAlterVol     $FF
	dc.b	nC2, $05
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	nD2, $05
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $0B
	smpsPSGAlterVol     $FE
	dc.b	nBb1, $05
	smpsPSGAlterVol     $01
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$06

MM2Title_Loop70:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM2Title_Loop70
	smpsPSGAlterVol     $01
	dc.b	$33
	smpsPSGAlterVol     $F9
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05, nRst, $01
	smpsPSGAlterVol     $FD
	dc.b	nAb1, $05
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FE
	dc.b	nBb1, $05
	smpsPSGAlterVol     $01
	dc.b	nBb1, nRst, $0B
	smpsPSGAlterVol     $FF
	dc.b	nBb1, $05
	smpsPSGAlterVol     $01
	dc.b	nBb1
	smpsPSGAlterVol     $01
	dc.b	$01, nRst, $0B
	smpsPSGAlterVol     $FE
	dc.b	nC2, $05
	smpsPSGAlterVol     $01
	dc.b	nC2
	smpsPSGAlterVol     $01
	dc.b	$06

MM2Title_Loop71:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM2Title_Loop71
	smpsPSGAlterVol     $01
	dc.b	$11, nRst, $02
	smpsPSGAlterVol     $F9
	dc.b	nG3

MM2Title_Loop72:
	dc.b	nRst, $03, nF3, $02, nRst, $04, nEb3, $02
	smpsLoop            $00, $02, MM2Title_Loop72
	dc.b	nRst, $03, nD3, $02, nRst, $03, nCs3, nRst, nC3, $02, nRst, $03
	smpsPSGAlterVol     $FD
	smpsJump            MM2Title_Jump08

; PSG2 Data
MM2Title_PSG2:
	dc.b	nRst, $2B

MM2Title_Jump07:
	smpsPSGAlterVol     $02
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$05, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nG1, $0A
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nG1, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1, nRst, $0C
	smpsPSGAlterVol     $FF
	dc.b	nF1, $05
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$06

MM2Title_Loop69:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM2Title_Loop69
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $01
	smpsPSGAlterVol     $F9
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nEb1, $05
	smpsPSGAlterVol     $01
	dc.b	nEb1, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nEb1, $0A
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	$04, nRst, $01

MM2Title_Loop6A:
	smpsPSGAlterVol     $FF
	dc.b	nD1, $05
	smpsPSGAlterVol     $01
	dc.b	nD1, nRst, $0C
	smpsLoop            $00, $02, MM2Title_Loop6A
	smpsPSGAlterVol     $FF
	dc.b	nE1, $05
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$06

MM2Title_Loop6B:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM2Title_Loop6B
	smpsPSGAlterVol     $01
	dc.b	$06, nRst, $02
	smpsPSGAlterVol     $F9
	dc.b	nE1, $05
	smpsPSGAlterVol     $01
	dc.b	nE1, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nEb1, $05
	smpsPSGAlterVol     $01
	dc.b	$04, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nF1, $05
	smpsPSGAlterVol     $01
	dc.b	$04, nRst, $17
	smpsPSGAlterVol     $FF
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$05, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nG1, $0A
	smpsPSGAlterVol     $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	dc.b	$05
	smpsPSGAlterVol     $01
	dc.b	nG1, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1, nRst, $0C
	smpsPSGAlterVol     $FF
	dc.b	nF1, $05
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$06

MM2Title_Loop6C:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM2Title_Loop6C
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $01
	smpsPSGAlterVol     $F9
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1, nRst, $01
	smpsPSGAlterVol     $FF
	dc.b	nEb1, $05
	smpsPSGAlterVol     $01
	dc.b	nEb1
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $01
	dc.b	$05, nRst, $01
	smpsPSGAlterVol     $FD
	dc.b	nEb1, $05
	smpsPSGAlterVol     $01
	dc.b	$04, nRst, $02
	smpsPSGAlterVol     $FF
	dc.b	nF1, $05
	smpsPSGAlterVol     $01
	dc.b	$04, nRst, $0C
	smpsPSGAlterVol     $FF
	dc.b	nF1, $05
	smpsPSGAlterVol     $01
	dc.b	nF1, nRst, $0C
	smpsPSGAlterVol     $FF
	dc.b	nG1, $05
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$06

MM2Title_Loop6D:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsLoop            $00, $04, MM2Title_Loop6D
	smpsPSGAlterVol     $01
	dc.b	$11, nRst, $2D
	smpsPSGAlterVol     $F7
	smpsJump            MM2Title_Jump07

; PSG3 Data
MM2Title_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $2B

MM2Title_Jump06:
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG

MM2Title_Loop0B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop0B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop0C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop0C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop0D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop0D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop0E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop0E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop0F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop0F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop10:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop10
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop11:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop11
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop12:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop12
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop13:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop13
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop14:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop14
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop15:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop15
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop16:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop16
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop17:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop17
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop18:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop18
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop19:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop19
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop1A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop1A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop1B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop1B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop1C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop1C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop1D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop1D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop1E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop1E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop1F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop1F
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop20:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop20
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop21:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop21
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop22:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop22
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop23:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop23
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop24:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop24
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop25:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop25
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop26:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop26
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop27:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop27
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop28:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop28
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop29:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop29
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop2A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop2A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop2B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop2B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop2C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop2C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop2D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop2D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop2E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop2E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop2F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop2F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop30:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop30
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop31:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop31
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop32:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop32
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop33:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop33
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop34:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop34
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop35:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop35
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop36:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop36
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop37:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop37
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop38:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, MM2Title_Loop38
	dc.b	$02
	smpsPSGAlterVol     $FD

MM2Title_Loop39:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop39
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop3A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop3A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop3B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop3B
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop3C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop3C
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop3D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop3D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop3E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop3E
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop3F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop3F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop40:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop40
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop41:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop41
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop42:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop42
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop43:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop43
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop44:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop44
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop45:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop45
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop46:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop46
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop47:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop47
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop48:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop48
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop49:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop49
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop4A:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop4A
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop4B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop4B
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop4C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop4C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop4D:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop4D
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop4E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop4E
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop4F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop4F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop50:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop50
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop51:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop51
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop52:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop52
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop53:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop53
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop54:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop54
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop55:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop55
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop56:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop56
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop57:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop57
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop58:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop58
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop59:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop59
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop5A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop5A
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop5B:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop5B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop5C:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop5C
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop5D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop5D
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop5E:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop5E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop5F:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop5F
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop60:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop60
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop61:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop61
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop62:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop62
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop63:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop63
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop64:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop64
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8

MM2Title_Loop65:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop65
	dc.b	nMaxPSG, nRst, $06
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop66:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop66
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F8

MM2Title_Loop67:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, MM2Title_Loop67
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

MM2Title_Loop68:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, MM2Title_Loop68
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	smpsJump            MM2Title_Jump06

; DAC Data
MM2Title_DAC:
	dc.b	dClap, $05, dClap, dClap, $06, $05, $06, $05, $0B

MM2Title_Jump00:
	dc.b	$84, $16, dSnare, dKick, $0B, dKick, dSnare, dKick, $15, $0B, dSnare, dKick
	dc.b	$16, $05, $06, dSnare, $0B, dKick, dKick, $16, dSnare, $15, dKick, $0B
	dc.b	dKick, dSnare, dKick, $16, $0B, dSnare, dKick, $16, $05, dKick, dSnare, $0B
	dc.b	dKick, $84, $16, dSnare, dKick, $0B, dKick, dSnare, dKick, $15, $0B, dSnare
	dc.b	dKick, $16, $06, $05, dSnare, $0B, dKick, dKick, $16, dSnare, $15, dKick
	dc.b	$0B, dKick, dSnare, dKick, $16, $0B, dSnare, dKick, $16, $05, $06, dSnare
	dc.b	$0A, $06, $84, $05
	smpsJump            MM2Title_Jump00

MM2Title_Voices:
;	Voice $00
;	$2A
;	$30, $70, $08, $01, 	$1F, $1F, $1F, $1F, 	$08, $10, $0E, $0C
;	$00, $03, $06, $05, 	$30, $20, $29, $28, 	$22, $14, $2A, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $07, $03
	smpsVcCoarseFreq    $01, $08, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $0E, $10, $08
	smpsVcDecayRate2    $05, $06, $03, $00
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $08, $09, $00, $00
	smpsVcTotalLevel    $00, $2A, $14, $22

;	Voice $01
;	$38
;	$0A, $08, $01, $02, 	$14, $14, $10, $0E, 	$05, $08, $02, $08
;	$00, $00, $00, $00, 	$99, $09, $09, $19, 	$28, $23, $24, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $08, $0A
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $10, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $02, $08, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $09
	smpsVcReleaseRate   $09, $09, $09, $09
	smpsVcTotalLevel    $00, $24, $23, $28

;	Voice $02
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $87, 	$1C, $22, $15, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $06, $07, $05
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1A, $18, $16, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $01, $01, $05
	smpsVcDecayRate2    $01, $01, $01, $09
	smpsVcDecayLevel    $08, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $15, $22, $1C

