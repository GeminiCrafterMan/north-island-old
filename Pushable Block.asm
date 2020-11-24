; ---------------------------------------------------------------------------
; Object 33 - pushable blocks (MZ, LZ)
; ---------------------------------------------------------------------------
	rts
PushBlock:					; XREF: Obj_Index
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	PushBlock_Index(pc,d0.w),d1
		jsr	PushBlock_Index(pc,d1.w)
		jmp	(MarkObjGone).l
; ===========================================================================
PushBlock_Index:	offsetTable
		offsetTableEntry.w PushBlock_Main
		offsetTableEntry.w loc_BF6E
		offsetTableEntry.w loc_C02C
; ===========================================================================

PushBlock_Main:				; XREF: PushBlock_Index
		addq.b	#2,routine(a0)
		move.l	#Map_PushBlock,mappings(a0)
		move.w	#make_art_tile(ArtTile_ArtNem_Coconuts,0,0),art_tile(a0)
		ori.b	#4,render_flags(a0)
		move.b	#$10,width_pixels(a0)
		move.b	#4,priority(a0)

loc_BF16:
		move.w	x_pos(a0),$34(a0)
		move.w	y_pos(a0),$36(a0)
		moveq	#0,d0

loc_BF6E:				; XREF: PushBlock_Index
		tst.b	$32(a0)
		bne.w	loc_C046
		moveq	#0,d1
		move.b	width_pixels(a0),d1
		addi.w	#$B,d1
		move.w	#$10,d2
		move.w	#$11,d3
		move.w	x_pos(a0),d4
		bra.w	loc_C186

; ===========================================================================

loc_BFE6:
		move.w	$34(a0),d0
		andi.w	#$FF80,d0
		move.w	(Camera_X_pos).w,d1
		subi.w	#$80,d1
		andi.w	#$FF80,d1
		sub.w	d1,d0
		cmpi.w	#$280,d0
		bhi.s	loc_C016
		move.w	$34(a0),x_pos(a0)
		move.w	$36(a0),y_pos(a0)
		move.b	#4,routine(a0)
		bra.s	loc_C02C
; ===========================================================================

loc_C016:
		lea	(Object_Respawn_Table).w,a2
		moveq	#0,d0
		move.b	respawn_index(a0),d0
		beq.s	loc_C028
		bclr	#0,art_tile(a2,d0.w)

loc_C028:
		jmp	DeleteObject
; ===========================================================================

loc_C02C:				; XREF: PushBlock_Index
		jsr	ChkObjOnScreen2
		beq.s	locret_C044
		move.b	#2,routine(a0)
		clr.b	$32(a0)
		clr.w	x_vel(a0)
		clr.w	y_vel(a0)

locret_C044:
		rts	
; ===========================================================================

loc_C046:				; XREF: loc_BF6E
		move.w	x_pos(a0),-(sp)
		cmpi.b	#4,routine_secondary(a0)
		bcc.s	loc_C056
		jsr	ObjectMove

loc_C056:
		btst	#1,status(a0)
		beq.s	loc_C0A0
		addi.w	#$18,y_vel(a0)
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.w	loc_C09E
		add.w	d1,y_pos(a0)
		clr.w	y_vel(a0)
		bclr	#1,status(a0)
		move.w	(a1),d0
		andi.w	#$3FF,d0
		cmpi.w	#$16A,d0
		bcs.s	loc_C09E
		move.w	$30(a0),d0
		asr.w	#3,d0
		move.w	d0,x_vel(a0)
		move.b	#1,$32(a0)
		clr.w	y_sub(a0)

loc_C09E:
		bra.s	loc_C0E6
; ===========================================================================

loc_C0A0:
		tst.w	x_vel(a0)
		beq.w	loc_C0D6
		bmi.s	loc_C0BC
		moveq	#0,d3
		move.b	width_pixels(a0),d3
		jsr	(ObjCheckRightWallDist).l
		tst.w	d1		; has block touched a wall?
		bmi.s	PushBlock_StopPush	; if yes, branch
		bra.s	loc_C0E6
; ===========================================================================

loc_C0BC:
		moveq	#0,d3
		move.b	width_pixels(a0),d3
		not.w	d3
		jsr	(ObjCheckLeftWallDist).l
		tst.w	d1		; has block touched a wall?
		bmi.s	PushBlock_StopPush	; if yes, branch
		bra.s	loc_C0E6
; ===========================================================================

PushBlock_StopPush:
		clr.w	x_vel(a0)		; stop block moving
		bra.s	loc_C0E6
; ===========================================================================

loc_C0D6:
		addi.l	#$2001,y_pos(a0)
		cmpi.b	#-$60,$F(a0)
		bcc.s	loc_C104

loc_C0E6:
		moveq	#0,d1
		move.b	width_pixels(a0),d1
		addi.w	#$B,d1
		move.w	#$10,d2
		move.w	#$11,d3
		move.w	(sp)+,d4
		bra.w	loc_C186
