StormEagle_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     StormEagle_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       StormEagle_DAC
	smpsHeaderFM        StormEagle_FM1,	$00, $00
	smpsHeaderFM        StormEagle_FM2,	$00, $00
	smpsHeaderFM        StormEagle_FM3,	$00, $00
	smpsHeaderFM        StormEagle_FM4,	$00, $00
	smpsHeaderFM        StormEagle_FM5,	$00, $00
	smpsHeaderPSG       StormEagle_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       StormEagle_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       StormEagle_PSG3,	$00, $00, $00, $00

; FM1 Data
StormEagle_FM1:
	smpsSetvoice        $00
	smpsAlterVol        $14
	smpsPan             panCenter, $00
	dc.b	nCs0

StormEagle_Loop2B:
	dc.b	$0A, $0B, $0A, $0B, $0A, $0B, $0A, $3C, nRst, $03, nCs0, $0B
	dc.b	$15
	smpsLoop            $00, $02, StormEagle_Loop2B

StormEagle_Jump04:
	smpsSetvoice        $03
	smpsAlterVol        $02
	dc.b	nCs0, $35, $0A, $0B, $0A, $06, $08, $07, $30
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $0F
	smpsAlterVol        $F4

StormEagle_Loop2C:
	dc.b	$1B
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $F4
	dc.b	nCs0, nCs0
	smpsLoop            $00, $02, StormEagle_Loop2C
	dc.b	nCs0, $1B
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $F4
	dc.b	nCs0, nCs0, $06, $24
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $F4
	dc.b	$34, $0B, $0A, $0B, $06, $07, $08, $2F
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $10
	smpsAlterVol        $F4

StormEagle_Loop2D:
	dc.b	$1A
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $F4
	dc.b	$06, $05
	smpsLoop            $00, $02, StormEagle_Loop2D
	dc.b	$20
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $0A
	smpsAlterVol        $F4
	dc.b	$25
	smpsAlterVol        $0C
	dc.b	smpsNoAttack, $05
	smpsSetvoice        $07
	smpsAlterVol        $ED
	dc.b	$0B
	smpsAlterVol        $0D
	dc.b	$0A
	smpsSetvoice        $08
	smpsAlterVol        $FD
	dc.b	$10

StormEagle_Loop2E:
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $F8
	dc.b	$25
	smpsLoop            $00, $03, StormEagle_Loop2E
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $F8
	dc.b	$20
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $0A
	smpsAlterVol        $F8
	dc.b	$20
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $0B
	smpsAlterVol        $F8
	dc.b	$15, $34
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $0B
	smpsSetvoice        $07
	smpsAlterVol        $EE
	dc.b	$0A
	smpsAlterVol        $0D
	dc.b	$0B
	smpsSetvoice        $08
	smpsAlterVol        $FD
	dc.b	$0F
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $06

StormEagle_Loop2F:
	smpsAlterVol        $F8
	dc.b	$25
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $05
	smpsLoop            $00, $02, StormEagle_Loop2F
	smpsAlterVol        $F8
	dc.b	$1A
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $F8
	dc.b	$06, $05, $1A

StormEagle_Loop30:
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $F8
	dc.b	$02, nRst, $03, nCs0, $02, nRst, $03, nCs0, $1A
	smpsLoop            $00, $03, StormEagle_Loop30
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $F8
	dc.b	$02, nRst, $03, nCs0, $02, nRst, $03, nCs0, $1B
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $05
	smpsSetvoice        $09
	smpsAlterVol        $F8
	dc.b	$02, nRst, $03, nCs0, $02, nRst, $03, nCs0, $1B
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $05
	smpsAlterVol        $F8
	dc.b	$02, nRst, $03, nCs0, $02, nRst, $03, nCs0, $45
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $0F
	smpsSetvoice        $00
	smpsAlterVol        $F3
	dc.b	$0B, nCs0, nCs0, $0A, $0B, $0A, $0B, $0A, $3C, nRst, $03, nCs0
	dc.b	$0B, $15, $0A, $0B, $0A, $0B, $0A, $0B, $0A, $3C, nRst, $03
	dc.b	nCs0, $0B, $15
	smpsPan             panCenter, $00
	smpsJump            StormEagle_Jump04

; FM2 Data
StormEagle_FM2:
	smpsPan             panLeft, $00
	dc.b	nRst, $05
	smpsSetvoice        $00
	smpsAlterVol        $1C
	dc.b	nCs0, $0A, $0B, $0A, $0B, $0A, $0B, $0A, $3C, nRst, $03, nCs0
	dc.b	$0B, $15, $0B, $0A, $0B, $0A, $0B, $0A, $0B, $3C, nRst, $03
	dc.b	nCs0, $0A, $10

StormEagle_Loop28:
	dc.b	nCs0, $02, nRst, $09, nCs0, $02, nRst, $08
	smpsLoop            $00, $0B, StormEagle_Loop28

StormEagle_Loop29:
	dc.b	nCs0, $03, nRst, $08, nCs0, $02, nRst, $08
	smpsLoop            $00, $02, StormEagle_Loop29
	dc.b	nCs0, $03

StormEagle_Loop2A:
	dc.b	nRst, $08, nCs0, $02, nRst, $09, nCs0, $02
	smpsLoop            $00, $0C, StormEagle_Loop2A
	dc.b	nRst, $08
	smpsLoop            $01, $03, StormEagle_Loop29
	dc.b	nCs0, $03, nRst, $08, nCs0, $02, nRst, $08, nCs0, $03, nRst, $08
	smpsAlterVol        $F8
	smpsPan             panCenter, $00
	dc.b	nCs0, $0A, $0B, nCs0, nCs0, $0A, $0B, $0A, $0B, $3C, nRst, $03
	dc.b	nCs0, $0A, $15, $0B, $0A, $0B, $0A, $0B, $0A, $0B, $3C, nRst
	dc.b	$03, nCs0, $0A, $15
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, $06
	smpsAlterVol        $08
	dc.b	$0A, $0B, $0A, $0B, $0A, $0B, $0A, $3C, nRst, $03, nCs0, $0B
	dc.b	$15, $0B, $0A, $0B, $0A, $0B, $0A, $0B, $3C, nRst, $03, nCs0
	dc.b	$0A, $10
	smpsPan             panLeft, $00
	smpsJump            StormEagle_Loop28

