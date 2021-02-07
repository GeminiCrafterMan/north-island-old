;=============================================================================== 
; Object 0x4C - Hidden Palace - Batbot
; [ Begin ]		
;=============================================================================== 
Obj4C_Batbot: ; loc_1EE68:	
	moveq	#0,d0
	move.b	routine(a0),d0
	move.w	loc_1EE76(pc,d0),d1
	jmp	loc_1EE76(PC,d1)
loc_1EE76:	offsetTable
	offsetTableEntry.w	loc_1EE7C
	offsetTableEntry.w	loc_1EEBA
	offsetTableEntry.w	loc_1EF28
loc_1EE7C:	
	move.l	#Batbot_Mappings,mappings(a0)	; loc_1F106
	move.w	#make_art_tile(ArtTile_Hpz_Batbot,0,0),art_tile(a0)
	ori.b	#$4,render_flags(a0)
	move.b	#$A,collision_flags(a0)
	move.b	#$4,priority(a0)
	move.b	#$10,width_pixels(a0)
	move.b	#$10,y_radius(a0)
	move.b	#$8,x_radius(a0)
	addq.b	#$2,routine(a0)
	move.w	y_pos(a0),objoff_2E(a0)
	rts
loc_1EEBA:
	moveq	#0,d0
	move.b	routine_secondary(a0),d0
	move.w	loc_1EEDA(pc,d0),d1
	jsr	loc_1EEDA(PC,d1)
	bsr.s	loc_1EEE0
	lea	(loc_1F0D2).l,a1
	jsr	(AnimateSprite).l	; loc_1F2E2
	jmp	(MarkObjGone).l	; loc_1F2DC
loc_1EEDA:	offsetTable
	offsetTableEntry.w	loc_1F046
	offsetTableEntry.w	loc_1F07E
	offsetTableEntry.w	loc_1F08A
loc_1EEE0:
	move.b	objoff_3F(a0),d0
	jsr	(CalcSine).l	; loc_320A
	asr.w	#$6,d0
	add.w	objoff_2E(a0),d0
	move.w	d0,y_pos(a0)
	addq.b	#$4,objoff_3F(a0)
	rts
loc_1EEFA:	
	move.w	x_pos(a0),d0
	sub.w	(MainCharacter+x_pos).w,d0
	cmpi.w	#$80,d0
	bgt.s	loc_1EF26
	cmpi.w	#$FF80,d0
	blt.s	loc_1EF26
	move.b	#$4,routine_secondary(a0)
	move.b	#$2,anim(a0)
	move.w	#$8,objoff_2A(a0)
	move.b	#$00,objoff_3E(a0)
loc_1EF26:
	rts
loc_1EF28:
	bsr.w	loc_1F026
	bsr.w	loc_1EFC8
	bsr.s	loc_1EF48
	jsr	(ObjectMove).l	; loc_1F2E8
	lea	(loc_1F0D2).l,a1
	jsr	(AnimateSprite).l	; loc_1F2E2
	jmp	(MarkObjGone).l	; loc_1F2DC
loc_1EF48:
	tst.b	objoff_3D(a0)
	beq.s	loc_1EF5A
	bset	#$00,render_flags(a0)
	bset	#$00,status(a0)
loc_1EF5A:
	rts
loc_1EF5C:	
	subi.w	#$1,objoff_2C(a0)
	bpl.s	loc_1EFA6
	move.w	x_pos(a0),d0
	sub.w	(MainCharacter+x_pos).w,d0
	cmpi.w	#$60,d0
	bgt.s	loc_1EFA8
	cmpi.w	#$FFA0,d0
	blt.s	loc_1EFA8
	tst.w	d0
	beq.s	loc_1EFA6
	bpl.s	loc_1EF80
	st	objoff_3D(a0)
	cmpi.b	#1,objoff_30(a0)
	bne.s	+
	sf	objoff_3D(a0)
-
	moveq	#1,d0
	rts
loc_1EF80:
	cmpi.b	#-1,objoff_30(a0)
	beq.s	-
+
	moveq	#1,d0
	tst.b	objoff_3D(a0)
	bne.s	+
	moveq	#-1,d0
