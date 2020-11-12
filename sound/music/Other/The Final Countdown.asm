FinalCnt_Header:
	smpsHeaderStartSong 1
	smpsHeaderVoice     FinalCnt_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $00

	smpsHeaderDAC       FinalCnt_DAC
	smpsHeaderFM        FinalCnt_FM1,	$00, $00
	smpsHeaderFM        FinalCnt_FM2,	$00, $00
	smpsHeaderFM        FinalCnt_FM3,	$00, $00
	smpsHeaderFM        FinalCnt_FM4,	$00, $00
	smpsHeaderFM        FinalCnt_FM5,	$00, $00
	smpsHeaderPSG       FinalCnt_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       FinalCnt_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       FinalCnt_PSG3,	$00, $00, $00, $00

; FM1 Data
FinalCnt_FM1:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7D
	smpsSetvoice        $00
	dc.b	smpsNoAttack, $24
	smpsAlterVol        $05

FinalCnt_Loop31:
	dc.b	nFs3, $6C
	smpsAlterVol        $05
	dc.b	nE3, $24
	smpsAlterVol        $FB
	dc.b	nD3, $7F, smpsNoAttack, $11, nB2, $7F, smpsNoAttack, $11, nE3, $48, nF3
	smpsLoop            $00, $04, FinalCnt_Loop31
	dc.b	nFs3, nAb3, nA3, nD3, nCs3, $7F, smpsNoAttack, $7F, smpsNoAttack, $0A

FinalCnt_Jump03:
	dc.b	nFs2

FinalCnt_Loop32:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop32
	dc.b	nD3

FinalCnt_Loop33:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop33
	dc.b	nB2

FinalCnt_Loop34:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop34
	dc.b	nE3

FinalCnt_Loop35:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop35
	dc.b	nFs2

FinalCnt_Loop36:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop36
	dc.b	nD3

FinalCnt_Loop37:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop37
	dc.b	nB2

FinalCnt_Loop38:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop38
	dc.b	nE3

FinalCnt_Loop39:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop39
	dc.b	nFs2

FinalCnt_Loop3A:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nFs2
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop3A
	dc.b	nA2
	smpsAlterVol        $05
	dc.b	nAb2, nFs2, nE2
	smpsAlterVol        $FB
	dc.b	nD3
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nD3

FinalCnt_Loop3B:
	smpsAlterVol        $FB
	dc.b	nCs3
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nCs3
	smpsLoop            $00, $04, FinalCnt_Loop3B

FinalCnt_Loop3C:
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nFs2
	smpsLoop            $00, $0D, FinalCnt_Loop3C
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nA2
	smpsAlterVol        $FB
	dc.b	nB2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nB2
	smpsAlterVol        $FB
	dc.b	nB2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nE2

FinalCnt_Loop3D:
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nFs2
	smpsLoop            $00, $03, FinalCnt_Loop3D
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nE2
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nFs2
	smpsAlterVol        $FB
	dc.b	nAb2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nAb2
	smpsAlterVol        $FB
	dc.b	nA2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nA2
	smpsAlterVol        $FB
	dc.b	nA2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nCs3
	smpsAlterVol        $FB
	dc.b	nD3
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	$0F

FinalCnt_Loop3E:
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nE3, $0F
	smpsLoop            $00, $02, FinalCnt_Loop3E
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nA2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nA2
	smpsAlterVol        $FB
	dc.b	nAb2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nAb2
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nE2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07

FinalCnt_Loop3F:
	smpsAlterVol        $FB
	dc.b	nD3, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nD3
	smpsLoop            $00, $02, FinalCnt_Loop3F

FinalCnt_Loop40:
	smpsAlterVol        $FB
	dc.b	nCs3
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nCs3
	smpsLoop            $00, $02, FinalCnt_Loop40
	dc.b	nRst, nE3
	smpsAlterVol        $FB
	dc.b	$1E
	smpsAlterVol        $05
	dc.b	$0F
	smpsAlterVol        $FB
	dc.b	$1E, $2D, nRst, $5A, nFs2

FinalCnt_Loop41:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop41
	dc.b	nD3

FinalCnt_Loop42:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop42
	dc.b	nB2

FinalCnt_Loop43:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop43
	dc.b	nE3

FinalCnt_Loop44:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop44
	dc.b	nFs2

FinalCnt_Loop45:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop45
	dc.b	nD3

FinalCnt_Loop46:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop46
	dc.b	nB2

FinalCnt_Loop47:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop47
	dc.b	nE3

FinalCnt_Loop48:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop48
	dc.b	nFs2

FinalCnt_Loop49:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nFs2
	smpsAlterVol        $FB
	smpsLoop            $00, $05, FinalCnt_Loop49
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nA2
	smpsAlterVol        $FB
	dc.b	nB2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nB2
	smpsAlterVol        $FB
	dc.b	nB2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nE2

FinalCnt_Loop4A:
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nFs2
	smpsLoop            $00, $03, FinalCnt_Loop4A
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nE2
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nFs2
	smpsAlterVol        $FB
	dc.b	nAb2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nAb2
	smpsAlterVol        $FB
	dc.b	nA2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nA2
	smpsAlterVol        $FB
	dc.b	nA2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nCs3
	smpsAlterVol        $FB
	dc.b	nD3
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	$0F

FinalCnt_Loop4B:
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nE3, $0F
	smpsLoop            $00, $02, FinalCnt_Loop4B
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nA2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nA2
	smpsAlterVol        $FB
	dc.b	nAb2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nAb2
	smpsAlterVol        $FB
	dc.b	nFs2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nE2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07

FinalCnt_Loop4C:
	smpsAlterVol        $FB
	dc.b	nD3, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nD3
	smpsLoop            $00, $02, FinalCnt_Loop4C

FinalCnt_Loop4D:
	smpsAlterVol        $FB
	dc.b	nCs3
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nCs3
	smpsLoop            $00, $02, FinalCnt_Loop4D
	dc.b	nRst, nE3
	smpsAlterVol        $FB
	dc.b	$1E
	smpsAlterVol        $05
	dc.b	$0F
	smpsAlterVol        $FB
	dc.b	$1E, $2D, nRst, $5A, nFs2

FinalCnt_Loop4E:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop4E
	dc.b	nD3

FinalCnt_Loop4F:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop4F
	dc.b	nB2

FinalCnt_Loop50:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop50
	dc.b	nE3

FinalCnt_Loop51:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop51
	dc.b	nFs2

FinalCnt_Loop52:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop52
	dc.b	nD3

FinalCnt_Loop53:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop53
	dc.b	nB2

FinalCnt_Loop54:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop54
	dc.b	nE3

FinalCnt_Loop55:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop55
	dc.b	nFs2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nAb2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nA2, $0F
	smpsAlterVol        $05
	dc.b	nAb2, nFs2, nE2
	smpsAlterVol        $FB
	dc.b	nD3
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nCs3, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nCs3
	smpsAlterVol        $FB
	dc.b	$08
	smpsAlterVol        $05
	dc.b	$07, $0F, nCs3

FinalCnt_Loop56:
	dc.b	nCs3
	smpsAlterVol        $FB
	dc.b	nCs3
	smpsAlterVol        $05
	dc.b	$08, $07, $0F
	smpsLoop            $00, $02, FinalCnt_Loop56
	dc.b	nCs3
	smpsAlterVol        $FB
	dc.b	nFs2, $7F, smpsNoAttack, $71, nB2

FinalCnt_Loop57:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop57
	dc.b	nA2

FinalCnt_Loop58:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop58
	dc.b	nD3

FinalCnt_Loop59:
	dc.b	$0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	smpsLoop            $00, $02, FinalCnt_Loop59
	dc.b	nG2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	$1E
	smpsAlterVol        $05
	dc.b	nFs2

FinalCnt_Loop5A:
	smpsAlterVol        $FB
	dc.b	nE2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsLoop            $00, $02, FinalCnt_Loop5A

FinalCnt_Loop5B:
	smpsAlterVol        $FB
	dc.b	nA2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nA2
	smpsLoop            $00, $02, FinalCnt_Loop5B
	smpsAlterVol        $FB
	dc.b	nB2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	$0F

FinalCnt_Loop5C:
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nFs2, $0F
	smpsLoop            $00, $02, FinalCnt_Loop5C

FinalCnt_Loop5D:
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nB2, $0F
	smpsLoop            $00, $02, FinalCnt_Loop5D

FinalCnt_Loop5E:
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nA2, $0F
	smpsLoop            $00, $02, FinalCnt_Loop5E

