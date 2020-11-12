ObjC4_status		= objoff_2A
ObjC4_x_pos_next	= objoff_30
ObjC4_y_pos_next	= objoff_38
ObjC4_hover_counter	= objoff_3F
ObjC4_FloatDown_Flag = objoff_3C

	moveq	#0,d0
	move.b	routine(a0),d0
	move.w	ObjC4_Index(pc,d0.w),d1
	jsr	ObjC4_Index(pc,d1.w)
	jmp	(DisplaySprite).l
; ===========================================================================
; off_15CD6:
ObjC4_Index:	offsetTable
		offsetTableEntry.w ObjC4_Init	; 0
		offsetTableEntry.w ObjC4_Main	; 2
		offsetTableEntry.w ObjC4_PHold	; 4
		offsetTableEntry.w ObjC4_PHold2	; 6
		offsetTableEntry.w ObjC4_Defeated	; 8
; ===========================================================================
; loc_15CDA:
ObjC4_Init:

		move.w	#$100,y_vel(a0)	; move her down
		move.w	#$2B10,x_pos(a0)	; please god let her show up on-screen
		jsr	ObjectMove
		cmpi.w	#$430,y_pos(a0) ; please let this work
		bne.s	ObjC4_AnimateNormal	; if it works... go to the animate part??? thanks arz boss for being confusing af
		move.w	#0,y_vel(a0)	; stop her too, i guess
		move.b	#1,ObjC4_FloatDown_Flag(a0)
		addq.b	#2,routine(a0)

ObjC4_AnimateNormal:
	move.l	#MapUnc_MCirno,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtNem_ARZBoss,0,0),art_tile(a0)
	move.b	#4,render_flags(a0)
	move.b	#$10,width_pixels(a0)
	move.b	#4,priority(a0)
;	move.w	x_pos(a0),ObjC4_x_pos_next(a0)
	move.w	y_pos(a0),ObjC4_y_pos_next(a0); very large sine wave.
	move.b	#$F,collision_flags(a0)
	move.b	#8,collision_property(a0)

; loc_15D02:
ObjC4_Main:
	cmpi.b	#8,routine(a0)
	bge.s	ObjC4_Main_End
	jsr		Obj_GetOrientationToPlayer
	bclr	#0,render_flags(a0)	; face right
	bclr	#0,status(a0)
	tst.w	d0		; is player to object's left?
	bne.s	ObjC4_Main_End		; if not, branch
	bset	#0,render_flags(a0)	; face left
	bset	#0,status(a0)
+
	move.w	#$1B,d1
	move.w	#$10,d2
	move.w	#$10,d3
;	move.w	x_pos(a0),d4

ObjC4_Main_End:
	bsr.w	ObjC4_SineWaveAndHandleHits
	lea		(Ani_MCirno).l,a1 ; this specific order makes it work fine. dunno why...
	tst.b	invulnerable_time(a0)	; is boss invulnerable?
	beq.s	+				; if not, branch
	move.b	#2,anim(a0)
	bra.s	++
+
	move.b	#1,anim(a0)
+
	jsr	(AnimateSprite).l
	jmp		MetalCirno_LoadGraphics
;	jmp		Obj_DeleteBehindScreen

ObjC4_SineWaveAndHandleHits:
	tst.b	ObjC4_FloatDown_Flag(a0)
	beq.s	ObjC4_HandleHits
	; do hovering motion using sine wave
	move.b	ObjC4_hover_counter(a0),d0
	jsr	(CalcSine).l
	asr.w	#6,d0
	add.w	ObjC4_y_pos_next(a0),d0		; get y position for next frame, add sine value
	move.w	d0,y_pos(a0)			; set y and x positions
	addq.b	#2,ObjC4_hover_counter(a0)
ObjC4_HandleHits:
	cmpi.b	#8,routine(a0)	; is boss exploding or retreating?
	beq.s	MC_MainEnd_Return		; if yes, branch
	tst.b	collision_property(a0)	; has boss run out of hits?
	beq.w	MCirno_Defeat		; if yes, branch
	tst.b	collision_flags(a0)	; are boss' collisions enabled?
	bne.s	MC_MainEnd_Return		; if yes, branch
	tst.b	invulnerable_time(a0)	; is boss invulnerable?
	bne.s	+				; if yes, branch
	move.b	#$20,invulnerable_time(a0)	; make boss invulnerable
	move.w	#SndID_BossHit,d0	; play "boss hit" sound
	jsr	(PlaySound).l
