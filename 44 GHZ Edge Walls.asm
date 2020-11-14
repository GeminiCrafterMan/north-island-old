; ---------------------------------------------------------------------------
; Object 44 - edge walls (GHZ)
; ---------------------------------------------------------------------------

EdgeWalls:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Edge_Index(pc,d0.w),d1
		jmp	Edge_Index(pc,d1.w)
; ===========================================================================
Edge_Index:		offsetTable
		offsetTableEntry.w Edge_Main
		offsetTableEntry.w Edge_Solid
		offsetTableEntry.w Edge_Display
; ===========================================================================

Edge_Main:	; Routine 0
		addq.b	#2,routine(a0)
		move.l	#Map_Edge,mappings(a0)
		move.w	#make_art_tile(ArtTile_ArtNem_GHZ_WallBarrier,2,0),art_tile(a0)
		jsr		Adjust2PArtPointer
		ori.b	#4,render_flags(a0)
		move.b	#8,width_pixels(a0)
		move.b	#6,priority(a0)
		move.b	subtype(a0),mapping_frame(a0) ; copy object type number to frame number
		bclr	#4,mapping_frame(a0)	; clear	4th bit	(deduct	$10)
		beq.s	Edge_Solid	; make object solid if 4th bit = 0
		addq.b	#2,routine(a0)
		bra.s	Edge_Display	; don't make it solid if 4th bit = 1
; ===========================================================================

Edge_Solid:	; Routine 2
		move.w	#$13,d1
		move.w	#$28,d2
		bsr.w	Obj44_SolidWall

Edge_Display:	; Routine 4
		jsr		DisplaySprite
	sub.w	(Camera_X_pos_coarse).w,d0
	cmpi.w	#$280,d0
	bhi.w	JmpTo2_MarkObjGone
		rts

; Buncha ReadySonic porting shit.

Obj44_SolidWall:			; XREF: Obj44_Solid
		bsr.w	Obj44_SolidWall2
		beq.s	loc_8AA8
		bmi.w	loc_8AC4
		moveq	#0,d1
		tst.w	d0
		beq.w	loc_8A92
		bmi.s	loc_8A7C
		tst.w	x_vel(a1)
		bmi.s	loc_8A92
		move.b	#button_right_mask,d1
		bra.s	loc_8A82
; ===========================================================================

loc_8A7C:
		tst.w	x_vel(a1)
		bpl.s	loc_8A92
		move.b	#button_left_mask,d1

loc_8A82:
		sub.w	d0,x_pos(a1)
		move.w	#0,inertia(a1)
		move.w	#0,x_vel(a1)

loc_8A92:
		btst	#1,status(a1)
		bne.s	loc_8AB6
		bset	#5,status(a1)
		bset	#5,status(a0)
		rts
; ===========================================================================

loc_8AA8:
		btst	#5,status(a0)
		beq.s	locret_8AC2
		bra.s	loc_8AB6pushclear

loc_8AB6:
		move.l	a0,-(sp)
		movea.l	a1,a0
		jsr	WallJump
		movea.l	(sp)+,a0

loc_8AB6pushclear:
		bclr	#5,status(a0)
		bclr	#5,status(a1)

locret_8AC2:
		rts
; ===========================================================================

loc_8AC4:
		tst.w	y_vel(a1)
		bpl.s	locret_8AD8
		tst.w	d3
		bpl.s	locret_8AD8
		sub.w	d3,y_pos(a1)
		move.w	#0,y_vel(a1)

locret_8AD8:
		rts
; End of function Obj44_SolidWall


; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj44_SolidWall2:			; XREF: Obj44_SolidWall
		lea	(Object_RAM).w,a1
		move.w	x_pos(a1),d0
		sub.w	x_pos(a0),d0
		add.w	d1,d0
		bmi.s	loc_8B48
		move.w	d1,d3
		add.w	d3,d3
		cmp.w	d3,d0
		bhi.s	loc_8B48
		move.b	y_radius(a1),d3
		ext.w	d3
		add.w	d3,d2
		move.w	y_pos(a1),d3
		
	;Mercury Ducking Size Fix
		cmpi.b	#AniIDSonAni_Spindash,anim(a1)
		beq.s	.short
		cmpi.b	#AniIDSonAni_Duck,anim(a1)
		bne.s	.skip
		
	.short:
		subi.w	#5,d2
		addi.w	#5,d3
		
	.skip:
	;end Ducking Size Fix
		
		sub.w	y_pos(a0),d3
		add.w	d2,d3
		bmi.s	loc_8B48
		move.w	d2,d4
		add.w	d4,d4
		cmp.w	d4,d3
		bcc.s	loc_8B48
		tst.b	obj_control(a1)
		bmi.s	loc_8B48
		cmpi.b	#6,(Object_RAM+routine).w
		bcc.s	loc_8B48
		tst.w	(Debug_placement_mode).w
		bne.s	loc_8B48
		move.w	d0,d5
		cmp.w	d0,d1
		bcc.s	loc_8B30
		add.w	d1,d1
		sub.w	d1,d0
		move.w	d0,d5
		neg.w	d5

loc_8B30:
		move.w	d3,d1
		cmp.w	d3,d2
		bcc.s	loc_8B3C
		sub.w	d4,d3
		move.w	d3,d1
		neg.w	d1

loc_8B3C:
		cmp.w	d1,d5
		bhi.s	loc_8B44
		moveq	#1,d4
		rts
; ===========================================================================

loc_8B44:
		moveq	#-1,d4
		rts
; ===========================================================================

loc_8B48:
		moveq	#0,d4
		rts
; End of function Obj44_SolidWall2