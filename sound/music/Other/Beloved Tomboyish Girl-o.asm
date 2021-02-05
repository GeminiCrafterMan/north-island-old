Idiot_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     Idiot_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $00

	smpsHeaderDAC       Idiot_DAC
	smpsHeaderFM        Idiot_FM1,	$00, $0E
	smpsHeaderFM        Idiot_FM2,	$00, $14
	smpsHeaderFM        Idiot_FM3,	$00, $0B
	smpsHeaderFM        Idiot_FM4,	$00, $16
	smpsHeaderFM        Idiot_FM5,	$00, $16
	smpsHeaderFM        Idiot_FM6,	$00, $16
	smpsHeaderPSG       Idiot_PSG1,	$00, $0D, $00, fTone_0C
	smpsHeaderPSG       Idiot_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       Idiot_PSG3,	$00, $04, $00, fTone_02

; DAC Data
Idiot_DAC:
	smpsPan             panCenter, $00
	dc.b	dKick, $06, $03, $03, dSnare, $06, dKick, dKick, $03, $03, $03, $03
	dc.b	dSnare, $06, dKick, $03, $06, $03, $03, $03, dSnare, $06, dKick, $03
	dc.b	$03, $03, dHiTimpani, dKick, dLowTimpani, dSnare

Idiot_Loop00:
	dc.b	$06, $06

Idiot_Jump00:
	dc.b	dKick, $06, $03, $03, dSnare, $06, dKick, dKick, $03, $03, $03, $03
	dc.b	dSnare, $06, dKick, $03, $06, $03, $03, $03, dSnare, $06, dKick, $03
	dc.b	$03, $06, $03, $03
	smpsLoop            $00, $02, Idiot_Loop00
	dc.b	$03, dSnare, dKick, $06, $06, $03, $03, dSnare, $06, dKick, dKick, $03
	dc.b	$03, $03, $03, dSnare, $06, dKick, $03, $06, $03, $03, $03, dSnare
	dc.b	$06, dKick, $03, $03, $06, $03, $03, $06, $06, $06, $03, $03
	dc.b	dSnare, $06, dKick, dKick, $03, $03, $03, $03, dSnare, $06, dKick, $03
	dc.b	$06, $03, $03, $03, dSnare, $06, dKick, $03, $03, $03, dSnare, dKick
	dc.b	dKick, dKick, dSnare, dKick, $06, $06, $03, $03, dSnare, $06, dKick, dKick
	dc.b	$03, $03, $03, $03, dSnare, $06, dKick, $03, $06, $03, $03, $03
	dc.b	dSnare, $06, dKick, $03, $03, $06, $03, $03, $06, $06, $06, $03
	dc.b	$03, dSnare, $06, dKick, dKick, $03, $03, $03, $03, dSnare, $06, dKick
	dc.b	$03, $06, $03, $03, $03, dSnare, $06, dKick, $03, $03, $06, $03
	dc.b	$03, $03, dSnare, dKick, $06, $06, $03, $03, dSnare, $06, dKick, dKick
	dc.b	$03, $03, $03, $03, dSnare, $06, dKick, $03, $06, $03, $03, $03
	dc.b	dSnare, $06, dKick, $03, $03, $06, $03, $03, $06, $06, $06, $03
	dc.b	$03, dSnare, $06, dKick, dKick, $03, $03, $03, $03, dSnare, $06, dKick
	dc.b	$03, $06, $03, $03, $03, dSnare, $06, dKick, $03, $03, $03, dSnare
	dc.b	dSnare, dSnare, dSnare, dSnare, dSnare, $06, $85, $12, dKick, dKick, $06, $06
	dc.b	$03, $03, $03, $03, dSnare, dKick, dKick, dKick, dSnare, dSnare, dKick, dSnare
	dc.b	dSnare, dSnare, dKick, $06

Idiot_Loop02:
	dc.b	$85, $09, dKick

Idiot_Loop01:
	dc.b	$03, $03, $03, dSnare, dKick, $06, $06, $03, $03, $03, dSnare, $06
	dc.b	dKick, $09
	smpsLoop            $00, $03, Idiot_Loop01
	dc.b	$03, $03, $03, dSnare, dKick, $06, $06, $03, $03, $03, dSnare, $06
	smpsLoop            $01, $07, Idiot_Loop02
	dc.b	$85, $09, dKick

