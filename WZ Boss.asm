; ---------------------------------------------------------------------------
; Object 3D - Eggman (GHZ)
; ---------------------------------------------------------------------------

Obj7E:					; XREF: Obj_Index
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj7E_Index(pc,d0.w),d1
		jmp	Obj7E_Index(pc,d1.w)
; ===========================================================================
Obj7E_Index:	dc.w Obj7E_Main-Obj7E_Index      ;0
		dc.w Obj7E_ShipMain-Obj7E_Index  ;2
		dc.w Obj7E_FaceMain-Obj7E_Index  ;4
		dc.w Obj7E_FlameMain-Obj7E_Index ;6

Obj7E_ObjData:	dc.b 2,	0		; routine counter, animation
		dc.b 4,	1
		dc.b 6,	7
; ===========================================================================

Obj7E_Main:				; XREF: Obj7E_Index
		lea	(Obj7E_ObjData).l,a2
		movea.l	a0,a1
		moveq	#2,d1
		bra.s	Obj7E_LoadBoss
; ===========================================================================

Obj7E_Loop:
		jsr	(SingleObjLoad2).l
		bne.s	loc_17772

Obj7E_LoadBoss:				; XREF: Obj7E_Main
		move.b	(a2)+,routine(a1)
		_move.b	#ObjID_WZBoss,id(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.l	#Map_Eggman,mappings(a1)
		move.w	#make_art_tile(ArtTile_ArtNem_Eggpod_1,0,0),art_tile(a1)
		move.b	#4,render_flags(a1)
		move.b	#$20,width_pixels(a1)
		move.b	#3,priority(a1)
		move.b	(a2)+,anim(a1)
		move.l	a0,$34(a1)
		dbf	d1,Obj7E_Loop	; repeat sequence 2 more times

loc_17772:
		move.w	x_pos(a0),$30(a0)
		move.w	y_pos(a0),$38(a0)
		move.b	#$F,collision_flags(a0)
		move.b	#8,collision_property(a0)	; set number of	hits to	8

Obj7E_ShipMain:				; XREF: Obj7E_Index
		moveq	#0,d0
		move.b	routine_secondary(a0),d0
		move.w	Obj7E_ShipIndex(pc,d0.w),d1
		jsr	Obj7E_ShipIndex(pc,d1.w)
		lea	(Ani_Eggman).l,a1
		jsr	(AnimateSprite).l
		move.b	status(a0),d0
		andi.b	#3,d0
		andi.b	#$FC,render_flags(a0)
		or.b	d0,render_flags(a0)
		jmp	(DisplaySprite).l
; ===========================================================================
Obj7E_ShipIndex:dc.w Obj7E_ShipStart-Obj7E_ShipIndex
		dc.w Obj7E_MakeBall-Obj7E_ShipIndex
		dc.w Obj7E_ShipMove-Obj7E_ShipIndex
		dc.w loc_17954-Obj7E_ShipIndex
		dc.w loc_1797A-Obj7E_ShipIndex
		dc.w loc_179AC-Obj7E_ShipIndex
		dc.w loc_179F6-Obj7E_ShipIndex
; ===========================================================================

Obj7E_ShipStart:			; XREF: Obj7E_ShipIndex
		move.w	#$100,y_vel(a0)	; move ship down
		bsr.w	BossMove
		cmpi.w	#$338,$38(a0)
		bne.s	locs1_177E6
		move.w	#0,y_vel(a0)	; stop ship
		addq.b	#2,routine_secondary(a0)	; goto next routine

locs1_177E6:
		move.b	$3F(a0),d0
		jsr	(CalcSine).l
		asr.w	#6,d0
		add.w	$38(a0),d0
		move.w	d0,y_pos(a0)
		move.w	$30(a0),x_pos(a0)
		addq.b	#2,$3F(a0)
		cmpi.b	#8,routine_secondary(a0)
		bcc.s	locret_1784A
		tst.b	status(a0)
		bmi.s	loc_1784C
		tst.b	collision_flags(a0)
		bne.s	locret_1784A
		tst.b	$3E(a0)
		bne.s	Obj7E_ShipFlash
		move.b	#$20,$3E(a0)	; set number of	times for ship to flash
		move.w	#SndID_BossHit,d0
		jsr	(PlaySound).l ;	play boss damage sound

