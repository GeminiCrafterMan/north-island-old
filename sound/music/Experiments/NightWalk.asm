NightWalk_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     NightWalk_Voices
	smpsHeaderChan      $07, $03
	smpsHeaderTempo     $02, $06

	smpsHeaderDAC       NightWalk_DAC
	smpsHeaderFM        NightWalk_FM1,	$00, $14
	smpsHeaderFM        NightWalk_FM2,	$00, $13
	smpsHeaderFM        NightWalk_FM3,	$00, $12
	smpsHeaderFM        NightWalk_FM4,	$00, $1F
	smpsHeaderFM        NightWalk_FM5,	$00, $0F
	smpsHeaderFM        NightWalk_FM6,	$00, $17
	smpsHeaderPSG       NightWalk_PSG1,	$00, $02, $00, $0F
	smpsHeaderPSG       NightWalk_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       NightWalk_PSG3,	$00, $06, $00, $00

; DAC Data
NightWalk_DAC:
	smpsPan             panCenter, $00
	dc.b	dKick, $0C, dKick, $0C, dKick, $0C, dKick, $0C, dKick, $0C, dKick, $0C
	dc.b	dKick, $0B, dSnare, $01, dKick, $03, dSnare, $03, dSnare, $03, dSnare, $03
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $06, dSnare, $03, dSnare, $03, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $06
	dc.b	dSnare, $03, dSnare, $03, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0B, dSnare, $01, dSnare, $03, dSnare, $03, dSnare, $03, dSnare, $03
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $09, dSnare, $02, dSnare, $01
	dc.b	dSnare, $03, dSnare, $03, dSnare, $03, dSnare, $03, dSnare, $03, dSnare, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $0C
	dc.b	dKick, $0C, dSnare, $0C, dKick, $0C, dSnare, $18, dSnare, $03, dSnare, $06
	dc.b	dSnare, $03, dSnare, $18
	smpsPan             panCenter, $00
	smpsStop

; FM1 Data
NightWalk_FM1:
	smpsPan             panCenter, $00
	smpsSetvoice        $08
	dc.b	nG4, $03, nFs4, $03, nE4, $03, nD4, $03, nC4, $03, nB3, $03
	dc.b	nA3, $03, nG3, $03, nG3, $03, nFs3, $03, nE3, $03, nD3, $03
	dc.b	nC3, $03, nB2, $03, nA2, $03, nG2, $03, nD2, $03, nE2, $03
	dc.b	nFs2, $03, nA2, $03, nD3, $03, nE3, $03, nFs3, $03, nA3, $03
	dc.b	nD4, $03, nRst, $7F, $7F, $67, nB5, $0C, nA5, $0C, nG5, $0C
	dc.b	nF5, $0C, nRst, $7F, $7F, $52, nC6, $0C, nBb5, $0C, nAb5, $0C
	dc.b	nFs5, $0C, nRst, $6C, $6C, $6C, $6C, $6C, $6C, $6C, $6C, $6C
	dc.b	$6C, $6C, $6C
	smpsPan             panCenter, $00
	smpsSetvoice        $08
	smpsStop