FinalCnt_Loop5F:
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nD3, $0F
	smpsLoop            $00, $02, FinalCnt_Loop5F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	nG2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsAlterVol        $FB
	dc.b	$1E
	smpsAlterVol        $05
	dc.b	nFs2

FinalCnt_Loop60:
	smpsAlterVol        $FB
	dc.b	nE2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, $08, $07
	smpsLoop            $00, $02, FinalCnt_Loop60

FinalCnt_Loop61:
	smpsAlterVol        $FB
	dc.b	nA2, $0F
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nA2
	smpsLoop            $00, $02, FinalCnt_Loop61

FinalCnt_Loop62:
	smpsAlterVol        $FB
	dc.b	nB2
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nB2
	smpsLoop            $00, $02, FinalCnt_Loop62

FinalCnt_Loop63:
	smpsAlterVol        $FB
	dc.b	nCs3
	smpsAlterVol        $05
	dc.b	$08, $07, $0F, nCs3
	smpsLoop            $00, $02, FinalCnt_Loop63
	smpsAlterVol        $FB

FinalCnt_Loop64:
	dc.b	nFs2, $1E, nRst, $4B
	smpsAlterVol        $05
	dc.b	nCs3, $0F
	smpsAlterVol        $FB
	dc.b	nD3, $1E, nRst, $5A, nB2, $1E, nRst, $4B
	smpsAlterVol        $05
	dc.b	nD3, $0F
	smpsAlterVol        $FB
	dc.b	nE3, $1E, nRst, $5A
	smpsLoop            $00, $02, FinalCnt_Loop64
	dc.b	nFs2, $3C, nAb2, nA2, $0F
	smpsAlterVol        $05
	dc.b	nAb2, nFs2, nE2
	smpsAlterVol        $FB
	dc.b	nD3, $1E, nD3, nCs3, $7F, smpsNoAttack, $71
	smpsPan             panCenter, $00
	smpsJump            FinalCnt_Jump03

; FM2 Data
FinalCnt_FM2:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7F, $22
	smpsSetvoice        $02
	dc.b	smpsNoAttack, $36
	smpsAlterVol        $05

FinalCnt_Loop2D:
	dc.b	nCs5, $09, nB4, nCs5, $24, nFs4, nRst, $36, nD5, $09, nCs5, nD5
	dc.b	$12, nCs5, nB4, $24, nRst, $36, nD5, $09, nCs5, nD5, $24, nFs4
	dc.b	nRst, $36, nD5, $09, nCs5, nD5, $12, nCs5, nB4, nD5, nRst, $36
	smpsLoop            $00, $02, FinalCnt_Loop2D
	dc.b	nCs5, $09, nB4, nCs5, $24, nFs4, nRst, $36, nD5, $09, nCs5, nD5
	dc.b	$12, nCs5, nB4, $24, nRst, $36, nD5, $09, nCs5, nD5, $24, nFs4
	dc.b	nRst, $36, nB4, $09, nA4, nB4, $12, nA4, nAb4, nB4, nRst, $36
	dc.b	nCs5, $09, nB4, nCs5, $24, nFs4, nRst, $36, nD5, $09, nCs5, nD5
	dc.b	$12, nCs5, nB4, $24, nRst, $36, nD5, $09, nCs5, nD5, $24, nFs4
	dc.b	nRst, $36, nB4, $09, nA4, nB4, $12, nA4, nAb4, nB4, nA4, $36
	dc.b	nAb4, $09, nA4, nB4, $36, nA4, $09, nB4, nCs5, $12, nB4, nA4
	dc.b	nAb4, nFs4, $24, nD5, nCs5, $48, $1B, nD5, nCs5, $09, nB4, nCs5
	dc.b	$78

FinalCnt_Loop2E:
	dc.b	nRst, $2D, nCs5, $08, nB4, $07, nCs5, $1E, nFs4, nRst, $2D, nD5
	dc.b	$08, nCs5, $07, nD5, $0F, nCs5, nB4, $1E, nRst, $2D, nD5, $08
	dc.b	nCs5, $07, nD5, $1E, nFs4, nRst, $2D, nB4, $08, nA4, $07, nB4
	dc.b	$0F, nA4, nAb4, nB4
	smpsLoop            $00, $02, FinalCnt_Loop2E
	dc.b	nA4, $2D, nAb4, $08, nA4, $07, nB4, $2D, nA4, $08, nB4, $07
	dc.b	nCs5, $0F, nB4, nA4, nAb4, nFs4, $1E, nD5, nCs5, $5A, $08, nD5
	dc.b	$07, nCs5, $08, nB4, $07, nCs5, $78, nRst, $7F, $7F, $7F, $63
	smpsSetvoice        $03
	dc.b	smpsNoAttack, $2D
	smpsAlterVol        $FF
	dc.b	nFs6, $08, $07, $17, nAb6, $16, nA6, $0F, nAb6, $1E, nFs6, $3C
	dc.b	nRst, $4B, nFs6, $0F, $17, nAb6, $16, nA6, $0F, nRst, nFs6, nFs6
	dc.b	$3C, nRst, $4B, nFs6, $0F, $17, nAb6, $16, nA6, $08, nRst, $07
	dc.b	nAb6, $1E, nFs6, $17, nE6, $07, nCs6, $3C, nRst, $2D, nA6, $0F
	dc.b	nAb6, $17, nFs6, $16, $0F, nE6, $1E, $5A, nRst, $2D, nFs6, $0F
	dc.b	$17, nAb6, $16, nA6, $0F, nAb6, $1E, nFs6, $17, nE6, $16, $2D
	dc.b	nRst, nA6, $0F, $1E, nB6, nA6, $0F, nAb6, nFs6, $5A, nRst, $2D
	dc.b	nFs6, $0F, $17, nAb6, $16, nA6, $0F, nAb6, $17, nFs6, $16, nE6
	dc.b	$0F, $1E, nFs6, $0F, nAb6, $7F, smpsNoAttack, $08, nRst, $1E, nFs6, $0F
	dc.b	nFs6, nA6, $1E, nAb6, nAb6, nFs6, $0F
	smpsSetvoice        $02
	smpsAlterVol        $04
	dc.b	nCs5, $08, nB4, $07, nCs5, $1E, nFs4, nRst, $2D, nD5, $08, nCs5
	dc.b	$07, nD5, $0F, nCs5, nB4, $1E, nRst, $2D, nD5, $08, nCs5, $07
	dc.b	nD5, $1E, nFs4, nRst, $2D, nB4, $08, nA4, $07, nB4, $0F, nA4
	dc.b	nAb4, nB4, nA4, $1E, nRst, $0F, nCs5, $08, nB4, $07, nCs5, $1E
	dc.b	nFs4, nRst, $2D, nD5, $08, nCs5, $07, nD5, $0F, nCs5, nB4, $1E
	dc.b	nRst, $2D, nD5, $08, nCs5, $07, nD5, $1E, nFs4, nRst, $2D, nB4
	dc.b	$08, nA4, $07, nB4, $0F
	smpsSetvoice        $03
	smpsAlterVol        $FC
	dc.b	nAb6, $4B, nRst, $0F, nFs6, nFs6, $17, nAb6, $16, nA6, $0F, nAb6
	dc.b	$1E, nFs6, $3C, nRst, $4B, nFs6, $0F, $17, nAb6, $16, nA6, $0F
	dc.b	nRst, nFs6, nFs6, $3C, nRst, $4B, nA6, $0F, $17, nAb6, $16, nFs6
	dc.b	$0F, nRst, nAb6, $1E, nFs6, $0F, nFs6, nRst, $5A, nAb6, $0F, $17
	dc.b	nE6, $16, $0F, nRst, nE6, $4B, $08, nD6, $07, nCs6, $0F, nRst
	dc.b	$2D, nFs6, $0F, $17, nAb6, $16, nA6, $0F, nAb6, $1E, nE6, nE6
	dc.b	$0F, $2D, nRst, nA6, $0F, $17, nB6, $16, nCs7, $0F, nA6, nAb6
	dc.b	nFs6, $5A, nRst, $2D, nA6, $0F, $17, nB6, $16, nCs7, $0F, $2D
	dc.b	nB6, $1E, nA6, $0F, nA6, nAb6, $7F, smpsNoAttack, $08, nRst, $78
	smpsSetvoice        $02
	dc.b	smpsNoAttack, $2D
	smpsAlterVol        $04
	dc.b	nCs5, $08, nB4, $07, nCs5, $1E, nFs4, nRst, $2D, nD5, $08, nCs5
	dc.b	$07, nD5, $0F, nCs5, nB4, $1E, nRst, $2D, nD5, $08, nCs5, $07
	dc.b	nD5, $1E, nFs4, nRst, $2D, nB4, $08, nA4, $07, nB4, $0F, nA4
	dc.b	nAb4, nB4, nA4, $1E, nRst, $0F, nCs5, $08, nB4, $07, nCs5, $1E
	dc.b	nFs4, nRst, $2D, nD5, $08, nCs5, $07, nD5, $0F, nCs5, nB4, $1E
	dc.b	nRst, $2D, nD5, $08, nCs5, $07, nD5, $1E, nFs4, nRst, $2D, nB4
	dc.b	$08, nA4, $07, nB4, $0F, nA4, nAb4, nB4, nA4, $2D, nAb4, $08
	dc.b	nA4, $07, nB4, $2D, nA4, $08, nB4, $07, nCs5, $0F, nB4, nA4
	dc.b	nAb4, nFs4, $1E, nD5, nCs5, $5A, $08, nD5, $07, nCs5, $08, nB4
	dc.b	$07, nCs5, $78, nRst, $7F, $53
	smpsSetvoice        $01
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $1E
	smpsAlterVol        $06

