; ---------------------------------------------------------------------------
; Object 33 - pushable blocks (MZ, LZ)
; ---------------------------------------------------------------------------

Obj33_S1:				; XREF: Obj_Index
	moveq	#0,d0
	move.b	routine(a0),d0
	move.w	PushB_Index(pc,d0.w),d1
	jmp	PushB_Index(pc,d1.w)
; ===========================================================================
PushB_Index:	offsetTable
	offsetTableEntry.w PushB_Main
	offsetTableEntry.w loc_s1_BF6E
	offsetTableEntry.w loc_s1_C02C

PushB_Var:
	dc.b $10, 0	; object width,	frame number
	dc.b $40, 1
; ===========================================================================

PushB_Main:	; Routine 0
	addq.b	#2,routine(a0)
	move.b	#$F,y_radius(a0)
	move.b	#$F,x_radius(a0)
	move.l	#Map_PushBlock,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtNem_Coconuts,0,0),art_tile(a0) ; MZ specific code

PushB_notLZ:
	move.b	#4,render_flags(a0)
	move.b	#3,priority(a0)
	move.w	x_pos(a0),objoff_34(a0)
	move.w	y_pos(a0),objoff_36(a0)
	moveq	#0,d0
	move.b	subtype(a0),d0
	add.w	d0,d0
	andi.w	#$E,d0
	lea	PushB_Var(pc,d0.w),a2
	move.b	(a2)+,width_pixels(a0)
	move.b	(a2)+,mapping_frame(a0)
	tst.b	subtype(a0)
	beq.s	PushB_chkgone
	move.w	#make_art_tile(ArtTile_ArtNem_Coconuts,0,1),art_tile(a0)

PushB_chkgone:
	lea	(Object_Respawn_Table).w,a2
	moveq	#0,d0
	move.b	respawn_index(a0),d0
	beq.s	loc_s1_BF6E
	bclr	#7,2(a2,d0.w)
	bset	#0,2(a2,d0.w)
	bne.s	PushB_DeleteObject

loc_s1_BF6E:	; Routine 2
	tst.b	objoff_32(a0)
	bne.w	loc_s1_C046
	moveq	#0,d1
	move.b	width_pixels(a0),d1
	addi.w	#$B,d1
	move.w	#$10,d2
	move.w	#$11,d3
	move.w	x_pos(a0),d4
	bsr.w	loc_s1_C186

loc_s1_BFC6:
	move.w	x_pos(a0),d0
	andi.w	#$FF80,d0
	sub.w	(Camera_X_pos_coarse).w,d0
	cmpi.w	#$280,d0
	bhi.s	loc_s1_ppppp
	jmp	(DisplaySprite).l
; ===========================================================================

PushB_DeleteObject:
	jmp	(DeleteObject).l

loc_s1_ppppp:
	move.w	objoff_34(a0),d0
	andi.w	#$FF80,d0
	sub.w	(Camera_X_pos_coarse).w,d0
	cmpi.w	#$280,d0
	bhi.s	loc_s1_C016
	move.w	objoff_34(a0),x_pos(a0)
	move.w	objoff_36(a0),y_pos(a0)
	move.b	#4,routine(a0)
	bra.s	loc_s1_C02C
; ===========================================================================

loc_s1_C016:
	lea	(Object_Respawn_Table).w,a2
	moveq	#0,d0
	move.b	respawn_index(a0),d0
	beq.s	loc_s1_C028
	bclr	#0,2(a2,d0.w)

loc_s1_C028:
	jmp	(DeleteObject).l
; ===========================================================================

loc_s1_C02C:	; Routine 4
	bsr.w	ChkPartiallyVisible
	beq.s	locret_s1_C044
	move.b	#2,routine(a0)
	clr.b	objoff_32(a0)
	clr.w	x_vel(a0)
	clr.w	y_vel(a0)

locret_s1_C044:
	rts	
; ===========================================================================

loc_s1_C046:				; XREF: loc_s1_BF6E
	move.w	x_pos(a0),-(sp)
	cmpi.b	#4,routine_secondary(a0)
	bcc.s	loc_s1_C056
	jsr	(ObjectMove).l

