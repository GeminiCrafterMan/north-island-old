	moveq	#0,d0
	move.b  routine(a0), d0
	move.w  Trail_Index(pc,d0),d1
	jmp	 Trail_Index(PC,d1)
; ===========================================================================
Trail_Index: offsetTable
		offsetTableEntry.w	Obj_HyperSonicKnux_Trail_Init ; 0
		offsetTableEntry.w	Obj_HyperSonicKnux_Trail_Main ; 2
; ===========================================================================
Obj_HyperSonicKnux_Trail_Init:
		move.w	#$100,priority(a0)
		move.b	#$18,width_pixels(a0)
;		move.b	#$18,height_pixels(a0)
		move.b	#4,render_flags(a0)
		addq.b  #2,routine(a0)

Obj_HyperSonicKnux_Trail_Main:
		tst.b	(Super_Sonic_flag).w	; Are we in non-super/hyper state?
		beq.w	.jmptoDeleteObject		; If so, branch and delete
		movea.w	parent(a0),a2
		moveq	#$C,d1				; This will be subtracted from Sonic_Pos_Record_Index, giving the object an older entry
		btst	#0,(Timer_frames+1).w	; Even frame? (Think of it as 'every other number' logic)
		beq.s	.evenframe			; If so, branch
		moveq	#$14,d1				; On every other frame, use a different number to subtract, giving the object an even older entry

	.evenframe:
		cmpi.w	#2,(Player_mode).w
		bne.s	.nottails
		move.w	(Tails_Pos_Record_Index).w,d0
		lea	(Tails_Pos_Record_Buf).w,a1
        bra.s   .cont
	.nottails:
		move.w	(Sonic_Pos_Record_Index).w,d0
		lea	(Sonic_Pos_Record_Buf).w,a1
	.cont:
		sub.b	d1,d0
		lea	(a1,d0.w),a1
		move.w	(a1)+,x_pos(a0)			; Use previous player x_pos
		move.w	(a1)+,y_pos(a0)			; Use previous player y_pos
		cmpi.w	#2,(Player_mode).w
		bne.s	.nottails2
		lea	(Sonic_Stat_Record_Buf).w,a1
        bra.s .cont2
	.nottails2:
		lea	(Sonic_Stat_Record_Buf).w,a1
	.cont2:
;		move.b	3(a1,d0.w),art_tile(a0)
		move.l	mappings(a2),mappings(a0)	; Load mappings
		move.w	art_tile(a2),art_tile(a0)
		move.b	mapping_frame(a2),mapping_frame(a0)	; Use current mapping_frame
		move.b	render_flags(a2),render_flags(a0)	; Use current render_flags
		move.w	priority(a2),priority(a0)		; Use current priority
		jsr		DisplaySprite
		cmpi.w	#2,(Player_mode).w
		bne.s	.nottails3
		tst.b	(Tails_Trails+id).w
		bne.s	.nottails3
		move.b	#ObjID_HyperTrail,(Tails_Trails+id).w ; load Obj7E (super sonic stars object) at $FFFFD040
		move.w	#Tails_Tails,(Tails_Trails+parent).w
	.nottails3:
		rts
.jmptoDeleteObject:
		jmp	DeleteObject		; If so, branch and delete