Idiot_Loop03:
	dc.b	$03, $03, $03, dSnare, dKick, $06, $06, $03, $03, $03, dSnare, $06
	dc.b	dKick, $09
	smpsLoop            $00, $03, Idiot_Loop03
	dc.b	$03, $03, $03, dSnare, dKick, dSnare, dKick, $06, $03, $03, $03, dSnare

Idiot_Loop05:
	dc.b	$06, dKick, $03, $03

Idiot_Loop04:
	dc.b	$03, $03, dSnare, dKick
	smpsLoop            $00, $03, Idiot_Loop04
	smpsLoop            $01, $02, Idiot_Loop05
	dc.b	dKick, $06, $85, $18, dSnare, $0C, $03, dKick, dKick, dSnare
	smpsJump            Idiot_Jump00

; FM1 Data
Idiot_FM1:
	smpsSetvoice        $00
	smpsPan             panCenter, $00
	dc.b	nRst, $54, nG4, $0C

Idiot_Jump04:
	dc.b	nC5, $09, nBb4, nC5, $06, nEb5, $18, nC5, $06, nBb4, nC5, nEb5
	dc.b	$0C, nF5, $06, nC5, nBb4, nC5, nBb4, nC5, nEb5, $1E, nC5, $06
	dc.b	nBb4, nC5, nG5, $0C, $06, nF5, $0C, nC5, $06, nBb4, nC5, nEb5
	dc.b	$1E, nC5, $06, nBb4, nC5, nEb5, $0C, nF5, $06, nC5, nBb4, nC5
	dc.b	nBb4, nC5, nEb5, $1E, nC5, $06, nBb4, nC5, nG5, $0C, $06, nF5
	dc.b	$0C, nC5, $09, nBb4, nC5, $06, nEb5, $18, nC5, $06, nBb4, nC5
	dc.b	nEb5, $0C, nF5, $06, nC5, nBb4, nC5, nBb4, nC5, nEb5, $1E, nC5
	dc.b	$06, nBb4, nC5, nG5, $0C, $06, nF5, $0C, nC5, $06, nBb4, nC5
	dc.b	nEb5, $1E, nC5, $06, nBb4, nC5, nEb5, $0C, nF5, $06, nC5, nBb4
	dc.b	nC5, nBb4, nC5, nEb5, $1E, nC5, $06, nBb4, nC5, nG5, $0C, $06
	dc.b	nEb4, $01, nE4, nF4, nFs4, nG4, nAb4, nA4, nBb4, nB4, nC5, nCs5
	dc.b	nD5, nEb5, $06, nCs5, nEb5, nFs5, $0C, nF5, $03, nCs5, nAb4, $0C
	dc.b	nEb5, $18, nRst

Idiot_Loop13:
	dc.b	$5E
	smpsLoop            $00, $12, Idiot_Loop13
	smpsAlterVol        $09
	dc.b	nEb4, $01, nE4, nF4, nFs4, nG4, nAb4, nA4, nBb4, nB4, nC5, nCs5
	dc.b	nD5
	smpsAlterVol        $F7
	smpsJump            Idiot_Jump04

; FM2 Data
Idiot_FM2:
	smpsSetvoice        $01
	smpsPan             panCenter, $00
	dc.b	nRst, $54, nG5, $0C

Idiot_Jump03:
	dc.b	nC6, $09, nBb5, nC6, $06, nEb6, $18, nC6, $06, nBb5, nC6, nEb6
	dc.b	$0C, nF6, $06, nC6, nBb5, nC6, nBb5, nC6, nEb6, $1E, nC6, $06
	dc.b	nBb5, nC6, nG6, $0C, $06, nF6, $0C, nC6, $06, nBb5, nC6, nEb6
	dc.b	$1E, nC6, $06, nBb5, nC6, nEb6, $0C, nF6, $06, nC6, nBb5, nC6
	dc.b	nBb5, nC6, nEb6, $1E, nC6, $06, nBb5, nC6, nG6, $0C, $06, nF6
	dc.b	$0C, nC6, $09, nBb5, nC6, $06, nEb6, $18, nC6, $06, nBb5, nC6
	dc.b	nEb6, $0C, nF6, $06, nC6, nBb5, nC6, nBb5, nC6, nEb6, $1E, nC6
	dc.b	$06, nBb5, nC6, nG6, $0C, $06, nF6, $0C, nC6, $06, nBb5, nC6
	dc.b	nEb6, $1E, nC6, $06, nBb5, nC6, nEb6, $0C, nF6, $06, nC6, nBb5
	dc.b	nC6, nBb5, nC6, nEb6, $1E, nC6, $06, nBb5, nC6, nG6, $0C, $06
	dc.b	nEb5, $01, nE5, nF5, nFs5, nG5, nAb5, nA5, nBb5, nB5, nC6, nCs6
	dc.b	nD6, nEb6, $06, nCs6, nEb6, nFs6, $0C, nF6, $03, nCs6, nAb5, $0C
	dc.b	nEb6, $18, nRst

