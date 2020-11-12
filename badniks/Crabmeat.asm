; ---------------------------------------------------------------------------
; Object 1F - Crabmeat enemy (GHZ, SYZ)
; ---------------------------------------------------------------------------

Obj1F_S1:				; XREF: Obj_Index
	moveq	#0,d0
	move.b	routine(a0),d0
	move.w	Crab_Index(pc,d0.w),d1
	jmp	Crab_Index(pc,d1.w)
; ===========================================================================
Crab_Index:	offsetTable
	offsetTableEntry.w Crab_Main
	offsetTableEntry.w Crab_Action
	offsetTableEntry.w Crab_Delete
	offsetTableEntry.w Crab_BallMain
	offsetTableEntry.w Crab_BallMove

timedelay_obj1F:	= objoff_30
crabmode:	= objoff_32
; ===========================================================================

Crab_Main:	; Routine 0
	move.b	#$10,y_radius(a0)
	move.b	#8,x_radius(a0)
	move.l	#Map_Crab,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtNem_Crabmeat_SYZ,0,0),art_tile(a0)
	move.b	#4,render_flags(a0)
	move.b	#3,priority(a0)
	move.b	#6,collision_flags(a0)
	move.b	#$15,width_pixels(a0)
	jsr	(ObjectMoveAndFall).l
	jsr	(ObjCheckFloorDist).l
	tst.w	d1
	bpl.s	Crab_floornotfound
	add.w	d1,y_pos(a0)
	move.b	d3,angle(a0)
	move.w	#0,y_vel(a0)
	addq.b	#2,routine(a0)

Crab_floornotfound:
	rts	
; ===========================================================================

Crab_Action:	; Routine 2
	moveq	#0,d0
	move.b	routine_secondary(a0),d0
	move.w	Crab_index2(pc,d0.w),d1
	jsr	Crab_index2(pc,d1.w)
	lea	(Ani_Crab).l,a1
	jsr	(AnimateSprite).l
	jmp	(MarkObjGone).l
; ===========================================================================
Crab_index2:	offsetTable
	offsetTableEntry.w Crab_waittofire
	offsetTableEntry.w Crab_walkonfloor
; ===========================================================================

Crab_waittofire:				; XREF: Crab_index
	subq.w	#1,timedelay_obj1F(a0) ; subtract 1 from time delay
	bpl.s	Crab_dontmove
	tst.b	render_flags(a0)
	bpl.s	Crab_movecrab
	bchg	#1,crabmode(a0)
	bne.s	Crab_fire

Crab_movecrab:
	addq.b	#2,routine_secondary(a0)
	move.w	#127,timedelay_obj1F(a0) ; set time delay to approx 2 seconds
	move.w	#$80,x_vel(a0)	; move Crabmeat	to the right
	bsr.w	Crab_SetAni
	addq.b	#3,d0
	move.b	d0,anim(a0)
	bchg	#0,status(a0)
	bne.s	Crab_noflip
	neg.w	x_vel(a0)	; change direction

Crab_dontmove:
Crab_noflip:
	rts	
; ===========================================================================

Crab_fire:
	move.w	#59,timedelay_obj1F(a0)
	move.b	#6,anim(a0)	; use firing animation
	jsr	(SingleObjLoad).l
	bne.s	Crab_failleft
	_move.b	#ObjID_CollapsPform,id(a1) ; load left fireball
	move.b	#6,routine(a1)
	move.w	x_pos(a0),x_pos(a1)
	subi.w	#$10,x_pos(a1)
	move.w	y_pos(a0),y_pos(a1)
	move.w	#-$100,x_vel(a1)

Crab_failleft:
	jsr	(SingleObjLoad).l
	bne.s	Crab_failright
	_move.b	#ObjID_CollapsPform,id(a1) ; load right fireball
	move.b	#6,routine(a1)
	move.w	x_pos(a0),x_pos(a1)
	addi.w	#$10,x_pos(a1)
	move.w	y_pos(a0),y_pos(a1)
	move.w	#$100,x_vel(a1)

Crab_failright:
	rts	
; ===========================================================================

Crab_walkonfloor:				; XREF: Crab_index
	subq.w	#1,timedelay_obj1F(a0)
	bmi.s	loc_966E
	jsr	(ObjectMove).l
	bchg	#0,crabmode(a0)
	bne.s	loc_9654
	move.w	x_pos(a0),d3
	addi.w	#$10,d3
	btst	#0,status(a0)
	beq.s	loc_9640
	subi.w	#$20,d3

