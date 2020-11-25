	btst	#status_sec_hasShield,status_secondary(a0)
	beq.s	+
	jmp		DeleteObject
+ 
    moveq   #0,d0
    move.b  routine(a0),d0
    move.w  Obj5B_Index(pc,d0.w),d1
    jmp     Obj5B_Index(pc,d1.w)
; ===========================================================================
; off_1D900:
Obj5B_Index:	offsetTable
		offsetTableEntry.w Obj5B_Init	; 0
		offsetTableEntry.w Obj_Insta_Shield_Main	; 2
; ===========================================================================
Obj5B_Init:
        addq.b  #2,routine(a0)
		move.l	#Map_InstaShield,mappings(a0)
		move.b	#4,render_flags(a0)
	move.b	#1,priority(a0)
	move.b	#$18,width_pixels(a0)
	move.w	#make_art_tile(ArtTile_ShieldAndStars,0,0),art_tile(a0)
	jsr	Adjust2PArtPointer

Obj_Insta_Shield_Main:
		movea.w	parent(a0),a2
		btst	#status_sec_isInvincible,status_secondary(a2) ; Is the player invincible?
		bne.s	locret_195A4			; If so, return
		move.w	x_pos(a2),x_pos(a0)		; Inherit player's x_pos
		move.w	y_pos(a2),y_pos(a0)		; Inherit player's y_pos
		move.b	status(a2),status(a0)		; Inherit status
		andi.b	#1,status(a0)			; Limit inheritance to 'orientation' bit
		andi.w	#drawing_mask,art_tile(a0)
		tst.w	art_tile(a2)
		bpl.s	.nothighpriority
		ori.w	#high_priority,art_tile(a0)

	.nothighpriority:
		lea	(Ani_InstaShield).l,a1
		jsr	(AnimateSprite).l
		cmpi.b	#7,mapping_frame(a0)		; Has it reached then end of its animation?
		bne.s	.notover			; If not, branch
		tst.b	(Insta_Attacking).w		; Is it in its attacking state?
		beq.s	.notover			; If not, branch
		move.b	#2,(Insta_Attacking).w		; Mark attack as over

	.notover:
		tst.b	mapping_frame(a0)		; Is this the first frame?
		beq.s	.loadnewDPLC			; If so, branch and load the DPLC for this and the next few frames
		cmpi.b	#3,mapping_frame(a0)		; Is this the third frame?
		bne.s	.skipDPLC			; If not, branch as we don't need to load another DPLC yet

	.loadnewDPLC:
		bsr.w	InstaSh_LoadGraphics

	.skipDPLC:
		jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

locret_195A4:
		rts

InstaSh_LoadGraphics:
	moveq	#0,d0
	move.b	mapping_frame(a0),d0	; load frame number
; loc_1B84E:
InstaSh_LoadGraphics_Part2:
	cmp.b	(InstaShield_LastLoadedDPLC).w,d0
	beq.s	InShPLC_Return
	move.b	d0,(InstaShield_LastLoadedDPLC).w
	lea	(MapRUnc_InstaShield).l,a2
	add.w	d0,d0
	adda.w	(a2,d0.w),a2
	move.w	(a2)+,d5
	subq.w	#1,d5
	bmi.s	InShPLC_Return
	move.w	#tiles_to_bytes(ArtTile_ShieldAndStars),d4
; loc_1B86E:
InShPLC_ReadEntry:
	moveq	#0,d1
	move.w	(a2)+,d1
	move.w	d1,d3
	lsr.w	#8,d3
	andi.w	#$F0,d3
	addi.w	#$10,d3
	andi.w	#$FFF,d1
	lsl.l	#5,d1
	addi.l	#ArtUnc_InstaShield,d1
	move.w	d4,d2
	add.w	d3,d4
	add.w	d3,d4
	jsr	(QueueDMATransfer).l
	dbf	d5,InShPLC_ReadEntry	; repeat for number of entries

InShPLC_Return:
	rts

ArtUnc_InstaShield: BINCLUDE    "art/uncompressed/Insta-Shield.bin"
    even
Map_InstaShield:    BINCLUDE    "mappings/sprite/Insta-Shield.bin"
    even
MapRUnc_InstaShield:    BINCLUDE    "mappings/spriteDPLC/Insta-Shield.bin"
    even

Ani_InstaShield:    offsetTable
		offsetTableEntry.w byte_199EE
		offsetTableEntry.w byte_199F1
byte_199EE:	dc.b  $1F,   6,	$FF	
    rev02even
byte_199F1:	dc.b	0,   0,	  1,   2,   3,	 4,   5,   6,	6,   6,	  6,   6,   6,	 6,   7, $FD,	0
	even