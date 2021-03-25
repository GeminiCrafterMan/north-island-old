		
	clearRAM SSAngle,SS_RAM_End
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
        ResetDMAQueue
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
		move.b	#ObjID_SonicSS,(MainCharacter+id).w ; load	special	stage Sonic object
		bsr.w	PalCycle_SS
		clr.w	(SSAngle).w	; set stage angle to "upright"
		move.w	#$40,(SSRotate).w ; set stage rotation	speed
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
		move.b	#VintID_S1SS,(Vint_routine).w
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
		move.b	#VintID_Menu,(Vint_routine).w
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
		move.b	#VintID_TitleCard,(Vint_routine).w
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
		subq.w	#1,(Demo_button_index+$C).w
		bpl.s	locret_49E6
		lea	(VDP_control_port).l,a6
		move.w	(Demo_button_index+$A).w,d0
		addq.w	#1,(Demo_button_index+$A).w
		andi.w	#$1F,d0
		lsl.w	#2,d0
		lea	(byte_4A3C).l,a0
		adda.w	d0,a0
		move.b	(a0)+,d0
		bpl.s	s1loc_4992
		move.w	#$1FF,d0

s1loc_4992:
		move.w	d0,(Demo_button_index+$C).w
		moveq	#0,d0
		move.b	(a0)+,d0
		move.w	d0,(Boss_defeated_flag-$7).w
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
		move.w	(Demo_button_index+$E).w,d1
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
		move.w	(Boss_defeated_flag-$7).w,d0
		bne.s	s1loc_4BF6
		move.w	#0,(Camera_BG_Y_pos).w
		move.w	(Camera_BG_Y_pos).w,(Vscroll_Factor+2).w

s1loc_4BF6:
		cmpi.w	#8,d0
		bcc.s	s1loc_4C4E
		cmpi.w	#6,d0
		bne.s	s1loc_4C10
		addq.w	#1,(Camera_BG3_X_pos).w
		addq.w	#1,(Camera_BG_Y_pos).w
		move.w	(Camera_BG_Y_pos).w,(Vscroll_Factor+2).w

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
		lea	(Decomp_Buffer+$100).w,a3
		move.l	#$18000,d2
		moveq	#6,d1

s1loc_4C64:
		move.l	(a3),d0
		sub.l	d2,d0
		move.l	d0,(a3)+
		subi.l	#$2000,d2
		dbf	d1,s1loc_4C64

s1loc_4C74:
		lea	(Decomp_Buffer+$100).w,a3
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
; Subroutine to	show the special stage layout
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SS_ShowLayout:				; XREF: SpecialStage
		bsr.w	SS_AniWallsRings
		bsr.w	SS_AniItems
		move.w	d5,-(sp)
		lea	(Chunk_Table_End).l,a1
		move.b	(SSAngle).w,d0
		andi.b	#$FC,d0
		jsr	(CalcSine).l
		move.w	d0,d4
		move.w	d1,d5
		muls.w	#$18,d4
		muls.w	#$18,d5
		moveq	#0,d2
		move.w	(Camera_X_pos).w,d2
		divu.w	#$18,d2
		swap	d2
		neg.w	d2
		addi.w	#-$B4,d2
		moveq	#0,d3
		move.w	(Camera_Y_pos).w,d3
		divu.w	#$18,d3
		swap	d3
		neg.w	d3
		addi.w	#-$B4,d3
		move.w	#$F,d7

s1loc_1B19E:
		movem.w	d0-d2,-(sp)
		movem.w	d0-d1,-(sp)
		neg.w	d0
		muls.w	d2,d1
		muls.w	d3,d0
		move.l	d0,d6
		add.l	d1,d6
		movem.w	(sp)+,d0-d1
		muls.w	d2,d0
		muls.w	d3,d1
		add.l	d0,d1
		move.l	d6,d2
		move.w	#$F,d6

