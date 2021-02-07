    if newtronEnable=0	; checksum code
		jmp	ObjNull
	endif
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj42_Newtron_Index(pc,d0.w),d1
		jmp	Obj42_Newtron_Index(pc,d1.w)
; ===========================================================================
Obj42_Newtron_Index:	dc.w Obj42_Newtron_Main-Obj42_Newtron_Index
		dc.w Obj42_Newtron_Action-Obj42_Newtron_Index
		dc.w Obj42_Newtron_Delete-Obj42_Newtron_Index
; ===========================================================================

Obj42_Newtron_Main:				; XREF: Obj42_Newtron_Index
		addq.b	#2,routine(a0)
		move.l	#Map_Obj42_Newtron,4(a0)
		move.w	#$49B,2(a0)
		move.b	#4,1(a0)
		move.b	#4,priority(a0)
		move.b	#$14,width_pixels(a0)
		move.b	#$10,y_radius(a0)
		move.b	#8,x_radius(a0)

Obj42_Newtron_Action:				; XREF: Obj42_Newtron_Index
		moveq	#0,d0
		move.b	routine_secondary(a0),d0
		move.w	Obj42_Newtron_Index2(pc,d0.w),d1
		jsr	Obj42_Newtron_Index2(pc,d1.w)
		lea	(Ani_Obj42_Newtron).l,a1
		jsr		AnimateSprite
		jmp		MarkObjGone
; ===========================================================================
Obj42_Newtron_Index2:	dc.w Obj42_Newtron_ChkDist-Obj42_Newtron_Index2
		dc.w Obj42_Newtron_Type00-Obj42_Newtron_Index2
		dc.w Obj42_Newtron_MatchFloor-Obj42_Newtron_Index2
		dc.w Obj42_Newtron_Speed-Obj42_Newtron_Index2
		dc.w Obj42_Newtron_Type01-Obj42_Newtron_Index2
; ===========================================================================

Obj42_Newtron_ChkDist:				; XREF: Obj42_Newtron_Index2
		bset	#0,status(a0)
		move.w	(Object_RAM+x_pos).w,d0
		sub.w	x_pos(a0),d0
		bcc.s	loc_DDEA
		neg.w	d0
		bclr	#0,status(a0)

loc_DDEA:
		cmpi.w	#$80,d0		; is Sonic within $80 pixels of	the newtron?
		bcc.s	locret_DE12	; if not, branch
		addq.b	#2,routine_secondary(a0)
		move.b	#1,anim(a0)
		tst.b	subtype(a0)		; check	object type
		beq.s	locret_DE12	; if type is 00, branch
		move.w	#$249B,2(a0)
		move.b	#8,routine_secondary(a0)	; run type 01 newtron subroutine
		move.b	#4,anim(a0)	; use different	animation

locret_DE12:
		rts
; ===========================================================================

Obj42_Newtron_Type00:				; XREF: Obj42_Newtron_Index2
		cmpi.b	#4,mapping_frame(a0)	; has "appearing" animation finished?
		bcc.s	Obj42_Newtron_Fall	; is yes, branch
		bset	#0,status(a0)
		move.w	(Object_RAM+x_pos).w,d0
		sub.w	x_pos(a0),d0
		bcc.s	locret_DE32
		bclr	#0,status(a0)

locret_DE32:
		rts
; ===========================================================================

Obj42_Newtron_Fall:				; XREF: Obj42_Newtron_Type00
		cmpi.b	#1,mapping_frame(a0)
		bne.s	loc_DE42
		move.b	#$C,collision_flags(a0)

loc_DE42:
		jsr		ObjectMoveAndFall
		jsr	ObjCheckFloorDist
		tst.w	d1		; has newtron hit the floor?
		bpl.s	locret_DE86	; if not, branch
		add.w	d1,y_pos(a0)
		move.w	#0,y_vel(a0)	; stop newtron falling
		addq.b	#2,routine_secondary(a0)
		move.b	#2,anim(a0)
		btst	#5,2(a0)
		beq.s	Obj42_Newtron_Move
		addq.b	#1,anim(a0)

