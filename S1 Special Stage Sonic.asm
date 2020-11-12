; ---------------------------------------------------------------------------
; Subroutine to	show the special stage layout
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SS_ShowLayout:				; XREF: SpecialStage
		bsr.w	SS_AniWallsRings
		bsr.w	SS_AniItems
		move.w	d5,-(sp)
		lea	($FFFF8000).w,a1
		move.b	(S1SS_F780Rep).w,d0
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
		lea	($FFFF8000).w,a4
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

		move.b	d5,($FFFFF62C).w
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
		lea	(Chunk_Table+$400C).l,a1
		moveq	#0,d0
		move.b	(S1SS_F780Rep).w,d0
		lsr.b	#2,d0
		andi.w	#$F,d0
		moveq	#$23,d1

s1loc_1B2A4:
		move.w	d0,(a1)
		addq.w	#8,a1
		dbf	d1,s1loc_1B2A4

		lea	(Chunk_Table+$4005).l,a1
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
		lea	(Chunk_Table+$4016).l,a1
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

Obj09:					; XREF: Obj_Index
		tst.w	(Debug_placement_mode).w	; is debug mode	being used?
		beq.s	Obj09_Normal	; if not, branch
		bsr.w	SS_FixCamera
		jmp	DebugMode
; ===========================================================================

Obj09_Normal:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj09_Index(pc,d0.w),d1
		jmp	Obj09_Index(pc,d1.w)
; ===========================================================================
Obj09_Index:	offsetTable
	offsetTableEntry.w Obj09_Main
	offsetTableEntry.w Obj09_ChkDebug
	offsetTableEntry.w Obj09_ExitStage
	offsetTableEntry.w Obj09_Exit2
; ===========================================================================

Obj09_Main:				; XREF: Obj09_Index
		addq.b	#2,routine(a0)
		move.b	#$E,y_radius(a0)
		move.b	#7,x_radius(a0)
		cmpi.w	#3,(Player_option).w
		blt.s	+
		move.l	#MapUnc_Knuckles,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtUnc_Sonic,0,0),art_tile(a0)
		bra.s	+++
+
		cmpi.w	#2,(Player_option).w
		bne.s	+
		move.l	#MapUnc_Tails,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtUnc_Tails,0,0),art_tile(a0)
	move.b	#ObjID_TailsTails,(Tails_Tails+id).w ; load Obj05 (Tails' Tails) at $FFFFD000
	move.w	a0,(Tails_Tails+parent).w ; set its parent object to this
		bra.s	++
+
		move.l	#MapUnc_Sonic,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtUnc_Sonic,0,0),art_tile(a0)
+
		jsr	Adjust2PArtPointer
		move.b	#4,render_flags(a0)
		move.b	#0,priority(a0)
		move.b	#AniIDSonAni_Roll,anim(a0)
		bset	#2,status(a0)
		bset	#1,status(a0)

Obj09_ChkDebug:				; XREF: Obj09_Index
		tst.w	(Debug_mode_flag).w	; is debug mode	cheat enabled?
		beq.s	Obj09_NoDebug	; if not, branch
		btst	#4,(Ctrl_1_Press).w ; is button B pressed?
		beq.s	Obj09_NoDebug	; if not, branch
		move.w	#1,(Debug_placement_mode).w ; change Sonic	into a ring

Obj09_NoDebug:
		move.b	#0,invulnerable_time(a0)
		moveq	#0,d0
		move.b	status(a0),d0
		andi.w	#2,d0
		move.w	Obj09_Modes(pc,d0.w),d1
		jsr	Obj09_Modes(pc,d1.w)
	cmpi.w	#3,(Player_option).w
	blt.s	+
		jsr	(Knuckles_Animate).l
		jsr	(LoadKnucklesDynPLC).l
		bra.s	+++
+
	cmpi.w	#2,(Player_option).w
	bne.s	+
		jsr	(Tails_Animate).l
		jsr	(LoadTailsDynPLC).l
		bra.s	++
