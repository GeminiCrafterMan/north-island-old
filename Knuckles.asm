; =============== S U B	R O U T	I N E =======================================

; Knuckles object

Obj62:						  ; ...

; FUNCTION CHUNK AT 0033A066 SIZE 0000000E BYTES

	tst.w	(Debug_placement_mode).w	; is debug mode being used?
	beq.s	Obj62_Normal			; if not, branch
	jmp	(DebugMode).l
; ---------------------------------------------------------------------------

Obj62_Normal:					  ; ...
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	Obj62_Index(pc,d0.w),d1
		jmp	Obj62_Index(pc,d1.w)
; End of function Obj62

; ---------------------------------------------------------------------------
Obj62_Index:	dc.w Obj62_Init-Obj62_Index	  ; 0 ;	...
		dc.w Obj62_Control-Obj62_Index	  ; 1
		dc.w Obj62_Hurt-Obj62_Index	  ; 2
		dc.w Obj62_Dead-Obj62_Index	  ; 3
		dc.w Obj62_Gone-Obj62_Index	  ; 4
		dc.w Obj62_Respawning-Obj62_Index ; 5
; ---------------------------------------------------------------------------

Obj62_Init:					  ; ...
		addq.b	#2,routine(a0)
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
	jsr	(Unc_NormalIcons_Reload).l
		move.l	#MapUnc_Knuckles,4(a0)	  ; MapUnc_Knuckles
		move.b	#2,$18(a0)
		move.b	#$18,$19(a0)
		move.b	#4,1(a0)
		move.w	#$600,(Sonic_top_speed).w
		move.w	#$C,(Sonic_acceleration).w
		move.w	#$80,(Sonic_deceleration).w
		tst.b	(Last_star_pole_hit).w
		bne.s	Obj62_Init_Continued
		move.w	#make_art_tile(ArtTile_ArtUnc_Sonic,0,0),art_tile(a0)
		jsr	Adjust2PArtPointer
		move.b	#$C,top_solid_bit(a0)
		move.b	#$D,lrb_solid_bit(a0)
		move.w	x_pos(a0),(Saved_x_pos).w
		move.w	y_pos(a0),(Saved_y_pos).w
		move.w	art_tile(a0),(Saved_art_tile).w
		move.w	top_solid_bit(a0),(Saved_Solid_bits).w

Obj62_Init_Continued:				  ; ...
		move.b	#0,$2C(a0)
		move.b	#4,$2D(a0)
		move.b	#0,(Super_Sonic_flag).w
		move.b	#$1E,$28(a0)
		sub.w	#$20,8(a0)
		add.w	#4,y_pos(a0)
		move.w	#0,(Sonic_Pos_Record_Index).w
		move.w	#$3F,d2

loc_3153EC:					  ; ...
		bsr.w	Knuckles_RecordPositions
		subq.w	#4,a1
		move.l	#0,(a1)
		dbf	d2,loc_3153EC
		add.w	#$20,8(a0)
		sub.w	#4,y_pos(a0)

Obj62_Control:					  ; ...
	tst.w	(Debug_mode_flag).w	; is debug cheat enabled?
	beq.s	+			; if not, branch
	btst	#button_B,(Ctrl_1_Press).w	; is button B pressed?
	beq.s	+			; if not, branch
	move.w	#1,(Debug_placement_mode).w	; change Sonic into a ring/item
	clr.b	(Control_Locked).w		; unlock control
	rts
; ---------------------------------------------------------------------------
+
		tst.b	($FFFFF7CC).w
		bne.s	loc_31542E
		move.w	($FFFFF604).w,(Ctrl_1_Logical).w

loc_31542E:					  ; ...
		btst	#0,$2A(a0)
		beq.s	loc_31543E
		move.b	#0,collision_property(a0)
		bra.s	loc_315450
; ---------------------------------------------------------------------------

loc_31543E:					  ; ...
		moveq	#0,d0
		move.b	status(a0),d0
		and.w	#6,d0
		move.w	Obj62_Modes(pc,d0.w),d1
		jsr	Obj62_Modes(pc,d1.w)

loc_315450:					  ; ...
		cmp.w	#$FF00,($FFFFEECC).w
		bne.s	loc_31545E
		and.w	#$7FF,y_pos(a0)

loc_31545E:					  ; ...
		bsr.s	Knuckles_Display
		bsr.w	Knuckles_Super
		bsr.w	Knuckles_RecordPositions
		bsr.w	Knuckles_Water
		move.b	(Primary_Angle).w,$36(a0)
		move.b	(Secondary_Angle).w,$37(a0)
		tst.b	(WindTunnel_flag).w
		beq.s	loc_31548A
		tst.b	anim(a0)
		bne.s	loc_31548A
		move.b	prev_anim(a0),anim(a0)

loc_31548A:					  ; ...
		bsr.w	Knuckles_Animate
		tst.b	$2A(a0)
		bmi.s	loc_31549A
		jsr	TouchResponse

loc_31549A:					  ; ...
		bra.w	LoadKnucklesDynPLC
; ---------------------------------------------------------------------------
Obj62_Modes:	dc.w Obj62_MdNormal-Obj62_Modes	  ; 0 ;	...
		dc.w Obj62_MdAir-Obj62_Modes	  ; 1
		dc.w Obj62_MdRoll-Obj62_Modes	  ; 2
		dc.w Obj62_MdJump-Obj62_Modes	  ; 3

; =============== S U B	R O U T	I N E =======================================


Knuckles_Display:				  ; ...
		move.w	$30(a0),d0
		beq.s	Obj62_Display
		subq.w	#1,$30(a0)
		lsr.w	#3,d0
		bcc.s	Obj62_CheckInvincibility

Obj62_Display:					  ; ...
		jsr	DisplaySprite

Obj62_CheckInvincibility:			  ; ...
		btst	#1,status_secondary(a0)
		beq.s	Obj62_CheckSpeedShoes
		tst.w	$32(a0)
		beq.s	Obj62_CheckSpeedShoes
		subq.w	#1,$32(a0)
		bne.s	Obj62_CheckSpeedShoes
		tst.b	(Current_Boss_ID).w
		bne.s	Obj62_RemoveInvincibility
		cmp.b	#$C,$28(a0)
		bcs.s	Obj62_RemoveInvincibility
	move.w	(Level_Music).w,d0
	jsr	(PlayMusic).l

Obj62_RemoveInvincibility:			  ; ...
		bclr	#1,status_secondary(a0)

Obj62_CheckSpeedShoes:				  ; ...
		btst	#2,status_secondary(a0)
		beq.s	Obj62_ExitCheck
		tst.w	$34(a0)
		beq.s	Obj62_ExitCheck
		subq.w	#1,$34(a0)
		bne.s	Obj62_ExitCheck
		move.w	#$600,(Sonic_top_speed).w
		move.w	#$C,(Sonic_acceleration).w
		move.w	#$80,(Sonic_deceleration).w
		tst.b	(Super_Sonic_flag).w
		beq.s	Obj62_RemoveSpeedShoes
		move.w	#$800,(Sonic_top_speed).w
		move.w	#$18,(Sonic_acceleration).w
		move.w	#$C0,(Sonic_deceleration).w

Obj62_RemoveSpeedShoes:				  ; ...
		bclr	#2,status_secondary(a0)
	move.w	#MusID_SlowDown,d0	; Slow down tempo
	jmp	(PlayMusic).l
; ---------------------------------------------------------------------------

Obj62_ExitCheck:				  ; ...
		rts
; End of function Knuckles_Display


; =============== S U B	R O U T	I N E =======================================


Knuckles_RecordPositions:			  ; ...
		move.w	(Sonic_Pos_Record_Index).w,d0
		lea	(Sonic_Pos_Record_Buf).w,a1
		lea	(a1,d0.w),a1
		move.w	8(a0),(a1)+
		move.w	y_pos(a0),(a1)+
		addq.b	#4,(Sonic_Pos_Record_Index+1).w
		lea	(Sonic_Stat_Record_Buf).w,a1
		lea	(a1,d0.w),a1
		move.w	(Ctrl_1_Logical).w,(a1)+
		move.w	status(a0),(a1)+
		rts
; End of function Knuckles_RecordPositions


; =============== S U B	R O U T	I N E =======================================


Knuckles_Water:					  ; ...
		tst.b	(Water_flag).w
		bne.s	Obj62_InWater

return_31556C:					  ; ...
		rts
; ---------------------------------------------------------------------------

Obj62_InWater:					  ; ...
		move.w	(Water_Level_1).w,d0
		cmp.w	y_pos(a0),d0
		bge.s	Obj62_OutWater
		
		tst.w	y_vel(a0)	; check if player is moving upward (i.e. from jumping)
		bmi.s	return_31556C	; if yes, skip routine

		bset	#6,status(a0)	; set underwater flag
		bne.s	return_31556C	; if already underwater, branch
		
		move.l	a0,a1
		bsr.w	ResumeMusic
		move.b	#$A,($FFFFD080).w
		move.b	#$81,($FFFFD0A8).w
		move.l	a0,($FFFFD0BC).w
		move.w	#$300,(Sonic_top_speed).w
		move.w	#6,(Sonic_acceleration).w
		move.w	#$40,(Sonic_deceleration).w
		tst.b	(Super_Sonic_flag).w
		beq.s	+
		move.w	#$400,(Sonic_top_speed).w
		move.w	#$C,(Sonic_acceleration).w
		move.w	#$60,(Sonic_deceleration).w
+
		asr	x_vel(a0)
		asr	y_vel(a0)
		asr	y_vel(a0)
		beq.s	return_31556C
		move.w	#$100,(Sonic_Dust+anim).w
	move.w	#SndID_Splash,d0	; splash sound
	jmp	(PlaySound).l
; ---------------------------------------------------------------------------

Obj62_OutWater:					  ; ...
		bclr	#6,status(a0)
		beq.s	return_31556C
		move.l	a0,a1
		bsr.w	ResumeMusic
		move.w	#$600,(Sonic_top_speed).w
		move.w	#$C,(Sonic_acceleration).w
		move.w	#$80,(Sonic_deceleration).w
		tst.b	(Super_Sonic_flag).w
		beq.s	loc_315616
		move.w	#$800,(Sonic_top_speed).w
		move.w	#$18,(Sonic_acceleration).w
		move.w	#$C0,(Sonic_deceleration).w

loc_315616:					  ; ...
		cmp.b	#4,routine(a0)
		beq.s	loc_315622
		asl	y_vel(a0)

loc_315622:					  ; ...
		tst.w	y_vel(a0)
		beq.w	return_31556C
		move.w	#$100,(Sonic_Dust+anim).w
		move.l	a0,a1
		bsr.w	ResumeMusic
		cmp.w	#$F000,y_vel(a0)
		bgt.s	loc_315644
		move.w	#$F000,y_vel(a0)

loc_315644:					  ; ...
	move.w	#SndID_Splash,d0	; splash sound
	jmp	(PlaySound).l
; End of function Knuckles_Water


; =============== S U B	R O U T	I N E =======================================


Obj62_MdNormal:					  ; ...
		bsr.w	Knuckles_Spindash
		bsr.w	Knuckles_Jump
		bsr.w	Knuckles_SlopeResist
		bsr.w	Knuckles_Move
		bsr.w	Knuckles_Roll
		bsr.w	Knuckles_LevelBoundaries
		jsr	ObjectMove		  ; AKA	SpeedToPos in Sonic 1
		bsr.w	AnglePos
		bsr.w	Knuckles_SlopeRepel
		rts
; End of function Obj62_MdNormal


; =============== S U B	R O U T	I N E =======================================


Obj62_MdAir:					  ; ...
		tst.b	collision_property(a0)
		bne.s	Obj62_MdAir_Gliding
	jsr	SonicKnux_AirRoll
		bsr.w	Knuckles_JumpHeight
		bsr.w	Knuckles_ChgJumpDir
		bsr.w	Knuckles_LevelBoundaries
	jsr	(ObjectMoveAndFall).l

	cmpi.b	#ObjID_WhirlwindShield,(Shield+id).w
	bne.s	.nowind
	btst	#button_up,(Ctrl_1_Held_Logical).w	; is up being pressed?
	beq.s	.nowind
	subi.w	#$28,y_vel(a0)	; reduce gravity by $28 ($38-$28=$10)

.nowind:
		btst	#6,status(a0)
		beq.s	loc_31569C
		sub.w	#$28,y_vel(a0)

loc_31569C:					  ; ...
		bsr.w	Knuckles_JumpAngle
		bsr.w	Knuckles_DoLevelCollision
		rts
; ---------------------------------------------------------------------------

Obj62_MdAir_Gliding:				  ; ...
		bsr.w	Knuckles_GlideSpeedControl
		bsr.w	Knuckles_LevelBoundaries
		jsr	ObjectMove		  ; AKA	SpeedToPos in Sonic 1
		bsr.w	Knuckles_GlideControl

return_3156B8:					  ; ...
		rts
; End of function Obj62_MdAir


; =============== S U B	R O U T	I N E =======================================


Knuckles_GlideControl:				  ; ...

; FUNCTION CHUNK AT 00315C40 SIZE 0000003C BYTES

		move.b	collision_property(a0),d0
		beq.s	return_3156B8
		cmp.b	#2,d0
		beq.w	Knuckles_FallingFromGlide
		cmp.b	#3,d0
		beq.w	Knuckles_Sliding
		cmp.b	#4,d0
		beq.w	Knuckles_Climbing_Wall
		cmp.b	#5,d0
		beq.w	Knuckles_Climbing_Up

Knuckles_NormalGlide:
		move.b	#$A,y_radius(a0)
		move.b	#$A,x_radius(a0)
		bsr.w	Knuckles_DoLevelCollision2
		btst	#5,($FFFFF7AC).w
		bne.w	Knuckles_BeginClimb
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		btst	#1,($FFFFF7AC).w
		beq.s	Knuckles_BeginSlide
		move.b	(Ctrl_1_Logical).w,d0
		and.b	#$70,d0
		bne.s	loc_31574C
		move.b	#2,collision_property(a0)
		move.b	#$21,anim(a0)
		bclr	#0,status(a0)
		tst.w	x_vel(a0)
		bpl.s	loc_315736
		bset	#0,status(a0)

