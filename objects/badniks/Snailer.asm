	moveq	#0,d0
	move.b  routine(a0), d0
	move.w  Snailer_Index(pc,d0),d1
	jmp	 Snailer_Index(PC,d1)
; ===========================================================================
Snailer_Index: offsetTable
		offsetTableEntry.w	Snailer_Main ; 0
		offsetTableEntry.w	Snailer_Move ; 2
		offsetTableEntry.w	Snailer_Turn ; 4
		offsetTableEntry.w	Snailer_DelHead ; 6
		offsetTableEntry.w	Snailer_Flame ; 8
; ===========================================================================
Snailer_Main:
	move.l  #Snailer_Mappings,mappings(a0) ; loc_1F938
	move.w	#make_art_tile(ArtTile_ArtNem_Snailer,0,0),art_tile(a0) ; the shell
	ori.b   #$4, render_flags(a0)
	move.b  #$A, collision_flags(a0)
	move.b  #$4, priority(a0)
	move.b  #$10, width_pixels(a0)
	move.b  #$10, y_radius(a0)
	move.b  #$E, x_radius(a0)
	bsr	 J_SingleObjLoad2_0C  ; loc_1F972
	bne.s   loc_1F788
	_move.b	#ObjID_Snailer,id(a1) ; load head object!
	move.b  #$6, routine(a1)
	move.l  #Snailer_Mappings, mappings(a1) ; loc_1F938
	move.w	#make_art_tile(ArtTile_ArtNem_Snailer,1,0),art_tile(a1) ; the head
	move.b  #$3, priority(a1)
	move.b  #$10, width_pixels(a1)
	move.b  status(a0), status(a1)
	move.b  render_flags(a0), render_flags(a1)
	move.l  a0, objoff_2A(a1)
	move.w  x_pos(a0), x_pos(a1)
	move.w  y_pos(a0), y_pos(a1)
	move.b  #$2, mapping_frame(a1)
loc_1F788:
	addq.b  #$2, routine(a0)
	move.w  #$FF80,d0
	btst	#$00, status(a0)
	beq.s   loc_1F79A
	neg.w   d0
loc_1F79A:
	move.w  d0, x_vel(a0)
	rts
Snailer_Move:
	bsr	 loc_1F7E8
	bsr	 J_SpeedToPos_12		 ; loc_1F996
	jsr	 ObjCheckFloorDist			; loc_13898
	cmpi.w  #$FFF8,d1
	blt.s   loc_1F7CC
	cmpi.w  #$C,d1
	bge.s   loc_1F7CC
	add.w   d1, y_pos(a0)
	lea	 (SnailerAniData).l,a1
	jsr	AnimateSprite	  ; loc_1F978
	bra	 loc_D340
loc_1F7CC:
	addq.b  #$2, routine(a0)
	move.w  #$14, objoff_30(a0)
	st	  objoff_34(a0)
	lea	 (SnailerAniData).l,a1
	jsr	AnimateSprite	  ; loc_1F978
	bra	 loc_D340
loc_1F7E8:
	tst.b   objoff_35(a0)
	bne.s   +++
	move.w  ($FFFFB008).w,d0
	sub.w   x_pos(a0), d0
	cmpi.w  #$64,d0
	bgt.s   +++
	cmpi.w  #$FF9C,d0
	blt.s   +++
	tst.w   d0
	bmi.s   +
	btst	#$00, status(a0)
	beq.s   +++
	bra.s   ++
+
	btst	#$00, status(a0)
	bne.s   ++
+
	move.w  x_vel(a0), d0
	asl.w   #$2,d0
	move.w  d0, x_vel(a0)
	st	  objoff_35(a0)
	bsr	 loc_1F82C
+
	rts
loc_1F82C:
	; load exhaust flame object
	jsrto	(SingleObjLoad2).l, JmpTo20_SingleObjLoad2
	bne.s	+	; rts

	_move.b	#ObjID_Snailer,id(a1) ; load exhaust flame object
	move.b  #$8,routine(a1)
	move.l	#Obj4B_MapUnc_2D2EA,mappings(a1) ; this whole bit was yanked out of Obj4B -- Buzzer. I guess it works...? i did edit it a little
	move.w	#make_art_tile(ArtTile_ArtNem_Buzzer,0,0),art_tile(a1)
	move.b	#4,priority(a1)
	move.b	#$10,width_pixels(a1)
	move.b	status(a0),status(a1)
	move.b	render_flags(a0),render_flags(a1)
	move.b	#1,anim(a1)
	move.l	a0,Obj4B_parent(a1)
	move.w	x_pos(a0),x_pos(a1)
	move.w	y_pos(a0),y_pos(a1)
	move.w	#$100,Obj4B_move_timer(a0)
	move.w	#-$100,x_vel(a0) ; increase speed: normally $100-- probably added by me.
	btst	#0,render_flags(a0)
	beq.s	+	; rts
	neg.w	x_vel(a0)
