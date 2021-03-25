Obj_SSEntryRing:
		move.b	subtype(a0),d0
		move.l	(Collected_special_ring_array).w,d1
		btst	d0,d1
		beq.s	loc_6167C				; only make the ring if it hasn't already been collected
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

loc_6167C:
		jsr	(Obj_WaitOffscreen).l			; Don't start anything until the ring is explicitly onscreen
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	SSEntryRing_Index(pc,d0.w),d1
		jsr	SSEntryRing_Index(pc,d1.w)
		bra.w	SSEntryRing_Display
; ---------------------------------------------------------------------------
SSEntryRing_Index:	dc.w SSEntryRing_Init-SSEntryRing_Index
		dc.w SSEntryRing_Main-SSEntryRing_Index
		dc.w SSEntryRing_Animate-SSEntryRing_Index
; ---------------------------------------------------------------------------

SSEntryRing_Init:
		lea	ObjSlot_SSEntryRing(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l		; Only one special stage ring can be loaded at one time, period
		move.l	#AniRaw_SSEntryRing,$30(a0)
		tst.b	subtype(a0)
		bmi.s	loc_616C6			; If negative, then ALWAYS make this a super emerald ring
		tst.w	(SK_alone_flag).w		; Probably only used in MHZ for the first rings
		bne.s	SSEntryRing_Main			; If only Sonic and Knuckles, skip ahead
		bsr.w	SSEntry_CheckLevel
		beq.s	SSEntryRing_Main			; If in an S3 level, skip ahead since it's a normal ring
		cmpi.b	#7,(Emerald_count).w
		bne.s	SSEntryRing_Main			; Only make this a super emerald ring if you actually have 7 chaos emeralds

loc_616C6:
		bset	#6,$38(a0)				; Make this a super emerald ring
		lea	(PalSPtr_SSEntry).l,a1
		lea	(Palette_rotation_data).w,a2
		move.l	(a1)+,(a2)+
		move.l	(a1)+,(a2)+
		lea	(PalSPtr_SSEntry2).l,a1
		move.l	(a1)+,(a2)+
		move.l	(a1)+,(a2)+
		clr.w	(a2)					; Set up the Palette script pointers

SSEntryRing_Main:
		jsr	(Animate_Raw).l
		tst.w	(Debug_placement_mode).w
		bne.s	locret_61708		; If in debug mode, don't allow collision
		cmpi.b	#8,$22(a0)
		blo.s	locret_61708		; If ring hasn't finished forming, don't allow collision
		lea	SSEntry_Range(pc),a1
		jsr	(Check_PlayerInRange).l
		tst.w	d0
		bne.s	loc_6170A

locret_61708:
		rts
; ---------------------------------------------------------------------------

loc_6170A:
		lea	(Player_1).w,a1			; If collision was made
		cmpi.b	#6,5(a1)
		bhs.s	locret_61708		; If player has died for whatever reason, don't do anything
		moveq	#sfx_BigRing,d0
		jsr	(Play_Sound_2).l		; Play the ring swish sound
		cmpi.b	#7,(Emerald_count).w
		bne.s	loc_6173A			; If chaos emeralds aren't collected, branch
		tst.w	(SK_alone_flag).w
		bne.s	loc_61794			; If only Sonic and Knuckles and the emeralds are collected, go claim 50 rings
		bsr.w	SSEntry_CheckLevel
		beq.s	loc_61794			; Otherwise, only do so if on an S3 level
		cmpi.b	#7,(Super_emerald_count).w
		beq.s	loc_61794			; Only collect rings in an SK level if the super emeralds are collected as well

loc_6173A:
		move.b	#4,routine(a0)
		move.b	#-1,(Player_prev_frame).w	; Make the player disappear and lock input
		lea	(Player_1).w,a1
		move.b	#0,$22(a1)
		move.b	#$1C,$20(a1)
		move.b	#$53,$2E(a1)
		tst.b	(Flying_carrying_Sonic_flag).w
		beq.s	loc_61778
		lea	(Player_2).w,a1
		move.b	#0,$22(a1)
		move.b	#$1C,$20(a1)
		move.b	#$53,$2E(a1)		; Lock both players, etc

loc_61778:
		jsr	(Create_New_Sprite).l
		bne.s	locret_6178A
		move.l	#Obj_SSEntryFlash,(a1)
		move.w	a0,$46(a1)			; Set ring as parent

locret_6178A:
		rts
; ---------------------------------------------------------------------------
SSEntry_Range:	dc.w $FFE8
		dc.w $30
		dc.w $FFD8
		dc.w $50
; ---------------------------------------------------------------------------

loc_61794:
		moveq	#sfx_BigRing,d0
		jsr	(Play_Sound_2).l
		move.b	subtype(a0),d0
		move.l	(Collected_special_ring_array).w,d1
		bset	d0,d1
		move.l	d1,(Collected_special_ring_array).w	; Set the special stage ring as collected
		bset	#5,$38(a0)
		moveq	#$32,d0				; Add 50 rings
		jmp	(AddRings).l
; ---------------------------------------------------------------------------

SSEntryRing_Animate:
		jmp	(Animate_Raw).l
; ---------------------------------------------------------------------------

Obj_SSEntryFlash:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	SSEntryFlash_Index(pc,d0.w),d1
		jsr	SSEntryFlash_Index(pc,d1.w)
		lea	DPLCPtr_SSEntryFlash(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
SSEntryFlash_Index:	dc.w SSEntryFlash_Init-SSEntryFlash_Index
		dc.w SSEntryFlash_Main-SSEntryFlash_Index
; ---------------------------------------------------------------------------

SSEntryFlash_Init:
		lea	ObjSlot_SSEntryFlash(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		move.l	#AniRaw_SSEntryFlash,$30(a0)
		move.l	#SSEntryFlash_Finished,$34(a0)
		movea.w	$46(a0),a1
		move.w	$10(a1),$10(a0)
		move.w	$14(a1),$14(a0)
		move.b	$2C(a1),subtype(a0)		; Copy positional data from parent ring
		move.w	(Player_1+x_pos).w,d0
		cmp.w	$10(a0),d0
		blo.s	locret_61820
		bset	#0,4(a1)			; Set direction based on where player approached

locret_61820:
		rts
; ---------------------------------------------------------------------------

SSEntryFlash_Main:
		move.b	$22(a0),d6
		jsr	(Animate_RawAdjustFlipX).l
		cmp.b	$22(a0),d6
		beq.s	locret_61844
		cmpi.b	#3,$23(a0)
		bne.s	locret_61844
		movea.w	$46(a0),a1			; Set parent to be deleted in the middle of the animation
		bset	#5,$38(a1)

locret_61844:
		rts
; ---------------------------------------------------------------------------

SSEntryFlash_Finished:
		move.l	#Obj_Wait,(a0)		; This is performed when animation is finished
		move.w	#$20,$2E(a0)
		move.l	#SSEntryFlash_GoSS,$34(a0)
		rts
; ---------------------------------------------------------------------------

SSEntryFlash_GoSS:
		moveq	#sfx_EnterSS,d0
		jsr	(Play_Sound_2).l		; Play the special stage entry sound (you know the one)
		jsr	(Clear_SpriteRingMem).l
		jsr	(Save_Level_Data2).l
		tst.b	subtype(a0)
		bmi.s	loc_618AC			; If negative, always go to HPZ
		moveq	#0,d0
		tst.w	(SK_alone_flag).w
		bne.s	loc_61892			; If SK alone, go directly to special stage
		bsr.w	SSEntry_CheckLevel
		beq.s	loc_61892			; Otherwise, do so if S3 levels
		cmpi.b	#7,(Emerald_count).w
		bne.s	loc_61892			; or if chaos emeralds aren't collected
		bra.w	loc_618AC			; When conditions are met, go to HPZ
; ---------------------------------------------------------------------------
		moveq	#1,d0

loc_61892:
		move.b	d0,(SK_special_stage_flag).w			; Regular ring takes you directly to special stage
		move.b	#1,(Special_bonus_entry_flag).w
		move.b	#$34,(Game_mode).w
		move.b	#1,(Respawn_table_keep).w
		bra.w	loc_618D0
; ---------------------------------------------------------------------------

loc_618AC:
		move.b	#2,(Special_bonus_entry_flag).w			; Super emerald takes you to HPZ
		move.w	#$1701,(Current_zone_and_act).w
		move.w	#$1701,(Apparent_zone_and_act).w
		move.b	#0,(Last_star_post_hit).w
		move.b	#1,(Restart_level_flag).w
		move.b	#1,(Respawn_table_keep).w

loc_618D0:
		move.b	subtype(a0),d0
		move.l	(Collected_special_ring_array).w,d1
		bset	d0,d1
		move.l	d1,(Collected_special_ring_array).w		; Set SS ring as collected
		jmp	(Go_Delete_SpriteSlotted2).l

; =============== S U B R O U T I N E =======================================


SSEntry_CheckLevel:
		cmpi.b	#7,(Current_zone).w
		bhs.s	loc_618F8
		cmpi.b	#4,(Current_zone).w
		beq.s	loc_618F8
		moveq	#0,d1				; 0 is S3 levels
		rts
; ---------------------------------------------------------------------------

loc_618F8:
		moveq	#1,d1				; 1 is SK levels
		rts
; End of function SSEntry_CheckLevel

; ---------------------------------------------------------------------------

SSEntryRing_Display:
		btst	#5,$38(a0)
		bne.s	loc_6196A
		tst.b	4(a0)
		bpl.s	loc_61928
		btst	#6,$38(a0)
		beq.s	loc_61918
		jsr	(Run_PalRotationScript).l			; Only run the rotation script if this is a super emerald ring

loc_61918:
		lea	DPLCPtr_SSEntryRing(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_61928:
		move.w	$10(a0),d0					; If off-screen
		andi.w	#-$80,d0
		sub.w	(Camera_X_pos_coarse_back).w,d0
		cmpi.w	#$280,d0
		bhi.s	loc_6196A
		move.w	$14(a0),d0
		move.w	(Camera_Y_pos).w,d1
		move.w	$14(a0),d0
		sub.w	(Camera_Y_pos).w,d0
		addi.w	#$80,d0
		cmpi.w	#$200,d0
		bhi.w	loc_6196A					; Jump below when far enough off-screen
		move.l	#$EE0088,(Normal_palette_line_2+$A).w
		move.w	#$44,(Normal_palette_line_2+$1E).w
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_6196A:
		move.l	#$EE0088,(Normal_palette_line_2+$A).w
		move.w	#$44,(Normal_palette_line_2+$1E).w			; Restore the part of the palette that was changed
		lea	(ArtKosM_BadnikExplosion).l,a1
		move.w	#-$4C00,d2
		jsr	(Queue_Kos_Module).l			; Restore the overwritten badnik explosion art
		jmp	(Go_Delete_SpriteSlotted).l
; ---------------------------------------------------------------------------
ObjSlot_SSEntryRing:	dc.w 0
		dc.w make_art_tile($5A0,1,0)
		dc.w $40
		dc.w 4
		dc.l Map_SSEntryRing
		dc.b 2
		dc.b $80
		dc.b $20
		dc.b $20
		dc.b 0
		dc.b 0
ObjSlot_SSEntryFlash:	dc.w 0
		dc.w make_art_tile(ArtTile_Player_1,1,0)
		dc.w $18
		dc.w 6
		dc.l Map_SSEntryFlash
		dc.b 2
		dc.b 0
		dc.b $20
		dc.b $20
		dc.b 0
		dc.b 0
DPLCPtr_SSEntryRing:	dc.l ArtUnc_SSEntryRing
		dc.l DPLC_SSEntryRing
DPLCPtr_SSEntryFlash:	dc.l ArtUnc_SSEntryFlash
		dc.l DPLC_SSEntryFlash
AniRaw_SSEntryRing:	dc.b 4
		dc.b 0
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b 3
		dc.b 4
		dc.b 5
		dc.b 6
		dc.b 7
		dc.b $F8
		dc.b $C
		dc.b 6
		dc.b $A
		dc.b 9
		dc.b 8
		dc.b $B
		dc.b $FC
AniRaw_SSEntryFlash:	dc.b 0
		dc.b 0
		dc.b 0
		dc.b 1
		dc.b 2
		dc.b $43
		dc.b 3
		dc.b 2
		dc.b 1
		dc.b 0
		dc.b $F4
		dc.b 0
Map_SSEntryRing:	include "General/Sprites/SS Entry/Map - Entry Ring.asm"

DPLC_SSEntryRing:	include "General/Sprites/SS Entry/DPLC - Special Stage Entry Ring.asm"

Map_SSEntryFlash:	include "General/Sprites/SS Entry/Map - Entry Flash.asm"

DPLC_SSEntryFlash:	include "General/Sprites/SS Entry/DPLC - Special Stage Entry Flash.asm"

PalSPtr_SSEntry:	palscriptptr .header, .data
.header	palscripthdr	Normal_palette_line_2+$A, 2, 0

.data	palscriptdata	3, $ECE, $A8A
	palscriptdata	3, $AEE, $6EE
	palscriptdata	3, $ECA, $A86
	palscriptdata	3, $AEE, $6EE
	palscriptdata	3, $8E8, $4C4
	palscriptdata	3, $AEE, $6EE
	palscriptdata	3, $6EC, $4CA
	palscriptdata	3, $AEE, $6EE
	palscriptdata	3, $6CE, $2AC
	palscriptdata	3, $AEE, $6EE
	palscriptrept
	palscriptdata	2, $6EE, $0AA
	palscriptdata	2, $8EE, $0CC
	palscriptdata	2, $AEE, $6EE
	palscriptdata	2, $CEE, $AEE
	palscriptdata	2, $EEE, $EEE
	palscriptdata	2, $CEE, $AEE
	palscriptdata	2, $AEE, $6EE
	palscriptdata	2, $8EE, $0CC
	palscriptrept

PalSPtr_SSEntry2:	palscriptptr .header, .data
.header	palscripthdr	Normal_palette_line_2+$1E, 1, 0

.data	palscriptdata	3, $868
	palscriptdata	3, $0AA
	palscriptdata	3, $864
	palscriptdata	3, $0AA
	palscriptdata	3, $2A2
	palscriptdata	3, $0AA
	palscriptdata	3, $4A8
	palscriptdata	3, $0AA
	palscriptdata	3, $28A
	palscriptdata	3, $0AA
	palscriptrept
	palscriptdata	2, $066
	palscriptdata	2, $088
	palscriptdata	2, $0AA
	palscriptdata	2, $0CC
	palscriptdata	2, $EEE
	palscriptdata	2, $0CC
	palscriptdata	2, $0AA
	palscriptdata	2, $088
	palscriptrept
	palscriptdata	2, $6EE, $0AA
	palscriptdata	2, $8EE, $0CC
	palscriptdata	2, $AEE, $6EE
	palscriptdata	2, $CEE, $AEE
	palscriptdata	2, $EEE, $EEE
	palscriptdata	2, $CEE, $AEE
	palscriptdata	2, $AEE, $6EE
	palscriptdata	2, $8EE, $0CC
	palscriptdata	1, $066
	palscriptdata	1, $088
	palscriptdata	1, $0AA
	palscriptdata	1, $0CC
	palscriptdata	1, $EEE
	palscriptdata	1, $0CC
	palscriptdata	1, $0AA
	palscriptdata	1, $088
; ---------------------------------------------------------------------------

Obj_CutsceneKnuckles:
		move.w	a0,(_unkFAA4).w
		moveq	#0,d0
		move.b	subtype(a0),d0
		movea.l	off_61D5E(pc,d0.w),a1
		move.l	a1,(a0)
		jmp	(a1)
; ---------------------------------------------------------------------------
off_61D5E:	dc.l CutsceneKnux_AIZ1
		dc.l CutsceneKnux_AIZ2
		dc.l CutsceneKnux_HCZ2
		dc.l CutsceneKnux_CNZ2A
		dc.l CutsceneKnux_CNZ2B
		dc.l CutsceneKnux_LBZ1
		dc.l CutsceneKnux_LBZ2
		dc.l CutsceneKnux_MHZ1
		dc.l CutsceneKnux_MHZ2
		dc.l CutsceneKnux_LRZ2
		dc.l CutsceneKnux_HPZ
		dc.l CutsceneKnux_SSZ
		dc.l CutsceneKnux_SKIntro
; ---------------------------------------------------------------------------

CutsceneKnux_AIZ1:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_61DB0(pc,d0.w),d1
		jsr	off_61DB0(pc,d1.w)
		lea	DPLCPtr_6666A(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
off_61DB0:	dc.w loc_61DBE-off_61DB0
		dc.w loc_61DF4-off_61DB0
		dc.w loc_61E24-off_61DB0
		dc.w loc_61E64-off_61DB0
		dc.w loc_61E96-off_61DB0
		dc.w loc_61EE0-off_61DB0
		dc.w loc_61F10-off_61DB0
; ---------------------------------------------------------------------------

loc_61DBE:
		lea	ObjDat4_663BA(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		bclr	#7,$A(a0)
		move.b	#$13,$1E(a0)
		move.b	#8,$22(a0)
		move.w	#$1400,$10(a0)
		move.w	#$440,$14(a0)
		bsr.w	sub_65DD6
		lea	ChildObjDat_6659A(pc),a2
		jmp	(CreateChild1_Normal).l
; ---------------------------------------------------------------------------

loc_61DF4:
		movea.w	$46(a0),a1
		btst	#7,$2A(a1)
		bne.s	loc_61E02
		rts
; ---------------------------------------------------------------------------

loc_61E02:
		move.b	#4,routine(a0)
		bset	#7,$2A(a0)
		move.w	#-$600,$1A(a0)
		move.w	#$80,$18(a0)
		lea	Pal_CutsceneKnux1(pc),a1
		jmp	(PalLoad_Line1).l
; ---------------------------------------------------------------------------

loc_61E24:
		lea	word_666AF(pc),a1
		jsr	(Animate_RawNoSST).l
		jsr	(MoveSprite).l
		tst.l	d0
		bmi.s	locret_61E42
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bmi.s	loc_61E44

locret_61E42:
		rts
; ---------------------------------------------------------------------------

loc_61E44:
		move.b	#6,routine(a0)
		add.w	d1,$14(a0)
		move.b	#$16,$22(a0)
		move.w	#$7F,$2E(a0)
		move.l	#loc_61E6A,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_61E64:
		jmp	(Obj_Wait).l
; ---------------------------------------------------------------------------

loc_61E6A:
		move.b	#8,routine(a0)
		bchg	#0,4(a0)
		move.l	#word_666A9,$30(a0)
		move.w	#-$600,$18(a0)
		clr.w	$1A(a0)
		move.w	#$29,$2E(a0)
		move.l	#loc_61EA8,$34(a0)

loc_61E96:
		jsr	(Animate_Raw).l
		jsr	(MoveSprite2).l
		jmp	(Obj_Wait).l
; ---------------------------------------------------------------------------

loc_61EA8:
		neg.w	$18(a0)
		bchg	#0,4(a0)
		move.w	#$29,$2E(a0)
		move.l	#loc_61EC2,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_61EC2:
		move.b	#$A,routine(a0)
		move.b	#$16,$22(a0)
		move.w	#$3F,$2E(a0)
		move.l	#loc_61EEC,$34(a0)
		bra.w	loc_62056
; ---------------------------------------------------------------------------

loc_61EE0:
		jsr	(Animate_Raw).l
		jmp	(Obj_Wait).l
; ---------------------------------------------------------------------------

loc_61EEC:
		move.b	#$C,routine(a0)
		move.l	#word_666A9,$30(a0)
		move.w	#$600,$18(a0)
		jsr	(Create_New_Sprite).l
		bne.s	locret_61F0E
		move.l	#Obj_Song_Fade_ToLevelMusic,(a1)

locret_61F0E:
		rts
; ---------------------------------------------------------------------------

loc_61F10:
		tst.b	4(a0)
		bpl.s	loc_61F22
		jsr	(Animate_Raw).l
		jmp	(MoveSprite2).l
; ---------------------------------------------------------------------------

loc_61F22:
		clr.b	(Palette_cycle_counters+$00).w
		clr.b	(Ctrl_1_locked).w
		jsr	(AfterBoss_Cleanup).l
		jsr	(Remove_From_TrackingSlot).l
		jsr	(Create_New_Sprite).l
		bne.s	loc_61F44
		move.l	#Obj_TitleCard,(a1)

loc_61F44:
		move.b	#-$6F,(Level_started_flag).w
		move.b	#-$80,(Update_HUD_timer).w
		clr.l	(Timer).w
		move.b	#1,(Update_HUD_life_count).w
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------

loc_61F60:
		lea	ObjDat3_66432(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#loc_61F70,(a0)

loc_61F70:
		movea.w	$46(a0),a1
		btst	#7,$2A(a1)
		bne.s	loc_61F82
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_61F82:
		lea	(word_2A8B0).l,a4
		addq.b	#1,$22(a0)
		move.l	#loc_2A5F8,(a0)
		jmp	(sub_216B0).l
; ---------------------------------------------------------------------------

CutsceneKnux_AIZ2:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_61FB6(pc,d0.w),d1
		jsr	off_61FB6(pc,d1.w)
		lea	DPLCPtr_6666A(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
off_61FB6:	dc.w loc_61FC2-off_61FB6
		dc.w loc_62014-off_61FB6
		dc.w loc_62022-off_61FB6
		dc.w loc_6206E-off_61FB6
		dc.w loc_620AA-off_61FB6
		dc.w loc_620E4-off_61FB6
; ---------------------------------------------------------------------------

loc_61FC2:
		lea	ObjDat4_663BA(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		move.w	#$4B8E,$10(a0)
		move.w	#$17D,$14(a0)
		bset	#0,4(a0)
		bsr.w	sub_65DD6
		move.w	#$77,$2E(a0)
		move.l	#loc_6201A,$34(a0)
		lea	Pal_CutsceneKnux1(pc),a1
		jsr	(PalLoad_Line1).l
		lea	ChildObjDat_6655A(pc),a2
		jsr	(CreateChild6_Simple).l
		bne.s	locret_62012
		move.w	#$4B08,$10(a1)
		move.w	#$178,$14(a1)

locret_62012:
		rts
; ---------------------------------------------------------------------------

loc_62014:
		jmp	(Obj_Wait).l
; ---------------------------------------------------------------------------

loc_6201A:
		move.b	#4,routine(a0)
		rts
; ---------------------------------------------------------------------------

loc_62022:
		move.w	$10(a0),d0
		subq.w	#2,d0
		cmpi.w	#$4B3C,d0
		blo.s	loc_6203C
		move.w	d0,$10(a0)
		lea	byte_6669F(pc),a1
		jmp	(Animate_RawNoSST).l
; ---------------------------------------------------------------------------

loc_6203C:
		move.b	#6,routine(a0)
		bclr	#0,4(a0)
		move.w	#$5F,$2E(a0)
		move.l	#loc_6207A,$34(a0)

loc_62056:
		move.l	#word_666B9,$30(a0)
		clr.b	$24(a0)
		clr.b	$23(a0)
		move.b	#$1C,$22(a0)

locret_6206C:
		rts
; ---------------------------------------------------------------------------

loc_6206E:
		jsr	(Animate_Raw).l
		jmp	(Obj_Wait).l
; ---------------------------------------------------------------------------

loc_6207A:
		move.b	#8,routine(a0)

loc_62080:
		move.w	#-$100,$18(a0)
		move.w	#-$400,$1A(a0)

loc_6208C:
		move.l	#word_666AF,$30(a0)
		clr.b	$24(a0)
		clr.b	$23(a0)
		move.b	#8,$22(a0)
		move.b	#$13,$1E(a0)
		rts
; ---------------------------------------------------------------------------

loc_620AA:
		jsr	(Animate_Raw).l
		jsr	(MoveSprite).l
		tst.w	$1A(a0)
		bmi.s	locret_620D6
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.s	locret_620D6
		bset	#2,$38(a0)
		bne.s	loc_620D8
		neg.w	$18(a0)
		neg.w	$1A(a0)

locret_620D6:
		rts
; ---------------------------------------------------------------------------

loc_620D8:
		addq.b	#2,routine(a0)
		add.w	d1,$14(a0)
		bra.w	loc_62056
; ---------------------------------------------------------------------------

loc_620E4:
		jmp	(Animate_Raw).l
; ---------------------------------------------------------------------------

loc_620EA:
		movea.w	$46(a0),a1
		btst	#7,$2A(a1)
		bne.w	loc_62158
		move.b	#8,7(a0)
		moveq	#$13,d1
		move.w	#$20,d2
		move.w	#$40,d3
		move.w	$10(a0),d4
		jmp	(SolidObjectFull2).l
; ---------------------------------------------------------------------------

CutsceneKnux_HCZ2:
		cmpi.b	#2,(Player_1+character_id).w
		beq.s	loc_62158
		lea	word_62150(pc),a1
		jsr	(Check_CameraInRange).l
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_62142(pc,d0.w),d1
		jsr	off_62142(pc,d1.w)
		lea	DPLCPtr_6666A(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Sprite_CheckDeleteTouchSlotted).l
; ---------------------------------------------------------------------------
off_62142:	dc.w loc_6215E-off_62142
		dc.w loc_62194-off_62142
		dc.w loc_62014-off_62142
		dc.w loc_62200-off_62142
		dc.w loc_62014-off_62142
		dc.w loc_620AA-off_62142
		dc.w loc_62242-off_62142
word_62150:	dc.w $540
		dc.w $600
		dc.w $3900
		dc.w $3940
; ---------------------------------------------------------------------------

loc_62158:
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

loc_6215E:
		lea	ObjDat4_663BA(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		move.w	(Camera_min_Y_pos).w,(Target_camera_min_Y_pos).w
		move.w	(Camera_max_X_pos).w,(Target_camera_max_X_pos).w
		move.w	#$3940,(Camera_max_X_pos).w
		lea	ChildObjDat_665A2(pc),a2
		jsr	(CreateChild1_Normal).l
		bne.s	loc_6218C
		move.b	#2,$2C(a1)

loc_6218C:
		addi.w	#$9E,$10(a0)
		rts
; ---------------------------------------------------------------------------

loc_62194:
		lea	(Player_1).w,a1
		cmpi.w	#$3990,$10(a1)
		blo.s	loc_621AE
		tst.b	$2E(a1)
		bne.s	loc_621AE
		btst	#3,$2A(a1)
		bne.s	loc_621BC

loc_621AE:
		move.w	(Camera_Y_pos).w,(Camera_min_Y_pos).w
		move.w	(Camera_X_pos).w,(Camera_min_X_pos).w
		rts
; ---------------------------------------------------------------------------

loc_621BC:
		move.b	#4,routine(a0)
		bsr.w	sub_65DD6
		move.w	#$B3,$2E(a0)
		move.l	#loc_621D6,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_621D6:
		move.b	#6,routine(a0)
		bset	#0,4(a0)
		move.w	#$1F,$2E(a0)
		move.l	#loc_62216,$34(a0)
		move.w	#$5C0,(Camera_min_Y_pos).w
		lea	Pal_CutsceneKnux1(pc),a1
		jmp	(PalLoad_Line1).l
; ---------------------------------------------------------------------------

loc_62200:
		subq.w	#4,$10(a0)
		lea	(byte_6669F).l,a1
		jsr	(Animate_RawNoSST).l
		jmp	(Obj_Wait).l
; ---------------------------------------------------------------------------

loc_62216:
		move.b	#8,routine(a0)
		move.b	#$20,$22(a0)
		move.w	#$3F,$2E(a0)
		move.l	#loc_62232,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_62232:
		move.b	#$A,routine(a0)
		bchg	#0,4(a0)
		bra.w	loc_62080
; ---------------------------------------------------------------------------

loc_62242:
		jsr	(Animate_Raw).l
		tst.b	4(a0)
		bmi.w	locret_6206C
		lea	(Pal_HCZ2).l,a1
		jsr	(PalLoad_Line1).l
		lea	ChildObjDat_62280(pc),a2
		jsr	(CreateChild1_Normal).l
		jsr	(Create_New_Sprite).l
		bne.s	loc_62274
		move.l	#Obj_Song_Fade_ToLevelMusic,(a1)

loc_62274:
		jsr	(Remove_From_TrackingSlot).l
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------
ChildObjDat_62280:dc.w 1
		dc.l Obj_DecLevStartYGradual
		dc.b 0
		dc.b 0
		dc.l Obj_IncLevEndXGradual
		dc.b 0
		dc.b 0
word_6228E:	dc.w $176
		dc.w $300
		dc.w $1C00
		dc.w $1E00
word_62296:	dc.w $280
		dc.w $280
		dc.w $1D00
		dc.w $1D00
; ---------------------------------------------------------------------------

CutsceneKnux_CNZ2A:
		cmpi.b	#2,(Player_1+character_id).w
		beq.w	loc_62158
		lea	word_6228E(pc),a1
		jsr	(Check_CameraInRange).l
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_622D0(pc,d0.w),d1
		jsr	off_622D0(pc,d1.w)
		lea	DPLCPtr_6666A(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
off_622D0:	dc.w loc_622E4-off_622D0
		dc.w loc_62332-off_622D0
		dc.w loc_62354-off_622D0
		dc.w loc_6237C-off_622D0
		dc.w loc_62354-off_622D0
		dc.w loc_623FE-off_622D0
		dc.w loc_62446-off_622D0
		dc.w loc_625D0-off_622D0
		dc.w $1B00
		dc.w $1D00
; ---------------------------------------------------------------------------

loc_622E4:
		lea	ObjDat4_663BA(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		move.l	#word_666BF,$30(a0)
		move.l	#loc_6233E,$34(a0)
		lea	word_62296(pc),a1
		move.b	#mus_Knuckles,$26(a0)
		jsr	(loc_85D70).l
		lea	(Normal_palette_line_2).w,a1
		lea	(Target_palette_line_2).w,a2
		moveq	#7,d6

loc_62318:
		move.l	(a1)+,(a2)+
		dbf	d6,loc_62318
		lea	Pal_CutsceneKnux1(pc),a1
		jsr	(PalLoad_Line1).l
		lea	ChildObjDat_66560(pc),a2
		jmp	(CreateChild1_Normal).l
; ---------------------------------------------------------------------------

loc_62332:
		jsr	(Animate_Raw).l
		jmp	(loc_85CA4).l
; ---------------------------------------------------------------------------

loc_6233E:
		move.b	#4,routine(a0)
		move.w	#$3F,$2E(a0)
		move.l	#loc_62360,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_62354:
		jsr	(Animate_Raw).l
		jmp	(Obj_Wait).l
; ---------------------------------------------------------------------------

loc_62360:
		move.b	#6,routine(a0)
		bset	#0,4(a0)
		move.w	#-$600,$1A(a0)
		move.w	#$140,$18(a0)
		bra.w	loc_6208C
; ---------------------------------------------------------------------------

loc_6237C:
		jsr	(Animate_Raw).l
		jsr	(MoveSprite).l
		tst.w	$1A(a0)
		bmi.s	locret_623B6
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.s	locret_623B6
		moveq	#0,d0
		move.b	$39(a0),d0
		cmpi.b	#8,d0
		bhs.s	loc_623B8
		move.l	word_623DA(pc,d0.w),$18(a0)
		addq.b	#4,d0
		move.b	d0,$39(a0)
		bchg	#0,4(a0)

locret_623B6:
		rts
; ---------------------------------------------------------------------------

loc_623B8:
		move.b	#8,routine(a0)
		bclr	#0,4(a0)
		add.w	d1,$14(a0)
		move.w	#$3F,$2E(a0)
		move.l	#loc_623E2,$34(a0)
		bra.w	loc_62056
; ---------------------------------------------------------------------------
word_623DA:	dc.w  $FF00, $FC00
		dc.w   $100, $FC00
; ---------------------------------------------------------------------------

loc_623E2:
		move.b	#$A,routine(a0)
		bset	#0,4(a0)
		move.w	#-$600,$1A(a0)
		move.w	#$400,$18(a0)
		bra.w	loc_6208C
; ---------------------------------------------------------------------------

loc_623FE:
		jsr	(Animate_Raw).l
		jsr	(MoveSprite).l
		tst.b	4(a0)
		bmi.w	locret_6206C
		lea	ChildObjDat_66568(pc),a2
		jsr	(CreateChild1_Normal).l
		move.w	(Target_camera_max_Y_pos).w,(Camera_target_max_Y_pos).w

loc_62422:
		lea	(Target_palette_line_2).w,a1
		lea	(Normal_palette_line_2).w,a2
		moveq	#7,d6

loc_6242C:
		move.l	(a1)+,(a2)+
		dbf	d6,loc_6242C
		lea	(PLC_Monitors).l,a1
		jsr	(Load_PLC_Raw).l
		jsr	(Create_New_Sprite).l
		bne.s	loc_6244C

loc_62446:
		move.l	#Obj_Song_Fade_ToLevelMusic,(a1)

loc_6244C:
		jsr	(Remove_From_TrackingSlot).l
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------

loc_62458:
		movea.w	$46(a0),a1
		btst	#7,$2A(a1)
		bne.w	loc_62158
		move.b	#8,7(a0)
		moveq	#$13,d1
		move.w	#$100,d2
		move.w	#$200,d3
		move.w	$10(a0),d4
		jmp	(SolidObjectFull2).l
; ---------------------------------------------------------------------------

loc_62480:
		subq.w	#1,$2E(a0)
		bpl.s	locret_624BA
		moveq	#0,d0
		move.b	$39(a0),d0
		cmpi.b	#6,d0
		bhs.s	loc_624BC
		addq.b	#1,$39(a0)
		add.w	d0,d0
		move.w	word_624D0(pc,d0.w),$2E(a0)
		moveq	#0,d1
		btst	#1,d0
		beq.s	loc_624A8
		moveq	#$40,d1

loc_624A8:
		lea	Pal_CNZFlash(pc),a1
		adda.w	d1,a1

; =============== S U B R O U T I N E =======================================


sub_624AE:
		lea	(Normal_palette_line_3).w,a2
		moveq	#$F,d0

loc_624B4:
		move.l	(a1)+,(a2)+
		dbf	d0,loc_624B4

locret_624BA:
		rts
; End of function sub_624AE

; ---------------------------------------------------------------------------

loc_624BC:
		tst.b	subtype(a0)
		beq.s	loc_624CA
		lea	(Pal_CNZ+$20).l,a1
		bsr.s	sub_624AE

loc_624CA:
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------
word_624D0:	dc.w 8
		dc.w 4
		dc.w 3
		dc.w 2
		dc.w 4
		dc.w 8
		dc.w 8
; ---------------------------------------------------------------------------

CutsceneKnux_CNZ2B:
		cmpi.b	#2,(Player_1+character_id).w
		beq.w	loc_62158
		lea	word_62520(pc),a1
		jsr	(Check_CameraInRange).l
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_62510(pc,d0.w),d1
		jsr	off_62510(pc,d1.w)
		lea	DPLCPtr_6666A(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Sprite_CheckDeleteTouchSlotted).l
; ---------------------------------------------------------------------------
off_62510:	dc.w loc_62528-off_62510
		dc.w loc_6254E-off_62510
		dc.w loc_6256C-off_62510
		dc.w loc_62014-off_62510
		dc.w loc_620AA-off_62510
		dc.w loc_625BE-off_62510
		dc.w loc_625E2-off_62510
		dc.w loc_6261A-off_62510
word_62520:	dc.w $720
		dc.w $A00
		dc.w $45C0
		dc.w $46E0
; ---------------------------------------------------------------------------

loc_62528:
		lea	ObjDat4_663BA(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		clr.w	(Ctrl_1_logical).w
		st	(Ctrl_1_locked).w
		move.b	#-$80,(Player_1+object_control).w
		bsr.w	sub_65DD6
		lea	Pal_CutsceneKnux1(pc),a1
		jmp	(PalLoad_Line1).l
; ---------------------------------------------------------------------------

loc_6254E:
		lea	(Player_1).w,a1
		cmpi.w	#$4728,$10(a1)
		blo.s	locret_62562
		btst	#1,$2A(a1)
		bne.s	loc_62564

locret_62562:
		rts
; ---------------------------------------------------------------------------

loc_62564:
		move.b	#4,routine(a0)
		rts
; ---------------------------------------------------------------------------

loc_6256C:
		move.w	#$808,(Ctrl_1_logical).w
		cmpi.w	#$4760,(Player_1+x_pos).w
		bhs.s	loc_6257C
		rts
; ---------------------------------------------------------------------------

loc_6257C:
		move.b	#6,routine(a0)
		clr.w	(Ctrl_1_logical).w
		lea	(Player_1).w,a1
		clr.w	$18(a1)
		clr.w	$1A(a1)
		clr.w	$1C(a1)
		move.w	#$1F,$2E(a0)
		move.l	#loc_625A6,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_625A6:
		move.b	#8,routine(a0)
		move.w	#$7F,$2E(a0)
		move.l	#loc_625CA,$34(a0)
		bra.w	loc_62080
; ---------------------------------------------------------------------------

loc_625BE:
		jsr	(Animate_Raw).l
		jmp	(Obj_Wait).l
; ---------------------------------------------------------------------------

loc_625CA:
		move.b	#$C,routine(a0)

loc_625D0:
		clr.b	$23(a0)
		clr.b	$24(a0)
		move.l	#byte_6669F,$30(a0)
		rts
; ---------------------------------------------------------------------------

loc_625E2:
		addq.w	#4,$10(a0)
		jsr	(Animate_Raw).l
		tst.b	4(a0)
		bmi.w	locret_6206C
		move.b	#$E,routine(a0)
		clr.b	(Player_1+object_control).w
		lea	(Pal_CNZ).l,a1
		jsr	(PalLoad_Line1).l
		jsr	(Create_New_Sprite).l
		bne.s	locret_62618
		move.l	#Obj_Song_Fade_ToLevelMusic,(a1)

locret_62618:
		rts
; ---------------------------------------------------------------------------

loc_6261A:
		move.w	#$404,(Ctrl_1_logical).w
		move.w	(Camera_Y_pos).w,d0
		addi.w	#$160,d0
		cmp.w	$14(a0),d0
		blo.s	loc_62630
		rts
; ---------------------------------------------------------------------------

loc_62630:
		clr.b	(Ctrl_1_locked).w
		jsr	(Remove_From_TrackingSlot).l
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------

CutsceneKnux_LBZ1:
		cmpi.b	#2,(Player_1+character_id).w
		beq.w	loc_62158
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_62668(pc,d0.w),d1
		jsr	off_62668(pc,d1.w)
		lea	DPLCPtr_6666A(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Sprite_CheckDeleteTouchSlotted).l
; ---------------------------------------------------------------------------
off_62668:	dc.w loc_62678-off_62668
		dc.w loc_626B2-off_62668
		dc.w loc_62014-off_62668
		dc.w loc_626EE-off_62668
		dc.w loc_62014-off_62668
		dc.w loc_62354-off_62668
		dc.w loc_62354-off_62668
		dc.w loc_62778-off_62668
; ---------------------------------------------------------------------------

loc_62678:
		move.w	(Player_1+x_pos).w,d0
		cmp.w	$10(a0),d0
		bhs.s	loc_626AC
		lea	ObjDat4_663BA(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		move.b	#$16,$22(a0)
		move.w	#$A0,(Camera_min_Y_pos).w
		lea	Pal_CutsceneKnux1(pc),a1
		jsr	(PalLoad_Line1).l
		lea	ChildObjDat_6657C(pc),a2
		jmp	(CreateChild1_Normal).l
; ---------------------------------------------------------------------------

loc_626AC:
		jmp	(Go_Delete_SpriteSlotted2).l
; ---------------------------------------------------------------------------

loc_626B2:
		btst	#3,$38(a0)
		bne.s	loc_626BC
		rts
; ---------------------------------------------------------------------------

loc_626BC:
		move.b	#4,routine(a0)
		bsr.w	sub_65DD6
		move.w	#$3B,$2E(a0)
		move.l	#loc_626D6,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_626D6:
		move.b	#6,routine(a0)
		move.l	#byte_666C3,$30(a0)
		move.l	#loc_626F4,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_626EE:
		jmp	(Animate_RawMultiDelay).l
; ---------------------------------------------------------------------------

loc_626F4:
		move.b	#8,routine(a0)
		move.w	#$F,$2E(a0)
		move.l	#loc_62726,$34(a0)
		moveq	#sfx_MissileThrow,d0
		jsr	(Play_Sound_2).l
		lea	ChildObjDat_66584(pc),a2
		jsr	(CreateChild1_Normal).l
		lea	(PLC_BossExplosion).l,a1
		jmp	(Load_PLC_Raw).l
; ---------------------------------------------------------------------------

loc_62726:
		move.b	#$A,routine(a0)
		move.w	#$7F,$2E(a0)
		move.l	#loc_6273E,$34(a0)
		bra.w	loc_62056
; ---------------------------------------------------------------------------

loc_6273E:
		move.b	#$C,routine(a0)
		st	(Screen_shake_flag).w
		move.w	#$5F,$2E(a0)
		move.l	#loc_62760,$34(a0)
		lea	ChildObjDat_6658C(pc),a2
		jmp	(CreateChild6_Simple).l
; ---------------------------------------------------------------------------

loc_62760:
		move.b	#$E,routine(a0)
		move.l	#byte_6669F,$30(a0)
		clr.b	$24(a0)
		clr.b	$23(a0)
		rts
; ---------------------------------------------------------------------------

loc_62778:
		tst.b	4(a0)
		bpl.w	loc_6278A
		addq.w	#2,$10(a0)
		jmp	(Animate_Raw).l
; ---------------------------------------------------------------------------

loc_6278A:
		clr.b	(_unkFAA9).w
		clr.b	(Player_1+object_control).w
		clr.b	(Player_2+object_control).w
		move.w	#$3B60,(Target_camera_max_X_pos).w
		lea	(Child6_IncLevX).l,a2
		jsr	(CreateChild6_Simple).l
		move.w	#$148,(Camera_target_max_Y_pos).w
		jsr	(Remove_From_TrackingSlot).l
		lea	(Pal_LBZ1).l,a1
		jsr	(PalLoad_Line1).l
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------

loc_627C6:
		movea.w	$46(a0),a1
		btst	#7,$2A(a1)
		bne.w	loc_62158
		lea	word_62822(pc),a1
		jsr	(Check_PlayerInRange).l
		tst.l	d0
		beq.s	locret_627FE
		tst.w	d0
		beq.s	loc_627F4
		movea.w	$46(a0),a2
		bset	#3,$38(a2)
		bsr.w	sub_62800

loc_627F4:
		swap	d0
		tst.w	d0
		beq.s	locret_627FE
		bsr.w	sub_62800

locret_627FE:
		rts

; =============== S U B R O U T I N E =======================================


sub_62800:
		st	(_unkFAA9).w
		movea.w	d0,a1
		cmpi.b	#6,5(a1)
		bhs.s	locret_627FE
		move.b	#-$7F,$2E(a1)
		bclr	#0,4(a1)
		bclr	#0,$2A(a1)
		rts
; End of function sub_62800

; ---------------------------------------------------------------------------
word_62822:	dc.w  $FFC0,   $80, $FFD0,   $60
; ---------------------------------------------------------------------------

loc_6282A:
		lea	ObjDat3_6640E(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#loc_6284E,(a0)
		move.w	#-$200,$18(a0)
		move.w	#-$400,$1A(a0)
		moveq	#sfx_MissileThrow,d0
		jsr	(Play_Sound_2).l

loc_6284E:
		jsr	(MoveSprite_LightGravity).l
		jmp	(Sprite_CheckDeleteXY).l
; ---------------------------------------------------------------------------

loc_6285A:
		move.l	#loc_628A0,(a0)
		move.l	#Obj_BossExpControl1,$34(a0)
		moveq	#0,d0
		move.b	subtype(a0),d0
		add.w	d0,d0
		lea	word_62890(pc,d0.w),a1
		move.w	(a1)+,$10(a0)
		move.w	(a1)+,$14(a0)
		move.b	#$20,$39(a0)
		move.b	#$20,$3A(a0)
		move.b	#$20,$3B(a0)
		rts
; ---------------------------------------------------------------------------
word_62890:	dc.w  $3BC0,  $1A0
		dc.w  $3B80,  $1A0
		dc.w  $3B40,  $1A0
		dc.w  $3B00,  $1A0
; ---------------------------------------------------------------------------

loc_628A0:
		subq.w	#4,$14(a0)
		jmp	(Obj_Wait).l
; ---------------------------------------------------------------------------

CutsceneKnux_LBZ2:
		cmpi.b	#2,(Player_1+character_id).w
		beq.w	loc_62158
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_628D2(pc,d0.w),d1
		jsr	off_628D2(pc,d1.w)
		lea	DPLCPtr_6666A(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Sprite_CheckDeleteTouchSlotted).l
; ---------------------------------------------------------------------------
off_628D2:	dc.w loc_628E0-off_628D2
		dc.w loc_6290E-off_628D2
		dc.w loc_62928-off_628D2
		dc.w loc_62942-off_628D2
		dc.w loc_62964-off_628D2
		dc.w loc_629A8-off_628D2
		dc.w loc_629C0-off_628D2
; ---------------------------------------------------------------------------

loc_628E0:
		lea	ObjDat4_663BA(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		bset	#0,4(a0)
		move.b	#$20,$22(a0)
		bsr.w	sub_65DD6
		lea	Pal_CutsceneKnux1(pc),a1
		jsr	(PalLoad_Line1).l
		lea	ChildObjDat_66592(pc),a2
		jmp	(CreateChild3_NormalRepeated).l
; ---------------------------------------------------------------------------

loc_6290E:
		btst	#1,$38(a0)
		bne.s	loc_62918
		rts
; ---------------------------------------------------------------------------

loc_62918:
		move.b	#4,routine(a0)
		move.l	#loc_62932,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_62928:
		lea	byte_666D2(pc),a1
		jmp	(Animate_RawNoSSTMultiDelay).l
; ---------------------------------------------------------------------------

loc_62932:
		move.b	#6,routine(a0)
		bclr	#0,4(a0)
		bra.w	loc_62056
; ---------------------------------------------------------------------------

loc_62942:
		tst.b	(Screen_shake_flag).w
		beq.s	loc_6295E
		move.b	#8,routine(a0)
		move.l	#byte_6669A,$30(a0)
		clr.b	$24(a0)
		clr.b	$23(a0)

loc_6295E:
		jmp	(Animate_Raw).l
; ---------------------------------------------------------------------------

loc_62964:
		btst	#3,$38(a0)
		bne.s	loc_6297A
		move.w	(Events_bg+$14).w,d0
		add.w	d0,$14(a0)
		jmp	(Animate_Raw).l
; ---------------------------------------------------------------------------

loc_6297A:
		move.b	#$A,routine(a0)
		bset	#0,4(a0)
		move.b	#9,$22(a0)
		move.w	#$200,$18(a0)
		move.w	#-$100,$1A(a0)
		jsr	(Create_New_Sprite).l
		bne.s	locret_629A6
		move.l	#Obj_Song_Fade_ToLevelMusic,(a1)

locret_629A6:
		rts
; ---------------------------------------------------------------------------

loc_629A8:
		move.w	$14(a0),d0
		cmp.w	(Water_level).w,d0
		blo.s	loc_629C0
		moveq	#sfx_Splash,d0
		jsr	(Play_Sound_2).l
		move.b	#$C,routine(a0)

loc_629C0:
		move.w	(Events_bg+$14).w,d0
		add.w	d0,$14(a0)
		jmp	(MoveSprite_LightGravity).l
; ---------------------------------------------------------------------------

loc_629CE:
		lea	ObjDat3_6641A(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#loc_62A0A,(a0)
		moveq	#0,d0
		move.b	subtype(a0),d0
		add.w	d0,d0
		move.l	dword_629FA(pc,d0.w),$3E(a0)
		lsl.w	#3,d0
		add.w	d0,$14(a0)
		move.w	$10(a0),$3A(a0)
		rts
; ---------------------------------------------------------------------------
dword_629FA:	dc.l $1000010
		dc.l $C0000C
		dc.l $800008
		dc.l $400004
; ---------------------------------------------------------------------------

loc_62A0A:
		tst.b	(Screen_shake_flag).w
		beq.s	loc_62A22
		move.l	#loc_62A28,(a0)
		move.w	$3E(a0),$18(a0)
		move.b	#6,$39(a0)

loc_62A22:
		jmp	(Sprite_CheckDeleteXY).l
; ---------------------------------------------------------------------------

loc_62A28:
		move.w	(Events_bg+$14).w,d0
		add.w	d0,$14(a0)
		move.w	$10(a0),d0
		move.w	$40(a0),d1
		cmp.w	$3A(a0),d0
		scs	d2
		bcs.s	loc_62A42
		neg.w	d1

loc_62A42:
		add.w	d1,$18(a0)
		cmp.b	$3C(a0),d2
		beq.s	loc_62A82
		move.b	d2,$3C(a0)
		cmpi.b	#3,$39(a0)
		bne.s	loc_62A6C
		moveq	#0,d0
		move.b	subtype(a0),d0
		add.w	d0,d0
		move.l	dword_62A9E(pc,d0.w),$3E(a0)
		move.w	$3E(a0),$18(a0)

loc_62A6C:
		subq.b	#1,$39(a0)
		bne.s	loc_62A82
		move.l	#loc_62AAE,(a0)
		movea.w	$46(a0),a1
		bset	#3,$38(a1)

loc_62A82:
		jsr	(MoveSprite2).l
		tst.b	subtype(a0)
		bne.s	loc_62A98
		movea.w	$46(a0),a1
		move.w	$10(a0),$10(a1)

loc_62A98:
		jmp	(Sprite_CheckDeleteXY).l
; ---------------------------------------------------------------------------
dword_62A9E:	dc.l $2000020
		dc.l $1800018
		dc.l $1000010
		dc.l $800008
; ---------------------------------------------------------------------------

loc_62AAE:
		move.w	(Events_bg+$14).w,d0
		add.w	d0,$14(a0)
		jsr	(MoveSprite_LightGravity).l
		jmp	(Sprite_CheckDeleteXY).l
; ---------------------------------------------------------------------------

Obj_C8_1:
		lea	ObjDat3_66426(pc),a1
		jsr	(SetUp_ObjAttributes).l
		bclr	#1,4(a0)
		beq.s	loc_62ADA
		bset	#7,$A(a0)

loc_62ADA:
		bclr	#0,4(a0)
		beq.s	loc_62AE8
		move.w	#0,8(a0)

loc_62AE8:
		move.l	#loc_62AEE,(a0)

loc_62AEE:
		move.w	(Events_bg+$14).w,d0
		add.w	d0,$14(a0)
		jmp	(Sprite_OnScreen_Test).l
; ---------------------------------------------------------------------------
Map_LBZKnuxPillar:	include "Levels/LBZ/Misc Object Data/Map - Knuckles Pillar.asm"

; ---------------------------------------------------------------------------

CutsceneKnux_MHZ1:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_62B58(pc,d0.w),d1
		jsr	off_62B58(pc,d1.w)
		lea	DPLCPtr_6666A(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Sprite_CheckDeleteTouchSlotted).l
; ---------------------------------------------------------------------------
off_62B58:	dc.w loc_62B68-off_62B58
		dc.w loc_62BB2-off_62B58
		dc.w loc_62BC0-off_62B58
		dc.w loc_62BE4-off_62B58
		dc.w loc_62BF4-off_62B58
		dc.w loc_62C42-off_62B58
		dc.w loc_62C42-off_62B58
		dc.w loc_62C90-off_62B58
; ---------------------------------------------------------------------------

loc_62B68:
		lea	ObjDat4_663BA(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		bclr	#7,$A(a0)
		move.w	#$77,$2E(a0)
		move.l	#byte_6669F,$30(a0)
		move.w	#$2B0,$10(a0)
		move.w	#$66C,$14(a0)
		move.w	#$200,$18(a0)
		lea	(Normal_palette_line_2).w,a1
		lea	(Target_palette_line_2).w,a2
		moveq	#7,d6

loc_62BA2:
		move.l	(a1)+,(a2)+
		dbf	d6,loc_62BA2
		lea	Pal_CutsceneKnux1(pc),a1
		jmp	(PalLoad_Line1).l
; ---------------------------------------------------------------------------

loc_62BB2:
		subq.w	#1,$2E(a0)
		bpl.s	locret_62BBE
		move.b	#4,routine(a0)

locret_62BBE:
		rts
; ---------------------------------------------------------------------------

loc_62BC0:
		cmpi.w	#$360,$10(a0)
		bhs.s	loc_62BD4
		jsr	(Animate_Raw).l
		jmp	(MoveSprite2).l
; ---------------------------------------------------------------------------

loc_62BD4:
		move.b	#6,routine(a0)
		lea	ChildObjDat_665B0(pc),a2
		jsr	(CreateChild6_Simple).l

loc_62BE4:
		btst	#3,$38(a0)
		bne.s	loc_62BEE
		rts
; ---------------------------------------------------------------------------

loc_62BEE:
		move.b	#8,routine(a0)

loc_62BF4:
		jsr	(Animate_Raw).l
		jsr	(MoveSprite2).l
		movea.w	$46(a0),a1
		move.w	$10(a1),d0
		subi.w	#$28,d0
		cmp.w	$10(a0),d0
		bls.s	loc_62C14
		rts
; ---------------------------------------------------------------------------

loc_62C14:
		move.w	d0,$10(a0)
		move.b	#$A,routine(a0)
		move.b	#$17,$1E(a0)
		move.w	#$100,$18(a0)
		move.w	#-$400,$1A(a0)
		move.l	#loc_62C5A,$34(a0)
		lea	word_666AF(pc),a1
		jsr	(Set_Raw_Animation).l

loc_62C42:
		jsr	(Animate_Raw).l
		jsr	(MoveSprite).l
		jsr	(ObjHitFloor_DoRoutine).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_62C5A:
		move.b	#$C,routine(a0)
		move.b	#$13,$1E(a0)
		move.w	#-$300,$1A(a0)
		move.l	#loc_62C76,$34(a0)
		rts
; ---------------------------------------------------------------------------

loc_62C76:
		move.b	#$E,routine(a0)
		move.w	#$200,$18(a0)
		clr.w	$1A(a0)
		lea	byte_6669F(pc),a1
		jmp	(Set_Raw_Animation).l
; ---------------------------------------------------------------------------

loc_62C90:
		tst.b	4(a0)
		bpl.w	loc_62422
		jsr	(Animate_Raw).l
		jmp	(MoveSprite2).l
; ---------------------------------------------------------------------------

Obj_A8_2:
		cmpi.b	#2,(Player_1+character_id).w
		beq.w	loc_62158
		tst.b	(Last_star_post_hit).w
		bne.w	loc_62158
		tst.w	(SK_alone_flag).w
		bne.w	loc_62158
		lea	(Player_1).w,a1
		moveq	#0,d0
		move.b	(_unkFAB8).w,d0
		move.w	off_62CD0(pc,d0.w),d0
		jmp	off_62CD0(pc,d0.w)
; ---------------------------------------------------------------------------
off_62CD0:	dc.w loc_62CDE-off_62CD0
		dc.w loc_62CF8-off_62CD0
		dc.w loc_62D2C-off_62CD0
		dc.w loc_62D42-off_62CD0
		dc.w loc_62D5A-off_62CD0
		dc.w locret_62D6E-off_62CD0
		dc.w loc_62D70-off_62CD0
; ---------------------------------------------------------------------------

loc_62CDE:
		move.b	#2,(_unkFAB8).w
		tst.l	(Player_2).w
		beq.s	loc_62CF8
		jsr	(Create_New_Sprite).l
		bne.s	loc_62CF8
		move.l	#loc_62DAC,(a1)

loc_62CF8:
		move.w	#$389,d0
		cmp.w	$10(a1),d0
		bls.s	loc_62D04
		rts
; ---------------------------------------------------------------------------

loc_62D04:
		move.w	d0,$10(a1)
		move.b	#4,(_unkFAB8).w
		bclr	#0,4(a1)
		bclr	#0,$2A(a1)
		st	(Ctrl_1_locked).w
		clr.w	(Ctrl_1_logical).w
		jsr	(Stop_Object).l
		bra.w	sub_65DD6
; ---------------------------------------------------------------------------

loc_62D2C:
		btst	#1,$2A(a1)
		beq.s	loc_62D36
		rts
; ---------------------------------------------------------------------------

loc_62D36:
		move.b	#6,(_unkFAB8).w
		move.w	#$20,$2E(a0)

loc_62D42:
		subq.w	#1,$2E(a0)
		bmi.s	loc_62D4A
		rts
; ---------------------------------------------------------------------------

loc_62D4A:
		move.b	#8,(_unkFAB8).w
		st	(Scroll_lock).w
		move.w	#$202,(Ctrl_1_logical).w

loc_62D5A:
		addq.w	#2,(Camera_Y_pos).w
		cmpi.w	#$5B0,(Camera_Y_pos).w
		bhs.s	loc_62D68
		rts
; ---------------------------------------------------------------------------

loc_62D68:
		move.b	#$A,(_unkFAB8).w

locret_62D6E:
		rts
; ---------------------------------------------------------------------------

loc_62D70:
		clr.b	(_unkFAB8).w
		clr.b	(Ctrl_1_locked).w
		clr.b	(Ctrl_2_locked).w
		clr.b	(Scroll_lock).w
		clr.w	(Ctrl_1_logical).w
		clr.w	(Ctrl_2_logical).w
		move.b	#5,(Player_2+anim).w
		move.b	#1,(Last_star_post_hit).w
		move.w	#$190,(Saved_X_pos).w
		move.w	#$56C,(Saved_Y_pos).w
		jsr	(Save_Level_Data).l
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------

loc_62DAC:
		lea	(Player_2).w,a1
		cmpi.b	#4,(_unkFAB8).w
		bhs.s	loc_62DC4
		move.w	#$371,d0
		cmp.w	$10(a1),d0
		bls.s	loc_62DC4
		rts
; ---------------------------------------------------------------------------

loc_62DC4:
		move.w	d0,$10(a0)
		move.l	#loc_62DDC,(a0)
		st	(Ctrl_2_locked).w
		clr.w	(Ctrl_2_logical).w
		jsr	(Stop_Object).l

loc_62DDC:
		lea	(Player_2).w,a1
		move.b	(_unkFAB8).w,d0
		beq.s	loc_62E1A
		cmpi.b	#4,(_unkFAB8).w
		blo.s	loc_62E04
		move.w	#$371,d0
		cmp.w	$10(a1),d0
		bhi.s	locret_62E18
		move.b	#8,$20(a1)
		jmp	(Stop_Object).l
; ---------------------------------------------------------------------------

loc_62E04:
		tst.b	4(a1)
		bmi.s	locret_62E18
		move.l	#loc_62DAC,(a0)
		clr.b	(Ctrl_2_locked).w
		clr.w	(Ctrl_2_logical).w

locret_62E18:
		rts
; ---------------------------------------------------------------------------

loc_62E1A:
		clr.b	(Ctrl_2_locked).w
		clr.w	(Ctrl_2_logical).w
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

Obj_A9_2:
		lea	ObjDat3_6644A(pc),a1
		jsr	(SetUp_ObjAttributes).l
		lea	ChildObjDat_665B6(pc),a2
		jsr	(CreateChild6_Simple).l
		move.l	#loc_62F0A,(a0)
		tst.b	(Last_star_post_hit).w
		bne.s	loc_62E56
		cmpi.b	#2,(Player_1+character_id).w
		beq.s	loc_62E56
		move.l	#loc_62E5C,(a0)

loc_62E56:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_62E5C:
		cmpi.b	#$A,(_unkFAB8).w
		bhs.s	loc_62E6A
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_62E6A:
		move.l	#loc_62E92,(a0)
		lea	(ArtKosM_MHZKnuxPeer).l,a1
		move.w	#-$6000,d2
		jsr	(Queue_Kos_Module).l
		lea	ChildObjDat_665AA(pc),a2
		jsr	(CreateChild6_Simple).l
		bne.s	loc_62E92
		move.b	#$1C,$2C(a1)

loc_62E92:
		move.w	(_unkFAA4).w,d0
		beq.s	loc_62ECA
		movea.w	d0,a1
		lea	word_65C48(pc),a2
		jsr	(Check_InMyRange).l
		beq.s	loc_62ECA
		move.l	#loc_62ED0,(a0)
		move.w	#1,$2E(a0)
		move.b	#1,$22(a0)
		bset	#1,$38(a0)
		st	(_unkFAA9).w
		moveq	#sfx_Switch,d0
		jsr	(Play_Sound_2).l

loc_62ECA:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_62ED0:
		bclr	#1,$38(a0)
		subq.w	#1,$2E(a0)
		bpl.s	loc_62EF6
		move.l	#Wait_Draw,(a0)
		move.w	#$5F,$2E(a0)
		move.l	#loc_62EFC,$34(a0)
		move.b	#0,$22(a0)

loc_62EF6:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_62EFC:
		move.b	#$C,(_unkFAB8).w
		move.l	#loc_62F0A,(a0)
		rts
; ---------------------------------------------------------------------------

loc_62F0A:
		bsr.w	sub_65DEC
		move.b	$2A(a0),d1
		andi.b	#$18,d1
		beq.s	loc_62F46
		move.l	#loc_62F4C,(a0)
		move.b	#1,$22(a0)
		moveq	#sfx_Switch,d0
		jsr	(Play_Sound_2).l
		btst	#2,$38(a0)
		bne.s	loc_62F46
		bset	#1,$38(a0)
		not.b	(_unkFAA9).w
		moveq	#sfx_Switch,d0
		jsr	(Play_Sound_2).l

loc_62F46:
		jmp	(Sprite_CheckDelete).l
; ---------------------------------------------------------------------------

loc_62F4C:
		bclr	#1,$38(a0)
		bsr.w	sub_65DEC
		move.b	$2A(a0),d0
		andi.b	#$18,d0
		bne.s	loc_62F6C
		move.l	#loc_62F0A,(a0)
		move.b	#0,$22(a0)

loc_62F6C:
		jmp	(Sprite_CheckDelete).l
; ---------------------------------------------------------------------------

loc_62F72:
		lea	ObjDat3_6643E(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#loc_62FA2,(a0)
		move.w	#$374,$10(a0)
		move.w	#$66C,$14(a0)
		move.w	#$200,$18(a0)
		move.w	#7,$2E(a0)
		move.l	#loc_62FB4,$34(a0)

loc_62FA2:
		jsr	(MoveSprite2).l
		jsr	(Obj_Wait).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_62FB4:
		move.l	#loc_62FCA,(a0)
		move.l	#loc_62FDA,$34(a0)
		bset	#7,$A(a0)
		rts
; ---------------------------------------------------------------------------

loc_62FCA:
		lea	byte_666E1(pc),a1
		jsr	(Animate_RawNoSSTMultiDelay).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_62FDA:
		move.l	#loc_62FA2,(a0)
		move.w	#-$400,$18(a0)
		move.w	#$F,$2E(a0)
		move.l	#loc_62FFC,$34(a0)
		bclr	#7,$A(a0)
		rts
; ---------------------------------------------------------------------------

loc_62FFC:
		movea.w	$46(a0),a1
		bset	#3,$38(a1)
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------

loc_6300C:
		lea	ObjDat3_66462(pc),a1
		jsr	(SetUp_ObjAttributes).l
		movea.w	$46(a0),a1
		move.w	a0,$44(a1)
		move.l	#loc_6303C,(a0)
		move.w	#$390,$10(a0)
		move.w	#$620,$14(a0)
		tst.b	(_unkFAA9).w
		beq.s	loc_6303C
		addi.w	#$40,$14(a0)

loc_6303C:
		movea.w	$46(a0),a1
		btst	#1,$38(a1)
		bne.s	loc_63078
		jsr	(sub_65E4C).l
		lea	(Player_1).w,a1
		jsr	(Find_OtherObject).l
		tst.b	(_unkFAA9).w
		beq.s	loc_6306E
		tst.w	d0
		bne.s	loc_6306E
		cmpi.w	#$40,d2
		bhs.s	loc_6306E
		cmpi.w	#$60,d3
		blo.s	loc_63074

loc_6306E:
		jmp	(Child_Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_63074:
		clr.b	(_unkFAA9).w

loc_63078:
		move.l	#loc_630A6,(a0)
		movea.w	$46(a0),a1
		bset	#2,$38(a1)
		move.w	#$100,d0
		tst.b	(_unkFAA9).w
		bne.s	loc_63094
		neg.w	d0

loc_63094:
		move.w	d0,$1A(a0)
		move.w	#$3F,$2E(a0)
		move.l	#loc_630BE,$34(a0)

loc_630A6:
		jsr	(MoveSprite2).l
		jsr	(sub_65E4C).l
		jsr	(Obj_Wait).l
		jmp	(Child_Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_630BE:
		move.l	#loc_6303C,(a0)
		movea.w	$46(a0),a1
		bclr	#2,$38(a1)
		rts
; ---------------------------------------------------------------------------
word_630D0:	dc.w   $648,  $848
		dc.w   $2D0,  $4D0
		dc.w   $748,  $748
word_630DC:	dc.w   $3D0,  $3D0
; ---------------------------------------------------------------------------

CutsceneKnux_MHZ2:
		cmpi.b	#2,(Player_1+character_id).w
		beq.s	loc_6311A
		cmpi.b	#7,(Last_star_post_hit).w
		bhs.w	loc_62158
		lea	word_630D0(pc),a1
		jsr	(Check_CameraInRange).l
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_6312A(pc,d0.w),d1
		jsr	off_6312A(pc,d1.w)
		lea	DPLCPtr_66672(pc),a2
		jsr	(Perform_DPLC).l
		jmp	(Sprite_CheckDeleteTouchSlotted).l
; ---------------------------------------------------------------------------

loc_6311A:
		lea	ChildObjDat_665BC(pc),a2
		jsr	(CreateChild1_Normal).l
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------
off_6312A:	dc.w loc_63134-off_6312A
		dc.w loc_63170-off_6312A
		dc.w loc_631A4-off_6312A
		dc.w loc_63220-off_6312A
		dc.w loc_632AE-off_6312A
; ---------------------------------------------------------------------------

loc_63134:
		lea	ObjDat4_663CC(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		move.l	#loc_63182,$34(a0)
		move.w	(Camera_min_X_pos).w,(Target_camera_min_X_pos).w
		move.w	(word_630DC).l,(_unkFAB4).w
		bsr.w	sub_65DD6
		st	(Events_bg+$16).w
		lea	Pal_CutsceneKnux1(pc),a1
		jsr	(PalLoad_Line1).l
		lea	ChildObjDat_665BC(pc),a2
		jmp	(CreateChild1_Normal).l
; ---------------------------------------------------------------------------

loc_63170:
		move.w	(Camera_X_pos).w,d0
		move.w	(_unkFAB4).w,d1
		cmp.w	d1,d0
		bhs.s	loc_63182
		move.w	d0,(Camera_min_X_pos).w
		rts
; ---------------------------------------------------------------------------

loc_63182:
		move.w	d1,(Camera_min_X_pos).w
		move.b	#4,routine(a0)
		move.w	#$3B,$2E(a0)
		st	(Ctrl_1_locked).w
		st	(Ctrl_2_locked).w
		clr.w	(Ctrl_1_logical).w
		clr.w	(Ctrl_2_logical).w
		rts
; ---------------------------------------------------------------------------

loc_631A4:
		subi.w	#1,$2E(a0)
		bmi.s	loc_631E0
		moveq	#0,d0
		lea	(Player_1).w,a1
		btst	#1,$2A(a1)
		bne.s	loc_631BE
		bset	#0,d0

loc_631BE:
		lea	(Player_2).w,a2
		tst.l	(a2)
		beq.s	loc_631D4
		tst.b	4(a2)
		bpl.s	loc_631D4
		btst	#1,$2A(a2)
		bne.s	loc_631D8

loc_631D4:
		bset	#1,d0

loc_631D8:
		cmpi.b	#3,d0
		beq.s	loc_631E0

locret_631DE:
		rts
; ---------------------------------------------------------------------------

loc_631E0:
		move.b	#6,routine(a0)
		move.l	#loc_63280,$34(a0)
		move.w	#$10,$3E(a0)
		clr.w	$2E(a0)
		move.b	#1,$39(a0)
		lea	(Player_1).w,a1
		bsr.w	sub_6320E
		lea	(Player_2).w,a1
		tst.l	(a1)
		beq.s	locret_631DE

; =============== S U B R O U T I N E =======================================


sub_6320E:
		move.b	#-$7F,$2E(a1)
		move.b	#5,$20(a1)
		jmp	(Stop_Object).l
; End of function sub_6320E

; ---------------------------------------------------------------------------

loc_63220:
		bsr.w	sub_65E62
		cmpi.b	#8,$23(a0)
		blo.s	loc_63238
		moveq	#sfx_LeafBlower,d0
		jsr	(sub_85E52).l
		bsr.w	sub_65EB4

loc_63238:
		lea	byte_666F6(pc),a1
		jsr	(Animate_RawNoSSTMultiDelay).l
		beq.s	locret_6327E
		cmpi.b	#$C,$23(a0)
		bne.s	loc_63266
		lea	(Player_1).w,a1
		move.b	#$14,$20(a1)
		lea	(Player_2).w,a1
		tst.b	4(a1)
		bpl.s	loc_63266
		move.b	#$14,$20(a1)

loc_63266:
		cmpi.b	#2,$22(a0)
		bne.s	locret_6327E
		addq.b	#1,$39(a0)
		subq.w	#4,$3E(a0)
		moveq	#sfx_Switch,d0
		jsr	(Play_Sound_2).l

locret_6327E:
		rts
; ---------------------------------------------------------------------------

loc_63280:
		move.b	#8,routine(a0)
		jsr	(Create_New_Sprite).l
		bne.s	loc_63294
		move.l	#loc_6338E,(a1)

loc_63294:
		tst.b	(Player_2+render_flags).w
		bpl.s	loc_632AE
		jsr	(Create_New_Sprite).l
		bne.s	loc_632AE
		move.l	#loc_6338E,(a1)
		move.b	#2,$2C(a1)

loc_632AE:
		tst.b	4(a0)
		bpl.w	loc_62422
		bra.w	sub_65EB4
; ---------------------------------------------------------------------------
		lea	(Pal_MHZ2).l,a1
		jsr	(PalLoad_Line1).l
		bra.w	loc_62422
; ---------------------------------------------------------------------------

loc_632CA:
		lea	ObjDat3_66456(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#loc_63308,(a0)
		cmpi.b	#2,(Player_1+character_id).w
		bne.s	loc_632F8
		move.l	#Sprite_OnScreen_Test,(a0)
		move.w	#-$7AD8,$A(a0)
		movea.w	$46(a0),a1
		move.w	$48(a1),$48(a0)

loc_632F8:
		lea	(ArtKosM_MHZKnuxSwitch).l,a1
		move.w	#-$5B00,d2
		jmp	(Queue_Kos_Module).l
; ---------------------------------------------------------------------------

loc_63308:
		movea.w	$46(a0),a1
		clr.b	$22(a0)
		cmpi.b	#2,$22(a1)
		bne.s	loc_6331E
		move.b	#1,$22(a0)

loc_6331E:
		jmp	(Child_Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_63324:
		lea	ObjDat3_6646E(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#loc_63372,(a0)
		jsr	(Random_Number).l
		andi.w	#$1FF,d0
		cmpi.w	#$140,d0
		blo.s	loc_6334A
		andi.w	#$3F,d0
		lsl.w	#2,d0

loc_6334A:
		move.w	(Camera_X_pos_copy).w,d1
		add.w	d0,d1
		move.w	d1,$10(a0)
		move.w	(Camera_Y_pos_copy).w,d1
		addi.w	#$E8,d1
		move.w	d1,$14(a0)
		moveq	#0,d1
		movea.w	$46(a0),a1
		move.b	$39(a1),d1
		add.w	d1,d1
		neg.w	d1
		move.w	d1,$1A(a0)

loc_63372:
		move.w	$1A(a0),d0
		add.w	d0,$14(a0)
		move.w	(Camera_Y_pos).w,d0
		subq.w	#8,d0
		cmp.w	$14(a0),d0
		bhs.w	loc_62158
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_6338E:
		lea	(Player_1).w,a1
		tst.b	subtype(a0)
		beq.s	loc_6339C
		lea	(Player_2).w,a1

loc_6339C:
		move.l	#loc_633D6,(a0)
		move.w	a1,$44(a0)
		move.w	#-$1000,$1A(a0)
		move.w	$10(a1),$10(a0)
		move.w	$14(a1),$14(a0)
		move.b	#-$7F,$2E(a1)
		move.b	#$F,$20(a1)
		bclr	#1,4(a1)
		bset	#7,$A(a1)
		st	(Fast_V_scroll_flag).w
		rts
; ---------------------------------------------------------------------------

loc_633D6:
		moveq	#sfx_LeafBlower,d0
		jsr	(sub_85E52).l
		jsr	(MoveSprite_LightGravity).l
		movea.w	$44(a0),a1
		move.w	$10(a0),$10(a1)
		move.w	$14(a0),$14(a1)
		tst.w	$1A(a0)
		bmi.w	locret_6206C
		clr.b	(Ctrl_1_locked).w
		clr.b	(Ctrl_2_locked).w
		clr.w	(Ctrl_1_logical).w
		clr.w	(Ctrl_2_logical).w
		clr.b	$2E(a1)
		bclr	#7,$A(a1)
		clr.b	$20(a1)
		move.w	#$10,$1C(a1)
		clr.b	(Fast_V_scroll_flag).w
		clr.b	(Events_bg+$16).w
		move.b	#7,(Last_star_post_hit).w
		move.w	#$52A,(Saved_X_pos).w
		move.w	#$5AC,(Saved_Y_pos).w
		jsr	(Save_Level_Data).l
		jmp	(Delete_Current_Sprite).l
; ---------------------------------------------------------------------------

CutsceneKnux_SKIntro:
		cmpi.b	#2,(Player_1+character_id).w
		bne.w	loc_62158
		tst.b	(Last_star_post_hit).w
		bne.w	loc_62158
		tst.w	(SK_alone_flag).w
		beq.w	loc_62158
		move.l	#loc_63466,(a0)

loc_63466:
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_63486(pc,d0.w),d1
		jsr	off_63486(pc,d1.w)
		move.w	$42(a0),d0
		move.w	off_63494(pc,d0.w),d0
		jsr	off_63494(pc,d0.w)
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
off_63486:	dc.w loc_634CA-off_63486
		dc.w loc_63526-off_63486
		dc.w loc_63562-off_63486
		dc.w loc_6358E-off_63486
		dc.w loc_635C8-off_63486
		dc.w loc_635F6-off_63486
		dc.w loc_63620-off_63486
off_63494:	dc.w loc_6349A-off_63494
		dc.w loc_634AC-off_63494
		dc.w loc_634B8-off_63494
; ---------------------------------------------------------------------------

loc_6349A:
		move.l	#Map_KnuxIntroLay,$C(a0)
		lea	DPLCPtr_6667A(pc),a2
		jmp	(Perform_DPLC).l
; ---------------------------------------------------------------------------

loc_634AC:
		move.l	#Map_Knuckles,$C(a0)
		bra.w	Knuckles_Load_PLC_6618A
; ---------------------------------------------------------------------------

loc_634B8:
		move.l	#Map_HPZKnucklesGrab,$C(a0)
		lea	DPLCPtr_66682(pc),a2
		jmp	(Perform_DPLC).l
; ---------------------------------------------------------------------------

loc_634CA:
		lea	ObjDat4_663DE(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		move.w	#$EF,$2E(a0)
		move.b	#-$7D,(Player_1+object_control).w
		move.w	#$560,(Camera_X_pos).w
		move.w	#$948,(Camera_Y_pos).w
		st	(Scroll_lock).w
		move.l	(V_int_run_count).w,(RNG_seed).w
		clr.b	(Level_started_flag).w
		jsr	(Create_New_Sprite).l
		bne.s	loc_63508
		move.l	#loc_63682,(a1)

loc_63508:
		lea	ChildObjDat_66656(pc),a2
		jsr	(CreateChild6_Simple).l
		lea	(Pal_SKIntroBomb).l,a1
		lea	(Target_palette_line_2).w,a2
		moveq	#7,d6

loc_6351E:
		move.l	(a1)+,(a2)+
		dbf	d6,loc_6351E
		rts
; ---------------------------------------------------------------------------

loc_63526:
		btst	#0,(_unkFAB8).w
		bne.s	loc_6354C
		subq.w	#1,$2E(a0)
		bne.s	loc_63542
		jsr	(Create_New_Sprite).l
		bne.s	loc_63542
		move.l	#loc_63790,(a1)

loc_63542:
		lea	byte_668C3(pc),a1
		jmp	(Animate_RawNoSST).l
; ---------------------------------------------------------------------------

loc_6354C:
		move.b	#4,routine(a0)
		move.b	#4,$22(a0)
		lea	byte_668C7(pc),a1
		jmp	(Set_Raw_Animation).l
; ---------------------------------------------------------------------------

loc_63562:
		btst	#1,(_unkFAB8).w
		bne.s	loc_63570
		jmp	(Animate_RawMultiDelay).l
; ---------------------------------------------------------------------------

loc_63570:
		move.b	#6,routine(a0)
		move.w	#2,$42(a0)
		move.b	#-$73,$22(a0)
		move.w	#-$100,$18(a0)
		move.w	#-$100,$1A(a0)

loc_6358E:
		btst	#2,(_unkFAB8).w
		bne.s	loc_635A2
		addi.w	#8,$1A(a0)
		jmp	(MoveSprite2).l
; ---------------------------------------------------------------------------

loc_635A2:
		move.b	#8,routine(a0)
		move.w	#4,$42(a0)
		move.b	#3,$22(a0)
		subq.w	#8,$14(a0)
		move.b	#$13,$1E(a0)
		move.w	#-$100,$18(a0)
		clr.w	$1A(a0)

loc_635C8:
		jsr	(MoveSprite_LightGravity).l
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.w	locret_6206C
		add.w	d1,$14(a0)
		move.b	#$A,routine(a0)
		move.l	#loc_635FC,$34(a0)
		lea	byte_668D0(pc),a1
		jmp	(Set_Raw_Animation).l
; ---------------------------------------------------------------------------

loc_635F6:
		jmp	(Animate_RawMultiDelay).l
; ---------------------------------------------------------------------------

loc_635FC:
		move.b	#$C,routine(a0)
		move.w	#2,$42(a0)
		move.b	#7,$22(a0)
		clr.w	$18(a0)
		clr.w	$1A(a0)
		lea	byte_6682F(pc),a1
		jmp	(Set_Raw_Animation).l
; ---------------------------------------------------------------------------

loc_63620:
		move.w	$18(a0),d0
		addi.w	#$C,d0
		cmpi.w	#$400,d0
		bhi.s	loc_63632
		move.w	d0,$18(a0)

loc_63632:
		jsr	(MoveSprite2).l
		jsr	(Animate_RawCheckResult).l
		move.w	(Camera_X_pos).w,d0
		addi.w	#$180,d0
		cmp.w	$10(a0),d0
		bhs.w	locret_6206C

loc_6364E:
		move.b	#1,(Last_star_post_hit).w
		move.w	#$6F4,(Saved_X_pos).w
		move.w	#$9EC,(Saved_Y_pos).w
		jsr	(Save_Level_Data).l
		clr.l	(Saved_timer).w
		move.w	#$700,d0
		move.w	d0,(Current_zone_and_act).w
		move.w	d0,(Apparent_zone_and_act).w
		move.w	#1,(Restart_level_flag).w
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------

loc_63682:
		btst	#7,(Ctrl_1_pressed).w
		bne.s	loc_6364E
		btst	#7,(Ctrl_2_pressed).w
		bne.s	loc_6364E
		rts
; ---------------------------------------------------------------------------

loc_63694:
		moveq	#0,d0
		move.b	subtype(a0),d0
		move.w	word_636F4(pc,d0.w),$10(a0)
		move.w	#$9F4,$14(a0)
		moveq	#0,d1
		cmpi.w	#8,d0
		blo.s	loc_636B0
		moveq	#4,d1

loc_636B0:
		move.l	word_63704(pc,d1.w),$3A(a0)
		lea	off_6370C(pc),a1
		move.b	#$C,$1E(a0)
		andi.w	#2,d0
		beq.s	loc_636D0
		adda.w	#$A,a1
		move.b	#$A,$1E(a0)

loc_636D0:
		move.l	(a1)+,(a0)
		move.l	(a1)+,$C(a0)
		move.w	(a1)+,$A(a0)
		bset	#2,4(a0)
		move.w	#$200,8(a0)
		move.b	#$10,7(a0)
		move.b	#$10,6(a0)
		rts
; ---------------------------------------------------------------------------
word_636F4:	dc.w $5F0
		dc.w $600
		dc.w $610
		dc.w $620
		dc.w $660
		dc.w $670
		dc.w $680
		dc.w $690
word_63704:	dc.w $5E8
		dc.w $628
		dc.w $658
		dc.w $698
off_6370C:	dc.l loc_63720
		dc.l Map_Animals2
		dc.w $580
		dc.l loc_63750
		dc.l Map_Animals1
		dc.w $592
; ---------------------------------------------------------------------------

loc_63720:
		jsr	(MoveSprite).l
		move.b	#1,$22(a0)
		tst.w	$1A(a0)
		bmi.s	loc_6374A
		move.b	#0,$22(a0)
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.s	loc_6374A
		add.w	d1,$14(a0)
		bsr.w	sub_65E02

loc_6374A:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_63750:
		jsr	(MoveSprite2).l
		addi.w	#$18,$1A(a0)
		tst.w	$1A(a0)
		bmi.s	loc_63774
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.s	loc_63774
		add.w	d1,$14(a0)
		bsr.w	sub_65E02

loc_63774:
		subq.b	#1,$24(a0)
		bpl.s	loc_6378A
		move.b	#1,$24(a0)
		addq.b	#1,$22(a0)
		andi.b	#1,$22(a0)

loc_6378A:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_63790:
		lea	ObjDat3_66486(pc),a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#loc_637EC,(a0)
		move.b	#$10,$1E(a0)
		move.w	(Camera_X_pos).w,d0
		addi.w	#$A0,d0
		move.w	d0,$10(a0)
		move.w	(Camera_Y_pos).w,d0
		subi.w	#$40,d0
		move.w	d0,$14(a0)
		moveq	#sfx_MissileThrow,d0
		jsr	(Play_Sound_2).l
		lea	ChildObjDat_6665C(pc),a2
		jsr	(CreateChild1_Normal).l
		lea	(PLC_BossExplosion).l,a1
		jsr	(Load_PLC_Raw).l
		lea	(ArtKosM_KnuxIntroBomb).l,a1
		move.w	#-$5A40,d2
		jmp	(Queue_Kos_Module).l
; ---------------------------------------------------------------------------

loc_637EC:
		jsr	(MoveSprite).l
		tst.b	4(a0)
		bpl.s	loc_63840
		tst.w	$1A(a0)
		bmi.s	loc_63840
		jsr	(ObjCheckFloorDist).l
		tst.w	d1
		bpl.s	loc_63840
		add.w	d1,$14(a0)
		bset	#0,(_unkFAB8).w
		moveq	#sfx_FloorThump,d0
		jsr	(Play_Sound_2).l
		move.w	$1A(a0),d0
		asr.w	#2,d0
		neg.w	d0
		move.w	d0,$1A(a0)
		cmpi.w	#-$100,d0
		blt.s	loc_63840
		move.l	#loc_63846,(a0)
		move.w	#$77,$2E(a0)
		moveq	#mus_FadeOut,d0
		jsr	(Play_Sound).l

loc_63840:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_63846:
		subq.w	#1,$2E(a0)
		bpl.s	loc_6389C
		move.l	#loc_638A2,(a0)
		bset	#7,$2A(a0)
		bset	#1,(_unkFAB8).w
		moveq	#sfx_MissileExplode,d0
		jsr	(Play_Sound_2).l
		lea	(Normal_palette).w,a1
		lea	(Target_palette).w,a2
		moveq	#7,d6

loc_63870:
		move.l	(a1)+,(a2)+
		dbf	d6,loc_63870
		jsr	(Create_New_Sprite).l
		bne.s	loc_6389C
		move.w	a1,$44(a0)
		move.l	#loc_85E64,(a1)
		move.w	#7,$3A(a1)
		st	$2C(a1)
		lea	ChildObjDat_66650(pc),a2
		jsr	(CreateChild6_Simple).l

loc_6389C:
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_638A2:
		movea.w	$44(a0),a1
		btst	#5,$38(a1)
		beq.w	locret_6206C
		bset	#2,(_unkFAB8).w
		jsr	(Create_New_Sprite).l
		bne.s	loc_638C4
		move.l	#loc_639C8,(a1)

loc_638C4:
		lea	(Pal_SSZ1).l,a1
		lea	(Target_palette_line_2).w,a2
		moveq	#7,d6

loc_638D0:
		move.l	(a1)+,(a2)+
		dbf	d6,loc_638D0
		jmp	(Go_Delete_Sprite).l
; ---------------------------------------------------------------------------

loc_638DC:
		move.l	#loc_638EC,(a0)
		lea	word_66492(pc),a1
		jmp	(SetUp_ObjAttributes3).l
; ---------------------------------------------------------------------------

loc_638EC:
		lea	byte_66905(pc),a1
		jsr	(Animate_RawNoSST).l
		jsr	(Refresh_ChildPosition).l
		move.b	(V_int_run_count+3).w,d0
		andi.b	#7,d0
		bne.s	loc_63910
		lea	ChildObjDat_66664(pc),a2
		jsr	(CreateChild6_Simple).l

loc_63910:
		jmp	(Child_Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_63916:
		lea	word_66498(pc),a1
		jsr	(SetUp_ObjAttributes3).l
		move.l	#loc_63946,(a0)
		move.l	#Go_Delete_Sprite,$34(a0)
		jsr	(Random_Number).l
		andi.w	#$7F,d0
		subi.w	#$3F,d0
		move.w	d0,$18(a0)
		move.w	#-$100,$1A(a0)

loc_63946:
		jsr	(MoveSprite2).l
		lea	byte_6690B(pc),a1
		jsr	(Animate_RawNoSST).l
		jmp	(Child_Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_6395C:
		lea	(ObjDat_BossExplosion1).l,a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#Go_Delete_Sprite,$34(a0)
		moveq	#sfx_Explode,d0
		jsr	(Play_Sound_2).l
		moveq	#0,d0
		move.b	subtype(a0),d0
		lea	byte_639A2(pc,d0.w),a1
		lsr.w	#1,d0
		move.w	d0,$2E(a0)
		move.b	(a1)+,d0
		ext.w	d0
		add.w	d0,$10(a0)
		move.b	(a1)+,d0
		ext.w	d0
		add.w	d0,$14(a0)
		lea	(loc_639B6).l,a1
		move.l	a1,(a0)
		jmp	(a1)
; ---------------------------------------------------------------------------
byte_639A2:	dc.b 0
		dc.b 0
		dc.b 8
		dc.b $F8
		dc.b $FA
		dc.b $F4
		dc.b $F6
		dc.b 4
		dc.b 8
		dc.b $A
		dc.b 0
		dc.b $18
		dc.b 8
		dc.b $E8
		dc.b $F4
		dc.b $E0
		dc.b $EA
		dc.b $FC
		dc.b $18
		dc.b 0
; ---------------------------------------------------------------------------

loc_639B6:
		subq.w	#1,$2E(a0)
		bpl.w	locret_6206C
		lea	(Obj_BossExplosionAnim).l,a1
		move.l	a1,(a0)
		jmp	(a1)
; ---------------------------------------------------------------------------

loc_639C8:
		lea	(ObjDat3_919A6).l,a1
		jsr	(SetUp_ObjAttributes).l
		move.l	#loc_63A16,(a0)
		move.w	(Camera_X_pos).w,d0
		addi.w	#$110,d0
		move.w	d0,$10(a0)
		move.w	(Camera_Y_pos).w,d0
		subi.w	#$60,d0
		move.w	d0,$14(a0)
		moveq	#mus_EndBoss,d0
		jsr	(Play_Sound).l
		lea	(ChildObjDat_919D0).l,a2
		jsr	(CreateChild1_Normal).l
		lea	(ArtKosM_EggRoboBadnik).l,a1
		move.w	#-$6000,d2
		jmp	(Queue_Kos_Module).l
; ---------------------------------------------------------------------------

loc_63A16:
		addq.w	#1,$14(a0)
		move.w	(Camera_Y_pos).w,d0
		addi.w	#$40,d0
		cmp.w	$14(a0),d0
		bge.s	loc_63A3A
		move.l	#loc_63A46,(a0)
		move.w	#$7F,$2E(a0)
		jsr	(Swing_Setup1).l

loc_63A3A:
		jsr	(sub_91988).l
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------

loc_63A46:
		subq.w	#1,$2E(a0)
		bne.s	loc_63A52
		move.w	#$400,$18(a0)

loc_63A52:
		jsr	(Swing_UpAndDown).l
		jsr	(MoveSprite2).l
		jsr	(sub_91988).l
		jmp	(Sprite_CheckDelete).l
; ---------------------------------------------------------------------------

CutsceneKnux_LRZ2:
		cmpi.b	#2,(Player_1+character_id).w
		beq.w	loc_62158
		moveq	#0,d0
		move.b	routine(a0),d0
		move.w	off_63A8C(pc,d0.w),d1
		jsr	off_63A8C(pc,d1.w)
		bsr.w	Knuckles_Load_PLC_661E0
		jmp	(Draw_Sprite).l
; ---------------------------------------------------------------------------
off_63A8C:	dc.w loc_63A96-off_63A8C
		dc.w loc_63ACA-off_63A8C
		dc.w loc_63AE8-off_63A8C
		dc.w loc_63B10-off_63A8C
		dc.w locret_63B20-off_63A8C
; ---------------------------------------------------------------------------

loc_63A96:
		lea	ObjDat4_663BA(pc),a1
		jsr	(SetUp_ObjAttributesSlotted).l
		bset	#0,4(a0)
		move.l	#Map_Knuckles,$C(a0)
		move.b	#$56,$22(a0)
		move.w	#$3A38,$10(a0)
		move.w	#$EC,$14(a0)
		lea	Pal_CutsceneKnux1(pc),a1
		jmp	(PalLoad_Line1).l
; ---------------------------------------------------------------------------

loc_63ACA:
		btst	#1,(_unkFAB8).w
		beq.w	locret_6206C
		move.b	#4,routine(a0)
		move.b	#-$22,$22(a0)
		move.l	#loc_63AF2,$34(a0)

loc_63AE8:
		lea	word_66891(pc),a1
		jmp	(Animate_Raw2NoSSTMultiDelay).l
; ---------------------------------------------------------------------------

loc_63AF2:
		move.b	#6,routine(a0)
		bset	#2,(_unkFAB8).w
		move.l	#loc_63B1A,$34(a0)
		lea	word_668A7(pc),a1
		jmp	(Set_Raw_Animation).l
; ---------------------------------------------------------------------------

loc_63B10:
		lea	word_668A7(pc),a1
		jmp	(Animate_Raw2NoSSTMultiDelay).l
; ---------------------------------------------------------------------------

loc_63B1A:
		move.b	#8,routine(a0)

locret_63B20:
		rts
; ---------------------------------------------------------------------------