+
	add.b	d0,objoff_30(a0)
	move.b	#$40,objoff_3F(a0)
	move.w	#$400,objoff_14(a0)
	move.b	#$4,routine(a0)
	move.b	#$3,anim(a0)
	move.w	#$C,objoff_2A(a0)
	move.b	#$1,objoff_3E(a0)
	moveq	#0,d0
loc_1EFA6:
	rts
loc_1EFA8:
	cmpi.w	#$80,d0
	bgt.s	loc_1EFB4
	cmpi.w	#$FF80,d0
	bgt.s	loc_1EFA6
loc_1EFB4:
	move.b	#$1,anim(a0)
	move.b	#$00,routine_secondary(a0)
	move.w	#$18,objoff_2A(a0)
	rts
loc_1EFC8:
	tst.b	objoff_3D(a0)
	bne.s	loc_1EFE2
	moveq	#0,d0
	move.b	objoff_3F(a0),d0
	cmpi.w	#$C0,d0
	bge.s	loc_1EFF6
	addq.b	#$2,d0
	move.b	d0,objoff_3F(a0)
	rts
loc_1EFE2:
	moveq	#0,d0
	move.b	objoff_3F(a0),d0
	cmpi.w	#$C0,d0
	beq.s	loc_1EFF6
	subq.b	#$2,d0
	move.b	d0,objoff_3F(a0)
	rts
loc_1EFF6:
	sf	objoff_3D(a0)
	move.b	#$00,anim(a0)
	move.b	#$2,routine(a0)
	move.b	#$00,routine_secondary(a0)
	move.w	#$18,objoff_2A(a0)
	move.b	#$1,anim(a0)
	bclr	#$00,render_flags(a0)
	bclr	#$00,status(a0)
	rts
loc_1F026:
	move.b	objoff_3F(a0),d0
	jsr	(CalcSine).l	; loc_320A
	muls.w	objoff_14(a0),d1
	asr.l	#$8,d1
	move.w	d1,x_vel(a0)
	muls.w	objoff_14(a0),d0
	asr.l	#$8,d0
	move.w	d0,y_vel(a0)
	rts
loc_1F046:
	subi.w	#$1,objoff_2A(a0)
	bpl.s	loc_1F07C
	bsr.w	loc_1EEFA
	beq.s	loc_1F07C
	jsr	(RandomNumber).l	; loc_31E4
	andi.b	#$FF,d0
	bne.s	loc_1F07C
	move.w	#$18,objoff_2A(a0)
	move.w	#$1E,objoff_2C(a0)
	addq.b	#$2,routine_secondary(a0)
	move.b	#$1,anim(a0)
	move.b	#$00,objoff_3E(a0)
loc_1F07C:
	rts
loc_1F07E:
	subq.b	#$1,objoff_2A(a0)
	bpl.s	loc_1F088
	subq.b	#$2,routine_secondary(a0)
loc_1F088:
	rts
loc_1F08A:
	bsr.w	loc_1EF5C
	beq.s	loc_1F0D0
	subi.w	#$1,objoff_2A(a0)
	bne.s	loc_1F0D0
	move.b	objoff_3E(a0),d0
	beq.s	loc_1F0B8
	move.b	#$00,objoff_3E(a0)
	move.w	#$8,objoff_2A(a0)
	bset	#$00,render_flags(a0)
	bset	#$00,status(a0)
	rts
loc_1F0B8:
	move.b	#$1,objoff_3E(a0)
	move.w	#$C,objoff_2A(a0)
	bclr	#$00,render_flags(a0)
	bclr	#$00,status(a0)
loc_1F0D0:
	rts
loc_1F0D2:	offsetTable
	offsetTableEntry.w	loc_1F0DA
	offsetTableEntry.w	loc_1F0DE
	offsetTableEntry.w	loc_1F0ED
	offsetTableEntry.w	loc_1F0FE
loc_1F0DA:	
	dc.b	$1, $00, $5, $FF
loc_1F0DE:
	dc.b	$1, $1, $6, $1, $6, $2, $7, $2, $7, $1, $6, $1, $6, $FD, $00
loc_1F0ED:
	dc.b	$1, $1, $6, $1, $6, $2, $7, $3, $8, $4, $9, $4, $9, $3, $8, $FE
	dc.b	$A
loc_1F0FE:
	dc.b	$3, $A, $B, $C, $D, $E, $FF, $00
Batbot_Mappings:
	include	"mappings/sprite/Batbot.asm"