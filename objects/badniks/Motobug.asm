		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Moto_Index(pc,d0.w),d1
		jmp	Moto_Index(pc,d1.w)
; ===========================================================================
Moto_Index:	dc.w Moto_Main-Moto_Index
		dc.w Moto_Action-Moto_Index
		dc.w Moto_Animate-Moto_Index
		dc.w Moto_Delete-Moto_Index
; ===========================================================================

Moto_Main:				; XREF: Moto_Index
		move.l	#Map_Moto,mappings(a0)
		move.w	#make_art_tile(ArtTile_ArtNem_MotoBug,0,0),art_tile(a0)
		move.b	#4,render_flags(a0)
		move.b	#4,priority(a0)
		move.b	#$14,width_pixels(a0)
		tst.b	anim(a0)		; is object a smoke trail?
		bne.s	Moto_SetSmoke	; if yes, branch
		move.b	#$E,y_radius(a0)
		move.b	#8,x_radius(a0)
		move.b	#$C,collision_flags(a0)
		jsr	ObjectMoveAndFall
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.s	locret_F68A
		add.w	d1,y_pos(a0)	; match	object"s position with the floor
		move.w	#0,y_vel(a0)
		addq.b	#2,routine(a0)
		bchg	#0,status(a0)

locret_F68A:
		rts	
; ===========================================================================

Moto_SetSmoke:				; XREF: Moto_Main
		addq.b	#4,routine(a0)
		bra.w	Moto_Animate
; ===========================================================================

Moto_Action:				; XREF: Moto_Index
		moveq	#0,d0
		move.b	routine_secondary(a0),d0
		move.w	Moto_Index2(pc,d0.w),d1
		jsr	Moto_Index2(pc,d1.w)
		lea	(Ani_Moto).l,a1
		jsr	AnimateSprite
		jmp MarkObjGone

; ===========================================================================
Moto_Index2:	dc.w Moto_Move-Moto_Index2
		dc.w Moto_FixToFloor-Moto_Index2
; ===========================================================================

Moto_Move:				; XREF: Moto_Index2
		subq.w	#1,$30(a0)	; subtract 1 from pause	time
		bpl.s	locret_F70A	; if time remains, branch
		addq.b	#2,routine_secondary(a0)
		move.w	#-$100,x_vel(a0)	; move object to the left
		move.b	#1,anim(a0)
		bchg	#0,status(a0)
		bne.s	locret_F70A
		neg.w	x_vel(a0)		; change direction

locret_F70A:
		rts	
; ===========================================================================

Moto_FixToFloor:			; XREF: Moto_Index2
		jsr	ObjectMove
		jsr	(ObjCheckFloorDist).l
		cmpi.w	#-8,d1
		blt.s	Moto_Pause
		cmpi.w	#$C,d1
		bge.s	Moto_Pause
		add.w	d1,y_pos(a0)	; match	object"s position with the floor
		subq.b	#1,$33(a0)
		bpl.s	locret_F756
		move.b	#$F,$33(a0)
		jsr	SingleObjLoad
		bne.s	locret_F756
		_move.b	#ObjID_Snailer,id(a1)	; load exhaust smoke object
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		move.b	status(a0),status(a1)
		move.b	#2,anim(a1)

locret_F756:
		rts	
; ===========================================================================

Moto_Pause:				; XREF: Moto_FixToFloor
		subq.b	#2,routine_secondary(a0)
		move.w	#59,$30(a0)	; set pause time to 1 second
		move.w	#0,x_vel(a0)	; stop the object moving
		move.b	#0,anim(a0)
		rts	
; ===========================================================================

Moto_Animate:				; XREF: Moto_Index
		lea	(Ani_Moto).l,a1
		jsr	AnimateSprite
		jmp	DisplaySprite
; ===========================================================================

Moto_Delete:				; XREF: Moto_Index
		jmp	DeleteObject
; ===========================================================================
; ---------------------------------------------------------------------------
; Animation script - Motobug enemy
; ---------------------------------------------------------------------------
Ani_Moto:
		dc.w byte_F788-Ani_Moto
		dc.w byte_F78C-Ani_Moto
		dc.w byte_F792-Ani_Moto
byte_F788:	dc.b $F, 2, $FF, 0
	rev02even
byte_F78C:	dc.b 7,	0, 1, 0, 2, $FF
	rev02even
byte_F792:	dc.b 1,	3, 6, 3, 6, 4, 6, 4, 6,	4, 6, 5, $FC, 0
		even

; ---------------------------------------------------------------------------
; Sprite mappings - Moto Bug enemy (GHZ)
; ---------------------------------------------------------------------------
Map_Moto:
		binclude	"mappings/sprite/Motobug.bin"