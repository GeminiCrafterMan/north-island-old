		move.w	#SndID_EnterGiantRing,d0
		bsr.w	PlaySound ; play special stage entry sound
		bsr.w	Pal_FadeToWhite
		move	#$2700,sr
		lea	(VDP_control_port).l,a6
		move.w	#$8B03,(a6)
		move.w	#$8004,(a6)
		move.w	#$8AAF,(Hint_counter_reserve).w
		move.w	#$9011,(a6)
		move.w	(VDP_Reg1_val).w,d0
		andi.b	#$BF,d0
		move.w	d0,(VDP_control_port).l
		bsr.w	ClearScreen
		move	#$2300,sr
		lea	(VDP_control_port).l,a5
		move.w	#$8F01,(a5)
		move.l	#$946F93FF,(a5)
		move.w	#$9780,(a5)
		move.l	#$50000081,(a5)
		move.w	#0,(VDP_data_port).l

s1loc_463C:
		move.w	(a5),d1
		btst	#1,d1
		bne.s	s1loc_463C
		move.w	#$8F02,(a5)
		bsr.w	SS_BGLoad
	moveq	#PLCID_SpecialStage,d0
		bsr.w	RunPLC_ROM	; load special stage patterns
		lea	(Object_RAM).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

SS_ClrObjRam:
		move.l	d0,(a1)+
		dbf	d1,SS_ClrObjRam	; clear	the object RAM

		lea	(Camera_X_pos).w,a1
		moveq	#0,d0
		move.w	#$3F,d1

SS_ClrRam:
		move.l	d0,(a1)+
		dbf	d1,SS_ClrRam	; clear	variables

		lea	(Oscillating_Data).w,a1
		moveq	#0,d0
		move.w	#$27,d1

SS_ClrRam2:
		move.l	d0,(a1)+
		dbf	d1,SS_ClrRam2	; clear	variables

		lea	(Decomp_Buffer).w,a1
		moveq	#0,d0
		move.w	#$7F,d1

SS_ClrNemRam:
		move.l	d0,(a1)+
		dbf	d1,SS_ClrNemRam	; clear	Nemesis	buffer

		clr.b	(Water_fullscreen_flag).w
		clr.w	(Level_Inactive_flag).w
		moveq	#PalID_S1SS,d0
		bsr.w	PalLoad_ForFade	; load special stage pallet
		jsr	(SS_Load).l
		move.l	#0,(Camera_X_pos).w
		move.l	#0,(Camera_Y_pos).w
		move.b	#ObjID_SonicSS,(Object_RAM).w ; load	special	stage Sonic object
		bsr.w	PalCycle_SS
		clr.w	(S1SS_F780Rep).w	; set stage angle to "upright"
		move.w	#$40,(S1SS_F780Rep+2).w ; set stage rotation	speed
		move.w	#MusID_S3DBSpecStage,d0
		bsr.w	PlayMusic	; play special stage BG	music
		move.w	#0,(Demo_button_index).w
		lea	(DemoScriptPointers).l,a1
		moveq	#6,d0
		lsl.w	#2,d0
		movea.l	(a1,d0.w),a1
		move.b	1(a1),(Demo_press_counter).w
		subq.b	#1,(Demo_press_counter).w
		clr.w	(Ring_count).w
		clr.b	(Extra_life_flags).w
		move.w	#0,(Debug_placement_mode).w
		move.w	#1800,(Demo_Time_left).w
		tst.b	(Debug_options_flag).w	; has debug cheat been entered?
		beq.s	SS_NoDebug	; if not, branch
		btst	#6,(Ctrl_1).w ; is A	button pressed?
		beq.s	SS_NoDebug	; if not, branch
		move.b	#1,(Debug_mode_flag).w ; enable debug	mode

SS_NoDebug:
		move.w	(VDP_Reg1_val).w,d0
		ori.b	#$40,d0
		move.w	d0,(VDP_control_port).l
		bsr.w	Pal_FadeFromWhite

; ---------------------------------------------------------------------------
; Main Special Stage loop
; ---------------------------------------------------------------------------

SS_MainLoop:
		bsr.w	PauseGame
		move.b	#$A,(Vint_routine).w
		bsr.w	WaitForVint
		bsr.w	MoveSonicInDemo
		move.w	(Ctrl_1).w,(Ctrl_1_Logical).w
		jsr	(RunObjects).l
		jsr	(BuildSprites).l
		jsr	(SS_ShowLayout).l
		bsr.w	SS_BGAnimate
		tst.w	(Demo_mode_flag).w	; is demo mode on?
		beq.s	SS_ChkEnd	; if not, branch
		tst.w	(Demo_Time_left).w	; is there time	left on	the demo?
		beq.w	SS_ToSegaScreen	; if not, branch

