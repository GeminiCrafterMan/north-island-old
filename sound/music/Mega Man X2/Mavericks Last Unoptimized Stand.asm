X2Intro_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     X2Intro_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $03

	smpsHeaderDAC       X2Intro_DAC
	smpsHeaderFM        X2Intro_FM1,	$00, $0B
	smpsHeaderFM        X2Intro_FM2,	$00, $0B
	smpsHeaderFM        X2Intro_FM3,	$00, $08
	smpsHeaderFM        X2Intro_FM4,	$00, $0B
	smpsHeaderFM        X2Intro_FM5,	$00, $0B
	smpsHeaderPSG       X2Intro_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       X2Intro_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       X2Intro_PSG3,	$00, $01, $00, $00

; DAC Data
X2Intro_DAC:
	smpsPan             panCenter, $00
	dc.b	dSnare, $03, dKick, $06, dKick, $06, dKick, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $06, dKick, $06, dKick, $03, dSnare, $03, dSnare, $03
	dc.b	dSnare, $03, dKick, $06, dKick, $06, dKick, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $02, dSnare, $01, dHiTimpani, $02, dHiTimpani, $01
	dc.b	dMidTimpani, $02, dMidTimpani, $01, dLowTimpani, $02, dLowTimpani, $01, dSnare, $02, dSnare, $01
	dc.b	dSnare, $02, dSnare, $01, dKick, $03, dKick, $03, dSnare, $03, dKick, $03
	dc.b	dKick, $03, dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $03
	dc.b	dKick, $03, dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $02, dSnare, $01, dSnare, $02, dSnare, $01, dSnare, $02, dSnare, $01
	dc.b	dSnare, $02, dSnare, $01, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $06
	dc.b	dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $06, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $06, dKick, $03, dSnare, $03, dKick, $03, dKick, $03
	dc.b	dKick, $03, dSnare, $03, dKick, $06, dKick, $03, dSnare, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $06
	dc.b	dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dSnare, $02, dSnare, $01, dSnare, $02, dSnare, $01, dSnare, $02
	dc.b	dSnare, $01, dSnare, $02, dSnare, $01, dSnare, $03, dKick, $06, dKick, $06
	dc.b	dKick, $03, dSnare, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $06
	dc.b	dKick, $03, dSnare, $03, dSnare, $03, dSnare, $03, dKick, $06, dKick, $06
	dc.b	dKick, $03, dSnare, $03, dKick, $03, dSnare, $03, dKick, $03, dSnare, $02
	dc.b	dSnare, $01, dHiTimpani, $02, dHiTimpani, $01, dMidTimpani, $02, dMidTimpani, $01, dLowTimpani, $02
	dc.b	dLowTimpani, $01, dSnare, $02, dSnare, $01, dSnare, $02, dSnare, $01, dKick, $03
	dc.b	dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $03, dKick, $03
	dc.b	dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $03, dKick, $03
	dc.b	dKick, $03, dSnare, $03, dKick, $03, dSnare, $02, dSnare, $01, dSnare, $02
	dc.b	dSnare, $01, dSnare, $02, dSnare, $01, dSnare, $02, dSnare, $01, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $06, dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $06, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dKick, $03, dSnare, $03, dKick, $06, dKick, $03, dSnare, $03, dKick, $03
	dc.b	dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03, dSnare, $03
	dc.b	dSnare, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $06, dKick, $03
	dc.b	dSnare, $03, dKick, $03, dKick, $03, dKick, $03, dSnare, $03, dKick, $06
	dc.b	dKick, $03, dSnare, $03, dSnare, $03, dKick, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $06, dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $06, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $06, dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $06, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03, dSnare, $03
	dc.b	dSnare, $03, dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dSnare, $03
	dc.b	dKick, $06, dKick, $03, dSnare, $03, dKick, $03, dKick, $03, dKick, $03
	dc.b	dSnare, $03, dKick, $06, dKick, $03, dSnare, $03, dSnare, $03, dKick, $03
	dc.b	dKick, $03, dSnare, $03, dKick, $06, dKick, $03, dSnare, $03, dKick, $03
	dc.b	dKick, $03, dKick, $03, dSnare, $03, dKick, $03, dSnare, $02, dSnare, $01
	dc.b	dSnare, $02, dSnare, $01, dSnare, $02, dSnare, $01, dSnare, $02, dSnare, $01
	smpsSetTempoMod     $03
	smpsJump            X2Intro_DAC

