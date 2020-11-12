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
		jsr		SolidObject_Always

Edge_Display:	; Routine 4
		jsr		DisplaySprite
	sub.w	(Camera_X_pos_coarse).w,d0
	cmpi.w	#$280,d0
	bhi.w	JmpTo2_MarkObjGone
		rts