loc_315736:					  ; ...
		asr	x_vel(a0)
		asr	x_vel(a0)
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		rts
; ---------------------------------------------------------------------------

loc_31574C:					  ; ...
		bra.w	sub_315C7C
; ---------------------------------------------------------------------------

Knuckles_BeginSlide:				  ; ...
		bclr	#0,status(a0)
		tst.w	x_vel(a0)
		bpl.s	loc_315762
		bset	#0,status(a0)

loc_315762:					  ; ...
		move.b	angle(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		beq.s	loc_315780
		move.w	inertia(a0),x_vel(a0)
		move.w	#0,y_vel(a0)
		bra.w	Knuckles_ResetOnFloor_Part2
; ---------------------------------------------------------------------------

loc_315780:					  ; ...
		move.b	#3,collision_property(a0)
		move.b	#$CC,$1A(a0)
		move.b	#$7F,$1E(a0)
		move.b	#0,anim_frame(a0)
		cmp.b	#$C,$28(a0)
		bcs.s	return_3157AC
		move.b	#6,($FFFFD124).w
		move.b	#$15,($FFFFD11A).w

return_3157AC:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_BeginClimb:				  ; ...
		tst.b	($FFFFF7AD).w
		bmi.w	loc_31587A
		move.b	$3F(a0),d5
		move.b	$1F(a0),d0
		add.b	#$40,d0
		bpl.s	loc_3157D8
		bset	#0,status(a0)
		bsr.w	CheckLeftCeilingDist
		or.w	d0,d1
		bne.s	Knuckles_FallFromGlide
		addq.w	#1,8(a0)
		bra.s	loc_3157E8
; ---------------------------------------------------------------------------

loc_3157D8:					  ; ...
		bclr	#0,status(a0)
		bsr.w	CheckRightCeilingDist
		or.w	d0,d1
		bne.w	loc_31586A

loc_3157E8:					  ; ...
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		tst.b	(Super_Sonic_flag).w
		beq.s	loc_315804
		cmp.w	#$480,inertia(a0)
		bcs.s	loc_315804
		nop

loc_315804:					  ; ...
		move.w	#0,inertia(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.b	#4,collision_property(a0)
		move.b	#$B7,$1A(a0)
		move.b	#$7F,$1E(a0)
		move.b	#0,anim_frame(a0)
		move.b	#3,$1F(a0)
		move.w	8(a0),$A(a0)
	move.w	#SndID_KnuxGrab,d0
	jsr	(PlaySound).l
		rts
; ---------------------------------------------------------------------------

Knuckles_FallFromGlide:				  ; ...
		move.w	8(a0),d3
		move.b	y_radius(a0),d0
		ext.w	d0
		sub.w	d0,d3
		subq.w	#1,d3

loc_31584A:					  ; ...
		move.w	y_pos(a0),d2
		sub.w	#$B,d2
		jsr	ChkFloorEdge_Part2
		tst.w	d1
		bmi.s	loc_31587A
		cmp.w	#$C,d1
		bcc.s	loc_31587A
		add.w	d1,y_pos(a0)
		bra.w	loc_3157E8
; ---------------------------------------------------------------------------

loc_31586A:					  ; ...
		move.w	8(a0),d3
		move.b	y_radius(a0),d0
		ext.w	d0
		add.w	d0,d3
		addq.w	#1,d3
		bra.s	loc_31584A
; ---------------------------------------------------------------------------

loc_31587A:					  ; ...
		move.b	#2,collision_property(a0)
		move.b	#$21,anim(a0)
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		bset	#1,($FFFFF7AC).w
		rts
; ---------------------------------------------------------------------------

Knuckles_FallingFromGlide:			  ; ...
		bsr.w	Knuckles_ChgJumpDir
		add.w	#$38,y_vel(a0)
		btst	#6,status(a0)
		beq.s	loc_3158B2
		sub.w	#$28,y_vel(a0)

loc_3158B2:					  ; ...
		bsr.w	Knuckles_DoLevelCollision2
		btst	#1,($FFFFF7AC).w
		bne.s	return_315900
		move.w	#0,inertia(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.b	y_radius(a0),d0
		sub.b	#$13,d0
		ext.w	d0
		add.w	d0,y_pos(a0)
		move.b	angle(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		beq.s	loc_3158F0
		bra.w	Knuckles_ResetOnFloor_Part2
; ---------------------------------------------------------------------------

loc_3158F0:					  ; ...
		bsr.w	Knuckles_ResetOnFloor_Part2
		move.w	#$F,move_lock(a0)
		move.b	#$23,anim(a0)
	move.w	#SndID_KnuxLand,d0
	jsr	(PlaySound).l

return_315900:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_Sliding:				  ; ...
		move.b	(Ctrl_1_Logical).w,d0
		and.b	#$70,d0
		beq.s	loc_315926
		tst.w	x_vel(a0)
		bpl.s	loc_31591E
		add.w	#$20,x_vel(a0)
		bmi.s	loc_31591C
		bra.s	loc_315926
; ---------------------------------------------------------------------------

loc_31591C:					  ; ...
		bra.s	loc_315958
; ---------------------------------------------------------------------------

loc_31591E:					  ; ...
		sub.w	#$20,x_vel(a0)
		bpl.s	loc_315958

loc_315926:					  ; ...
		move.w	#0,inertia(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.b	y_radius(a0),d0
		sub.b	#$13,d0
		ext.w	d0
		add.w	d0,y_pos(a0)
		bsr.w	Knuckles_ResetOnFloor_Part2
		move.w	#$F,move_lock(a0)
		move.b	#$22,anim(a0)
		rts
; ---------------------------------------------------------------------------

loc_315958:					  ; ...
		move.b	#$A,y_radius(a0)
		move.b	#$A,x_radius(a0)
		bsr.w	Knuckles_DoLevelCollision2
		bsr.w	Sonic_CheckFloor
		cmp.w	#$E,d1
		bge.s	loc_315988
		add.w	d1,y_pos(a0)
		move.b	d3,angle(a0)
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		move.b	(Timer_frames+1).w,d0
		andi.b	#7,d0
		bne.s	+
	move.w	#SndID_KnuxSlide,d0
	jsr	(PlaySound).l
+
		rts
; ---------------------------------------------------------------------------

loc_315988:					  ; ...
		move.b	#2,collision_property(a0)
		move.b	#$21,anim(a0)
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		bset	#1,($FFFFF7AC).w
		rts
; ---------------------------------------------------------------------------

Knuckles_Climbing_Wall:				  ; ...
		tst.b	($FFFFF7AD).w
		bmi.w	loc_315BAE
		move.w	8(a0),d0
		cmp.w	$A(a0),d0
		bne.w	loc_315BAE
		btst	#3,status(a0)
		bne.w	loc_315BAE
		move.w	#0,inertia(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.l	#$FFFFD600,($FFFFF796).w
		cmp.b	#$D,$3F(a0)
		beq.s	loc_3159F0
		move.l	#$FFFFD900,($FFFFF796).w

loc_3159F0:					  ; ...
		move.b	$3F(a0),d5
		move.b	#$A,y_radius(a0)
		move.b	#$A,x_radius(a0)
		moveq	#0,d1
		btst	#0,(Ctrl_1_Logical).w
		beq.w	loc_315A76
		move.w	y_pos(a0),d2
		sub.w	#$B,d2
		bsr.w	sub_315C22
		cmp.w	#4,d1
		bge.w	Knuckles_ClimbUp	  ; Climb onto the floor above you
		tst.w	d1
		bne.w	loc_315B30
		move.b	$3F(a0),d5
		move.w	y_pos(a0),d2
		subq.w	#8,d2
		move.w	8(a0),d3
		bsr.w	sub_3192E6		  ; Doesn't exist in S2
		tst.w	d1
		bpl.s	loc_315A46
		sub.w	d1,y_pos(a0)
		moveq	#1,d1
		bra.w	loc_315B04
; ---------------------------------------------------------------------------

loc_315A46:					  ; ...
		subq.w	#1,y_pos(a0)
		tst.b	(Super_Sonic_flag).w
		beq.s	loc_315A54
		subq.w	#1,y_pos(a0)

loc_315A54:					  ; ...
		moveq	#1,d1
		move.w	($FFFFEECC).w,d0
		cmp.w	#-$100,d0
		beq.w	loc_315B04
		add.w	#$10,d0
		cmp.w	y_pos(a0),d0
		ble.w	loc_315B04
		move.w	d0,y_pos(a0)
		bra.w	loc_315B04
; ---------------------------------------------------------------------------

loc_315A76:					  ; ...
		btst	#1,(Ctrl_1_Logical).w
		beq.w	loc_315B04
		cmp.b	#$BD,$1A(a0)
		bne.s	loc_315AA2
		move.b	#$B7,$1A(a0)
		addq.w	#3,y_pos(a0)
		subq.w	#3,8(a0)
		btst	#0,status(a0)
		beq.s	loc_315AA2
		addq.w	#6,8(a0)

loc_315AA2:					  ; ...
		move.w	y_pos(a0),d2
		add.w	#$B,d2
		bsr.w	sub_315C22
		tst.w	d1
		bne.w	loc_315BAE
		move.b	$3E(a0),d5
		move.w	y_pos(a0),d2
		add.w	#9,d2
		move.w	8(a0),d3
		bsr.w	sub_318FF6
		tst.w	d1
		bpl.s	loc_315AF4
		add.w	d1,y_pos(a0)
		move.b	(Primary_Angle).w,angle(a0)
		move.w	#0,inertia(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		bsr.w	Knuckles_ResetOnFloor_Part2
		move.b	#5,anim(a0)
		rts
; ---------------------------------------------------------------------------

loc_315AF4:					  ; ...
		addq.w	#1,y_pos(a0)
		tst.b	(Super_Sonic_flag).w
		beq.s	loc_315B02
		addq.w	#1,y_pos(a0)

loc_315B02:					  ; ...
		moveq	#-1,d1

loc_315B04:					  ; ...
		tst.w	d1
		beq.s	loc_315B30
		subq.b	#1,$1F(a0)
		bpl.s	loc_315B30
		move.b	#3,$1F(a0)
		add.b	$1A(a0),d1
		cmp.b	#$B7,d1
		bcc.s	loc_315B22
		move.b	#$BC,d1

loc_315B22:					  ; ...
		cmp.b	#$BC,d1
		bls.s	loc_315B2C
		move.b	#$B7,d1

loc_315B2C:					  ; ...
		move.b	d1,$1A(a0)

loc_315B30:					  ; ...
		move.b	#$20,$1E(a0)
		move.b	#0,anim_frame(a0)
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		move.w	(Ctrl_1_Logical).w,d0
		and.w	#$70,d0
		beq.s	return_315B94
		move.w	#$FC80,y_vel(a0)
		move.w	#$400,x_vel(a0)
		bchg	#0,status(a0)
		bne.s	loc_315B6A
		neg.w	x_vel(a0)

loc_315B6A:					  ; ...
		bset	#1,status(a0)
		move.b	#1,$3C(a0)
		move.b	#$E,y_radius(a0)
		move.b	#7,x_radius(a0)
		move.b	#2,anim(a0)
		bset	#2,status(a0)
		move.b	#0,collision_property(a0)

return_315B94:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_ClimbUp:				  ; ...
		move.b	#5,collision_property(a0)		  ; Climb up to	the floor above	you
		cmp.b	#$BD,$1A(a0)
		beq.s	return_315BAC
		move.b	#0,$1F(a0)
		bsr.s	sub_315BDA

return_315BAC:					  ; ...
		rts
; ---------------------------------------------------------------------------

loc_315BAE:					  ; ...
		move.b	#2,collision_property(a0)
		move.w	#$2121,anim(a0)
		move.b	#$CB,$1A(a0)
		move.b	#7,$1E(a0)
		move.b	#1,anim_frame(a0)
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		rts
; End of function Knuckles_GlideControl


; =============== S U B	R O U T	I N E =======================================


sub_315BDA:					  ; ...
		moveq	#0,d0
		move.b	$1F(a0),d0
		lea	word_315C12(pc,d0.w),a1
		move.b	(a1)+,$1A(a0)
		move.b	(a1)+,d0
		ext.w	d0
		btst	#0,status(a0)
		beq.s	loc_315BF6
		neg.w	d0

loc_315BF6:					  ; ...
		add.w	d0,8(a0)
		move.b	(a1)+,d1
		ext.w	d1
		add.w	d1,y_pos(a0)
		move.b	(a1)+,$1E(a0)
		addq.b	#4,$1F(a0)
		move.b	#0,anim_frame(a0)
		rts
; End of function sub_315BDA

; ---------------------------------------------------------------------------
word_315C12:	dc.w $BD03,$FD06,$BE08,$F606,$BFF8,$F406,$D208,$FB06; 0	; ...

; =============== S U B	R O U T	I N E =======================================


sub_315C22:					  ; ...

; FUNCTION CHUNK AT 00319208 SIZE 00000020 BYTES
; FUNCTION CHUNK AT 003193D2 SIZE 00000024 BYTES

		move.b	$3F(a0),d5
		btst	#0,status(a0)
		bne.s	loc_315C36
		move.w	8(a0),d3
		bra.w	loc_319208
; ---------------------------------------------------------------------------

loc_315C36:					  ; ...
		move.w	8(a0),d3
		subq.w	#1,d3
		bra.w	loc_3193D2
; End of function sub_315C22

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Knuckles_GlideControl

Knuckles_Climbing_Up:				  ; ...
		tst.b	$1E(a0)
		bne.s	return_315C7A
		bsr.w	sub_315BDA
		cmp.b	#$10,$1F(a0)
		bne.s	return_315C7A
		move.w	#0,inertia(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		btst	#0,status(a0)
		beq.s	loc_315C70
		subq.w	#1,8(a0)

loc_315C70:					  ; ...
		bsr.w	Knuckles_ResetOnFloor_Part2
		move.b	#5,anim(a0)

return_315C7A:					  ; ...
		rts
; END OF FUNCTION CHUNK	FOR Knuckles_GlideControl

; =============== S U B	R O U T	I N E =======================================


sub_315C7C:					  ; ...
		move.b	#$20,$1E(a0)
		move.b	#0,anim_frame(a0)
		move.w	#$2020,anim(a0)
		bclr	#5,status(a0)
		bclr	#0,status(a0)
		moveq	#0,d0
		move.b	$1F(a0),d0
		add.b	#$10,d0
		lsr.w	#5,d0
		move.b	byte_315CC2(pc,d0.w),d1
		move.b	d1,$1A(a0)
		cmp.b	#$C4,d1
		bne.s	return_315CC0
		bset	#0,status(a0)
		move.b	#$C0,$1A(a0)

return_315CC0:					  ; ...
		rts
; End of function sub_315C7C

; ---------------------------------------------------------------------------
byte_315CC2:	dc.b $C0,$C1,$C2,$C3,$C4,$C3,$C2,$C1; 0	; ...

; =============== S U B	R O U T	I N E =======================================


Knuckles_GlideSpeedControl:			  ; ...
		cmp.b	#1,collision_property(a0)
		bne.w	loc_315D88
		move.w	inertia(a0),d0
		cmp.w	#$400,d0
		bcc.s	loc_315CE2
		addq.w	#8,d0
		bra.s	loc_315CFC
; ---------------------------------------------------------------------------

loc_315CE2:					  ; ...
		cmp.w	#$1800,d0
		bcc.s	loc_315CFC
		move.b	$1F(a0),d1
		and.b	#$7F,d1
		bne.s	loc_315CFC
		addq.w	#4,d0
		tst.b	(Super_Sonic_flag).w
		beq.s	loc_315CFC
		addq.w	#8,d0

loc_315CFC:					  ; ...
		move.w	d0,inertia(a0)
		move.b	$1F(a0),d0
		btst	#2,(Ctrl_1_Logical).w
		beq.s	loc_315D1C
		cmp.b	#$80,d0
		beq.s	loc_315D1C
		tst.b	d0
		bpl.s	loc_315D18
		neg.b	d0

loc_315D18:					  ; ...
		addq.b	#2,d0
		bra.s	loc_315D3A
; ---------------------------------------------------------------------------

loc_315D1C:					  ; ...
		btst	#3,(Ctrl_1_Logical).w
		beq.s	loc_315D30
		tst.b	d0
		beq.s	loc_315D30
		bmi.s	loc_315D2C
		neg.b	d0

loc_315D2C:					  ; ...
		addq.b	#2,d0
		bra.s	loc_315D3A
; ---------------------------------------------------------------------------

loc_315D30:					  ; ...
		move.b	d0,d1
		and.b	#$7F,d1
		beq.s	loc_315D3A
		addq.b	#2,d0

loc_315D3A:					  ; ...
		move.b	d0,$1F(a0)
		move.b	$1F(a0),d0
		jsr	CalcSine
		muls.w	inertia(a0),d1
		asr.l	#8,d1
		move.w	d1,x_vel(a0)
		cmp.w	#$80,y_vel(a0)
		blt.s	loc_315D62
		sub.w	#$20,y_vel(a0)
		bra.s	loc_315D68
; ---------------------------------------------------------------------------

loc_315D62:					  ; ...
		add.w	#$20,y_vel(a0)

loc_315D68:					  ; ...
		move.w	($FFFFEECC).w,d0
		cmp.w	#$FF00,d0
		beq.w	loc_315D88
		add.w	#$10,d0
		cmp.w	y_pos(a0),d0
		ble.w	loc_315D88
		asr	x_vel(a0)
		asr	inertia(a0)

loc_315D88:					  ; ...
		cmp.w	#$60,($FFFFEED8).w
		beq.s	return_315D9A
		bcc.s	loc_315D96
		addq.w	#4,($FFFFEED8).w

loc_315D96:					  ; ...
		subq.w	#2,($FFFFEED8).w

return_315D9A:					  ; ...
		rts
; End of function Knuckles_GlideSpeedControl

; ---------------------------------------------------------------------------

Obj62_MdRoll:					  ; ...
		tst.b	pinball_mode(a0)
		bne.s	loc_315DA6
		bsr.w	Knuckles_Jump

loc_315DA6:					  ; ...
		bsr.w	Knuckles_RollRepel
		bsr.w	Knuckles_RollSpeed
		bsr.w	Knuckles_LevelBoundaries
		jsr	ObjectMove		  ; AKA	SpeedToPos in Sonic 1
		bsr.w	AnglePos
		bsr.w	Knuckles_SlopeRepel
		rts
; ---------------------------------------------------------------------------

Obj62_MdJump:					  ; ...
		tst.b	collision_property(a0)
		bne.w	Obj62_MdAir_Gliding
		bsr.w	Knuckles_JumpHeight
		bsr.w	Knuckles_ChgJumpDir
		bsr.w	Knuckles_LevelBoundaries
	jsr	(ObjectMoveAndFall).l

	cmpi.b	#ObjID_WhirlwindShield,(Shield+id).w
	bne.s	.nowind
	btst	#button_up,(Ctrl_1_Held_Logical).w	; is up being pressed?
	beq.s	.nowind
	subi.w	#$28,y_vel(a0)	; reduce gravity by $28 ($38-$28=$10)

.nowind:
		btst	#6,status(a0)
		beq.s	loc_315DE2
		sub.w	#$28,y_vel(a0)

loc_315DE2:					  ; ...
		bsr.w	Knuckles_JumpAngle
		bsr.w	Knuckles_DoLevelCollision
		rts

; =============== S U B	R O U T	I N E =======================================


Knuckles_Move:					  ; ...
		move.w	(Sonic_top_speed).w,d6
		move.w	(Sonic_acceleration).w,d5
		move.w	(Sonic_deceleration).w,d4
		tst.b	status_secondary(a0)
		bmi.w	Obj62_Traction
		tst.w	move_lock(a0)
		bne.w	Obj62_ResetScreen
		btst	#2,(Ctrl_1_Logical).w
		beq.s	Obj62_NotLeft
		bsr.w	Knuckles_MoveLeft

Obj62_NotLeft:					  ; ...
		btst	#3,(Ctrl_1_Logical).w
		beq.s	Obj62_NotRight
		bsr.w	Knuckles_MoveRight

Obj62_NotRight:					  ; ...
		move.b	angle(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		bne.w	Obj62_ResetScreen
		tst.w	inertia(a0)
		bne.w	Obj62_ResetScreen
		bclr	#5,status(a0)
		move.b	#5,anim(a0)
		btst	#3,status(a0)
		beq.w	Knuckles_Balance
		moveq	#0,d0
		move.b	$3D(a0),d0
		lsl.w	#6,d0
		lea	(Object_RAM).w,a1
		lea	(a1,d0.w),a1
		tst.b	status(a1)
		bmi.w	Knuckles_LookUp
		moveq	#0,d1
		move.b	$19(a1),d1
		move.w	d1,d2
		add.w	d2,d2
		subq.w	#2,d2
		add.w	8(a0),d1
		sub.w	8(a1),d1
		cmp.w	#2,d1
		blt.s	Knuckles_BalanceOnObjLeft
		cmp.w	d2,d1
		bge.s	Knuckles_BalanceOnObjRight
		bra.w	Knuckles_LookUp
; ---------------------------------------------------------------------------

Knuckles_BalanceOnObjRight:			  ; ...
		btst	#0,status(a0)
		bne.s	loc_315E9A
		move.b	#6,anim(a0)
		bra.w	Obj62_ResetScreen
; ---------------------------------------------------------------------------

loc_315E9A:					  ; ...
		bclr	#0,status(a0)
		move.b	#0,$1E(a0)
		move.b	#4,anim_frame(a0)
		move.w	#$606,anim(a0)
		bra.w	Obj62_ResetScreen
; ---------------------------------------------------------------------------

Knuckles_BalanceOnObjLeft:			  ; ...
		btst	#0,status(a0)
		beq.s	loc_315EC8
		move.b	#6,anim(a0)
		bra.w	Obj62_ResetScreen
; ---------------------------------------------------------------------------

loc_315EC8:					  ; ...
		bset	#0,status(a0)
		move.b	#0,$1E(a0)
		move.b	#4,anim_frame(a0)
		move.w	#$606,anim(a0)
		bra.w	Obj62_ResetScreen
; ---------------------------------------------------------------------------

Knuckles_Balance:				  ; ...
		jsr	ChkFloorEdge
		cmp.w	#$C,d1
		blt.w	Knuckles_LookUp
		cmp.b	#3,$36(a0)
		bne.s	Knuckles_BalanceLeft
		btst	#0,status(a0)
		bne.s	loc_315F0C
		move.b	#6,anim(a0)
		bra.w	Obj62_ResetScreen
; ---------------------------------------------------------------------------

loc_315F0C:					  ; ...
		bclr	#0,status(a0)
		move.b	#0,$1E(a0)
		move.b	#4,anim_frame(a0)
		move.w	#$606,anim(a0)
		bra.w	Obj62_ResetScreen
; ---------------------------------------------------------------------------

Knuckles_BalanceLeft:				  ; ...
		cmp.b	#3,$37(a0)
		bne.s	Knuckles_LookUp
		btst	#0,status(a0)
		beq.s	loc_315F42
		move.b	#6,anim(a0)
		bra.w	Obj62_ResetScreen
; ---------------------------------------------------------------------------

loc_315F42:					  ; ...
		bset	#0,status(a0)
		move.b	#0,$1E(a0)
		move.b	#4,anim_frame(a0)
		move.w	#$606,anim(a0)
		bra.w	Obj62_ResetScreen
; ---------------------------------------------------------------------------

Knuckles_LookUp:				  ; ...
		btst	#0,(Ctrl_1_Logical).w
		beq.s	Knuckles_Duck
		move.b	#7,anim(a0)
		addq.w	#1,($FFFFF66C).w
		cmp.w	#$78,($FFFFF66C).w
		bcs.s	Obj62_ResetScreen_Part2
		move.w	#$78,($FFFFF66C).w
		cmp.w	#$C8,($FFFFEED8).w
		beq.s	Obj62_UpdateSpeedOnGround
		addq.w	#2,($FFFFEED8).w
		bra.s	Obj62_UpdateSpeedOnGround
; ---------------------------------------------------------------------------

Knuckles_Duck:					  ; ...
		btst	#1,(Ctrl_1_Logical).w
		beq.s	Obj62_ResetScreen
		move.b	#8,anim(a0)
		addq.w	#1,($FFFFF66C).w
		cmp.w	#$78,($FFFFF66C).w
		bcs.s	Obj62_ResetScreen_Part2
		move.w	#$78,($FFFFF66C).w
		cmp.w	#8,($FFFFEED8).w
		beq.s	Obj62_UpdateSpeedOnGround
		subq.w	#2,($FFFFEED8).w
		bra.s	Obj62_UpdateSpeedOnGround
; ---------------------------------------------------------------------------

Obj62_ResetScreen:				  ; ...
		move.w	#0,($FFFFF66C).w

Obj62_ResetScreen_Part2:			  ; ...
		cmp.w	#$60,($FFFFEED8).w
		beq.s	Obj62_UpdateSpeedOnGround
		bcc.s	loc_315FCE
		addq.w	#4,($FFFFEED8).w

loc_315FCE:					  ; ...
		subq.w	#2,($FFFFEED8).w

Obj62_UpdateSpeedOnGround:			  ; ...
		tst.b	(Super_Sonic_flag).w
		beq.s	loc_315FDC
		move.w	#$C,d5

loc_315FDC:					  ; ...
		move.b	(Ctrl_1_Logical).w,d0
		and.b	#$C,d0
		bne.s	Obj62_Traction
		move.w	inertia(a0),d0
		beq.s	Obj62_Traction
		bmi.s	Obj62_SettleLeft
		sub.w	d5,d0
		bcc.s	loc_315FF6
		move.w	#0,d0

loc_315FF6:					  ; ...
		move.w	d0,inertia(a0)
		bra.s	Obj62_Traction
; ---------------------------------------------------------------------------

Obj62_SettleLeft:				  ; ...
		add.w	d5,d0
		bcc.s	loc_316004
		move.w	#0,d0

loc_316004:					  ; ...
		move.w	d0,inertia(a0)

Obj62_Traction:					  ; ...
		move.b	angle(a0),d0
		jsr	CalcSine
		muls.w	inertia(a0),d1
		asr.l	#8,d1
		move.w	d1,x_vel(a0)
		muls.w	inertia(a0),d0
		asr.l	#8,d0
		move.w	d0,y_vel(a0)

Obj62_CheckWallsOnGround:			  ; ...
		move.b	angle(a0),d0
		add.b	#$40,d0
		bmi.s	return_3160A6
		move.b	#$40,d1
		tst.w	inertia(a0)
		beq.s	return_3160A6
		bmi.s	loc_31603E
		neg.w	d1

loc_31603E:					  ; ...
		move.b	angle(a0),d0
		add.b	d1,d0
		move.w	d0,-(sp)
		bsr.w	CalcRoomInFront		  ; Also known as Sonic_WalkSpeed in Sonic 1
		move.w	(sp)+,d0
		tst.w	d1
		bpl.s	return_3160A6
		asl.w	#8,d1
		add.b	#$20,d0
		and.b	#$C0,d0
		beq.s	loc_3160A2
		cmp.b	#$40,d0
		beq.s	loc_316088
		cmp.b	#$80,d0
		beq.s	loc_316082
		add.w	d1,x_vel(a0)
		move.w	#0,inertia(a0)
		btst	#0,status(a0)
		bne.s	return_316080
		bset	#5,status(a0)

return_316080:					  ; ...
		rts
; ---------------------------------------------------------------------------

loc_316082:					  ; ...
		sub.w	d1,y_vel(a0)
		rts
; ---------------------------------------------------------------------------

loc_316088:					  ; ...
		sub.w	d1,x_vel(a0)
		move.w	#0,inertia(a0)
		btst	#0,status(a0)
		beq.s	return_316080
		bset	#5,status(a0)
		rts
; ---------------------------------------------------------------------------

loc_3160A2:					  ; ...
		add.w	d1,y_vel(a0)

return_3160A6:					  ; ...
		rts
; End of function Knuckles_Move


; =============== S U B	R O U T	I N E =======================================


Knuckles_MoveLeft:				  ; ...
		move.w	inertia(a0),d0
		beq.s	loc_3160B0
		bpl.s	Knuckles_TurnLeft

loc_3160B0:					  ; ...
		bset	#0,status(a0)
		bne.s	loc_3160C4
		bclr	#5,status(a0)
		move.b	#1,prev_anim(a0)

loc_3160C4:					  ; ...
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc_3160D6
		add.w	d5,d0
		cmp.w	d1,d0
		ble.s	loc_3160D6
		move.w	d1,d0

loc_3160D6:					  ; ...
		move.w	d0,inertia(a0)
		move.b	#0,anim(a0)
		rts
; ---------------------------------------------------------------------------

Knuckles_TurnLeft:				  ; ...
		sub.w	d4,d0
		bcc.s	loc_3160EA
		move.w	#-$80,d0

loc_3160EA:					  ; ...
		move.w	d0,inertia(a0)
		move.b	angle(a0),d1
		add.b	#$20,d1
		and.b	#$C0,d1
		bne.s	return_31612C
		cmp.w	#$400,d0
		blt.s	return_31612C
		move.b	#$D,anim(a0)
		bclr	#0,status(a0)
	tst.b	(CD_Sounds_flag).w
	beq.s	+
	move.w	#SndID_CDSkidding,d0
	bra.s	++
+
	move.w	#SndID_Skidding,d0
+
	jsr	(PlaySound).l
		cmp.b	#$C,$28(a0)
		bcs.s	return_31612C
		move.b	#6,($FFFFD124).w
		move.b	#$15,($FFFFD11A).w

return_31612C:					  ; ...
		rts
; End of function Knuckles_MoveLeft


; =============== S U B	R O U T	I N E =======================================


Knuckles_MoveRight:				  ; ...
		move.w	inertia(a0),d0
		bmi.s	Knuckles_TurnRight
		bclr	#0,status(a0)
		beq.s	loc_316148
		bclr	#5,status(a0)
		move.b	#1,prev_anim(a0)

loc_316148:					  ; ...
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	loc_316156
		sub.w	d5,d0
		cmp.w	d6,d0
		bge.s	loc_316156
		move.w	d6,d0

loc_316156:					  ; ...
		move.w	d0,inertia(a0)
		move.b	#0,anim(a0)
		rts
; ---------------------------------------------------------------------------

Knuckles_TurnRight:				  ; ...
		add.w	d4,d0
		bcc.s	loc_31616A
		move.w	#$80,d0

loc_31616A:					  ; ...
		move.w	d0,inertia(a0)
		move.b	angle(a0),d1
		add.b	#$20,d1
		and.b	#$C0,d1
		bne.s	return_3161AC
		cmp.w	#$FC00,d0
		bgt.s	return_3161AC
		move.b	#$D,anim(a0)
		bset	#0,status(a0)
	tst.b	(CD_Sounds_flag).w
	beq.s	+
	move.w	#SndID_CDSkidding,d0
	bra.s	++
+
	move.w	#SndID_Skidding,d0
+
	jsr	(PlaySound).l
		cmp.b	#$C,$28(a0)
		bcs.s	return_3161AC
		move.b	#6,($FFFFD124).w
		move.b	#$15,($FFFFD11A).w

return_3161AC:					  ; ...
		rts
; End of function Knuckles_MoveRight


; =============== S U B	R O U T	I N E =======================================


Knuckles_RollSpeed:				  ; ...
		move.w	(Sonic_top_speed).w,d6
		asl.w	#1,d6
		move.w	(Sonic_acceleration).w,d5
		asr.w	#1,d5
		move.w	#$20,d4
		tst.b	status_secondary(a0)
		bmi.w	Obj62_Roll_ResetScreen
		tst.w	move_lock(a0)
		bne.s	Knuckles_Apply_RollSpeed
		btst	#2,(Ctrl_1_Logical).w
		beq.s	loc_3161D8
		bsr.w	Knuckles_RollLeft

loc_3161D8:					  ; ...
		btst	#3,(Ctrl_1_Logical).w
		beq.s	Knuckles_Apply_RollSpeed
		bsr.w	Knuckles_RollRight

Knuckles_Apply_RollSpeed:			  ; ...
		move.w	inertia(a0),d0
		beq.s	Knuckles_CheckRollStop
		bmi.s	Knuckles_ApplyRollSpeedLeft
		sub.w	d5,d0
		bcc.s	loc_3161F4
		move.w	#0,d0

loc_3161F4:					  ; ...
		move.w	d0,inertia(a0)
		bra.s	Knuckles_CheckRollStop
; ---------------------------------------------------------------------------

Knuckles_ApplyRollSpeedLeft:			  ; ...
		add.w	d5,d0
		bcc.s	loc_316202
		move.w	#0,d0

loc_316202:					  ; ...
		move.w	d0,inertia(a0)

Knuckles_CheckRollStop:				  ; ...
		tst.w	inertia(a0)
		bne.s	Obj62_Roll_ResetScreen
		tst.b	pinball_mode(a0)
		bne.s	Knuckles_KeepRolling
		bclr	#2,status(a0)
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		move.b	#5,anim(a0)
		subq.w	#5,y_pos(a0)
		bra.s	Obj62_Roll_ResetScreen
; ---------------------------------------------------------------------------
; magically gives Knuckles an extra push if he's going to stop rolling where it's not allowed
; (such	as in an S-curve in HTZ	or a stopper chamber in	CNZ)


Knuckles_KeepRolling:				  ; ...
		move.w	#$400,inertia(a0)
		btst	#0,status(a0)
		beq.s	Obj62_Roll_ResetScreen
		neg.w	inertia(a0)

Obj62_Roll_ResetScreen:				  ; ...
		cmp.w	#$60,($FFFFEED8).w
		beq.s	Knuckles_SetRollSpeeds
		bcc.s	loc_316250
		addq.w	#4,($FFFFEED8).w

loc_316250:					  ; ...
		subq.w	#2,($FFFFEED8).w

Knuckles_SetRollSpeeds:				  ; ...
		move.b	angle(a0),d0
		jsr	CalcSine
		muls.w	inertia(a0),d0
		asr.l	#8,d0
		move.w	d0,y_vel(a0)
		muls.w	inertia(a0),d1
		asr.l	#8,d1
		cmp.w	#$1000,d1
		ble.s	loc_316278
		move.w	#$1000,d1

loc_316278:					  ; ...
		cmp.w	#-$1000,d1
		bge.s	loc_316282
		move.w	#-$1000,d1

loc_316282:					  ; ...
		move.w	d1,x_vel(a0)
		bra.w	Obj62_CheckWallsOnGround
; End of function Knuckles_RollSpeed


; =============== S U B	R O U T	I N E =======================================


Knuckles_RollLeft:				  ; ...
		move.w	inertia(a0),d0
		beq.s	loc_316292
		bpl.s	Knuckles_BrakeRollingRight

loc_316292:					  ; ...
		bset	#0,status(a0)
		move.b	#2,anim(a0)
		rts
; ---------------------------------------------------------------------------

Knuckles_BrakeRollingRight:			  ; ...
		sub.w	d4,d0
		bcc.s	loc_3162A8
		move.w	#-$80,d0

loc_3162A8:					  ; ...
		move.w	d0,inertia(a0)
		rts
; End of function Knuckles_RollLeft


; =============== S U B	R O U T	I N E =======================================


Knuckles_RollRight:				  ; ...
		move.w	inertia(a0),d0
		bmi.s	Knuckles_BrakeRollingLeft
		bclr	#0,status(a0)
		move.b	#2,anim(a0)
		rts
; ---------------------------------------------------------------------------

Knuckles_BrakeRollingLeft:			  ; ...
		add.w	d4,d0
		bcc.s	loc_3162CA
		move.w	#$80,d0

loc_3162CA:					  ; ...
		move.w	d0,inertia(a0)
		rts
; End of function Knuckles_RollRight

; ---------------------------------------------------------------------------
; Subroutine for moving	Knuckles left or right when he's in the air
; ---------------------------------------------------------------------------

; =============== S U B	R O U T	I N E =======================================


Knuckles_ChgJumpDir:				  ; ...
		move.w	(Sonic_top_speed).w,d6
		move.w	(Sonic_acceleration).w,d5
		asl.w	#1,d5
		btst	#4,status(a0)
		bne.s	Obj62_Jump_ResetScreen
		move.w	x_vel(a0),d0
		btst	#2,(Ctrl_1_Logical).w
		beq.s	loc_31630E
		bset	#0,status(a0)
		sub.w	d5,d0
		move.w	d6,d1
		neg.w	d1
		cmp.w	d1,d0
		bgt.s	loc_31630E
		tst.w	($FFFFFFD0).w
		bne.w	loc_31630C
		add.w	d5,d0
		cmp.w	d1,d0
		ble.s	loc_31630E

loc_31630C:					  ; ...
		move.w	d1,d0

loc_31630E:					  ; ...
		btst	#3,(Ctrl_1_Logical).w
		beq.s	loc_316332
		bclr	#0,status(a0)
		add.w	d5,d0
		cmp.w	d6,d0
		blt.s	loc_316332
		tst.w	($FFFFFFD0).w
		bne.w	loc_316330
		sub.w	d5,d0
		cmp.w	d6,d0
		bge.s	loc_316332

loc_316330:					  ; ...
		move.w	d6,d0

loc_316332:					  ; ...
		move.w	d0,x_vel(a0)

Obj62_Jump_ResetScreen:				  ; ...
		cmp.w	#$60,($FFFFEED8).w
		beq.s	Knuckles_JumpPeakDecelerate
		bcc.s	loc_316344
		addq.w	#4,($FFFFEED8).w

loc_316344:					  ; ...
		subq.w	#2,($FFFFEED8).w

Knuckles_JumpPeakDecelerate:			  ; ...
		cmp.w	#-$400,y_vel(a0)
		bcs.s	return_316376
		move.w	x_vel(a0),d0
		move.w	d0,d1
		asr.w	#5,d1
		beq.s	return_316376
		bmi.s	Knuckles_JumpPeakDecelerateLeft
		sub.w	d1,d0
		bcc.s	loc_316364
		move.w	#0,d0

loc_316364:					  ; ...
		move.w	d0,x_vel(a0)
		rts
; ---------------------------------------------------------------------------

Knuckles_JumpPeakDecelerateLeft:		  ; ...
		sub.w	d1,d0
		bcs.s	loc_316372
		move.w	#0,d0

loc_316372:					  ; ...
		move.w	d0,x_vel(a0)

return_316376:					  ; ...
		rts
; End of function Knuckles_ChgJumpDir


; =============== S U B	R O U T	I N E =======================================


Knuckles_LevelBoundaries:			  ; ...
	move.l	x_pos(a0),d1
	move.w	x_vel(a0),d0
	ext.l	d0
	asl.l	#8,d0
	add.l	d0,d1
	swap	d1
	move.w	(Camera_Min_X_pos).w,d0
	addi.w	#$10,d0
	cmp.w	d1,d0			; has Sonic touched the left boundary?
		bhi.s	Knuckles_Boundary_Sides
	move.w	(Camera_Max_X_pos).w,d0
	addi.w	#320-24,d0		; screen width - Sonic's width_pixels
	tst.b	(Current_Boss_ID).w
	bne.s	+
	addi.w	#$40,d0
+
	cmp.w	d1,d0			; has Sonic touched the right boundary?
		bls.s	Knuckles_Boundary_Sides

Knuckles_Boundary_CheckBottom:			  ; ...
	move.w	(Camera_Max_Y_pos_now).w,d0
	addi.w	#$E0,d0
	cmp.w	y_pos(a0),d0		; has Sonic touched the bottom boundary?
		blt.s	Knuckles_Boundary_Bottom
		rts
; ---------------------------------------------------------------------------

Knuckles_Boundary_Bottom:			  ; ...
		move.w	(Camera_Max_Y_pos).w,d0
		move.w	(Camera_Max_Y_pos_now).w,d1
		cmp.w	d0,d1			; screen still scrolling down?
		blt.s	+			; if so, don't kill Sonic
	addq.l	#4,sp
	jmp	(KillCharacter).l
+
	rts
; ---------------------------------------------------------------------------

Knuckles_Boundary_Sides:			  ; ...
	move.w	d0,x_pos(a0)
	move.w	#0,2+x_pos(a0) ; subpixel x
	move.w	#0,x_vel(a0)
	move.w	#0,inertia(a0)
		bra.s	Knuckles_Boundary_CheckBottom
; End of function Knuckles_LevelBoundaries


; =============== S U B	R O U T	I N E =======================================


Knuckles_Roll:					  ; ...
		tst.b	status_secondary(a0)
		bmi.s	Obj62_NoRoll
		move.w	inertia(a0),d0
		bpl.s	loc_3163E6
		neg.w	d0

loc_3163E6:					  ; ...
		cmp.w	#$80,d0
		bcs.s	Obj62_NoRoll
		move.b	(Ctrl_1_Logical).w,d0
		and.b	#$C,d0
		bne.s	Obj62_NoRoll
		btst	#1,(Ctrl_1_Logical).w
		bne.s	Obj62_ChkRoll

Obj62_NoRoll:					  ; ...
		rts
; ---------------------------------------------------------------------------

Obj62_ChkRoll:					  ; ...
		btst	#2,status(a0)
		beq.s	Obj62_DoRoll
		rts
; ---------------------------------------------------------------------------

Obj62_DoRoll:					  ; ...
		bset	#2,status(a0)
		move.b	#$E,y_radius(a0)
		move.b	#7,x_radius(a0)
		move.b	#2,anim(a0)
		addq.w	#5,y_pos(a0)
	move.w	#SndID_Roll,d0
	jsr	(PlaySound).l	; play rolling sound
		tst.w	inertia(a0)
		bne.s	return_31643C
		move.w	#$200,inertia(a0)

return_31643C:					  ; ...
		rts
; End of function Knuckles_Roll


; =============== S U B	R O U T	I N E =======================================


Knuckles_Jump:					  ; ...
		move.b	($FFFFF603).w,d0
		and.b	#$70,d0
		beq.w	return_3164EC
		moveq	#0,d0
		move.b	angle(a0),d0
		add.b	#$80,d0
		bsr.w	CalcRoomOverHead
		cmp.w	#6,d1
		blt.w	return_3164EC
		move.w	#$600,d2
		btst	#6,status(a0)
		beq.s	loc_316470
		move.w	#$300,d2

loc_316470:					  ; ...
		tst.w	(Demo_mode_flag).w		  ; Check for demo mode	(note: in normal Sonic 2, this is the level select flag!)
		beq.s	loc_31647A
		add.w	#$80,d2			  ; Set	the jump height	to Sonic's height in Demo mode because Sonic Team were too lazy to record new demos for S2&K.

loc_31647A:					  ; ...
		moveq	#0,d0
		move.b	angle(a0),d0
		sub.b	#$40,d0
		jsr	CalcSine
		muls.w	d2,d1
		asr.l	#8,d1
		add.w	d1,x_vel(a0)
		muls.w	d2,d0
		asr.l	#8,d0
		add.w	d0,y_vel(a0)
		bset	#1,status(a0)
		bclr	#5,status(a0)
		addq.l	#4,sp
		move.b	#1,$3C(a0)
		clr.b	$38(a0)

loc_3164B2:
	tst.b	(CD_Sounds_flag).w
	beq.s	+
	move.w	#SndID_CDJump,d0
	bra.s	++
+
	move.w	#SndID_Jump,d0
+
	jsr	(PlaySound).l	; play jumping sound
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		btst	#2,status(a0)
		bne.s	Knuckles_RollJump
		move.b	#$E,y_radius(a0)
		move.b	#7,x_radius(a0)
		move.b	#2,anim(a0)
		bset	#2,status(a0)
		addq.w	#5,y_pos(a0)

return_3164EC:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_RollJump:				  ; ...
		bset	#4,status(a0)
		rts
; End of function Knuckles_Jump


; =============== S U B	R O U T	I N E =======================================


Knuckles_JumpHeight:				  ; ...
		tst.b	$3C(a0)
		beq.s	Knuckles_UpwardsVelocityCap
		move.w	#-$400,d1
		btst	#6,status(a0)
		beq.s	loc_31650C
		move.w	#-$200,d1

loc_31650C:					  ; ...
		cmp.w	y_vel(a0),d1
		ble.w	Knuckles_CheckGlide	  ; Check if Knuckles should begin a glide
		move.b	(Ctrl_1_Logical).w,d0
		and.b	#$70,d0
		bne.s	return_316522
		move.w	d1,y_vel(a0)

return_316522:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_UpwardsVelocityCap:			  ; ...
		tst.b	pinball_mode(a0)
		bne.s	return_316538
		cmp.w	#-$FC0,y_vel(a0)
		bge.s	return_316538
		move.w	#-$FC0,y_vel(a0)

return_316538:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_CheckGlide:				  ; ...
		tst.w	(Demo_mode_flag).w		  ; Don't glide on demos
		bne.w	return_3165D2
		tst.b	collision_property(a0)
		bne.w	return_3165D2
		move.b	($FFFFF603).w,d0
		and.b	#$70,d0
		beq.w	return_3165D2
		tst.b	(Super_Sonic_flag).w
		bne.s	Knuckles_BeginGlide
		cmp.b	#7,($FFFFFFB1).w
		bcs.s	Knuckles_BeginGlide
		cmp.w	#50,($FFFFFE20).w
		bcs.s	Knuckles_BeginGlide
		tst.b	(Update_HUD_timer).w
		bne.s	Knuckles_TurnSuper

Knuckles_BeginGlide:				  ; ...
		bclr	#2,status(a0)
		move.b	#$A,y_radius(a0)
		move.b	#$A,x_radius(a0)
		bclr	#4,status(a0)
		move.b	#1,collision_property(a0)
		add.w	#$200,y_vel(a0)
		bpl.s	loc_31659E
		move.w	#0,y_vel(a0)

loc_31659E:					  ; ...
		moveq	#0,d1
		move.w	#$400,d0
		move.w	d0,inertia(a0)
		btst	#0,status(a0)
		beq.s	loc_3165B4
		neg.w	d0
		moveq	#-$80,d1

loc_3165B4:					  ; ...
		move.w	d0,x_vel(a0)
		move.b	d1,$1F(a0)
		move.w	#0,angle(a0)
		move.b	#0,($FFFFF7AC).w
		bset	#1,($FFFFF7AC).w
		bsr.w	sub_315C7C

return_3165D2:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_TurnSuper:				  ; ...
	jmp	Sonic_CheckGoSuper
Knuckles_Super:					  ; ...
	jmp	Sonic_Super
; End of function Knuckles_JumpHeight


; =============== S U B	R O U T	I N E =======================================


Knuckles_Spindash:				  ; ...
		tst.b	pinball_mode(a0)
		bne.s	Knuckles_UpdateSpindash
		cmp.b	#8,anim(a0)
		bne.s	return_316718
		move.b	($FFFFF603).w,d0
		and.b	#$70,d0
		beq.w	return_316718
		move.b	#9,anim(a0)
	move.w	#SndID_SpindashRev,d0
	jsr	(PlaySound).l
		addq.l	#4,sp
		move.b	#1,pinball_mode(a0)
		move.w	#0,$3A(a0)
		cmp.b	#$C,$28(a0)
		bcs.s	loc_316710
		move.b	#2,(Sonic_Dust+anim).w

loc_316710:					  ; ...
		bsr.w	Knuckles_LevelBoundaries
		bsr.w	AnglePos

return_316718:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_UpdateSpindash:			  ; ...
		move.b	(Ctrl_1_Logical).w,d0
		btst	#1,d0
		bne.w	Knuckles_ChargingSpindash
		move.b	#$E,y_radius(a0)
		move.b	#7,x_radius(a0)
		move.b	#2,anim(a0)
		addq.w	#5,y_pos(a0)
		move.b	#0,pinball_mode(a0)
		moveq	#0,d0
		move.b	$3A(a0),d0
		add.w	d0,d0
		move.w	Spindash_Speeds(pc,d0.w),inertia(a0)
		tst.b	(Super_Sonic_flag).w
		beq.s	loc_31675C
		move.w	Super_Spindash_Speeds(pc,d0.w),inertia(a0)

loc_31675C:					  ; ...
		move.w	inertia(a0),d0
		sub.w	#$800,d0
		add.w	d0,d0
		and.w	#$1F00,d0
		neg.w	d0
		add.w	#$2000,d0
		move.w	d0,($FFFFEED0).w	  ; Lock camera	for a certain number of	frames
		btst	#0,status(a0)
		beq.s	loc_316780
		neg.w	inertia(a0)

loc_316780:					  ; ...
		bset	#2,status(a0)
		move.b	#0,(Sonic_Dust+anim).w
	move.w	#SndID_SpindashRelease,d0	; spindash zoom sound
	jsr	(PlaySound).l
		bra.s	Obj62_Spindash_ResetScreen
; ---------------------------------------------------------------------------
Spindash_Speeds:				  ; ...
		dc.w  $800, $880, $900,	$980, $A00, $A80, $B00,	$B80, $C00; 0
Super_Spindash_Speeds:				  ; ...
		dc.w  $B00, $B80, $C00,	$C80, $D00, $D80, $E00,	$E80, $F00; 0
; ---------------------------------------------------------------------------

Knuckles_ChargingSpindash:			  ; ...
		tst.w	$3A(a0)
		beq.s	loc_3167D4
		move.w	$3A(a0),d0
		lsr.w	#5,d0
		sub.w	d0,$3A(a0)
		bcc.s	loc_3167D4
		move.w	#0,$3A(a0)

loc_3167D4:					  ; ...
		move.b	($FFFFF603).w,d0
		and.b	#$70,d0
		beq.w	Obj62_Spindash_ResetScreen
		move.w	#$900,anim(a0)
	move.w	#SndID_SpindashRev,d0
	jsr	(PlaySound).l
		add.w	#$200,$3A(a0)
		cmp.w	#$800,$3A(a0)
		bcs.s	Obj62_Spindash_ResetScreen
		move.w	#$800,$3A(a0)

Obj62_Spindash_ResetScreen:			  ; ...
		addq.l	#4,sp
		cmp.w	#$60,($FFFFEED8).w
		beq.s	loc_316818
		bcc.s	loc_316814
		addq.w	#4,($FFFFEED8).w

loc_316814:					  ; ...
		subq.w	#2,($FFFFEED8).w

loc_316818:					  ; ...
		bsr.w	Knuckles_LevelBoundaries
		bsr.w	AnglePos
		rts
; End of function Knuckles_Spindash


; =============== S U B	R O U T	I N E =======================================


Knuckles_SlopeResist:				  ; ...
		move.b	angle(a0),d0
		add.b	#$60,d0
		cmp.b	#$C0,d0
		bcc.s	return_316856
		move.b	angle(a0),d0
		jsr	CalcSine
		muls.w	#$20,d0
		asr.l	#8,d0
		tst.w	inertia(a0)
		beq.s	return_316856
		bmi.s	loc_316852
		tst.w	d0
		beq.s	return_316850
		add.w	d0,inertia(a0)

return_316850:					  ; ...
		rts
; ---------------------------------------------------------------------------

loc_316852:					  ; ...
		add.w	d0,inertia(a0)

return_316856:					  ; ...
		rts
; End of function Knuckles_SlopeResist


; =============== S U B	R O U T	I N E =======================================


Knuckles_RollRepel:				  ; ...
		move.b	angle(a0),d0
		add.b	#$60,d0
		cmp.b	#$C0,d0
		bcc.s	return_316892
		move.b	angle(a0),d0
		jsr	CalcSine
		muls.w	#$50,d0
		asr.l	#8,d0
		tst.w	inertia(a0)
		bmi.s	loc_316888
		tst.w	d0
		bpl.s	loc_316882
		asr.l	#2,d0

loc_316882:					  ; ...
		add.w	d0,inertia(a0)
		rts
; ---------------------------------------------------------------------------

loc_316888:					  ; ...
		tst.w	d0
		bmi.s	loc_31688E
		asr.l	#2,d0

loc_31688E:					  ; ...
		add.w	d0,inertia(a0)

return_316892:					  ; ...
		rts
; End of function Knuckles_RollRepel


; =============== S U B	R O U T	I N E =======================================


Knuckles_SlopeRepel:				  ; ...
		nop
		tst.b	$38(a0)
		bne.s	return_3168CE
		tst.w	move_lock(a0)
		bne.s	loc_3168D0
		move.b	angle(a0),d0
		add.b	#$20,d0
		and.b	#$C0,d0
		beq.s	return_3168CE
		move.w	inertia(a0),d0
		bpl.s	loc_3168B8
		neg.w	d0

loc_3168B8:					  ; ...
		cmp.w	#$280,d0
		bcc.s	return_3168CE
		clr.w	inertia(a0)
		bset	#1,status(a0)
		move.w	#$1E,move_lock(a0)

return_3168CE:					  ; ...
		rts
; ---------------------------------------------------------------------------

loc_3168D0:					  ; ...
		subq.w	#1,move_lock(a0)
		rts
; End of function Knuckles_SlopeRepel


; =============== S U B	R O U T	I N E =======================================


Knuckles_JumpAngle:				  ; ...
		move.b	angle(a0),d0
		beq.s	Knuckles_JumpFlip
		bpl.s	loc_3168E6
		addq.b	#2,d0
		bcc.s	BraTo_Knuckles_JumpAngleSet
		moveq	#0,d0

BraTo_Knuckles_JumpAngleSet:			  ; ...
		bra.s	Knuckles_JumpAngleSet
; ---------------------------------------------------------------------------

loc_3168E6:					  ; ...
		subq.b	#2,d0
		bcc.s	Knuckles_JumpAngleSet
		moveq	#0,d0

Knuckles_JumpAngleSet:				  ; ...
		move.b	d0,angle(a0)

Knuckles_JumpFlip:				  ; ...
		move.b	$27(a0),d0
		beq.s	return_316934
		tst.w	inertia(a0)
		bmi.s	Knuckles_JumpLeftFlip

Knuckles_JumpRightFlip:				  ; ...
		move.b	$2D(a0),d1
		add.b	d1,d0
		bcc.s	BraTo_Knuckles_JumpFlipSet
		subq.b	#1,$2C(a0)
		bcc.s	BraTo_Knuckles_JumpFlipSet
		move.b	#0,$2C(a0)
		moveq	#0,d0

BraTo_Knuckles_JumpFlipSet:			  ; ...
		bra.s	Knuckles_JumpFlipSet
; ---------------------------------------------------------------------------

Knuckles_JumpLeftFlip:				  ; ...
		tst.b	$29(a0)
		bne.s	Knuckles_JumpRightFlip
		move.b	$2D(a0),d1
		sub.b	d1,d0
		bcc.s	Knuckles_JumpFlipSet
		subq.b	#1,$2C(a0)
		bcc.s	Knuckles_JumpFlipSet
		move.b	#0,$2C(a0)
		moveq	#0,d0

Knuckles_JumpFlipSet:				  ; ...
		move.b	d0,$27(a0)

return_316934:					  ; ...
		rts
; End of function Knuckles_JumpAngle


; =============== S U B	R O U T	I N E =======================================


Knuckles_DoLevelCollision2:			  ; ...
		move.l	#$FFFFD600,($FFFFF796).w
		cmp.b	#$C,$3E(a0)
		beq.s	loc_31694E
		move.l	#$FFFFD900,($FFFFF796).w

loc_31694E:					  ; ...
		move.b	$3F(a0),d5
		move.w	x_vel(a0),d1
		move.w	y_vel(a0),d2
		jsr	CalcAngle
		sub.b	#$20,d0
		and.b	#$C0,d0
		cmp.b	#$40,d0
		beq.w	Knuckles_HitLeftWall2
		cmp.b	#$80,d0
		beq.w	Knuckles_HitCeilingAndWalls2
		cmp.b	#$C0,d0
		beq.w	Knuckles_HitRightWall2
		bsr.w	CheckLeftWallDist
		tst.w	d1
		bpl.s	loc_316998
		sub.w	d1,8(a0)
		move.w	#0,x_vel(a0)
		bset	#5,($FFFFF7AC).w

loc_316998:					  ; ...
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	loc_3169B0
		add.w	d1,8(a0)
		move.w	#0,x_vel(a0)
		bset	#5,($FFFFF7AC).w

loc_3169B0:					  ; ...
		bsr.w	Sonic_CheckFloor
		tst.w	d1
		bpl.s	return_3169CC
		add.w	d1,y_pos(a0)
		move.b	d3,angle(a0)
		move.w	#0,y_vel(a0)
		bclr	#1,($FFFFF7AC).w

return_3169CC:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_HitLeftWall2:				  ; ...
		bsr.w	CheckLeftWallDist
		tst.w	d1
		bpl.s	Knuckles_HitCeilingAlt
		sub.w	d1,8(a0)
		move.w	#0,x_vel(a0)
		bset	#5,($FFFFF7AC).w

Knuckles_HitCeilingAlt:				  ; ...
		bsr.w	Sonic_CheckCeiling
		tst.w	d1
		bpl.s	Knuckles_HitFloor
		neg.w	d1
		cmp.w	#$14,d1
		bcc.s	loc_316A08
		add.w	d1,y_pos(a0)
		tst.w	y_vel(a0)
		bpl.s	return_316A06
		move.w	#0,y_vel(a0)

return_316A06:					  ; ...
		rts
; ---------------------------------------------------------------------------

loc_316A08:					  ; ...
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	return_316A20
		add.w	d1,8(a0)
		move.w	#0,x_vel(a0)
		bset	#5,($FFFFF7AC).w

return_316A20:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_HitFloor:				  ; ...
		tst.w	y_vel(a0)
		bmi.s	return_316A44
		bsr.w	Sonic_CheckFloor
		tst.w	d1
		bpl.s	return_316A44
		add.w	d1,y_pos(a0)
		move.b	d3,angle(a0)
		move.w	#0,y_vel(a0)
		bclr	#1,($FFFFF7AC).w

return_316A44:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_HitCeilingAndWalls2:			  ; ...
		bsr.w	CheckLeftWallDist
		tst.w	d1
		bpl.s	loc_316A5E
		sub.w	d1,8(a0)
		move.w	#0,x_vel(a0)
		bset	#5,($FFFFF7AC).w

loc_316A5E:					  ; ...
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	loc_316A76
		add.w	d1,8(a0)
		move.w	#0,x_vel(a0)
		bset	#5,($FFFFF7AC).w

loc_316A76:					  ; ...
		bsr.w	Sonic_CheckCeiling
		tst.w	d1
		bpl.s	return_316A88
		sub.w	d1,y_pos(a0)
		move.w	#0,y_vel(a0)

return_316A88:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_HitRightWall2:				  ; ...
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	loc_316AA2
		add.w	d1,8(a0)
		move.w	#0,x_vel(a0)
		bset	#5,($FFFFF7AC).w

loc_316AA2:					  ; ...
		bsr.w	Sonic_CheckCeiling
		tst.w	d1
		bpl.s	loc_316ABC
		sub.w	d1,y_pos(a0)
		tst.w	y_vel(a0)
		bpl.s	return_316ABA
		move.w	#0,y_vel(a0)

return_316ABA:					  ; ...
		rts
; ---------------------------------------------------------------------------

loc_316ABC:					  ; ...
		tst.w	y_vel(a0)
		bmi.s	return_316ADE
		bsr.w	Sonic_CheckFloor
		tst.w	d1
		bpl.s	return_316ADE
		add.w	d1,y_pos(a0)
		move.b	d3,angle(a0)
		move.w	#0,y_vel(a0)
		bclr	#1,($FFFFF7AC).w

return_316ADE:					  ; ...
		rts
; End of function Knuckles_DoLevelCollision2


; =============== S U B	R O U T	I N E =======================================


Knuckles_DoLevelCollision:			  ; ...
		move.l	#$FFFFD600,($FFFFF796).w
		cmp.b	#$C,$3E(a0)
		beq.s	loc_316AF8
		move.l	#$FFFFD900,($FFFFF796).w

loc_316AF8:					  ; ...
		move.b	$3F(a0),d5
		move.w	x_vel(a0),d1
		move.w	y_vel(a0),d2
		jsr	CalcAngle
		sub.b	#$20,d0
		and.b	#$C0,d0
		cmp.b	#$40,d0
		beq.w	Knuckles_HitLeftWall
		cmp.b	#$80,d0
		beq.w	Knuckles_HitCeilingAndWalls
		cmp.b	#$C0,d0
		beq.w	Knuckles_HitRightWall
		bsr.w	CheckLeftWallDist
		tst.w	d1
		bpl.s	loc_316B3C
		sub.w	d1,8(a0)
		move.w	#0,x_vel(a0)

loc_316B3C:					  ; ...
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	loc_316B4E
		add.w	d1,8(a0)
		move.w	#0,x_vel(a0)

loc_316B4E:					  ; ...
		bsr.w	Sonic_CheckFloor
		tst.w	d1
		bpl.s	return_316BC0
		move.b	y_vel(a0),d2
		addq.b	#8,d2
		neg.b	d2
		cmp.b	d2,d1
		bge.s	loc_316B66
		cmp.b	d2,d0
		blt.s	return_316BC0

loc_316B66:					  ; ...
		add.w	d1,y_pos(a0)
		move.b	d3,angle(a0)
		bsr.w	Knuckles_ResetOnFloor
		move.b	d3,d0
		add.b	#$20,d0
		and.b	#$40,d0
		bne.s	loc_316B9E
		move.b	d3,d0
		add.b	#$10,d0
		and.b	#$20,d0
		beq.s	loc_316B90
		asr	y_vel(a0)
		bra.s	loc_316BB2
; ---------------------------------------------------------------------------

loc_316B90:					  ; ...
		move.w	#0,y_vel(a0)
		move.w	x_vel(a0),inertia(a0)
		rts
; ---------------------------------------------------------------------------

loc_316B9E:					  ; ...
		move.w	#0,x_vel(a0)
		cmp.w	#$FC0,y_vel(a0)
		ble.s	loc_316BB2
		move.w	#$FC0,y_vel(a0)

loc_316BB2:					  ; ...
		move.w	y_vel(a0),inertia(a0)
		tst.b	d3
		bpl.s	return_316BC0
		neg.w	inertia(a0)

return_316BC0:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_HitLeftWall:				  ; ...
		bsr.w	CheckLeftWallDist
		tst.w	d1
		bpl.s	Knuckles_HitCeiling
		sub.w	d1,8(a0)
		move.w	#0,x_vel(a0)
		move.w	y_vel(a0),inertia(a0)
		rts
; ---------------------------------------------------------------------------

Knuckles_HitCeiling:				  ; ...
		bsr.w	Sonic_CheckCeiling
		tst.w	d1
		bpl.s	Knuckles_HitFloor_0
		sub.w	d1,y_pos(a0)
		tst.w	y_vel(a0)
		bpl.s	return_316BF4
		move.w	#0,y_vel(a0)

return_316BF4:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_HitFloor_0:				  ; ...
		tst.w	y_vel(a0)
		bmi.s	return_316C1C
		bsr.w	Sonic_CheckFloor
		tst.w	d1
		bpl.s	return_316C1C
		add.w	d1,y_pos(a0)
		move.b	d3,angle(a0)
		bsr.w	Knuckles_ResetOnFloor
		move.w	#0,y_vel(a0)
		move.w	x_vel(a0),inertia(a0)

return_316C1C:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_HitCeilingAndWalls:			  ; ...
		bsr.w	CheckLeftWallDist
		tst.w	d1
		bpl.s	loc_316C30
		sub.w	d1,8(a0)
		move.w	#0,x_vel(a0)

loc_316C30:					  ; ...
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	loc_316C42
		add.w	d1,8(a0)
		move.w	#0,x_vel(a0)

loc_316C42:					  ; ...
		bsr.w	Sonic_CheckCeiling
		tst.w	d1
		bpl.s	return_316C78
		sub.w	d1,y_pos(a0)
		move.b	d3,d0
		add.b	#$20,d0
		and.b	#$40,d0
		bne.s	loc_316C62
		move.w	#0,y_vel(a0)
		rts
; ---------------------------------------------------------------------------

loc_316C62:					  ; ...
		move.b	d3,angle(a0)
		bsr.w	Knuckles_ResetOnFloor
		move.w	y_vel(a0),inertia(a0)
		tst.b	d3
		bpl.s	return_316C78
		neg.w	inertia(a0)

return_316C78:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_HitRightWall:				  ; ...
		bsr.w	CheckRightWallDist
		tst.w	d1
		bpl.s	Knuckles_HitCeiling2
		add.w	d1,8(a0)
		move.w	#0,x_vel(a0)
		move.w	y_vel(a0),inertia(a0)
		rts
; ---------------------------------------------------------------------------

Knuckles_HitCeiling2:				  ; ...
		bsr.w	Sonic_CheckCeiling
		tst.w	d1
		bpl.s	Knuckles_HitFloor2
		sub.w	d1,y_pos(a0)
		tst.w	y_vel(a0)
		bpl.s	return_316CAC
		move.w	#0,y_vel(a0)

return_316CAC:					  ; ...
		rts
; ---------------------------------------------------------------------------

Knuckles_HitFloor2:				  ; ...
		tst.w	y_vel(a0)
		bmi.s	return_316CD4
		bsr.w	Sonic_CheckFloor
		tst.w	d1
		bpl.s	return_316CD4
		add.w	d1,y_pos(a0)
		move.b	d3,angle(a0)
		bsr.w	Knuckles_ResetOnFloor
		move.w	#0,y_vel(a0)
		move.w	x_vel(a0),inertia(a0)

return_316CD4:					  ; ...
		rts
; End of function Knuckles_DoLevelCollision


; =============== S U B	R O U T	I N E =======================================


Knuckles_ResetOnFloor:				  ; ...
		tst.b	pinball_mode(a0)
		bne.s	Knuckles_ResetOnFloor_Part3
		move.b	#0,anim(a0)
; End of function Knuckles_ResetOnFloor


; =============== S U B	R O U T	I N E =======================================


Knuckles_ResetOnFloor_Part2:			  ; ...
		move.b	y_radius(a0),d0
		move.b	#$13,y_radius(a0)
		move.b	#9,x_radius(a0)
		btst	#2,status(a0)
		beq.s	Knuckles_ResetOnFloor_Part3
		bclr	#2,status(a0)
		move.b	#0,anim(a0)
		sub.b	#$13,d0
		ext.w	d0
		add.w	d0,y_pos(a0)

Knuckles_ResetOnFloor_Part3:			  ; ...
		bclr	#1,status(a0)
		bclr	#5,status(a0)
		bclr	#4,status(a0)
		move.b	#0,$3C(a0)
		move.w	#0,($FFFFF7D0).w
		move.b	#0,$27(a0)
		move.b	#0,$29(a0)
		move.b	#0,$2C(a0)
		move.w	#0,($FFFFF66C).w
		move.b	#0,collision_property(a0)
		cmp.b	#$20,anim(a0)
		bcc.s	loc_316D5C
		cmp.b	#$14,anim(a0)
		bne.s	return_316D62

loc_316D5C:					  ; ...
		move.b	#0,anim(a0)

return_316D62:					  ; ...
		rts
; End of function Knuckles_ResetOnFloor_Part2


; =============== S U B	R O U T	I N E =======================================


Obj62_Hurt:					  ; ...

; FUNCTION CHUNK AT 00316E14 SIZE 0000001C BYTES

		tst.w	($FFFFFFDA).w
		beq.s	Obj62_Hurt_Normal
		btst	#4,($FFFFF605).w
		beq.s	Obj62_Hurt_Normal
		move.w	#1,($FFFFFE08).w
		clr.b	($FFFFF7CC).w
		rts
; ---------------------------------------------------------------------------

Obj62_Hurt_Normal:				  ; ...
		tst.b	$25(a0)
		bmi.w	Knuckles_HurtInstantRecover
		jsr	ObjectMove		  ; AKA	SpeedToPos in Sonic 1
		add.w	#$30,y_vel(a0)
		btst	#6,status(a0)
		beq.s	loc_316DA0
		sub.w	#$20,y_vel(a0)

loc_316DA0:					  ; ...
		cmp.w	#$FF00,($FFFFEECC).w
		bne.s	loc_316DAE
		and.w	#$7FF,y_pos(a0)

loc_316DAE:					  ; ...
		bsr.w	Knuckles_HurtStop
		bsr.w	Knuckles_LevelBoundaries
		bsr.w	Knuckles_RecordPositions
		bsr.w	Knuckles_Animate
		bsr.w	LoadKnucklesDynPLC
		jmp	DisplaySprite
; End of function Obj62_Hurt


; =============== S U B	R O U T	I N E =======================================


Knuckles_HurtStop:				  ; ...
		move.w	($FFFFEECE).w,d0
		add.w	#$E0,d0
		cmp.w	y_pos(a0),d0
		blt.w	JmpToK_KillCharacter
		bsr.w	Knuckles_DoLevelCollision
		btst	#1,status(a0)
		bne.s	return_316E0C
		moveq	#0,d0
		move.w	d0,y_vel(a0)
		move.w	d0,x_vel(a0)
		move.w	d0,inertia(a0)
		move.b	d0,$2A(a0)
		move.b	#0,anim(a0)
		subq.b	#2,routine(a0)
		move.w	#$78,$30(a0)
		move.b	#0,pinball_mode(a0)

return_316E0C:					  ; ...
		rts
; ---------------------------------------------------------------------------

JmpToK_KillCharacter:				  ; ...
		jmp	KillCharacter
; End of function Knuckles_HurtStop

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR Obj62_Hurt

Knuckles_HurtInstantRecover:			  ; ...
		subq.b	#2,routine(a0)
		move.b	#0,$25(a0)
		bsr.w	Knuckles_RecordPositions
		bsr.w	Knuckles_Animate
		bsr.w	LoadKnucklesDynPLC
		jmp	DisplaySprite
; END OF FUNCTION CHUNK	FOR Obj62_Hurt

; =============== S U B	R O U T	I N E =======================================


Obj62_Dead:					  ; ...
		tst.w	($FFFFFFDA).w
		beq.s	loc_316E4A
		btst	#4,($FFFFF605).w
		beq.s	loc_316E4A
		move.w	#1,($FFFFFE08).w
		clr.b	($FFFFF7CC).w
		rts
; ---------------------------------------------------------------------------

loc_316E4A:					  ; ...
		bsr.w	Obj62_CheckGameOver
		jsr	ObjectMoveAndFall
		bsr.w	Knuckles_RecordPositions
		bsr.w	Knuckles_Animate
		bsr.w	LoadKnucklesDynPLC
		jmp	DisplaySprite
; End of function Obj62_Dead


; =============== S U B	R O U T	I N E =======================================


Obj62_CheckGameOver:
	move.b	#1,(Scroll_lock).w
	move.b	#0,spindash_flag(a0)
	move.w	(Camera_Max_Y_pos_now).w,d0
	addi.w	#$100,d0
	cmp.w	y_pos(a0),d0
	bge.w	return_316F64
	move.b	#8,routine(a0)	; => Obj62_Gone
	move.w	#60,restart_countdown(a0)
	addq.b	#1,(Update_HUD_lives).w	; update lives counter
	subq.b	#1,(Life_count).w	; subtract 1 from number of lives
	bne.s	Obj62_ResetLevel	; if it's not a game over, branch
	move.w	#0,restart_countdown(a0)
	move.b	#ObjID_GameOver,(GameOver_GameText+id).w ; load Obj39 (game over text)
	move.b	#ObjID_GameOver,(GameOver_OverText+id).w ; load Obj39 (game over text)
	move.b	#1,(GameOver_OverText+mapping_frame).w
	move.w	a0,(GameOver_GameText+parent).w
	clr.b	(Time_Over_flag).w
; loc_1B26E:
Obj62_Finished:
	clr.b	(Update_HUD_timer).w
	clr.b	(Update_HUD_timer_2P).w
	move.b	#8,routine(a0)	; => Obj62_Gone
	move.w	#MusID_GameOver,d0
	jsr	(PlayMusic).l
	moveq	#PLCID_GameOver,d0
	jmp	(LoadPLC).l
; ---------------------------------------------------------------------------

Obj62_ResetLevel:				  ; ...
		tst.b	($FFFFFE1A).w
		beq.s	Obj62_ResetLevel_Part2
		move.w	#0,$3A(a0)
		move.b	#$39,($FFFFB080).w
		move.b	#$39,($FFFFB0C0).w
		move.b	#2,($FFFFB09A).w
		move.b	#3,($FFFFB0DA).w
		move.w	a0,($FFFFB0BE).w
		bra.s	Obj62_Finished
; ---------------------------------------------------------------------------

Obj62_ResetLevel_Part2:				  ; ...
		tst.w	(Two_player_mode).w
		beq.s	return_316F64
		move.b	#0,($FFFFEEBE).w
		move.b	#$A,routine(a0)
		move.w	($FFFFFE32).w,8(a0)
		move.w	($FFFFFE34).w,y_pos(a0)
		move.w	($FFFFFE3C).w,2(a0)
		move.w	($FFFFFE3E).w,$3E(a0)
		clr.w	($FFFFFE20).w
		clr.b	($FFFFFE1B).w
		move.b	#0,$2A(a0)
		move.b	#5,anim(a0)
		move.w	#0,x_vel(a0)
		move.w	#0,y_vel(a0)
		move.w	#0,inertia(a0)
		move.b	#2,status(a0)
		move.w	#0,move_lock(a0)
		move.w	#0,$3A(a0)

return_316F64:					  ; ...
		rts
; End of function Obj62_CheckGameOver


; =============== S U B	R O U T	I N E =======================================


Obj62_Gone:					  ; ...
		tst.w	$3A(a0)
		beq.s	return_316F78
		subq.w	#1,$3A(a0)
		bne.s	return_316F78
		move.w	#1,($FFFFFE02).w

return_316F78:					  ; ...
		rts
; End of function Obj62_Gone

; ---------------------------------------------------------------------------

Obj62_Respawning:				  ; ...
		tst.w	(Camera_X_pos_diff).w
		bne.s	loc_316F8C
		tst.w	(Camera_Y_pos_diff).w
		bne.s	loc_316F8C
		move.b	#2,routine(a0)

loc_316F8C:					  ; ...
		bsr.w	Knuckles_Animate
		bsr.w	LoadKnucklesDynPLC
		jmp	DisplaySprite

; =============== S U B	R O U T	I N E =======================================


Knuckles_Animate:				  ; ...
	lea	(KnucklesAniData).l,a1
	tst.b	(Super_Sonic_flag).w
	beq.s	+
	lea	(SuperKnucklesAniData).l,a1
+
		moveq	#0,d0
		move.b	anim(a0),d0
		cmp.b	prev_anim(a0),d0
		beq.s	KAnim_Do
		move.b	d0,prev_anim(a0)
		move.b	#0,anim_frame(a0)
		move.b	#0,$1E(a0)
		bclr	#5,status(a0)

KAnim_Do:					  ; ...
		add.w	d0,d0
		add.w	(a1,d0.w),a1
		move.b	(a1),d0
		bmi.s	KAnim_WalkRun
		move.b	status(a0),d1
		and.b	#1,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		subq.b	#1,$1E(a0)
		bpl.s	KAnim_Delay
		move.b	d0,$1E(a0)

KAnim_Do2:					  ; ...
		moveq	#0,d1
		move.b	anim_frame(a0),d1
		move.b	1(a1,d1.w),d0
		cmp.b	#$FC,d0
		bcc.s	KAnim_End_FF

KAnim_Next:					  ; ...
		move.b	d0,$1A(a0)
		addq.b	#1,anim_frame(a0)

KAnim_Delay:					  ; ...
		rts
; ---------------------------------------------------------------------------

KAnim_End_FF:					  ; ...
		addq.b	#1,d0
		bne.s	KAnim_End_FE
		move.b	#0,anim_frame(a0)
		move.b	1(a1),d0
		bra.s	KAnim_Next
; ---------------------------------------------------------------------------

KAnim_End_FE:					  ; ...
		addq.b	#1,d0
		bne.s	KAnim_End_FD
		move.b	2(a1,d1.w),d0
		sub.b	d0,anim_frame(a0)
		sub.b	d0,d1
		move.b	1(a1,d1.w),d0
		bra.s	KAnim_Next
; ---------------------------------------------------------------------------

KAnim_End_FD:					  ; ...
		addq.b	#1,d0
		bne.s	KAnim_End
		move.b	2(a1,d1.w),anim(a0)

KAnim_End:					  ; ...
		rts
; ---------------------------------------------------------------------------

KAnim_WalkRun:					  ; ...
		addq.b	#1,d0
		bne.w	KAnim_Roll
		moveq	#0,d0
		move.b	$27(a0),d0
		bne.w	KAnim_Tumble
		moveq	#0,d1
		move.b	angle(a0),d0
		bmi.s	loc_31704E
		beq.s	loc_31704E
		subq.b	#1,d0

loc_31704E:					  ; ...
		move.b	status(a0),d2
		and.b	#1,d2
		bne.s	loc_31705A
		not.b	d0

loc_31705A:					  ; ...
		add.b	#$10,d0
		bpl.s	loc_317062
		moveq	#3,d1

loc_317062:					  ; ...
		and.b	#$FC,1(a0)
		eor.b	d1,d2
		or.b	d2,1(a0)
		btst	#5,status(a0)
		bne.w	KAnim_Push
		lsr.b	#4,d0
		and.b	#6,d0
		move.w	inertia(a0),d2
		bpl.s	loc_317086
		neg.w	d2

loc_317086:					  ; ...
		tst.b	status_secondary(a0)
		bpl.w	loc_317090
		add.w	d2,d2

loc_317090:					  ; ...
		lea	(KnucklesAni_Run).l,a1
		cmp.w	#$600,d2
		bcc.s	loc_3170A4
		lea	(KnucklesAni_Walk).l,a1
		add.b	d0,d0

loc_3170A4:					  ; ...
		add.b	d0,d0
		move.b	d0,d3
		moveq	#0,d1
		move.b	anim_frame(a0),d1
		move.b	1(a1,d1.w),d0
		cmp.b	#$FF,d0
		bne.s	loc_3170C2
		move.b	#0,anim_frame(a0)
		move.b	1(a1),d0

loc_3170C2:					  ; ...
		move.b	d0,$1A(a0)
		add.b	d3,$1A(a0)
		subq.b	#1,$1E(a0)
		bpl.s	return_3170E4
		neg.w	d2
		add.w	#$800,d2
		bpl.s	loc_3170DA
		moveq	#0,d2

loc_3170DA:					  ; ...
		lsr.w	#8,d2
		move.b	d2,$1E(a0)
		addq.b	#1,anim_frame(a0)

return_3170E4:					  ; ...
		rts
; ---------------------------------------------------------------------------

KAnim_Tumble:					  ; ...
		move.b	$27(a0),d0
		moveq	#0,d1
		move.b	status(a0),d2
		and.b	#1,d2
		bne.s	KAnim_Tumble_Left
		and.b	#$FC,1(a0)
		add.b	#$B,d0
		divu.w	#$16,d0
		add.b	#$31,d0
		move.b	d0,$1A(a0)
		move.b	#0,$1E(a0)
		rts
; ---------------------------------------------------------------------------

KAnim_Tumble_Left:				  ; ...
		and.b	#$FC,1(a0)
		tst.b	$29(a0)
		beq.s	loc_31712C
		or.b	#1,1(a0)
		add.b	#$B,d0
		bra.s	loc_317138
; ---------------------------------------------------------------------------

loc_31712C:					  ; ...
		or.b	#3,1(a0)
		neg.b	d0
		add.b	#-$71,d0

loc_317138:					  ; ...
		divu.w	#$16,d0
		add.b	#$31,d0
		move.b	d0,$1A(a0)
		move.b	#0,$1E(a0)
		rts
; ---------------------------------------------------------------------------

KAnim_Roll:					  ; ...
		subq.b	#1,$1E(a0)
		bpl.w	KAnim_Delay
		addq.b	#1,d0
		bne.s	KAnim_Push
		move.w	inertia(a0),d2
		bpl.s	loc_317160
		neg.w	d2

loc_317160:					  ; ...
		lea	(KnucklesAni_Roll2).l,a1
		cmp.w	#$600,d2
		bcc.s	loc_317172
		lea	(KnucklesAni_Roll).l,a1

loc_317172:					  ; ...
		neg.w	d2
		add.w	#$400,d2
		bpl.s	loc_31717C
		moveq	#0,d2

loc_31717C:					  ; ...
		lsr.w	#8,d2
		move.b	d2,$1E(a0)
		move.b	status(a0),d1
		and.b	#1,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra.w	KAnim_Do2
; ---------------------------------------------------------------------------

KAnim_Push:					  ; ...
		subq.b	#1,$1E(a0)
		bpl.w	KAnim_Delay
		move.w	inertia(a0),d2
		bmi.s	loc_3171A8
		neg.w	d2

loc_3171A8:					  ; ...
		add.w	#$800,d2
		bpl.s	loc_3171B0
		moveq	#0,d2

loc_3171B0:					  ; ...
		lsr.w	#8,d2
		move.b	d2,$1E(a0)
		lea	(KnucklesAni_Push).l,a1
		move.b	status(a0),d1
		and.b	#1,d1
		and.b	#$FC,1(a0)
		or.b	d1,1(a0)
		bra.w	KAnim_Do2
; End of function Knuckles_Animate

; ---------------------------------------------------------------------------
KnucklesAniData:
		dc.w KnucklesAni_Walk-KnucklesAniData; 0 ; ...
		dc.w KnucklesAni_Run-KnucklesAniData; 1
		dc.w KnucklesAni_Roll-KnucklesAniData; 2
		dc.w KnucklesAni_Roll2-KnucklesAniData;	3
		dc.w KnucklesAni_Push-KnucklesAniData; 4
		dc.w KnucklesAni_Wait-KnucklesAniData; 5
		dc.w KnucklesAni_Balance-KnucklesAniData; 6
		dc.w KnucklesAni_LookUp-KnucklesAniData; 7
		dc.w KnucklesAni_Duck-KnucklesAniData; 8
		dc.w KnucklesAni_Spindash-KnucklesAniData; 9
		dc.w KnucklesAni_Unused-KnucklesAniData; 10
		dc.w KnucklesAni_Pull-KnucklesAniData; 11
		dc.w KnucklesAni_Balance2-KnucklesAniData; 12
		dc.w KnucklesAni_Stop-KnucklesAniData; 13
		dc.w KnucklesAni_Float-KnucklesAniData;	14
		dc.w KnucklesAni_Float2-KnucklesAniData; 15
		dc.w KnucklesAni_Spring-KnucklesAniData; 16
		dc.w KnucklesAni_Hang-KnucklesAniData; 17
		dc.w KnucklesAni_Unused_0-KnucklesAniData; 18
		dc.w KnucklesAni_S3EndingPose-KnucklesAniData; 19
		dc.w KnucklesAni_WFZHang-KnucklesAniData; 20
		dc.w KnucklesAni_Bubble-KnucklesAniData; 21
		dc.w KnucklesAni_DeathBW-KnucklesAniData; 22
		dc.w KnucklesAni_Drown-KnucklesAniData;	23
		dc.w KnucklesAni_Death-KnucklesAniData;	24
		dc.w KnucklesAni_OilSlide-KnucklesAniData; 25
		dc.w KnucklesAni_Hurt-KnucklesAniData; 26
		dc.w KnucklesAni_OilSlide_0-KnucklesAniData; 27
		dc.w KnucklesAni_Blank-KnucklesAniData;	28
		dc.w KnucklesAni_Unused_1-KnucklesAniData; 29
		dc.w KnucklesAni_Unused_2-KnucklesAniData; 30
		dc.w KnucklesAni_Transform-KnucklesAniData; 31
		dc.w KnucklesAni_Gliding-KnucklesAniData; 32
		dc.w KnucklesAni_FallFromGlide-KnucklesAniData;	33
		dc.w KnucklesAni_GetUp-KnucklesAniData;	34
		dc.w KnucklesAni_HardFall-KnucklesAniData; 35
		dc.w KnucklesAni_Badass-KnucklesAniData; 36
KnucklesAni_Walk:dc.b $FF,  7,	8,  1,	2,  3,	4,  5,	6,$FF; 0 ; ...
KnucklesAni_Run:dc.b $FF,$21,$22,$23,$24,$FF,$FF,$FF,$FF,$FF; 0	; ...
KnucklesAni_Roll:dc.b $FE,$9A,$96,$9A,$97,$9A,$98,$9A,$99,$FF; 0 ; ...
KnucklesAni_Roll2:dc.b $FE,$9A,$96,$9A,$97,$9A,$98,$9A,$99,$FF;	0 ; ...
KnucklesAni_Push:dc.b $FD,$CE,$CF,$D0,$D1,$FF,$FF,$FF,$FF,$FF; 0 ; ...
KnucklesAni_Wait:dc.b	5,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56; 0 ; ...
		dc.b $56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56; 13
		dc.b $56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56; 26
		dc.b $56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$56,$D2; 39
		dc.b $D2,$D2,$D3,$D3,$D3,$D2,$D2,$D2,$D3,$D3,$D3,$D2,$D2; 52
		dc.b $D2,$D3,$D3,$D3,$D2,$D2,$D2,$D3,$D3,$D3,$D2,$D2,$D2; 65
		dc.b $D3,$D3,$D3,$D2,$D2,$D2,$D3,$D3,$D3,$D2,$D2,$D2,$D3; 78
		dc.b $D3,$D3,$D2,$D2,$D2,$D3,$D3,$D3,$D2,$D2,$D2,$D3,$D3; 91
		dc.b $D3,$D4,$D4,$D4,$D4,$D4,$D7,$D8,$D9,$DA,$DB,$D8,$D9; 104
		dc.b $DA,$DB,$D8,$D9,$DA,$DB,$D8,$D9,$DA,$DB,$D8,$D9,$DA; 117
		dc.b $DB,$D8,$D9,$DA,$DB,$D8,$D9,$DA,$DB,$D8,$D9,$DA,$DB; 130
		dc.b $DC,$DD,$DC,$DD,$DE,$DE,$D8,$D7,$FF; 143
KnucklesAni_Balance:dc.b   3,$9F,$9F,$A0,$A0,$A1,$A1,$A2,$A2,$A3,$A3,$A4,$A4; 0	; ...
		dc.b $A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5; 13
		dc.b $A5,$A5,$A6,$A6,$A6,$A7,$A7,$A7,$A8,$A8,$A9,$A9,$AA; 26
		dc.b $AA,$FE,  6		  ; 39
KnucklesAni_LookUp:dc.b	  5,$D5,$D6,$FE,  1	     ; 0 ; ...
KnucklesAni_Duck:dc.b	5,$9B,$9C,$FE,	1	   ; 0 ; ...
KnucklesAni_Spindash:dc.b   0,$86,$87,$86,$88,$86,$89,$86,$8A,$86,$8B,$FF; 0 ; ...
KnucklesAni_Unused:dc.b	  9,$BA,$C5,$C6,$C6,$C6,$C6,$C6,$C6,$C7,$C7,$C7,$C7; 0 ; ...
		dc.b $C7,$C7,$C7,$C7,$C7,$C7,$C7,$C7,$FD,  0; 13
KnucklesAni_Pull:dc.b  $F,$8F,$FF		   ; 0 ; ...
KnucklesAni_Balance2:dc.b   3,$A1,$A1,$A2,$A2,$A3,$A3,$A4,$A4,$A5,$A5,$A5,$A5; 0 ; ...
		dc.b $A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5,$A5,$A6,$A6; 13
		dc.b $A6,$A7,$A7,$A7,$A8,$A8,$A9,$A9,$AA,$AA,$FE; 26
		dc.b   6
KnucklesAni_Stop:dc.b	3,$9D,$9E,$9F,$A0,$FD,	0  ; 0 ; ...
KnucklesAni_Float:dc.b	 7,$C0,$FF		    ; 0	; ...
KnucklesAni_Float2:dc.b	  5,$C0,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$FF; 0 ; ...
KnucklesAni_Spring:dc.b	$2F,$8E,$FD,  0		     ; 0 ; ...
KnucklesAni_Hang:dc.b	1,$AE,$AF,$FF		   ; 0 ; ...
KnucklesAni_Unused_0:dc.b  $F,$43,$43,$43,$FE,	1      ; 0 ; ...
KnucklesAni_S3EndingPose:dc.b	5,$B1,$B2,$B2,$B2,$B3,$B4,$FE,	1,  7,$B1,$B3,$B3; 0 ; ...
		dc.b $B3,$B3,$B3,$B3,$B2,$B3,$B4,$B3,$FE,  4; 13
KnucklesAni_WFZHang:dc.b $13,$91,$FF		      ;	0 ; ...
KnucklesAni_Bubble:dc.b	 $B,$B0,$B0,  3,  4,$FD,  0  ; 0 ; ...
KnucklesAni_DeathBW:dc.b $20,$AC,$FF		      ;	0 ; ...
KnucklesAni_Drown:dc.b $20,$AD,$FF		    ; 0	; ...
KnucklesAni_Death:dc.b $20,$AB,$FF		    ; 0	; ...
KnucklesAni_OilSlide:dc.b   9,$8C,$FF		       ; 0 ; ...
KnucklesAni_Hurt:dc.b $40,$8D,$FF		   ; 0 ; ...
KnucklesAni_OilSlide_0:dc.b   9,$8C,$FF			 ; 0 ; ...
KnucklesAni_Blank:dc.b $77,  0,$FF		    ; 0	; ...
KnucklesAni_Unused_1:dc.b $13,$D0,$D1,$FF	       ; 0 ; ...
KnucklesAni_Unused_2:dc.b   3,$CF,$C8,$C9,$CA,$CB,$FE  ; 0 ; ...
		dc.b   4
KnucklesAni_Gliding:dc.b $1F,$C0,$FF		      ;	0 ; ...
KnucklesAni_FallFromGlide:dc.b	 7,$CA,$CB,$FE,	 1	    ; 0	; ...
KnucklesAni_GetUp:dc.b	$F,$CD,$FD,  0		    ; 0	; ...
KnucklesAni_HardFall:dc.b  $F,$9C,$FD,	0	       ; 0 ; ...
KnucklesAni_Badass:dc.b	  5,$D8,$D9,$DA,$DB,$D8,$D9,$DA,$DB,$D8,$D9,$DA,$DB; 0 ; ...
		dc.b $D8,$D9,$DA,$DB,$D8,$D9,$DA,$DB,$D8,$D9,$DA,$DB,$D8; 13
		dc.b $D9,$DA,$DB,$D8,$D9,$DA,$DB,$DC,$DD,$DC,$DD,$DE,$DE; 26
		dc.b $FF			  ; 39
KnucklesAni_Transform:dc.b   2,$EB,$EB,$EC,$ED,$EC,$ED,$EC,$ED,$EC,$ED,$EC,$ED;	0 ; ...
		dc.b $FD,  0,  0		  ; 13

SuperKnucklesAniData:
		dc.w KnucklesAni_Walk-SuperKnucklesAniData; 0 ; ...
		dc.w KnucklesAni_Run-SuperKnucklesAniData; 1
		dc.w KnucklesAni_Roll-SuperKnucklesAniData; 2
		dc.w KnucklesAni_Roll2-SuperKnucklesAniData;	3
		dc.w KnucklesAni_Push-SuperKnucklesAniData; 4
		dc.w SuperKnucklesAni_Stand-SuperKnucklesAniData; 5
		dc.w KnucklesAni_Balance-SuperKnucklesAniData; 6
		dc.w KnucklesAni_LookUp-SuperKnucklesAniData; 7
		dc.w KnucklesAni_Duck-SuperKnucklesAniData; 8
		dc.w KnucklesAni_Spindash-SuperKnucklesAniData; 9
		dc.w KnucklesAni_Unused-SuperKnucklesAniData; 10
		dc.w KnucklesAni_Pull-SuperKnucklesAniData; 11
		dc.w KnucklesAni_Balance2-SuperKnucklesAniData; 12
		dc.w KnucklesAni_Stop-SuperKnucklesAniData; 13
		dc.w KnucklesAni_Float-SuperKnucklesAniData;	14
		dc.w KnucklesAni_Float2-SuperKnucklesAniData; 15
		dc.w KnucklesAni_Spring-SuperKnucklesAniData; 16
		dc.w KnucklesAni_Hang-SuperKnucklesAniData; 17
		dc.w KnucklesAni_Unused_0-SuperKnucklesAniData; 18
		dc.w KnucklesAni_S3EndingPose-SuperKnucklesAniData; 19
		dc.w KnucklesAni_WFZHang-SuperKnucklesAniData; 20
		dc.w KnucklesAni_Bubble-SuperKnucklesAniData; 21
		dc.w KnucklesAni_DeathBW-SuperKnucklesAniData; 22
		dc.w KnucklesAni_Drown-SuperKnucklesAniData;	23
		dc.w KnucklesAni_Death-SuperKnucklesAniData;	24
		dc.w KnucklesAni_OilSlide-SuperKnucklesAniData; 25
		dc.w KnucklesAni_Hurt-SuperKnucklesAniData; 26
		dc.w KnucklesAni_OilSlide_0-SuperKnucklesAniData; 27
		dc.w KnucklesAni_Blank-SuperKnucklesAniData;	28
		dc.w KnucklesAni_Unused_1-SuperKnucklesAniData; 29
		dc.w KnucklesAni_Unused_2-SuperKnucklesAniData; 30
		dc.w KnucklesAni_Transform-SuperKnucklesAniData; 31
		dc.w KnucklesAni_Gliding-SuperKnucklesAniData; 32
		dc.w KnucklesAni_FallFromGlide-SuperKnucklesAniData;	33
		dc.w KnucklesAni_GetUp-SuperKnucklesAniData;	34
		dc.w KnucklesAni_HardFall-SuperKnucklesAniData; 35
		dc.w KnucklesAni_Badass-SuperKnucklesAniData; 36

SuperKnucklesAni_Stand:	dc.b	7, $D2, $D3, $D4, $D3, $FF
; =============== S U B	R O U T	I N E =======================================


LoadKnucklesDynPLC:				  ; ...
		moveq	#0,d0
		move.b	$1A(a0),d0
; End of function LoadKnucklesDynPLC

; START	OF FUNCTION CHUNK FOR sub_333D66

LoadKnucklesDynPLC_Part2:			  ; ...
		cmp.b	($FFFFF766).w,d0
		beq.w	return_31753E
		move.b	d0,($FFFFF766).w
	lea	(MapRUnc_Knuckles).l,a2
	tst.b	(Super_Sonic_flag).w
	beq.s	+
	lea	(MapRUnc_SuperKnuckles).l,a2
+
		add.w	d0,d0
		add.w	(a2,d0.w),a2
		move.w	(a2)+,d5
		subq.w	#1,d5
		bmi.w	return_31753E
		move.w	#tiles_to_bytes(ArtTile_ArtUnc_Sonic),d4
; loc_1B86E:
KPLC_ReadEntry:
		moveq	#0,d1
		move.w	(a2)+,d1
		move.w	d1,d3
		lsr.w	#8,d3
		andi.w	#$F0,d3
		addi.w	#$10,d3
		andi.w	#$FFF,d1
		lsl.l	#5,d1
	tst.b	(Super_Sonic_flag).w
	beq.s	+
	addi.l	#ArtUnc_SuperKnuckles,d1
	bra.s	++
+
	addi.l	#ArtUnc_Knuckles,d1
+
		move.w	d4,d2
		add.w	d3,d4
		add.w	d3,d4
		jsr	(QueueDMATransfer).l
		dbf	d5,KPLC_ReadEntry	; repeat for number of entries

return_31753E:					  ; ...
		rts
; END OF FUNCTION CHUNK	FOR sub_333D66

; =============== S U B	R O U T	I N E =======================================

; Doesn't exist in S2

sub_3192E6:					  ; ...
		move.b	x_radius(a0),d0
		ext.w	d0
		sub.w	d0,d2
		eor.w	#$F,d2
		lea	(Primary_Angle).w,a4
		move.w	#-$10,a3
		move.w	#$800,d6
		bsr.w	FindFloor
		move.b	#$80,d2

loc_319306:
		bra.w	loc_318FE8
; End of function sub_3192E6

; START	OF FUNCTION CHUNK FOR CheckRightWallDist

loc_318FE8:					  ; ...
		move.b	(Primary_Angle).w,d3
		btst	#0,d3
		beq.s	return_318FF4
		move.b	d2,d3

return_318FF4:					  ; ...
		rts
; END OF FUNCTION CHUNK	FOR CheckRightWallDist

; =============== S U B	R O U T	I N E =======================================


sub_318FF6:					  ; ...
		move.b	x_radius(a0),d0
		ext.w	d0
		add.w	d0,d2
		lea	(Primary_Angle).w,a4
		move.w	#$10,a3
		move.w	#0,d6
		bsr.w	FindFloor
		move.b	#0,d2
		bra.s	loc_318FE8
; End of function sub_318FF6

; ---------------------------------------------------------------------------
; This doesn't exist in S2...
; START	OF FUNCTION CHUNK FOR sub_315C22

loc_319208:					  ; ...
		move.b	x_radius(a0),d0
		ext.w	d0
		add.w	d0,d3
		lea	(Primary_Angle).w,a4
		move.w	#$10,a3
		move.w	#0,d6
		bsr.w	FindWall
		move.b	#$C0,d2
		bra.w	loc_318FE8
; END OF FUNCTION CHUNK	FOR sub_315C22

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR sub_315C22

loc_3193D2:					  ; ...
		move.b	x_radius(a0),d0
		ext.w	d0
		sub.w	d0,d3
		eor.w	#$F,d3
		lea	(Primary_Angle).w,a4
		move.w	#$FFF0,a3
		move.w	#$400,d6
		bsr.w	FindWall
		move.b	#$40,d2
		bra.w	loc_318FE8
; END OF FUNCTION CHUNK	FOR sub_315C22