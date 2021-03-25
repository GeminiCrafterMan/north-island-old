SonicKnux_AirRoll:
	btst	#1,status(a0)	; is Sonic in the air?
	beq.s	.nope	; if not, branch
	move.b	(Ctrl_1_Held_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0 ; is a jump button pressed?
	beq.s	.nope	; if not, branch
	move.b	#AniIDSonAni_Roll,anim(a0)	; use "rolling"	animation
	bset	#2,status(a0)	; force Sonic to roll

.nope:
	rts
; End of function Sonic_AirRoll

Tails_AirRoll:
	btst	#1,status(a0)	; is Tails in the air?
	beq.s	.nope	; if not, branch
	move.b	(Ctrl_2_Held_Logical).w,d0
	andi.b	#button_B_mask|button_C_mask|button_A_mask,d0 ; is a jump button pressed?
	beq.s	.nope	; if not, branch
	move.b	#AniIDTailsAni_Roll,anim(a0)	; use "rolling"	animation
	bset	#2,status(a0)	; force Tails to roll

.nope:
	rts
; End of function Sonic_AirRoll