Obj7E_ShipFlash:
		lea	(Normal_palette_line2+2).w,a1 ; load	2nd pallet, 2nd	entry
		moveq	#0,d0		; move 0 (black) to d0
		tst.w	(a1)
		bne.s	loc_1783C
		move.w	#$EEE,d0	; move 0EEE (white) to d0

loc_1783C:
		move.w	d0,(a1)		; load colour stored in	d0
		subq.b	#1,$3E(a0)
		bne.s	locret_1784A
		move.b	#$F,collision_flags(a0)

locret_1784A:
		rts
; ===========================================================================

loc_1784C:				; XREF: locs1_177E6
		moveq	#100,d0
		jsr		AddPoints
		move.b	#8,routine_secondary(a0)
		move.w	#$B3,$3C(a0)
		rts

; ---------------------------------------------------------------------------
; Defeated boss	subroutine
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


BossDefeated:
		move.b	($FFFFFE0F).w,d0
		andi.b	#7,d0
		bne.s	locret_178A2
		jsr	(SingleObjLoad).l
		bne.s	locret_178A2
		_move.b	#ObjID_BossExplosion,id(a1)	; load explosion object
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		jsr	(RandomNumber).l
		move.w	d0,d1
		moveq	#0,d1
		move.b	d0,d1
		lsr.b	#2,d1
		subi.w	#$20,d1
		add.w	d1,x_pos(a1)
		lsr.w	#8,d0
		lsr.b	#3,d0
		add.w	d0,y_pos(a1)

locret_178A2:
		rts
; End of function BossDefeated

; ---------------------------------------------------------------------------
; Subroutine to	move a boss
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