loc_9640:
	jsr	(ObjCheckFloorDist2).l
	cmpi.w	#-8,d1
	blt.s	loc_966E
	cmpi.w	#$C,d1
	bge.s	loc_966E
	rts	
; ===========================================================================

loc_9654:
	jsr	(ObjCheckFloorDist).l
	add.w	d1,y_pos(a0)
	move.b	d3,angle(a0)
	bsr.w	Crab_SetAni
	addq.b	#3,d0
	move.b	d0,anim(a0)
	rts	
; ===========================================================================

loc_966E:
	subq.b	#2,routine_secondary(a0)
	move.w	#59,timedelay_obj1F(a0)
	move.w	#0,x_vel(a0)
	bsr.w	Crab_SetAni
	move.b	d0,anim(a0)
	rts	
; ---------------------------------------------------------------------------
; Subroutine to	set the	correct	animation for a	Crabmeat
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


Crab_SetAni:				; XREF: loc_966E
	moveq	#0,d0
	move.b	angle(a0),d3
	bmi.s	loc_96A4
	cmpi.b	#6,d3
	bcs.s	locret_96A2
	moveq	#1,d0
	btst	#0,status(a0)
	bne.s	locret_96A2
	moveq	#2,d0

locret_96A2:
	rts	
; ===========================================================================

loc_96A4:
	cmpi.b	#-6,d3
	bhi.s	locret_96B6
	moveq	#2,d0
	btst	#0,status(a0)
	bne.s	locret_96B6
	moveq	#1,d0

locret_96B6:
	rts	
; End of function Crab_SetAni

; ===========================================================================

Crab_Delete:	; Routine 4
	jmp	(DeleteObject).l
; ===========================================================================
; ---------------------------------------------------------------------------
; Sub-object - missile that the	Crabmeat throws
; ---------------------------------------------------------------------------

Crab_BallMain:	; Routine 6
	addq.b	#2,routine(a0)
	move.l	#Map_Crab,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtNem_Crabmeat_SYZ,0,0),art_tile(a0)
	move.b	#4,render_flags(a0)
	move.b	#3,priority(a0)
	move.b	#$87,collision_flags(a0)
	move.b	#8,width_pixels(a0)
	move.w	#-$400,y_vel(a0)
	move.b	#7,anim(a0)

Crab_BallMove:	; Routine 8
	lea	(Ani_Crab).l,a1
	jsr	(AnimateSprite).l
	jsr	(ObjectMoveAndFall).l
	jsr	(DisplaySprite).l
	move.w	(Camera_Max_Y_pos_now).w,d0
	addi.w	#$E0,d0
	cmp.w	y_pos(a0),d0	; has object moved below the level boundary?
	bcs.s	Crab_Msl_delete		; if yes, branch
	rts	

Crab_Msl_delete:
	jmp	(DeleteObject).l

; -------------------------------------------------------------------------------
; sprite mappings
; -------------------------------------------------------------------------------
Map_Crab:	BINCLUDE "mappings/sprite/obj1F_s1.bin"
	even

; ---------------------------------------------------------------------------
; Animation script - Crabmeat enemy
; ---------------------------------------------------------------------------
Ani_Crab:	offsetTable
	offsetTableEntry.w Crab_Ani_stand
	offsetTableEntry.w Crab_Ani_standslope
	offsetTableEntry.w Crab_Ani_standsloperev
	offsetTableEntry.w Crab_Ani_walk
	offsetTableEntry.w Crab_Ani_walkslope
	offsetTableEntry.w Crab_Ani_walksloperev
	offsetTableEntry.w Crab_Ani_firing
	offsetTableEntry.w Crab_Ani_ball
Crab_Ani_stand:		dc.b $F, 0, $FF
	even
Crab_Ani_standslope:	dc.b $F, 2, $FF
	even
Crab_Ani_standsloperev:	dc.b $F, $22, $FF
	even
Crab_Ani_walk:		dc.b $F, 1, $21, 0, $FF
	even
Crab_Ani_walkslope:	dc.b $F, $21, 3, 2, $FF
	even
Crab_Ani_walksloperev:	dc.b $F, 1, $23, $22, $FF
	even
Crab_Ani_firing:	dc.b $F, 4, $FF
	even
Crab_Ani_ball:		dc.b 1,	5, 6, $FF
	even
