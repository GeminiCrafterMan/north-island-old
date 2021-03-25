;=============================================================================== 
; Object 0x4F - Hidden Palace - Dinobot 
; [ Begin ]		
;===============================================================================	
Obj4F_Dinobot: ; loc_1DEAC:		
	moveq	#0,d0
	move.b	routine(a0), d0
	move.w	loc_1DEBA(pc,d0),d1
	jmp	loc_1DEBA(PC,d1)
loc_1DEBA:	offsetTable
	offsetTableEntry.w	loc_1DEC0
	offsetTableEntry.w	loc_1DF16
	offsetTableEntry.w	loc_1DFB8
loc_1DEC0:
	move.l	#Dinobot_Mappings, mappings(a0) ; loc_1DFCA
	move.w	#make_art_tile(ArtTile_Hpz_Dinobot,0,0), art_tile(a0)
	move.b	#$4, render_flags(a0)
	move.b	#$4, priority(a0)
	move.b	#$10, width_pixels(a0)
	move.b	#$0F, y_radius(a0)
	move.b	#$6, x_radius(a0)
	move.b	#$C, collision_flags(a0)
	jsr	(ObjectMoveAndFall).l	; loc_1E002
	jsr	(ObjCheckFloorDist).l		; loc_13898
	tst.w	d1
	bpl.s	loc_1DF14
	add.w	d1, y_pos(a0)
	move.w	#$0, y_vel(a0)
	addq.b	#$2, routine(a0)
	bchg	#0, status(a0)
loc_1DF14:
	rts
loc_1DF16:
	moveq	#0,d0
	move.b	routine_secondary(a0), d0
	move.w	loc_1DF5C(pc,d0),d1
	jsr	loc_1DF5C(PC,d1)
	lea	(loc_1DFBC).l, a1
	jsr	(AnimateSprite).l	; loc_1DFFC
	move.w	x_pos(a0), d0
	andi.w	#$FF80,d0
	sub.w	(Camera_X_pos_coarse).w,d0
	cmpi.w	#$280,d0
	bhi.s	loc_1DF46
	jmp	(DisplaySprite).l	; loc_1DFF0
loc_1DF46:
	lea	(Object_Respawn_Table ).w,a2
	moveq	#0,d0
	move.b	respawn_index(a0), d0
	beq.s	loc_1DF58
	bclr	#$7, $2(a2,d0)
loc_1DF58:
	jmp	(DeleteObject).l	; loc_1DFF6
loc_1DF5C:	offsetTable
	offsetTableEntry.w	loc_28F1C
	offsetTableEntry.w	loc_28F40
loc_28F1C:
	subq.w	#$1, objoff_30(a0)
	bpl.s	loc_1DF82
	addq.b	#$2, routine_secondary(a0)
	move.w	#$FF80, x_vel(a0)
	move.b	#$1, anim(a0)
	bchg	#0, status(a0)
	bne.s	loc_1DF82
	neg.w	x_vel(a0)
loc_1DF82:
	rts
loc_28F40:
	jsr	(ObjectMove).l	; loc_1E008
	jsr	(ObjCheckFloorDist).l		; loc_13898
	cmpi.w	#$FFF8,d1
	blt.s	loc_1DFA0
	cmpi.w	#$C,d1
	bge.s	loc_1DFA0
	add.w	d1, y_pos(a0)
	rts
loc_1DFA0:
	subq.b	#$2, routine_secondary(a0)
	move.w	#$3B, objoff_30(a0)
	move.w	#$0, x_vel(a0)
	move.b	#$00, anim(a0)
	rts
loc_1DFB8:
	jmp	(DeleteObject).l	; loc_1DFF6	
loc_1DFBC:
	dc.w	loc_1DFC0-loc_1DFBC
	dc.w	loc_1DFC3-loc_1DFBC
loc_1DFC0:		
	dc.b	$9, $1, $FF 
loc_1DFC3:
	dc.b	$9, $00, $1, $2, $1, $FF, $00	
Dinobot_Mappings:	
	include	"mappings/sprite/Dinobot.asm"