; FM3 Data
StormEagle_FM3:
	smpsPan             panRight, $00
	dc.b	nRst, $1A
	smpsSetvoice        $02
	smpsAlterVol        $20
	dc.b	nCs0, $0A, nRst, $15, nCs0, $0B, nRst, $0A, nCs0, $3F, nRst, $35
	dc.b	nCs0, $0B, nRst, $15, nCs0, $0A, nRst, $0B, nCs0, $3F, nRst, $1A

StormEagle_Jump03:
	smpsSetvoice        $04
	smpsAlterVol        $F6
	smpsPan             panCenter, $00
	dc.b	smpsNoAttack, nRst, $05
	smpsSetvoice        $06
	smpsAlterVol        $04

StormEagle_Loop17:
	dc.b	smpsNoAttack, nCs0, $06, nRst, $05, smpsNoAttack, nCs0, nRst
	smpsLoop            $00, $05, StormEagle_Loop17
	dc.b	smpsNoAttack, nCs0, $06

StormEagle_Loop18:
	dc.b	nRst, $05, smpsNoAttack, nCs0, nRst, $06, smpsNoAttack, nCs0, $05
	smpsLoop            $00, $08, StormEagle_Loop18

StormEagle_Loop19:
	dc.b	nRst, smpsNoAttack, nCs0, $06, nRst, $05, smpsNoAttack, nCs0
	smpsLoop            $00, $02, StormEagle_Loop19
	dc.b	nRst, smpsNoAttack, nCs0, $10

StormEagle_Loop1A:
	dc.b	nRst, $05, smpsNoAttack, nCs0, $06, nRst, $05, smpsNoAttack, nCs0
	smpsLoop            $00, $04, StormEagle_Loop1A

StormEagle_Loop1B:
	dc.b	nRst, $06, smpsNoAttack, nCs0, $05, nRst, smpsNoAttack, nCs0
	smpsLoop            $00, $07, StormEagle_Loop1B
	dc.b	nRst, $06

StormEagle_Loop1C:
	dc.b	smpsNoAttack, nCs0, $05, nRst, smpsNoAttack, nCs0, $06, nRst, $05
	smpsLoop            $00, $04, StormEagle_Loop1C
	dc.b	smpsNoAttack, nCs0, $10

StormEagle_Loop1D:
	dc.b	nRst, $05, smpsNoAttack, nCs0, nRst, smpsNoAttack, nCs0, $06
	smpsLoop            $00, $03, StormEagle_Loop1D

StormEagle_Loop1E:
	dc.b	nRst, $05, smpsNoAttack, nCs0, nRst, $06, smpsNoAttack, nCs0, $05
	smpsLoop            $00, $04, StormEagle_Loop1E
	dc.b	nRst, smpsNoAttack, nCs0, nRst, $06

StormEagle_Loop1F:
	dc.b	smpsNoAttack, nCs0, $02, nRst, $03
	smpsLoop            $00, $03, StormEagle_Loop1F
	dc.b	smpsNoAttack, nCs0, nRst

StormEagle_Loop20:
	dc.b	smpsNoAttack, nCs0, $02, nRst, $03
	smpsLoop            $00, $03, StormEagle_Loop20
	dc.b	smpsNoAttack, nCs0, nRst

StormEagle_Loop21:
	dc.b	smpsNoAttack, nCs0, $02, nRst, $03, smpsNoAttack, nCs0, $02, nRst, $03, smpsNoAttack, nCs0
	dc.b	$02, nRst, $04, smpsNoAttack, nCs0, $02, nRst, $03
	smpsLoop            $00, $05, StormEagle_Loop21
	dc.b	smpsNoAttack, nCs0, $02, nRst, $03, smpsNoAttack, nCs0, $02, nRst, $03, smpsNoAttack, nCs0
	dc.b	nRst, $08

StormEagle_Loop22:
	dc.b	smpsNoAttack, nCs0, $05, nRst, smpsNoAttack, nCs0, $06, nRst, $05
	smpsLoop            $00, $02, StormEagle_Loop22

StormEagle_Loop23:
	dc.b	smpsNoAttack, nCs0, nRst, $06, smpsNoAttack, nCs0, $05, nRst
	smpsLoop            $00, $05, StormEagle_Loop23
	dc.b	smpsNoAttack, nCs0, nRst, $06, smpsNoAttack, nCs0, $0F, nRst, $06

StormEagle_Loop24:
	dc.b	smpsNoAttack, nCs0, $05, nRst, smpsNoAttack, nCs0, $06, nRst, $05
	smpsLoop            $00, $08, StormEagle_Loop24

StormEagle_Loop25:
	dc.b	smpsNoAttack, nCs0, nRst, $06, smpsNoAttack, nCs0, $05, nRst
	smpsLoop            $00, $07, StormEagle_Loop25
	dc.b	smpsNoAttack, nCs0, $10

StormEagle_Loop26:
	dc.b	nRst, $05, smpsNoAttack, nCs0, $06, nRst, $05, smpsNoAttack, nCs0
	smpsLoop            $00, $07, StormEagle_Loop26

StormEagle_Loop27:
	dc.b	nRst, $06, smpsNoAttack, nCs0, $05, nRst, smpsNoAttack, nCs0
	smpsLoop            $00, $07, StormEagle_Loop27
	dc.b	nRst, $06, smpsNoAttack, nCs0, $05, nRst, smpsNoAttack, nCs0, $06, nRst, $05, smpsNoAttack
	dc.b	nCs0
	smpsSetvoice        $02
	smpsAlterVol        $06
	smpsPan             panRight, $00
	smpsJump            StormEagle_Jump03

; FM4 Data
StormEagle_FM4:
	smpsPan             panCenter, $00
	dc.b	nRst, $15
	smpsSetvoice        $02
	smpsAlterVol        $14
	dc.b	nCs0, $0A, nRst, $15, nCs0, $0B, nRst, $0A, nCs0, $3F, nRst, $35
	dc.b	nCs0, $0A, nRst, $15, nCs0, $0B, nRst, $0A, nCs0, $3F, nRst, $20

StormEagle_Jump02:
	smpsSetvoice        $01
	smpsAlterVol        $01

