; ===========================================================================
; ----------------------------------------------------------------------------
; Object E6 - Obj_HyperSonic_Stars 0517
; ----------------------------------------------------------------------------
	moveq	#0,d0
	move.b	routine(a0),d0
	move.w	ObjE6_Index(pc,d0.w),d1
	jmp	ObjE6_Index(pc,d1.w)
; ===========================================================================
; off_1E0FE: ObjE6_States:
ObjE6_Index:	offsetTable
	offsetTableEntry.w ObjE6_Init	; 0
	offsetTableEntry.w ObjE6_InitMain	; 2
	offsetTableEntry.w ObjE6_Main	; 4
	offsetTableEntry.w ObjE6_Main.child	; 6
; ===========================================================================
; loc_1E102:
ObjE6_Init:
	move.l	#ArtUnc_HyperSonicStars,d1
	move.w	#tiles_to_bytes(ArtTile_ShieldAndStars),d2
	move.w	#$230,d3	; updated from #$100, because this finally transfers the whole file
	jsr		(QueueDMATransfer).l
	lea	(a0),a1
	moveq	#0,d0
	moveq	#0,d2
	moveq	#4-1,d1
	.createObject:
	_move.b	id(a0),id(a1) ; load ObjE6
	move.b	#2,routine(a1)
	move.b	d0,angle(a1)
	addi.b	#$40,d0
	addq.b	#1,d2
	move.b	d2,anim_frame_duration(a1)
	lea	next_object(a1),a1
	dbf	d1,.createObject
; ---------------------------------------------------------------------------
ObjE6_InitMain:
	subq.b	#1,anim_frame_duration(a0)
	bne.s	.return
	move.l	#Map_HyperSonicStars,mappings(a0)
	move.b	#4,render_flags(a0)
	move.b	#1,priority(a0)
	move.b	#$18,width_pixels(a0)
	move.w	#make_art_tile(ArtTile_ShieldAndStars,0,0),art_tile(a0)
;	jsr	(Adjust2PArtPointer).l
	move.b	#6,mapping_frame(a0)
	cmpa.w	#InvincibilityStars,a0
	beq.s	.isParent
	move.b	#6,routine(a0)
	bra.s	ObjE6_Main.child
	.return:
	rts
; ---------------------------------------------------------------------------

	.isParent:
	addq.b	#2,routine(a0)

ObjE6_Main:
	tst.b	anim(a0)
	beq.s	ObjE6_Main.child
	clr.b	anim(a0)
	move.w	(MainCharacter+x_pos).w,x_pos(a0)
	move.w	(MainCharacter+y_pos).w,y_pos(a0)
	moveq	#2,d2
;	bsr.w	Obj_Lightning_Shield_Create_Spark_Part2
;	move.b	#4,(Hyper_Sonic_flash_timer).w

	.child:                                     ; ROM:0001801C?j
	tst.b   (Super_Sonic_flag).w
	beq.w   loc_180C8
	addq.b  #1,mapping_frame(a0)
	cmpi.b  #6,mapping_frame(a0)
	bcs.s   loc_18054
	move.b  #0,mapping_frame(a0)

loc_18054:                              ; CODE XREF: ROM:0001804C?j
	move.b  angle(a0),d0
	jsr     (CalcSine).l
	asl.w   #5,d1
	move.w  d1,d3
	move.w  d1,d2
	move.b  objoff_30(a0),d0
	jsr     (CalcSine).l
	asr.w   #4,d0
	addi.w  #$40,d0 ; '@'
	sub.b   (MainCharacter+angle).w,d0
	jsr     (CalcSine).l
	muls.w  d0,d2
	muls.w  d1,d3
	swap    d2
	swap    d3
	add.w   (MainCharacter+x_pos).w,d2
	add.w   (MainCharacter+y_pos).w,d3
	move.w  d2,x_pos(a0)
	move.w  d3,y_pos(a0)
	move.b  #1,priority(a0)
	tst.b   angle(a0)
	bpl.s   loc_180A8
	move.b  #2,priority(a0)

loc_180A8:                              ; CODE XREF: ROM:000180A0?j
	addq.b  #8,angle(a0)
	addq.b  #4,objoff_30(a0)
	andi.w	#drawing_mask,art_tile(a0)
	tst.b	(MainCharacter+art_tile).w
	bpl.s	loc_180C2
	ori.w	#high_priority,art_tile(a0)

loc_180C2:                              ; CODE XREF: ROM:000180BA?j
	jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

loc_180C8:                              ; CODE XREF: ROM:0001803E?j
	jmp	(DeleteObject).l
; ---------------------------------------------------------------------------
ArtUnc_HyperSonicStars:	binclude	"art/uncompressed/Hyper Sonic Stars.bin"
		even