+
	; do palette flashing effect
	lea	(Normal_palette_line2+2).w,a1
	moveq	#0,d0		; 0000 = black
	tst.w	(a1)		; is current color black?
	bne.s	+		; if not, branch
	move.w	#$EEE,d0	; 0EEE = white
+
	move.w	d0,(a1)		; set color to white or black
	subq.b	#1,invulnerable_time(a0)	; decrease boss' invulnerable time
	bne.s	MC_MainEnd_Return			; branch, if it hasn't run out
	move.b	#$F,collision_flags(a0)		; else, restore collisions

MC_MainEnd_Return:
	rts
; ===========================================================================
; loc_2D5C4:
MCirno_Defeat:
	jsr	(PlayLevelMusic).l
	jsr	(LoadPLC_AnimalExplosion).l
	moveq	#100,d0
	jsrto	(AddPoints).l, JmpTo_AddPoints
	move.w	#$B3,(Boss_Countdown).w
	move.b	#8,routine(a0)
	moveq	#PLCID_Capsule,d0
	jmp		(LoadPLC).l

ObjC4_PHold:	rts
ObjC4_PHold2:	rts

ObjC4_Defeated:
	move.w	#$400,x_vel(a0)
	move.w	#-$40,y_vel(a0)
	cmpi.w	#$2C00,(Camera_Max_X_pos).w	; has camera reached its target position?
	bhs.s	MC_ChkDel	; if yes, branch
	addq.w	#2,(Camera_Max_X_pos).w		; else, move camera
	bra.s	MCir_ARZBossSubC
; ===========================================================================
; loc_30976:
MC_ChkDel:
	jmp		Obj_DeleteOffScreen

; loc_3097C:
MCir_ARZBossSubC:
	jsr		ObjectMove
	bsr.w	ObjC4_SineWaveAndHandleHits
; lets go
	lea		(Ani_MCirno).l,a1 ; this specific order makes it work fine. dunno why...
	move.b	#3,anim(a0)
	jsr	(AnimateSprite).l
	jmp		MetalCirno_LoadGraphics
	

; more code here if/when i make more
MetalCirno_LoadGraphics:
	moveq	#0,d0
	move.b	mapping_frame(a0),d0	; load frame number
; loc_1B84E:
MetalCirno_LoadGraphics_Part2:
	cmp.b	(MCirno_LastLoadedDPLC).w,d0
	beq.s	MCirPLC_Return
	move.b	d0,(MCirno_LastLoadedDPLC).w
	lea	(MapRUnc_MCirno).l,a2
	add.w	d0,d0
	adda.w	(a2,d0.w),a2
	move.w	(a2)+,d5
	subq.w	#1,d5
	bmi.s	MCirPLC_Return
	move.w	#tiles_to_bytes(ArtTile_ArtNem_ARZBoss),d4
; loc_1B86E:
MCirPLC_ReadEntry:
	moveq	#0,d1
	move.w	(a2)+,d1
	move.w	d1,d3
	lsr.w	#8,d3
	andi.w	#$F0,d3
	addi.w	#$10,d3
	andi.w	#$FFF,d1
	lsl.l	#5,d1
	addi.l	#ArtUnc_MCirno,d1
	move.w	d4,d2
	add.w	d3,d4
	add.w	d3,d4
	jsr	(QueueDMATransfer).l
	dbf	d5,MCirPLC_ReadEntry	; repeat for number of entries

MCirPLC_Return:
	rts
; ===========================================================================
MCir_DeleteObject:
	jmp		DeleteObject
; ===========================================================================
Ani_MCirno:	offsetTable
	offsetTableEntry.w	MCAni_Blank
	offsetTableEntry.w	MCAni_Idle
	offsetTableEntry.w	MCAni_Hurt
	offsetTableEntry.w	MCAni_Tired
MCAni_Blank:	dc.b	$77,0,$FD,1
	rev02even
MCAni_Idle:	dc.b	2,$A,$B,$C,$D,$FF
	rev02even
MCAni_Hurt:	dc.b	$77,1,$FF
	rev02even
MCAni_Tired:	dc.b	2,2,3,4,5,$FF
	even
; ===========================================================================
MapUnc_MCirno:	BINCLUDE	"mappings/sprite/Metal Cirno.bin"
MapRUnc_MCirno:	BINCLUDE	"mappings/spriteDPLC/Metal Cirno.bin"
ArtUnc_MCirno:	BINCLUDE	"art/uncompressed/Metal Cirno.bin"
; ===========================================================================