Obj42_Newtron_Move:
		move.b	#$D,collision_flags(a0)
		move.w	#$200,x_vel(a0)	; move newtron horizontally
		btst	#0,status(a0)
		bne.s	locret_DE86
		neg.w	x_vel(a0)

locret_DE86:
		rts
; ===========================================================================

Obj42_Newtron_MatchFloor:			; XREF: Obj42_Newtron_Index2
		jsr	ObjectMove
		jsr	ObjCheckFloorDist
		cmpi.w	#-8,d1
		blt.s	loc_DEA2
		cmpi.w	#$C,d1
		bge.s	loc_DEA2
		add.w	d1,y_pos(a0)	; match	newtron"s position with floor
		rts
; ===========================================================================

loc_DEA2:
		addq.b	#2,routine_secondary(a0)
		rts
; ===========================================================================

Obj42_Newtron_Speed:				; XREF: Obj42_Newtron_Index2
		jsr	ObjectMove
		rts
; ===========================================================================

Obj42_Newtron_Type01:				; XREF: Obj42_Newtron_Index2
		cmpi.b	#1,mapping_frame(a0)
		bne.s	Obj42_Newtron_FireMissile
		move.b	#$C,collision_flags(a0)

Obj42_Newtron_FireMissile:
		cmpi.b	#2,mapping_frame(a0)
		bne.s	locret_DF14
		tst.b	$32(a0)
		bne.s	locret_DF14
		move.b	#1,$32(a0)
		jsr	SingleObjLoad
		bne.s	locret_DF14
		_move.b	#$23,0(a1)	; load missile object
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		subq.w	#8,y_pos(a1)
		move.w	#$200,x_vel(a1)
		move.w	#$14,d0
		btst	#0,status(a0)
		bne.s	loc_DF04
		neg.w	d0
		neg.w	x_vel(a1)

loc_DF04:
		add.w	d0,x_pos(a1)
		move.b	status(a0),status(a1)
		move.b	#1,subtype(a1)

locret_DF14:
		rts	
; ===========================================================================

Obj42_Newtron_Delete:				; XREF: Obj42_Newtron_Index
		jmp	DeleteObject
; ===========================================================================
; ---------------------------------------------------------------------------
; Animation script - Newtron enemy
; ---------------------------------------------------------------------------
Ani_Obj42_Newtron:
		dc.w byte_DF24-Ani_Obj42_Newtron
		dc.w byte_DF28-Ani_Obj42_Newtron
		dc.w byte_DF30-Ani_Obj42_Newtron
		dc.w byte_DF34-Ani_Obj42_Newtron
		dc.w byte_DF38-Ani_Obj42_Newtron
byte_DF24:	dc.b $F, $A, $FF, 0
	rev02even
byte_DF28:	dc.b $13, 0, 1,	3, 4, 5, $FE, 1
	rev02even
byte_DF30:	dc.b 2,	6, 7, $FF
	rev02even
byte_DF34:	dc.b 2,	8, 9, $FF
	rev02even
byte_DF38:	dc.b $13, 0, 1,	1, 2, 1, 1, 0, $FC, 0
	even

; ---------------------------------------------------------------------------
; Sprite mappings - Newtron enemy (GHZ)
; ---------------------------------------------------------------------------
Map_Obj42_Newtron:
		include	"mappings/sprite/Obj42_Newtron.asm"

; ---------------------------------------------------------------------------
; Object 23 - missile that Buzz	Bomber throws
; ---------------------------------------------------------------------------

Obj23_S1:					; XREF: Obj_Index
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj23_S1_Index(pc,d0.w),d1
		jmp	Obj23_S1_Index(pc,d1.w)