; FM1 Data
X2Intro_FM1:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $03
	dc.b	nD1, $03, nD2, $06, nD2, $06, nD2, $03, nD2, $03, nD2, $03
	dc.b	nE2, $03, nE2, $06, nE2, $06, nE2, $03, nE2, $03, nE2, $03
	dc.b	nF2, $03, nF2, $06, nF2, $06, nF2, $03, nF2, $03, nF2, $03
	dc.b	nG2, $03, nG2, $06, nG2, $06, nG2, $03, nG2, $03, nG2, $03
	dc.b	nD2, $03, nD2, $06, nD2, $06, nD2, $03, nD2, $03, nD2, $03
	dc.b	nE2, $03, nE2, $06, nE2, $06, nE2, $03, nE2, $03, nE2, $03
	dc.b	nF2, $03, nF2, $06, nF2, $06, nF2, $03, nF2, $03, nF2, $03
	dc.b	nG2, $03, nG2, $06, nG2, $06, nG2, $03, nG2, $03, nG2, $03
	dc.b	nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03
	dc.b	nA2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03
	dc.b	nD2, $03, nD2, $03, nA2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nG2, $03, nC2, $03, nC2, $03, nG2, $03, nC2, $03, nC2, $03
	dc.b	nG2, $03, nC2, $03, nF2, $03, nBb1, $03, nBb1, $03, nF2, $03
	dc.b	nBb1, $03, nBb1, $03, nF2, $03, nBb1, $03, nG2, $03, nC2, $03
	dc.b	nC2, $03, nG2, $03, nC2, $03, nC2, $03, nG2, $03, nC2, $03
	dc.b	nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03
	dc.b	nA2, $03, nD2, $03, nG2, $03, nC2, $03, nC2, $03, nG2, $03
	dc.b	nC2, $03, nC2, $03, nG2, $03, nC2, $03, nF2, $03, nBb1, $03
	dc.b	nBb1, $03, nF2, $03, nBb1, $03, nBb1, $03, nF2, $03, nBb1, $03
	dc.b	nG2, $03, nC2, $03, nC2, $03, nG2, $03, nC2, $03, nC2, $03
	dc.b	nG2, $03, nC2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03
	dc.b	nD2, $03, nD2, $03, nA2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nF2, $03, nBb1, $03, nBb1, $03, nF2, $03, nBb1, $03, nBb1, $03
	dc.b	nF2, $03, nBb1, $03, nG2, $03, nC2, $03, nC2, $03, nG2, $03
	dc.b	nC2, $03, nC2, $03, nG2, $03, nC2, $03, nA2, $03, nD2, $03
	dc.b	nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03
	dc.b	nA2, $03, nD2, $03, nF2, $03, nBb1, $03, nBb1, $03, nF2, $03
	dc.b	nBb1, $03, nBb1, $03, nF2, $03, nBb1, $03, nG2, $03, nC2, $03
	dc.b	nC2, $03, nG2, $03, nC2, $03, nC2, $03, nG2, $03, nC2, $03
	dc.b	nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03
	dc.b	nA2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03
	dc.b	nC2, $03, nC2, $03, nC2, $03, nC2, $03, nD2, $03, nD2, $06
	dc.b	nD2, $06, nD2, $03, nD2, $03, nD2, $03, nE2, $03, nE2, $06
	dc.b	nE2, $06, nE2, $03, nE2, $03, nE2, $03, nF2, $03, nF2, $06
	dc.b	nF2, $06, nF2, $03, nF2, $03, nF2, $03, nG2, $03, nG2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $03, nG2, $03, nD2, $03, nD2, $06
	dc.b	nD2, $06, nD2, $03, nD2, $03, nD2, $03, nE2, $03, nE2, $06
	dc.b	nE2, $06, nE2, $03, nE2, $03, nE2, $03, nF2, $03, nF2, $06
	dc.b	nF2, $06, nF2, $03, nF2, $03, nF2, $03, nG2, $03, nG2, $06
	dc.b	nG2, $06, nG2, $03, nG2, $03, nG2, $03, nA2, $03, nD2, $03
	dc.b	nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03
	dc.b	nA2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03
	dc.b	nD2, $03, nD2, $03, nA2, $03, nD2, $03, nG2, $03, nC2, $03
	dc.b	nC2, $03, nG2, $03, nC2, $03, nC2, $03, nG2, $03, nC2, $03
	dc.b	nF2, $03, nBb1, $03, nBb1, $03, nF2, $03, nBb1, $03, nBb1, $03
	dc.b	nF2, $03, nBb1, $03, nG2, $03, nC2, $03, nC2, $03, nG2, $03
	dc.b	nC2, $03, nC2, $03, nG2, $03, nC2, $03, nA2, $03, nD2, $03
	dc.b	nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nG2, $03, nC2, $03, nC2, $03, nG2, $03, nC2, $03, nC2, $03
	dc.b	nG2, $03, nC2, $03, nF2, $03, nBb1, $03, nBb1, $03, nF2, $03
	dc.b	nBb1, $03, nBb1, $03, nF2, $03, nBb1, $03, nG2, $03, nC2, $03
	dc.b	nC2, $03, nG2, $03, nC2, $03, nC2, $03, nG2, $03, nC2, $03
	dc.b	nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03
	dc.b	nA2, $03, nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03
	dc.b	nD2, $03, nD2, $03, nA2, $03, nD2, $03, nF2, $03, nBb1, $03
	dc.b	nBb1, $03, nF2, $03, nBb1, $03, nBb1, $03, nF2, $03, nBb1, $03
	dc.b	nG2, $03, nC2, $03, nC2, $03, nG2, $03, nC2, $03, nC2, $03
	dc.b	nG2, $03, nC2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03
	dc.b	nD2, $03, nD2, $03, nA2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nF2, $03, nBb1, $03, nBb1, $03, nF2, $03, nBb1, $03, nBb1, $03
	dc.b	nF2, $03, nBb1, $03, nG2, $03, nC2, $03, nC2, $03, nG2, $03
	dc.b	nC2, $03, nC2, $03, nG2, $03, nC2, $03, nA2, $03, nD2, $03
	dc.b	nD2, $03, nA2, $03, nD2, $03, nD2, $03, nA2, $03, nD2, $03
	dc.b	nA2, $03, nD2, $03, nD2, $03, nA2, $03, nC2, $03, nC2, $03
	dc.b	nC2, $03, nC2, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $03
	smpsJump            X2Intro_FM1