+
	move.w	#SndID_S3K84,d0	; vroooooom
	jmp	(PlaySound).l
	rts

Snailer_Flame:
	move.l  objoff_2A(a0), a1
	cmpi.b  #ObjID_Snailer,(a1)
	bne	 J_DeleteObject_26	   ; loc_1F96C
	tst.b   objoff_34(a1)	; we still goin fast?
	bne	 J_DeleteObject_26	   ; loc_1F96C ; if not, delete that flame
	move.w  x_pos(a1), x_pos(a0)
	move.w  y_pos(a1), y_pos(a0)
	addq.w  #$7, y_pos(a0)
	moveq   #$D,d0
	btst	#$00, status(a0)
	beq.s   +
	neg.w   d0

+
	add.w   d0, x_pos(a0)
	lea	 (Ani_obj4B).l,a1	; buzzer animations
	jsr	 AnimateSprite
	bra	 loc_D340

Snailer_Turn: ; possibly...?
	subi.w  #$1, objoff_30(a0)
	bpl	 loc_D340
	neg.w   x_vel(a0)
	bsr	 J_ObjectFall_06		 ; loc_1F990
	move.w  x_vel(a0), d0
	asr.w   #$2,d0
	move.w  d0, x_vel(a0)
	bchg	#0, status(a0)
	bchg	#0, render_flags(a0)
	subq.b  #$2, routine(a0)
	sf	  objoff_34(a0)
	sf	  objoff_35(a0)
	bra	 loc_D340

Snailer_DelHead:
	move.l  objoff_2A(a0), a1
	cmpi.b  #ObjID_Snailer,(a1)
	bne	 J_DeleteObject_26	   ; loc_1F96C
	move.w  x_pos(a1), x_pos(a0)
	move.w  y_pos(a1), y_pos(a0)
	move.b  status(a1), status(a0)
	move.b  render_flags(a1), render_flags(a0)
		
loc_D340:		
	tst.w   ($FFFFFFD8).w
	bne.s   loc_D374
	move.w  x_pos(a0), d0
	andi.w  #$FF80,d0
	sub.w   (Camera_X_pos_coarse).w,d0
	cmpi.w  #$280,d0
	bhi	 loc_D35E
	jmp	 DisplaySprite		   ; loc_D3C2
loc_D35E:
	lea	 ($FFFFFC00).w,a2
	moveq	#0,d0
	move.b  respawn_index(a0), d0
	beq.s   loc_D370
	bclr	#$7, art_tile(a2,d0)
loc_D370:
	jmp	 MarkObjGone			; loc_D3B4
loc_D374:
	move.w  x_pos(a0), d0
	andi.w  #$FF00,d0
	move.w  d0,d1
	sub.w   (Camera_X_pos_coarse).w,d0
	cmpi.w  #$300,d0
	bhi	 loc_D38E
	jmp	 DisplaySprite		   ; loc_D3C2
loc_D38E:
	sub.w   ($FFFFF7DC).w,d1
	cmpi.w  #$300,d1
	bhi	 loc_D39E
	jmp	 DisplaySprite		   ; loc_D3C2
loc_D39E:
	lea	 ($FFFFFC00).w,a2
	moveq	#0,d0
	move.b  respawn_index(a0), d0
	beq.s   loc_D3B0
	bclr	#$7, art_tile(a2,d0)
loc_D3B0:
	jmp	 MarkObjGone		   ; loc_D3B4

; ----------------------------------------------------------------------------
; sprite mappings
; ----------------------------------------------------------------------------
Snailer_Mappings:	BINCLUDE	"mappings/sprite/objD0.bin"
	even

SnailerAniData:	offsetTable
	offsetTableEntry.w	SnailAni_Slow
	offsetTableEntry.w	SnailAni_Fast
SnailAni_Slow:	dc.b	$5, $00, $1, $FF
	rev02even
SnailAni_Fast:	dc.b	$1, $00, $1, $FF
	even
;=============================================================================== 
; Object 0xD0 - Snailer
; [ End ]				 
;=============================================================================== 
J_DeleteObject_26: ; loc_1F96C:
		jmp	 DeleteObject			; loc_D3B4
J_SingleObjLoad2_0C: ; loc_1F972:
		jmp	 SingleObjLoad2	  ; loc_E788
J_ObjectFall_06: ; loc_1F990:
		jmp	ObjectMoveAndFall			   ; loc_D24E
J_SpeedToPos_12: ; loc_1F996:
		jmp	 ObjectMove ; loc_D27A
; ===========================================================================