        moveq	#0,d0
        move.b  $A(a0), d0
        move.w  WaiStars_Index(pc,d0),d1
        jmp     WaiStars_Index(PC,d1)
; ===========================================================================
WaiStars_Index:	offsetTable
        offsetTableEntry.w    loc_12660
        offsetTableEntry.w    loc_1268E
; ===========================================================================
loc_12660:
        addq.b  #$2,objoff_A(a0)
		jsr		Unc_Stars_Load
        move.l  #Obj35_MapUnc_1DCBC,mappings(a0)
        move.w  #make_art_tile(ArtTile_ShieldAndStars,0,0),art_tile(a0)
        bsr     Adjust2PArtPointer2     ; loc_DC30
        move.b  #$4,render_flags(a0)
        bset    #$6,render_flags(a0)
        move.b  #$10,$E(a0)
        move.b  #$8,$F(a0)
loc_1268E:
	tst.b	(Super_Sonic_flag).w
        beq     DeleteObject            ; loc_D3B4
	lea	(MainCharacter).w,a1 ; a1=character
		move.b	angle(a1),angle(a0)
		move.b	status(a1),status(a0)
        move.w  x_pos(a1),x_pos(a0)
        move.w  y_pos(a1),y_pos(a0)
        move.b  status(a1),d6
        lea     (loc_127B0).l,a2
		move.b  angle(a1),d1
        btst    #$1,d6
        beq.s   loc_126C0
        move.b  status_secondary(a1),d1
        moveq	#0,d6
loc_126C0:
        andi.b  #$1,d6
        beq.s   loc_126C8
        neg.w   d1
loc_126C8:
        addi.b  #$10,d1
        lsr.b   #$3,d1
        andi.w  #$1C,d1
        lea     $00(a2,d1),a2
        subq.w  #$8,d1
        andi.w  #$10,d1
        bne.s   loc_126E2
        eori.b  #$1,d6
loc_126E2:
        move.b  ($FFFFFE05).w,d0
        andi.b  #$1,d0
        lea     (loc_127D0).l,a3
        beq.s   loc_126FA
        lea     (loc_12938).l,a3
        addq.w  #$2,a2
loc_126FA:
        move.w  x_pos(a1),d4
        move.b  (a2)+,d1
        ext.w   d1
        andi.b  #$1,d6
        beq.s   loc_1270A
        neg.w   d1
loc_1270A:
        add.w   d1,d4
        move.w  y_pos(a1),d5
        move.b  (a2)+,d1
        ext.w   d1
        add.w   d1,d5
        moveq	#0,d0
        move.b  $1A(a0), d0
        addq.b  #$6,d0
        cmpi.b  #$78,d0
        bcs.s   loc_12726
        moveq	#0,d0
loc_12726:
        move.b  d0, $1A(a0)
        move.w  d0,d1
        add.w   d0,d0
        add.w   d1,d0
        lea     $00(a3,d0),a3
        lea     $10(a0),a2
        moveq	#0,d0
        moveq   #$5,d1
loc_1273C:        
        move.b  (a3)+, d0
        move.b  (a3)+,d2
        ext.w   d2
        andi.b  #$1,d6
        beq.s   loc_1274A
        neg.w   d2
loc_1274A:
        add.w   d4,d2
        move.b  (a3)+,d3
        ext.w   d3
        add.w   d5,d3
        move.w  d2,(a2)+
        move.w  d3,(a2)+
        addq.w  #$1,a2
        move.b  d0,(a2)+
        dbra    d1, loc_1273C
        move.w  x_pos(a1),d4
        move.w  y_pos(a1),d5
        moveq	#0,d0
        move.b  $4(a0), d0
        addq.b  #$6,d0
        cmpi.b  #$a2,d0
        bcs.s   loc_12776
        moveq	#0,d0
loc_12776:
        move.b  d0,mappings(a0)
        lea     (loc_12AA0).l,a3
        lea     $00(a3,d0),a3
        moveq   #$1,d1
loc_12786:        
        move.b  (a3)+, d0
        move.b  (a3)+,d2
        ext.w   d2
        andi.b  #$1,d6
        beq.s   loc_12794
        neg.w   d2
loc_12794:
        add.w   d4,d2
        move.b  (a3)+,d3
        ext.w   d3
        add.w   d5,d3
        move.w  d2,(a2)+
        move.w  d3,(a2)+
        addq.w  #$1,a2
        move.b  d0,(a2)+
        dbra    d1, loc_12786
        move.w  #$80,d0
        bra     DisplaySprite3     ; loc_D3FE  