+
		jsr	(Sonic_Animate).l
		jsr	(LoadSonicDynPLC).l
+
		jmp	(DisplaySprite).l
; ===========================================================================
Obj09_Modes:	offsetTable
	offsetTableEntry.w Obj09_OnWall
	offsetTableEntry.w Obj09_InAir
; ===========================================================================

Obj09_OnWall:				; XREF: Obj09_Modes
		bsr.w	Obj09_Jump
		bsr.w	Obj09_Move
		bsr.w	Obj09_Fall
		bra.s	Obj09_Display
; ===========================================================================

Obj09_InAir:				; XREF: Obj09_Modes
		bsr.w	Obj09_JumpHeight
		bsr.w	Obj09_Move
		bsr.w	Obj09_Fall

Obj09_Display:				; XREF: Obj09_OnWall
		bsr.w	Obj09_ChkItems
		bsr.w	Obj09_ChkItems2
		jsr	(ObjectMove).l
		bsr.w	SS_FixCamera
		move.w	(S1SS_F780Rep).w,d0
		add.w	(S1SS_F780Rep+2).w,d0
		move.w	d0,(S1SS_F780Rep).w
	cmpi.w	#3,(Player_option).w
	blt.s	+
		jmp	(Knuckles_Animate).l
+
	cmpi.w	#2,(Player_option).w
	bne.s	+
		jmp	(Tails_Animate).l
+
		jmp	(Sonic_Animate).l

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj09_Move:				; XREF: Obj09_OnWall; Obj09_InAir
		btst	#2,(Ctrl_1_Held_Logical).w ; is left being pressed?
		beq.s	Obj09_ChkRight	; if not, branch
		bsr.w	Obj09_MoveLeft

Obj09_ChkRight:
		btst	#3,(Ctrl_1_Held_Logical).w ; is right being pressed?
		beq.s	s1loc_1BA78	; if not, branch
		bsr.w	Obj09_MoveRight

s1loc_1BA78:
		move.b	(Ctrl_1_Held_Logical).w,d0
		andi.b	#$C,d0
		bne.s	s1loc_1BAA8
		move.w	inertia(a0),d0
		beq.s	s1loc_1BAA8
		bmi.s	s1loc_1BA9A
		subi.w	#$C,d0
		bcc.s	s1loc_1BA94
		move.w	#0,d0

s1loc_1BA94:
		move.w	d0,inertia(a0)
		bra.s	s1loc_1BAA8
; ===========================================================================

s1loc_1BA9A:
		addi.w	#$C,d0
		bcc.s	s1loc_1BAA4
		move.w	#0,d0

s1loc_1BAA4:
		move.w	d0,inertia(a0)

s1loc_1BAA8:
		move.b	(S1SS_F780Rep).w,d0
		addi.b	#$20,d0
		andi.b	#$C0,d0
		neg.b	d0
		jsr	(CalcSine).l
		muls.w	inertia(a0),d1
		add.l	d1,x_pos(a0)
		muls.w	inertia(a0),d0
		add.l	d0,y_pos(a0)
		movem.l	d0-d1,-(sp)
		move.l	y_pos(a0),d2
		move.l	x_pos(a0),d3
		bsr.w	sub_1BCE8
		beq.s	s1loc_1BAF2
		movem.l	(sp)+,d0-d1
		sub.l	d1,x_pos(a0)
		sub.l	d0,y_pos(a0)
		move.w	#0,inertia(a0)
		rts	
; ===========================================================================

s1loc_1BAF2:
		movem.l	(sp)+,d0-d1
		rts	
; End of function Obj09_Move


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj09_MoveLeft:				; XREF: Obj09_Move
		bset	#0,status(a0)
		move.w	inertia(a0),d0
		beq.s	s1loc_1BB06
		bpl.s	s1loc_1BB1A

s1loc_1BB06:
		subi.w	#$C,d0
		cmpi.w	#-$800,d0
		bgt.s	s1loc_1BB14
		move.w	#-$800,d0

s1loc_1BB14:
		move.w	d0,inertia(a0)
		rts	