StormEagle_Loop0F:
	dc.b	nCs0, $02, nRst, $09, nCs0, $02, nRst, $08
	smpsLoop            $00, $03, StormEagle_Loop0F
	dc.b	nCs0, nRst, $03, nCs0, $02, nRst, $08
	smpsLoop            $01, $03, StormEagle_Loop0F
	dc.b	nCs0, $03, nRst, $08, nCs0, $02, nRst, $08, nCs0, $03, nRst, $08
	dc.b	nCs0, $02, nRst, $09, nCs0, $02, nRst, $08

StormEagle_Loop11:
	dc.b	nCs0, $02, nRst, $09, nCs0, $07, nRst, $03

StormEagle_Loop10:
	dc.b	nCs0, $02, nRst, $09, nCs0, $02, nRst, $08
	smpsLoop            $00, $03, StormEagle_Loop10
	smpsLoop            $01, $02, StormEagle_Loop11
	dc.b	nCs0, $02, nRst, $09, nCs0, $07, nRst, $03

StormEagle_Loop12:
	dc.b	nCs0, $02, nRst, $09, nCs0, $02, nRst, $08
	smpsLoop            $00, $02, StormEagle_Loop12
	dc.b	nCs0, $03, nRst, $08, nCs0, $02, nRst, $08, nCs0, $03, nRst, $08
	dc.b	nCs0, $07, nRst, $03, nCs0

StormEagle_Loop13:
	dc.b	nRst, $08, nCs0, $02, nRst, $09, nCs0, $02
	smpsLoop            $00, $03, StormEagle_Loop13
	dc.b	nRst, $08, nCs0, $07, nRst, $04

StormEagle_Loop14:
	dc.b	nCs0, $02, nRst, $08, nCs0, $02, nRst, $09
	smpsLoop            $00, $08, StormEagle_Loop14

StormEagle_Loop15:
	dc.b	nCs0, $02, nRst, $08, nCs0, $03, nRst, $08
	smpsLoop            $00, $03, StormEagle_Loop15

StormEagle_Loop16:
	dc.b	nCs0, $02, nRst, $09, nCs0, $02, nRst, $08
	smpsLoop            $00, $0C, StormEagle_Loop16
	dc.b	nCs0, $03, nRst, $08, nCs0, $02, nRst, $08, nCs0, $03, nRst, $08
	smpsPan             panRight, $00
	dc.b	nCs0, $02, nRst, $08, nCs0, $03, nRst, $08
	smpsSetvoice        $02
	smpsAlterVol        $FF
	dc.b	nCs0, $0B
	smpsSetvoice        $01
	smpsAlterVol        $01
	dc.b	$02, nRst, $08, nCs0, $02, nRst, $09
	smpsSetvoice        $02
	smpsAlterVol        $FF
	dc.b	nCs0, $0A, nRst, $0B, nCs0, $3F
	smpsSetvoice        $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $21, nRst, $09, smpsNoAttack, nCs0, $02, nRst, $08
	smpsSetvoice        $02
	smpsAlterVol        $FF
	dc.b	nCs0, $0B
	smpsSetvoice        $01
	smpsAlterVol        $01
	dc.b	$02, nRst, $08, nCs0, $02, nRst, $09
	smpsSetvoice        $02
	smpsAlterVol        $FF
	dc.b	nCs0, $0A, nRst, $0B, nCs0, $3F
	smpsSetvoice        $01
	smpsAlterVol        $01
	dc.b	$0A, $15, $03, nRst, $08, nCs0, $02, nRst, $09
	smpsSetvoice        $02
	smpsAlterVol        $FF
	dc.b	nCs0, $0A
	smpsSetvoice        $01
	smpsAlterVol        $01
	dc.b	$02, nRst, $09, nCs0, $02, nRst, $08
	smpsSetvoice        $02
	smpsAlterVol        $FF
	dc.b	nCs0, $0B, nRst, $0A, nCs0, $3F
	smpsSetvoice        $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $22, nRst, $08, smpsNoAttack, nCs0, $02, nRst, $09
	smpsSetvoice        $02
	smpsAlterVol        $FF
	dc.b	nCs0, $0A
	smpsSetvoice        $01
	smpsAlterVol        $01
	dc.b	$02, nRst, $09, nCs0, $02, nRst, $08
	smpsSetvoice        $02
	smpsAlterVol        $FF
	dc.b	nCs0, $0B, nRst, $0A, nCs0, $3F
	smpsSetvoice        $01
	smpsAlterVol        $01
	dc.b	$0B, $15
	smpsSetvoice        $02
	smpsAlterVol        $FF
	smpsPan             panCenter, $00
	smpsJump            StormEagle_Jump02

; FM5 Data
StormEagle_FM5:
	smpsSetvoice        $01
	smpsAlterVol        $1A
	smpsPan             panCenter, $00
	dc.b	nCs0, $02, nRst, $08, nCs0, $02, nRst, $09, nCs0, $0A, $02, nRst
	dc.b	$09, nCs0, $02, nRst, $08, nCs0, $0B, $02, nRst, $08, nCs0, $3F
	dc.b	$02, nRst, $09, nCs0, $15, $02, nRst, $08, nCs0, $02, nRst, $09
	dc.b	nCs0, $0A, $02, nRst, $09, nCs0, $02, nRst, $08, nCs0, $0B, $02
	dc.b	nRst, $08, nCs0, $3F, $03, nRst, $1D

StormEagle_Jump01:
	smpsSetvoice        $05
	smpsAlterVol        $EF

StormEagle_Loop01:
	dc.b	nCs0, $07, nRst, $04, nCs0, $07, nRst, $03
	smpsLoop            $00, $03, StormEagle_Loop01

StormEagle_Loop02:
	dc.b	nCs0, $08, nRst, $03, nCs0, $07, nRst, $03
	smpsLoop            $00, $0A, StormEagle_Loop02
	dc.b	nCs0, $08

StormEagle_Loop03:
	dc.b	nRst, $03, nCs0, $07, nRst, $04, nCs0, $07
	smpsLoop            $00, $04, StormEagle_Loop03

StormEagle_Loop04:
	dc.b	nRst, $03, nCs0, $08, nRst, $03, nCs0, $07
	smpsLoop            $00, $0B, StormEagle_Loop04
	dc.b	nRst, $04, nCs0, $07, nRst, $03, nCs0, $07, nRst, $04, nCs0, $07
	dc.b	nRst, $03, nCs0, $02, nRst, $03, nCs0, $02, nRst, $04, nCs0, $07
	dc.b	nRst, $03, nCs0, $07, nRst, $04, nCs0, $0A, $07, nRst, $04