; FM2 Data
NightWalk_FM2:
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $60, nC5, $09, nE4, $06, nRst, $03, nE4, $05, nRst, $01
	dc.b	nC5, $09, nE4, $06, nRst, $03, nC5, $06, nB4, $09, nRst, $03
	dc.b	nA4, $09, nRst, $03, nG4, $09, nRst, $03, nE4, $09, nRst, $03
	dc.b	nA4, $09, nC4, $06, nRst, $03, nC4, $05, nRst, $01, nA4, $09
	dc.b	nC4, $06, nRst, $03, nA4, $06, nG4, $09, nRst, $21, nE4, $06
	dc.b	nD4, $06, nRst, $03, nD4, $06, nRst, $03, nD4, $0C, nE4, $05
	dc.b	nRst, $01, nF4, $06, nRst, $06, nE4, $06, nRst, $03, nE4, $06
	dc.b	nRst, $03, nE4, $0C, nF4, $05, nRst, $01, nG4, $06, nRst, $06
	dc.b	nA4, $09, nD4, $06, nRst, $03, nD4, $05, nRst, $01, nA4, $09
	dc.b	nD4, $06, nRst, $03, nC5, $06, nB4, $09, nRst, $03, nA4, $09
	dc.b	nRst, $03, nG4, $09, nRst, $03, nF4, $09, nRst, $03, nCs5, $09
	dc.b	nF4, $06, nRst, $03, nF4, $05, nRst, $01, nCs5, $09, nF4, $06
	dc.b	nRst, $03, nCs5, $06, nC5, $09, nRst, $03, nBb4, $09, nRst, $03
	dc.b	nAb4, $09, nRst, $03, nF4, $09, nRst, $03, nBb4, $09, nCs4, $06
	dc.b	nRst, $03, nCs4, $05, nRst, $01, nBb4, $09, nCs4, $06, nRst, $03
	dc.b	nBb4, $06, nAb4, $09, nRst, $21, nF4, $06, nEb4, $06, nRst, $03
	dc.b	nEb4, $06, nRst, $03, nEb4, $0C, nF4, $05, nRst, $01, nFs4, $06
	dc.b	nRst, $06, nF4, $06, nRst, $03, nF4, $06, nRst, $03, nF4, $0C
	dc.b	nFs4, $05, nRst, $01, nAb4, $06, nRst, $06, nBb4, $09, nEb4, $06
	dc.b	nRst, $03, nEb4, $05, nRst, $01, nBb4, $09, nEb4, $06, nRst, $03
	dc.b	nCs5, $06, nC5, $09, nRst, $03, nBb4, $09, nRst, $03, nAb4, $09
	dc.b	nRst, $03, nFs4, $09, nRst, $03, nD5, $09, nFs4, $06, nRst, $03
	dc.b	nFs4, $05, nRst, $01, nD5, $09, nFs4, $06, nRst, $03, nD5, $06
	dc.b	nCs5, $09, nRst, $03, nB4, $09, nRst, $03, nA4, $09, nRst, $03
	dc.b	nFs4, $09, nRst, $03, nB4, $09, nD4, $06, nRst, $03, nD4, $05
	dc.b	nRst, $01, nB4, $09, nD4, $06, nRst, $03, nB4, $06, nA4, $09
	dc.b	nRst, $21, nFs4, $06, nE4, $06, nRst, $03, nE4, $06, nRst, $03
	dc.b	nE4, $0C, nFs4, $05, nRst, $01, nG4, $06, nRst, $06, nFs4, $06
	dc.b	nRst, $03, nFs4, $06, nRst, $03, nFs4, $0C, nG4, $05, nRst, $01
	dc.b	nA4, $06, nRst, $06, nB4, $09, nE4, $06, nRst, $03, nE4, $05
	dc.b	nRst, $01, nB4, $09, nE4, $06, nRst, $03, nD5, $06, nCs5, $09
	dc.b	nRst, $03, nB4, $09, nRst, $03, nA4, $09, nRst, $03, nG4, $09
	dc.b	nRst, $33, nB4, $09, nRst, $03, nD5, $09, nRst, $03, nCs5, $0C
	dc.b	nB4, $09, nRst, $09, nE5, $09, nRst, $03, nD5, $06, nCs5, $09
	dc.b	nRst, $0F, nB4, $09, nRst, $03, nCs5, $09, nRst, $03, nD5, $09
	dc.b	nRst, $03, nE5, $09, nRst, $03, nFs5, $0C, nRst, $24, nE4, $03
	dc.b	nRst, $03, nE4, $03, nRst, $03, nE4, $06, nFs4, $06, nG4, $06
	dc.b	nA4, $06, nRst, $06, nE4, $06, nFs4, $03, nRst, $03, nFs4, $03
	dc.b	nRst, $03, nFs4, $06, nA4, $06, nB4, $06, nRst, $12, nD5, $24
	dc.b	nB4, $0C, nCs5, $30, nE5, $30, nEb5, $09, nG4, $06, nRst, $03
	dc.b	nG4, $05, nRst, $01, nEb5, $09, nG4, $06, nRst, $03, nEb5, $06
	dc.b	nD5, $09, nRst, $03, nC5, $09, nRst, $03, nBb4, $09, nRst, $03
	dc.b	nG4, $09, nRst, $03, nC5, $09, nEb4, $06, nRst, $03, nEb4, $05
	dc.b	nRst, $01, nC5, $09, nEb4, $06, nRst, $03, nC5, $06, nBb4, $09
	dc.b	nRst, $21, nG4, $06, nF4, $06, nRst, $03, nF4, $06, nRst, $03
	dc.b	nF4, $0C, nG4, $05, nRst, $01, nAb4, $06, nRst, $06, nG4, $06
	dc.b	nRst, $03, nG4, $06, nRst, $03, nG4, $0C, nAb4, $05, nRst, $01
	dc.b	nBb4, $06, nRst, $06, nC5, $09, nF4, $06, nRst, $03, nF4, $05
	dc.b	nRst, $01, nC5, $09, nF4, $06, nRst, $03, nEb5, $06, nD5, $09
	dc.b	nRst, $03, nC5, $09, nRst, $03, nBb4, $09, nRst, $03, nAb4, $09
	dc.b	nRst, $33
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsStop

; FM3 Data
NightWalk_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	dc.b	nRst, $60, nC3, $06, nC4, $06, nC3, $06, nC4, $06, nC3, $06
	dc.b	nC4, $06, nC3, $06, nC4, $06, nG3, $06, nG4, $06, nG3, $06
	dc.b	nG4, $06, nG3, $06, nG4, $06, nG3, $06, nG4, $06, nA3, $06
	dc.b	nA4, $06, nA3, $06, nA4, $06, nA3, $06, nA4, $06, nA3, $06
	dc.b	nA4, $06, nE3, $06, nE4, $06, nE3, $06, nE4, $06, nE3, $06
	dc.b	nE4, $06, nE3, $06, nE4, $06, nD3, $06, nD4, $06, nD3, $06
	dc.b	nD4, $06, nG3, $06, nG4, $06, nG3, $06, nG4, $06, nE3, $06
	dc.b	nE4, $06, nE3, $06, nE4, $06, nA2, $06, nA3, $06, nA2, $06
	dc.b	nA3, $06, nD3, $06, nD4, $06, nD3, $06, nD4, $06, nFs3, $06
	dc.b	nFs4, $06, nFs3, $06, nFs4, $06, nG3, $06, nG4, $06, nG3, $06
	dc.b	nG4, $06, nG3, $06, nG4, $06, nG3, $06, nG4, $06, nCs3, $06
	dc.b	nCs4, $06, nCs3, $06, nCs4, $06, nCs3, $06, nCs4, $06, nCs3, $06
	dc.b	nCs4, $06, nAb3, $06, nAb4, $06, nAb3, $06, nAb4, $06, nAb3, $06
	dc.b	nAb4, $06, nAb3, $06, nAb4, $06, nBb3, $06, nBb4, $06, nBb3, $06
	dc.b	nBb4, $06, nBb3, $06, nBb4, $06, nBb3, $06, nBb4, $06, nF3, $06
	dc.b	nF4, $06, nF3, $06, nF4, $06, nF3, $06, nF4, $06, nF3, $06
	dc.b	nF4, $06, nEb3, $06, nEb4, $06, nEb3, $06, nEb4, $06, nAb3, $06
	dc.b	nAb4, $06, nAb3, $06, nAb4, $06, nF3, $06, nF4, $06, nF3, $06
	dc.b	nF4, $06, nBb2, $06, nBb3, $06, nBb2, $06, nBb3, $06, nEb3, $06
	dc.b	nEb4, $06, nEb3, $06, nEb4, $06, nG3, $06, nG4, $06, nG3, $06
	dc.b	nG4, $06, nAb3, $06, nAb4, $06, nAb3, $06, nAb4, $06, nAb3, $06
	dc.b	nAb4, $06, nAb3, $06, nAb4, $06, nD3, $06, nD4, $06, nD3, $06
	dc.b	nD4, $06, nD3, $06, nD4, $06, nD3, $06, nD4, $06, nA3, $06
	dc.b	nA4, $06, nA3, $06, nA4, $06, nA3, $06, nA4, $06, nA3, $06
	dc.b	nA4, $06, nB3, $06, nB4, $06, nB3, $06, nB4, $06, nB3, $06
	dc.b	nB4, $06, nB3, $06, nB4, $06, nFs3, $06, nFs4, $06, nFs3, $06
	dc.b	nFs4, $06, nFs3, $06, nFs4, $06, nFs3, $06, nFs4, $06, nE3, $06
	dc.b	nE4, $06, nE3, $06, nE4, $06, nA3, $06, nA4, $06, nA3, $06
	dc.b	nA4, $06, nFs3, $06, nFs4, $06, nFs3, $06, nFs4, $06, nB2, $06
	dc.b	nB3, $06, nB2, $06, nB3, $06, nE3, $06, nE4, $06, nE3, $06
	dc.b	nE4, $06, nAb3, $06, nAb4, $06, nAb3, $06, nAb4, $06, nA3, $06
	dc.b	nA4, $06, nA3, $06, nA4, $06, nA3, $06, nA4, $06, nA3, $06
	dc.b	nA4, $06, nA3, $06, nA4, $06, nA3, $06, nA4, $06, nA3, $06
	dc.b	nA4, $06, nA3, $06, nA4, $06, nB2, $06, nB3, $06, nB2, $06
	dc.b	nB3, $06, nB2, $06, nB3, $06, nB2, $06, nB3, $06, nFs3, $06
	dc.b	nFs4, $06, nFs3, $06, nFs4, $06, nFs3, $06, nFs4, $06, nFs3, $06
	dc.b	nFs4, $06, nG3, $06, nG4, $06, nG3, $06, nG4, $06, nG3, $06
	dc.b	nG4, $06, nG3, $06, nG4, $06, nD3, $06, nD4, $06, nD3, $06
	dc.b	nD4, $06, nD3, $06, nD4, $06, nD3, $06, nD4, $06, nE3, $06
	dc.b	nE4, $06, nE3, $06, nE4, $06, nA2, $06, nA3, $06, nA2, $06
	dc.b	nA3, $06, nD3, $06, nD4, $06, nCs3, $06, nCs4, $06, nB2, $06
	dc.b	nB3, $06, nA2, $06, nA3, $06, nG2, $06, nG3, $06, nG2, $06
	dc.b	nG3, $06, nG2, $06, nG3, $06, nG2, $06, nG3, $06, nA2, $06
	dc.b	nA3, $06, nA2, $06, nA3, $06, nA2, $06, nA3, $06, nA2, $06
	dc.b	nA3, $06, nA2, $06, nA3, $06, nA2, $06, nA3, $06, nA2, $06
	dc.b	nA3, $06, nA2, $06, nA3, $06, nEb3, $06, nEb4, $06, nEb3, $06
	dc.b	nEb4, $06, nEb3, $06, nEb4, $06, nEb3, $06, nEb4, $06, nBb3, $06
	dc.b	nBb4, $06, nBb3, $06, nBb4, $06, nBb3, $06, nBb4, $06, nBb3, $06
	dc.b	nBb4, $06, nC4, $06, nC5, $06, nC4, $06, nC5, $06, nC4, $06
	dc.b	nC5, $06, nC4, $06, nC5, $06, nG3, $06, nG4, $06, nG3, $06
	dc.b	nG4, $06, nG3, $06, nG4, $06, nG3, $06, nG4, $06, nF3, $06
	dc.b	nF4, $06, nF3, $06, nF4, $06, nBb3, $06, nBb4, $06, nBb3, $06
	dc.b	nBb4, $06, nG3, $06, nG4, $06, nG3, $06, nG4, $06, nC3, $06
	dc.b	nC4, $06, nC3, $06, nC4, $06, nF3, $06, nF4, $06, nF3, $06
	dc.b	nF4, $06, nA3, $06, nA4, $06, nA3, $06, nA4, $06, nBb3, $06
	dc.b	nBb4, $06, nBb3, $06, nBb4, $06, nBb3, $06, nBb4, $06, nBb3, $06
	dc.b	nBb4, $06, nEb4, $06, nRst, $06, nEb3, $03, nEb3, $03, nRst, $03
	dc.b	nEb3, $03, nEb3, $06, nRst, $12
	smpsPan             panCenter, $00
	smpsSetvoice        $06
	smpsStop