FinalCnt_Loop2F:
	dc.b	nB4, $78, nA4, nRst, $7F, $7F, $7F, $7F, $7F, $55
	smpsLoop            $00, $02, FinalCnt_Loop2F
	smpsSetvoice        $02
	smpsAlterVol        $F8
	dc.b	smpsNoAttack, $2D
	smpsAlterVol        $F7

FinalCnt_Loop30:
	dc.b	nCs5, $08, nB4, $07, nCs5, $1E, nFs4, nRst, $2D, nD5, $08, nCs5
	dc.b	$07, nD5, $0F, nCs5, nB4, $1E, nRst, $2D, nD5, $08, nCs5, $07
	dc.b	nD5, $1E, nFs4, nRst, $2D, nB4, $08, nA4, $07, nB4, $0F, nA4
	dc.b	nAb4, nB4, nA4, $2D
	smpsLoop            $00, $02, FinalCnt_Loop30
	dc.b	nAb4, $08, nA4, $07, nB4, $2D, nA4, $08, nB4, $07, nCs5, $0F
	dc.b	nB4, nA4, nAb4, nFs4, $1E, nD5, nCs5, $78, nRst
	smpsPan             panCenter, $00
	smpsJump            FinalCnt_Loop2E

; FM3 Data
FinalCnt_FM3:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7D
	smpsSetvoice        $01
	smpsAlterVol        $08
	smpsPan             panRight, $00
	dc.b	smpsNoAttack, $24
	smpsAlterVol        $0A

FinalCnt_Loop2A:
	dc.b	nCs4, $7F, smpsNoAttack, $11, nD4, $7F, smpsNoAttack, $11, $7F, smpsNoAttack, $11, nE4
	dc.b	$48, nF4
	smpsLoop            $00, $02, FinalCnt_Loop2A

FinalCnt_Loop2B:
	dc.b	nCs4, $7F, smpsNoAttack, $11, nFs4, $7F, smpsNoAttack, $11, nD4, $7F, smpsNoAttack, $11
	dc.b	nE4, $48, nF4
	smpsLoop            $00, $02, FinalCnt_Loop2B
	dc.b	nFs4, nAb4, nE4, nFs4, nFs4, $7F, smpsNoAttack, $11, nF4, $78

FinalCnt_Jump02:
	dc.b	nFs4, nFs4, nFs4, nE4, nFs4, nFs4, nFs4, nE4, nFs4, $3C, nAb4, nE4
	dc.b	nFs4, nAb4, $78, nAb4, nRst, $7F, $7F, $7F, $63

FinalCnt_Loop2C:
	dc.b	nFs4, $7F, smpsNoAttack, $7F, smpsNoAttack, $6A, $78, $7F, smpsNoAttack, $7F, smpsNoAttack, $2E
	dc.b	nAb4, $3C, nA4, $78, nD4, nE4, nE4, $3C, nAb4, nFs4, nE4, nFs4
	dc.b	$78, nAb4, nRst, $0F, nE4, nE4, $1E, $0F, $1E, $2D, nRst, $5A
	dc.b	nFs4, $78, nFs4, nFs4, nE4, nFs4, nFs4, nFs4, nE4
	smpsLoop            $00, $02, FinalCnt_Loop2C
	dc.b	nFs4, $3C, nAb4, nE4, nFs4, nAb4, $78, nAb4, nFs4, $7F, smpsNoAttack, $71
	dc.b	nD5, $78, nCs5, nD5, nB4, $3C, nD5, $1E, nD5, nB4, $78, nA4
	dc.b	nB4, nFs4, nD5, nCs5, nD5, nB4, $3C, nD5, $1E, nD5, nB4, $78
	dc.b	nA4, nB4, nCs5, nFs4, nFs4, nD4, nE4, nFs4, nFs4, nD4, nE4, nA4
	dc.b	$3C, nAb4, nA4, nFs4, $1E, nFs4, nAb4, $78, nAb4
	smpsPan             panRight, $00
	smpsJump            FinalCnt_Jump02

; FM4 Data
FinalCnt_FM4:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7D
	smpsSetvoice        $01
	smpsAlterVol        $08
	dc.b	smpsNoAttack, $24
	smpsAlterVol        $0E
	dc.b	nFs4

FinalCnt_Loop26:
	dc.b	$7F, smpsNoAttack, $11
	smpsLoop            $00, $03, FinalCnt_Loop26
	dc.b	nAb4, $48, nAb4, nFs4

FinalCnt_Loop27:
	dc.b	$7F, smpsNoAttack, $11
	smpsLoop            $00, $03, FinalCnt_Loop27

FinalCnt_Loop28:
	dc.b	nAb4, $48, nAb4, nFs4, $7F, smpsNoAttack, $11, nA4, $7F, smpsNoAttack, $11, nFs4
	dc.b	$7F, smpsNoAttack, $11
	smpsLoop            $00, $02, FinalCnt_Loop28
	dc.b	nAb4, $48, nAb4, nA4, nB4, nA4, nA4, nAb4, $7F, smpsNoAttack, $11, $78

FinalCnt_Jump01:
	dc.b	nA4, nA4, nB4, nAb4, nA4, nA4, nB4, nAb4, nA4, $3C, nB4, nA4
	dc.b	nA4, nCs5, $78, nCs5, nRst, $7F, $7F, $7F, $63

FinalCnt_Loop29:
	dc.b	nA4, $7F, smpsNoAttack, $7F, smpsNoAttack, $6A, nB4, $78, nA4, $7F, smpsNoAttack, $7F
	dc.b	smpsNoAttack, $2E, nB4, $3C, nCs5, $78, nFs4, nAb4, nA4, $3C, nB4, nA4
	dc.b	nA4, nA4, $78, nCs5, nRst, $0F, nAb4, nAb4, $1E, $0F, $1E, $2D
	dc.b	nRst, $5A, nA4, $78, nA4, nB4, nAb4, nA4, nA4, nB4, nAb4
	smpsLoop            $00, $02, FinalCnt_Loop29
	dc.b	nA4, $3C, nB4, nA4, nA4, nCs5, $78, nCs5, nA4, $7F, smpsNoAttack, $71
	dc.b	nFs5, $78, nE5, nFs5, nD5, $3C, nG5, $1E, nFs5, nE5, $78, nCs5
	dc.b	nD5, nA4, nFs5, nE5, nFs5, nD5, $3C, nG5, $1E, nFs5, nE5, $78
	dc.b	nE5, nD5, nE5, nA4, nA4, nFs4, nAb4, nA4, nA4, nFs4, nAb4, nCs5
	dc.b	$3C, nB4, nCs5, nA4, $1E, nA4, nCs5, $78, nCs5
	smpsPan             panCenter, $00
	smpsJump            FinalCnt_Jump01

; FM5 Data
FinalCnt_FM5:
	smpsPan             panCenter, $00
	dc.b	nRst, $7F, $7D
	smpsSetvoice        $01
	smpsAlterVol        $08
	smpsPan             panLeft, $00
	dc.b	smpsNoAttack, $24
	smpsAlterVol        $0A

FinalCnt_Loop23:
	dc.b	nA4, $7F, smpsNoAttack, $11, $7F, smpsNoAttack, $11, nB4, $7F, smpsNoAttack, $11, $48
	dc.b	nCs5
	smpsLoop            $00, $02, FinalCnt_Loop23