; ===========================================================================

s1loc_1BB1A:
		subi.w	#$40,d0
		bcc.s	s1loc_1BB22
		nop	

s1loc_1BB22:
		move.w	d0,inertia(a0)
		rts	
; End of function Obj09_MoveLeft


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj09_MoveRight:			; XREF: Obj09_Move
		bclr	#0,status(a0)
		move.w	inertia(a0),d0
		bmi.s	s1loc_1BB48
		addi.w	#$C,d0
		cmpi.w	#$800,d0
		blt.s	s1loc_1BB42
		move.w	#$800,d0

s1loc_1BB42:
		move.w	d0,inertia(a0)
		bra.s	locret_1BB54
; ===========================================================================

s1loc_1BB48:
		addi.w	#$40,d0
		bcc.s	s1loc_1BB50
		nop	

s1loc_1BB50:
		move.w	d0,inertia(a0)

locret_1BB54:
		rts	
; End of function Obj09_MoveRight


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj09_Jump:				; XREF: Obj09_OnWall
		move.b	(Ctrl_1_Press_Logical).w,d0
		andi.b	#$70,d0		; is A,	B or C pressed?
		beq.s	Obj09_NoJump	; if not, branch
		move.b	(S1SS_F780Rep).w,d0
		andi.b	#$FC,d0
		neg.b	d0
		subi.b	#$40,d0
		jsr	(CalcSine).l
		muls.w	#$680,d1
		asr.l	#8,d1
		move.w	d1,x_vel(a0)
		muls.w	#$680,d0
		asr.l	#8,d0
		move.w	d0,y_vel(a0)
		bset	#1,status(a0)
	tst.b	(CD_Sounds_flag).w
	beq.s	+
	move.w	#SndID_CDJump,d0
	bra.s	++
+
	move.w	#SndID_Jump,d0
+
		jsr	(PlaySound).l ;	play jumping sound

Obj09_NoJump:
		rts	
; End of function Obj09_Jump


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj09_JumpHeight:				; XREF: Obj09_InAir
		move.w	#-$400,d1
		cmp.w	y_vel(a0),d1
		ble.s	locret_1BBB4
		move.b	(Ctrl_1_Held_Logical).w,d0
		andi.b	#$70,d0
		bne.s	locret_1BBB4
		move.w	d1,y_vel(a0)

locret_1BBB4:
		rts	
; ---------------------------------------------------------------------------
; Subroutine to	fix the	camera on Sonic's position (special stage)
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


SS_FixCamera:				; XREF: Obj09
		move.w	y_pos(a0),d2
		move.w	x_pos(a0),d3
		move.w	(Camera_X_pos).w,d0
		subi.w	#$A0,d3
		bcs.s	s1loc_1BBCE
		sub.w	d3,d0
		sub.w	d0,(Camera_X_pos).w

s1loc_1BBCE:
		move.w	(Camera_Y_pos).w,d0
		subi.w	#$70,d2
		bcs.s	locret_1BBDE
		sub.w	d2,d0
		sub.w	d0,(Camera_Y_pos).w

locret_1BBDE:
		rts	
; End of function SS_FixCamera

; ===========================================================================

Obj09_ExitStage:			; XREF: Obj09_Index
		addi.w	#$40,(S1SS_F780Rep+2).w
		cmpi.w	#$1800,(S1SS_F780Rep+2).w
		bne.s	s1loc_1BBF4
		move.b	#$C,(Game_Mode).w

s1loc_1BBF4:
		cmpi.w	#$3000,(S1SS_F780Rep+2).w
		blt.s	s1loc_1BC12
		move.w	#0,(S1SS_F780Rep+2).w
		move.w	#$4000,(S1SS_F780Rep).w
		addq.b	#2,routine(a0)
		move.w	#$3C,$38(a0)

s1loc_1BC12:
		move.w	(S1SS_F780Rep).w,d0
		add.w	(S1SS_F780Rep+2).w,d0
		move.w	d0,(S1SS_F780Rep).w
	cmpi.w	#3,(Player_option).w
	blt.s	+
		jsr	(Knuckles_Animate).l
		jsr	(LoadKnucklesDynPLC).l
		bra.s	+++