s1loc_1B1C0:
		move.l	d2,d0
		asr.l	#8,d0
		move.w	d0,(a1)+
		move.l	d1,d0
		asr.l	#8,d0
		move.w	d0,(a1)+
		add.l	d5,d2
		add.l	d4,d1
		dbf	d6,s1loc_1B1C0

		movem.w	(sp)+,d0-d2
		addi.w	#$18,d3
		dbf	d7,s1loc_1B19E

		move.w	(sp)+,d5
		lea	(Chunk_Table).l,a0
		moveq	#0,d0
		move.w	(Camera_Y_pos).w,d0
		divu.w	#$18,d0
		mulu.w	#$80,d0
		adda.l	d0,a0
		moveq	#0,d0
		move.w	(Camera_X_pos).w,d0
		divu.w	#$18,d0
		adda.w	d0,a0
		lea	(Chunk_Table_End).l,a4
		move.w	#$F,d7

s1loc_1B20C:
		move.w	#$F,d6

s1loc_1B210:
		moveq	#0,d0
		move.b	(a0)+,d0
		beq.s	s1loc_1B268
		cmpi.b	#$4E,d0
		bhi.s	s1loc_1B268
		move.w	(a4),d3
		addi.w	#$120,d3
		cmpi.w	#$70,d3
		bcs.s	s1loc_1B268
		cmpi.w	#$1D0,d3
		bcc.s	s1loc_1B268
		move.w	2(a4),d2
		addi.w	#$F0,d2
		cmpi.w	#$70,d2
		bcs.s	s1loc_1B268
		cmpi.w	#$170,d2
		bcc.s	s1loc_1B268
		lea	(Chunk_Table+$4000).l,a5
		lsl.w	#3,d0
		lea	(a5,d0.w),a5
		movea.l	(a5)+,a1
		move.w	(a5)+,d1
		add.w	d1,d1
		adda.w	(a1,d1.w),a1
		movea.w	(a5)+,a3
		moveq	#0,d1
		move.b	(a1)+,d1
		subq.b	#1,d1
		bmi.s	s1loc_1B268
		jsr	(sub_D762).l

s1loc_1B268:
		addq.w	#4,a4
		dbf	d6,s1loc_1B210

		lea	$70(a0),a0
		dbf	d7,s1loc_1B20C

		move.b	d5,(Sprite_count).w
		cmpi.b	#$50,d5
		beq.s	s1loc_1B288
		move.l	#0,(a2)
		rts	
; ===========================================================================

s1loc_1B288:
		move.b	#0,-5(a2)
		rts	
; End of function SS_ShowLayout

; ---------------------------------------------------------------------------
; Subroutine to	animate	walls and rings	in the special stage
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SS_AniWallsRings:			; XREF: SS_ShowLayout
		lea	($FF400C).l,a1
		moveq	#0,d0
		move.b	(SSAngle).w,d0
		lsr.b	#2,d0
		andi.w	#$F,d0
		moveq	#$23,d1

s1loc_1B2A4:
		move.w	d0,(a1)
		addq.w	#8,a1
		dbf	d1,s1loc_1B2A4

		lea	($FF4005).l,a1
		subq.b	#1,(Rings_anim_counter).w
		bpl.s	s1loc_1B2C8
		move.b	#7,(Rings_anim_counter).w
		addq.b	#1,(Rings_anim_frame).w
		andi.b	#3,(Rings_anim_frame).w

s1loc_1B2C8:
		move.b	(Rings_anim_frame).w,$1D0(a1)
		subq.b	#1,(Unknown_anim_counter).w
		bpl.s	s1loc_1B2E4
		move.b	#7,(Unknown_anim_counter).w
		addq.b	#1,(Unknown_anim_frame).w
		andi.b	#1,(Unknown_anim_frame).w

