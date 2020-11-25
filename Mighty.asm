Obj5A:
	; a0=character
	tst.w	(Debug_placement_mode).w	; is debug mode being used?
	beq.s	Obj5A_Normal			; if not, branch
	jmp	(DebugMode).l
; ---------------------------------------------------------------------------
; loc2_19F5C:
Obj5A_Normal:
	moveq	#0,d0
	move.b	routine(a0),d0
	move.w	Obj5A_Index(pc,d0.w),d1
	jmp	Obj5A_Index(pc,d1.w)
; ===========================================================================
; off_19F6A: Obj5A_States:
Obj5A_Index:	offsetTable
		offsetTableEntry.w Obj5A_Init		;  0
		offsetTableEntry.w Obj5A_Control	;  2
		offsetTableEntry.w Obj5A_Hurt		;  4
		offsetTableEntry.w Obj5A_Dead		;  6
		offsetTableEntry.w Obj5A_Gone		;  8
		offsetTableEntry.w Obj5A_Respawning; $A
		offsetTableEntry.w Obj5A_Drowned	; $C
; ===========================================================================
; loc2_19F76: Obj_01_Sub_0: Obj5A_Main:
Obj5A_Init:
	addq.b	#2,routine(a0)	; => Obj5A_Control
	move.b	#$13,y_radius(a0) ; this sets Mighty's collision height (2*pixels)
	move.b	#9,x_radius(a0)
	jsr	(Unc_NormalIcons_Reload).l
	move.l	#MapUnc_Mighty,mappings(a0)
	move.b	#2,priority(a0)
	move.b	#$18,width_pixels(a0)
	move.b	#4,render_flags(a0)
	move.w	#$600,(Sonic_top_speed).w	; set Mighty's top speed
	move.w	#$C,(Sonic_acceleration).w	; set Mighty's acceleration
	move.w	#$80,(Sonic_deceleration).w	; set Mighty's deceleration
	tst.b	(Last_star_pole_hit).w
	bne.s	Obj5A_Init_Continued
	; only happens when not starting at a checkpoint:
	move.w	#make_art_tile(ArtTile_ArtUnc_Sonic,0,0),art_tile(a0)
	jsr	Adjust2PArtPointer
	move.b	#$C,top_solid_bit(a0)
	move.b	#$D,lrb_solid_bit(a0)
	move.w	x_pos(a0),(Saved_x_pos).w
	move.w	y_pos(a0),(Saved_y_pos).w
	move.w	art_tile(a0),(Saved_art_tile).w
	move.w	top_solid_bit(a0),(Saved_Solid_bits).w

Obj5A_Init_Continued:
	move.b	#0,flips_remaining(a0)
	move.b	#4,flip_speed(a0)
	move.b	#0,(Super_Sonic_flag).w
	move.b	#$1E,air_left(a0)
	subi.w	#$20,x_pos(a0)
	addi_.w	#4,y_pos(a0)
	move.w	#0,(Sonic_Pos_Record_Index).w

	move.w	#$3F,d2
-	jsr	Sonic_RecordPos
	subq.w	#4,a1
	move.l	#0,(a1)
	dbf	d2,-

	addi.w	#$20,x_pos(a0)
	subi_.w	#4,y_pos(a0)

; ---------------------------------------------------------------------------
; Normal state for Mighty
; ---------------------------------------------------------------------------
; loc2_1A030: Obj_01_Sub_2:
Obj5A_Control:

		tst.b	double_jump_flag(a0)
		beq.s	.nodec
		subq.b	#1,double_jump_flag(a0)
		bne.s	.chkLR
		move.b	#AniIDSonAni_Roll,anim(a0) ; use "jumping" animation
		
.chkLR:
		move.b	(Ctrl_1_Logical).w,d0	; get jpad
		and.b	double_jump_flag+1(a0),d0	; compare jpad to stored L,R button states
		bne.s	.skip		; if still held, branch
		move.w	#0,double_jump_flag(a0)	; clear wall jump flag and button states
		move.b	#AniIDSonAni_Roll,anim(a0) ; use "jumping" animation
	
.skip:
		;Mercury Wall Jump Smoke Puff
		;USES Smoke Puff
	;	move.b	(Timer_frames+1).w,d0
	;	andi.b	#7,d0
	;	cmpi.b	#7,d0
	;	bne.s	.nodec
	;create puff
	;	bsr.w	SingleObjLoad
	;	bne.s	.nodec
	;	move.b	#id_SmokePuff,0(a1) ; load missile object
	;	move.w	x_pos(a0),x_pos(a1)
	;	move.w	y_pos(a0),y_pos(a1)
	;	addi.w	#$1C,y_pos(a1)
	;	move.b	#1,subtype(a1)
		;end Wall Jump Smoke Puff
		
	.nodec:

	tst.w	(Debug_mode_flag).w	; is debug cheat enabled?
	beq.s	+			; if not, branch
	btst	#button_B,(Ctrl_1_Press).w	; is button B pressed?
	beq.s	+			; if not, branch
	move.w	#1,(Debug_placement_mode).w	; change Mighty into a ring/item
	clr.b	(Control_Locked).w		; unlock control
	rts
; -----------------------------------------------------------------------
+	tst.b	(Control_Locked).w	; are controls locked?
	bne.s	+			; if yes, branch
	move.w	(Ctrl_1).w,(Ctrl_1_Logical).w	; copy new held buttons, to enable joypad control
+
	btst	#0,obj_control(a0)	; is Mighty interacting with another object that holds him in place or controls his movement somehow?
	bne.s	+			; if yes, branch to skip Mighty's control
	moveq	#0,d0
	move.b	status(a0),d0
	andi.w	#6,d0	; %0000 %0110
	move.w	Obj5A_Modes(pc,d0.w),d1
	jsr	Obj5A_Modes(pc,d1.w)	; run Mighty's movement control code
+
	cmpi.w	#-$100,(Camera_Min_Y_pos).w	; is vertical wrapping enabled?
	bne.s	+				; if not, branch
	andi.w	#$7FF,y_pos(a0) 		; perform wrapping of Mighty's y position
+
	jsr	    Sonic_Display
	jsr 	Mighty_Super
	jsr     Sonic_RecordPos
	jsr     Sonic_Water
	move.b	(Primary_Angle).w,next_tilt(a0)
	move.b	(Secondary_Angle).w,tilt(a0)
	tst.b	(WindTunnel_flag).w
	beq.s	+
	tst.b	anim(a0)
	bne.s	+
	move.b	prev_anim(a0),anim(a0)
+
	bsr.w	Mighty_Animate
	tst.b	obj_control(a0)
	bmi.s	+
	jsr	(TouchResponse).l
+
	bra.w	LoadMightyDynPLC

; ===========================================================================
; secondary states under state Obj5A_Control
; off_1A0BE:
Obj5A_Modes:	offsetTable
		offsetTableEntry.w Obj5A_MdNormal_Checks	; 0 - not airborne or rolling
		offsetTableEntry.w Obj5A_MdAir			; 2 - airborne
		offsetTableEntry.w Obj5A_MdRoll			; 4 - rolling
		offsetTableEntry.w Obj5A_MdJump			; 6 - jumping
; ===========================================================================

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1A0C6:
Mighty_Display:
	move.w	invulnerable_time(a0),d0
	beq.s	Obj5A_Display
	subq.w	#1,invulnerable_time(a0)
	lsr.w	#3,d0
	bcc.s	Obj5A_ChkInvin
; loc2_1A0D4:
Obj5A_Display:
	jsr	(DisplaySprite).l
; loc2_1A0DA:
Obj5A_ChkInvin:		; Checks if invincibility has expired and disables it if it has.
	btst	#status_sec_isInvincible,status_secondary(a0)
	beq.s	Obj5A_ChkShoes
	tst.w	invincibility_time(a0)
	beq.s	Obj5A_ChkShoes	; If there wasn't any time left, that means we're in Super Mighty mode.
	subq.w	#1,invincibility_time(a0)
	bne.s	Obj5A_ChkShoes
	tst.b	(Current_Boss_ID).w	; Don't change music if in a boss fight
	bne.s	Obj5A_RmvInvin
	cmpi.b	#$C,air_left(a0)	; Don't change music if drowning
	blo.s	Obj5A_RmvInvin
	move.w	(Level_Music).w,d0
	jsr	(PlayMusic).l
;loc2_1A106:
Obj5A_RmvInvin:
	bclr	#status_sec_isInvincible,status_secondary(a0)
; loc2_1A10C:
Obj5A_ChkShoes:		; Checks if Speed Shoes have expired and disables them if they have.
	btst	#status_sec_hasSpeedShoes,status_secondary(a0)
	beq.s	Obj5A_ExitChk
	tst.w	speedshoes_time(a0)
	beq.s	Obj5A_ExitChk
	subq.w	#1,speedshoes_time(a0)
	bne.s	Obj5A_ExitChk
	move.w	#$600,(Sonic_top_speed).w
	move.w	#$C,(Sonic_acceleration).w
	move.w	#$80,(Sonic_deceleration).w
	tst.b	(Super_Sonic_flag).w
	beq.s	Obj5A_RmvSpeed
	move.w	#$A00,(Sonic_top_speed).w
	move.w	#$30,(Sonic_acceleration).w
	move.w	#$100,(Sonic_deceleration).w
; loc2_1A14A:
Obj5A_RmvSpeed:
	bclr	#status_sec_hasSpeedShoes,status_secondary(a0)
	move.w	#MusID_SlowDown,d0	; Slow down tempo
	jmp	(PlayMusic).l
; ---------------------------------------------------------------------------
; return2_1A15A:
Obj5A_ExitChk:
	rts
; End of subroutine Mighty_Display