StormEagle_Loop05:
	dc.b	nCs0, $07, nRst, $03, nCs0, $08, nRst, $03
	smpsLoop            $00, $0A, StormEagle_Loop05

StormEagle_Loop06:
	dc.b	nCs0, $07, nRst, $04, nCs0, $07, nRst, $03
	smpsLoop            $00, $05, StormEagle_Loop06

StormEagle_Loop07:
	dc.b	nCs0, $08, nRst, $03, nCs0, $07, nRst, $03
	smpsLoop            $00, $09, StormEagle_Loop07
	dc.b	nCs0, $08

StormEagle_Loop08:
	dc.b	nRst, $03, nCs0, $07, nRst, $04, nCs0, $07
	smpsLoop            $00, $02, StormEagle_Loop08
	dc.b	nRst, $03, nCs0, $07, nRst, $04, nCs0, $11, nRst, $04, nCs0, $07
	dc.b	nRst, $03, nCs0, $07, nRst, $04, nCs0, $07, nRst, $03, nCs0, $08
	dc.b	nRst, $03, nCs0, $02
	smpsAlterVol        $09
	dc.b	smpsNoAttack, $08
	smpsAlterVol        $F7
	dc.b	$12

StormEagle_Loop09:
	dc.b	nRst, $03, nCs0, $08, nRst, $03, nCs0, $07
	smpsLoop            $00, $03, StormEagle_Loop09
	dc.b	nRst, $03, nCs0, $08, nRst, $03, nCs0, $12

StormEagle_Loop0A:
	dc.b	nRst, $03, nCs0, $07, nRst, $03, nCs0, $08
	smpsLoop            $00, $02, StormEagle_Loop0A
	dc.b	nRst, $03, nCs0, $02
	smpsAlterVol        $09
	dc.b	smpsNoAttack, $08
	smpsAlterVol        $F7
	dc.b	$12, nRst, $03, nCs0, $08

StormEagle_Loop0B:
	dc.b	nRst, $03, nCs0, $07, nRst, $04, nCs0, $07
	smpsLoop            $00, $03, StormEagle_Loop0B
	dc.b	nRst, $03, nCs0, $12

StormEagle_Loop0C:
	dc.b	nRst, $03, nCs0, $08, nRst, $03, nCs0, $07
	smpsLoop            $00, $02, StormEagle_Loop0C
	dc.b	nRst, $03, nCs0, $02
	smpsAlterVol        $09
	dc.b	smpsNoAttack, $09
	smpsAlterVol        $F7
	dc.b	$12

StormEagle_Loop0D:
	dc.b	nRst, $03, nCs0, $07, nRst, $03, nCs0, $08
	smpsLoop            $00, $03, StormEagle_Loop0D
	dc.b	nRst, $03, nCs0, $07, nRst, $03, nCs0, $12

StormEagle_Loop0E:
	dc.b	nRst, $03, nCs0, $08, nRst, $03, nCs0, $07
	smpsLoop            $00, $02, StormEagle_Loop0E
	dc.b	nRst, $03, nCs0
	smpsAlterVol        $09
	dc.b	smpsNoAttack, $08
	smpsAlterVol        $F7
	dc.b	$12, nRst, $03
	smpsSetvoice        $01
	smpsAlterVol        $11
	smpsPan             panCenter, $00
	smpsJump            StormEagle_Jump01

; PSG1 Data
StormEagle_PSG1:
	dc.b	nRst, $7F, $7F, $52