s1loc_1B2E4:
		move.b	(Unknown_anim_frame).w,d0
		move.b	d0,$138(a1)
		move.b	d0,$160(a1)
		move.b	d0,$148(a1)
		move.b	d0,$150(a1)
		move.b	d0,$1D8(a1)
		move.b	d0,$1E0(a1)
		move.b	d0,$1E8(a1)
		move.b	d0,$1F0(a1)
		move.b	d0,$1F8(a1)
		move.b	d0,$200(a1)
		subq.b	#1,(Ring_spill_anim_counter).w
		bpl.s	s1loc_1B326
		move.b	#4,(Ring_spill_anim_counter).w
		addq.b	#1,(Ring_spill_anim_frame).w
		andi.b	#3,(Ring_spill_anim_frame).w

s1loc_1B326:
		move.b	(Ring_spill_anim_frame).w,d0
		move.b	d0,$168(a1)
		move.b	d0,$170(a1)
		move.b	d0,$178(a1)
		move.b	d0,$180(a1)
		subq.b	#1,(Logspike_anim_counter).w
		bpl.s	s1loc_1B350
		move.b	#7,(Logspike_anim_counter).w
		subq.b	#1,(Logspike_anim_frame).w
		andi.b	#7,(Logspike_anim_frame).w

s1loc_1B350:
		lea	($FF4016).l,a1
		lea	(SS_WaRiVramSet).l,a0
		moveq	#0,d0
		move.b	(Logspike_anim_frame).w,d0
		add.w	d0,d0
		lea	(a0,d0.w),a0
		move.w	(a0),(a1)
		move.w	2(a0),x_pos(a1)
		move.w	4(a0),x_vel(a1)
		move.w	6(a0),priority(a1)
		move.w	x_pos(a0),collision_flags(a1)
		move.w	x_sub(a0),subtype(a1)
		move.w	y_pos(a0),$30(a1)
		move.w	y_sub(a0),$38(a1)
		adda.w	#$20,a0
		adda.w	#$48,a1
		move.w	(a0),(a1)
		move.w	2(a0),x_pos(a1)
		move.w	4(a0),x_vel(a1)
		move.w	6(a0),priority(a1)
		move.w	x_pos(a0),collision_flags(a1)
		move.w	x_sub(a0),subtype(a1)
		move.w	y_pos(a0),$30(a1)
		move.w	y_sub(a0),$38(a1)
		adda.w	#$20,a0
		adda.w	#$48,a1
		move.w	(a0),(a1)
		move.w	2(a0),x_pos(a1)
		move.w	4(a0),x_vel(a1)
		move.w	6(a0),priority(a1)
		move.w	x_pos(a0),collision_flags(a1)
		move.w	x_sub(a0),subtype(a1)
		move.w	y_pos(a0),$30(a1)
		move.w	y_sub(a0),$38(a1)
		adda.w	#$20,a0
		adda.w	#$48,a1
		move.w	(a0),(a1)
		move.w	2(a0),x_pos(a1)
		move.w	4(a0),x_vel(a1)
		move.w	6(a0),priority(a1)
		move.w	x_pos(a0),collision_flags(a1)
		move.w	x_sub(a0),subtype(a1)
		move.w	y_pos(a0),$30(a1)
		move.w	y_sub(a0),$38(a1)
		adda.w	#$20,a0
		adda.w	#$48,a1
		rts	
; End of function SS_AniWallsRings

; ===========================================================================
SS_WaRiVramSet:	dc.w $142, $6142, $142,	$142, $142, $142, $142,	$6142
		dc.w $142, $6142, $142,	$142, $142, $142, $142,	$6142
		dc.w $2142, $142, $2142, $2142,	$2142, $2142, $2142, $142
		dc.w $2142, $142, $2142, $2142,	$2142, $2142, $2142, $142
		dc.w $4142, $2142, $4142, $4142, $4142,	$4142, $4142, $2142
		dc.w $4142, $2142, $4142, $4142, $4142,	$4142, $4142, $2142
		dc.w $6142, $4142, $6142, $6142, $6142,	$6142, $6142, $4142
		dc.w $6142, $4142, $6142, $6142, $6142,	$6142, $6142, $4142