; FM4 Data
NightWalk_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $05
	dc.b	nRst, $60, nC5, $30, nG4, $30, nA4, $30
	smpsAlterVol        $FF
	dc.b	nE4, $30, nF4, $18, nG4, $18, nG4, $18, nA4, $18, nA3, $18
	smpsAlterVol        $FF
	dc.b	nFs4, $18
	smpsAlterVol        $01
	dc.b	nB4, $30, nCs5, $30, nAb4, $30, nBb4, $30
	smpsAlterVol        $FF
	dc.b	nF4, $30, nFs4, $18, nAb4, $18, nAb4, $18, nBb4, $18
	smpsAlterVol        $01
	dc.b	nBb3, $18
	smpsAlterVol        $FF
	dc.b	nEb4, $18
	smpsAlterVol        $FF
	dc.b	nC5, $30
	smpsAlterVol        $FD
	dc.b	nD5, $30, nA4, $30, nB4, $30, nFs4, $30, nG4, $18, nA4, $18
	dc.b	nA4, $18, nB4, $18, nB4, $18, nD5, $18, nA4, $60
	smpsAlterVol        $FF
	dc.b	nFs5, $30, nCs5, $30, nD5, $30, nFs5, $30, nE5, $18, nA4, $18
	dc.b	nA4, $0C, nCs5, $0C, nB4, $0C, nA4, $0C, nB4, $30, nCs5, $30
	dc.b	nCs4, $30
	smpsAlterVol        $01
	dc.b	nBb4, $30
	smpsAlterVol        $FF
	smpsAlterVol        $01
	dc.b	nBb4, $24
	smpsAlterVol        $FF
	dc.b	nBb5, $0C
	smpsAlterVol        $01
	dc.b	nC5, $30
	smpsAlterVol        $FF
	smpsAlterVol        $01
	dc.b	nG4, $24
	smpsAlterVol        $FF
	dc.b	nBb5, $0C
	smpsAlterVol        $01
	dc.b	nAb4, $18
	smpsAlterVol        $FF
	smpsAlterVol        $01
	dc.b	nBb4, $18
	smpsAlterVol        $FF
	smpsAlterVol        $01
	dc.b	nBb4, $18
	smpsAlterVol        $FF
	smpsAlterVol        $01
	dc.b	nC5, $18
	smpsAlterVol        $FF
	smpsAlterVol        $01
	dc.b	nC4, $18, nA4, $18
	smpsAlterVol        $FF
	smpsAlterVol        $01
	dc.b	nD5, $30, nRst, $0C
	smpsAlterVol        $FD
	dc.b	nEb2, $03, nEb2, $03, nRst, $03, nEb2, $03, nEb2, $0C, nRst, $0C
	smpsPan             panCenter, $00
	smpsSetvoice        $05
	smpsStop

