; ----------------------------------------------------------------------------
; Object 21 - Whirlwind Shield
; ----------------------------------------------------------------------------
; Sprite_1D8F2:
Obj21:
	moveq	#0,d0
	move.b	routine(a0),d0
	move.w	Obj21_Index(pc,d0.w),d1
	jmp	Obj21_Index(pc,d1.w)
; ===========================================================================
; off_1D900:
Obj21_Index:	offsetTable
		offsetTableEntry.w Obj21_Main	; 0
		offsetTableEntry.w Obj21_Shield	; 2
; ===========================================================================
; loc_1D904:
Obj21_Main:
	addq.b	#2,routine(a0)
	move.l	#MapUnc_WhirlSh,mappings(a0)
	move.b	#4,render_flags(a0)
	move.b	#1,priority(a0)
	move.b	#$18,width_pixels(a0)
	move.w	#make_art_tile(ArtTile_ShieldAndStars,0,0),art_tile(a0)
; loc_1D92C:
Obj21_Shield:
	movea.w	parent(a0),a2 ; a2=character
	btst	#status_sec_isInvincible,status_secondary(a2)
	bne.s	Whirlwind_Return
	btst	#status_sec_hasShield,status_secondary(a2)	; shield?
	beq.s	Whirlwind_DeleteObject	; no ride
	move.w	x_pos(a2),x_pos(a0)
	move.w	y_pos(a2),y_pos(a0)
	move.b	status(a2),status(a0)
	andi.w	#drawing_mask,art_tile(a0)
	tst.w	art_tile(a2)
	bpl.s	Obj21_Display
	ori.w	#high_priority,art_tile(a0)
; loc_1D964:
Obj21_Display:
	lea	(Ani_WhirlSh).l,a1
	jsr	(AnimateSprite).l
	jsr	WhirlSh_LoadGraphics
	jmp	(DisplaySprite).l
; ===========================================================================

Whirlwind_Return:
	rts
; ===========================================================================

Whirlwind_DeleteObject
	jmp	(DeleteObject).l
; ===========================================================================

ArtUnc_WhirlSh:	BINCLUDE "art/uncompressed/Whirlwind Shield.bin"
	even
MapUnc_WhirlSh: BINCLUDE "mappings/sprite/obj21.bin"
	even
MapRUnc_WhirlSh:BINCLUDE "mappings/spriteDPLC/obj21.bin"
	even
Ani_WhirlSh:	offsetTable
		offsetTableEntry.w +	; 0
+		dc.b   0, 0,  1,  0,  2,  0,  3,  0,  4,  0,  5,  0,  6,  0,  7,  0,  8,$FF
	even

WhirlSh_LoadGraphics:
	moveq	#0,d0
	move.b	mapping_frame(a0),d0	; load frame number
; loc_1B84E:
WhirlSh_LoadGraphics_Part2:
	cmp.b	(WhirlSh_LastLoadedDPLC).w,d0
	beq.s	WhShPLC_Return
	move.b	d0,(WhirlSh_LastLoadedDPLC).w
	lea	(MapRUnc_WhirlSh).l,a2
	add.w	d0,d0
	adda.w	(a2,d0.w),a2
	move.w	(a2)+,d5
	subq.w	#1,d5
	bmi.s	WhShPLC_Return
	move.w	#tiles_to_bytes(ArtTile_ShieldAndStars),d4
; loc_1B86E:
WhShPLC_ReadEntry:
	moveq	#0,d1
	move.w	(a2)+,d1
	move.w	d1,d3
	lsr.w	#8,d3
	andi.w	#$F0,d3
	addi.w	#$10,d3
	andi.w	#$FFF,d1
	lsl.l	#5,d1
	addi.l	#ArtUnc_WhirlSh,d1
	move.w	d4,d2
	add.w	d3,d4
	add.w	d3,d4
	jsr	(QueueDMATransfer).l
	dbf	d5,WhShPLC_ReadEntry	; repeat for number of entries

WhShPLC_Return:
	rts