; ---------------------------------------------------------------------------
; Subroutine to	remove items when you collect them in the special stage
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SS_RemoveCollectedItem:			; XREF: Obj09_ChkItems
		lea	(Chunk_Table+$4400).l,a2
		move.w	#$1F,d0

s1loc_1B4C4:
		tst.b	(a2)
		beq.s	locret_1B4CE
		addq.w	#8,a2
		dbf	d0,s1loc_1B4C4

locret_1B4CE:
		rts	
; End of function SS_RemoveCollectedItem

; ---------------------------------------------------------------------------
; Subroutine to	animate	special	stage items when you touch them
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SS_AniItems:				; XREF: SS_ShowLayout
		lea	(Chunk_Table+$4400).l,a0
		move.w	#$1F,d7

s1loc_1B4DA:
		moveq	#0,d0
		move.b	(a0),d0
		beq.s	s1loc_1B4E8
		lsl.w	#2,d0
		movea.l	SS_AniIndex-4(pc,d0.w),a1
		jsr	(a1)

s1loc_1B4E8:
		addq.w	#8,a0

s1loc_1B4EA:
		dbf	d7,s1loc_1B4DA

		rts	
; End of function SS_AniItems

; ===========================================================================
SS_AniIndex:	dc.l SS_AniRingSparks
		dc.l SS_AniBumper
		dc.l SS_Ani1Up
		dc.l SS_AniReverse
		dc.l SS_AniEmeraldSparks
		dc.l SS_AniGlassBlock
; ===========================================================================

SS_AniRingSparks:			; XREF: SS_AniIndex
		subq.b	#1,2(a0)
		bpl.s	locret_1B530
		move.b	#5,2(a0)
		moveq	#0,d0
		move.b	3(a0),d0
		addq.b	#1,3(a0)
		movea.l	4(a0),a1
		move.b	SS_AniRingData(pc,d0.w),d0
		move.b	d0,(a1)
		bne.s	locret_1B530
		clr.l	(a0)
		clr.l	4(a0)

locret_1B530:
		rts	
; ===========================================================================
SS_AniRingData:	dc.b $42, $43, $44, $45, 0, 0
; ===========================================================================

SS_AniBumper:				; XREF: SS_AniIndex
		subq.b	#1,2(a0)
		bpl.s	locret_1B566
		move.b	#7,2(a0)
		moveq	#0,d0
		move.b	3(a0),d0
		addq.b	#1,3(a0)
		movea.l	4(a0),a1
		move.b	SS_AniBumpData(pc,d0.w),d0
		bne.s	s1loc_1B564
		clr.l	(a0)
		clr.l	4(a0)
		move.b	#$25,(a1)
		rts	
; ===========================================================================

s1loc_1B564:
		move.b	d0,(a1)

locret_1B566:
		rts	
; ===========================================================================
SS_AniBumpData:	dc.b $32, $33, $32, $33, 0, 0
; ===========================================================================

SS_Ani1Up:				; XREF: SS_AniIndex
		subq.b	#1,2(a0)
		bpl.s	locret_1B596
		move.b	#5,2(a0)
		moveq	#0,d0
		move.b	3(a0),d0
		addq.b	#1,3(a0)
		movea.l	4(a0),a1
		move.b	SS_Ani1UpData(pc,d0.w),d0
		move.b	d0,(a1)
		bne.s	locret_1B596
		clr.l	(a0)
		clr.l	4(a0)

locret_1B596:
		rts	
; ===========================================================================
SS_Ani1UpData:	dc.b $46, $47, $48, $49, 0, 0
; ===========================================================================

SS_AniReverse:				; XREF: SS_AniIndex
		subq.b	#1,2(a0)
		bpl.s	locret_1B5CC
		move.b	#7,2(a0)
		moveq	#0,d0
		move.b	3(a0),d0
		addq.b	#1,3(a0)
		movea.l	4(a0),a1
		move.b	SS_AniRevData(pc,d0.w),d0
		bne.s	s1loc_1B5CA
		clr.l	(a0)
		clr.l	4(a0)
		move.b	#$2B,(a1)
		rts	