; ===========================================================================
; ---------------------------------------------------------------------------
; Start of subroutine Obj5A_MdNormal
; Called if Mighty is neither airborne nor rolling this frame
; ---------------------------------------------------------------------------
; loc2_1A26E:
Obj5A_MdNormal_Checks:
	move.b	(Ctrl_1_Press_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0
	bne.s	Obj5A_MdNormal
;	cmpi.b	#AniIDSonAni_Blink,anim(a0)
;	beq.s	return2_1A2DE
;	cmpi.b	#AniIDSonAni_GetUp,anim(a0)
;	beq.s	return2_1A2DE
;	cmpi.b	#AniIDSonAni_Wait,anim(a0)
;	bne.s	Obj5A_MdNormal
	cmpi.b	#$1E,anim_frame(a0)
	blo.s	Obj5A_MdNormal
	move.b	(Ctrl_1_Held_Logical).w,d0
	andi.b	#button_up_mask|button_down_mask|button_left_mask|button_right_mask|button_B_mask|button_C_mask|button_A_mask,d0
	beq.s	return2_1A2DE
	move.b	#AniIDSonAni_Blink,anim(a0)
	cmpi.b	#$AC,anim_frame(a0)
	blo.s	return2_1A2DE
	move.b	#AniIDSonAni_GetUp,anim(a0)
	bra.s	return2_1A2DE
; ---------------------------------------------------------------------------
; loc2_1A2B8:
Obj5A_MdNormal:
	bsr.w	Mighty_CheckSpindash
	bsr.w	Mighty_Jump
	bsr.w	Mighty_SlopeResist
	bsr.w	Mighty_Move
	bsr.w	Mighty_Roll
	bsr.w	Mighty_LevelBound
	jsr	(ObjectMove).l
	jsr	AnglePos
	bsr.w	Mighty_SlopeRepel

return2_1A2DE:
	rts
; End of subroutine Obj5A_MdNormal
; ===========================================================================
; Start of subroutine Obj5A_MdAir
; Called if Mighty is airborne, but not in a ball (thus, probably not jumping)
; loc2_1A2E0: Obj5A_MdJump
Obj5A_MdAir:
	jsr	SonicKnux_AirRoll
	bsr.w	Mighty_JumpHeight
	bsr.w	Mighty_ChgJumpDir
	bsr.w	Mighty_LevelBound
	jsr	(ObjectMoveAndFall).l

	cmpi.b	#ObjID_WhirlwindShield,(Shield+id).w
	bne.s	.nowind
	btst	#button_up,(Ctrl_1_Held_Logical).w	; is up being pressed?
	beq.s	.nowind
	subi.w	#$28,y_vel(a0)	; reduce gravity by $28 ($38-$28=$10)

.nowind:
		tst.b	double_jump_flag(a0)
		beq.s	.nowalljump
		subi.w	#$30,y_vel(a0)
		bra.s	.done
		
	.nowalljump:
	btst	#6,status(a0)	; is Mighty underwater?
	beq.s	.done		; if not, branch	; I'm STUPID
	subi.w	#$28,y_vel(a0)	; reduce gravity by $28 ($38-$28=$10)

	.done:

	bsr.w	Mighty_JumpAngle
	bsr.w	Mighty_DoLevelCollision
	rts
; End of subroutine Obj5A_MdAir
; ===========================================================================
; Start of subroutine Obj5A_MdRoll
; Called if Mighty is in a ball, but not airborne (thus, probably rolling)
; loc2_1A30A:
Obj5A_MdRoll:
	tst.b	pinball_mode(a0)
	bne.s	+
	bsr.w	Mighty_Jump
+
	bsr.w	Mighty_RollRepel
	bsr.w	Mighty_RollSpeed
	bsr.w	Mighty_LevelBound
	jsr	(ObjectMove).l
	jsr	AnglePos
	bsr.w	Mighty_SlopeRepel
	rts
; End of subroutine Obj5A_MdRoll
; ===========================================================================
; Start of subroutine Obj5A_MdJump
; Called if Mighty is in a ball and airborne (he could be jumping but not necessarily)
; Notes: This is identical to Obj5A_MdAir, at least at this outer level.
;        Why they gave it a separate copy of the code, I don't know.
; loc2_1A330: Obj5A_MdJump2:
Obj5A_MdJump:
	bsr.w	Mighty_JumpHeight
	bsr.w	Mighty_ChgJumpDir
	bsr.w	Mighty_LevelBound
	jsr	(ObjectMoveAndFall).l

	cmpi.b	#ObjID_WhirlwindShield,(Shield+id).w
	bne.s	.nowind
	btst	#button_up,(Ctrl_1_Held_Logical).w	; is up being pressed?
	beq.s	.nowind
	subi.w	#$28,y_vel(a0)	; reduce gravity by $28 ($38-$28=$10)

.nowind:
		tst.b	double_jump_flag(a0)
		beq.s	.nowalljump
		subi.w	#$30,y_vel(a0)
		bra.s	.done
		
	.nowalljump:
	btst	#6,status(a0)	; is Mighty underwater?
	beq.s	.done		; if not, branch
	subi.w	#$28,y_vel(a0)	; reduce gravity by $28 ($38-$28=$10)

	.done:

	bsr.w	Mighty_JumpAngle
	bsr.w	Mighty_DoLevelCollision
	rts
; End of subroutine Obj5A_MdJump

; ---------------------------------------------------------------------------
; Subroutine to make Mighty walk/run
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1A35A:
Mighty_Move:
	move.w	(Sonic_top_speed).w,d6
	move.w	(Sonic_acceleration).w,d5
	move.w	(Sonic_deceleration).w,d4
    if status_sec_isSliding = 7
	tst.b	status_secondary(a0)
	bmi.w	Obj5A_Traction
    else
	btst	#status_sec_isSliding,status_secondary(a0)
	bne.w	Obj5A_Traction
    endif
	tst.w	move_lock(a0)
	bne.w	Obj5A_ResetScr
	btst	#button_left,(Ctrl_1_Held_Logical).w	; is left being pressed?
	beq.s	Obj5A_NotLeft			; if not, branch
	bsr.w	Mighty_MoveLeft
; loc2_1A382:
Obj5A_NotLeft:
	btst	#button_right,(Ctrl_1_Held_Logical).w	; is right being pressed?
	beq.s	Obj5A_NotRight			; if not, branch
	bsr.w	Mighty_MoveRight
; loc2_1A38E:
Obj5A_NotRight:
	move.b	angle(a0),d0
	addi.b	#$20,d0
	andi.b	#$C0,d0		; is Mighty on a slope?
	bne.w	Obj5A_ResetScr	; if yes, branch
	tst.w	inertia(a0)	; is Mighty moving?
	bne.w	Obj5A_ResetScr	; if yes, branch
	bclr	#5,status(a0)
	move.b	#AniIDSonAni_Wait,anim(a0)	; use "standing" animation
	btst	#3,status(a0)
	beq.w	Mighty_Balance
	moveq	#0,d0
	move.b	interact(a0),d0
    if object_size=$40
	lsl.w	#6,d0
    else
	mulu.w	#object_size,d0
    endif
	lea	(Object_RAM).w,a1 ; a1=character
	lea	(a1,d0.w),a1 ; a1=object
	tst.b	status(a1)
	bmi.w	Mighty_Lookup
	moveq	#0,d1
	move.b	width_pixels(a1),d1
	move.w	d1,d2
	add.w	d2,d2
	subq.w	#2,d2
	add.w	x_pos(a0),d1
	sub.w	x_pos(a1),d1
	cmpi.w	#2,d1
	blt.s	Mighty_BalanceOnObjLeft
	cmp.w	d2,d1
	bge.s	Mighty_BalanceOnObjRight
	bra.w	Mighty_Lookup
; ---------------------------------------------------------------------------
; balancing checks for when you're on the edge of part of the level
; loc2_1A48C:
Mighty_Balance:
		jsr	(ChkFloorEdge).l
		cmpi.w	#$C,d1
		blt.w	Mighty_Lookup
		cmpi.b	#3,next_tilt(a0)
		bne.s	Mighty_BalanceLeft
Mighty_BalanceOnObjRight:
	btst	#0,status(a0)
	bne.s	+
	move.b	#AniIDSonAni_Balance,anim(a0)
	addq.w	#6,d2
	cmp.w	d2,d1
	blt.w	Obj5A_ResetScr
	move.b	#AniIDSonAni_Balance,anim(a0)
	bra.w	Obj5A_ResetScr
	; on right edge of object but facing left:
+	move.b	#AniIDSonAni_Balance2,anim(a0)
	addq.w	#6,d2
	cmp.w	d2,d1
	blt.w	Obj5A_ResetScr
	move.b	#AniIDSonAni_Balance2,anim(a0)
	bclr	#0,status(a0)
	bra.w	Obj5A_ResetScr
; ---------------------------------------------------------------------------

Mighty_BalanceLeft:
	cmpi.b	#3,tilt(a0)
	bne.s	Mighty_Lookup

Mighty_BalanceOnObjLeft:
	btst	#0,status(a0)
	beq.s	+
	move.b	#AniIDSonAni_Balance,anim(a0)
	cmpi.w	#-4,d1
	bge.w	Obj5A_ResetScr
	move.b	#AniIDSonAni_Balance,anim(a0)
	bra.w	Obj5A_ResetScr
	; on left edge but facing right:
+	move.b	#AniIDSonAni_Balance2,anim(a0)
	move.w	x_pos(a0),d3
	cmpi.w	#-4,d1
	bge.w	Obj5A_ResetScr
	move.b	#AniIDSonAni_Balance2,anim(a0)
	bset	#0,status(a0)
	bra.w	Obj5A_ResetScr

Mighty_BalanceDone:
	move.b	#AniIDSonAni_Balance,anim(a0)
	bra.s	Obj5A_ResetScr
; ---------------------------------------------------------------------------
; loc2_1A584:
Mighty_Lookup:
	btst	#button_up,(Ctrl_1_Held_Logical).w	; is up being pressed?
	beq.s	Mighty_Duck			; if not, branch
	move.b	#AniIDSonAni_LookUp,anim(a0)			; use "looking up" animation
	addq.w	#1,(Sonic_Look_delay_counter).w
	cmpi.w	#$78,(Sonic_Look_delay_counter).w
	blo.s	Obj5A_ResetScr_Part2
	move.w	#$78,(Sonic_Look_delay_counter).w
	cmpi.w	#$C8,(Camera_Y_pos_bias).w
	beq.s	Obj5A_UpdateSpeedOnGround
	addq.w	#2,(Camera_Y_pos_bias).w
	bra.s	Obj5A_UpdateSpeedOnGround
; ---------------------------------------------------------------------------
; loc2_1A5B2:
Mighty_Duck:
	btst	#button_down,(Ctrl_1_Held_Logical).w	; is down being pressed?
	beq.s	Obj5A_ResetScr			; if not, branch
	move.b	#AniIDSonAni_Duck,anim(a0)			; use "ducking" animation
	addq.w	#1,(Sonic_Look_delay_counter).w
	cmpi.w	#$78,(Sonic_Look_delay_counter).w
	blo.s	Obj5A_ResetScr_Part2
	move.w	#$78,(Sonic_Look_delay_counter).w
	cmpi.w	#8,(Camera_Y_pos_bias).w
	beq.s	Obj5A_UpdateSpeedOnGround
	subq.w	#2,(Camera_Y_pos_bias).w
	bra.s	Obj5A_UpdateSpeedOnGround

; ===========================================================================
; moves the screen back to its normal position after looking up or down
; loc2_1A5E0:
Obj5A_ResetScr:
	move.w	#0,(Sonic_Look_delay_counter).w
; loc2_1A5E6:
Obj5A_ResetScr_Part2:
	cmpi.w	#(224/2)-16,(Camera_Y_pos_bias).w	; is screen in its default position?
	beq.s	Obj5A_UpdateSpeedOnGround	; if yes, branch.
	bhs.s	+				; depending on the sign of the difference,
	addq.w	#4,(Camera_Y_pos_bias).w	; either add 2
+	subq.w	#2,(Camera_Y_pos_bias).w	; or subtract 2

; ---------------------------------------------------------------------------
; updates Mighty's speed on the ground
; ---------------------------------------------------------------------------
; sub_1A5F8:
Obj5A_UpdateSpeedOnGround:
	tst.b	(Super_Sonic_flag).w
	beq.w	+
	move.w	#$C,d5
+
	move.b	(Ctrl_1_Held_Logical).w,d0
	andi.b	#button_left_mask|button_right_mask,d0 ; is left/right pressed?
	bne.s	Obj5A_Traction	; if yes, branch
	move.w	inertia(a0),d0
	beq.s	Obj5A_Traction
	bmi.s	Obj5A_SettleLeft

; slow down when facing right and not pressing a direction
; Obj5A_SettleRight:
	sub.w	d5,d0
	bcc.s	+
	move.w	#0,d0
+
	move.w	d0,inertia(a0)
	bra.s	Obj5A_Traction
; ---------------------------------------------------------------------------
; slow down when facing left and not pressing a direction
; loc2_1A624:
Obj5A_SettleLeft:
	add.w	d5,d0
	bcc.s	+
	move.w	#0,d0
+
	move.w	d0,inertia(a0)

; increase or decrease speed on the ground
; loc2_1A630:
Obj5A_Traction:
	move.b	angle(a0),d0
	jsr	(CalcSine).l
	muls.w	inertia(a0),d1
	asr.l	#8,d1
	move.w	d1,x_vel(a0)
	muls.w	inertia(a0),d0
	asr.l	#8,d0
	move.w	d0,y_vel(a0)

; stops Mighty from running through walls that meet the ground
; loc2_1A64E:
Obj5A_CheckWallsOnGround:
	move.b	angle(a0),d0
	addi.b	#$40,d0
	bmi.s	return2_1A6BE
	move.b	#$40,d1			; Rotate 90 degrees clockwise
	tst.w	inertia(a0)		; Check inertia
	beq.s	return2_1A6BE	; If not moving, don't do anything
	bmi.s	+				; If negative, branch
	neg.w	d1				; Otherwise, we want to rotate counterclockwise
+
	move.b	angle(a0),d0
	add.b	d1,d0
	move.w	d0,-(sp)
	jsr	CalcRoomInFront
	move.w	(sp)+,d0
	tst.w	d1
	bpl.s	return2_1A6BE
	asl.w	#8,d1
	addi.b	#$20,d0
	andi.b	#$C0,d0
	beq.s	loc2_1A6BA
	cmpi.b	#$40,d0
	beq.s	loc2_1A6A8
	cmpi.b	#$80,d0
	beq.s	loc2_1A6A2
	add.w	d1,x_vel(a0)
	bset	#5,status(a0)
	move.w	#0,inertia(a0)
	rts
; ---------------------------------------------------------------------------
loc2_1A6A2:
	sub.w	d1,y_vel(a0)
	rts
; ---------------------------------------------------------------------------
loc2_1A6A8:
	sub.w	d1,x_vel(a0)
	bset	#5,status(a0)
	move.w	#0,inertia(a0)
	rts
; ---------------------------------------------------------------------------
loc2_1A6BA:
	add.w	d1,y_vel(a0)

return2_1A6BE:
	rts
; End of subroutine Mighty_Move


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1A6C0:
Mighty_MoveLeft:
	move.w	inertia(a0),d0
	beq.s	+
	bpl.s	Mighty_TurnLeft ; if Mighty is already moving to the right, branch
+
	bset	#0,status(a0)
	bne.s	+
	bclr	#5,status(a0)
	move.b	#AniIDSonAni_Run,prev_anim(a0)
+
	sub.w	d5,d0	; add acceleration to the left
	move.w	d6,d1
	neg.w	d1
	cmp.w	d1,d0	; compare new speed with top speed
	bgt.s	+	; if new speed is less than the maximum, branch
	add.w	d5,d0	; remove this frame's acceleration change
	cmp.w	d1,d0	; compare speed with top speed
	ble.s	+	; if speed was already greater than the maximum, branch
	move.w	d1,d0	; limit speed on ground going left
+
	move.w	d0,inertia(a0)
	move.b	#AniIDSonAni_Walk,anim(a0)	; use walking animation
	rts
; ---------------------------------------------------------------------------
; loc2_1A6FA:
Mighty_TurnLeft:
	sub.w	d4,d0
	bcc.s	+
	move.w	#-$80,d0
+
	move.w	d0,inertia(a0)
	move.b	angle(a0),d0
	addi.b	#$20,d0
	andi.b	#$C0,d0
	bne.s	return2_1A744
	cmpi.w	#$400,d0
	blt.s	return2_1A744
	move.b	#AniIDSonAni_Stop,anim(a0)	; use "stopping" animation
	bclr	#0,status(a0)
	tst.b	(CD_Sounds_flag).w
	beq.s	+
	move.w	#SndID_CDSkidding,d0
	bra.s	++
+
	move.w	#SndID_Skidding,d0
+
	jsr	(PlaySound).l
	cmpi.b	#$C,air_left(a0)
	blo.s	return2_1A744	; if he's drowning, branch to not make dust
	move.b	#6,(Sonic_Dust+routine).w
	move.b	#$15,(Sonic_Dust+mapping_frame).w

return2_1A744:
	rts
; End of subroutine Mighty_MoveLeft


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1A746:
Mighty_MoveRight:
	move.w	inertia(a0),d0
	bmi.s	Mighty_TurnRight	; if Mighty is already moving to the left, branch
	bclr	#0,status(a0)
	beq.s	+
	bclr	#5,status(a0)
	move.b	#AniIDSonAni_Run,prev_anim(a0)
+
	add.w	d5,d0	; add acceleration to the right
	cmp.w	d6,d0	; compare new speed with top speed
	blt.s	+	; if new speed is less than the maximum, branch
	sub.w	d5,d0	; remove this frame's acceleration change
	cmp.w	d6,d0	; compare speed with top speed
	bge.s	+	; if speed was already greater than the maximum, branch
	move.w	d6,d0	; limit speed on ground going right
+
	move.w	d0,inertia(a0)
	move.b	#AniIDSonAni_Walk,anim(a0)	; use walking animation
	rts
; ---------------------------------------------------------------------------
; loc2_1A77A:
Mighty_TurnRight:
	add.w	d4,d0
	bcc.s	+
	move.w	#$80,d0
+
	move.w	d0,inertia(a0)
	move.b	angle(a0),d0
	addi.b	#$20,d0
	andi.b	#$C0,d0
	bne.s	return2_1A7C4
	cmpi.w	#-$400,d0
	bgt.s	return2_1A7C4
	move.b	#AniIDSonAni_Stop,anim(a0)	; use "stopping" animation
	bset	#0,status(a0)
	tst.b	(CD_Sounds_flag).w
	beq.s	+
	move.w	#SndID_CDSkidding,d0
	bra.s	++
+
	move.w	#SndID_Skidding,d0
+
	jsr	(PlaySound).l
	cmpi.b	#$C,air_left(a0)
	blo.s	return2_1A7C4	; if he's drowning, branch to not make dust
	move.b	#6,(Sonic_Dust+routine).w
	move.b	#$15,(Sonic_Dust+mapping_frame).w

return2_1A7C4:
	rts
; End of subroutine Mighty_MoveRight

; ---------------------------------------------------------------------------
; Subroutine to change Mighty's speed as he rolls
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1A7C6:
Mighty_RollSpeed:
	move.w	(Sonic_top_speed).w,d6
	asl.w	#1,d6
	moveq	#6,d5	; natural roll deceleration = 1/2 normal acceleration
	move.w	#$20,d4	; controlled roll deceleration... interestingly,
			; this should be Sonic_deceleration/4 according to Tails_RollSpeed,
			; which means Mighty is much better than Tails at slowing down his rolling when he's underwater
    if status_sec_isSliding = 7
	tst.b	status_secondary(a0)
	bmi.w	Obj5A_Roll_ResetScr
    else
	btst	#status_sec_isSliding,status_secondary(a0)
	bne.w	Obj5A_Roll_ResetScr
    endif
	tst.w	move_lock(a0)
	bne.s	Mighty_ApplyRollSpeed
	btst	#button_left,(Ctrl_1_Held_Logical).w	; is left being pressed?
	beq.s	+				; if not, branch
	bsr.w	Mighty_RollLeft
+
	btst	#button_right,(Ctrl_1_Held_Logical).w	; is right being pressed?
	beq.s	Mighty_ApplyRollSpeed		; if not, branch
	bsr.w	Mighty_RollRight

; loc2_1A7FC:
Mighty_ApplyRollSpeed:
	move.w	inertia(a0),d0
	beq.s	Mighty_CheckRollStop
	bmi.s	Mighty_ApplyRollSpeedLeft

; Mighty_ApplyRollSpeedRight:
	sub.w	d5,d0
	bcc.s	+
	move.w	#0,d0
+
	move.w	d0,inertia(a0)
	bra.s	Mighty_CheckRollStop
; ---------------------------------------------------------------------------
; loc2_1A812:
Mighty_ApplyRollSpeedLeft:
	add.w	d5,d0
	bcc.s	+
	move.w	#0,d0
+
	move.w	d0,inertia(a0)

; loc2_1A81E:
Mighty_CheckRollStop:
	tst.w	inertia(a0)
	bne.s	Obj5A_Roll_ResetScr
	tst.b	pinball_mode(a0) ; note: the spindash flag has a different meaning when Mighty's already rolling -- it's used to mean he's not allowed to stop rolling
	bne.s	Mighty_KeepRolling
	bclr	#2,status(a0)
	move.b	#$13,y_radius(a0)
	move.b	#9,x_radius(a0)
	move.b	#AniIDSonAni_Wait,anim(a0)
	subq.w	#5,y_pos(a0)
	bra.s	Obj5A_Roll_ResetScr

; ---------------------------------------------------------------------------
; magically gives Mighty an extra push if he's going to stop rolling where it's not allowed
; (such as in an S-curve in HTZ or a stopper chamber in CNZ)
; loc2_1A848:
Mighty_KeepRolling:
	move.w	#$400,inertia(a0)
	btst	#0,status(a0)
	beq.s	Obj5A_Roll_ResetScr
	neg.w	inertia(a0)

; resets the screen to normal while rolling, like Obj5A_ResetScr
; loc2_1A85A:
Obj5A_Roll_ResetScr:
	cmpi.w	#(224/2)-16,(Camera_Y_pos_bias).w	; is screen in its default position?
	beq.s	Mighty_SetRollSpeeds		; if yes, branch
	bhs.s	+				; depending on the sign of the difference,
	addq.w	#4,(Camera_Y_pos_bias).w	; either add 2
+	subq.w	#2,(Camera_Y_pos_bias).w	; or subtract 2

; loc2_1A86C:
Mighty_SetRollSpeeds:
	move.b	angle(a0),d0
	jsr	(CalcSine).l
	muls.w	inertia(a0),d0
	asr.l	#8,d0
	move.w	d0,y_vel(a0)	; set y velocity based on $14 and angle
	muls.w	inertia(a0),d1
	asr.l	#8,d1
	cmpi.w	#$1000,d1
	ble.s	+
	move.w	#$1000,d1	; limit Mighty's speed rolling right
+
	cmpi.w	#-$1000,d1
	bge.s	+
	move.w	#-$1000,d1	; limit Mighty's speed rolling left
+
	move.w	d1,x_vel(a0)	; set x velocity based on $14 and angle
	bra.w	Obj5A_CheckWallsOnGround
; End of function Mighty_RollSpeed


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


; loc2_1A8A2:
Mighty_RollLeft:
	move.w	inertia(a0),d0
	beq.s	+
	bpl.s	Mighty_BrakeRollingRight
+
	bset	#0,status(a0)
	move.b	#AniIDSonAni_Roll,anim(a0)	; use "rolling" animation
	rts
; ---------------------------------------------------------------------------
; loc2_1A8B8:
Mighty_BrakeRollingRight:
	sub.w	d4,d0	; reduce rightward rolling speed
	bcc.s	+
	move.w	#-$80,d0
+
	move.w	d0,inertia(a0)
	rts
; End of function Mighty_RollLeft


; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||


; loc2_1A8C6:
Mighty_RollRight:
	move.w	inertia(a0),d0
	bmi.s	Mighty_BrakeRollingLeft
	bclr	#0,status(a0)
	move.b	#AniIDSonAni_Roll,anim(a0)	; use "rolling" animation
	rts
; ---------------------------------------------------------------------------
; loc2_1A8DA:
Mighty_BrakeRollingLeft:
	add.w	d4,d0	; reduce leftward rolling speed
	bcc.s	+
	move.w	#$80,d0
+
	move.w	d0,inertia(a0)
	rts
; End of subroutine Mighty_RollRight


; ---------------------------------------------------------------------------
; Subroutine for moving Mighty left or right when he's in the air
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1A8E8:
Mighty_ChgJumpDir:
	move.w	(Sonic_top_speed).w,d6
	move.w	(Sonic_acceleration).w,d5
	asl.w	#1,d5
	btst	#4,status(a0)		; did Mighty jump from rolling?
	bne.s	Obj5A_Jump_ResetScr	; if yes, branch to skip midair control
	move.w	x_vel(a0),d0
	btst	#button_left,(Ctrl_1_Held_Logical).w
	beq.s	+	; if not holding left, branch

	bset	#0,status(a0)
	sub.w	d5,d0	; add acceleration to the left
	move.w	d6,d1
	neg.w	d1
	cmp.w	d1,d0	; compare new speed with top speed
	bgt.s	+	; if new speed is less than the maximum, branch
	add.w	d5,d0	; +++ remove this frame's acceleration change
	cmp.w	d1,d0	; +++ compare speed with top speed
	ble.s	+	; +++ if speed was already greater than the maximum, branch
	move.w	d1,d0	; limit speed in air going left, even if Mighty was already going faster (speed limit/cap)
+
	btst	#button_right,(Ctrl_1_Held_Logical).w
	beq.s	+	; if not holding right, branch

	bclr	#0,status(a0)
	add.w	d5,d0	; accelerate right in the air
	cmp.w	d6,d0	; compare new speed with top speed
	blt.s	+	; if new speed is less than the maximum, branch
	sub.w	d5,d0	; +++ remove this frame's acceleration change
	cmp.w	d6,d0	; +++ compare speed with top speed
	bge.s	+	; +++ if speed was already greater than the maximum, branch
	move.w	d6,d0	; limit speed in air going right, even if Mighty was already going faster (speed limit/cap)
; Obj5A_JumpMove:
+	move.w	d0,x_vel(a0)

; loc2_1A932: Obj5A_ResetScr2:
Obj5A_Jump_ResetScr:
	cmpi.w	#(224/2)-16,(Camera_Y_pos_bias).w	; is screen in its default position?
	beq.s	Mighty_JumpPeakDecelerate	; if yes, branch
	bhs.s	+				; depending on the sign of the difference,
	addq.w	#4,(Camera_Y_pos_bias).w	; either add 2
+	subq.w	#2,(Camera_Y_pos_bias).w	; or subtract 2

; loc2_1A944:
Mighty_JumpPeakDecelerate:
	cmpi.w	#-$400,y_vel(a0)	; is Mighty moving faster than -$400 upwards?
	blo.s	return2_1A972		; if yes, return
	move.w	x_vel(a0),d0
	move.w	d0,d1
	asr.w	#5,d1		; d1 = x_velocity / 32
	beq.s	return2_1A972	; return if d1 is 0
	bmi.s	Mighty_JumpPeakDecelerateLeft	; branch if moving left

; Mighty_JumpPeakDecelerateRight:
	sub.w	d1,d0	; reduce x velocity by d1
	bcc.s	+
	move.w	#0,d0
+
	move.w	d0,x_vel(a0)
	rts
;-------------------------------------------------------------
; loc2_1A966:
Mighty_JumpPeakDecelerateLeft:
	sub.w	d1,d0	; reduce x velocity by d1
	bcs.s	+
	move.w	#0,d0
+
	move.w	d0,x_vel(a0)

return2_1A972:
	rts
; End of subroutine Mighty_ChgJumpDir
; ===========================================================================

; ---------------------------------------------------------------------------
; Subroutine to prevent Mighty from leaving the boundaries of a level
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1A974:
Mighty_LevelBound:
	move.l	x_pos(a0),d1
	move.w	x_vel(a0),d0
	ext.l	d0
	asl.l	#8,d0
	add.l	d0,d1
	swap	d1
	move.w	(Camera_Min_X_pos).w,d0
	addi.w	#$10,d0
	cmp.w	d1,d0			; has Mighty touched the left boundary?
	bhi.s	Mighty_Boundary_Sides	; if yes, branch
	move.w	(Camera_Max_X_pos).w,d0
	addi.w	#320-24,d0		; screen width - Mighty's width_pixels
	tst.b	(Current_Boss_ID).w
	bne.s	+
	addi.w	#$40,d0
+
	cmp.w	d1,d0			; has Mighty touched the right boundary?
	bls.s	Mighty_Boundary_Sides	; if yes, branch

; loc2_1A9A6:
Mighty_Boundary_CheckBottom:
	move.w	(Camera_Max_Y_pos_now).w,d0
	addi.w	#$E0,d0
	cmp.w	y_pos(a0),d0		; has Mighty touched the bottom boundary?
	blt.s	Mighty_Boundary_Bottom	; if yes, branch
	rts
; ---------------------------------------------------------------------------
Mighty_Boundary_Bottom: ;;
		move.w	(Camera_Max_Y_pos).w,d0
		move.w	(Camera_Max_Y_pos_now).w,d1
		cmp.w	d0,d1			; screen still scrolling down?
		blt.s	+			; if so, don't kill Mighty
	addq.l	#4,sp
	jmp	(KillCharacter).l
+
	rts
; ===========================================================================

; loc2_1A9BA:
Mighty_Boundary_Sides:
	move.w	d0,x_pos(a0)
	move.w	#0,2+x_pos(a0) ; subpixel x
	move.w	#0,x_vel(a0)
	move.w	#0,inertia(a0)
	bra.s	Mighty_Boundary_CheckBottom
; ===========================================================================

; ---------------------------------------------------------------------------
; Subroutine allowing Mighty to start rolling when he's moving
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1A9D2:
Mighty_Roll:
    if status_sec_isSliding = 7
	tst.b	status_secondary(a0)
	bmi.s	Obj5A_NoRoll
    else
	btst	#status_sec_isSliding,status_secondary(a0)
	bne.s	Obj5A_NoRoll
    endif
	mvabs.w	inertia(a0),d0
	cmpi.w	#$80,d0		; is Mighty moving at $80 speed or faster?
	blo.s	Obj5A_NoRoll	; if not, branch
	move.b	(Ctrl_1_Held_Logical).w,d0
	andi.b	#button_left_mask|button_right_mask,d0 ; is left/right being pressed?
	bne.s	Obj5A_NoRoll	; if yes, branch
	btst	#button_down,(Ctrl_1_Held_Logical).w ; is down being pressed?
	bne.s	Obj5A_ChkRoll			; if yes, branch
; return2_1A9F8:
Obj5A_NoRoll:
	rts

; ---------------------------------------------------------------------------
; loc2_1A9FA:
Obj5A_ChkRoll:
	btst	#2,status(a0)	; is Mighty already rolling?
	beq.s	Obj5A_DoRoll	; if not, branch
	rts

; ---------------------------------------------------------------------------
; loc2_1AA04:
Obj5A_DoRoll:
	bset	#2,status(a0)
	move.b	#$E,y_radius(a0)
	move.b	#7,x_radius(a0)
	move.b	#AniIDSonAni_Roll,anim(a0)	; use "rolling" animation
	addq.w	#5,y_pos(a0)
	move.w	#SndID_Roll,d0
	jsr	(PlaySound).l	; play rolling sound
	tst.w	inertia(a0)
	bne.s	return2_1AA36
	move.w	#$200,inertia(a0)

return2_1AA36:
	rts
; End of function Mighty_Roll


; ---------------------------------------------------------------------------
; Subroutine allowing Mighty to jump
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1AA38:
Mighty_Jump:
	move.b	(Ctrl_1_Press_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0 ; is A, B or C pressed?
	beq.w	return2_1AAE6	; if not, return
	moveq	#0,d0
	move.b	angle(a0),d0
	addi.b	#$80,d0
	jsr	CalcRoomOverHead
	cmpi.w	#6,d1			; does Mighty have enough room to jump?
	blt.w	return2_1AAE6		; if not, branch
	move.w	#$680,d2
	tst.b	(Super_Sonic_flag).w
	beq.s	+
	move.w	#$800,d2	; set higher jump speed if super
+
	btst	#6,status(a0)	; Test if underwater
	beq.s	+
	move.w	#$380,d2	; set lower jump speed if under
+
	moveq	#0,d0
	move.b	angle(a0),d0
	subi.b	#$40,d0
	jsr	(CalcSine).l
	muls.w	d2,d1
	asr.l	#8,d1
	add.w	d1,x_vel(a0)	; make Mighty jump (in X... this adds nothing on level ground)
	muls.w	d2,d0
	asr.l	#8,d0
	add.w	d0,y_vel(a0)	; make Mighty jump (in Y)
	bset	#1,status(a0)
	bclr	#5,status(a0)
	addq.l	#4,sp
	move.b	#1,jumping(a0)
	clr.b	stick_to_convex(a0)
	tst.b	(CD_Sounds_flag).w
	beq.s	+
	move.w	#SndID_CDJump,d0
	bra.s	++
+
	move.w	#SndID_Jump,d0
+
	jsr	(PlaySound).l	; play jumping sound
;	move.b	#$13,y_radius(a0)
;	move.b	#9,x_radius(a0)
	btst	#2,status(a0)
	bne.s	Mighty_RollJump
	move.b	#$E,y_radius(a0)
	move.b	#7,x_radius(a0)
	move.b	#AniIDSonAni_Roll,anim(a0)	; use "jumping" animation
	bset	#2,status(a0)
	addq.w	#5,y_pos(a0)

return2_1AAE6:
	rts
; ---------------------------------------------------------------------------
; loc2_1AAE8:
Mighty_RollJump:
	bset	#4,status(a0)	; set the rolling+jumping flag
	rts
; End of function Mighty_Jump

; ---------------------------------------------------------------------------
; Subroutine letting Mighty control the height of the jump
; when the jump button is released
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; ===========================================================================
; loc2_1AAF0:
Mighty_JumpHeight:

		tst.b	double_jump_flag(a0)	; on wall?
		beq.s	.skip
		move.b	(Ctrl_1_Press_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0 ; is a jump button pressed?
		beq.s	.skip	; if yes, branch
		move.w	#0,double_jump_flag(a0)	; clear Wall Jump data
		move.b	#1,jumping(a0)	;Mercury Constants
		move.b	#AniIDSonAni_Roll,anim(a0) ; use "jumping" animation
		move.w	#-$600,d0
		btst	#button_up,(Ctrl_1_Held_Logical).w
		bne.s	.uponly
		move.w	#-$580,d0
		move.w	#-$400,x_vel(a0)
		btst	#0,status(a0)	;Mercury Constants
		beq.s	.uponly
		neg.w	x_vel(a0)
		
	.uponly:
		btst	#6,status(a0)	;Mercury Constants
		beq.s	.nowtr
		addi.w	#$280,d0
		
	.nowtr:
		move.w	d0,y_vel(a0)
	tst.b	(CD_Sounds_flag).w
	beq.s	.normalsnd
	move.w	#SndID_CDJump,d0
	bra.s	.playsnd
.normalsnd:
	move.w	#SndID_Jump,d0
.playsnd:
	jsr	(PlaySound).l	; play jumping sound
		
	.skip:;end Wall Jump

	tst.b	jumping(a0)	; is Mighty jumping?
	beq.w	Mighty_UpVelCap	; if not, branch

	move.w	#-$400,d1
	btst	#6,status(a0)	; is Mighty underwater?
	beq.s	+		; if not, branch
	move.w	#-$200,d1
+
	cmp.w	y_vel(a0),d1	; is Mighty going up faster than d1?
	ble.s	+		; if not, branch
	move.b	(Ctrl_1_Held_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0 ; is a jump button pressed?
	bne.s	+		; if yes, branch
	move.w	d1,y_vel(a0)	; immediately reduce Mighty's upward speed to d1
+
	tst.b   (Control_Locked).w      ; Are Controls locked?
	bne.w   return2_1AB36            ; If so, branch, and do not bother with Super code
	move.b  (Ctrl_1_Press_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0 ; is a jump button pressed?
	bne.s   Mighty_CheckGoSuper      ; if yes, test for turning into Super Mighty
	rts

Mighty_CheckGoSuper:
	tst.b	(Update_HUD_timer).w	; has Sonic reached the end of the act?
	beq.w	Mighty_InstaShield		; if yes, branch
	tst.b	(Super_Sonic_flag).w	; is Sonic already Super?
	bne.w	.return		; if yes, branch
	cmpi.b	#7,(Emerald_count).w	; does Sonic have exactly 7 emeralds?
	bne.w	Mighty_InstaShield		; if not, branch
	cmpi.w	#50,(Ring_count).w	; does Sonic have at least 50 rings?
	blo.w	Mighty_InstaShield		; if not, branch
	bra.s	SuperMighty_Cont

.return:
	rts

SuperMighty_Cont: ; known as Sonic_Transform: in S3K
	move.b	#1,(Super_Sonic_palette).w
	move.b	#$F,(Palette_timer).w
	move.b	#1,(Super_Sonic_flag).w
	move.b	#$81,obj_control(a0)
	move.b	#AniIDSupSonAni_Transform,anim(a0)			; use transformation animation
	move.b	#ObjID_SuperSonicStars,(SuperSonicStars+id).w ; load Obj7E (super sonic stars object) at $FFFFD040
	move.b	#ObjID_WaiInvinc,(InvincibilityStars+id).w ; load Obj35 (invincibility stars) at $FFFFD200
	move.w	a0,(InvincibilityStars+parent).w
	move.w	#$A00,(Sonic_top_speed).w
	move.w	#$30,(Sonic_acceleration).w
	move.w	#$100,(Sonic_deceleration).w
	btst	#6,status(a0)	; Check if underwater, return if not
	beq.s	+
	move.w	#$500,(Sonic_top_speed).w
	move.w	#$18,(Sonic_acceleration).w
	move.w	#$80,(Sonic_deceleration).w
+
	move.w	#0,invincibility_time(a0)
	bset	#status_sec_isInvincible,status_secondary(a0)	; make Sonic invincible
	tst.b	(Current_Boss_ID).w	; Don't change music if in a boss fight
	bne.s	++
	jsr	(PlayLevelMusic).l
+
	move.w	#MusID_SPASpecStag,d0
	jsr	(PlayMusic).l	; load the Super Sonic song and return
+
	move.w	#SndID_S3KSuperTransform,d0
	jmp	(PlaySound).l	; Play transformation sound effect.
; ---------------------------------------------------------------------------

Mighty_InstaShield:
	tst.b	(AirMove_Performed).w
	bne.s	InstaShield_Return
	btst	#status_sec_hasShield,status_secondary(a0)
	bne.s	InstaShield_Return
	move.b	#1,(Shield+anim).w
		move.b	#1,(AirMove_Performed).w
		move.b	#1,(Insta_Attacking).w
		move.w	#SndID_InstaShield,d0
		jmp	(PlaySound).l

InstaShield_Return:
	rts
; End of subroutine Sonic_CheckGoSuper
; ---------------------------------------------------------------------------
; loc2_1AB22:
Mighty_UpVelCap:
	tst.b	pinball_mode(a0)	; is Mighty charging a spindash or in a rolling-only area?
	bne.s	return2_1AB36		; if yes, return
	cmpi.w	#-$FC0,y_vel(a0)	; is Mighty moving up really fast?
	bge.s	return2_1AB36		; if not, return
	move.w	#-$FC0,y_vel(a0)	; cap upward speed

return2_1AB36:
	rts
; End of subroutine Mighty_JumpHeight
Mighty_Super:
	tst.b	(Super_Sonic_flag).w	; Ignore all this code if not Super Sonic
	beq.w	MtySuperRet
	cmpi.b	#1,(Super_Sonic_palette).w	; is Super Sonic's transformation sequence finished?
	beq.w	MtySuperRet			; if not, branch
	tst.b	(Update_HUD_timer).w
	beq.s	Mighty_RevertToNormal ; ?
	subq.w	#1,(Super_Sonic_frame_count).w
	bhi.w	MtySuperRet
	move.w	#60,(Super_Sonic_frame_count).w	; Reset frame counter to 60
	tst.w	(Ring_count).w
	beq.s	Mighty_RevertToNormal
	ori.b	#1,(Update_HUD_rings).w
	cmpi.w	#1,(Ring_count).w
	beq.s	+
	cmpi.w	#10,(Ring_count).w
	beq.s	+
	cmpi.w	#100,(Ring_count).w
	bne.s	++
+
	ori.b	#$80,(Update_HUD_rings).w
+
	subq.w	#1,(Ring_count).w
	bne.w	MtySuperRet
; loc_1ABF2:
Mighty_RevertToNormal:
	move.b	#0,(MainCharacter+obj_control).w	; restore Sonic's movement
	move.b	#2,(Super_Sonic_palette).w	; Remove rotating palette
	move.w	#$28,(Palette_frame).w
	move.b	#0,(Super_Sonic_flag).w
	move.b	#1,prev_anim(a0)	; Change animation back to normal ?
	move.w	#1,invincibility_time(a0)	; Remove invincibility
	move.w	#$600,(Sonic_top_speed).w
	move.w	#$C,(Sonic_acceleration).w
	move.w	#$80,(Sonic_deceleration).w
	btst	#6,status(a0)	; Check if underwater, return if not
	beq.s	MtySuperRet
	move.w	#$300,(Sonic_top_speed).w
	move.w	#6,(Sonic_acceleration).w
	move.w	#$40,(Sonic_deceleration).w
	tst.b	(Current_Boss_ID).w	; Don't change music if in a boss fight
	bne.s	MtySuperRet
	jsr	(PlayLevelMusic).l

MtySuperRet:
	rts
; End of subroutine Mighty_Super
; ---------------------------------------------------------------------------
; Subroutine to check for starting to charge a spindash
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1AC3E:
Mighty_CheckSpindash:
	tst.b	spindash_flag(a0)
	bne.s	Mighty_UpdateSpindash
	cmpi.b	#AniIDSonAni_Duck,anim(a0)
	bne.s	return2_1AC8C
	move.b	(Ctrl_1_Press_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0
	beq.w	return2_1AC8C
	move.b	#AniIDSonAni_Spindash,anim(a0)
	move.w	#SndID_SpindashRev,d0
	jsr	(PlaySound).l
	addq.l	#4,sp
	move.b	#1,spindash_flag(a0)
	move.w	#0,spindash_counter(a0)
	cmpi.b	#$C,air_left(a0)	; if he's drowning, branch to not make dust
	blo.s	+
	move.b	#2,(Sonic_Dust+anim).w
+
	bsr.w	Mighty_LevelBound
	jsr	AnglePos

return2_1AC8C:
	rts
; End of subroutine Mighty_CheckSpindash


; ---------------------------------------------------------------------------
; Subrouting to update an already-charging spindash
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1AC8E:
Mighty_UpdateSpindash:
	move.b	(Ctrl_1_Held_Logical).w,d0
	btst	#button_down,d0
	bne.w	Mighty_ChargingSpindash

	; unleash the charged spindash and start rolling quickly:
	move.b	#$E,y_radius(a0)
	move.b	#7,x_radius(a0)
	move.b	#AniIDSonAni_Roll,anim(a0)
	addq.w	#5,y_pos(a0)	; add the difference between Mighty's rolling and standing heights
	move.b	#0,spindash_flag(a0)
	moveq	#0,d0
	move.b	spindash_counter(a0),d0
	add.w	d0,d0
	move.w	MightySpindashSpeeds(pc,d0.w),inertia(a0)
	tst.b	(Super_Sonic_flag).w
	beq.s	+
	move.w	MightySpindashSpeedsSuper(pc,d0.w),inertia(a0)
+
	move.w	inertia(a0),d0
	subi.w	#$800,d0
	add.w	d0,d0
	andi.w	#$1F00,d0
	neg.w	d0
	addi.w	#$2000,d0
	move.w	d0,(Horiz_scroll_delay_val).w
	btst	#0,status(a0)
	beq.s	+
	neg.w	inertia(a0)
+
	bset	#2,status(a0)
	move.b	#0,(Sonic_Dust+anim).w
	move.w	#SndID_SpindashRelease,d0	; spindash zoom sound
	jsr	(PlaySound).l
	move.b	angle(a0),d0
	jsr	(CalcSine).l
	muls.w	inertia(a0),d1
	asr.l	#8,d1
	move.w	d1,x_vel(a0)
	muls.w	inertia(a0),d0
	asr.l	#8,d0
	move.w	d0,y_vel(a0)

	bra.s	Obj5A_Spindash_ResetScr
; ===========================================================================
; word_1AD0C:
MightySpindashSpeeds:
	dc.w  $800	; 0
	dc.w  $880	; 1
	dc.w  $900	; 2
	dc.w  $980	; 3
	dc.w  $A00	; 4
	dc.w  $A80	; 5
	dc.w  $B00	; 6
	dc.w  $B80	; 7
	dc.w  $C00	; 8
; word_1AD1E:
MightySpindashSpeedsSuper:
	dc.w  $B00	; 0
	dc.w  $B80	; 1
	dc.w  $C00	; 2
	dc.w  $C80	; 3
	dc.w  $D00	; 4
	dc.w  $D80	; 5
	dc.w  $E00	; 6
	dc.w  $E80	; 7
	dc.w  $F00	; 8
; ===========================================================================
; loc2_1AD30:
Mighty_ChargingSpindash:			; If still charging the dash...
	tst.w	spindash_counter(a0)
	beq.s	+
	move.w	spindash_counter(a0),d0
	lsr.w	#5,d0
	sub.w	d0,spindash_counter(a0)
	bcc.s	+
	move.w	#0,spindash_counter(a0)
+
	move.b	(Ctrl_1_Press_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0
	beq.w	Obj5A_Spindash_ResetScr
	move.w	#(AniIDSonAni_Spindash<<8),anim(a0)
	move.w	#SndID_SpindashRev,d0
	jsr	(PlaySound).l
	addi.w	#$200,spindash_counter(a0)
	cmpi.w	#$800,spindash_counter(a0)
	blo.s	Obj5A_Spindash_ResetScr
	move.w	#$800,spindash_counter(a0)

; loc2_1AD78:
Obj5A_Spindash_ResetScr:
	addq.l	#4,sp
	cmpi.w	#(224/2)-16,(Camera_Y_pos_bias).w
	beq.s	loc2_1AD8C
	bhs.s	+
	addq.w	#4,(Camera_Y_pos_bias).w
+	subq.w	#2,(Camera_Y_pos_bias).w

loc2_1AD8C:
	bsr.w	Mighty_LevelBound
	jsr	AnglePos
	rts
; End of subroutine Mighty_UpdateSpindash


; ---------------------------------------------------------------------------
; Subroutine to slow Mighty walking up a slope
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1AD96:
Mighty_SlopeResist:
	move.b	angle(a0),d0
	addi.b	#$60,d0
	cmpi.b	#$C0,d0
	bhs.s	return2_1ADCA
	move.b	angle(a0),d0
	jsr	(CalcSine).l
	muls.w	#$20,d0
	asr.l	#8,d0
	tst.w	inertia(a0)
	beq.s	return2_1ADCA
	bmi.s	loc2_1ADC6
	tst.w	d0
	beq.s	+
	add.w	d0,inertia(a0)	; change Mighty's $14
+
	rts
; ---------------------------------------------------------------------------

loc2_1ADC6:
	add.w	d0,inertia(a0)

return2_1ADCA:
	rts
; End of subroutine Mighty_SlopeResist

; ---------------------------------------------------------------------------
; Subroutine to push Mighty down a slope while he's rolling
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1ADCC:
Mighty_RollRepel:
	move.b	angle(a0),d0
	addi.b	#$60,d0
	cmpi.b	#$C0,d0
	bhs.s	return2_1AE06
	move.b	angle(a0),d0
	jsr	(CalcSine).l
	muls.w	#$50,d0
	asr.l	#8,d0
	tst.w	inertia(a0)
	bmi.s	loc2_1ADFC
	tst.w	d0
	bpl.s	loc2_1ADF6
	asr.l	#2,d0

loc2_1ADF6:
	add.w	d0,inertia(a0)
	rts
; ===========================================================================

loc2_1ADFC:
	tst.w	d0
	bmi.s	loc2_1AE02
	asr.l	#2,d0

loc2_1AE02:
	add.w	d0,inertia(a0)

return2_1AE06:
	rts
; End of function Mighty_RollRepel

; ---------------------------------------------------------------------------
; Subroutine to push Mighty down a slope
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1AE08:
Mighty_SlopeRepel:
	nop
	tst.b	stick_to_convex(a0)
	bne.s	return2_1AE42
	tst.w	move_lock(a0)
	bne.s	loc2_1AE44
	move.b	angle(a0),d0
	addi.b	#$20,d0
	andi.b	#$C0,d0
	beq.s	return2_1AE42
	mvabs.w	inertia(a0),d0
	cmpi.w	#$280,d0
	bhs.s	return2_1AE42
	clr.w	inertia(a0)
	bset	#1,status(a0)
	move.w	#$1E,move_lock(a0)

return2_1AE42:
	rts
; ===========================================================================

loc2_1AE44:
	subq.w	#1,move_lock(a0)
	rts
; End of function Mighty_SlopeRepel

; ---------------------------------------------------------------------------
; Subroutine to return Mighty's angle to 0 as he jumps
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1AE4A:
Mighty_JumpAngle:
	move.b	angle(a0),d0	; get Mighty's angle
	beq.s	Mighty_JumpFlip	; if already 0, branch
	bpl.s	loc2_1AE5A	; if higher than 0, branch

	addq.b	#2,d0		; increase angle
	bcc.s	BranchTo_Mighty_JumpAngleSet
	moveq	#0,d0

BranchTo_Mighty_JumpAngleSet
	bra.s	Mighty_JumpAngleSet
; ===========================================================================

loc2_1AE5A:
	subq.b	#2,d0		; decrease angle
	bcc.s	Mighty_JumpAngleSet
	moveq	#0,d0

; loc2_1AE60:
Mighty_JumpAngleSet:
	move.b	d0,angle(a0)
; End of function Mighty_JumpAngle
	; continue straight to Mighty_JumpFlip

; ---------------------------------------------------------------------------
; Updates Mighty's secondary angle if he's tumbling
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1AE64:
Mighty_JumpFlip:
	move.b	flip_angle(a0),d0
	beq.s	return2_1AEA8
	tst.w	inertia(a0)
	bmi.s	Mighty_JumpLeftFlip
; loc2_1AE70:
Mighty_JumpRightFlip:
	move.b	flip_speed(a0),d1
	add.b	d1,d0
	bcc.s	BranchTo_Mighty_JumpFlipSet
	subq.b	#1,flips_remaining(a0)
	bcc.s	BranchTo_Mighty_JumpFlipSet
	move.b	#0,flips_remaining(a0)
	moveq	#0,d0

BranchTo_Mighty_JumpFlipSet
	bra.s	Mighty_JumpFlipSet
; ===========================================================================
; loc2_1AE88:
Mighty_JumpLeftFlip:
	tst.b	flip_turned(a0)
	bne.s	Mighty_JumpRightFlip
	move.b	flip_speed(a0),d1
	sub.b	d1,d0
	bcc.s	Mighty_JumpFlipSet
	subq.b	#1,flips_remaining(a0)
	bcc.s	Mighty_JumpFlipSet
	move.b	#0,flips_remaining(a0)
	moveq	#0,d0
; loc2_1AEA4:
Mighty_JumpFlipSet:
	move.b	d0,flip_angle(a0)

return2_1AEA8:
	rts
; End of function Mighty_JumpFlip

; ---------------------------------------------------------------------------
; Subroutine for Mighty to interact with the floor and walls when he's in the air
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1AEAA: Mighty_Floor:
Mighty_DoLevelCollision:
	move.l	#Primary_Collision,(Collision_addr).w
	cmpi.b	#$C,top_solid_bit(a0)
	beq.s	+
	move.l	#Secondary_Collision,(Collision_addr).w
+
	move.b	lrb_solid_bit(a0),d5
; where the s1 routine starts...
	move.w	x_vel(a0),d1
	move.w	y_vel(a0),d2
	jsr	(CalcAngle).l
	subi.b	#$20,d0
	andi.b	#$C0,d0
	cmpi.b	#$40,d0
	beq.w	Mighty_HitLeftWall
	cmpi.b	#$80,d0
	beq.w	Mighty_HitCeilingAndWalls
	cmpi.b	#$C0,d0
	beq.w	Mighty_HitRightWall
	jsr	CheckLeftWallDist
	tst.w	d1
	bpl.s	+
	sub.w	d1,x_pos(a0)
	move.w	#0,x_vel(a0) ; stop Mighty since he hit a wall

		move.b	#button_left_mask,d1
		jsr	WallJump

+
	jsr	CheckRightWallDist
	tst.w	d1
	bpl.s	+
	add.w	d1,x_pos(a0)
	move.w	#0,x_vel(a0) ; stop Mighty since he hit a wall

		move.b	#button_right_mask,d1
		jsr	WallJump

+
	jsr	Sonic_CheckFloor
	tst.w	d1
	bpl.s	return2_1AF8A
	move.b	y_vel(a0),d2
	addq.b	#8,d2
	neg.b	d2
	cmp.b	d2,d1
	bge.s	+
	cmp.b	d2,d0
	blt.s	return2_1AF8A
+
	add.w	d1,y_pos(a0)
	move.b	d3,angle(a0)
	jsr     Mighty_ResetOnFloor
	move.b	d3,d0
	addi.b	#$20,d0
	andi.b	#$40,d0
	bne.s	loc2_1AF68
	move.b	d3,d0
	addi.b	#$10,d0
	andi.b	#$20,d0
	beq.s	loc2_1AF5A
	asr	y_vel(a0)
	bra.s	loc2_1AF7C
; ===========================================================================

loc2_1AF5A:
	move.w	#0,y_vel(a0)
	move.w	x_vel(a0),inertia(a0)
	rts
; ===========================================================================

loc2_1AF68:
	move.w	#0,x_vel(a0) ; stop Mighty since he hit a wall
	cmpi.w	#$FC0,y_vel(a0)
	ble.s	loc2_1AF7C
	move.w	#$FC0,y_vel(a0)

loc2_1AF7C:
	move.w	y_vel(a0),inertia(a0)
	tst.b	d3
	bpl.s	return2_1AF8A
	neg.w	inertia(a0)

return2_1AF8A:
	rts
; ===========================================================================
; loc2_1AF8C:
Mighty_HitLeftWall:
	jsr 	CheckLeftWallDist
	tst.w	d1
	bpl.s	Mighty_HitCeiling ; branch if distance is positive (not inside wall)
	sub.w	d1,x_pos(a0)
	move.w	#0,x_vel(a0) ; stop Mighty since he hit a wall
	move.w	y_vel(a0),inertia(a0)
	rts
; ===========================================================================
; loc2_1AFA6:
Mighty_HitCeiling:
	jsr	Sonic_CheckCeiling
	tst.w	d1
	bpl.s	Mighty_HitFloor ; branch if distance is positive (not inside ceiling)
	sub.w	d1,y_pos(a0)
	tst.w	y_vel(a0)
	bpl.s	return2_1AFBE
	move.w	#0,y_vel(a0) ; stop Mighty in y since he hit a ceiling

return2_1AFBE:
	rts
; ===========================================================================
; loc2_1AFC0:
Mighty_HitFloor:
	tst.w	y_vel(a0)
	bmi.s	return2_1AFE6
	jsr	Sonic_CheckFloor
	tst.w	d1
	bpl.s	return2_1AFE6
	add.w	d1,y_pos(a0)
	move.b	d3,angle(a0)
	jsr     Mighty_ResetOnFloor
	move.w	#0,y_vel(a0)
	move.w	x_vel(a0),inertia(a0)

return2_1AFE6:
	rts
; ===========================================================================
; loc2_1AFE8:
Mighty_HitCeilingAndWalls:
	jsr	CheckLeftWallDist
	tst.w	d1
	bpl.s	+
	sub.w	d1,x_pos(a0)
	move.w	#0,x_vel(a0)	; stop Mighty since he hit a wall

		move.b	#button_left_mask,d1
		jsr	WallJump

+
	jsr	CheckRightWallDist
	tst.w	d1
	bpl.s	+
	add.w	d1,x_pos(a0)
	move.w	#0,x_vel(a0)	; stop Mighty since he hit a wall

		move.b	#button_right_mask,d1
		jsr	WallJump

+
	jsr	Sonic_CheckCeiling
	tst.w	d1
	bpl.s	return2_1B042
	sub.w	d1,y_pos(a0)
	move.b	d3,d0
	addi.b	#$20,d0
	andi.b	#$40,d0
	bne.s	loc2_1B02C
	move.w	#0,y_vel(a0) ; stop Mighty in y since he hit a ceiling
	rts
; ===========================================================================

loc2_1B02C:
	move.b	d3,angle(a0)
	jsr 	Mighty_ResetOnFloor
	move.w	y_vel(a0),inertia(a0)
	tst.b	d3
	bpl.s	return2_1B042
	neg.w	inertia(a0)

return2_1B042:
	rts
; ===========================================================================
; loc2_1B044:
Mighty_HitRightWall:
	jsr 	CheckRightWallDist
	tst.w	d1
	bpl.s	Mighty_HitCeiling2
	add.w	d1,x_pos(a0)
	move.w	#0,x_vel(a0) ; stop Mighty since he hit a wall
	move.w	y_vel(a0),inertia(a0)
	rts
; ===========================================================================
; identical to Mighty_HitCeiling...
; loc2_1B05E:
Mighty_HitCeiling2:
	jsr	Sonic_CheckCeiling
	tst.w	d1
	bpl.s	Mighty_HitFloor2
	sub.w	d1,y_pos(a0)
	tst.w	y_vel(a0)
	bpl.s	return2_1B076
	move.w	#0,y_vel(a0) ; stop Mighty in y since he hit a ceiling

return2_1B076:
	rts
; ===========================================================================
; identical to Mighty_HitFloor...
; loc2_1B078:
Mighty_HitFloor2:
	tst.w	y_vel(a0)
	bmi.s	return2_1B09E
	jsr	Sonic_CheckFloor
	tst.w	d1
	bpl.s	return2_1B09E
	add.w	d1,y_pos(a0)
	move.b	d3,angle(a0)
	jsr     Mighty_ResetOnFloor
	move.w	#0,y_vel(a0)
	move.w	x_vel(a0),inertia(a0)

return2_1B09E:
	rts
; End of function Mighty_DoLevelCollision

; ---------------------------------------------------------------------------
; Subroutine to reset Sonic's mode when he lands on the floor
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc_1B0A0:
Mighty_ResetOnFloor:
	tst.b	pinball_mode(a0)
	bne.s	Mighty_ResetOnFloor_Part3
	move.b	#AniIDSonAni_Walk,anim(a0)
; loc_1B0AC:
Mighty_ResetOnFloor_Part2:
	move.b  y_radius(a0),d0
	move.b	#$13,y_radius(a0)
	move.b	#9,x_radius(a0)
	btst	#2,status(a0)
	beq.s	Mighty_ResetOnFloor_Part3
	bclr	#2,status(a0)
	move.b	#AniIDSonAni_Walk,anim(a0)	; use running/walking/standing animation
	sub.b	#$13,d0	; move Sonic up 5 pixels so the increased height doesn't push him into the ground
	ext.w	d0
	add.w	d0,y_pos(a0)

; loc_1B0DA:
Mighty_ResetOnFloor_Part3:
	bclr	#1,status(a0)
	bclr	#5,status(a0)
	bclr	#4,status(a0)
	move.b	#0,jumping(a0)
	move.b	#0,(AirMove_Performed).w
	move.w	#0,(Chain_Bonus_counter).w
	move.b	#0,flip_angle(a0)
	move.b	#0,flip_turned(a0)
	move.b	#0,flips_remaining(a0)
	move.w	#0,(Sonic_Look_delay_counter).w
		move.b	#0,collision_property(a0)
	cmpi.b	#AniIDSonAni_Hang2,anim(a0)
	bne.s	return2_1B11E
	move.b	#AniIDSonAni_Walk,anim(a0)

return2_1B11E:
	rts

WallJump:
		cmpi.b	#ObjID_Mighty,id(a0)
		bne.s	.return
		tst.b	jumping(a0)	;Mercury Constants
		beq.s	.return
		tst.b	y_vel(a0)
		bmi.s	.return
		move.b	(Ctrl_1_Held_Logical).w,d0	; get jpad
		andi.b	#(button_left_mask|button_right_mask),d0	; keep just L and R state
		beq.s	.return			; fail if neither are pressed
		cmpi.b	#(button_left_mask|button_right_mask),d0	; fail if both are pressed
		beq.s	.return
		and.b	d1,d0			; keep only L or R depending on d1
		beq.s	.return			; fail if not pressed
		move.b	d0,double_jump_flag+1(a0)	; remember them
		move.w	#0,y_vel(a0)
		move.b	#$18,double_jump_flag(a0)	;Mercury Constants
		clr.b	jumping(a0)
		move.b	#AniIDSonAni_WallJump,anim(a0)
		move.w	#SndID_KnuxGrab,d0
		jsr	(PlaySound).l
	.return:
		rts

; ===========================================================================
; ---------------------------------------------------------------------------
; Mighty when he gets hurt
; ---------------------------------------------------------------------------
; loc2_1B120: Obj_01_Sub_4:
Obj5A_Hurt:
	tst.w	(Debug_mode_flag).w
	beq.s	Obj5A_Hurt_Normal
	btst	#button_B,(Ctrl_1_Press).w
	beq.s	Obj5A_Hurt_Normal
	move.w	#1,(Debug_placement_mode).w
	clr.b	(Control_Locked).w
	rts
; ---------------------------------------------------------------------------
; loc2_1B13A:
Obj5A_Hurt_Normal:
	jsr	(ObjectMove).l
	addi.w	#$30,y_vel(a0)
	btst	#6,status(a0)
	beq.s	+
	subi.w	#$20,y_vel(a0)
+
	cmpi.w	#-$100,(Camera_Min_Y_pos).w
	bne.s	+
	andi.w	#$7FF,y_pos(a0)
+
	bsr.w	Mighty_HurtStop
	bsr.w	Mighty_LevelBound
	jsr     Sonic_RecordPos
	jsr     Sonic_Water
	bsr.w	Mighty_Animate
	bsr.w	LoadMightyDynPLC
	jmp	(DisplaySprite).l
; ===========================================================================
; loc2_1B184:
Mighty_HurtStop:
	move.w	(Camera_Max_Y_pos_now).w,d0
	addi.w	#$E0,d0
	cmp.w	y_pos(a0),d0
	blt.w   Mighty_KillCharacter
	bsr.w	Mighty_DoLevelCollision
	btst	#1,status(a0)
	bne.s	return2_1B1C8
	moveq	#0,d0
	move.w	d0,y_vel(a0)
	move.w	d0,x_vel(a0)
	move.w	d0,inertia(a0)
	move.b	d0,obj_control(a0)
	move.b	#AniIDSonAni_Walk,anim(a0)
	subq.b	#2,routine(a0)	; => Obj5A_Control
	move.w	#$78,invulnerable_time(a0)
	move.b	#0,spindash_flag(a0)

return2_1B1C8:
	rts

Mighty_KillCharacter:
    jmp KillCharacter

; ---------------------------------------------------------------------------
; Mighty when he dies
; ...poor Mighty
; ---------------------------------------------------------------------------

; loc2_1B1E6: Obj_01_Sub_6:
Obj5A_Dead:
	tst.w	(Debug_mode_flag).w
	beq.s	+
	btst	#button_B,(Ctrl_1_Press).w
	beq.s	+
	move.w	#1,(Debug_placement_mode).w
	clr.b	(Control_Locked).w
	rts
+
	jsr	CheckGameOver
	jsr	(ObjectMoveAndFall).l
	jsr	Sonic_RecordPos
	bsr.w	Mighty_Animate
	bsr.w	LoadMightyDynPLC
	jmp	(DisplaySprite).l

; ===========================================================================
; ---------------------------------------------------------------------------
; Mighty when the level is restarted
; ---------------------------------------------------------------------------
; loc2_1B28E:
Obj5A_ResetLevel:
	jmp Obj01_ResetLevel
; ===========================================================================
; ---------------------------------------------------------------------------
; Mighty when he's offscreen and waiting for the level to restart
; ---------------------------------------------------------------------------
; loc2_1B31C: Obj_01_Sub_8:
Obj5A_Gone:
	tst.w	restart_countdown(a0)
	beq.s	+
	subq.w	#1,restart_countdown(a0)
	bne.s	+
	move.w	#1,(Level_Inactive_flag).w
+
	rts
; ===========================================================================
; ---------------------------------------------------------------------------
; Mighty when he's waiting for the camera to scroll back to where he respawned
; ---------------------------------------------------------------------------
; loc2_1B330: Obj_01_Sub_A:
Obj5A_Respawning:
	tst.w	(Camera_X_pos_diff).w
	bne.s	+
	tst.w	(Camera_Y_pos_diff).w
	bne.s	+
	move.b	#2,routine(a0)	; => Obj5A_Control
+
	bsr.w	Mighty_Animate
	bsr.w	LoadMightyDynPLC
	jmp	(DisplaySprite).l
; ===========================================================================

; ---------------------------------------------------------------------------
; Mighty when he's drowning (ngl this is totally me when i drown xdddd)
; ---------------------------------------------------------------------------
Obj5A_Drowned:
	jsr	ObjectMove	; Make Mighty able to move
	addi.w	#$10,y_vel(a0)	; Apply gravity
	jsr	Sonic_RecordPos	; Record position
	bsr.w	Mighty_Animate	; Animate Mighty
	bsr.w	LoadMightyDynPLC	; Load Mighty's DPLCs
	jmp	DisplaySprite	; And finally, display Mighty

; ---------------------------------------------------------------------------
; Subroutine to animate Mighty's sprites
; See also: AnimateSprite
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1B350:
Mighty_Animate:
	lea	(MightyAniData).l,a1
	moveq	#0,d0
	move.b	anim(a0),d0
	cmp.b	prev_anim(a0),d0	; has animation changed?
	beq.s	MAnim_Do		; if not, branch
	move.b	d0,prev_anim(a0)	; set to next animation
	move.b	#0,anim_frame(a0)	; reset animation frame
	move.b	#0,anim_frame_duration(a0)	; reset frame duration
	bclr	#5,status(a0)
; loc2_1B384:
MAnim_Do:
	add.w	d0,d0
	adda.w	(a1,d0.w),a1	; calculate address of appropriate animation script
	move.b	(a1),d0
	bmi.s	MAnim_WalkRun	; if animation is walk/run/roll/jump, branch
	move.b	status(a0),d1
	andi.b	#1,d1
	andi.b	#$FC,render_flags(a0)
	or.b	d1,render_flags(a0)
	subq.b	#1,anim_frame_duration(a0)	; subtract 1 from frame duration
	bpl.s	MAnim_Delay			; if time remains, branch
	move.b	d0,anim_frame_duration(a0)	; load frame duration
; loc2_1B3AA:
MAnim_Do2:
	moveq	#0,d1
	move.b	anim_frame(a0),d1	; load current frame number
	move.b	1(a1,d1.w),d0		; read sprite number from script
	cmpi.b	#$F0,d0
	bhs.s	MAnim_End_FF		; if animation is complete, branch
; loc2_1B3BA:
MAnim_Next:
	move.b	d0,mapping_frame(a0)	; load sprite number
	addq.b	#1,anim_frame(a0)	; go to next frame
; return2_1B3C2:
MAnim_Delay:
	rts
; ===========================================================================
; loc2_1B3C4:
MAnim_End_FF:
	addq.b	#1,d0		; is the end flag = $FF ?
	bne.s	MAnim_End_FE	; if not, branch
	move.b	#0,anim_frame(a0)	; restart the animation
	move.b	1(a1),d0	; read sprite number
	bra.s	MAnim_Next
; ===========================================================================
; loc2_1B3D4:
MAnim_End_FE:
	addq.b	#1,d0		; is the end flag = $FE ?
	bne.s	MAnim_End_FD	; if not, branch
	move.b	2(a1,d1.w),d0	; read the next byte in the script
	sub.b	d0,anim_frame(a0)	; jump back d0 bytes in the script
	sub.b	d0,d1
	move.b	1(a1,d1.w),d0	; read sprite number
	bra.s	MAnim_Next
; ===========================================================================
; loc2_1B3E8:
MAnim_End_FD:
	addq.b	#1,d0			; is the end flag = $FD ?
	bne.s	MAnim_End		; if not, branch
	move.b	2(a1,d1.w),anim(a0)	; read next byte, run that animation
; return2_1B3F2:
MAnim_End:
	rts
; ===========================================================================
; loc2_1B3F4:
MAnim_WalkRun:
	addq.b	#1,d0		; is the start flag = $FF ?
	bne.w	MAnim_Roll	; if not, branch
	moveq	#0,d0		; is animation walking/running?
	move.b	flip_angle(a0),d0	; if not, branch
	bne.w	MAnim_Tumble
	moveq	#0,d1
	move.b	angle(a0),d0	; get Mighty's angle
	bmi.s	+
	beq.s	+
	subq.b	#1,d0
+
	move.b	status(a0),d2
	andi.b	#1,d2		; is Mighty mirrored horizontally?
	bne.s	+		; if yes, branch
	not.b	d0		; reverse angle
+
	addi.b	#$10,d0		; add $10 to angle
	bpl.s	+		; if angle is $0-$7F, branch
	moveq	#3,d1
+
	andi.b	#$FC,render_flags(a0)
	eor.b	d1,d2
	or.b	d2,render_flags(a0)
	btst	#5,status(a0)
	bne.w	MAnim_Push
	lsr.b	#4,d0		; divide angle by 16
	andi.b	#6,d0		; angle must be 0, 2, 4 or 6
	mvabs.w	inertia(a0),d2	; get Mighty's "speed" for animation purposes
    if status_sec_isSliding = 7
	tst.b	status_secondary(a0)
	bpl.w	+
    else
	btst	#status_sec_isSliding,status_secondary(a0)
	beq.w	+
    endif
	add.w	d2,d2
+
	lea	(MtyAni_Run).l,a1	; use running animation
	cmpi.w	#$600,d2		; is Mighty at running speed?
	bhs.s	+			; use running animation
	lea	(MtyAni_Walk).l,a1	; use walking animation
	add.b	d0,d0
+
	add.b	d0,d0
	move.b	d0,d3
	moveq	#0,d1
	move.b	anim_frame(a0),d1
	move.b	1(a1,d1.w),d0
	cmpi.b	#-1,d0
	bne.s	+
	move.b	#0,anim_frame(a0)
	move.b	1(a1),d0
+
	move.b	d0,mapping_frame(a0)
	add.b	d3,mapping_frame(a0)
	subq.b	#1,anim_frame_duration(a0)
	bpl.s	return2_1B4AC
	neg.w	d2
	addi.w	#$800,d2
	bpl.s	+
	moveq	#0,d2
+
	lsr.w	#8,d2
	move.b	d2,anim_frame_duration(a0)	; modify frame duration
	addq.b	#1,anim_frame(a0)		; modify frame number

return2_1B4AC:
	rts
; ===========================================================================
; loc2_1B520:
MAnim_Tumble:
	move.b	flip_angle(a0),d0
	moveq	#0,d1
	move.b	status(a0),d2
	andi.b	#1,d2
	bne.s	MAnim_Tumble_Left

	andi.b	#$FC,render_flags(a0)
	addi.b	#$B,d0
	divu.w	#$16,d0
	addi.b	#$55,d0
	move.b	d0,mapping_frame(a0)
	move.b	#0,anim_frame_duration(a0)
	rts
; ===========================================================================
; loc2_1B54E:
MAnim_Tumble_Left:
	andi.b	#$FC,render_flags(a0)
	tst.b	flip_turned(a0)
	beq.s	loc2_1B566
	ori.b	#1,render_flags(a0)
	addi.b	#$B,d0
	bra.s	loc2_1B572
; ===========================================================================

loc2_1B566:
	ori.b	#3,render_flags(a0)
	neg.b	d0
	addi.b	#$8F,d0

loc2_1B572:
	divu.w	#$16,d0
	addi.b	#$55,d0
	move.b	d0,mapping_frame(a0)
	move.b	#0,anim_frame_duration(a0)
	rts
; ===========================================================================
; loc2_1B586:
MAnim_Roll:
	subq.b	#1,anim_frame_duration(a0)	; subtract 1 from frame duration
	bpl.w	MAnim_Delay			; if time remains, branch
	addq.b	#1,d0		; is the start flag = $FE ?
	bne.s	MAnim_Push	; if not, branch
	mvabs.w	inertia(a0),d2
	lea	(MtyAni_Roll2).l,a1
	cmpi.w	#$600,d2
	bhs.s	+
	lea	(MtyAni_Roll).l,a1
+
	neg.w	d2
	addi.w	#$400,d2
	bpl.s	+
	moveq	#0,d2
+
	lsr.w	#8,d2
	move.b	d2,anim_frame_duration(a0)
	move.b	status(a0),d1
	andi.b	#1,d1
	andi.b	#$FC,render_flags(a0)
	or.b	d1,render_flags(a0)
	bra.w	MAnim_Do2
; ===========================================================================

MAnim_Push:
	subq.b	#1,anim_frame_duration(a0)	; subtract 1 from frame duration
	bpl.w	MAnim_Delay			; if time remains, branch
	move.w	inertia(a0),d2
	bmi.s	+
	neg.w	d2
+
	addi.w	#$800,d2
	bpl.s	+
	moveq	#0,d2
+
	lsr.w	#6,d2
	move.b	d2,anim_frame_duration(a0)
	lea	(MtyAni_Push).l,a1
+
	move.b	status(a0),d1
	andi.b	#1,d1
	andi.b	#$FC,render_flags(a0)
	or.b	d1,render_flags(a0)
	bra.w	MAnim_Do2
; ===========================================================================

; ---------------------------------------------------------------------------
; Animation script - Mighty
; ---------------------------------------------------------------------------
; off_1B618:
MightyAniData:			offsetTable
MtyAni_Walk_ptr:		offsetTableEntry.w MtyAni_Walk		;  0 ;   0
MtyAni_Run_ptr:			offsetTableEntry.w MtyAni_Run		;  1 ;   1
MtyAni_Roll_ptr:		offsetTableEntry.w MtyAni_Roll		;  2 ;   2
MtyAni_Roll2_ptr:		offsetTableEntry.w MtyAni_Roll2		;  3 ;   3
MtyAni_Push_ptr:		offsetTableEntry.w MtyAni_Push		;  4 ;   4
MtyAni_Wait_ptr:		offsetTableEntry.w MtyAni_Wait		;  5 ;   5
MtyAni_Balance_ptr:		offsetTableEntry.w MtyAni_Balance	;  6 ;   6
MtyAni_LookUp_ptr:		offsetTableEntry.w MtyAni_LookUp	;  7 ;   7
MtyAni_Duck_ptr:		offsetTableEntry.w MtyAni_Duck		;  8 ;   8
MtyAni_Spindash_ptr:		offsetTableEntry.w MtyAni_Spindash	;  9 ;   9
MtyAni_Blink_ptr:		offsetTableEntry.w MtyAni_Blink		; 10 ;  $A
MtyAni_GetUp_ptr:		offsetTableEntry.w MtyAni_GetUp		; 11 ;  $B
MtyAni_Balance2_ptr:		offsetTableEntry.w MtyAni_Balance2	; 12 ;  $C
MtyAni_Stop_ptr:		offsetTableEntry.w MtyAni_Stop		; 13 ;  $D
MtyAni_Float_ptr:		offsetTableEntry.w MtyAni_Float		; 14 ;  $E
MtyAni_Float2_ptr:		offsetTableEntry.w MtyAni_Float2	; 15 ;  $F
MtyAni_Spring_ptr:		offsetTableEntry.w MtyAni_Spring	; 16 ; $10
MtyAni_Hang_ptr:		offsetTableEntry.w MtyAni_Hang		; 17 ; $11
MtyAni_Dash2_ptr:		offsetTableEntry.w MtyAni_Dash2		; 18 ; $12
MtyAni_Victory_ptr:		offsetTableEntry.w MtyAni_Victory	; 19 ; $13
MtyAni_Hang2_ptr:		offsetTableEntry.w MtyAni_Hang2		; 20 ; $14
MtyAni_Bubble_ptr:		offsetTableEntry.w MtyAni_Bubble	; 21 ; $15
MtyAni_DeathBW_ptr:		offsetTableEntry.w MtyAni_DeathBW	; 22 ; $16
MtyAni_Drown_ptr:		offsetTableEntry.w MtyAni_Drown		; 23 ; $17
MtyAni_Death_ptr:		offsetTableEntry.w MtyAni_Death		; 24 ; $18
MtyAni_Hurt_ptr:		offsetTableEntry.w MtyAni_Hurt		; 25 ; $19
MtyAni_Hurt2_ptr:		offsetTableEntry.w MtyAni_Hurt		; 26 ; $1A
MtyAni_Slide_ptr:		offsetTableEntry.w MtyAni_Slide		; 27 ; $1B
MtyAni_Blank_ptr:		offsetTableEntry.w MtyAni_Blank		; 28 ; $1C
MtyAni_Dummy_ptr:		offsetTableEntry.w MtyAni_Dummy	; 29 ; $1D
MtyAni_Dummy2_ptr:		offsetTableEntry.w MtyAni_Dummy2	; 30 ; $1E
MtyAni_Transform_ptr:	offsetTableEntry.w MtyAni_Transform	; 31 ; $1F
MtyAni_Continue_ptr:		offsetTableEntry.w MtyAni_Continue		; 32 ; $20
MtyAni_React_ptr:		offsetTableEntry.w MtyAni_React	; 33 ; $21
MtyAni_PeelChrg_ptr:	offsetTableEntry.w MtyAni_PeelChrg	; 34 ; $22
MtyAni_HaulAss_ptr:		offsetTableEntry.w MtyAni_HaulAss	; 35 ; $23
MtyAni_WallJump_ptr:	offsetTableEntry.w MtyAni_WallJump	; 36 ; $24

MtyAni_Walk:	dc.b $FF,   $11,   $12,   $13,   $14,   $15,   $16,   $17,   $18, $FF
	rev02even
MtyAni_Run:	dc.b	$FF, $31, $32, $33, $34, $FF, $FF, $FF, $FF, $FF
	rev02even
MtyAni_Roll:	dc.b $FE, $41, $42, $41, $43, $41, $44, $41, $45, $FF
	rev02even
MtyAni_Roll2:	dc.b $FE, $41, $42, $41, $43, $41, $44, $41, $45, $FF
	rev02even
MtyAni_Push:	dc.b $FD, $46, $47, $48, $49, $FF, $FF, $FF, $FF, $FF
	rev02even
MtyAni_Wait:
		dc.b   7,  1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  3,  2,  1,  1,  1
		dc.b   1,  1,  1,  1,  2,  3,  2,  1,  1,  1,  1,  1,  1,  1,  1,  1
		dc.b   2,  3,  4,  5,  5,  5,  5,  5,  6,  5,  6,  5,  6,  5,  6,  5
		dc.b   4,  3,  2,  1,  1,  1,  1,  1,  1,  1,  2,  3,  2,  1,  1,  1
		dc.b   1,  1,  1,  1,  2,  3,  2,  1,  1,  1,  1,  1,  1,  1,  1,  1
		dc.b   2,  3,  4,  5,  5,  5,  5,  7,  8,  9,  8,  9,  8,  9,  8,  9
		dc.b   8,  9,  8,  9,  8,  9,  8,  9,  8,  9,  8,  7,  5,  4,  3,  2
		dc.b   1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  3,  2,  1,  1,  1,  1
		dc.b   1,  1,  1,  1,  2,  3,  2,  1,  1,  1,  1,  1,  1,  1,  1,  1
		dc.b   2,  3,  4,  5, $A, $B, $C, $B, $C, $B, $C, $B, $C, $B, $C, $B
		dc.b  $A,  5,  4,  3,  2,  1,  1,  1,  1,  1,  2,  3,  2,  1,  1,$FF
	rev02even
MtyAni_Balance:	dc.b   $1F, $79, $7A, $FF
	rev02even
MtyAni_LookUp:	dc.b   5, $D, $E, $FE,   1
	rev02even
MtyAni_Duck:	dc.b   5, $F, $10, $FE,   1
	rev02even
MtyAni_Spindash:dc.b   0, $4A, $4B, $4A, $4C, $4A, $4D, $4A, $4E, $4A, $4F, $FF
	rev02even
MtyAni_Blink:	dc.b   9, 1, $C5, $C6, $C6, $C6, $C6, $C6, $C6, $C7, $C7, $C7, $C7, $C7, $C7, $C7
		dc.b  $C7, $C7, $C7, $C7, $C7, $FD,   0
	rev02even
MtyAni_GetUp:	dc.b   $F, $8F, $FF
	rev02even
MtyAni_Balance2:dc.b   $1F, $7B, $7C, $FF
	rev02even
MtyAni_Stop:	dc.b   7, $65, $66, $67, $FD,   0
	rev02even
MtyAni_Float:	dc.b   7, $80, $FF
	rev02even
MtyAni_Float2:	dc.b   7, $80, $81, $82, $83, $84, $85, $86, $87, $FF ; start facing right, rotate left
	rev02even
MtyAni_Spring:	dc.b $2F, $6E, $FD,   0
	rev02even
MtyAni_Hang:	dc.b   1, $61, $62, $FF
	rev02even
MtyAni_Dash2:	dc.b  $F, $43, $43, $43, $FE,   1
	rev02even
MtyAni_Victory:	dc.b	7, $7D, $7E, $7F, $FE,   1
	rev02even
MtyAni_Hang2:	dc.b $13, $51, $FF
	rev02even
MtyAni_Bubble:	dc.b	$B, $6F, $6F,   $17,   $18, $FD,   0 ; breathe
	rev02even
MtyAni_DeathBW:	dc.b $20, $70, $FF
	rev02even
MtyAni_Drown:	dc.b $20, $71, $FF
	rev02even
MtyAni_Death:	dc.b $20, $72, $FF
	rev02even
MtyAni_Hurt:	dc.b $40, $63, $FF
	rev02even
MtyAni_Slide:	dc.b   9, $63, $64, $FF
	rev02even
MtyAni_Blank:	dc.b $77,  0,$FD,  0
	rev02even
MtyAni_Dummy:dc.b 3,$C6,$FF
	rev02even
MtyAni_Dummy2:dc.b 3,$C6,$FF
	rev02even
MtyAni_Continue:	dc.b   7,$77,$78,$FF
	rev02even
MtyAni_React:	dc.b   3,$5B,$5A,$59,$FD,  0
	rev02even
MtyAni_PeelChrg:dc.b 	0,  $7, $7, $7, $7, $7, $7, $7, $7
		dc.b	$8, $8, $8, $8, $1, $1, $24, $24
		dc.b	$21,  $22,  $23,  $24, $21,  $22,  $23,  $24
		dc.b	$DA,  $DB, 	$DC,  $DD, -2, 4, $FE
	rev02even
MtyAni_HaulAss:	dc.b $FF, $DA, $DB, $DC, $DD, $FF, $FF,	$FF
	rev02even
MtyAni_WallJump:	dc.b	5,$68,$69,$FE,1
	rev02even
MtyAni_Transform:dc.b   2, $73, $73, $74, $74, $75, $76, $76, $76, $76, $76, $76, $76, $76, $FD,   0
	even

; ---------------------------------------------------------------------------
; Mighty pattern loading subroutine
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B R O U T I N E |||||||||||||||||||||||||||||||||||||||

; loc2_1B848:
LoadMightyDynPLC: ; known as Mighty_Load_PLC in S3K
	moveq	#0,d0
	move.b	mapping_frame(a0),d0	; load frame number
; loc2_1B84E:
LoadMightyDynPLC_Part2:
	cmp.b	(Sonic_LastLoadedDPLC).w,d0
	beq.s	return2_1B89A
	move.b	d0,(Sonic_LastLoadedDPLC).w
	lea	(MapRUnc_Mighty).l,a2
	add.w	d0,d0
	adda.w	(a2,d0.w),a2
	move.w	(a2)+,d5
	subq.w	#1,d5
	bmi.s	return2_1B89A
	move.w	#tiles_to_bytes(ArtTile_ArtUnc_Sonic),d4
; loc2_1B86E:
MPLC_ReadEntry:
	moveq	#0,d1
	move.w	(a2)+,d1
	move.w	d1,d3
	lsr.w	#8,d3
	andi.w	#$F0,d3
	addi.w	#$10,d3
	andi.w	#$FFF,d1
	lsl.l	#5,d1
	addi.l	#ArtUnc_Mighty,d1
	move.w	d4,d2
	add.w	d3,d4
	add.w	d3,d4
	jsr	(QueueDMATransfer).l
	dbf	d5,MPLC_ReadEntry	; repeat for number of entries

return2_1B89A:
	rts