; FM5 Data
NightWalk_FM5:
	smpsPan             panRight, $00
	smpsSetvoice        $04
	dc.b	nRst, $7F, $74, nB3, $03
	smpsAlterVol        $01
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	nG4, $03
	smpsAlterVol        $01
	dc.b	nB4, $03
	smpsAlterVol        $01
	dc.b	nE5, $03, nG5, $03
	smpsAlterVol        $01
	dc.b	nB5, $03
	smpsAlterVol        $01
	dc.b	nE6, $03
	smpsAlterVol        $01
	dc.b	nB5, $03
	smpsAlterVol        $01
	dc.b	nG5, $03
	smpsAlterVol        $01
	dc.b	nE5, $03
	smpsAlterVol        $01
	dc.b	nB4, $03, nG4, $03
	smpsAlterVol        $01
	dc.b	nE4, $03
	smpsAlterVol        $02
	dc.b	nB3, $03, nRst, $7F, $11
	smpsAlterVol        $F3
	dc.b	nB5, $0C, nA5, $0C, nG5, $0C, nF5, $0C, nRst, $7F, $14, nC4
	dc.b	$03
	smpsAlterVol        $01
	dc.b	nF4, $03
	smpsAlterVol        $01
	dc.b	nAb4, $03
	smpsAlterVol        $01
	dc.b	nC5, $03
	smpsAlterVol        $01
	dc.b	nF5, $03, nAb5, $03
	smpsAlterVol        $01
	dc.b	nC6, $03
	smpsAlterVol        $01
	dc.b	nF6, $03
	smpsAlterVol        $01
	dc.b	nC6, $03
	smpsAlterVol        $01
	dc.b	nAb5, $03
	smpsAlterVol        $01
	dc.b	nF5, $03
	smpsAlterVol        $01
	dc.b	nC5, $03, nAb4, $03
	smpsAlterVol        $01
	dc.b	nF4, $03
	smpsAlterVol        $02
	dc.b	nC4, $03, nRst, $7F, $11
	smpsAlterVol        $F3
	dc.b	nC6, $0C, nBb5, $0C, nAb5, $0C, nFs5, $0C, nRst, $7F, $14, nCs4
	dc.b	$03
	smpsAlterVol        $01
	dc.b	nFs4, $03
	smpsAlterVol        $01
	dc.b	nA4, $03
	smpsAlterVol        $01
	dc.b	nCs5, $03
	smpsAlterVol        $01
	dc.b	nFs5, $03, nA5, $03
	smpsAlterVol        $01
	dc.b	nCs6, $03
	smpsAlterVol        $01
	dc.b	nFs6, $03
	smpsAlterVol        $01
	dc.b	nCs6, $03
	smpsAlterVol        $01
	dc.b	nA5, $03
	smpsAlterVol        $01
	dc.b	nFs5, $03
	smpsAlterVol        $01
	dc.b	nCs5, $03, nA4, $03
	smpsAlterVol        $01
	dc.b	nFs4, $03
	smpsAlterVol        $02
	dc.b	nCs4, $03, nRst, $7F, $11
	smpsAlterVol        $F3
	dc.b	nCs6, $0C, nB5, $0C, nA5, $0C, nG5, $0C, nA5, $0C, nB5, $0C
	dc.b	nCs6, $0C, nE6, $0C, nRst, $60, $60, $60, $60, $60, $60, $03
	dc.b	nD4, $03
	smpsAlterVol        $01
	dc.b	nG4, $03
	smpsAlterVol        $01
	dc.b	nBb4, $03
	smpsAlterVol        $01
	dc.b	nD5, $03
	smpsAlterVol        $01
	dc.b	nG5, $03, nBb5, $03
	smpsAlterVol        $01
	dc.b	nD6, $03
	smpsAlterVol        $01
	dc.b	nG6, $03
	smpsAlterVol        $01
	dc.b	nD6, $03
	smpsAlterVol        $01
	dc.b	nBb5, $03
	smpsAlterVol        $01
	dc.b	nG5, $03
	smpsAlterVol        $01
	dc.b	nD5, $03, nBb4, $03
	smpsAlterVol        $01
	dc.b	nG4, $03
	smpsAlterVol        $02
	dc.b	nD4, $03, nRst, $7F, $11
	smpsAlterVol        $F3
	dc.b	nD6, $0C, nC6, $0C, nBb5, $0C, nAb5, $0C, nRst, $30
	smpsPan             panRight, $00
	smpsSetvoice        $04
	smpsStop