FinalCnt_Loop24:
	dc.b	nA4, $7F, smpsNoAttack, $11, nD5, $7F, smpsNoAttack, $11, nB4, $7F, smpsNoAttack, $11
	dc.b	$48, nCs5
	smpsLoop            $00, $02, FinalCnt_Loop24
	dc.b	nCs5, nE5, nCs5, nD5, nCs5, $7F, smpsNoAttack, $11, $78

FinalCnt_Jump00:
	dc.b	nCs5, nD5, nD5, nB4, nCs5, nD5, nD5, nB4, nCs5, $3C, nE5, nCs5
	dc.b	nD5, nFs5, $78, nF5, nRst, $7F, $7F, $7F, $63

FinalCnt_Loop25:
	dc.b	nCs5, $7F, smpsNoAttack, $7F, smpsNoAttack, $6A, nD5, $78, nCs5, $7F, smpsNoAttack, $7F
	dc.b	smpsNoAttack, $2E, nE5, $3C, $78, nA4, nB4, nCs5, $3C, nE5, nCs5, nCs5
	dc.b	nD5, $78, nE5, nRst, $0F, nB4, nB4, $1E, $0F, $1E, $2D, nRst
	dc.b	$5A, nCs5, $78, nD5, nD5, nB4, nCs5, nD5, nD5, nB4
	smpsLoop            $00, $02, FinalCnt_Loop25
	dc.b	nCs5, $3C, nE5, nCs5, nD5, nFs5, $78, nF5, nCs5, $7F, smpsNoAttack, $71
	dc.b	nA5, $78, nG5, nA5, nG5, $3C, nB5, $1E, nA5, nG5, $78, nE5
	dc.b	nFs5, nCs5, nA5, nAb5, nA5, nG5, $3C, nB5, $1E, nA5, nG5, $78
	dc.b	nCs5, nFs5, nAb5, nCs5, nD5, nB4, nB4, nCs5, nD5, nB4, nB4, nFs5
	dc.b	$3C, nE5, nE5, nD5, $1E, nD5, nFs5, $78, nF5
	smpsPan             panLeft, $00
	smpsJump            FinalCnt_Jump00

; PSG1 Data
FinalCnt_PSG1:
	dc.b	nRst

FinalCnt_Loop325:
	dc.b	$7F
	smpsLoop            $00, $0B, FinalCnt_Loop325
	dc.b	$2B

FinalCnt_Loop326:
	dc.b	nFs0, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs0
	smpsPSGAlterVol     $01
	dc.b	$20
	smpsPSGAlterVol     $FC
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	nAb0, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	nA0, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nD1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nD1
	smpsPSGAlterVol     $01
	dc.b	$68
	smpsPSGAlterVol     $FC
	dc.b	nB0, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nB0
	smpsPSGAlterVol     $01
	dc.b	$20
	smpsPSGAlterVol     $FC
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	nCs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$03
	smpsPSGAlterVol     $FE
	dc.b	nD1, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nCs1
	smpsPSGAlterVol     $01
	dc.b	$20
	smpsPSGAlterVol     $FC
	dc.b	nB0, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nB0
	smpsPSGAlterVol     $01
	dc.b	$20
	smpsPSGAlterVol     $FC
	smpsLoop            $00, $02, FinalCnt_Loop326
	dc.b	nFs0, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs0
	smpsPSGAlterVol     $01
	dc.b	$20
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nB0, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nCs1
	smpsPSGAlterVol     $01
	dc.b	$20
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nCs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$68
	smpsPSGAlterVol     $FC
	dc.b	nF1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nF1
	smpsPSGAlterVol     $01
	dc.b	$50

FinalCnt_Jump06:
	dc.b	nRst

FinalCnt_Loop327:
	dc.b	$7F
	smpsLoop            $00, $0C, FinalCnt_Loop327
	dc.b	$60
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nCs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nAb1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nFs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$50, nRst

FinalCnt_Loop328:
	dc.b	$7F
	smpsLoop            $00, $0A, FinalCnt_Loop328
	dc.b	$6E
	smpsPSGAlterVol     $FD
	dc.b	nCs3, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nD3, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $7F, $7F, $7F, $7F, $7F, $7F, $03
	smpsPSGAlterVol     $FC
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst

FinalCnt_Loop329:
	dc.b	$7F
	smpsLoop            $00, $0D, FinalCnt_Loop329
	dc.b	$59
	smpsPSGAlterVol     $FC
	dc.b	nCs3, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nD3, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $7F, $7F, $7F, $7F, $7F, $7F, $03
	smpsPSGAlterVol     $FC
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nCs3, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $7F, $7F, $7F, $27
	smpsPSGAlterVol     $FC
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$32
	smpsPSGAlterVol     $FC
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$50, nRst, $7F, $7F, $6A
	smpsPSGAlterVol     $FB

FinalCnt_Loop32A:
	dc.b	nD2, $08, nFs2, $07, nA2, $05, nFs2, $03, nD2, $07, nFs2, $08
	dc.b	nA2, $05, nFs2, $02
	smpsLoop            $00, $02, FinalCnt_Loop32A
	dc.b	nD2, $08, nFs2, $07, nA2, $05, nFs2, $03, nD2, $07

FinalCnt_Loop32B:
	dc.b	nE2, $08, nG2, $07, nCs3, $05, nG2, $03, nE2, $07, nG2, $08
	dc.b	nCs3, $05, nG2, $02
	smpsLoop            $00, $02, FinalCnt_Loop32B
	dc.b	nE2, $08, nG2, $07, nCs3, $05, nG2, $03, nE2, $07

FinalCnt_Loop32C:
	dc.b	nFs2, $08, nA2, $07, nD3, $05, nA2, $03, nFs2, $07, nA2, $08
	dc.b	nD3, $05, nA2, $02
	smpsLoop            $00, $02, FinalCnt_Loop32C
	dc.b	nFs2, $08, nA2, $07, nD3, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nB1, $08, nD2, $07, nG2, $05, nD2, $03, nB1, $07, nD2, $08
	dc.b	nG2, $05, nD2, $02, nB1, $08, nCs2, $07, nD2, $08, nCs2, $07
	dc.b	nB1, $08, nA1, $07, nCs2, $08, nB1, $07, nA1, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nG1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FC
	dc.b	$19
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nFs1, nG1, nFs1, nE1, $0A

FinalCnt_Loop32D:
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nD1, $0A
	smpsLoop            $00, $02, FinalCnt_Loop32D
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nCs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nB0, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA0, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nB1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	$08, nFs1, $07, nA1, $08, nE1, $07, nFs1, $08, nB1, $07, nA1
	dc.b	$08, nFs1, $07, nAb1, $08, nF1, $07, nFs1, $05, nAb1, nFs1, nF1
	dc.b	$08, nE1, $07, nD1, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nD1, $08, nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$1B
	smpsPSGAlterVol     $FC

FinalCnt_Loop32E:
	dc.b	nD2, $08, nFs2, $07, nA2, $05, nFs2, $03, nD2, $07, nFs2, $08
	dc.b	nA2, $05, nFs2, $02
	smpsLoop            $00, $02, FinalCnt_Loop32E
	dc.b	nD2, $08, nFs2, $07, nA2, $05, nFs2, $03, nD2, $07

FinalCnt_Loop32F:
	dc.b	nE2, $08, nAb2, $07, nCs3, $05, nAb2, $03, nE2, $07, nAb2, $08
	dc.b	nCs3, $05, nAb2, $02
	smpsLoop            $00, $02, FinalCnt_Loop32F
	dc.b	nE2, $08, nAb2, $07, nCs3, $05, nAb2, $03, nE2, $07

FinalCnt_Loop330:
	dc.b	nFs2, $08, nA2, $07, nD3, $05, nA2, $03, nFs2, $07, nA2, $08
	dc.b	nD3, $05, nA2, $02
	smpsLoop            $00, $02, FinalCnt_Loop330
	dc.b	nFs2, $08, nA2, $07, nD3, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nB1, $08, nD2, $07, nG2, $05, nD2, $03, nB1, $07, nD2, $08
	dc.b	nG2, $05, nD2, $02, nB1, $08, nCs2, $07, nD2, $08, nCs2, $07
	dc.b	nB1, $08, nA1, $07, nCs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nB1, $08, nA1, $07, nG1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nG1
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FC
	dc.b	$19
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nFs1, nG1, nFs1, nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nD1, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nB1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nD1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nA1
	smpsPSGAlterVol     $01
	dc.b	$50
	smpsPSGAlterVol     $FC
	dc.b	nB1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FC
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$14, nRst, $7F, $7F, $7F, $63
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$14
	smpsPSGAlterVol     $FC
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$0D
	smpsPSGAlterVol     $FF
	dc.b	nAb1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FF
	dc.b	nFs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nD2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nD2
	smpsPSGAlterVol     $01
	dc.b	$50
	smpsPSGAlterVol     $FC
	dc.b	nB1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$14
	smpsPSGAlterVol     $FC
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$0D
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0C
	smpsPSGAlterVol     $FF
	dc.b	nD2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nCs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nCs2
	smpsPSGAlterVol     $01
	dc.b	$14
	smpsPSGAlterVol     $FC
	dc.b	nB1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nB1
	smpsPSGAlterVol     $01
	dc.b	$14, nRst, $7F, $7F, $7F, $63
	smpsPSGAlterVol     $FF
	smpsJump            FinalCnt_Jump06

