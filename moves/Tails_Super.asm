	tst.b	(Super_Sonic_flag).w	; Ignore all this code if not Super Tails
	beq.w	Tails_Super_Return
	cmpi.w	#2,(Player_mode).w
	bne.w	Tails_Super_Return
	cmpi.b	#1,(Super_Sonic_palette).w	; is Super Sonic's transformation sequence finished?
	beq.w	Tails_Super_Return			; if not, branch
;	tst.b	(Update_HUD_timer).w ; is the hud being updated (is the level over?)
;	beq.s	Tails_RevertToNormal ; if not, gtfo
	subq.w	#1,(Super_Sonic_frame_count).w
	bhi.w	Tails_Super_Return
	move.w	#60,(Super_Sonic_frame_count).w	; Reset frame counter to 60
	tst.w	(Ring_count).w
	beq.s	Tails_RevertToNormal
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
	bne.s	Tails_Super_Return
; loc_1ABF2:
Tails_RevertToNormal:
	move.l	#MapUnc_Tails,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtUnc_Tails,0,0),art_tile(a0)
	move.b	#0,(MainCharacter+obj_control).w	; restore Sonic's movement
	move.b	#0,(Super_Sonic_flag).w
	move.b	#1,prev_anim(a0)	; Change animation back to normal ?
	move.w	#1,invincibility_time(a0)	; Remove invincibility
	move.w	#$600,(Tails_top_speed).w
	move.w	#$C,(Tails_acceleration).w
	move.w	#$80,(Tails_deceleration).w
	btst	#6,status(a0)	; Check if underwater, return if not
	beq.s	Tails_Super_Return
	move.w	#$300,(Tails_top_speed).w
	move.w	#6,(Tails_acceleration).w
	move.w	#$40,(Tails_deceleration).w
	tst.b	(Current_Boss_ID).w	; Don't change music if in a boss fight
	bne.s	Tails_Super_Return
	jsr	(PlayLevelMusic).l

Tails_Super_Return:
	rts
; End of subroutine Sonic_Super