; FM6 Data
NightWalk_FM6:
	smpsPan             panLeft, $00
	smpsSetvoice        $03
	dc.b	nRst, $7F, $74, nB3, $03
	smpsAlterVol        $01
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	nG4, $03, nB4, $03
	smpsAlterVol        $01
	dc.b	nE5, $03
	smpsAlterVol        $01
	dc.b	nG5, $03
	smpsAlterVol        $01
	dc.b	nB5, $03, nE6, $03
	smpsAlterVol        $01
	dc.b	nB5, $03
	smpsAlterVol        $01
	dc.b	nG5, $03
	smpsAlterVol        $01
	dc.b	nE5, $03
	smpsAlterVol        $01
	dc.b	nB4, $03
	smpsAlterVol        $01
	dc.b	nG4, $03
	smpsAlterVol        $01
	dc.b	nE4, $03
	smpsAlterVol        $01
	dc.b	nB3, $03, nRst, $7F, $11
	smpsAlterVol        $F4
	dc.b	nB5, $0C, nA5, $0C, nG5, $0C, nF5, $0C, nRst, $7F, $14, nC4
	dc.b	$03
	smpsAlterVol        $01
	dc.b	nF4, $03
	smpsAlterVol        $01
	dc.b	nAb4, $03, nC5, $03
	smpsAlterVol        $01
	dc.b	nF5, $03
	smpsAlterVol        $01
	dc.b	nAb5, $03
	smpsAlterVol        $01
	dc.b	nC6, $03, nF6, $03
	smpsAlterVol        $01
	dc.b	nC6, $03
	smpsAlterVol        $01
	dc.b	nAb5, $03
	smpsAlterVol        $01
	dc.b	nF5, $03
	smpsAlterVol        $01
	dc.b	nC5, $03
	smpsAlterVol        $01
	dc.b	nAb4, $03
	smpsAlterVol        $01
	dc.b	nF4, $03
	smpsAlterVol        $01
	dc.b	nC4, $03, nRst, $7F, $11
	smpsAlterVol        $F4
	dc.b	nC6, $0C, nBb5, $0C, nAb5, $0C, nFs5, $0C, nRst, $7F, $14, nCs4
	dc.b	$03
	smpsAlterVol        $01
	dc.b	nFs4, $03
	smpsAlterVol        $01
	dc.b	nA4, $03, nCs5, $03
	smpsAlterVol        $01
	dc.b	nFs5, $03
	smpsAlterVol        $01
	dc.b	nA5, $03
	smpsAlterVol        $01
	dc.b	nCs6, $03, nFs6, $03
	smpsAlterVol        $01
	dc.b	nCs6, $03
	smpsAlterVol        $01
	dc.b	nA5, $03
	smpsAlterVol        $01
	dc.b	nFs5, $03
	smpsAlterVol        $01
	dc.b	nCs5, $03
	smpsAlterVol        $01
	dc.b	nA4, $03
	smpsAlterVol        $01
	dc.b	nFs4, $03
	smpsAlterVol        $01
	dc.b	nCs4, $03, nRst, $7F, $11
	smpsAlterVol        $F4
	dc.b	nCs6, $0C, nB5, $0C, nA5, $0C, nG5, $0C, nA5, $0C, nB5, $0C
	dc.b	nCs6, $0C, nE6, $0C, nRst, $60, $60, $60, $60, $60, $60, $03
	dc.b	nD4, $03
	smpsAlterVol        $01
	dc.b	nG4, $03
	smpsAlterVol        $01
	dc.b	nBb4, $03, nD5, $03
	smpsAlterVol        $01
	dc.b	nG5, $03
	smpsAlterVol        $01
	dc.b	nBb5, $03
	smpsAlterVol        $01
	dc.b	nD6, $03, nG6, $03
	smpsAlterVol        $01
	dc.b	nD6, $03
	smpsAlterVol        $01
	dc.b	nBb5, $03
	smpsAlterVol        $01
	dc.b	nG5, $03
	smpsAlterVol        $01
	dc.b	nD5, $03
	smpsAlterVol        $01
	dc.b	nBb4, $03
	smpsAlterVol        $01
	dc.b	nG4, $03
	smpsAlterVol        $01
	dc.b	nD4, $03, nRst, $7F, $11
	smpsAlterVol        $F4
	dc.b	nD6, $0C, nC6, $0C, nBb5, $0C, nAb5, $0C, nRst, $30
	smpsSetvoice        $03
	smpsStop

