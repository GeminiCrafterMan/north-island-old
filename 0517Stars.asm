Obj_HyperSonic_Stars:
	moveq	#0,d0
	move.b	routine(a0),d0
	move.w	H0517Stars_Index(pc,d0.w),d1
	jmp	H0517Stars_Index(pc,d1.w)
; ===========================================================================
; off_1D900:
H0517Stars_Index:	offsetTable
		offsetTableEntry.w H0517Stars_Init	; 0
		offsetTableEntry.w Obj_HyperSonic_Stars_Init
		offsetTableEntry.w Obj_HyperSonic_Stars_Main.child	; 2
		offsetTableEntry.w Obj_HyperSonic_Stars_Main	; 2
; ===========================================================================
H0517Stars_Init:
        jsr     LoadHyperStars
                move.w  #SndID_Checkpoint,d0
                jsr     PlaySound
;        addq.b  #2,routine(a0)
	move.l	#Map_HyperSonicStars,mappings(a0)
		move.b	#4,render_flags(a0)
		move.w	#1,priority(a0)
		move.b	#$18,width_pixels(a0)
	move.w	#make_art_tile(ArtTile_ShieldAndStars,0,0),art_tile(a0)
	jsr	Adjust2PArtPointer

		lea	(a0),a1
		moveq	#0,d0
		moveq	#0,d2
		moveq	#3,d1

	.createObject:
		addq.b	#2,routine(a1)
		move.b	d0,angle(a1)
		;move.b	d2,anim_frame_duration(a1) ;Added from 0517?
		addi.b	#$40,d0
		addq.b	#1,d2
		move.b	d2,anim_frame_duration(a1)
		lea	next_object(a1),a1
		dbf	d1,.createObject
                
	.return:
		rts

Obj_HyperSonic_Stars_Init:
		subq.b	#1,anim_frame_duration(a0)
		bne.s	H0517Stars_Init.return
		move.w	#ArtTile_ShieldAndStars,art_tile(a0)
		move.b	#6,mapping_frame(a0)
		cmpa.w	#InvincibilityStars,a0
		beq.s	.isParent
		addq.b	#2,routine(a0)
		bra.s	Obj_HyperSonic_Stars_Main.child
; ---------------------------------------------------------------------------

	.isParent:
		addq.b	#2,routine(a0)

Obj_HyperSonic_Stars_Main:
		tst.b	anim(a0)
		beq.s	Obj_HyperSonic_Stars_Main.child
		clr.b	anim(a0)
		move.w	(MainCharacter+x_pos).w,x_pos(a0)
		move.w	(MainCharacter+y_pos).w,y_pos(a0)
		moveq	#2,d2

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
        sub.b   (HyperSonicStars_Address1).w,d0
        jsr     (CalcSine).l
        muls.w  d0,d2
        muls.w  d1,d3
        swap    d2
        swap    d3
        add.w   (MainCharacter+x_pos).w,d2
        add.w   (MainCharacter+y_pos).w,d3
        move.w  d2,$10(a0)
        move.w  d3,$14(a0)
        move.w  #$80,8(a0)
        tst.b   angle(a0)
        bpl.s   loc_180A8
        move.w  #$100,8(a0)

loc_180A8:                              ; CODE XREF: ROM:000180A0?j
        addq.b  #8,angle(a0)
        addq.b  #4,flip_angle(a0)
        andi.w  #$7FFF,art_tile(a0)
        tst.b   (HyperSonicStars_Address2).w
        bpl.s   loc_180C2
        ori.w   #$8000,art_tile(a0)

loc_180C2:                              ; CODE XREF: ROM:000180BA?j
        jmp	(DisplaySprite).l
; ---------------------------------------------------------------------------

loc_180C8:                              ; CODE XREF: ROM:0001803E?j
        jmp	(DeleteObject).l
; ---------------------------------------------------------------------------