loc_127B0:
        dc.w    $0, $0, $F8, $F0, $4F0, $4E0, $F8, $F0
        dc.w    $0, $0, $8, $10, $410, $420, $8, $10  
loc_127D0:
        dc.b    $2, $F8, $F9, $5, $E5, $F9, $4, $E6, $8, $2, $E8, $FD, $00, $00, $00, $00
        dc.b    $00, $00, $3, $F7, $F9, $2, $F8, $7, $6, $E4, $F9, $5, $E5, $8, $3, $E7
        dc.b    $FD, $00, $00, $00, $4, $F6, $F9, $3, $F7, $7, $5, $E3, $FA, $6, $E4, $9
        dc.b    $4, $E6, $FC, $00, $00, $00, $5, $F5, $F9, $4, $F6, $8, $4, $E2, $FB, $5
        dc.b    $E3, $9, $5, $E5, $FC, $00, $00, $00, $6, $F4, $F9, $5, $F5, $8, $2, $F8
        dc.b    $FD, $3, $E1, $FC, $4, $E2, $A, $6, $E4, $FB, $5, $F3, $FA, $6, $F4, $9
        dc.b    $3, $F7, $FD, $2, $E0, $FD, $3, $E1, $A, $5, $E3, $FB, $4, $F2, $FB, $5
        dc.b    $F3, $9, $4, $F6, $FC, $1, $DF, $00, $2, $E0, $B, $4, $E2, $FA, $3, $F1
        dc.b    $FC, $4, $F2, $A, $5, $F5, $FC, $2, $F8, $2, $1, $DF, $B, $3, $E1, $FA
        dc.b    $2, $F0, $FD, $3, $F1, $A, $6, $F4, $FB, $3, $F7, $2, $2, $E0, $FA, $00
        dc.b    $00, $00, $1, $EF, $00, $2, $F0, $B, $5, $F3, $FB, $4, $F6, $3, $1, $DF
        dc.b    $FA, $00, $00, $00, $1, $EE, $00, $1, $EF, $B, $4, $F2, $FA, $5, $F5, $3
        dc.b    $2, $F8, $E, $00, $00, $00, $1, $ED, $1, $1, $EE, $C, $3, $F1, $FA, $6
        dc.b    $F4, $3, $3, $F7, $E, $00, $00, $00, $1, $ED, $3, $1, $ED, $D, $2, $F0
        dc.b    $FA, $5, $F3, $2, $4, $F6, $D, $00, $00, $00, $1, $EC, $5, $1, $EC, $D
        dc.b    $1, $EF, $FA, $4, $F2, $2, $5, $F5, $D, $2, $F8, $F5, $1, $EB, $7, $1
        dc.b    $EB, $D, $1, $EE, $F9, $3, $F1, $2, $6, $F4, $C, $3, $F7, $F5, $1, $EA
        dc.b    $8, $1, $EA, $D, $1, $ED, $F8, $2, $F0, $1, $5, $F3, $C, $4, $F6, $F5
        dc.b    $1, $E9, $9, $1, $E9, $D, $1, $EC, $F8, $1, $EF, $1, $4, $F2, $B, $5
        dc.b    $F5, $F5, $1, $EB, $F7, $1, $EE, $00, $3, $F1, $A, $5, $F4, $F6, $2, $E8
        dc.b    $F9, $00, $00, $00, $1, $EA, $F7, $1, $ED, $00, $2, $F0, $A, $4, $F3, $F6
        dc.b    $3, $E7, $F9, $2, $E8, $7, $1, $E9, $F6, $1, $EC, $00, $1, $EF, $9, $3
        dc.b    $F2, $F6, $4, $E6, $F9, $3, $E7, $7    