; FM2 Data
X2Intro_FM2:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $00
	dc.b	nA2, $03, nA2, $06, nA2, $06, nA2, $03, nA2, $03, nA2, $03
	dc.b	nB2, $03, nB2, $06, nB2, $06, nB2, $03, nB2, $03, nB2, $03
	dc.b	nC3, $03, nC3, $06, nC3, $06, nC3, $03, nC3, $03, nC3, $03
	dc.b	nD3, $03, nD3, $06, nD3, $06, nD3, $03, nD3, $03, nD3, $03
	dc.b	nA2, $03, nA2, $06, nA2, $06, nA2, $03, nA2, $03, nA2, $03
	dc.b	nB2, $03, nB2, $06, nB2, $06, nB2, $03, nB2, $03, nB2, $03
	dc.b	nC3, $03, nC3, $06, nC3, $06, nC3, $03, nC3, $03, nC3, $03
	dc.b	nD3, $03, nD3, $06, nD3, $06, nD3, $03, nD3, $03, nD3, $03
	dc.b	nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03
	dc.b	nE3, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03
	dc.b	nA2, $03, nA2, $03, nE3, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nD3, $03, nG2, $03, nG2, $03, nD3, $03, nG2, $03, nG2, $03
	dc.b	nD3, $03, nG2, $03, nC3, $03, nF2, $03, nF2, $03, nC3, $03
	dc.b	nF2, $03, nF2, $03, nC3, $03, nF2, $03, nD3, $03, nG2, $03
	dc.b	nG2, $03, nD3, $03, nG2, $03, nG2, $03, nD3, $03, nG2, $03
	dc.b	nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03
	dc.b	nE3, $03, nA2, $03, nD3, $03, nG2, $03, nG2, $03, nD3, $03
	dc.b	nG2, $03, nG2, $03, nD3, $03, nG2, $03, nC3, $03, nF2, $03
	dc.b	nF2, $03, nC3, $03, nF2, $03, nF2, $03, nC3, $03, nF2, $03
	dc.b	nD3, $03, nG2, $03, nG2, $03, nD3, $03, nG2, $03, nG2, $03
	dc.b	nD3, $03, nG2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03
	dc.b	nA2, $03, nA2, $03, nE3, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nC3, $03, nF2, $03, nF2, $03, nC3, $03, nF2, $03, nF2, $03
	dc.b	nC3, $03, nF2, $03, nD3, $03, nG2, $03, nG2, $03, nD3, $03
	dc.b	nG2, $03, nG2, $03, nD3, $03, nG2, $03, nE3, $03, nA2, $03
	dc.b	nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03
	dc.b	nE3, $03, nA2, $03, nC3, $03, nF2, $03, nF2, $03, nC3, $03
	dc.b	nF2, $03, nF2, $03, nC3, $03, nF2, $03, nD3, $03, nG2, $03
	dc.b	nG2, $03, nD3, $03, nG2, $03, nG2, $03, nD3, $03, nG2, $03
	dc.b	nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03
	dc.b	nE3, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03
	dc.b	nF2, $03, nF2, $03, nG2, $03, nG2, $03, nA2, $03, nA2, $06
	dc.b	nA2, $06, nA2, $03, nA2, $03, nA2, $03, nB2, $03, nB2, $06
	dc.b	nB2, $06, nB2, $03, nB2, $03, nB2, $03, nC3, $03, nC3, $06
	dc.b	nC3, $06, nC3, $03, nC3, $03, nC3, $03, nD3, $03, nD3, $06
	dc.b	nD3, $06, nD3, $03, nD3, $03, nD3, $03, nA2, $03, nA2, $06
	dc.b	nA2, $06, nA2, $03, nA2, $03, nA2, $03, nB2, $03, nB2, $06
	dc.b	nB2, $06, nB2, $03, nB2, $03, nB2, $03, nC3, $03, nC3, $06
	dc.b	nC3, $06, nC3, $03, nC3, $03, nC3, $03, nD3, $03, nD3, $06
	dc.b	nD3, $06, nD3, $03, nD3, $03, nD3, $03, nE3, $03, nA2, $03
	dc.b	nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03
	dc.b	nE3, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03
	dc.b	nA2, $03, nA2, $03, nE3, $03, nA2, $03, nD3, $03, nG2, $03
	dc.b	nG2, $03, nD3, $03, nG2, $03, nG2, $03, nD3, $03, nG2, $03
	dc.b	nC3, $03, nF2, $03, nF2, $03, nC3, $03, nF2, $03, nF2, $03
	dc.b	nC3, $03, nF2, $03, nD3, $03, nG2, $03, nG2, $03, nD3, $03
	dc.b	nG2, $03, nG2, $03, nD3, $03, nG2, $03, nE3, $03, nA2, $03
	dc.b	nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nD3, $03, nG2, $03, nG2, $03, nD3, $03, nG2, $03, nG2, $03
	dc.b	nD3, $03, nG2, $03, nC3, $03, nF2, $03, nF2, $03, nC3, $03
	dc.b	nF2, $03, nF2, $03, nC3, $03, nF2, $03, nD3, $03, nG2, $03
	dc.b	nG2, $03, nD3, $03, nG2, $03, nG2, $03, nD3, $03, nG2, $03
	dc.b	nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03
	dc.b	nE3, $03, nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03
	dc.b	nA2, $03, nA2, $03, nE3, $03, nA2, $03, nC3, $03, nF2, $03
	dc.b	nF2, $03, nC3, $03, nF2, $03, nF2, $03, nC3, $03, nF2, $03
	dc.b	nD3, $03, nG2, $03, nG2, $03, nD3, $03, nG2, $03, nG2, $03
	dc.b	nD3, $03, nG2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03
	dc.b	nA2, $03, nA2, $03, nE3, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nC3, $03, nF2, $03, nF2, $03, nC3, $03, nF2, $03, nF2, $03
	dc.b	nC3, $03, nF2, $03, nD3, $03, nG2, $03, nG2, $03, nD3, $03
	dc.b	nG2, $03, nG2, $03, nD3, $03, nG2, $03, nE3, $03, nA2, $03
	dc.b	nA2, $03, nE3, $03, nA2, $03, nA2, $03, nE3, $03, nA2, $03
	dc.b	nE3, $03, nA2, $03, nA2, $03, nE3, $03, nF2, $03, nF2, $03
	dc.b	nG2, $03, nG2, $03
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsJump            X2Intro_FM2