+
	cmpi.w	#2,(Player_option).w
	bne.s	+
		jsr	(Tails_Animate).l
		jsr	(LoadTailsDynPLC).l
		bra.s	++
+
		jsr	(Sonic_Animate).l
		jsr	(LoadSonicDynPLC).l
+
		bsr.w	SS_FixCamera
		jmp	(DisplaySprite).l
; ===========================================================================

Obj09_Exit2:				; XREF: Obj09_Index
		subq.w	#1,$38(a0)
		bne.s	s1loc_1BC40
		move.b	#$C,(Game_Mode).w

s1loc_1BC40:
	cmpi.w	#3,(Player_option).w
	blt.s	+
		jsr	(Knuckles_Animate).l
		jsr	(LoadKnucklesDynPLC).l
		bra.s	+++
+
	cmpi.w	#2,(Player_option).w
	bne.s	+
		jsr	(Tails_Animate).l
		jsr	(LoadTailsDynPLC).l
		bra.s	++
+
		jsr	(Sonic_Animate).l
		jsr	(LoadSonicDynPLC).l
+
		bsr.w	SS_FixCamera
		jmp	(DisplaySprite).l

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj09_Fall:				; XREF: Obj09_OnWall; Obj09_InAir
		move.l	y_pos(a0),d2
		move.l	x_pos(a0),d3
		move.b	(S1SS_F780Rep).w,d0
		andi.b	#$FC,d0
		jsr	(CalcSine).l
		move.w	x_vel(a0),d4
		ext.l	d4
		asl.l	#8,d4
		muls.w	#$2A,d0
		add.l	d4,d0
		move.w	y_vel(a0),d4
		ext.l	d4
		asl.l	#8,d4
		muls.w	#$2A,d1
		add.l	d4,d1
		add.l	d0,d3
		bsr.w	sub_1BCE8
		beq.s	s1loc_1BCB0
		sub.l	d0,d3
		moveq	#0,d0
		move.w	d0,x_vel(a0)
		bclr	#1,status(a0)
		add.l	d1,d2
		bsr.w	sub_1BCE8
		beq.s	s1loc_1BCC6
		sub.l	d1,d2
		moveq	#0,d1
		move.w	d1,y_vel(a0)
		rts	
; ===========================================================================

s1loc_1BCB0:
		add.l	d1,d2
		bsr.w	sub_1BCE8
		beq.s	s1loc_1BCD4
		sub.l	d1,d2
		moveq	#0,d1
		move.w	d1,y_vel(a0)
		bclr	#1,status(a0)

s1loc_1BCC6:
		asr.l	#8,d0
		asr.l	#8,d1
		move.w	d0,x_vel(a0)
		move.w	d1,y_vel(a0)
		rts	
; ===========================================================================

s1loc_1BCD4:
		asr.l	#8,d0
		asr.l	#8,d1
		move.w	d0,x_vel(a0)
		move.w	d1,y_vel(a0)
		bset	#1,status(a0)
		rts	
; End of function Obj09_Fall


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_1BCE8:				; XREF: Obj09_Move; Obj09_Fall
		lea	(Chunk_Table).l,a1
		moveq	#0,d4
		swap	d2
		move.w	d2,d4
		swap	d2
		addi.w	#$44,d4
		divu.w	#$18,d4
		mulu.w	#$80,d4
		adda.l	d4,a1
		moveq	#0,d4
		swap	d3
		move.w	d3,d4
		swap	d3
		addi.w	#$14,d4
		divu.w	#$18,d4
		adda.w	d4,a1
		moveq	#0,d5
		move.b	(a1)+,d4
		bsr.s	sub_1BD30
		move.b	(a1)+,d4
		bsr.s	sub_1BD30
		adda.w	#$7E,a1
		move.b	(a1)+,d4
		bsr.s	sub_1BD30
		move.b	(a1)+,d4
		bsr.s	sub_1BD30
		tst.b	d5
		rts	