SS_ChkEnd:
		cmpi.b	#GameModeID_SpecialStage,(Game_Mode).w ; is	game mode $10 (special stage)?
		beq.w	SS_MainLoop	; if yes, branch

		tst.w	(Demo_mode_flag).w	; is demo mode on?
		bne.w	SS_ToSegaScreen	; if yes, branch
		move.b	#$C,(Game_Mode).w ; set	screen mode to $0C (level)
;		cmpi.w	#$503,(Current_ZoneAndAct).w ; is level number higher than FZ?
;		bcs.s	SS_End		; if not, branch
;		clr.w	(Current_ZoneAndAct).w	; set to GHZ1

SS_End:
		move.w	#60,(Demo_Time_left).w ; set	delay time to 1	second
		move.w	#$3F,(Palette_fade_start).w
		clr.w	(PalChangeSpeed).w

SS_EndLoop:
		move.b	#$16,(Vint_routine).w
		bsr.w	WaitForVint
		bsr.w	MoveSonicInDemo
		move.w	(Ctrl_1).w,(Ctrl_1_Logical).w
		jsr	(RunObjects).l
		jsr	(BuildSprites).l
		jsr	(SS_ShowLayout).l
		bsr.w	SS_BGAnimate
		subq.w	#1,(PalChangeSpeed).w
		bpl.s	s1loc_47D4
		move.w	#2,(PalChangeSpeed).w
		bsr.w	Pal_FadeToWhite.UpdateAllColours

s1loc_47D4:
		tst.w	(Demo_Time_left).w
		bne.s	SS_EndLoop

		move	#$2700,sr
		lea	(VDP_control_port).l,a6
		move.w	#$8230,(a6)
		move.w	#$8407,(a6)
		move.w	#$9001,(a6)
		bsr.w	ClearScreen
		move.l	#$70000002,(VDP_control_port).l
		lea	(ArtNem_TitleCard).l,a0 ; load title card patterns
		bsr.w	NemDec
		jsr	(Hud_Base).l
		move	#$2300,sr
		moveq	#$11,d0
		bsr.w	PalLoad_Now	; load results screen pallet
		moveq	#0,d0
		bsr.w	LoadPLC2
		moveq	#$8,d0
		bsr.w	LoadPLC		; load results screen patterns
		move.b	#1,(Update_HUD_score).w ; update score	counter
		move.b	#1,(Update_Bonus_score).w ; update ring bonus counter
		move.w	(Ring_count).w,d0
		mulu.w	#10,d0		; multiply rings by 10
		move.w	d0,(Bonus_Countdown_2).w ; set rings bonus
		move.w	#MusID_S3KEndLevel,d0
		jsr	(PlaySound).l ;	play end-of-level music
		lea	(Object_RAM).w,a1
		moveq	#0,d0
		move.w	#$7FF,d1

SS_EndClrObjRam:
		move.l	d0,(a1)+
		dbf	d1,SS_EndClrObjRam ; clear object RAM

		move.b	#$6F,(Object_RAM+$5C0).w ; load results screen object

SS_NormalExit:
		bsr.w	PauseGame
		move.b	#$C,(Vint_routine).w
		bsr.w	WaitForVint
		jsr	(RunObjects).l
		jsr	(BuildSprites).l
		bsr.w	RunPLC_RAM
		tst.w	(Level_Inactive_flag).w
		beq.s	SS_NormalExit
		tst.l	(Plc_Buffer).w
		bne.s	SS_NormalExit
		move.w	#SndID_EnterGiantRing,d0
		bsr.w	PlaySound ; play special stage exit sound
		bsr.w	Pal_FadeToWhite
		rts
; ===========================================================================

SS_ToSegaScreen:
		move.b	#0,(Game_Mode).w ; set screen mode to 00 (Sega screen)
		rts

; ---------------------------------------------------------------------------
; Special stage	background loading subroutine
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SS_BGLoad:				; XREF: SpecialStage
		lea	(Chunk_Table).l,a1
		lea	(Eni_SSBg1).l,a0 ; load	mappings for the birds and fish
		move.w	#$4051,d0
		bsr.w	EniDec
		move.l	#$50000001,d3
		lea	(Chunk_Table+$80).l,a2
		moveq	#6,d7

s1loc_48BE:
		move.l	d3,d0
		moveq	#3,d6
		moveq	#0,d4
		cmpi.w	#3,d7
		bcc.s	s1loc_48CC
		moveq	#1,d4