Idiot_Loop12:
	dc.b	$56
	smpsLoop            $00, $09, Idiot_Loop12
	smpsAlterVol        $04
	dc.b	nF5, $06, nFs5, nBb5, nFs6, $12, $06, nBb5, nFs6, nBb5, $02, nFs6
	dc.b	$01, nBb5, $02, nFs6, $01, nBb5, $06, nFs5, $18, nRst, $06, nFs5
	dc.b	nBb5, nEb6, nBb6, $12, $06, nF6, nFs6, nF6, $02, nFs6, $01, nF6
	dc.b	$02, nFs6, $01, nCs6, $06, nD6, $18, nRst, $0C, nAb6, nFs6, $12
	dc.b	$06, nAb6, nBb6, nCs7, nAb6, nEb7, nC7, nAb6, $05, nEb7, $06, nRst
	dc.b	$01, nC7, $06, nAb6, nCs7, $0C, nBb6, $06, nFs6, nEb6, nBb6, nAb6
	dc.b	nF6, nCs6, nAb6, nAb6, $12, nBb6, $06, nFs6, nF5, nFs5, nBb5, nFs6
	dc.b	$12, $06, nBb5, nFs6, nBb6, $02, nFs7, $01, nBb6, $02, nFs7, $01
	dc.b	nBb5, $06, nFs5, $18, nRst, $06, nFs5, nBb5, nEb6, nBb6, $12, $06
	dc.b	nF6, nFs6, nF6, $02, nFs6, $01, nF6, $02, nFs6, $01, nCs6, $06
	dc.b	nD6, $18, nRst, $0C, nAb6, nFs6, $12, $06, nAb6, nBb6, nCs7, nAb6
	dc.b	nEb7, nC7, nAb6, $05, nEb7, $06, nRst, $01, nC7, $06, nAb6, nCs7
	dc.b	$0C, nBb6, $06, nFs6, nEb6, nBb6, nAb6, nF6, nCs6, nAb6, nAb6, $12
	dc.b	nBb6, $06, $0C, $0C
	smpsAlterVol        $FC
	dc.b	$06, nFs6, nEb6, nBb6, nAb6, nF6, nCs6, nAb6, nAb6, $12, nBb6, $06
	dc.b	nFs6, $12, nBb6, $06, $06, nFs6, nEb6, nBb6, nCs7, nAb6, nF6, nCs7
	smpsJump            Idiot_Jump03

; FM3 Data
Idiot_FM3:
	smpsSetvoice        $02
	smpsPan             panCenter, $00
	dc.b	nRst, $60

Idiot_Jump02:
	dc.b	nRst

Idiot_Loop10:
	dc.b	$78
	smpsLoop            $00, $07, Idiot_Loop10
	dc.b	nEb4, $06, nF4, nFs4, nAb4