StormEagle_Jump07:
	smpsPSGAlterVol     $03
	smpsAlterNote       $02
	dc.b	nB1, $21
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $05
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nBb1, $0A, nB1, $0B, nCs2, $0A, nD2, $06, nCs2, $08, nB1, $07
	smpsAlterNote       $01
	dc.b	nFs2, $21
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02
	smpsPSGAlterVol     $04
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nG2, $1B
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	nE2
	smpsAlterNote       $01
	dc.b	nFs2, $1B
	smpsPSGAlterVol     $04
	smpsAlterNote       $01
	dc.b	$05
	smpsPSGAlterVol     $FC
	smpsAlterNote       $02
	dc.b	nE2, nD2, nCs2, $1B
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FC
	dc.b	nFs1, nE1, $06, nFs1, $24
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	nB1, $20
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	$03
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB1
	smpsAlterNote       $06
	dc.b	$02
	smpsAlterNote       $05
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $02
	dc.b	nBb1, $0B, nB1, $0A, nCs2, $0B, nD2, $06, nCs2, $07, nB1, $08
	smpsAlterNote       $01
	dc.b	nFs2, $20
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs2
	smpsPSGAlterVol     $04
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nFs2
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nG2, $1A
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nFs2, $06
	smpsAlterNote       $02
	dc.b	nE2, $05
	smpsAlterNote       $01
	dc.b	nFs2, $1A
	smpsPSGAlterVol     $04
	smpsAlterNote       $01
	dc.b	$05
	smpsPSGAlterVol     $FC
	smpsAlterNote       $02
	dc.b	nE2, $06, nD2, $05, nCs2, $20
	smpsPSGAlterVol     $04
	dc.b	$0A
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nFs2, $0E
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	$03
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $FF
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $02
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $FD
	dc.b	nD2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	nG2
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nCs3
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nB2, $18
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB2
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	nB2
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB2
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FC
	dc.b	nCs3, $18
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nCs3
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nCs3
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	nCs3
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nCs3
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nD3, $15, nCs3, $0A, nB2, $19
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nB2
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB2
	smpsAlterNote       $02
	dc.b	$03
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nB2
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB2
	smpsAlterNote       $02
	dc.b	$04
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	nG2
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nD2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nG2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nB2, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nCs3, $01
	smpsPSGAlterVol     $FF
	dc.b	$03
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FD
	dc.b	nBb2, $01
	smpsPSGAlterVol     $FF
	dc.b	$04
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $02
	dc.b	$01
	smpsPSGAlterVol     $01
	dc.b	$0D
	smpsPSGAlterVol     $FB
	smpsAlterNote       $01
	dc.b	nB2, $07
	smpsAlterNote       $02
	dc.b	$05
	smpsAlterNote       $01
	dc.b	nB2
	smpsAlterNote       $02
	dc.b	$06
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nFs2, $05
	smpsAlterNote       $02
	dc.b	nE2, $06
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	$05
	smpsAlterNote       $01
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	$06
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nD2, $05
	smpsAlterNote       $02
	dc.b	nCs2, $06
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $02
	dc.b	$05
	smpsAlterNote       $01
	dc.b	nD2
	smpsAlterNote       $02
	dc.b	$06
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $04
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$03
	smpsPSGAlterVol     $FC
	dc.b	nB1, $05, nA1, $06, nB1
	smpsAlterNote       $03
	dc.b	$05
	smpsAlterNote       $02
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	$06
	smpsAlterNote       $02
	dc.b	$04
	smpsPSGAlterVol     $04
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsAlterNote       $02
	dc.b	nFs1, $05, nE1, $03
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01, nFs1, $06
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nFs1
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$04
	smpsPSGAlterVol     $04
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $03
	dc.b	nFs1
	smpsAlterNote       $04
	dc.b	$01
	smpsPSGAlterVol     $FC
	smpsAlterNote       $02
	dc.b	nD1, $02
	smpsAlterNote       $01
	dc.b	nD1
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $03
	dc.b	nCs1
	smpsAlterNote       $02
	dc.b	nCs1
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD1, $02
	smpsAlterNote       $01
	dc.b	nD1
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	$03
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $01
	dc.b	$04
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $04
	dc.b	nD1
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	nD1
	smpsPSGAlterVol     $04
	smpsAlterNote       $02
	dc.b	nD1
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	$02
	smpsPSGAlterVol     $FC
	smpsAlterNote       $03
	dc.b	nB0
	smpsAlterNote       $02
	dc.b	$04
	smpsAlterNote       $04
	dc.b	nA0, $02
	smpsAlterNote       $03
	dc.b	$03, nB0, $02
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterNote       $05
	dc.b	$03
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $03
	dc.b	nB0
	smpsAlterNote       $02
	dc.b	$04
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterNote       $05
	dc.b	$03
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nB0
	smpsAlterNote       $03
	dc.b	nB0
	smpsAlterNote       $04
	dc.b	$01
	smpsAlterNote       $05
	dc.b	$03
	smpsAlterNote       $04
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $04
	dc.b	nB0
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $0A
	dc.b	$01
	smpsAlterNote       $06
	dc.b	nB0
	smpsAlterNote       $02
	dc.b	nB0
	smpsAlterNote       $FF
	dc.b	nB0
	smpsAlterNote       $FE
	dc.b	nB0
	smpsAlterNote       $00
	dc.b	nB0
	smpsAlterNote       $03
	dc.b	nB0
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterNote       $0A
	dc.b	$02
	smpsAlterNote       $06
	dc.b	nB0
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nB0
	smpsAlterNote       $FE
	dc.b	nB0
	smpsAlterNote       $00
	dc.b	nB0
	smpsAlterNote       $03
	dc.b	nB0
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterNote       $0A
	dc.b	$02
	smpsAlterNote       $06
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB0
	smpsAlterNote       $FF
	dc.b	nB0
	smpsAlterNote       $FE
	dc.b	nB0
	smpsAlterNote       $00
	dc.b	nB0
	smpsAlterNote       $03
	dc.b	nB0
	smpsPSGAlterVol     $04
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterNote       $0A
	dc.b	$02
	smpsAlterNote       $06
	dc.b	$01
	smpsAlterNote       $02
	dc.b	nB0
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nB0
	smpsAlterNote       $03
	dc.b	nB0
	smpsAlterNote       $08
	dc.b	nB0
	smpsAlterNote       $0B
	dc.b	nB0
	smpsAlterNote       $0A
	dc.b	nB0
	smpsAlterNote       $06
	dc.b	nB0
	smpsAlterNote       $02
	dc.b	nB0
	smpsAlterNote       $FF
	dc.b	nB0, nRst, $7F, $7F, $48
	smpsPSGAlterVol     $F6
	smpsJump            StormEagle_Jump07

; PSG2 Data
StormEagle_PSG2:
	dc.b	nRst, $7F, $7F, $5D

StormEagle_Jump06:
	dc.b	nRst, $0B
	smpsPSGAlterVol     $07
	smpsAlterNote       $FF
	dc.b	nB1, $20
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nBb1, $0B
	smpsAlterNote       $FF
	dc.b	nB1, $0A
	smpsAlterNote       $00
	dc.b	nCs2, $0B
	smpsAlterNote       $FF
	dc.b	nD2, $06
	smpsAlterNote       $00
	dc.b	nCs2, $07
	smpsAlterNote       $FF
	dc.b	nB1, $08, nFs2, $20
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsPSGAlterVol     $04
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	$02
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nG2, $1A
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$05
	smpsPSGAlterVol     $FC
	dc.b	nFs2, $06
	smpsAlterNote       $00
	dc.b	nE2, $05
	smpsAlterNote       $FF
	dc.b	nFs2, $1A
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$05
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE2, $06
	smpsAlterNote       $FF
	dc.b	nD2, $05
	smpsAlterNote       $00
	dc.b	nCs2, $1A
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nFs1, $05
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nFs1, $2A, nB1, $21
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	$02
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $FD
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nB1
	smpsAlterNote       $03
	dc.b	$03
	smpsAlterNote       $02
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nB1
	smpsAlterNote       $FE
	dc.b	nB1
	smpsAlterNote       $00
	dc.b	nBb1, $0A
	smpsAlterNote       $FF
	dc.b	nB1, $0B
	smpsAlterNote       $00
	dc.b	nCs2, $0A
	smpsAlterNote       $FF
	dc.b	nD2, $07
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nB1, nFs2, $21
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $04
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	$02
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nG2, $1B
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$05
	smpsPSGAlterVol     $FC
	dc.b	nFs2
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nFs2, $1B
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$05
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nD2, $06
	smpsAlterNote       $00
	dc.b	nCs2, $1F
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	$0B
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nFs2, $0D
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nFs2
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nFs2
	smpsAlterNote       $FE
	dc.b	nFs2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nG2, $06
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nA2, $07
	smpsAlterNote       $00
	dc.b	$04, nB2