s1loc_48CC:
		moveq	#7,d5

s1loc_48CE:
		movea.l	a2,a1
		eori.b	#1,d4
		bne.s	s1loc_48E2
		cmpi.w	#6,d7
		bne.s	s1loc_48F2
		lea	(Chunk_Table).l,a1

s1loc_48E2:
		movem.l	d0-d4,-(sp)
		moveq	#7,d1
		moveq	#7,d2
		bsr.w	PlaneMapToVRAM_H40
		movem.l	(sp)+,d0-d4

s1loc_48F2:
		addi.l	#$100000,d0
		dbf	d5,s1loc_48CE
		addi.l	#$3800000,d0
		eori.b	#1,d4
		dbf	d6,s1loc_48CC
		addi.l	#$10000000,d3
		bpl.s	s1loc_491C
		swap	d3
		addi.l	#$C000,d3
		swap	d3

s1loc_491C:
		adda.w	#$80,a2
		dbf	d7,s1loc_48BE
		lea	(Chunk_Table).l,a1
		lea	(Eni_SSBg2).l,a0 ; load	mappings for the clouds
		move.w	#$4000,d0
		bsr.w	EniDec
		lea	(Chunk_Table).l,a1
		move.l	#$40000003,d0
		moveq	#$3F,d1
		moveq	#$1F,d2
		bsr.w	PlaneMapToVRAM_H40
		lea	(Chunk_Table).l,a1
		move.l	#$50000003,d0
		moveq	#$3F,d1
		moveq	#$3F,d2
		bsr.w	PlaneMapToVRAM_H40
		rts
; End of function SS_BGLoad

; ---------------------------------------------------------------------------
; Pallet cycling routine - special stage
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PalCycle_SS:				; XREF: s1loc_DA6; SpecialStage
		tst.w	(Game_paused).w
		bne.s	locret_49E6
		subq.w	#1,($FFFFF79C).w
		bpl.s	locret_49E6
		lea	(VDP_control_port).l,a6
		move.w	($FFFFF79A).w,d0
		addq.w	#1,($FFFFF79A).w
		andi.w	#$1F,d0
		lsl.w	#2,d0
		lea	(byte_4A3C).l,a0
		adda.w	d0,a0
		move.b	(a0)+,d0
		bpl.s	s1loc_4992
		move.w	#$1FF,d0

s1loc_4992:
		move.w	d0,($FFFFF79C).w
		moveq	#0,d0
		move.b	(a0)+,d0
		move.w	d0,($FFFFF7A0).w
		lea	(byte_4ABC).l,a1
		lea	(a1,d0.w),a1
		move.w	#-$7E00,d0
		move.b	(a1)+,d0
		move.w	d0,(a6)
		move.b	(a1),(Vscroll_Factor).w
		move.w	#-$7C00,d0
		move.b	(a0)+,d0
		move.w	d0,(a6)
		move.l	#$40000010,(VDP_control_port).l
		move.l	(Vscroll_Factor).w,(VDP_data_port).l
		moveq	#0,d0
		move.b	(a0)+,d0
		bmi.s	s1loc_49E8
		lea	(Pal_SSCyc1).l,a1
		adda.w	d0,a1
		lea	(Normal_palette_line3+$E).w,a2
		move.l	(a1)+,(a2)+
		move.l	(a1)+,(a2)+
		move.l	(a1)+,(a2)+

locret_49E6:
		rts
; ===========================================================================

s1loc_49E8:				; XREF: PalCycle_SS
		move.w	($FFFFF79E).w,d1
		cmpi.w	#$8A,d0
		bcs.s	s1loc_49F4
		addq.w	#1,d1

s1loc_49F4:
		mulu.w	#$2A,d1
		lea	(Pal_SSCyc2).l,a1
		adda.w	d1,a1
		andi.w	#$7F,d0
		bclr	#0,d0
		beq.s	s1loc_4A18
		lea	(Normal_palette_line4+$E).w,a2
		move.l	(a1),(a2)+
		move.l	4(a1),(a2)+
		move.l	x_pos(a1),(a2)+

s1loc_4A18:
		adda.w	#$C,a1
		lea	(Normal_palette_line3+$1A).w,a2
		cmpi.w	#$A,d0
		bcs.s	s1loc_4A2E
		subi.w	#$A,d0
		lea	(Normal_palette_line4+$1A).w,a2

s1loc_4A2E:
		move.w	d0,d1
		add.w	d0,d0
		add.w	d1,d0
		adda.w	d0,a1
		move.l	(a1)+,(a2)+
		move.w	(a1)+,(a2)+
		rts