; ===========================================================================

s1loc_1B5CA:
		move.b	d0,(a1)

locret_1B5CC:
		rts	
; ===========================================================================
SS_AniRevData:	dc.b $2B, $31, $2B, $31, 0, 0
; ===========================================================================

SS_AniEmeraldSparks:			; XREF: SS_AniIndex
		subq.b	#1,2(a0)
		bpl.s	locret_1B60C
		move.b	#5,2(a0)
		moveq	#0,d0
		move.b	3(a0),d0
		addq.b	#1,3(a0)
		movea.l	4(a0),a1
		move.b	SS_AniEmerData(pc,d0.w),d0
		move.b	d0,(a1)
		bne.s	locret_1B60C
		clr.l	(a0)
		clr.l	4(a0)
		move.b	#4,(Object_RAM+routine).w
		move.w	#SndID_SSExit,d0
		jsr	(PlaySound).l ;	play special stage GOAL	sound

locret_1B60C:
		rts	
; ===========================================================================
SS_AniEmerData:	dc.b $46, $47, $48, $49, 0, 0
; ===========================================================================

SS_AniGlassBlock:			; XREF: SS_AniIndex
		subq.b	#1,2(a0)
		bpl.s	locret_1B640
		move.b	#1,2(a0)
		moveq	#0,d0
		move.b	3(a0),d0
		addq.b	#1,3(a0)
		movea.l	4(a0),a1
		move.b	SS_AniGlassData(pc,d0.w),d0
		move.b	d0,(a1)
		bne.s	locret_1B640
		move.b	4(a0),(a1)
		clr.l	(a0)
		clr.l	4(a0)

locret_1B640:
		rts	
; ===========================================================================
SS_AniGlassData:dc.b $4B, $4C, $4D, $4E, $4B, $4C, $4D,	$4E, 0,	0
; ---------------------------------------------------------------------------
; Special stage	layout pointers
; ---------------------------------------------------------------------------
SS_LayoutIndex:
		dc.l SS_1
		dc.l SS_2
		dc.l SS_3
		dc.l SS_4
		dc.l SS_5
		dc.l SS_6
		align 2

; ---------------------------------------------------------------------------
; Special stage	start locations
; ---------------------------------------------------------------------------
SS_StartLoc:	BINCLUDE	misc\sloc_ss.bin
		even

; ---------------------------------------------------------------------------
; Subroutine to	load special stage layout
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SS_Load:				; XREF: SpecialStage
		moveq	#0,d0
		move.b	(Current_Special_Stage).w,d0 ; load	number of last special stage entered
		addq.b	#1,(Current_Special_Stage).w
		cmpi.b	#6,(Current_Special_Stage).w
		bcs.s	SS_ChkEmldNum
		move.b	#0,(Current_Special_Stage).w ; reset if higher than	6

SS_ChkEmldNum:
		cmpi.b	#6,(Emerald_count).w ; do you have all emeralds?
		beq.s	SS_LoadData	; if yes, branch
		moveq	#0,d1
		move.b	(Emerald_count).w,d1
		subq.b	#1,d1
		bcs.s	SS_LoadData
		lea	(Emerald_count+1).w,a3 ; check which emeralds	you have

SS_ChkEmldLoop:	
		cmp.b	(a3,d1.w),d0
		bne.s	SS_ChkEmldRepeat
		bra.s	SS_Load
; ===========================================================================

SS_ChkEmldRepeat:
		dbf	d1,SS_ChkEmldLoop

SS_LoadData:
		lsl.w	#2,d0
		lea	SS_StartLoc(pc,d0.w),a1
		move.w	(a1)+,(Object_RAM+x_pos).w
		move.w	(a1)+,(Object_RAM+y_pos).w
		movea.l	SS_LayoutIndex(pc,d0.w),a0
		lea	(Chunk_Table+$4000).l,a1
		move.w	#0,d0
		jsr	(EniDec).l
		lea	(Chunk_Table).l,a1
		move.w	#$FFF,d0