StormEagle_Loop51:
	dc.b	$06
	smpsAlterNote       $01
	dc.b	$05
	smpsAlterNote       $00
	smpsLoop            $00, $02, StormEagle_Loop51
	dc.b	$04
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nAb2, $02
	smpsAlterNote       $03
	dc.b	nA2, $01
	smpsAlterNote       $FF
	dc.b	nA2
	smpsAlterNote       $02
	dc.b	nBb2, $02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FF
	dc.b	nBb2
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FF
	dc.b	nAb2, $07
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nFs2, $07
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nBb2, $06
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nBb2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb2
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nBb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nBb2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nD3, $18
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nD3
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nD3
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	nD3
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nD3
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	$03
	smpsAlterNote       $FF
	dc.b	nE3, $15
	smpsAlterNote       $FE
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	nE3
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	nE3
	smpsAlterNote       $FE
	dc.b	nE3
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $FF
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsAlterNote       $00
	dc.b	nFs3, $15
	smpsAlterNote       $FF
	dc.b	nE3, $0A
	smpsAlterNote       $00
	dc.b	nD3, $19
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	$02
	smpsAlterNote       $02
	dc.b	nD3
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nD3
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nD3
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nD3
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nD3
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	nD3
	smpsAlterNote       $00
	dc.b	$01
	smpsAlterNote       $01
	dc.b	nD3
	smpsAlterNote       $02
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $02
	dc.b	$03
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nG2, $06
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$04
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$02
	smpsAlterNote       $00
	dc.b	nG2
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nG2
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nA2, $06
	smpsAlterNote       $00
	dc.b	$04, nB2, $07

StormEagle_Loop52:
	smpsAlterNote       $01
	dc.b	$05
	smpsAlterNote       $00
	dc.b	nB2
	smpsLoop            $00, $02, StormEagle_Loop52
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nAb2, $02
	smpsAlterNote       $03
	dc.b	nA2, $01
	smpsAlterNote       $FF
	dc.b	nA2
	smpsAlterNote       $02
	dc.b	nBb2
	smpsAlterNote       $FF
	dc.b	nBb2
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FF
	dc.b	$06
	smpsAlterNote       $00
	dc.b	$04
	smpsAlterNote       $FF
	dc.b	nAb2, $06
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FF
	dc.b	nAb2
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $00
	dc.b	$04
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nFs2, $06
	smpsAlterNote       $00
	dc.b	$02
	smpsAlterNote       $01
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nFs2
	smpsAlterNote       $FF
	dc.b	nBb2, $07
	smpsAlterNote       $00
	dc.b	$05
	smpsAlterNote       $FF
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	$02
	smpsAlterNote       $FF
	dc.b	$01
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	nBb2
	smpsAlterNote       $01
	dc.b	$03
	smpsAlterNote       $00
	dc.b	$01
	smpsPSGAlterVol     $FC
	dc.b	nB2, $06
	smpsAlterNote       $FF
	dc.b	nA2, $05
	smpsAlterNote       $00
	dc.b	nB2, $1A
	smpsPSGAlterVol     $04
	smpsAlterNote       $00
	dc.b	$06
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FF
	dc.b	nFs2, $05
	smpsAlterNote       $00
	dc.b	nE2
	smpsAlterNote       $FF
	dc.b	nFs2, $1A
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	nD2, $05
	smpsAlterNote       $00
	dc.b	nCs2
	smpsAlterNote       $FF
	dc.b	nD2, $1A
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	nB1, $05, nA1, nB1, $1A
	smpsPSGAlterVol     $04
	dc.b	$06
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $05
	smpsAlterNote       $FE
	dc.b	nE1
	smpsAlterNote       $FF
	dc.b	nFs1, $1B
	smpsPSGAlterVol     $04
	smpsAlterNote       $FF
	dc.b	$05
	smpsPSGAlterVol     $FC
	smpsAlterNote       $FE
	dc.b	nD1, nCs1, nD1, $1B
	smpsPSGAlterVol     $04
	dc.b	$05
	smpsPSGAlterVol     $FC
	dc.b	nB0
	smpsAlterNote       $FF
	dc.b	nA0
	smpsAlterNote       $FE
	dc.b	nB0, $2B
	smpsAlterNote       $FB
	dc.b	$02

StormEagle_Loop53:
	smpsAlterNote       $F9
	dc.b	$01
	smpsAlterNote       $FA
	dc.b	nB0
	smpsAlterNote       $FD
	dc.b	nB0
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsLoop            $00, $02, StormEagle_Loop53
	smpsAlterNote       $F9
	dc.b	$02
	smpsAlterNote       $FA
	dc.b	$01
	smpsAlterNote       $FD
	dc.b	nB0
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $05
	dc.b	nB0
	smpsPSGAlterVol     $04
	smpsAlterNote       $05
	dc.b	nB0
	smpsAlterNote       $03
	dc.b	nB0
	smpsAlterNote       $FE
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $F9
	dc.b	nB0
	smpsAlterNote       $FA
	dc.b	nB0
	smpsAlterNote       $FD
	dc.b	nB0
	smpsAlterNote       $01
	dc.b	nB0
	smpsAlterNote       $05
	dc.b	$02
	smpsAlterNote       $03
	dc.b	$01
	smpsAlterNote       $FE
	dc.b	nB0
	smpsAlterNote       $FB
	dc.b	nB0
	smpsAlterNote       $F9
	dc.b	nB0
	smpsAlterNote       $FA
	dc.b	nB0, nRst, $7F, $7F, $53
	smpsPSGAlterVol     $F9
	smpsJump            StormEagle_Jump06

; PSG3 Data
StormEagle_PSG3:
	dc.b	nRst, $7F, $7F, $38
	smpsPSGform         $E7
	dc.b	$07
	smpsPSGAlterVol     $0E

StormEagle_Loop31:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, StormEagle_Loop31
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$02

StormEagle_Loop32:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $06, StormEagle_Loop32

StormEagle_Jump05:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterNote       $F8
	dc.b	nAb5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $01
	dc.b	nMaxPSG, $07
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$06
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $02

StormEagle_Loop33:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02, nRst, $01
	smpsLoop            $00, $02, StormEagle_Loop33
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02

StormEagle_Loop34:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsLoop            $00, $06, StormEagle_Loop34

StormEagle_Loop35:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsLoop            $00, $02, StormEagle_Loop35
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $0C
	smpsPSGAlterVol     $0A

StormEagle_Loop36:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $04, StormEagle_Loop36
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$02

StormEagle_Loop37:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $04, StormEagle_Loop37
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterNote       $F8
	dc.b	nAb5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $01
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FC

StormEagle_Loop38:
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02, nRst, $01
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsLoop            $00, $02, StormEagle_Loop38
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02