; ===========================================================================
Obj23_S1_Index:	dc.w Obj23_S1_Main-Obj23_S1_Index
		dc.w Obj23_S1_Animate-Obj23_S1_Index
		dc.w Obj23_S1_FromBuzz-Obj23_S1_Index
		dc.w Obj23_S1_Delete-Obj23_S1_Index
		dc.w Obj23_S1_FromNewt-Obj23_S1_Index
; ===========================================================================

Obj23_S1_Main:				; XREF: Obj23_S1_Index
		subq.w	#1,$32(a0)
		bpl.s	Obj23_S1_ChkCancel
		addq.b	#2,routine(a0)
		move.l	#Map_Obj23_S1,4(a0)
		move.w	#$2444,2(a0)
		move.b	#4,1(a0)
		move.b	#3,priority(a0)
		move.b	#8,width_pixels(a0)
		andi.b	#3,status(a0)
		tst.b	subtype(a0)		; was object created by	a Newtron?
		beq.s	Obj23_S1_Animate	; if not, branch
		move.b	#8,routine(a0)	; run "Obj23_S1_FromNewt" routine
		move.b	#$87,collision_flags(a0)
		move.b	#1,anim(a0)
		bra.s	Obj23_S1_Animate2
; ===========================================================================

Obj23_S1_Animate:				; XREF: Obj23_S1_Index
		bsr.s	Obj23_S1_ChkCancel
		lea	(Ani_Obj23_S1).l,a1
		jsr	AnimateSprite
		jmp	DisplaySprite
; ---------------------------------------------------------------------------
; Subroutine to	check if the Buzz Bomber which fired the missile has been
; destroyed, and if it has, then cancel	the missile
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Obj23_S1_ChkCancel:			; XREF: Obj23_S1_Main
		movea.l	$3C(a0),a1
		_cmpi.b	#$27,0(a1)	; has Buzz Bomber been destroyed?
		beq.s	Obj23_S1_Delete	; if yes, branch
		rts
; End of function Obj23_S1_ChkCancel

; ===========================================================================

Obj23_S1_FromBuzz:				; XREF: Obj23_S1_Index
		btst	#7,status(a0)
		bne.s	Obj23_S1_Explode
		move.b	#$87,collision_flags(a0)
		move.b	#1,anim(a0)
		jsr	ObjectMove
		lea	(Ani_Obj23_S1).l,a1
		jsr	AnimateSprite
		jsr	DisplaySprite
		move.w	(Camera_Max_Y_pos_now).w,d0
		addi.w	#$E0,d0
		cmp.w	y_pos(a0),d0	; has object moved below the level boundary?
		bcs.s	Obj23_S1_Delete	; if yes, branch
		rts
; ===========================================================================

Obj23_S1_Explode:				; XREF: Obj23_S1_FromBuzz
		_move.b	#$24,0(a0)	; change object	to an explosion	(Obj24)
		move.b	#0,routine(a0)
		jmp	Obj27
; ===========================================================================

Obj23_S1_Delete:				; XREF: Obj23_S1_Index
		jmp	DeleteObject
; ===========================================================================

Obj23_S1_FromNewt:				; XREF: Obj23_S1_Index
		tst.b	1(a0)
		bpl.s	Obj23_S1_Delete
		jsr		ObjectMove

Obj23_S1_Animate2:				; XREF: Obj23_S1_Main
		lea	(Ani_Obj23_S1).l,a1
		jsr	AnimateSprite
		jmp	DisplaySprite
; ===========================================================================
; ---------------------------------------------------------------------------
; Animation script - missile that Buzz Bomber throws
; ---------------------------------------------------------------------------
Ani_Obj23_S1:
		dc.w byte_9A2E-Ani_Obj23_S1
		dc.w byte_9A32-Ani_Obj23_S1
byte_9A2E:	dc.b 7,	0, 1, $FC
		rev02even
byte_9A32:	dc.b 1,	2, 3, $FF
		even

; ---------------------------------------------------------------------------
; Sprite mappings - missile that Buzz Bomber throws
; ---------------------------------------------------------------------------
Map_Obj23_S1:
		include	"mappings/sprite/Obj23_S1.asm"