; PSG2 Data
FinalCnt_PSG2:
	dc.b	nRst

FinalCnt_Loop316:
	dc.b	$7F
	smpsLoop            $00, $32, FinalCnt_Loop316
	dc.b	$5E

FinalCnt_Jump05:
	dc.b	nRst

FinalCnt_Loop317:
	dc.b	$7F
	smpsLoop            $00, $19, FinalCnt_Loop317
	dc.b	$7D
	smpsPSGAlterVol     $01
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nFs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $7F, $7F, $10
	smpsPSGAlterVol     $FB
	dc.b	nFs2

FinalCnt_Loop318:
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, FinalCnt_Loop318
	dc.b	nA2, $0A

FinalCnt_Loop319:
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $0A
	smpsLoop            $00, $02, FinalCnt_Loop319
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $7F, $7F, $1F
	smpsPSGAlterVol     $FC
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst

FinalCnt_Loop31A:
	dc.b	$7F
	smpsLoop            $00, $0D, FinalCnt_Loop31A
	dc.b	$59
	smpsPSGAlterVol     $FD
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nFs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $7F, $7F, $10
	smpsPSGAlterVol     $FB
	dc.b	nFs2

FinalCnt_Loop31B:
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $02, FinalCnt_Loop31B
	dc.b	nA2, $0A

FinalCnt_Loop31C:
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $0A
	smpsLoop            $00, $02, FinalCnt_Loop31C

FinalCnt_Loop31D:
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $7F, $7F, $1F
	smpsPSGAlterVol     $FC
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $0A
	smpsLoop            $00, $02, FinalCnt_Loop31D
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $78
	smpsPSGAlterVol     $FD
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$50
	smpsPSGAlterVol     $FB
	dc.b	nCs3, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nB2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nB2
	smpsPSGAlterVol     $01
	dc.b	$14
	smpsPSGAlterVol     $FC
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nA2, $08, nAb2, $07, nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nA2
	smpsPSGAlterVol     $01
	dc.b	$50, nRst, $78
	smpsPSGAlterVol     $FC

FinalCnt_Loop31E:
	dc.b	nB1, $08, nD2, $07, nFs2, $05, nD2, $03, nB1, $07, nD2, $08
	dc.b	nFs2, $05, nD2, $02
	smpsLoop            $00, $02, FinalCnt_Loop31E
	dc.b	nB1, $08, nD2, $07, nFs2, $05, nD2, $03, nB1, $07

FinalCnt_Loop31F:
	dc.b	nCs2, $08, nE2, $07, nAb2, $05, nE2, $03, nCs2, $07, nE2, $08
	dc.b	nAb2, $05, nE2, $02
	smpsLoop            $00, $02, FinalCnt_Loop31F
	dc.b	nCs2, $08, nE2, $07, nAb2, $05, nE2, $03, nCs2, $07

FinalCnt_Loop320:
	dc.b	nD2, $08, nFs2, $07, nA2, $05, nFs2, $03, nD2, $07, nFs2, $08
	dc.b	nA2, $05, nFs2, $02
	smpsLoop            $00, $02, FinalCnt_Loop320
	dc.b	nD2, $08, nFs2, $07, nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nG1, $08, nB1, $07, nD2, $05, nB1, $03, nG1, $07, nB1, $08
	dc.b	nD2, $05, nB1, $02, nG1, $08, nA1, $07, nB1, $08, nA1, $07
	dc.b	nG1, $08, nFs1, $07, nA1, $08, nG1, $07, nFs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$05, nRst, $7F, $7F, $7F, $36
	smpsPSGAlterVol     $FC

FinalCnt_Loop321:
	dc.b	nB1, $08, nD2, $07, nFs2, $05, nD2, $03, nB1, $07, nD2, $08
	dc.b	nFs2, $05, nD2, $02
	smpsLoop            $00, $02, FinalCnt_Loop321
	dc.b	nB1, $08, nD2, $07, nFs2, $05, nD2, $03, nB1, $07

FinalCnt_Loop322:
	dc.b	nCs2, $08, nE2, $07, nAb2, $05, nE2, $03, nCs2, $07, nE2, $08
	dc.b	nAb2, $05, nE2, $02
	smpsLoop            $00, $02, FinalCnt_Loop322
	dc.b	nCs2, $08, nE2, $07, nAb2, $05, nE2, $03, nCs2, $07

FinalCnt_Loop323:
	dc.b	nD2, $08, nFs2, $07, nA2, $05, nFs2, $03, nD2, $07, nFs2, $08
	dc.b	nA2, $05, nFs2, $02
	smpsLoop            $00, $02, FinalCnt_Loop323
	dc.b	nD2, $08, nFs2, $07, nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nG1, $08, nB1, $07, nD2, $05, nB1, $03, nG1, $07, nB1, $08
	dc.b	nD2, $05, nB1, $02, nG1, $08, nA1, $07, nB1, $08, nA1, $07
	dc.b	nG1, $08, nFs1, $07, nA1, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	nG1, $08, nFs1, $07, nE1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nE1
	smpsPSGAlterVol     $01
	dc.b	$05, nRst, $7F, $44
	smpsPSGAlterVol     $FC
	dc.b	nFs1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs1
	smpsPSGAlterVol     $01
	dc.b	$50
	smpsPSGAlterVol     $FC
	dc.b	nAb1, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nAb1
	smpsPSGAlterVol     $01
	dc.b	$05, nRst

FinalCnt_Loop324:
	dc.b	$7F
	smpsLoop            $00, $07, FinalCnt_Loop324
	dc.b	$47
	smpsPSGAlterVol     $FC
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$05
	smpsPSGAlterVol     $FF
	dc.b	$0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nFs2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nFs2
	smpsPSGAlterVol     $01
	dc.b	$32, nRst, $5A
	smpsPSGAlterVol     $FC
	dc.b	nA2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$06
	smpsPSGAlterVol     $FE
	dc.b	nAb2, $0A
	smpsPSGAlterVol     $01
	dc.b	$0E
	smpsPSGAlterVol     $01
	dc.b	$08
	smpsPSGAlterVol     $01
	dc.b	nAb2
	smpsPSGAlterVol     $01
	dc.b	$50, nRst, $78
	smpsPSGAlterVol     $FC
	smpsJump            FinalCnt_Jump05

; PSG3 Data
FinalCnt_PSG3:
	smpsPSGform         $E7
	dc.b	nRst

FinalCnt_Loop65:
	dc.b	$7F
	smpsLoop            $00, $18, FinalCnt_Loop65
	dc.b	$60

FinalCnt_Jump04:
	dc.b	nMaxPSG

FinalCnt_Loop66:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop66
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop67:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop67
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop68:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop68
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop69:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop69
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop6A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop6A
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop6B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop6B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nEb5

FinalCnt_Loop6C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop6C
	dc.b	nEb5
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG

FinalCnt_Loop6D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop6D
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop6E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop6E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop6F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop6F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop70:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop70
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop71:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop71
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop72:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop72
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop73:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop73
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop74:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop74
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop75:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop75
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

FinalCnt_Loop76:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop76
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop77:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop77
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop78:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop78
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop79:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop79
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop7A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop7A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop7B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop7B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop7C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop7C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop7D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop7D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop7E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop7E
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop7F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop7F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop80:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop80
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop81:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop81
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop82:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop82
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nEb5

FinalCnt_Loop83:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop83
	dc.b	nEb5
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG

FinalCnt_Loop84:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop84
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop85:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop85
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop86:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop86
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop87:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop87
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop88:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop88
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop89:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop89
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop8A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop8A
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop8B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop8B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop8C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop8C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

FinalCnt_Loop8D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop8D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop8E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop8E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop8F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop8F
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop90:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop90
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop91:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop91
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop92:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop92
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop93:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop93
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop94:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop94
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop95:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop95
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop96:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop96
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop97:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop97
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop98:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop98
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop99:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop99
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nEb5

