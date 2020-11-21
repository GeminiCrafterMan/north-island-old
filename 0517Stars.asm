Obj_HyperSonic_Stars:
;		move.l	#ArtUnc_HyperSonicStars,d1
;		move.w	#tiles_to_bytes(ArtTile_ShieldAndStars),d2
;		move.w	#$100,d3
;		jsr		(QueueDMATransfer).l

	.createObject:
;		move.l	#Obj_HyperSonic_Stars_Init,(a1)
		move.l	#.artDoneLoading,(a1)
		move.b	d0,angle(a1)
		;move.b	d2,anim_frame_duration(a1) ;Added from 0517?
		addi.b	#$40,d0
		addq.b	#1,d2
		move.b	d2,anim_frame_duration(a1)
		lea	next_object(a1),a1
		dbf	d1,.createObject

;Obj_HyperSonic_Stars_Init:
		; Wait for art to finish loading before we display
;		tst.b	(Kos_modules_left).w
;		beq.s	.artDoneLoading

	.return:
		rts
; ---------------------------------------------------------------------------

	.artDoneLoading:
		subq.b	#1,anim_frame_duration(a0)
		bne.s	.return
		move.l	#Map_HyperSonicStars,mappings(a0)
		move.b	#4,render_flags(a0)
		move.w	#$80,priority(a0)
		move.b	#$18,width_pixels(a0)
		move.b	#$18,height_pixels(a0)
		move.w	#ArtTile_ShieldAndStars,art_tile(a0)
		move.b	#6,mapping_frame(a0)
		cmpa.w	#Sonic_InvincibilityStars,a0
		beq.s	.isParent
		move.l	#Obj_HyperSonic_Stars_Main.child,(a0)
		bra.s	Obj_HyperSonic_Stars_Main.child
; ---------------------------------------------------------------------------

	.isParent:
		move.l	#Obj_HyperSonic_Stars_Main,(a0)

Obj_HyperSonic_Stars_Main:
		tst.b	anim(a0)
		beq.s	Obj_HyperSonic_Stars_Main.child
		clr.b	anim(a0)
		move.w	(MainCharacter+x_pos).w,x_pos(a0)
		move.w	(MainCharacter+y_pos).w,y_pos(a0)
		moveq	#2,d2
;		bsr.w	Obj_Lightning_Shield_Create_Spark_Part2
;		move.b	#4,(Hyper_Sonic_flash_timer).w

.child:                                      ; ROM:0001801C?j
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
        move.b  flip_angle(a0),d0
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
        move.w  #$80,priority(a0)
        tst.b   angle(a0)
        bpl.s   loc_180A8
        move.w  #$100,priority(a0)

loc_180A8:                              ; CODE XREF: ROM:000180A0?j
        addq.b  #8,angle(a0)
        addq.b  #4,flip_angle(a0)
        andi.w  #$7FFF,art_tile(a0)
        tst.b   (MainCharacter+art_tile).w
        bpl.s   loc_180C2
        ori.w   #$8000,art_tile(a0)

loc_180C2:                              ; CODE XREF: ROM:000180BA?j
        jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

loc_180C8:                              ; CODE XREF: ROM:0001803E?j
        jmp	(DeleteObject).l
; ---------------------------------------------------------------------------