Idiot_Loop11:
	dc.b	nBb4, $12, $06, nFs4, nBb4, nFs4, $02, nBb4, $01, nFs4, $02, nBb4
	dc.b	$01, nFs4, $06, nEb4, $18, nRst, $06, nEb4, nFs4, nBb4, nEb5, $12
	dc.b	$06, nCs5, nEb5, nCs5, $02, nEb5, $01, nCs5, $02, nEb5, $01, nAb4
	dc.b	$06, nBb4, $18, nRst, $0C, nF5, nFs5, $12, $06, nF5, nFs5, nBb5
	dc.b	nF5, nAb5, nEb5, nC5, nAb5, nEb5, nC5, nF5, $0C, nFs5, $06, nEb5
	dc.b	nBb4, nFs5, nF5, nAb4, nF4, nF5, nF5, $12, nEb5, $06, $06, nEb4
	dc.b	nF4, nFs4
	smpsLoop            $00, $03, Idiot_Loop11
	dc.b	nBb4, $12, $06, nFs4, nBb4, nFs4, $02, nBb4, $01, nFs4, $02, nBb4
	dc.b	$01, nFs4, $06, nEb4, $18, nRst, $06, nEb4, nFs4, nBb4, nEb5, $12
	dc.b	$06, nCs5, nEb5, nCs5, $02, nEb5, $01, nCs5, $02, nEb5, $01, nAb4
	dc.b	$06, nBb4, $18, nRst, $0C, nF5, nFs5, $12, $06, nF5, nFs5, nBb5
	dc.b	nF5, nAb5, nEb5, nC5, nAb5, nEb5, nC5, nF5, $0C, nFs5, $06, nEb5
	dc.b	nBb4, nFs5, nF5, nAb4, nF4, nF5, nF5, $12, nEb5, $06, $0C, nBb5
	dc.b	nBb5, $06, nFs5, nEb5, nBb5, nAb5, nF5, nCs5, nAb5, nAb5, $12, nBb5
	dc.b	$06, nFs5, $12, nBb5, $06, $06, nFs5, nEb5, nBb5, nCs6, nAb5, nF5
	dc.b	nCs6
	smpsJump            Idiot_Jump02

; FM4 Data
Idiot_FM4:
	smpsSetvoice        $03
	smpsPan             panCenter, $00
	dc.b	nRst, $54
	smpsAlterNote       $F4
	dc.b	nEb3, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nD3
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nC3
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, nB2
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote       $12
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $00

Idiot_Loop0E:
	dc.b	nC3

Idiot_Loop0B:
	dc.b	$06
	smpsLoop            $00, $20, Idiot_Loop0B

Idiot_Loop0C:
	dc.b	nAb2
	smpsLoop            $00, $18, Idiot_Loop0C

Idiot_Loop0D:
	dc.b	nBb2
	smpsLoop            $00, $08, Idiot_Loop0D
	smpsLoop            $01, $02, Idiot_Loop0E
	dc.b	nB2, $12, nCs3, $1E, nEb3, $30, nRst, $7E, $7E, $7E, $7E, $7E
	dc.b	$7E

Idiot_Loop0F:
	smpsAlterNote       $F4
	dc.b	nEb3, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nD3
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nC3
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, nB2
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote       $12
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $00
	dc.b	nEb3, $18, nCs3, nC3, $24, $0C, nB2, $18, nCs3, nD3, $24, $0C
	dc.b	nEb3, $18, nCs3, nC3, $24, nCs3, $0C, nB2, $18, nCs3, nEb3, $24
	smpsLoop            $00, $02, Idiot_Loop0F
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nD3
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nC3
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, nB2
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote       $12
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $00
	dc.b	nB2, $18, nCs3, nEb3, $24
	smpsAlterNote       $F4
	dc.b	$01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nD3
	smpsAlterNote       $0F
	dc.b	smpsNoAttack, nCs3
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $01
	dc.b	smpsNoAttack, nC3
	smpsAlterNote       $0D
	dc.b	smpsNoAttack, nB2
	smpsAlterNote       $F5
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $02
	dc.b	smpsNoAttack, nBb2
	smpsAlterNote       $16
	dc.b	smpsNoAttack, nA2
	smpsAlterNote       $EC
	dc.b	smpsNoAttack, $01
	smpsAlterNote       $00
	dc.b	smpsNoAttack, nAb2
	smpsAlterNote       $12
	dc.b	smpsNoAttack, nG2
	smpsAlterNote       $00
	dc.b	nB2, $18, nCs3
	smpsJump            Idiot_Loop0E

; FM5 Data
Idiot_FM5:
	smpsSetvoice        $04
	smpsPan             panCenter, $00
	dc.b	nRst, $60

