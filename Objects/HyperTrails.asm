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
	cmpi.w	#1,(Player_mode).w
	bgt.s	.tailscheck
	move.l	#MapUnc_SuperSonic,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtUnc_Sonic,0,0),art_tile(a0)
    bra.s   .done
.tailscheck:
	cmpi.w	#2,(Player_mode).w
	bne.s	.mightycheck
	move.l	#MapUnc_SuperTails,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtUnc_Tails,0,0),art_tile(a0)
    bra.s   .done
.mightycheck:
	cmpi.w  #5,(Player_mode).w
	blt.s	.knuxcheck
	move.l	#MapUnc_Mighty,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtUnc_Sonic,0,0),art_tile(a0)
	bra.s	.done
.knuxcheck:
	cmpi.w	#3,(Player_mode).w
	blt.s	.done
	move.l	#MapUnc_SuperKnuckles,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtUnc_Sonic,0,0),art_tile(a0)
.done:
		move.w	#$100,priority(a0)
		move.b	#$18,width_pixels(a0)
;		move.b	#$18,height_pixels(a0)
		move.b	#4,render_flags(a0)
		addq.b  #2,routine(a0)

Obj_HyperSonicKnux_Trail_Main:
		tst.b	(Super_Sonic_flag).w	; Are we in non-super/hyper state?
		beq.s	.jmptoDeleteObject		; If so, branch and delete
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
		move.b	(MainCharacter+mapping_frame).w,mapping_frame(a0)	; Use player's current mapping_frame
		move.b	(MainCharacter+render_flags).w,render_flags(a0)	; Use player's current render_flags
		move.w	(MainCharacter+priority).w,priority(a0)		; Use player's current priority
		jmp		DisplaySprite
.jmptoDeleteObject:
		jmp	DeleteObject		; If so, branch and delete