SS_ClrRAM3:
		clr.l	(a1)+
		dbf	d0,SS_ClrRAM3

		lea	(Chunk_Table+$1020).l,a1
		lea	(Chunk_Table+$4000).l,a0
		moveq	#$3F,d1

s1loc_1B6F6:
		moveq	#$3F,d2

s1loc_1B6F8:
		move.b	(a0)+,(a1)+
		dbf	d2,s1loc_1B6F8

		lea	$40(a1),a1
		dbf	d1,s1loc_1B6F6

		lea	(Chunk_Table+$4008).l,a1
		lea	(SS_MapIndex).l,a0
		moveq	#$4D,d1

s1loc_1B714:
		move.l	(a0)+,(a1)+
		move.w	#0,(a1)+
		move.b	-4(a0),-1(a1)
		move.w	(a0)+,(a1)+
		dbf	d1,s1loc_1B714

		lea	(Chunk_Table+$4400).l,a1
		move.w	#$3F,d1

s1loc_1B730:

		clr.l	(a1)+
		dbf	d1,s1loc_1B730

		rts
; End of function SS_Load

; ===========================================================================
; ---------------------------------------------------------------------------
; Special stage	mappings and VRAM pointers
; ---------------------------------------------------------------------------
SS_MapIndex:
		dc.l Map_SSWalls	; address of mappings
		dc.w $142		; VRAM setting
		dc.l Map_SSWalls
		dc.w $142
		dc.l Map_SSWalls
		dc.w $142
		dc.l Map_SSWalls
		dc.w $142
		dc.l Map_SSWalls
		dc.w $142
		dc.l Map_SSWalls
		dc.w $142
		dc.l Map_SSWalls
		dc.w $142
		dc.l Map_SSWalls
		dc.w $142
		dc.l Map_SSWalls
		dc.w $142
		dc.l Map_SSWalls
		dc.w $2142
		dc.l Map_SSWalls
		dc.w $2142
		dc.l Map_SSWalls
		dc.w $2142
		dc.l Map_SSWalls
		dc.w $2142
		dc.l Map_SSWalls
		dc.w $2142
		dc.l Map_SSWalls
		dc.w $2142
		dc.l Map_SSWalls
		dc.w $2142
		dc.l Map_SSWalls
		dc.w $2142
		dc.l Map_SSWalls
		dc.w $2142
		dc.l Map_SSWalls
		dc.w $4142
		dc.l Map_SSWalls
		dc.w $4142
		dc.l Map_SSWalls
		dc.w $4142
		dc.l Map_SSWalls
		dc.w $4142
		dc.l Map_SSWalls
		dc.w $4142
		dc.l Map_SSWalls
		dc.w $4142
		dc.l Map_SSWalls
		dc.w $4142
		dc.l Map_SSWalls
		dc.w $4142
		dc.l Map_SSWalls
		dc.w $4142
		dc.l Map_SSWalls
		dc.w $6142
		dc.l Map_SSWalls
		dc.w $6142
		dc.l Map_SSWalls
		dc.w $6142
		dc.l Map_SSWalls
		dc.w $6142
		dc.l Map_SSWalls
		dc.w $6142
		dc.l Map_SSWalls
		dc.w $6142
		dc.l Map_SSWalls
		dc.w $6142
		dc.l Map_SSWalls
		dc.w $6142
		dc.l Map_SSWalls
		dc.w $6142
		dc.l Map_SSBumper
		dc.w $23B
		dc.l Map_SS_R
		dc.w $570
		dc.l Map_SS_R
		dc.w $251
		dc.l Map_SS_R
		dc.w $370
		dc.l Map_SS_Up
		dc.w $263
		dc.l Map_SS_Down
		dc.w $263
		dc.l Map_SS_R
		dc.w $22F0
		dc.l Map_SS_Glass
		dc.w $470
		dc.l Map_SS_Glass
		dc.w $5F0
		dc.l Map_SS_Glass
		dc.w $65F0
		dc.l Map_SS_Glass
		dc.w $25F0
		dc.l Map_SS_Glass
		dc.w $45F0
		dc.l Map_SS_R
		dc.w $2F0
		dc.l Map_SSBumper+$1000000	; add frame no.	* $1000000
		dc.w $23B
		dc.l Map_SSBumper+$2000000
		dc.w $23B
		dc.l Map_SS_R
		dc.w $797
		dc.l Map_SS_R
		dc.w $7A0
		dc.l Map_SS_R
		dc.w $7A9
		dc.l Map_SS_R
		dc.w $797
		dc.l Map_SS_R
		dc.w $7A0
		dc.l Map_SS_R
		dc.w $7A9
		dc.l Map_SSRing
		dc.w $6BC
		dc.l Map_SS_Chaos3
		dc.w $770
		dc.l Map_SS_Chaos3
		dc.w $2770
		dc.l Map_SS_Chaos3
		dc.w $4770
		dc.l Map_SS_Chaos3
		dc.w $6770
		dc.l Map_SS_Chaos1
		dc.w $770
		dc.l Map_SS_Chaos2
		dc.w $770
		dc.l Map_SS_R
		dc.w $4F0
		dc.l Map_SSRing+$4000000
		dc.w $6BC
		dc.l Map_SSRing+$5000000
		dc.w $6BC
		dc.l Map_SSRing+$6000000
		dc.w $6BC
		dc.l Map_SSRing+$7000000
		dc.w $6BC
		dc.l Map_SS_Glass
		dc.w $23F0
		dc.l Map_SS_Glass+$1000000
		dc.w $23F0
		dc.l Map_SS_Glass+$2000000
		dc.w $23F0
		dc.l Map_SS_Glass+$3000000
		dc.w $23F0
		dc.l Map_SS_R+$2000000
		dc.w $4F0
		dc.l Map_SS_Glass
		dc.w $5F0
		dc.l Map_SS_Glass
		dc.w $65F0
		dc.l Map_SS_Glass
		dc.w $25F0
		dc.l Map_SS_Glass
		dc.w $45F0

