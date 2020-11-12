Tails_loc_13FC2:
		move.b	#1,double_jump_flag(a0)
		move.b	#-$10,double_jump_property(a0)
		move.b	#2,status(a0)
		move.w	#$100,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.w	#0,inertia(a0)
		lea	(MainCharacter).w,a1
		bsr.w	sub_1459E
		move.b	#1,(Flying_carrying_Sonic_flag).w
		move.w	#$E,(Tails_CPU_routine).w

Tails_loc_13FFA:
		move.w	#0,(Tails_control_counter).w
		move.w	#0,(Ctrl_2_Logical).w
		move.b	(Timer_frames+1).w,d0 ;move.b	(Level_frame_counter+1).w,d0
		andi.b	#$1F,d0
		bne.s	Tails_loc_14016
		ori.w	#$808,(Ctrl_2_Logical).w

Tails_loc_14016:
		lea	(Flying_carrying_Sonic_flag).w,a2
		lea	(MainCharacter).w,a1
		btst	#1,status(a1)	; is main character jumping?
		bne.s	Tails_loc_14082
		move.w	#6,(Tails_CPU_routine).w
		move.b	#0,obj_control(a0)
		move.b	#0,anim(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.w	#0,inertia(a0)
		move.b	#2,status(a0)
		move.w	#0,move_lock(a0)
		andi.w	#$7FFF,art_tile(a0)
		tst.b	art_tile(a1)
		bpl.s	Tails_loc_14068
		ori.w	#-$8000,art_tile(a0)

Tails_loc_14068:
		move.b	top_solid_bit(a1),top_solid_bit(a0)
		move.b	lrb_solid_bit(a1),lrb_solid_bit(a0)
		cmpi.w	#2,(Player_mode).w  ; is player 1 tails?
		beq.s	Tails_loc_14082
		move.w	#$10,(Tails_CPU_routine).w

Tails_loc_14082:
		move.w	(Ctrl_1).w,d0
		bra.w	Tails_Carry_Sonic
; ---------------------------------------------------------------------------

Tails_loc_1408A:
		move.w	#0,(Tails_control_counter).w
		move.b	#$F0,double_jump_property(a0)
		move.w	#0,(Ctrl_2_Logical).w
		move.b	(Timer_frames+1).w,d0
		andi.b	#$F,d0
		bne.w	Tails_loc_140AC
		ori.w	#$7878,(Ctrl_2_Logical).w

Tails_loc_140AC:
		tst.b	4(a0)
		bmi.s	locret_140C4
		moveq	#0,d0
		move.l	d0,(a0)
		move.w	d0,x_pos(a0)
		move.w	d0,y_pos(a0)
		move.w	#$A,(Tails_CPU_routine).w

locret_140C4:
		rts
; ---------------------------------------------------------------------------

Tails_loc_140C6:
		move.w	#0,(Ctrl_2_Logical).w
		rts
; ---------------------------------------------------------------------------

Tails_loc_140CE:
		move.b	#1,double_jump_flag(a0)
		move.b	#-$10,double_jump_property(a0)
		move.b	#2,status(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.w	#0,inertia(a0)
		lea	(MainCharacter).w,a1
		bsr.w	sub_1459E
		move.b	#1,(Flying_carrying_Sonic_flag).w
		move.w	#$16,(Tails_CPU_routine).w

Tails_loc_14106:
		move.w	#0,(Tails_control_counter).w
		move.b	#$F0,double_jump_property(a0)
		move.w	#0,(Ctrl_2_Logical).w
		move.b	(Timer_frames+1).w,d0
		andi.b	#7,d0
		bne.s	Tails_loc_14128
		ori.w	#$7070,(Ctrl_2_Logical).w

Tails_loc_14128:
		move.w	(Camera_Y_pos).w,d0
		addi.w	#$90,d0
		cmp.w	y_pos(a0),d0
		blo.s	Tails_loc_1413C
		move.w	#$18,(Tails_CPU_routine).w

Tails_loc_1413C:
		lea	(Flying_carrying_Sonic_flag).w,a2
		lea	(MainCharacter).w,a1
		move.w	(Ctrl_1).w,d0
		bra.w	Tails_Carry_Sonic
; ---------------------------------------------------------------------------

Tails_loc_1414C:
		move.b	#$F0,double_jump_property(a0)
		tst.w	(Tails_control_counter).w
		beq.s	Tails_loc_14164
		tst.b	(Flying_carrying_Sonic_flag).w
		bne.w	Tails_loc_141E2
		bra.w	Tails_loc_142E2
; ---------------------------------------------------------------------------