; FM3 Data
X2Intro_FM3:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $02
	dc.b	nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD5, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03
	dc.b	nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD4, $03, nA4, $03
	dc.b	nD5, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03
	dc.b	nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD5, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03
	dc.b	nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD4, $03, nA4, $03
	dc.b	nD5, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03
	dc.b	nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD5, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03
	dc.b	nA4, $03, nD5, $03, nD4, $03, nA4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nE5, $02, nF5, $01, nE5, $03, nD5, $03
	dc.b	nA4, $09, nC5, $03, nG4, $02, nA4, $04, nG4, $03, nF4, $03
	dc.b	nE4, $06, nG4, $03, nF4, $03, nC4, $03, nA4, $02, nBb4, $01
	dc.b	nBb3, $03, nF4, $03, nE4, $03, nF4, $03, nG4, $03, nC4, $06
	dc.b	nF4, $02, nG4, $01, nC4, $03, nE4, $03, nD4, $03, nE4, $03
	dc.b	nF4, $03, nC4, $06, nC4, $02, nD4, $0D, nC4, $03, nD4, $03
	dc.b	nE4, $03, nE4, $02, nF4, $0D, nE4, $03, nF4, $03, nG4, $03
	dc.b	nG4, $02, nA4, $16, nRst, $03, nB4, $02, nC5, $07, nG4, $06
	dc.b	nC4, $06, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nD4, $03, nA4, $03, nC5, $03, nC5, $02
	dc.b	nD5, $0D, nD5, $02, nE5, $04, nD5, $03, nC5, $06, nBb4, $03
	dc.b	nA4, $0F, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nD4, $03, nA4, $03, nC5, $03, nC5, $02
	dc.b	nD5, $0D, nD5, $02, nE5, $04, nF5, $03, nD5, $02, nE5, $04
	dc.b	nD5, $03, nC5, $06, nD5, $03, nC5, $03, nA4, $03, nE5, $02
	dc.b	nF5, $18
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $E2
	dc.b	nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD5, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03
	dc.b	nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD4, $03, nA4, $03
	dc.b	nD5, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03
	dc.b	nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD5, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03
	dc.b	nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD4, $03, nA4, $03
	dc.b	nD5, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03
	dc.b	nD4, $03, nA4, $03, nD5, $03, nD4, $03, nA4, $03, nD5, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD5, $03, nD4, $03
	dc.b	nA4, $03, nD5, $03, nD4, $03, nA4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nE5, $02, nF5, $01, nE5, $03, nD5, $03
	dc.b	nA4, $09, nC5, $03, nG4, $02, nA4, $04, nG4, $03, nF4, $03
	dc.b	nE4, $06, nG4, $03, nF4, $03, nC4, $03, nA4, $02, nBb4, $01
	dc.b	nBb3, $03, nF4, $03, nE4, $03, nF4, $03, nG4, $03, nC4, $06
	dc.b	nF4, $02, nG4, $01, nC4, $03, nE4, $03, nD4, $03, nE4, $03
	dc.b	nF4, $03, nC4, $06, nC4, $02, nD4, $0D, nC4, $03, nD4, $03
	dc.b	nE4, $03, nE4, $02, nF4, $0D, nE4, $03, nF4, $03, nG4, $03
	dc.b	nG4, $02, nA4, $16, nRst, $03, nB4, $02, nC5, $07, nG4, $06
	dc.b	nC4, $06, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nD4, $03, nA4, $03, nC5, $03, nC5, $02
	dc.b	nD5, $0D, nD5, $02, nE5, $04, nD5, $03, nC5, $06, nBb4, $03
	dc.b	nA4, $0F, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nD4, $03, nA4, $03, nC5, $03, nC5, $02
	dc.b	nD5, $0D, nD5, $02, nE5, $04, nF5, $03, nD5, $02, nE5, $04
	dc.b	nD5, $03, nC5, $06, nD5, $03, nC5, $03, nA4, $03, nE5, $02
	dc.b	nF5, $18
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01, smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $01
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $02
	dc.b	smpsNoAttack, $01
	smpsAlterVol        $03
	dc.b	smpsNoAttack, $01
	smpsPan             panCenter, $00
	smpsSetvoice        $02
	smpsAlterVol        $E2
	smpsJump            X2Intro_FM3