; End of function sub_1BCE8


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_1BD30:				; XREF: sub_1BCE8
		beq.s	locret_1BD44
		cmpi.b	#$28,d4
		beq.s	locret_1BD44
		cmpi.b	#$3A,d4
		bcs.s	s1loc_1BD46
		cmpi.b	#$4B,d4
		bcc.s	s1loc_1BD46

locret_1BD44:
		rts	
; ===========================================================================

s1loc_1BD46:
		move.b	d4,invulnerable_time(a0)
		move.l	a1,$32(a0)
		moveq	#-1,d5
		rts	
; End of function sub_1BD30


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj09_ChkItems:				; XREF: Obj09_Display
		lea	(Chunk_Table).l,a1
		moveq	#0,d4
		move.w	y_pos(a0),d4
		addi.w	#$50,d4
		divu.w	#$18,d4
		mulu.w	#$80,d4
		adda.l	d4,a1
		moveq	#0,d4
		move.w	x_pos(a0),d4
		addi.w	#$20,d4
		divu.w	#$18,d4
		adda.w	d4,a1
		move.b	(a1),d4
		bne.s	Obj09_ChkCont
		tst.b	$3A(a0)
		bne.w	Obj09_MakeGhostSolid
		moveq	#0,d4
		rts	
; ===========================================================================

Obj09_ChkCont:
		cmpi.b	#$3A,d4		; is the item a	ring?
		bne.s	Obj09_Chk1Up
		bsr.w	SS_RemoveCollectedItem
		bne.s	Obj09_GetCont
		move.b	#1,(a2)
		move.l	a1,4(a2)

Obj09_GetCont:
		jsr	(CollectRing).l
		cmpi.w	#50,(Ring_count).w ; check if you have 50 rings
		bcs.s	Obj09_NoCont
		bset	#0,(Extra_life_flags).w
		bne.s	Obj09_NoCont
		addq.b	#1,(Continue_count).w ; add 1 to number of continues
		move.w	#SndID_ContinueJingle,d0
		jsr	(PlayMusic).l	; play extra continue sound

Obj09_NoCont:
		moveq	#0,d4
		rts	
; ===========================================================================

Obj09_Chk1Up:
		cmpi.b	#$28,d4		; is the item an extra life?
		bne.s	Obj09_ChkEmer
		bsr.w	SS_RemoveCollectedItem
		bne.s	Obj09_Get1Up
		move.b	#3,(a2)
		move.l	a1,4(a2)

Obj09_Get1Up:
		addq.b	#1,(Life_count).w ; add 1 to number of lives
		addq.b	#1,(Update_HUD_lives).w ; add 1 to lives counter
		move.w	#MusID_ExtraLife,d0
		jsr	(PlayMusic).l	; play extra life music
		moveq	#0,d4
		rts	
; ===========================================================================

Obj09_ChkEmer:
		cmpi.b	#$3B,d4		; is the item an emerald?
		bcs.s	Obj09_ChkGhost
		cmpi.b	#$40,d4
		bhi.s	Obj09_ChkGhost
		bsr.w	SS_RemoveCollectedItem
		bne.s	Obj09_GetEmer
		move.b	#5,(a2)
		move.l	a1,4(a2)

Obj09_GetEmer:
		cmpi.b	#6,(Emerald_count).w ; do you have all the emeralds?
		beq.s	Obj09_NoEmer	; if yes, branch
		subi.b	#$3B,d4
		moveq	#0,d0
		move.b	(Emerald_count).w,d0
		lea	(Emerald_count+1).w,a2
		move.b	d4,(a2,d0.w)
		addq.b	#1,(Emerald_count).w ; add 1 to number of emeralds

Obj09_NoEmer:
		move.w	#MusID_Emerald,d0
		jsr	(PlaySound).l ;	play emerald music
		moveq	#0,d4
		rts	
; ===========================================================================