StormEagle_Loop39:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsLoop            $00, $07, StormEagle_Loop39
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02

StormEagle_Loop3A:
	dc.b	nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsLoop            $00, $02, StormEagle_Loop3A
	dc.b	nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02, nRst, $01
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $0B
	smpsPSGAlterVol     $0A
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$03

StormEagle_Loop3B:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsLoop            $00, $02, StormEagle_Loop3B

StormEagle_Loop3C:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsLoop            $00, $04, StormEagle_Loop3C
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterNote       $F8
	dc.b	nAb5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $01
	dc.b	nMaxPSG, $07
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$06
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $08
	dc.b	$03

StormEagle_Loop3D:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	smpsAlterNote       $08
	dc.b	nMaxPSG, $03
	smpsLoop            $00, $03, StormEagle_Loop3D

StormEagle_Loop3E:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	smpsAlterNote       $08
	dc.b	nMaxPSG, $03
	smpsLoop            $00, $02, StormEagle_Loop3E
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG

StormEagle_Loop3F:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	smpsAlterNote       $08
	dc.b	nMaxPSG, $04
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsLoop            $00, $02, StormEagle_Loop3F

StormEagle_Loop40:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $F9
	smpsAlterNote       $08
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsLoop            $00, $02, StormEagle_Loop40

StormEagle_Loop41:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsPSGAlterVol     $F9
	smpsAlterNote       $08
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsLoop            $00, $03, StormEagle_Loop41
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02

StormEagle_Loop42:
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsLoop            $00, $03, StormEagle_Loop42
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $F9
	smpsAlterNote       $08
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01, nRst, $0C
	smpsPSGAlterVol     $0A

StormEagle_Loop43:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $04, StormEagle_Loop43

StormEagle_Loop44:
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, StormEagle_Loop44

StormEagle_Loop45:
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, StormEagle_Loop45
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterNote       $F8
	dc.b	nAb5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $01
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FF
	smpsAlterNote       $08
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02

StormEagle_Loop46:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F7
	smpsAlterNote       $08
	dc.b	nMaxPSG, $03
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $08
	dc.b	$02
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	$01, nRst, $05
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsLoop            $00, $06, StormEagle_Loop46
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F5
	smpsAlterNote       $FC
	dc.b	nAb5
	smpsAlterNote       $F8
	dc.b	nAb5
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $01
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$07
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02
	smpsPSGAlterVol     $FC
	smpsAlterNote       $01
	dc.b	$01, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $02

StormEagle_Loop47:
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02, nRst, $01
	smpsLoop            $00, $02, StormEagle_Loop47
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $02

StormEagle_Loop48:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02, nRst, $01
	smpsLoop            $00, $02, StormEagle_Loop48
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02

StormEagle_Loop49:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsLoop            $00, $06, StormEagle_Loop49
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $0C
	smpsPSGAlterVol     $0A

StormEagle_Loop4A:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $04, StormEagle_Loop4A
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$02

StormEagle_Loop4B:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $06, StormEagle_Loop4B
	smpsPSGAlterVol     $FF
	smpsAlterNote       $FC
	dc.b	nAb5, $02
	smpsAlterNote       $F8
	dc.b	$01
	smpsAlterNote       $00
	dc.b	nF5
	smpsAlterNote       $01
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$05
	smpsPSGAlterVol     $02
	smpsAlterNote       $01
	dc.b	$04
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FC

StormEagle_Loop4C:
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02, nRst, $01
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsLoop            $00, $02, StormEagle_Loop4C
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $02

StormEagle_Loop4D:
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$02, nRst, $01
	smpsLoop            $00, $02, StormEagle_Loop4D
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02

StormEagle_Loop4E:
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	$01, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $05
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsLoop            $00, $06, StormEagle_Loop4E
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst, $04
	smpsPSGAlterVol     $09
	smpsAlterNote       $01
	dc.b	nMaxPSG, $01
	smpsPSGAlterVol     $01
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $FE
	smpsAlterNote       $01
	dc.b	nMaxPSG, nRst
	smpsPSGAlterVol     $F8
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02, nRst, $0B
	smpsPSGAlterVol     $0A

StormEagle_Loop4F:
	smpsAlterNote       $01
	dc.b	nMaxPSG, $02
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, StormEagle_Loop4F
	smpsAlterNote       $01
	dc.b	$03
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$01
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$02

StormEagle_Loop50:
	smpsPSGAlterVol     $FF
	smpsAlterNote       $01
	dc.b	$01
	smpsLoop            $00, $06, StormEagle_Loop50
	smpsPSGAlterVol     $01
	smpsJump            StormEagle_Jump05

; DAC Data
StormEagle_DAC:
	dc.b	nRst, $7F, $7F, $32, dKick, $06, $05, dSnare, $15

StormEagle_Jump00:
	dc.b	dKick, dSnare, dKick, $0B, $0A, dSnare, $15, dKick, $0B, $0A, dSnare, $0B
	dc.b	dKick, $15, $0A, dSnare, $15, dKick, dSnare, dKick, $0B, $0A, dSnare, $15
	dc.b	dKick, $0B, $0A, dSnare, $0B, dKick, $15, $0B, dSnare, $15, dKick, dSnare
	dc.b	dKick, $0A, $0B, dSnare, $15, dKick, $0A, $0B, dSnare, $0A, dKick, $15
	dc.b	$0B, dSnare, $15, dKick, dSnare, dKick, $0A, $0B, dSnare, $15, dKick, $0B
	dc.b	$0A, dSnare, $0B, dKick, $15, $05, dKick, dSnare, $0B, $05, dSnare