; End of function PalCycle_SS

; ===========================================================================
byte_4A3C:	dc.b 3,	0, 7, $92, 3, 0, 7, $90, 3, 0, 7, $8E, 3, 0, 7,	$8C
					; XREF: PalCycle_SS
		dc.b 3,	0, 7, $8B, 3, 0, 7, $80, 3, 0, 7, $82, 3, 0, 7,	$84
		dc.b 3,	0, 7, $86, 3, 0, 7, $88, 7, 8, 7, 0, 7,	$A, 7, $C
		dc.b $FF, $C, 7, $18, $FF, $C, 7, $18, 7, $A, 7, $C, 7,	8, 7, 0
		dc.b 3,	0, 6, $88, 3, 0, 6, $86, 3, 0, 6, $84, 3, 0, 6,	$82
		dc.b 3,	0, 6, $81, 3, 0, 6, $8A, 3, 0, 6, $8C, 3, 0, 6,	$8E
		dc.b 3,	0, 6, $90, 3, 0, 6, $92, 7, 2, 6, $24, 7, 4, 6,	$30
		dc.b $FF, 6, 6,	$3C, $FF, 6, 6,	$3C, 7,	4, 6, $30, 7, 2, 6, $24
		align 2
byte_4ABC:	dc.b $10, 1, $18, 0, $18, 1, $20, 0, $20, 1, $28, 0, $28, 1
					; XREF: PalCycle_SS
		align 2

Pal_SSCyc1:	BINCLUDE	art/palettes/s1ss/c_ss_1.bin
		align 2
Pal_SSCyc2:	BINCLUDE	art/palettes/s1ss/c_ss_2.bin
		align 2

; ---------------------------------------------------------------------------
; Subroutine to	make the special stage background animated
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SS_BGAnimate:				; XREF: SpecialStage
		move.w	($FFFFF7A0).w,d0
		bne.s	s1loc_4BF6
		move.w	#0,(Camera_BG_Y_pos).w
		move.w	(Camera_BG_Y_pos).w,(Vscroll_Factor_BG).w

s1loc_4BF6:
		cmpi.w	#8,d0
		bcc.s	s1loc_4C4E
		cmpi.w	#6,d0
		bne.s	s1loc_4C10
		addq.w	#1,(Camera_BG3_X_pos).w
		addq.w	#1,(Camera_BG_Y_pos).w
		move.w	(Camera_BG_Y_pos).w,(Vscroll_Factor_BG).w

s1loc_4C10:
		moveq	#0,d0
		move.w	(Camera_BG_X_pos).w,d0
		neg.w	d0
		swap	d0
		lea	(byte_4CCC).l,a1
		lea	(Decomp_Buffer).w,a3
		moveq	#9,d3

s1loc_4C26:
		move.w	2(a3),d0
		bsr.w	CalcSine
		moveq	#0,d2
		move.b	(a1)+,d2
		muls.w	d2,d0
		asr.l	#8,d0
		move.w	d0,(a3)+
		move.b	(a1)+,d2
		ext.w	d2
		add.w	d2,(a3)+
		dbf	d3,s1loc_4C26
		lea	(Decomp_Buffer).w,a3
		lea	(byte_4CB8).l,a2
		bra.s	s1loc_4C7E
; ===========================================================================

s1loc_4C4E:				; XREF: SS_BGAnimate
		cmpi.w	#$C,d0
		bne.s	s1loc_4C74
		subq.w	#1,(Camera_BG3_X_pos).w
		lea	($FFFFAB00).w,a3
		move.l	#$18000,d2
		moveq	#6,d1

s1loc_4C64:
		move.l	(a3),d0
		sub.l	d2,d0
		move.l	d0,(a3)+
		subi.l	#$2000,d2
		dbf	d1,s1loc_4C64

s1loc_4C74:
		lea	($FFFFAB00).w,a3
		lea	(byte_4CC4).l,a2

s1loc_4C7E:
		lea	(Horiz_Scroll_Buf).w,a1
		move.w	(Camera_BG3_X_pos).w,d0
		neg.w	d0
		swap	d0
		moveq	#0,d3
		move.b	(a2)+,d3
		move.w	(Camera_BG_Y_pos).w,d2
		neg.w	d2
		andi.w	#$FF,d2
		lsl.w	#2,d2

s1loc_4C9A:
		move.w	(a3)+,d0
		addq.w	#2,a3
		moveq	#0,d1
		move.b	(a2)+,d1
		subq.w	#1,d1