BossMove:
		move.l	$30(a0),d2
		move.l	$38(a0),d3
		move.w	x_vel(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d2
		move.w	y_vel(a0),d0
		ext.l	d0
		asl.l	#8,d0
		add.l	d0,d3
		move.l	d2,$30(a0)
		move.l	d3,$38(a0)
		rts
; End of function BossMove

; ===========================================================================

Obj7E_MakeBall:				; XREF: Obj7E_ShipIndex
		move.w	#-$100,x_vel(a0)
		move.w	#-$40,y_vel(a0)
		bsr.w	BossMove
		cmpi.w	#$2A00,$30(a0)
		bne.s	loc_17916
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		addq.b	#2,routine_secondary(a0)
		jsr	(SingleObjLoad2).l
		bne.s	loc_17910
		_move.b	#ObjID_WZSaw,id(a1)	; load swinging	ball object
		move.w	$30(a0),x_pos(a1)
		move.w	$38(a0),y_pos(a1)
		move.l	a0,$34(a1)

loc_17910:
		move.w	#$77,$3C(a0)

loc_17916:
		bra.w	locs1_177E6
; ===========================================================================

Obj7E_ShipMove:				; XREF: Obj7E_ShipIndex
		subq.w	#1,$3C(a0)
		bpl.s	Obj7E_Reverse
		addq.b	#2,routine_secondary(a0)
		move.w	#$3F,$3C(a0)
		move.w	#$100,x_vel(a0)	; move the ship	sideways
		cmpi.w	#$2A00,$30(a0)
		bne.s	Obj7E_Reverse
		move.w	#$7F,$3C(a0)
		move.w	#$40,x_vel(a0)

Obj7E_Reverse:
		btst	#0,status(a0)
		bne.s	loc_17950
		neg.w	x_vel(a0)		; reverse direction of the ship

loc_17950:
		bra.w	locs1_177E6
; ===========================================================================

loc_17954:				; XREF: Obj7E_ShipIndex
		subq.w	#1,$3C(a0)
		bmi.s	loc_17960
		bsr.w	BossMove
		bra.s	loc_17976
; ===========================================================================

loc_17960:
		bchg	#0,status(a0)
		move.w	#$3F,$3C(a0)
		subq.b	#2,routine_secondary(a0)
		move.w	#0,x_vel(a0)

loc_17976:
		bra.w	locs1_177E6
; ===========================================================================

loc_1797A:				; XREF: Obj7E_ShipIndex
		subq.w	#1,$3C(a0)
		bmi.s	loc_17984
		bra.w	BossDefeated
; ===========================================================================

loc_17984:
		bset	#0,status(a0)
		bclr	#7,status(a0)
		clr.w	x_vel(a0)
		addq.b	#2,routine_secondary(a0)
		move.w	#-$26,$3C(a0)
		tst.b	($FFFFF7A7).w
		bne.s	locret_179AA
		move.b	#1,($FFFFF7A7).w

locret_179AA:
		rts
; ===========================================================================

loc_179AC:				; XREF: Obj7E_ShipIndex
		addq.w	#1,$3C(a0)
		beq.s	loc_179BC
		bpl.s	loc_179C2
		addi.w	#$18,y_vel(a0)
		bra.s	loc_179EE
; ===========================================================================

loc_179BC:
		clr.w	y_vel(a0)
		bra.s	loc_179EE
; ===========================================================================

loc_179C2:
		cmpi.w	#$30,$3C(a0)
		bcs.s	loc_179DA
		beq.s	loc_179E0
		cmpi.w	#$38,$3C(a0)
		bcs.s	loc_179EE
		addq.b	#2,routine_secondary(a0)
		bra.s	loc_179EE
; ===========================================================================

loc_179DA:
		subq.w	#8,y_vel(a0)
		bra.s	loc_179EE
; ===========================================================================

loc_179E0:
		clr.w	y_vel(a0)
		jsr	(PlayLevelMusic).l

loc_179EE:
		bsr.w	BossMove
		bra.w	locs1_177E6
; ===========================================================================

loc_179F6:				; XREF: Obj7E_ShipIndex
		move.w	#$400,x_vel(a0)
		move.w	#-$40,y_vel(a0)
		cmpi.w	#$2AC0,(Camera_Max_X_pos).w
		beq.s	loc_17A10
		addq.w	#2,(Camera_Max_X_pos).w
		bra.s	loc_17A16
; ===========================================================================

loc_17A10:
		tst.b	render_flags(a0)
		bpl.s	Obj7E_ShipDel

loc_17A16:
		bsr.w	BossMove
		bra.w	locs1_177E6
; ===========================================================================

Obj7E_ShipDel:
		jmp	(DeleteObject).l
; ===========================================================================

Obj7E_FaceMain:				; XREF: Obj7E_Index
		moveq	#0,d0
		moveq	#1,d1
		movea.l	$34(a0),a1
		move.b	routine_secondary(a1),d0
		subq.b	#4,d0
		bne.s	loc_17A3E
		cmpi.w	#$2A00,$30(a1)
		bne.s	loc_17A46
		moveq	#4,d1

loc_17A3E:
		subq.b	#6,d0
		bmi.s	loc_17A46
		moveq	#$A,d1
		bra.s	loc_17A5A
; ===========================================================================

loc_17A46:
		tst.b	collision_flags(a1)
		bne.s	loc_17A50
		moveq	#5,d1
		bra.s	loc_17A5A
; ===========================================================================

loc_17A50:
		cmpi.b	#4,(Object_RAM+routine).w
		bcs.s	loc_17A5A
		moveq	#4,d1

loc_17A5A:
		move.b	d1,anim(a0)
		subq.b	#2,d0
		bne.s	Obj7E_FaceDisp
		move.b	#6,anim(a0)
		tst.b	render_flags(a0)
		bpl.s	Obj7E_FaceDel

Obj7E_FaceDisp:
		bra.s	Obj7E_Display
; ===========================================================================

Obj7E_FaceDel:
		jmp	(DeleteObject).l
; ===========================================================================

Obj7E_FlameMain:			; XREF: Obj7E_Index
		move.b	#7,anim(a0)
		movea.l	$34(a0),a1
		cmpi.b	#$C,routine_secondary(a1)
		bne.s	loc_17A96
		move.b	#$B,anim(a0)
		tst.b	render_flags(a0)
		bpl.s	Obj7E_FlameDel
		bra.s	Obj7E_FlameDisp
; ===========================================================================

loc_17A96:
		move.w	x_vel(a1),d0
		beq.s	Obj7E_FlameDisp
		move.b	#8,anim(a0)

Obj7E_FlameDisp:
		bra.s	Obj7E_Display
; ===========================================================================

Obj7E_FlameDel:
		jmp	(DeleteObject).l
; ===========================================================================

Obj7E_Display:				; XREF: Obj7E_FaceDisp; Obj7E_FlameDisp
		movea.l	$34(a0),a1
		move.w	x_pos(a1),x_pos(a0)
		move.w	y_pos(a1),y_pos(a0)
		move.b	status(a1),status(a0)
		lea	(Ani_Eggman).l,a1
		jsr	(AnimateSprite).l
		move.b	status(a0),d0
		andi.b	#3,d0
		andi.b	#$FC,render_flags(a0)
		or.b	d0,render_flags(a0)
		jmp	(DisplaySprite).l
; ===========================================================================
; ---------------------------------------------------------------------------
; Object 48 - ball on a	chain that Eggman swings (GHZ)
; ---------------------------------------------------------------------------

Obj5E:					; XREF: Obj_Index
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj5E_Index(pc,d0.w),d1
		jmp	Obj5E_Index(pc,d1.w)
; ===========================================================================
Obj5E_Index:	dc.w Obj5E_Main-Obj5E_Index
		dc.w Obj5E_Base-Obj5E_Index
		dc.w Obj5E_Display2-Obj5E_Index
		dc.w loc_17C68-Obj5E_Index
		dc.w Obj5E_ChkVanish-Obj5E_Index
; ===========================================================================

Obj5E_Main:				; XREF: Obj5E_Index
		addq.b	#2,routine(a0)
		move.w	#$4080,angle(a0)
		move.w	#-$200,$3E(a0)
		move.l	#Map_BossItems,mappings(a0)
		move.w	#make_art_tile(ArtTile_ArtNem_Snailer,0,0),art_tile(a0)	; use different	graphics
		lea	subtype(a0),a2
		move.b	#0,(a2)+
		moveq	#5,d1
		movea.l	a0,a1
		bra.s	loc_17B60
; ===========================================================================

Obj5E_MakeLinks:
		jsr	(SingleObjLoad2).l
		bne.s	Obj5E_MakeBall
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		_move.b	#ObjID_WZSaw,id(a1)	; load chain link object
		move.b	#6,routine(a1)
		move.l	#Map_Swing_GHZ,mappings(a1)
		move.w	#make_art_tile(ArtTile_ArtNem_BreakWall,0,0),art_tile(a1)
		move.b	#1,mapping_frame(a1)
		addq.b	#1,subtype(a0)

loc_17B60:				; XREF: Obj5E_Main
		move.w	a1,d5
		subi.w	#$B000,d5
		lsr.w	#6,d5
		andi.w	#$7F,d5
		move.b	d5,(a2)+
		move.b	#4,render_flags(a1)
		move.b	#8,width_pixels(a1)
		move.b	#6,priority(a1)
		move.l	$34(a0),$34(a1)
		dbf	d1,Obj5E_MakeLinks ; repeat sequence 5 more times

Obj5E_MakeBall:
		move.b	#8,routine(a1)
		move.l	#Map_Obj5E,mappings(a1) ; load	different mappings for final link
		move.w	#make_art_tile(ArtTile_ArtNem_Coconuts,0,0),art_tile(a1)	; use different	graphics
		move.b	#1,mapping_frame(a1)
		move.b	#5,priority(a1)
		move.b	#$81,collision_flags(a1)	; make object hurt Sonic
		rts	
; ===========================================================================

Obj5E_PosData:	dc.b 0,	$10, $20, $30, $40, $60	; y-position data for links and	giant ball

; ===========================================================================

Obj5E_Base:				; XREF: Obj5E_Index
		lea	(Obj5E_PosData).l,a3
		lea	subtype(a0),a2
		moveq	#0,d6
		move.b	(a2)+,d6

loc_17BC6:
		moveq	#0,d4
		move.b	(a2)+,d4
		lsl.w	#6,d4
		addi.l	#$FFB000,d4
		movea.l	d4,a1
		move.b	(a3)+,d0
		cmp.b	$3C(a1),d0
		beq.s	loc_17BE0
		addq.b	#1,$3C(a1)

loc_17BE0:
		dbf	d6,loc_17BC6

		cmp.b	$3C(a1),d0
		bne.s	loc_17BFA
		movea.l	$34(a0),a1
		cmpi.b	#6,routine_secondary(a1)
		bne.s	loc_17BFA
		addq.b	#2,routine(a0)

loc_17BFA:
		cmpi.w	#$20,$32(a0)
		beq.s	Obj5E_Display
		addq.w	#1,$32(a0)

Obj5E_Display:
		bsr.w	sub_17C2A
		move.b	angle(a0),d0
		jsr	(Obj5F_Move2).l
		jmp	(DisplaySprite).l
; ===========================================================================

Obj5E_Display2:				; XREF: Obj5E_Index ; it reaches here.
		bsr.w	sub_17C2A
		jsr	(Obj5E_Move).l
		jmp	(DisplaySprite).l

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


sub_17C2A:				; XREF: Obj5E_Display; Obj5E_Display2
		movea.l	$34(a0),a1
		addi.b	#$20,anim_frame(a0)
		bcc.s	loc_17C3C
		bchg	#0,mapping_frame(a0)

loc_17C3C:
		move.w	x_pos(a1),$3A(a0)
		move.w	y_pos(a1),d0
		add.w	$32(a0),d0
		move.w	d0,$38(a0)
		move.b	status(a1),status(a0)
		tst.b	status(a1)
		bpl.s	locret_17C66
		_move.b	#ObjID_BossExplosion,id(a0)
		move.b	#0,routine(a0)

locret_17C66:
		rts	
; End of function sub_17C2A

; ===========================================================================

loc_17C68:				; XREF: Obj5E_Index
		movea.l	$34(a0),a1
		tst.b	status(a1)
		bpl.s	Obj5E_Display3
		_move.b	#ObjID_BossExplosion,id(a0)
		move.b	#0,routine(a0)

Obj5E_Display3:
		jmp	(DisplaySprite).l
; ===========================================================================

Obj5E_ChkVanish:			; XREF: Obj5E_Index
		moveq	#0,d0
		tst.b	mapping_frame(a0)
		bne.s	Obj5E_Vanish
		addq.b	#1,d0

Obj5E_Vanish:
		move.b	d0,mapping_frame(a0)
		movea.l	$34(a0),a1
		tst.b	status(a1)
		bpl.s	Obj5E_Display4
		move.b	#0,collision_flags(a0)
		bsr.w	BossDefeated
		subq.b	#1,$3C(a0)
		bpl.s	Obj5E_Display4
		move.b	#ObjID_BossExplosion,(a0)
		move.b	#0,routine(a0)

Obj5E_Display4:
		jmp	(DisplaySprite).l
; ===========================================================================
; ---------------------------------------------------------------------------
; Animation script - Eggman (bosses)
; ---------------------------------------------------------------------------
Ani_Eggman:	offsetTable
		offsetTableEntry.w byte_17CD4
		offsetTableEntry.w byte_17CD8
		offsetTableEntry.w byte_17CDC
		offsetTableEntry.w byte_17CE0
		offsetTableEntry.w byte_17CE4
		offsetTableEntry.w byte_17CE8
		offsetTableEntry.w byte_17CEC
		offsetTableEntry.w byte_17CF0
		offsetTableEntry.w byte_17CF4
		offsetTableEntry.w byte_17CF8
		offsetTableEntry.w byte_17CFC
		offsetTableEntry.w byte_17D00
byte_17CD4:	dc.b $F, 0, $FF, 0
	rev02even
byte_17CD8:	dc.b 5,	1, 2, $FF
	rev02even
byte_17CDC:	dc.b 3,	1, 2, $FF
	rev02even
byte_17CE0:	dc.b 1,	1, 2, $FF
	rev02even
byte_17CE4:	dc.b 4,	3, 4, $FF
	rev02even
byte_17CE8:	dc.b $1F, 5, 1,	$FF
	rev02even
byte_17CEC:	dc.b 3,	6, 1, $FF
	rev02even
byte_17CF0:	dc.b $F, $A, $FF, 0
	rev02even
byte_17CF4:	dc.b 3,	8, 9, $FF
	rev02even
byte_17CF8:	dc.b 1,	8, 9, $FF
	rev02even
byte_17CFC:	dc.b $F, 7, $FF, 0
	rev02even
byte_17D00:	dc.b 2,	9, 8, $B, $C, $B, $C, 9, 8, $FE, 2, 0
	even

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj5E_Move:				; XREF: Obj48_Display2
		tst.b	$3D(a0)
		bne.s	loc_7B9C
		move.w	$3E(a0),d0
		addq.w	#8,d0
		move.w	d0,$3E(a0)
		add.w	d0,angle(a0)
		cmpi.w	#$200,d0
		bne.s	loc_7BB6
		move.b	#1,$3D(a0)
		bra.s	loc_7BB6
; ===========================================================================

loc_7B9C:
		move.w	$3E(a0),d0
		subq.w	#8,d0
		move.w	d0,$3E(a0)
		add.w	d0,angle(a0)
		cmpi.w	#-$200,d0
		bne.s	loc_7BB6
		move.b	#0,$3D(a0)

loc_7BB6:
		move.b	angle(a0),d0
; End of function Obj5E_Move

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj5F_Move2:				; XREF: Obj5F_Move; Obj48_Display
		jsr		CalcSine
		move.w	$38(a0),d2
		move.w	$3A(a0),d3
		lea	subtype(a0),a2
		moveq	#0,d6
		move.b	(a2)+,d6

loc_7BCE:
		moveq	#0,d4
		move.b	(a2)+,d4
		lsl.w	#6,d4
		addi.l	#$FFFFB000,d4
		movea.l	d4,a1
		moveq	#0,d4
		move.b	$3C(a1),d4
		move.l	d4,d5
		muls.w	d0,d4
		asr.l	#8,d4
		muls.w	d1,d5
		asr.l	#8,d5
		add.w	d2,d4
		add.w	d3,d5
		move.w	d4,y_pos(a1)
		move.w	d5,x_pos(a1)
		dbf	d6,loc_7BCE
		rts	
; End of function Obj5F_Move2

; ---------------------------------------------------------------------------
; Sprite mappings - a lot of stuff...
; ---------------------------------------------------------------------------
Map_Eggman:		include	"mappings/sprite/S1Egg.asm"
	even
Map_BossItems:	include	"mappings/sprite/Boss items.asm"
	even
Map_Swing_GHZ:		include	"mappings/sprite/S1Obj15.asm"
	even
Map_Obj5E:		include "mappings/sprite/S1Obj48.asm"
	even
ArtNem_S1Eggman:binclude	"art/nemesis/S1Eggman.bin"
	even
ArtNem_WZSaw:	binclude	"art/nemesis/WZ saw.bin"
	even
ArtNem_S1BossExtra:	binclude	"art/nemesis/bossxtra.bin"
	even
ArtNem_Swing_GHZ:	binclude	"art/nemesis/ghzswing.bin"
	even