; ---------------------------------------------------------------------------
; Sprite mappings - special stage "R" block
; ---------------------------------------------------------------------------
Map_SS_R:
		include	"mappings/s1ss/SSRblock.asm"

; ---------------------------------------------------------------------------
; Sprite mappings - special stage breakable glass blocks and red-white blocks
; ---------------------------------------------------------------------------
Map_SS_Glass:
		include	"mappings/s1ss/SSglassblock.asm"

; ---------------------------------------------------------------------------
; Sprite mappings - special stage "UP" block
; ---------------------------------------------------------------------------
Map_SS_Up:
		include	"mappings/s1ss/SSUPblock.asm"

; ---------------------------------------------------------------------------
; Sprite mappings - special stage "DOWN" block
; ---------------------------------------------------------------------------
Map_SS_Down:
		include	"mappings/s1ss/SSDOWNblock.asm"

; ---------------------------------------------------------------------------
; Sprite mappings - special stage chaos	emeralds
; ---------------------------------------------------------------------------
Map_SS_Chaos1:	dc.w byte_1B96C-Map_SS_Chaos1
		dc.w byte_1B97E-Map_SS_Chaos1
Map_SS_Chaos2:	dc.w byte_1B972-Map_SS_Chaos2
		dc.w byte_1B97E-Map_SS_Chaos2
Map_SS_Chaos3:	dc.w byte_1B978-Map_SS_Chaos3
		dc.w byte_1B97E-Map_SS_Chaos3
byte_1B96C:	dc.b 1
		dc.b $F8, 5, 0,	0, $F8
byte_1B972:	dc.b 1
		dc.b $F8, 5, 0,	4, $F8
byte_1B978:	dc.b 1
		dc.b $F8, 5, 0,	8, $F8
byte_1B97E:	dc.b 1
		dc.b $F8, 5, 0,	$C, $F8
		align 2
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