; PSG1 Data
NightWalk_PSG1:
	dc.b	nRst, $6C, $6C, $6C, $6C, $6C, $6C, $6C, $6C, $6C, $6C, $6C
	dc.b	$6C, nFs2, $30, nCs2, $30, nD2, $30, nFs2, $30, nE2, $18, nA1
	dc.b	$18, nA1, $0C, nCs2, $0C, nB1, $0C, nA1, $0C, nB1, $30, nCs2
	dc.b	$30, nCs1, $30, nRst, $7F, $7F, $7F, $33
	smpsPSGvoice        $0F
	smpsStop

; PSG3 Data
NightWalk_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $0C, nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nE1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nE1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nC1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nC1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nD1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nE1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nD1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $01
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nD1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nF1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nF1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nCs1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nCs1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $01
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $01
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nEb1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $01
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $01
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nF1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $01
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $02
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nEb1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGAlterVol     $01
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nEb1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $01
	smpsPSGvoice        $02
	smpsPSGAlterVol     $FF
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nFs1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nFs1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nD1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nD1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nE1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nFs1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nE1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nE1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FF
	smpsPSGvoice        $02
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nG1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nG1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nEb1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nEb1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nF1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nG1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nF1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $05, nRst, $01
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        $00
	dc.b	nF1, $03
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03
	smpsPSGvoice        $00
	smpsPSGvoice        $02
	dc.b	nMaxPSG, $06
	smpsPSGvoice        $01
	dc.b	nMaxPSG, $03, nRst, $03, nMaxPSG, $30
	smpsPSGAlterVol     $FF
	smpsPSGAlterVol     $01
	smpsStop