Idiot_Loop09:
	dc.b	nEb5, $03, nG5, nEb6, nC6, nC6, nEb5, nC6, nG5, nEb6, nD6, nF5
	dc.b	nC6, nEb5, nEb6, nEb5, nEb6, nG5, nEb6, nD6, nC6, nF5, nC5, nG5
	dc.b	nEb5, nC5, nF5, nD5, nBb4, nC5, nEb6, nC6, nD6, nEb5, nG5, nEb6
	dc.b	nC6, nC6, nEb5, nC6, nG5, nEb6, nD6, nF5, nC6, nEb5, nEb6, nEb5
	dc.b	nEb6, nG5, nG6, nF6, nEb6, nD6, nG5, nF5, nEb5, nF5, nG5, nEb6
	dc.b	nD6, nG5, nG5, nG6, nF6
	smpsLoop            $00, $03, Idiot_Loop09
	dc.b	nEb5, nG5, nEb6, nC6, nC6, nEb5, nC6, nG5, nEb6, nD6, nF5, nC6
	dc.b	nEb5, nEb6, nEb5, nEb6, nG5, nEb6, nD6, nC6, nF5, nC5, nG5, nEb5
	dc.b	nC5, nF5, nD5, nBb4, nC5, nEb6, nC6, nD6, nEb5, nG5, nEb6, nC6
	dc.b	nC6, nEb5, nC6, nG5, nEb6, nD6, nF5, nC6, nEb5, nEb6, nEb5, nEb6
	dc.b	nG5, nG6, nF6, nEb6, nD6, nG5, nF5, nEb5, nF5, nG5, nEb6, nD6
	dc.b	nEb5, $01, nE5, nF5, nFs5, nG5, nAb5, nA5, nBb5, nB5, nC6, nCs6
	dc.b	nD6, nRst

Idiot_Loop0A:
	dc.b	$7E
	smpsLoop            $00, $0E, Idiot_Loop0A
	smpsAlterVol        $14
	dc.b	nEb4, $01, nE4, nF4, nFs4, nG4, nAb4, nA4, nBb4, nB4, nC5, nCs5
	dc.b	nD5
	smpsAlterVol        $EC
	smpsJump            Idiot_Loop09

; FM6 Data
Idiot_FM6:
	smpsSetvoice        $05
	smpsPan             panCenter, $00
	dc.b	nRst, $60

Idiot_Jump01:
	dc.b	nRst

Idiot_Loop06:
	dc.b	$66
	smpsLoop            $00, $08, Idiot_Loop06
	dc.b	nEb5, $06, nBb5, nEb5, nBb5, nCs5, nAb5, nCs5, nAb5

Idiot_Loop08:
	dc.b	nEb5, nBb5, nFs5, $03, nEb6, $09, nEb5, $06, nBb5, nFs5, $03, nEb6
	dc.b	$09, nBb4, $06, nEb5, nAb5, nC6, nEb6, nC6, nAb5, nEb5, nB4, nFs5
	dc.b	nEb5, $03, nFs5, $09, nCs5, $06, nF5, nCs5, $03, nF5, $09

Idiot_Loop07:
	dc.b	nD5, $06, nBb5, nF5, $03, nBb5, $09
	smpsLoop            $00, $02, Idiot_Loop07
	dc.b	nEb5, $06, nBb5, nFs5, $03, nEb6, $09, nCs5, $06, nFs5, nBb4, $03
	dc.b	nF5, $09, nC5, $06, nEb5, nAb5, nC6, nEb6, nC6, nAb5, nEb5, nB4
	dc.b	nFs5, nEb5, $03, nFs5, $09, nCs5, $06, nAb5, nEb5, $03, nAb5, $09
	dc.b	nEb5, $06, nBb5, nFs5, $03, nEb6, $09, nBb5, $06, nFs5, nF5, nBb4
	smpsLoop            $01, $04, Idiot_Loop08
	dc.b	nRst, $7F, $11
	smpsJump            Idiot_Jump01

; PSG1 Data
Idiot_PSG1:
	dc.b	nRst, $60

Idiot_Jump06:
	dc.b	nRst, $06