FinalCnt_Loop9A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop9A
	dc.b	nEb5
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG

FinalCnt_Loop9B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop9B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop9C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop9C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop9D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop9D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop9E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop9E
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop9F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop9F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopA0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopA0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_LoopA1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopA1
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopA2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopA2
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopA3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopA3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

FinalCnt_LoopA4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopA4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopA5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopA5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_LoopA6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopA6
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopA7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopA7
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopA8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopA8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_LoopA9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopA9
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopAA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopAA
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopAB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopAB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_LoopAC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopAC
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopAD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopAD
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopAE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopAE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_LoopAF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopAF
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopB0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopB0
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nEb5

FinalCnt_LoopB1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopB1
	dc.b	nEb5
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG

FinalCnt_LoopB2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopB2
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopB3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopB3
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopB4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopB4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_LoopB5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopB5
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopB6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopB6
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopB7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopB7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_LoopB8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopB8
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopB9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopB9
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopBA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopBA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	dc.b	$02
	smpsPSGAlterVol     $FE

FinalCnt_LoopBB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopBB
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopBC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopBC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_LoopBD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopBD
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopBE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopBE
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopBF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopBF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_LoopC0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopC0
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_LoopC1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_LoopC1
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_LoopC2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopC2
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopC3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopC3
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nEb5

FinalCnt_LoopC4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopC4
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG

FinalCnt_LoopC5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopC5
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopC6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopC6
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopC7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopC7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_LoopC8:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopC8
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FA

FinalCnt_LoopC9:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopC9
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopCA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopCA
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopCB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopCB
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopCC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopCC
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopCD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopCD
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopCE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopCE
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopCF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopCF
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopD0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopD0
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopD1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_LoopD1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_LoopD2:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopD2
	dc.b	$18
	smpsPSGAlterVol     $F7

FinalCnt_LoopD3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopD3
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopD4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopD4
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopD5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopD5
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopD6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopD6
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopD7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopD7
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopD8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopD8
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopD9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopD9
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopDA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopDA
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopDB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopDB
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopDC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopDC
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopDD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopDD
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopDE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopDE
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopDF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopDF
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopE0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE0
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopE1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE1
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopE2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE2
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopE3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE3
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopE4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE4
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopE5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE5
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopE6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE6
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopE7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE7
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopE8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE8
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopE9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopE9
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopEA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopEA
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopEB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopEB
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopEC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopEC
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopED:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopED
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopEE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopEE
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopEF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopEF
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopF0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF0
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopF1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF1
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopF2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF2
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopF3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF3
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopF4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF4
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopF5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF5
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopF6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF6
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopF7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF7
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopF8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF8
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_LoopF9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopF9
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_LoopFA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopFA
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopFB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopFB
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopFC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopFC
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nEb5

FinalCnt_LoopFD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopFD
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG

FinalCnt_LoopFE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopFE
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_LoopFF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_LoopFF
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop100:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop100
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop101:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop101
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop102:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop102
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop103:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop103
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop104:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop104
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop105:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop105
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop106:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop106
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop107:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop107
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop108:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop108
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop109:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop109
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop10A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop10A
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop10B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop10B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop10C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop10C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop10D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop10D
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop10E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop10E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop10F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop10F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop110:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop110
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop111:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop111
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop112:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop112
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop113:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop113
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop114:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop114
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop115:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop115
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop116:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop116
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop117:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop117
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop118:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop118
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop119:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop119
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop11A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop11A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop11B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop11B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop11C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop11C
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop11D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop11D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop11E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop11E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop11F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop11F
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop120:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop120
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nEb5

FinalCnt_Loop121:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop121
	dc.b	nEb5
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG

FinalCnt_Loop122:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop122
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop123:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop123
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop124:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop124
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop125:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop125
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop126:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop126
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop127:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop127
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop128:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop128
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop129:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop129
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop12A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop12A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop12B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop12B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop12C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop12C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nEb5

FinalCnt_Loop12D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop12D
	dc.b	nEb5
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG

FinalCnt_Loop12E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop12E
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop12F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop12F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop130:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop130
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop131:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop131
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop132:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop132
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop133:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop133
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop134:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop134
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop135:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop135
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop136:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop136
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop137:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop137
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop138:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop138
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop139:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop139
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop13A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop13A
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop13B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop13B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop13C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop13C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop13D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop13D
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop13E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop13E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop13F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop13F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop140:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop140
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop141:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop141
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop142:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop142
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop143:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop143
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop144:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop144
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop145:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop145
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop146:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop146
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop147:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop147
	dc.b	nMaxPSG, nRst, $11
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop148:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop148
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop149:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop149
	dc.b	nMaxPSG, nRst, $11
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop14A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop14A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop14B:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop14B
	dc.b	$18
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

FinalCnt_Loop14C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop14C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop14D:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop14D
	dc.b	$09
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

FinalCnt_Loop14E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop14E
	dc.b	$63
	smpsPSGAlterVol     $F9

FinalCnt_Loop14F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop14F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop150:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop150
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop151:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop151
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop152:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop152
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop153:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop153
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop154:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop154
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop155:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop155
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop156:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop156
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop157:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop157
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop158:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop158
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop159:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop159
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop15A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop15A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop15B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop15B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop15C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop15C
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop15D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop15D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop15E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop15E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop15F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop15F
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop160:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop160
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop161:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop161
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop162:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop162
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop163:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop163
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop164:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop164
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop165:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop165
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop166:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop166
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop167:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop167
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop168:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop168
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop169:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop169
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop16A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop16A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop16B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop16B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop16C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop16C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop16D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop16D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop16E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop16E
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop16F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop16F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop170:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop170
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop171:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop171
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop172:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop172
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop173:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop173
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop174:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop174
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop175:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop175
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop176:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop176
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop177:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop177
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop178:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop178
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop179:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop179
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop17A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop17A
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop17B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop17B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop17C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop17C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop17D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop17D
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop17E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop17E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop17F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop17F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop180:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop180
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop181:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop181
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop182:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop182
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop183:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop183
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop184:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop184
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop185:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop185
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop186:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop186
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop187:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop187
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop188:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop188
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop189:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop189
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop18A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop18A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop18B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop18B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop18C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop18C
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop18D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop18D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop18E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop18E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop18F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop18F
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop190:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop190
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop191:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop191
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop192:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop192
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop193:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop193
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop194:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop194
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop195:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop195
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop196:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop196
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop197:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop197
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop198:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop198
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop199:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop199
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop19A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop19A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop19B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop19B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop19C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop19C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop19D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop19D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop19E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop19E
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop19F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop19F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1A0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1A0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1A1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1A1
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1A2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1A2
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1A3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1A3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop1A4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1A4
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1A5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1A5
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1A6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1A6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1A7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1A7
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1A8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1A8
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1A9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1A9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop1AA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1AA
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1AB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1AB
	dc.b	nMaxPSG, nRst, $11
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1AC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1AC
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1AD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1AD
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1AE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1AE
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop1AF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1AF
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1B0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B0
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1B1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B1
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1B2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B2
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1B3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B3
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1B4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B4
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1B5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B5
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1B6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B6
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1B7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B7
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1B8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B8
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1B9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1B9
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1BA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1BA
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1BB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1BB
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1BC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1BC
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1BD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1BD
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop1BE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1BE
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop1BF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1BF
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1C0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C0
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1C1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C1
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1C2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C2
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1C3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C3
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1C4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C4
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1C5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C5
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop1C6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C6
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop1C7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C7
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nEb5

FinalCnt_Loop1C8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C8
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG

FinalCnt_Loop1C9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1C9
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop1CA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1CA
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop1CB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1CB
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop1CC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1CC
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop1CD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop1CD
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop1CE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1CE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1CF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1CF
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1D0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1D0
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1D1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1D1
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1D2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1D2
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1D3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1D3
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1D4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1D4
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop1D5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1D5
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1D6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1D6
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1D7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1D7
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1D8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1D8
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1D9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1D9
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1DA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1DA
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop1DB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1DB
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1DC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1DC
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1DD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1DD
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1DE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1DE
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1DF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1DF
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1E0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1E0
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop1E1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1E1
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1E2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1E2
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1E3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1E3
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1E4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1E4
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1E5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1E5
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1E6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1E6
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1E7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1E7
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1E8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1E8
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1E9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1E9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1EA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1EA
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1EB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1EB
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nEb5

FinalCnt_Loop1EC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1EC
	dc.b	nEb5
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG

FinalCnt_Loop1ED:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1ED
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1EE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1EE
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1EF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1EF
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1F0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1F0
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1F1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1F1
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1F2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1F2
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1F3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1F3
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1F4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1F4
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1F5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1F5
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1F6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1F6
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1F7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1F7
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nEb5

FinalCnt_Loop1F8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1F8
	dc.b	nEb5
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG

FinalCnt_Loop1F9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1F9
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1FA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1FA
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1FB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1FB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1FC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1FC
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop1FD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1FD
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop1FE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop1FE
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop1FF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop1FF
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop200:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop200
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop201:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop201
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop202:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop202
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop203:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop203
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop204:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop204
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop205:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop205
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop206:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop206
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop207:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop207
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop208:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop208
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop209:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop209
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop20A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop20A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop20B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop20B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop20C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop20C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop20D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop20D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop20E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop20E
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop20F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop20F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop210:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop210
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop211:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop211
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop212:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop212
	dc.b	nMaxPSG, nRst, $11
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop213:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop213
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop214:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop214
	dc.b	nMaxPSG, nRst, $11
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop215:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop215
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop216:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop216
	dc.b	$18
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

FinalCnt_Loop217:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop217
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop218:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop218
	dc.b	$09
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

FinalCnt_Loop219:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop219
	dc.b	$63
	smpsPSGAlterVol     $F9

FinalCnt_Loop21A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop21A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop21B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop21B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop21C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop21C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop21D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop21D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop21E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop21E
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop21F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop21F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop220:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop220
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop221:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop221
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop222:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop222
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop223:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop223
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop224:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop224
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop225:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop225
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop226:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop226
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop227:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop227
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop228:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop228
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop229:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop229
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop22A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop22A
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop22B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop22B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop22C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop22C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop22D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop22D
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop22E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop22E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop22F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop22F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop230:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop230
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop231:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop231
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop232:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop232
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop233:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop233
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop234:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop234
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop235:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop235
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop236:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop236
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop237:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop237
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop238:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop238
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop239:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop239
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop23A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop23A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop23B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop23B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop23C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop23C
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop23D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop23D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop23E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop23E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop23F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop23F
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop240:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop240
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop241:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop241
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop242:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop242
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop243:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop243
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop244:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop244
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop245:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop245
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop246:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop246
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop247:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop247
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop248:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop248
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop249:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop249
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop24A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop24A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop24B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop24B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop24C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop24C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop24D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop24D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop24E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop24E
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop24F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop24F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop250:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop250
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop251:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop251
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop252:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop252
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop253:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop253
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop254:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop254
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop255:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop255
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop256:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop256
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop257:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop257
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop258:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop258
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop259:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop259
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop25A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop25A
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop25B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop25B
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop25C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop25C
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop25D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop25D
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop25E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop25E
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop25F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop25F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop260:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop260
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop261:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop261
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop262:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop262
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop263:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop263
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop264:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop264
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop265:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop265
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop266:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop266
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop267:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop267
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop268:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop268
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop269:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop269
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop26A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop26A
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop26B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop26B
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop26C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop26C
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop26D:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop26D
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop26E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop26E
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop26F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop26F
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop270:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop270
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop271:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop271
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop272:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop272
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop273:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop273
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop274:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop274
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FC

FinalCnt_Loop275:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop275
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop276:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop276
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop277:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop277
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop278:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop278
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop279:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop279
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop27A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop27A
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop27B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop27B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop27C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop27C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop27D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop27D
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop27E:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop27E
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop27F:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop27F
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nEb5

FinalCnt_Loop280:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop280
	dc.b	nEb5
	smpsPSGAlterVol     $FE
	dc.b	nMaxPSG

FinalCnt_Loop281:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop281
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop282:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop282
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop283:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop283
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop284:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop284
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop285:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop285
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop286:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop286
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop287:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop287
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nEb5

FinalCnt_Loop288:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop288
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG

FinalCnt_Loop289:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop289
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop28A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop28A
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop28B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop28B
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop28C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop28C
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop28D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop28D
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop28E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop28E
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop28F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop28F
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop290:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop290
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop291:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop291
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop292:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop292
	dc.b	$7F, $5C
	smpsPSGAlterVol     $F7

FinalCnt_Loop293:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop293
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop294:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop294
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop295:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop295
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop296:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop296
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop297:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop297
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop298:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop298
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop299:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop299
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop29A:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop29A
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop29B:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop29B
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop29C:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop29C
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop29D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop29D
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop29E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop29E
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop29F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop29F
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2A0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A0
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nEb5

FinalCnt_Loop2A1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A1
	dc.b	$09
	smpsPSGAlterVol     $F9
	dc.b	nMaxPSG

FinalCnt_Loop2A2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A2
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2A3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A3
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2A4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A4
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2A5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A5
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2A6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A6
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2A7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A7
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2A8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A8
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2A9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2A9
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2AA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2AA
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2AB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2AB
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2AC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2AC
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2AD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2AD
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2AE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2AE
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2AF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2AF
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2B0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B0
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2B1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B1
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2B2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B2
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2B3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B3
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2B4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B4
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2B5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B5
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2B6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B6
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2B7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B7
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2B8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B8
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2B9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2B9
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2BA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2BA
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2BB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2BB
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2BC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2BC
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2BD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2BD
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2BE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2BE
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2BF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2BF
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2C0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C0
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2C1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C1
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2C2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C2
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2C3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C3
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2C4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C4
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2C5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C5
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2C6:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C6
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2C7:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C7
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2C8:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C8
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2C9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2C9
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2CA:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2CA
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2CB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2CB
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2CC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2CC
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2CD:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2CD
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2CE:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2CE
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2CF:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2CF
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2D0:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2D0
	dc.b	$09
	smpsPSGAlterVol     $FB

FinalCnt_Loop2D1:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2D1
	dc.b	$09
	smpsPSGAlterVol     $F7

FinalCnt_Loop2D2:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2D2
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2D3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2D3
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2D4:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2D4
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2D5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2D5
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2D6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2D6
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2D7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2D7
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2D8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2D8
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2D9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2D9
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2DA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2DA
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2DB:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop2DB
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop2DC:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2DC
	dc.b	$09
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

FinalCnt_Loop2DD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2DD
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2DE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2DE
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2DF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2DF
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2E0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2E0
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2E1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2E1
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2E2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2E2
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2E3:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2E3
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2E4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2E4
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2E5:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2E5
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2E6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2E6
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2E7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2E7
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2E8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2E8
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2E9:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2E9
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2EA:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2EA
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2EB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2EB
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2EC:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop2EC
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop2ED:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2ED
	dc.b	$09
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

FinalCnt_Loop2EE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2EE
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2EF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2EF
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2F0:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2F0
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2F1:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2F1
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2F2:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2F2
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2F3:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2F3
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2F4:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2F4
	dc.b	$09
	smpsPSGAlterVol     $F9

FinalCnt_Loop2F5:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2F5
	dc.b	$27
	smpsPSGAlterVol     $F9

FinalCnt_Loop2F6:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2F6
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2F7:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2F7
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2F8:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2F8
	dc.b	nMaxPSG, nRst, $11
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2F9:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop2F9
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop2FA:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop2FA
	dc.b	$27
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

FinalCnt_Loop2FB:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2FB
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2FC:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2FC
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop2FD:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2FD
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop2FE:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2FE
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop2FF:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop2FF
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop300:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop300
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop301:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop301
	dc.b	$27
	smpsPSGAlterVol     $F9

FinalCnt_Loop302:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop302
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop303:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop303
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop304:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop304
	dc.b	nMaxPSG, nRst, $11
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop305:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop305
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop306:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop306
	dc.b	$27
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

FinalCnt_Loop307:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop307
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop308:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop308
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop309:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop309
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop30A:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop30A
	dc.b	nMaxPSG, nRst, $0A
	smpsPSGAlterVol     $FA
	dc.b	nMaxPSG

FinalCnt_Loop30B:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop30B
	dc.b	nMaxPSG, nRst, $03
	smpsPSGAlterVol     $F8
	dc.b	nMaxPSG

FinalCnt_Loop30C:
	dc.b	$01
	smpsPSGAlterVol     $02
	smpsLoop            $00, $04, FinalCnt_Loop30C
	dc.b	nMaxPSG, nRst, $02
	smpsPSGAlterVol     $F6
	dc.b	nMaxPSG

FinalCnt_Loop30D:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop30D
	dc.b	$27
	smpsPSGAlterVol     $F9

FinalCnt_Loop30E:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop30E
	dc.b	$27
	smpsPSGAlterVol     $F9

FinalCnt_Loop30F:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop30F
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop310:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop310
	dc.b	nEb5
	smpsPSGAlterVol     $FA