Tails_loc_14164:
		move.w	#0,(Ctrl_2_Logical).w
		tst.b	(Flying_carrying_Sonic_flag).w
		beq.w	Tails_loc_142E2
		clr.b	($FFFFFAAC).w
		btst	#1,(Ctrl_1).w
		beq.s	Tails_loc_14198
		addq.b	#1,($FFFFF70E).w
		cmpi.b	#-$40,($FFFFF70E).w
		blo.s	Tails_loc_141D2
		move.b	#0,($FFFFF70E).w
		ori.w	#$7070,(Ctrl_2_Logical).w
		bra.s	Tails_loc_141D2
; ---------------------------------------------------------------------------

Tails_loc_14198:
		btst	#0,(Ctrl_1).w
		beq.s	Tails_loc_141BA
		addq.b	#1,($FFFFF70E).w
		cmpi.b	#$20,($FFFFF70E).w
		blo.s	Tails_loc_141D2
		move.b	#0,($FFFFF70E).w
		ori.w	#$7070,(Ctrl_2_Logical).w
		bra.s	Tails_loc_141D2
; ---------------------------------------------------------------------------

Tails_loc_141BA:
		addq.b	#1,($FFFFF70E).w
		cmpi.b	#$58,($FFFFF70E).w
		blo.s	Tails_loc_141D2
		move.b	#0,($FFFFF70E).w
		ori.w	#$7070,(Ctrl_2_Logical).w

Tails_loc_141D2:
		move.b	(Ctrl_1).w,d0
		andi.b	#$C,d0
		or.b	(Ctrl_2_Logical).w,d0
		move.b	d0,(Ctrl_2_Logical).w

Tails_loc_141E2:
		lea	(Flying_carrying_Sonic_flag).w,a2
		lea	(MainCharacter).w,a1
		move.w	(Ctrl_1).w,d0
		bra.w	Tails_Carry_Sonic
; ---------------------------------------------------------------------------

Tails_loc_141F2:
		move.b	#1,double_jump_flag(a0)
		move.b	#-$10,double_jump_property(a0)
		move.b	#2,status(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.w	#0,inertia(a0)
		move.w	#$1C,(Tails_CPU_routine).w

Tails_loc_1421C:
		move.w	#0,(Tails_control_counter).w
		move.b	#$F0,double_jump_property(a0)
		move.w	#0,(Ctrl_2_Logical).w
		move.b	(Timer_frames+1).w,d0
		andi.b	#7,d0
		bne.s	Tails_loc_1423E
		ori.w	#$7070,(Ctrl_2_Logical).w

Tails_loc_1423E:
		move.w	(Camera_Y_pos).w,d0
		addi.w	#$90,d0
		cmp.w	y_pos(a0),d0
		blo.s	locret_14252
		move.w	#$1E,(Tails_CPU_routine).w

locret_14252:
		rts
; ---------------------------------------------------------------------------

Tails_loc_14254:
		move.b	#-$10,double_jump_property(a0)
		rts
; ---------------------------------------------------------------------------

Tails_loc_1425C:
		move.b	#1,double_jump_flag(a0)
		move.b	#-$10,double_jump_property(a0)
		move.b	#2,status(a0)
		move.w	#$100,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.w	#0,inertia(a0)
		move.w	#$22,(Tails_CPU_routine).w

Tails_loc_14286:
		move.w	#0,(Tails_control_counter).w
		move.w	#0,(Ctrl_2_Logical).w
		move.b	(Timer_frames+1).w,d0
		andi.b	#$1F,d0
		bne.s	Tails_loc_142A2
		ori.w	#$808,(Ctrl_2_Logical).w

Tails_loc_142A2:
		btst	#1,status(a0)
		bne.s	locret_142E0
		move.w	#6,(Tails_CPU_routine).w
		move.b	#0,obj_control(a0)
		move.b	#0,anim(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.w	#0,inertia(a0)
		move.b	#2,status(a0)
		move.w	#0,move_lock(a0)
		andi.w	#$7FFF,art_tile(a0)

locret_142E0:
		rts
; ---------------------------------------------------------------------------

Tails_loc_142E2:
		tst.b	($FFFFFAAC).w
		bne.s	Tails_loc_14362
		lea	(MainCharacter).w,a1
		tst.b	4(a1)
		bpl.s	Tails_loc_14330
		tst.w	(Tails_control_counter).w
		bne.w	Tails_loc_143AA
		cmpi.w	#$300,y_vel(a1)
		bge.s	Tails_loc_14330
		move.w	#0,x_vel(a0)
		move.w	#0,(Ctrl_2_Logical).w
		cmpi.w	#$200,y_vel(a0)
		bge.s	Tails_loc_14328
		addq.b	#1,($FFFFF70E).w
		cmpi.b	#$58,($FFFFF70E).w
		blo.s	Tails_loc_1432E
		move.b	#0,($FFFFF70E).w