Obj09_ChkGhost:
		cmpi.b	#$41,d4		; is the item a	ghost block?
		bne.s	Obj09_ChkGhostTag
		move.b	#1,$3A(a0)	; mark the ghost block as "passed"

Obj09_ChkGhostTag:
		cmpi.b	#$4A,d4		; is the item a	switch for ghost blocks?
		bne.s	Obj09_NoGhost
		cmpi.b	#1,$3A(a0)	; have the ghost blocks	been passed?
		bne.s	Obj09_NoGhost	; if not, branch
		move.b	#2,$3A(a0)	; mark the ghost blocks	as "solid"

Obj09_NoGhost:
		moveq	#-1,d4
		rts	
; ===========================================================================

Obj09_MakeGhostSolid:
		cmpi.b	#2,$3A(a0)	; is the ghost marked as "solid"?
		bne.s	Obj09_GhostNotSolid ; if not, branch
		lea	(Chunk_Table+$1020).l,a1
		moveq	#$3F,d1

Obj09_GhostLoop2:
		moveq	#$3F,d2

Obj09_GhostLoop:
		cmpi.b	#$41,(a1)	; is the item a	ghost block?
		bne.s	Obj09_NoReplace	; if not, branch
		move.b	#$2C,(a1)	; replace ghost	block with a solid block

Obj09_NoReplace:
		addq.w	#1,a1
		dbf	d2,Obj09_GhostLoop
		lea	$40(a1),a1
		dbf	d1,Obj09_GhostLoop2

Obj09_GhostNotSolid:
		clr.b	$3A(a0)
		moveq	#0,d4
		rts	
; End of function Obj09_ChkItems


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj09_ChkItems2:			; XREF: Obj09_Display
		move.b	$30(a0),d0
		bne.s	Obj09_ChkBumper
		subq.b	#1,$36(a0)
		bpl.s	s1loc_1BEA0
		move.b	#0,$36(a0)

s1loc_1BEA0:
		subq.b	#1,$37(a0)
		bpl.s	locret_1BEAC
		move.b	#0,$37(a0)

locret_1BEAC:
		rts	
; ===========================================================================

Obj09_ChkBumper:
		cmpi.b	#$25,d0		; is the item a	bumper?
		bne.s	Obj09_GOAL
		move.l	$32(a0),d1
		subi.l	#$FF0001,d1
		move.w	d1,d2
		andi.w	#$7F,d1
		mulu.w	#$18,d1
		subi.w	#$14,d1
		lsr.w	#7,d2
		andi.w	#$7F,d2
		mulu.w	#$18,d2
		subi.w	#$44,d2
		sub.w	x_pos(a0),d1
		sub.w	y_pos(a0),d2
		jsr	(CalcAngle).l
		jsr	(CalcSine).l
		muls.w	#-$700,d1
		asr.l	#8,d1
		move.w	d1,x_vel(a0)
		muls.w	#-$700,d0
		asr.l	#8,d0
		move.w	d0,y_vel(a0)
		bset	#1,status(a0)
		bsr.w	SS_RemoveCollectedItem
		bne.s	Obj09_BumpSnd
		move.b	#2,(a2)
		move.l	$32(a0),d0
		subq.l	#1,d0
		move.l	d0,4(a2)

Obj09_BumpSnd:
		move.w	#SndID_Bumper,d0
		jmp	(PlaySound).l ;	play bumper sound
; ===========================================================================

Obj09_GOAL:
		cmpi.b	#$27,d0		; is the item a	"GOAL"?
		bne.s	Obj09_UPblock
		addq.b	#2,routine(a0)	; run routine "Obj09_ExitStage"
		move.w	#SndID_SSExit,d0		; change item
		jsr	(PlaySound).l ;	play "GOAL" sound
		rts	
; ===========================================================================

Obj09_UPblock:
		cmpi.b	#$29,d0		; is the item an "UP" block?
		bne.s	Obj09_DOWNblock
		tst.b	$36(a0)
		bne.w	Obj09_NoGlass
		move.b	#$1E,$36(a0)
		btst	#6,($FFFFF783).w
		beq.s	Obj09_UPsnd
		asl	(S1SS_F780Rep+2).w	; increase stage rotation speed
		movea.l	$32(a0),a1
		subq.l	#1,a1
		move.b	#$2A,(a1)	; change item to a "DOWN" block