StormEagle_Loop00:
	dc.b	dKick, $15, dSnare, dKick, $0B, $0A, dSnare, $15
	smpsLoop            $00, $02, StormEagle_Loop00
	dc.b	dKick, dSnare, dKick, $0B, dKick, dSnare, $15, dKick, dSnare, dKick, $0A, $0B
	dc.b	dSnare, $0A, $05, $06, dKick, $15, dSnare, dKick, $0A, $0B, dSnare, $15
	dc.b	dKick, dSnare, dKick, $0A, $0B, dSnare, $0A, $06, $05, dKick, $15, dSnare
	dc.b	dKick, $0B, $0A, dSnare, $15, dKick, dSnare, dKick, $0B, $0A, dSnare, $0B
	dc.b	dKick, $0A, $0B, $0A, dSnare, $0B, dKick, $15, $0A, dSnare, $0B, dKick
	dc.b	$15, $0A, dSnare, $15, dKick, $0B, $0A, dSnare, $0B, $05, dSnare, dKick
	dc.b	$0B, dKick, dSnare, $0A, dKick, $15, $0B, dSnare, $0A, dKick, $15, $0B
	dc.b	dSnare, $15, dKick, $0A, $0B, dSnare, $0A, dKick, $0B, $0A, $0B, dSnare
	dc.b	$0A, dKick, $15, $0B, dSnare, $0A, dKick, $15, $0B, dSnare, $15, dKick
	dc.b	$0A, $0B, dSnare, dSnare, $05, dSnare
	smpsJump            StormEagle_Jump00

StormEagle_Voices:
;	Voice $00	; Bass
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

;	Voice $01
;	$38
;	$75, $32, $00, $00, 	$55, $D0, $1F, $1F, 	$00, $10, $00, $00
;	$00, $00, $00, $00, 	$09, $14, $06, $02, 	$15, $16, $19, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $07
	smpsVcCoarseFreq    $00, $00, $02, $05
	smpsVcRateScale     $00, $00, $03, $01
	smpsVcAttackRate    $1F, $1F, $10, $15
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $10, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $01, $00
	smpsVcReleaseRate   $02, $06, $04, $09
	smpsVcTotalLevel    $00, $19, $16, $15

;	Voice $02
;	$38
;	$74, $32, $71, $31, 	$1F, $90, $1F, $1F, 	$00, $10, $00, $00
;	$00, $00, $00, $00, 	$08, $17, $06, $06, 	$15, $16, $19, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $03, $07
	smpsVcCoarseFreq    $01, $01, $02, $04
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $1F, $1F, $10, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $10, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $01, $00
	smpsVcReleaseRate   $06, $06, $07, $08
	smpsVcTotalLevel    $00, $19, $16, $15

;	Voice $03
;	$3A
;	$24, $61, $0C, $78, 	$1B, $58, $D9, $D6, 	$05, $11, $0B, $0A
;	$00, $10, $06, $00, 	$17, $8D, $06, $06, 	$1B, $1E, $2E, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $07, $00, $06, $02
	smpsVcCoarseFreq    $08, $0C, $01, $04
	smpsVcRateScale     $03, $03, $01, $00
	smpsVcAttackRate    $16, $19, $18, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0B, $11, $05
	smpsVcDecayRate2    $00, $06, $10, $00
	smpsVcDecayLevel    $00, $00, $08, $01
	smpsVcReleaseRate   $06, $06, $0D, $07
	smpsVcTotalLevel    $00, $2E, $1E, $1B

;	Voice $04
;	$2C
;	$74, $32, $38, $08, 	$1F, $90, $16, $14, 	$00, $10, $12, $07
;	$00, $00, $01, $01, 	$08, $17, $06, $08, 	$15, $00, $1C, $04
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $03, $07
	smpsVcCoarseFreq    $08, $08, $02, $04
	smpsVcRateScale     $00, $00, $02, $00
	smpsVcAttackRate    $14, $16, $10, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $12, $10, $00
	smpsVcDecayRate2    $01, $01, $00, $00
	smpsVcDecayLevel    $00, $00, $01, $00
	smpsVcReleaseRate   $08, $06, $07, $08
	smpsVcTotalLevel    $04, $1C, $00, $15

;	Voice $05
;	$3B
;	$09, $02, $00, $00, 	$59, $1F, $1F, $1F, 	$10, $0C, $12, $05
;	$00, $00, $00, $05, 	$37, $37, $58, $E7, 	$1E, $2D, $0F, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $00, $00, $02, $09
	smpsVcRateScale     $00, $00, $00, $01
	smpsVcAttackRate    $1F, $1F, $1F, $19
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $12, $0C, $10
	smpsVcDecayRate2    $05, $00, $00, $00
	smpsVcDecayLevel    $0E, $05, $03, $03
	smpsVcReleaseRate   $07, $08, $07, $07
	smpsVcTotalLevel    $00, $0F, $2D, $1E

;	Voice $06
;	$2C
;	$78, $78, $38, $08, 	$1A, $17, $16, $14, 	$10, $07, $12, $07
;	$01, $00, $01, $01, 	$05, $08, $06, $08, 	$1A, $05, $1C, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $07
	smpsVcCoarseFreq    $08, $08, $08, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $16, $17, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $12, $07, $10
	smpsVcDecayRate2    $01, $01, $00, $01
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $06, $08, $05
	smpsVcTotalLevel    $00, $1C, $05, $1A

;	Voice $07
;	$2C
;	$34, $08, $72, $32, 	$0F, $17, $14, $51, 	$0E, $0B, $04, $10
;	$01, $0B, $01, $09, 	$20, $3F, $00, $2F, 	$08, $05, $0E, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $00, $03
	smpsVcCoarseFreq    $02, $02, $08, $04
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $11, $14, $17, $0F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $10, $04, $0B, $0E
	smpsVcDecayRate2    $09, $01, $0B, $01
	smpsVcDecayLevel    $02, $00, $03, $02
	smpsVcReleaseRate   $0F, $00, $0F, $00
	smpsVcTotalLevel    $00, $0E, $05, $08

;	Voice $08
;	$34
;	$58, $58, $38, $08, 	$1A, $14, $16, $14, 	$10, $07, $12, $07
;	$01, $00, $01, $01, 	$05, $07, $06, $07, 	$19, $00, $16, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $05, $05
	smpsVcCoarseFreq    $08, $08, $08, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $16, $14, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $12, $07, $10
	smpsVcDecayRate2    $01, $01, $00, $01
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $06, $07, $05
	smpsVcTotalLevel    $00, $16, $00, $19

;	Voice $09
;	$34
;	$54, $54, $24, $04, 	$1A, $14, $16, $14, 	$10, $07, $12, $07
;	$01, $00, $01, $01, 	$05, $07, $06, $07, 	$19, $00, $16, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $02, $05, $05
	smpsVcCoarseFreq    $04, $04, $04, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $14, $16, $14, $1A
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $12, $07, $10
	smpsVcDecayRate2    $01, $01, $00, $01
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $06, $07, $05
	smpsVcTotalLevel    $00, $16, $00, $19