Tails_loc_14328:
		ori.w	#$7070,(Ctrl_2_Logical).w

Tails_loc_1432E:
		bra.s	Tails_loc_143AA
; ---------------------------------------------------------------------------

Tails_loc_14330:
		st	($FFFFFAAC).w
		move.w	y_pos(a1),d1
		sub.w	y_pos(a0),d1
		bpl.s	Tails_loc_14340
		neg.w	d1

Tails_loc_14340:
		lsr.w	#2,d1
		move.w	d1,d2
		lsr.w	#1,d2
		add.w	d2,d1
		move.w	d1,($FFFFFA94).w
		move.w	x_pos(a1),d1
		sub.w	x_pos(a0),d1
		bpl.s	Tails_loc_14358
		neg.w	d1

Tails_loc_14358:
		lsr.w	#2,d1
		move.w	d1,($FFFFFA92).w
		bra.w	Tails_loc_143AA
; ---------------------------------------------------------------------------

Tails_loc_14362:
		move.w	#0,(Ctrl_2_Logical).w
		lea	(MainCharacter).w,a1
		move.w	x_pos(a0),d0
		move.w	y_pos(a0),d1
		subi.w	#$10,d1
		move.w	($FFFFFA92).w,d2
		bclr	#0,status(a0)
		cmp.w	x_pos(a1),d0
		blo.s	Tails_loc_14390
		bset	#0,status(a0)
		neg.w	d2

Tails_loc_14390:
		add.w	d2,x_vel(a0)
		cmp.w	y_pos(a1),d1
		bhs.s	Tails_loc_143AA
		move.w	($FFFFFA94).w,d2
		cmp.w	y_pos(a1),d1
		blo.s	Tails_loc_143A6
		neg.w	d2

Tails_loc_143A6:
		add.w	d2,y_vel(a0)

Tails_loc_143AA:
		lea	(Flying_carrying_Sonic_flag).w,a2
		lea	(MainCharacter).w,a1
		move.w	(Ctrl_1).w,d0
		bra.w	Tails_Carry_Sonic

; =============== S U B R O U T I N E =======================================


Tails_Carry_Sonic:
		tst.b	(a2)
		beq.w	Tails_loc_14534
		cmpi.b	#4,routine(a1)
		bhs.w	Tails_loc_14466
		btst	#1,status(a1)
		beq.w	Tails_loc_1445A
		move.w	($FFFFF744).w,d1
		cmp.w	x_vel(a1),d1
		bne.s	Tails_loc_1445A
		move.w	($FFFFF74C).w,d1
		cmp.w	y_vel(a1),d1
		bne.s	Tails_loc_14460
		tst.b	obj_control(a1)
		bmi.s	Tails_loc_1446A
		andi.b	#$70,d0
		beq.w	Tails_loc_14474
		clr.b	obj_control(a1)
		clr.b	(a2)
		move.b	#$12,1(a2)
		andi.w	#$F00,d0
		beq.w	Tails_loc_14410
		move.b	#$3C,1(a2)

Tails_loc_14410:
		btst	#$A,d0
		beq.s	Tails_loc_1441C
		move.w	#-$200,x_vel(a1)

Tails_loc_1441C:
		btst	#$B,d0
		beq.s	Tails_loc_14428
		move.w	#$200,x_vel(a1)

Tails_loc_14428:
		move.w	#-$380,y_vel(a1)
		bset	#1,status(a1)
		move.b	#1,jumping(a1)
		move.b	#$E,y_radius(a1)
		move.b	#7,x_radius(a1)
		move.b	#2,anim(a1)
		bset	#2,status(a1)
		bclr	#4,status(a1)
		rts
; ---------------------------------------------------------------------------

Tails_loc_1445A:
		move.w	#-$100,y_vel(a1)

Tails_loc_14460:
		move.b	#0,jumping(a1)

Tails_loc_14466:
		clr.b	obj_control(a1)

Tails_loc_1446A:
		clr.b	(a2)
		move.b	#$3C,1(a2)
		rts
; ---------------------------------------------------------------------------

Tails_loc_14474:
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		addi.w	#$1C,y_pos(a1)
		tst.b	(Reverse_gravity_flag).w
		beq.s	Tails_loc_14492
		subi.w	#$38,y_pos(a1)