; ===========================================================================

loc_C104:
		move.w	(sp)+,d4
		lea	(MainCharacter).w,a1
		bclr	#3,status(a1)
		bclr	#3,status(a0)
		bra.w	loc_BFE6
; ===========================================================================

loc_C186:				; XREF: loc_BF6E
		move.b	routine_secondary(a0),d0
		beq.w	loc_C218
		subq.b	#2,d0
		bne.s	loc_C1AA
		jsr	PlatformObject ; originally was ExitPlatform, wtf am i doing
		btst	#3,status(a1)
		bne.s	loc_C1A4
		clr.b	routine_secondary(a0)
		rts	
; ===========================================================================

loc_C1A4:
		move.w	d4,d2
		jmp	MvSonicOnPtfm
; ===========================================================================

loc_C1AA:
		subq.b	#2,d0
		bne.s	loc_C1F2
		jsr	ObjectMove
		addi.w	#$18,y_vel(a0)
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.w	locret_C1F0
		add.w	d1,y_pos(a0)
		clr.w	y_vel(a0)
		clr.b	routine_secondary(a0)
		move.w	(a1),d0
		andi.w	#$3FF,d0
		cmpi.w	#$16A,d0
		bcs.s	locret_C1F0
		move.w	$30(a0),d0
		asr.w	#3,d0
		move.w	d0,x_vel(a0)
		move.b	#1,$32(a0)
		clr.w	y_sub(a0)

locret_C1F0:
		rts	
; ===========================================================================

loc_C1F2:
		jsr	ObjectMove
		move.w	x_pos(a0),d0
		andi.w	#$C,d0
		bne.w	locret_C2E4
		andi.w	#-$10,x_pos(a0)
		move.w	x_vel(a0),$30(a0)
		clr.w	x_vel(a0)
		subq.b	#2,routine_secondary(a0)
		rts	
; ===========================================================================

loc_C218:
		jsr		SolidObject_OnScreenTest
		tst.w	d4
		beq.w	locret_C2E4
		bmi.w	locret_C2E4
		tst.b	$32(a0)
		beq.s	loc_C230
		bra.w	locret_C2E4
; ===========================================================================

loc_C230:
		tst.w	d0
		beq.w	locret_C2E4
		bmi.s	loc_C268
		btst	#0,status(a1)
		bne.w	locret_C2E4
		move.w	d0,-(sp)
		moveq	#0,d3
		move.b	width_pixels(a0),d3
		jsr	(ObjCheckRightWallDist).l
		move.w	(sp)+,d0
		tst.w	d1
		bmi.w	locret_C2E4
		addi.l	#$10000,x_pos(a0)
		moveq	#1,d0
		move.w	#$40,d1
		bra.s	loc_C294
; ===========================================================================

loc_C268:
		btst	#0,status(a1)
		beq.w	locret_C2E4
		move.w	d0,-(sp)
		moveq	#0,d3
		move.b	width_pixels(a0),d3
		not.w	d3
		jsr	(ObjCheckLeftWallDist).l
		move.w	(sp)+,d0
		tst.w	d1
		bmi.s	locret_C2E4
		subi.l	#$10000,x_pos(a0)
		moveq	#-1,d0
		move.w	#-$40,d1

loc_C294:
	lea	(MainCharacter).w,a1 ; a1=character
	moveq	#p1_standing_bit,d6
	movem.l	d1-d4,-(sp)	; store input registers
	bsr.s	+	; first check collision with Sonic
	movem.l	(sp)+,d1-d4	; restore input registers
	lea	(Sidekick).w,a1 ; a1=character ; now check collision with Tails
	tst.b	render_flags(a1)
	bpl.w	locret_C2E4	; return if no Tails
	addq.b	#1,d6
+
		add.w	d0,x_pos(a1)
		move.w	d1,inertia(a1)
		move.w	#0,x_vel(a1)
		move.w	d0,-(sp)
		move.w	#SndID_PushBlock,d0
		jsr	(PlaySound).l ;	play pushing sound
		move.w	(sp)+,d0
		tst.b	subtype(a0)
		bmi.s	locret_C2E4
		move.w	d0,-(sp)
		jsr	(ObjCheckFloorDist).l
		move.w	(sp)+,d0
		cmpi.w	#4,d1
		ble.s	loc_C2E0
		move.w	#$400,x_vel(a0)
		tst.w	d0
		bpl.s	loc_C2D8
		neg.w	x_vel(a0)

loc_C2D8:
		move.b	#6,routine_secondary(a0)
		bra.s	locret_C2E4
; ===========================================================================

loc_C2E0:
		add.w	d1,y_pos(a0)

locret_C2E4:
		rts
; ---------------------------------------------------------------------------
; Sprite mappings - pushable blocks (MZ, LZ)
; ---------------------------------------------------------------------------
Map_PushBlock:
		binclude	"mappings/sprite/GHZ Pushable Block.bin"
	even