loc_12938:
        dc.b    $1, $E6, $00, $1, $E7, $B, $4, $EA, $FA, $5, $ED, $3, $2, $F0, $E, $00
        dc.b    $00, $00, $1, $E5, $1, $1, $E6, $C, $3, $E9, $FA, $6, $EC, $3, $3, $F1
        dc.b    $E, $00, $00, $00, $1, $E5, $3, $1, $E5, $3, $2, $E8, $FA, $5, $EB, $2
        dc.b    $4, $EE, $D, $00, $00, $00, $1, $E4, $5, $1, $E4, $D, $1, $E7, $FA, $4
        dc.b    $EA, $2, $5, $ED, $D, $2, $F0, $F5, $1, $E3, $7, $1, $E3, $D, $1, $E6
        dc.b    $F9, $3, $E9, $2, $6, $EC, $C, $3, $EF, $F5, $1, $E2, $8, $1, $E2, $D
        dc.b    $1, $E5, $F8, $2, $E8, $1, $5, $EB, $C, $4, $EE, $F5, $1, $E1, $9, $1
        dc.b    $E1, $D, $1, $E4, $F8, $1, $E7, $1, $4, $EA, $B, $5, $ED, $F5, $1, $E3
        dc.b    $F7, $1, $E6, $00, $3, $E9, $A, $5, $EC, $F6, $2, $E8, $2, $00, $00, $00
        dc.b    $1, $E2, $F7, $1, $E5, $00, $2, $E8, $A, $4, $EB, $F6, $3, $E7, $2, $2
        dc.b    $E8, $E, $1, $E1, $F6, $1, $E4, $00, $1, $E7, $9, $3, $EA, $F6, $4, $E6
        dc.b    $3, $3, $E7, $E, $2, $F0, $F9, $5, $E5, $3, $4, $E6, $D, $2, $E8, $F5
        dc.b    $00, $00, $00, $00, $00, $00, $3, $EF, $F9, $2, $F0, $7, $6, $E4, $3, $5
        dc.b    $E5, $D, $3, $E7, $F5, $00, $00, $00, $4, $EE, $F9, $3, $EF, $7, $5, $E3
        dc.b    $2, $6, $E4, $C, $4, $E6, $F5, $00, $00, $00, $5, $ED, $F9, $4, $EE, $8
        dc.b    $4, $E2, $2, $5, $E3, $C, $5, $E5, $F5, $00, $00, $00, $6, $EC, $F9, $5
        dc.b    $ED, $8, $2, $F0, $FD, $3, $E1, $2, $4, $E2, $B, $6, $E4, $F6, $5, $EB
        dc.b    $FA, $6, $EC, $9, $3, $EF, $FD, $2, $E0, $1, $3, $E1, $A, $5, $E3, $F6
        dc.b    $4, $EA, $FB, $5, $EB, $9, $4, $EE, $FD, $1, $DF, $1, $2, $E0, $A, $4
        dc.b    $E2, $F6, $3, $E9, $FC, $4, $EA, $A, $5, $ED, $FC, $2, $F0, $2, $1, $DF
        dc.b    $9, $3, $E1, $F7, $2, $E8, $FD, $3, $E9, $A, $6, $EC, $FB, $3, $EF, $2
        dc.b    $2, $E0, $F7, $00, $00, $00, $1, $E7, $00, $2, $E8, $B, $5, $EB, $FB, $4
        dc.b    $EE, $3, $1, $DF, $F8, $00, $00, $00      
loc_12AA0:
        dc.b    $4, $8, $9, $4, $FC, $1, $5, $8, $9, $5, $FC, $1, $6, $8, $9, $6
        dc.b    $FC, $1, $7, $8, $9, $7, $FC, $1, $8, $8, $9, $8, $FC, $1, $7, $8
        dc.b    $9, $7, $FC, $1, $6, $8, $9, $6, $FC, $1, $5, $8, $9, $5, $FC, $1
        dc.b    $4, $8, $9, $4, $FC, $1, $4, $F9, $F7, $4, $B, $FC, $5, $F9, $F7, $5
        dc.b    $B, $FC, $6, $F9, $F7, $6, $B, $FC, $7, $F9, $F7, $7, $B, $FC, $8, $F9
        dc.b    $F7, $8, $B, $FC, $7, $F9, $F7, $7, $B, $FC, $6, $F9, $F7, $6, $B, $FC
        dc.b    $5, $F9, $F7, $5, $B, $FC, $4, $F9, $F7, $4, $B, $FC, $4, $3, $F1, $4
        dc.b    $F4, $9, $5, $3, $F1, $5, $F4, $9, $6, $3, $F1, $6, $F4, $9, $7, $3
        dc.b    $F1, $7, $F4, $9, $8, $3, $F1, $8, $F4, $9, $7, $3, $F1, $7, $F4, $9
        dc.b    $6, $3, $F1, $6, $F4, $9, $5, $3, $F1, $5, $F4, $9, $4, $3, $F1, $4
        dc.b    $F4, $9                                 
;=============================================================================== 
; Object 0x10 - 
; [ End ]
;===============================================================================