; PSG2 Data
NightWalk_PSG2:
	smpsStop

NightWalk_Voices:
;	Voice $00
;	$38
;	$75, $13, $71, $11, 	$D1, $52, $14, $14, 	$0A, $07, $01, $01
;	$00, $00, $00, $00, 	$F0, $F0, $F0, $FC, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $05
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0C, $00, $00, $00
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $01
;	$38
;	$72, $13, $71, $11, 	$D1, $52, $14, $14, 	$01, $07, $01, $01
;	$00, $00, $00, $00, 	$FF, $FF, $FF, $FF, 	$1E, $1E, $1E, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $01, $07, $01, $07
	smpsVcCoarseFreq    $01, $01, $03, $02
	smpsVcRateScale     $00, $00, $01, $03
	smpsVcAttackRate    $14, $14, $12, $11
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $01, $07, $01
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $0F, $0F, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1E, $1E, $1E

;	Voice $02
;	$3A
;	$64, $60, $60, $30, 	$9D, $9D, $50, $4C, 	$04, $06, $04, $05
;	$1F, $05, $01, $01, 	$A8, $25, $25, $55, 	$7F, $06, $14, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $06, $06, $06
	smpsVcCoarseFreq    $00, $00, $00, $04
	smpsVcRateScale     $01, $01, $02, $02
	smpsVcAttackRate    $0C, $10, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $04, $06, $04
	smpsVcDecayRate2    $01, $01, $05, $1F
	smpsVcDecayLevel    $05, $02, $02, $0A
	smpsVcReleaseRate   $05, $05, $05, $08
	smpsVcTotalLevel    $00, $14, $06, $7F

;	Voice $03
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $47, 	$1C, $22, $15, $00
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
	smpsVcDecayLevel    $04, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $15, $22, $1C

;	Voice $04
;	$04
;	$71, $41, $31, $31, 	$12, $12, $12, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$0F, $0F, $0F, $0F, 	$23, $00, $23, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $04, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $23, $00, $23

;	Voice $05
;	$3B
;	$51, $71, $61, $41, 	$51, $16, $18, $1A, 	$05, $01, $01, $00
;	$09, $01, $01, $01, 	$17, $97, $27, $47, 	$1C, $22, $15, $00
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
	smpsVcDecayLevel    $04, $02, $09, $01
	smpsVcReleaseRate   $07, $07, $07, $07
	smpsVcTotalLevel    $00, $15, $22, $1C

;	Voice $06
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

;	Voice $07
;	$2C
;	$70, $40, $21, $60, 	$9F, $1F, $1F, $5F, 	$0C, $09, $0C, $15
;	$04, $04, $06, $06, 	$56, $46, $46, $4F, 	$0C, $00, $10, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $02, $04, $07
	smpsVcCoarseFreq    $00, $01, $00, $00
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $15, $0C, $09, $0C
	smpsVcDecayRate2    $06, $06, $04, $04
	smpsVcDecayLevel    $04, $04, $04, $05
	smpsVcReleaseRate   $0F, $06, $06, $06
	smpsVcTotalLevel    $00, $10, $00, $0C

;	Voice $08
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