Tails_loc_144F8:
		move.w	x_vel(a0),(MainCharacter+x_vel).w
		move.w	x_vel(a0),($FFFFF744).w
		move.w	y_vel(a0),(MainCharacter+y_vel).w
		move.w	y_vel(a0),($FFFFF74C).w
		movem.l	d0-a6,-(sp)
		lea	(MainCharacter).w,a0
		bsr.w	Sonic_DoLevelCollision
		movem.l	(sp)+,d0-a6
		rts
Tails_loc_14492:
		andi.b	#-4,1(a1)
		andi.b	#-2,status(a1)
		move.b	status(a0),d0
		andi.b	#1,d0
		or.b	d0,1(a1)
		or.b	d0,status(a1)
		tst.b	(Reverse_gravity_flag).w
		beq.s	loc_144BA
		eori.b	#2,1(a1)

loc_144BA:
		subq.b	#1,anim_frame_duration(a1)
		bpl.s	Tails_loc_144F8
		move.b	#$B,anim_frame_duration(a1)
		moveq	#0,d1
		move.b	anim_frame(a1),d1
		addq.b	#1,anim_frame(a1)
		move.b	byte_14522(pc,d1.w),d0
		cmpi.b	#-1,d0
		bne.s	loc_144E4
		move.b	#0,anim_frame(a1)
		move.b	byte_14522(pc),d0

loc_144E4:
		move.b	d0,anim(a1)
		moveq	#0,d0
		move.b	anim(a1),d0
		move.l	a2,-(sp)
		;jsr	(Perform_Player_DPLC).l
		movea.l	(sp)+,a2
byte_14522:	dc.b $91
		dc.b $91
		dc.b $90
		dc.b $90
		dc.b $90
		dc.b $90
		dc.b $90
		dc.b $90
		dc.b $92
		dc.b $92
		dc.b $92
		dc.b $92
		dc.b $92
		dc.b $92
		dc.b $91
		dc.b $91
		dc.b $FF
		dc.b 0
; ---------------------------------------------------------------------------

; ---------------------------------------------------------------------------

Tails_loc_14534:
		tst.b	1(a2)
		beq.s	Tails_loc_14542
		subq.b	#1,1(a2)
		bne.w	locret_1459C

Tails_loc_14542:
		move.w	x_pos(a1),d0
		sub.w	x_pos(a0),d0
		addi.w	#$10,d0
		cmpi.w	#$20,d0
		bhs.w	locret_1459C
		move.w	y_pos(a1),d1
		sub.w	y_pos(a0),d1
		subi.w	#$20,d1
		tst.b	(Reverse_gravity_flag).w
		beq.s	Tails_loc_1456C
		addi.w	#$50,d1

Tails_loc_1456C:
		cmpi.w	#$10,d1
		bhs.w	locret_1459C
		tst.b	obj_control(a1)
		bne.s	locret_1459C
		cmpi.b	#4,routine(a1)
		bhs.s	locret_1459C
		tst.w	(Debug_placement_mode).w
		bne.s	locret_1459C
		tst.b	spindash_flag(a1)
		bne.s	locret_1459C
		bsr.s	sub_1459E
		moveq	#SndID_KnuxGrab,d0
		jsr	(PlaySound).l
		move.b	#1,(a2)

locret_1459C:
		rts
; End of function Tails_Carry_Sonic


; =============== S U B R O U T I N E =======================================


sub_1459E:
		clr.w	x_vel(a1)
		clr.w	y_vel(a1)
		clr.w	inertia(a1)
		clr.w	angle(a1)
		move.w	x_pos(a0),x_pos(a1)
		move.w	y_pos(a0),y_pos(a1)
		addi.w	#$1C,y_pos(a1)
		move.b	#AniIDSonAni_Hang2,anim(a1)
		move.b	#0,anim_frame_duration(a1)
		move.b	#0,anim_frame(a1)
		move.b	#3,obj_control(a1)
		bset	#1,status(a1)
		bclr	#4,status(a1)
		move.b	#0,spindash_flag(a1)
		andi.b	#-4,render_flags(a1)
		andi.b	#-2,status(a1)
		move.b	status(a0),d0
		andi.b	#1,d0
		or.b	d0,render_flags(a1)
		or.b	d0,status(a1)
		move.w	x_vel(a0),($FFFFF744).w
		move.w	x_vel(a0),x_vel(a1)
		move.w	y_vel(a0),($FFFFF74C).w
		move.w	y_vel(a0),y_vel(a1)
		tst.b	(Reverse_gravity_flag).w
		beq.s	locret_14630
		subi.w	#$38,y_pos(a1)
		eori.b	#2,render_flags(a1)

locret_14630:
		rts
; End of function sub_1459E