Obj09_UPsnd:
		move.w	#SndID_Bwoop,d0
		jmp	(PlaySound).l ;	play up/down sound
; ===========================================================================

Obj09_DOWNblock:
		cmpi.b	#$2A,d0		; is the item a	"DOWN" block?
		bne.s	Obj09_Rblock
		tst.b	$36(a0)
		bne.w	Obj09_NoGlass
		move.b	#$1E,$36(a0)
		btst	#6,($FFFFF783).w
		bne.s	Obj09_DOWNsnd
		asr	(S1SS_F780Rep+2).w	; reduce stage rotation	speed
		movea.l	$32(a0),a1
		subq.l	#1,a1
		move.b	#$29,(a1)	; change item to an "UP" block

Obj09_DOWNsnd:
		move.w	#SndID_Bwoop,d0
		jmp	(PlaySound).l ;	play up/down sound
; ===========================================================================

Obj09_Rblock:
		cmpi.b	#$2B,d0		; is the item an "R" block?
		bne.s	Obj09_ChkGlass
		tst.b	$37(a0)
		bne.w	Obj09_NoGlass
		move.b	#$1E,$37(a0)
		bsr.w	SS_RemoveCollectedItem
		bne.s	Obj09_RevStage
		move.b	#4,(a2)
		move.l	$32(a0),d0
		subq.l	#1,d0
		move.l	d0,4(a2)

Obj09_RevStage:
		neg.w	(S1SS_F780Rep+2).w	; reverse stage	rotation
		move.w	#SndID_Bwoop,d0
		jmp	(PlaySound).l ;	play sound
; ===========================================================================

Obj09_ChkGlass:
		cmpi.b	#$2D,d0		; is the item a	glass block?
		beq.s	Obj09_Glass	; if yes, branch
		cmpi.b	#$2E,d0
		beq.s	Obj09_Glass
		cmpi.b	#$2F,d0
		beq.s	Obj09_Glass
		cmpi.b	#$30,d0
		bne.s	Obj09_NoGlass	; if not, branch

Obj09_Glass:
		bsr.w	SS_RemoveCollectedItem
		bne.s	Obj09_GlassSnd
		move.b	#6,(a2)
		movea.l	$32(a0),a1
		subq.l	#1,a1
		move.l	a1,4(a2)
		move.b	(a1),d0
		addq.b	#1,d0		; change glass type when touched
		cmpi.b	#$30,d0
		bls.s	Obj09_GlassUpdate ; if glass is	still there, branch
		clr.b	d0		; remove the glass block when it"s destroyed

Obj09_GlassUpdate:
		move.b	d0,4(a2)	; update the stage layout

Obj09_GlassSnd:
		move.w	#SndID_SSDiamond,d0
		jmp	(PlaySound).l ;	play glass block sound
; ===========================================================================

Obj09_NoGlass:
		rts
; End of function Obj09_ChkItems2

sub_D762:				; XREF: sub_D762; SS_ShowLayout
		cmpi.b	#$50,d5
		beq.s	locret_D794
		move.b	(a1)+,d0
		ext.w	d0
		add.w	d2,d0
		move.w	d0,(a2)+
		move.b	(a1)+,(a2)+
		addq.b	#1,d5
		move.b	d5,(a2)+
		move.b	(a1)+,d0
		lsl.w	#8,d0
		move.b	(a1)+,d0
		add.w	a3,d0
		move.w	d0,(a2)+
		move.b	(a1)+,d0
		ext.w	d0
		add.w	d3,d0
		andi.w	#$1FF,d0
		bne.s	loc_D78E
		addq.w	#1,d0

loc_D78E:
		move.w	d0,(a2)+
		dbf	d1,sub_D762

locret_D794:
		rts	
; End of function sub_D762