s1loc_4CA4:
		move.l	d0,(a1,d2.w)
		addq.w	#4,d2
		andi.w	#$3FC,d2
		dbf	d1,s1loc_4CA4
		dbf	d3,s1loc_4C9A
		rts	
; End of function SS_BGAnimate

; ===========================================================================
byte_4CB8:	dc.b 9,	$28, $18, $10, $28, $18, $10, $30, $18,	8, $10,	0
		align 2
byte_4CC4:	dc.b 6,	$30, $30, $30, $28, $18, $18, $18
		align 2
byte_4CCC:	dc.b 8,	2, 4, $FF, 2, 3, 8, $FF, 4, 2, 2, 3, 8,	$FD, 4,	2, 2, 3, 2, $FF
		align 2
					; XREF: SS_BGAnimate
; ===========================================================================

; ---------------------------------------------------------------------------
; Sprite mappings - walls of the special stage
; ---------------------------------------------------------------------------
Map_SSWalls:
		include	"mappings/s1ss/SSwalls.asm"
Map_SSRing:
		include	"mappings/s1ss/obj25.asm"
Map_SSBumper:
		include	"mappings/s1ss/obj47.asm"
; ---------------------------------------------------------------------------
; Compressed graphics - special stage
; ---------------------------------------------------------------------------
Nem_SSWalls:	binclude	art/nemesis/s1ss/sswalls.bin	; special stage walls
		align 2
Eni_SSBg1:	binclude	mappings/s1ss/ssbg1.bin	; special stage background (mappings)
		align 2
Nem_SSBgFish:	binclude	art/nemesis/s1ss/ssbg1.bin	; special stage birds and fish background
		align 2
Eni_SSBg2:	binclude	mappings/s1ss/ssbg2.bin	; special stage background (mappings)
		align 2
Nem_SSBgCloud:	binclude	art/nemesis/s1ss/ssbg2.bin	; special stage clouds background
		align 2
Nem_SSGOAL:	binclude	art/nemesis/s1ss/ssgoal.bin	; special stage GOAL block
		align 2
Nem_SSRBlock:	binclude	art/nemesis/s1ss/ssr.bin		; special stage R block
		align 2
Nem_SS1UpBlock:	binclude	art/nemesis/s1ss/ss1up.bin	; special stage 1UP block
		align 2
Nem_SSEmStars:	binclude	art/nemesis/s1ss/ssemstar.bin	; special stage stars from a collected emerald
		align 2
Nem_SSRedWhite:	binclude	art/nemesis/s1ss/ssredwhi.bin	; special stage red/white block
		align 2
Nem_SSZone1:	binclude	art/nemesis/s1ss/sszone1.bin	; special stage ZONE1 block
		align 2
Nem_SSZone2:	binclude	art/nemesis/s1ss/sszone2.bin	; ZONE2 block
		align 2
Nem_SSZone3:	binclude	art/nemesis/s1ss/sszone3.bin	; ZONE3 block
		align 2
Nem_SSZone4:	binclude	art/nemesis/s1ss/sszone4.bin	; ZONE4 block
		align 2
Nem_SSZone5:	binclude	art/nemesis/s1ss/sszone5.bin	; ZONE5 block
		align 2
Nem_SSZone6:	binclude	art/nemesis/s1ss/sszone6.bin	; ZONE6 block
		align 2
Nem_SSUpDown:	binclude	art/nemesis/s1ss/ssupdown.bin	; special stage UP/DOWN block
		align 2
Nem_SSEmerald:	binclude	art/nemesis/s1ss/ssemeral.bin	; special stage chaos emeralds
		align 2
Nem_SSGhost:	binclude	art/nemesis/s1ss/ssghost.bin	; special stage ghost block
		align 2
Nem_SSWBlock:	binclude	art/nemesis/s1ss/ssw.bin		; special stage W block
		align 2
Nem_SSGlass:	binclude	art/nemesis/s1ss/ssglass.bin	; special stage destroyable glass block
		align 2
Nem_ResultEm:	binclude	art/nemesis/s1ss/ssresems.bin	; chaos emeralds on special stage results screen
		align 2
Nem_SSRing:		binclude	art/nemesis/s1ss/s1ring.bin		; rings
		align 2
SS_1:		binclude	sslayout/1.bin
		align 2
SS_2:		binclude	sslayout/2.bin
		align 2
SS_3:		binclude	sslayout/3.bin
		align 2
SS_4:		binclude	sslayout/4.bin
		align 2
SS_5:		binclude	sslayout/5.bin
		align 2
SS_6:		binclude	sslayout/6.bin
		align 2