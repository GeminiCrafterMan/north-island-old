	btst	#1,$39(a0)
	bne.s	Sonic_DashLaunch
	cmpi.b	#AniIDSonAni_LookUp,anim(a0) ;check to see if your looking up
	bne.s	+
	move.b	(Ctrl_1_Press_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0
	beq.w	+
	move.b	#AniIDSonAni_Run,anim(a0)
	move.w	#0,$3A(a0)
	move.w	#SndID_PeeloutCharge,d0
	jsr	(PlaySound).l ; Play peelout charge sound
	addq.l	#4,sp
	bset	#1,$39(a0)
 
	bsr.w	Sonic_LevelBound
	jsr	AnglePos
 
+
	rts	
; ---------------------------------------------------------------------------
 
Sonic_DashLaunch:
	move.b	#AniIDSonAni_PeelChrg,anim(a0) ;charging peelout animation (walking to running to peelout sprites)
	move.b	($FFFFF602).w,d0
	btst	#0,d0
	bne.w	Sonic_DashCharge
	bclr	#1,$39(a0)	; stop Dashing
	cmpi.b	#$1E,$3A(a0)	; have we been charging long enough?
	bne.s	Sonic_Dash_Stop_Sound
	move.b	#0,anim(a0)	; launches here (peelout sprites)
	move.w	#1,$10(a0)	; force X speed to nonzero for camera lag's benefit
	tst.b	(Super_Sonic_flag).w
	bne.s	+
	move.w	#$0C00,$14(a0)	;Set sonic's speed
	bra.s	Peel_Cont
+
	move.w	#$0F00,$14(a0)
Peel_Cont:
	move.w	$14(a0),d0
	subi.w	#$800,d0
	add.w	d0,d0
	andi.w	#$1F00,d0
	neg.w	d0
	addi.w	#$2000,d0
	move.w	d0,(Horiz_scroll_delay_val).w
	btst	#0,$22(a0)
	beq.s	+
	neg.w	$14(a0)
 
+
	;bset	#2,$22(a0)
	bclr	#7,$22(a0)
	move.w	#SndID_PeeloutRelease,d0
	jsr	(PlaySound).l
	bra.w	Sonic_DashResetScr
; ---------------------------------------------------------------------------
 
Sonic_DashCharge:		; If still charging the dash...
	cmpi.b	#$1E,$3A(a0)
	beq.s	Sonic_DashResetScr
	addi.b	#1,$3A(a0)
	jmp 	Sonic_DashResetScr
	
Sonic_Dash_Stop_Sound:
	move.w	#SndID_Skidding,d0
	jsr	(PlaySound).l

Sonic_DashResetScr:
	addq.l	#4,sp		; increase stack ptr ; was 4
	cmpi.w	#$60,($FFFFF73E).w
	beq.s	++
	bcc.s	+
	addq.w	#4,($FFFFF73E).w
+
	subq.w	#2,($FFFFF73E).w
+
	bsr.w	Sonic_LevelBound
	jsr	AnglePos
	rts
	