; FM4 Data
X2Intro_FM4:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $01
	dc.b	nD4, $18, nE4, $18, nF4, $18, nG4, $18, nD4, $18, nE4, $18
	dc.b	nF4, $18, nG4, $18, nA4, $03, nD4, $03, nD4, $03, nA4, $03
	dc.b	nD4, $03, nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nA4, $0F, nA4, $09, nE4, $0F, nE4, $09, nD4, $03, nRst, $06
	dc.b	nD4, $03, nRst, $06, nD4, $03, nRst, $03, nE4, $03, nRst, $06
	dc.b	nE4, $03, nRst, $06, nE4, $03, nRst, $03, nF4, $18, nG4, $18
	dc.b	nA4, $18, nG4, $18, nA4, $03, nD4, $03, nD4, $03, nA4, $03
	dc.b	nD4, $03, nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $18, nE4, $18, nA4, $03, nD4, $03, nD4, $03, nA4, $03
	dc.b	nD4, $03, nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $18, nE4, $18, nF4, $24, nD4, $06, nE4, $06, nD4, $18
	dc.b	nE4, $18, nF4, $18, nG4, $18, nD4, $18, nE4, $18, nF4, $18
	dc.b	nG4, $18, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03, nA4, $0F
	dc.b	nA4, $09, nE4, $0F, nE4, $09, nD4, $03, nRst, $06, nD4, $03
	dc.b	nRst, $06, nD4, $03, nRst, $03, nE4, $03, nRst, $06, nE4, $03
	dc.b	nRst, $06, nE4, $03, nRst, $03, nF4, $18, nG4, $18, nA4, $18
	dc.b	nG4, $18, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $18
	dc.b	nE4, $18, nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03
	dc.b	nD4, $03, nA4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $03
	dc.b	nA4, $03, nD4, $03, nD4, $03, nA4, $03, nD4, $03, nD4, $18
	dc.b	nE4, $18, nF4, $24, nD4, $06, nE4, $06
	smpsPan             panCenter, $00
	smpsSetvoice        $01
	smpsJump            X2Intro_FM4