Idiot_Loop19:
	dc.b	nEb2, $03, nG2, nEb3, nC3, nC3, nEb2, nC3, nG2, nEb3, nD3, nF2
	dc.b	nC3, nEb2, nEb3, nEb2, nEb3, nG2, nEb3, nD3, nC3, nF2, nC2, nG2
	dc.b	nEb2, nC2, nF2, nD2, nBb1, nC2, nEb3, nC3, nD3, nEb2, nG2, nEb3
	dc.b	nC3, nC3, nEb2, nC3, nG2, nEb3, nD3, nF2, nC3, nEb2, nEb3, nEb2
	dc.b	nEb3, nG2, nG3, nF3, nEb3, nD3, nG2, nF2, nEb2, nF2, nG2, nEb3
	dc.b	nD3, nG2, nG2, nG3, nF3
	smpsLoop            $00, $03, Idiot_Loop19
	dc.b	nEb2, nG2, nEb3, nC3, nC3, nEb2, nC3, nG2, nEb3, nD3, nF2, nC3
	dc.b	nEb2, nEb3, nEb2, nEb3, nG2, nEb3, nD3, nC3, nF2, nC2, nG2, nEb2
	dc.b	nC2, nF2, nD2, nBb1, nC2, nEb3, nC3, nD3, nEb2, nG2, nEb3, nC3
	dc.b	nC3, nEb2, nC3, nG2, nEb3, nD3, nF2, nC3, nEb2, nEb3, nEb2, nEb3
	dc.b	nG2, nG3, nF3, nEb3, nD3, nG2, nF2, nEb2, nF2, nG2, nEb3, nD3
	dc.b	nEb2, $01, nRst

Idiot_Loop1A:
	dc.b	$59
	smpsLoop            $00, $14, Idiot_Loop1A
	dc.b	$01
	smpsJump            Idiot_Jump06

; PSG3 Data
Idiot_PSG3:
	smpsPSGform         $E7
	dc.b	nMaxPSG, $03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$09
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06, $06
	smpsPSGvoice        fTone_02
	dc.b	$09

Idiot_Loop14:
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02

Idiot_Jump05:
	dc.b	nMaxPSG, $03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$09
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $06, $03
	smpsLoop            $00, $07, Idiot_Loop14
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$09
	smpsPSGvoice        fTone_02
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06, $4E, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06, $06
	smpsPSGvoice        fTone_02
	dc.b	$06, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$06
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02

Idiot_Loop15:
	dc.b	$03, $03, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $06, $03, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03
	smpsLoop            $00, $1F, Idiot_Loop15
	dc.b	$03, $03, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $09, $03, $03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03, $03, $03

Idiot_Loop16:
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $06, Idiot_Loop16
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03

Idiot_Loop17:
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $06, Idiot_Loop17
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	dc.b	$03

Idiot_Loop18:
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$03
	smpsPSGvoice        fTone_02
	smpsLoop            $00, $06, Idiot_Loop18
	dc.b	$03
	smpsPSGvoice        fTone_01
	dc.b	$06
	smpsPSGvoice        fTone_02
	smpsJump            Idiot_Jump05

; PSG2 Data
Idiot_PSG2:
	smpsStop

Idiot_Voices:
;	Voice $00
;	$3A
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$52, $02, $02, $28, 	$18, $22, $18, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $08, $02, $02, $02
	smpsVcTotalLevel    $00, $18, $22, $18

;	Voice $01
;	$3D
;	$01, $00, $01, $02, 	$12, $1F, $1F, $14, 	$07, $02, $02, $0A
;	$05, $05, $05, $05, 	$2F, $2F, $2F, $AF, 	$1C, $00, $02, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $00, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $1F, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $02, $02, $07
	smpsVcDecayRate2    $05, $05, $05, $05
	smpsVcDecayLevel    $0A, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $02, $00, $1C

;	Voice $02
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

;	Voice $03
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

;	Voice $04
;	$3E
;	$38, $01, $7A, $34, 	$59, $D9, $5F, $9C, 	$0F, $04, $0F, $0A
;	$02, $02, $05, $05, 	$AF, $AF, $66, $66, 	$28, $00, $23, $00
	smpsVcAlgorithm     $06
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $04, $0A, $01, $08
	smpsVcRateScale     $02, $01, $03, $01
	smpsVcAttackRate    $1C, $1F, $19, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0F, $04, $0F
	smpsVcDecayRate2    $05, $05, $02, $02
	smpsVcDecayLevel    $06, $06, $0A, $0A
	smpsVcReleaseRate   $06, $06, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $28

;	Voice $05
;	$10
;	$35, $76, $70, $30, 	$DF, $DF, $5F, $5F, 	$06, $08, $09, $09
;	$06, $03, $03, $01, 	$26, $16, $06, $26, 	$21, $34, $19, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $02
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $00, $00, $06, $05
	smpsVcRateScale     $01, $01, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $09, $08, $06
	smpsVcDecayRate2    $01, $03, $03, $06
	smpsVcDecayLevel    $02, $00, $01, $02
	smpsVcReleaseRate   $06, $06, $06, $06
	smpsVcTotalLevel    $00, $19, $34, $21