FinalCnt_Loop311:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop311
	dc.b	nMaxPSG
	smpsPSGAlterVol     $FE

FinalCnt_Loop312:
	dc.b	nEb5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, FinalCnt_Loop312
	dc.b	nEb5
	smpsPSGAlterVol     $FA

FinalCnt_Loop313:
	dc.b	nMaxPSG
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop313
	dc.b	$09
	smpsPSGAlterVol     $FB
	dc.b	nEb5

FinalCnt_Loop314:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop314
	dc.b	$09
	smpsPSGAlterVol     $F7
	dc.b	nMaxPSG

FinalCnt_Loop315:
	dc.b	$03
	smpsPSGAlterVol     $01
	smpsLoop            $00, $07, FinalCnt_Loop315
	dc.b	$7F, $5C
	smpsPSGAlterVol     $F9
	smpsJump            FinalCnt_Jump04

; DAC Data
FinalCnt_DAC:
	dc.b	$84, $48, $84, $84, $24, $84, $84, $7F

FinalCnt_Loop00:
	dc.b	nRst, $7F
	smpsLoop            $00, $15, FinalCnt_Loop00
	dc.b	$0E

FinalCnt_Loop01:
	dc.b	dClap, $08, $0F, dKick, $07
	smpsLoop            $00, $03, FinalCnt_Loop01
	dc.b	dSnare, $1E

FinalCnt_Loop02:
	dc.b	$85

FinalCnt_Loop03:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $02, FinalCnt_Loop02
	smpsLoop            $01, $02, FinalCnt_Loop03
	smpsLoop            $02, $05, FinalCnt_Loop02
	dc.b	$85

FinalCnt_Loop04:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $03, FinalCnt_Loop04
	dc.b	dKick, $17, $07, dSnare, $0F, $08, $07

FinalCnt_Loop06:
	dc.b	$85

FinalCnt_Loop05:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $04, FinalCnt_Loop05
	smpsLoop            $01, $03, FinalCnt_Loop06
	dc.b	dKick

FinalCnt_Loop07:
	dc.b	$17, $07

FinalCnt_Loop08:
	dc.b	dSnare, $0F, dKick
	smpsLoop            $00, $04, FinalCnt_Loop07
	dc.b	$85, $17, dKick, $07
	smpsLoop            $01, $02, FinalCnt_Loop08

FinalCnt_Loop09:
	dc.b	dSnare, $0F, dKick, $85

FinalCnt_Loop0A:
	dc.b	$17, dKick, $07
	smpsLoop            $00, $02, FinalCnt_Loop09
	dc.b	dSnare, $0F, dKick
	smpsLoop            $01, $02, FinalCnt_Loop0A
	dc.b	dKick

FinalCnt_Loop0B:
	dc.b	$17, $07, dSnare, $0F, dKick
	smpsLoop            $00, $03, FinalCnt_Loop0B

FinalCnt_Loop0C:
	dc.b	$85, $17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $05, FinalCnt_Loop0C
	dc.b	dKick

FinalCnt_Loop0D:
	dc.b	$17, $07, dSnare, $0F, dKick
	smpsLoop            $00, $02, FinalCnt_Loop0D
	dc.b	dKick, $17, $07, dSnare, $0F, dSnare, dKick, $85, $85, dKick, dKick, $85
	dc.b	$85, dKick, $85, $4B, dKick, $08, $07, dSnare, $1E, $85

FinalCnt_Loop0E:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $08, FinalCnt_Loop0E
	dc.b	$85

FinalCnt_Loop0F:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $07, FinalCnt_Loop0F
	dc.b	dKick, dSnare, dSnare, dSnare, $08, $07, $85

FinalCnt_Loop10:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $08, FinalCnt_Loop10
	dc.b	$85

FinalCnt_Loop11:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $04, FinalCnt_Loop11

FinalCnt_Loop12:
	dc.b	$85, $17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $03, FinalCnt_Loop12
	dc.b	dKick, $17, $07, dSnare, $0F, dKick, $85

FinalCnt_Loop13:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $04, FinalCnt_Loop13

FinalCnt_Loop14:
	dc.b	$85, $17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $05, FinalCnt_Loop14
	dc.b	dKick

FinalCnt_Loop15:
	dc.b	$17, $07, dSnare, $0F, dKick
	smpsLoop            $00, $02, FinalCnt_Loop15
	dc.b	dKick, $17, $07, dSnare, $0F, dSnare, dKick, $85, $85, dKick, dKick, $85
	dc.b	$85, dKick, $85, $4B, dKick, $08, $07, dSnare, $1E

FinalCnt_Loop17:
	dc.b	$85

FinalCnt_Loop16:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $08, FinalCnt_Loop16
	smpsLoop            $01, $02, FinalCnt_Loop17

FinalCnt_Loop18:
	dc.b	$85, $17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $05, FinalCnt_Loop18
	dc.b	dKick

FinalCnt_Loop19:
	dc.b	$17, $07, dSnare, $0F, dKick
	smpsLoop            $00, $03, FinalCnt_Loop19
	dc.b	dKick, dClap, dSnare, $08, $0F, $07, $08, dClap, $07, dSnare, $08, $07
	dc.b	dClap, $08, dSnare, $07, $0F, $05

FinalCnt_Loop1A:
	dc.b	dClap, $03, $05, $02, dSnare, $05
	smpsLoop            $00, $02, FinalCnt_Loop1A
	dc.b	dClap

FinalCnt_Loop1B:
	dc.b	$03, dSnare, $05, dClap, $02, $05
	smpsLoop            $00, $02, FinalCnt_Loop1B
	dc.b	$03, dSnare

FinalCnt_Loop1C:
	dc.b	$05, dClap, $02, dSnare, $05, dClap, $03
	smpsLoop            $00, $02, FinalCnt_Loop1C
	dc.b	$05, $02, dSnare, $0F, $85

FinalCnt_Loop1D:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $06, FinalCnt_Loop1D

FinalCnt_Loop1E:
	dc.b	$85, $17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $03, FinalCnt_Loop1E
	dc.b	dKick

FinalCnt_Loop1F:
	dc.b	$17, $07, dSnare, $0F, dKick
	smpsLoop            $00, $03, FinalCnt_Loop1F
	dc.b	$85, $17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $01, $02, FinalCnt_Loop1F
	dc.b	dKick

FinalCnt_Loop20:
	dc.b	$17, $07, dSnare, $0F, dKick
	smpsLoop            $00, $07, FinalCnt_Loop20
	dc.b	$85

FinalCnt_Loop21:
	dc.b	$17, dKick, $07, dSnare, $0F, dKick
	smpsLoop            $00, $08, FinalCnt_Loop21
	dc.b	$85, $69, $0F, $78, $69, $0F, $78, $1E, dSnare, $3C, $0F, $85
	dc.b	$85, $1E, dSnare, $3C, $1E, $85, dSnare, $3C, $0F, $85, $85, $1E
	dc.b	dSnare, $3C, $1E, $85, $2D, dSnare, $08, $07, $85, $2D, dSnare, $08
	dc.b	$07, $85, $0F, $85, $85, $85, $85, $1E, $85, $85, $71

FinalCnt_Loop22:
	dc.b	dKick, $07, dClap, $08, $0F
	smpsLoop            $00, $03, FinalCnt_Loop22
	dc.b	dKick, $07, dSnare, $0F, $85
	smpsJump            FinalCnt_Loop02

FinalCnt_Voices:
;	Voice $00
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $00
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
;	$3C
;	$07, $72, $70, $31, 	$16, $8F, $98, $8C, 	$1F, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$0A, $08, $05, $07, 	$1C, $01, $0A, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $00
	smpsVcCoarseFreq    $01, $00, $02, $07
	smpsVcRateScale     $02, $02, $02, $00
	smpsVcAttackRate    $0C, $18, $0F, $16
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $1F
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $07, $05, $08, $0A
	smpsVcTotalLevel    $00, $0A, $01, $1C

;	Voice $02
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$17, $28, $27, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $17

;	Voice $03
;	$3B
;	$08, $30, $71, $01, 	$1F, $0F, $0B, $10, 	$1F, $1D, $1D, $1F
;	$00, $04, $03, $01, 	$04, $01, $01, $06, 	$2A, $2E, $23, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $07, $03, $00
	smpsVcCoarseFreq    $01, $01, $00, $08
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $0B, $0F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1D, $1D, $1F
	smpsVcDecayRate2    $01, $03, $04, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $06, $01, $01, $04
	smpsVcTotalLevel    $00, $23, $2E, $2A