loc_s1_C056:
	btst	#1,status(a0)
	beq.s	loc_s1_C0A0
	addi.w	#$18,y_vel(a0)
	jsr	(ObjCheckFloorDist).l
	tst.w	d1
	bpl.w	loc_s1_C09E
	add.w	d1,y_pos(a0)
	clr.w	y_vel(a0)
	bclr	#1,status(a0)
	move.w	(a1),d0
	andi.w	#$3FF,d0
	cmpi.w	#$16A,d0
	bcs.s	loc_s1_C09E
	move.w	objoff_30(a0),d0
	asr.w	#3,d0
	move.w	d0,x_vel(a0)
	move.b	#1,objoff_32(a0)
	clr.w	objoff_E(a0)

loc_s1_C09E:
	bra.s	loc_s1_C0E6
; ===========================================================================

loc_s1_C0A0:
	tst.w	x_vel(a0)
	beq.w	loc_s1_C0D6
	bmi.s	loc_s1_C0BC
	moveq	#0,d3
	move.b	width_pixels(a0),d3
	jsr	(ObjCheckRightWallDist).l
	tst.w	d1		; has block touched a wall?
	bmi.s	PushB_StopPush	; if yes, branch
	bra.s	loc_s1_C0E6
; ===========================================================================

loc_s1_C0BC:
	moveq	#0,d3
	move.b	width_pixels(a0),d3
	not.w	d3
	jsr	(ObjCheckLeftWallDist).l
	tst.w	d1		; has block touched a wall?
	bmi.s	PushB_StopPush	; if yes, branch
	bra.s	loc_s1_C0E6
; ===========================================================================

PushB_StopPush:
	clr.w	x_vel(a0)		; stop block moving
	bra.s	loc_s1_C0E6
; ===========================================================================

loc_s1_C0D6:
	addi.l	#$2001,y_pos(a0)
	cmpi.b	#$A0,y_pos+3(a0)
	bcc.s	loc_s1_C104

loc_s1_C0E6:
	moveq	#0,d1
	move.b	width_pixels(a0),d1
	addi.w	#$B,d1
	move.w	#$10,d2
	move.w	#$11,d3
	move.w	(sp)+,d4
	bsr.w	loc_s1_C186
;	bsr.s	PushB_ChkLava
	bra.w	loc_s1_BFC6
; ===========================================================================

loc_s1_C104:
	move.w	(sp)+,d4
	lea	(MainCharacter).w,a1
	bclr	#3,status(a1)
	bclr	#p1_standing_bit,status(a0)
	bra.w	loc_s1_ppppp
; ===========================================================================

loc_s1_C186:				; XREF: loc_s1_BF6E
	move.b	routine_secondary(a0),d0
	beq.w	loc_s1_C218
	subq.b	#2,d0
	bne.s	loc_s1_C1AA
	;bsr.w	ExitPlatform
	btst	#3,status(a1)
	bne.s	loc_s1_C1A4
	clr.b	routine_secondary(a0)
	rts	
; ===========================================================================

loc_s1_C1A4:
	move.w	d4,d2
	jmp	(MvSonicOnPtfm).l
; ===========================================================================

loc_s1_C1AA:
	subq.b	#2,d0
	bne.s	loc_s1_C1F2
	jsr	(ObjectMove).l
	addi.w	#$18,y_vel(a0)
	jsr	(ObjCheckFloorDist).l
	tst.w	d1
	bpl.w	locret_s1_C1F0
	add.w	d1,y_pos(a0)
	clr.w	y_vel(a0)
	clr.b	routine_secondary(a0)
	move.w	(a1),d0
	andi.w	#$3FF,d0
	cmpi.w	#$16A,d0
	bcs.s	locret_s1_C1F0
	move.w	objoff_30(a0),d0
	asr.w	#3,d0
	move.w	d0,x_vel(a0)
	move.b	#1,objoff_32(a0)
	clr.w	y_pos+2(a0)