; FM5 Data
X2Intro_FM5:
	smpsPan             panCenter, $00
	smpsAlterNote       $00
	smpsSetvoice        $00
	dc.b	nRst, $7F, $41, nE4, $03, nRst, $06, nE4, $03, nRst, $06, nE4
	dc.b	$03, nRst, $03, nE4, $03, nRst, $06, nE4, $03, nRst, $06, nE4
	dc.b	$03, nRst, $03, nE4, $03, nRst, $7F, $3E, nE4, $03, nRst, $06
	dc.b	nE4, $03, nRst, $06, nE4, $03, nRst, $03, nE4, $03, nRst, $06
	dc.b	nE4, $03, nRst, $06, nE4, $03, nRst, $33, nE4, $03, nRst, $06
	dc.b	nE4, $03, nRst, $06, nE4, $03, nRst, $03, nE4, $03, nRst, $06
	dc.b	nE4, $03, nRst, $06, nE4, $03, nRst, $7F, $7F, $25, nE4, $03
	dc.b	nRst, $06, nE4, $03, nRst, $06, nE4, $03, nRst, $03, nE4, $03
	dc.b	nRst, $06, nE4, $03, nRst, $06, nE4, $03, nRst, $03, nE4, $03
	dc.b	nRst, $7F, $3E, nE4, $03, nRst, $06, nE4, $03, nRst, $06, nE4
	dc.b	$03, nRst, $03, nE4, $03, nRst, $06, nE4, $03, nRst, $06, nE4
	dc.b	$03, nRst, $33, nE4, $03, nRst, $06, nE4, $03, nRst, $06, nE4
	dc.b	$03, nRst, $03, nE4, $03, nRst, $06, nE4, $03, nRst, $06, nE4
	dc.b	$03, nRst, $63
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	smpsJump            X2Intro_FM5

; PSG3 Data
X2Intro_PSG3:
	smpsPSGform         $E7
	smpsPSGvoice        fTone_01

X2Intro_Jump00:
	smpsAlterNote       $00
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $48, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $3C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $3C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $12, nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $06, nMaxPSG, $06, nMaxPSG, $03
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $03
	smpsPSGvoice        fTone_02
	dc.b	nMaxPSG, $09
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $48, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $3C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $3C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $0C, nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $02
	dc.b	nMaxPSG, $06
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG, $12
	smpsJump            X2Intro_Jump00

; PSG1 Data
X2Intro_PSG1:
; PSG2 Data
X2Intro_PSG2:
	smpsStop

X2Intro_Voices:
;	Voice $00
;	$3B
;	$3E, $42, $41, $33, 	$DE, $14, $1E, $14, 	$14, $0F, $0F, $00
;	$01, $00, $00, $00, 	$36, $25, $26, $29, 	$14, $13, $0A, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $04, $04, $03
	smpsVcCoarseFreq    $03, $01, $02, $0E
	smpsVcRateScale     $00, $00, $00, $03
	smpsVcAttackRate    $14, $1E, $14, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $0F, $0F, $14
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $09, $06, $05, $06
	smpsVcTotalLevel    $00, $0A, $13, $14

;	Voice $01
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

