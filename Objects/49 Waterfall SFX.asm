		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj49_WaterSFX_Index(pc,d0.w),d1
		jmp	Obj49_WaterSFX_Index(pc,d1.w)
; ===========================================================================
Obj49_WaterSFX_Index:	offsetTable
		offsetTableEntry.w Obj49_WaterSFX_Main	; 0
		offsetTableEntry.w Obj49_WaterSFX_PlaySnd	; 2
; ===========================================================================

Obj49_WaterSFX_Main:				; XREF: Obj49_WaterSFX_Index
		addq.b	#2,routine(a0)
		move.b	#4,1(a0)

Obj49_WaterSFX_PlaySnd:				; XREF: Obj49_WaterSFX_Index
		move.b	($FFFFFE0F).w,d0
		andi.b	#$3F,d0
		bne.s	Obj49_WaterSFX_ChkDel
		move.w	#SndID_Waterfall,d0
		jsr	(PlaySound).l ;	play waterfall sound

Obj49_WaterSFX_ChkDel:
		move.w	x_pos(a0),d0
		andi.w	#$FF80,d0
		move.w	(Camera_X_pos).w,d1
		subi.w	#$80,d1
		andi.w	#$FF80,d1
		sub.w	d1,d0
		cmpi.w	#$280,d0
		bhi.w	JmpToWaterfallSFX_DeleteObject
		rts

JmpToWaterfallSFX_DeleteObject:
	jmp	(DeleteObject).l