locret_s1_C1F0:
	rts	
; ===========================================================================

loc_s1_C1F2:
	jsr	(ObjectMove).l
	move.w	x_pos(a0),d0
	andi.w	#$C,d0
	bne.w	locret_s1_C2E4
	andi.w	#-$10,x_pos(a0)
	move.w	x_vel(a0),objoff_30(a0)
	clr.w	x_vel(a0)
	subq.b	#2,routine_secondary(a0)
	rts	
; ===========================================================================

loc_s1_C218:
	;bsr.w	Solid_ChkEnter
	lea	(MainCharacter).w,a1
	moveq	#p1_standing_bit,d6
	movem.l	d1-d4,-(sp)
	jsr	(SolidObject2).l
	bsr.s	+
	movem.l	(sp)+,d1-d4
	lea	(Sidekick).w,a1
	tst.b	render_flags(a1)
	bpl.w	locret_s1_C2E4
	addq.b	#1,d6
	jsr	(SolidObject2).l
	btst	#p1_pushing_bit,status(a0)
	bne.w	locret_s1_C2E4
+
	movea.l	a1,a6
	tst.w	d4
	beq.w	locret_s1_C2E4
	bmi.w	locret_s1_C2E4
	tst.b	objoff_32(a0)
	beq.s	loc_s1_C230
	bra.w	locret_s1_C2E4
; ===========================================================================

loc_s1_C230:
	
	tst.w	d0
	beq.w	locret_s1_C2E4
	bmi.s	loc_s1_C268
	btst	#0,status(a1)
	bne.w	locret_s1_C2E4
	move.w	d0,-(sp)
	move.w	d6,-(sp)
	moveq	#0,d3
	move.b	width_pixels(a0),d3
	jsr	(ObjCheckRightWallDist).l
	move.w	(sp)+,d6
	move.w	(sp)+,d0
	tst.w	d1
	bmi.w	locret_s1_C2E4
	addi.l	#$10000,x_pos(a0)
	moveq	#1,d0
	move.w	#$40,d1
	bra.s	loc_s1_C294
; ===========================================================================

loc_s1_C268:
	btst	#0,status(a1)
	beq.w	locret_s1_C2E4
	move.w	d0,-(sp)
	move.w	d6,-(sp)
	moveq	#0,d3
	move.b	width_pixels(a0),d3
	not.w	d3
	jsr	(ObjCheckLeftWallDist).l
	move.w	(sp)+,d6
	move.w	(sp)+,d0
	tst.w	d1
	bmi.s	locret_s1_C2E4
	subi.l	#$10000,x_pos(a0)
	moveq	#-1,d0
	move.w	#-$40,d1

loc_s1_C294:
	movea.l	a6,a1
	add.w	d0,x_pos(a1)
	move.w	d1,inertia(a1)
	move.w	#0,x_vel(a1)
	move.w	d0,-(sp)
	move.w	#SndID_PushBlock,d0
	jsr	(PlaySound).l	 ; play pushing sound
	move.w	(sp)+,d0
	tst.b	subtype(a0)
	bmi.s	locret_s1_C2E4
	move.w	d0,-(sp)
	move.w	d6,-(sp)
	jsr	(ObjCheckFloorDist).l
	move.w	(sp)+,d6
	move.w	(sp)+,d0
	cmpi.w	#4,d1
	ble.s	loc_s1_C2E0
	move.w	#$400,x_vel(a0)
	tst.w	d0
	bpl.s	loc_s1_C2D8
	neg.w	x_vel(a0)

loc_s1_C2D8:
	move.b	#6,routine_secondary(a0)
	bra.s	locret_s1_C2E4
; ===========================================================================

loc_s1_C2E0:
	add.w	d1,y_pos(a0)

locret_s1_C2E4:
	rts
; ---------------------------------------------------------------------------
; Sprite mappings - pushable blocks (MZ, LZ)
; ---------------------------------------------------------------------------
Map_PushBlock:
		binclude	"mappings/sprite/GHZ Pushable Block.bin"
	even