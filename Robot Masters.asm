; ----------------------------------------------------------------------------
; Object 59 - Decorative Robot Masters, for a lot of levels.
; ----------------------------------------------------------------------------
; Sprite_15CC8:
Obj59:
	moveq	#0,d0
	move.b	routine(a0),d0
	move.w	Obj59_Index(pc,d0.w),d1
	jmp	Obj59_Index(pc,d1.w)
; ===========================================================================
; off_15CD6:
Obj59_Index:	offsetTable
		offsetTableEntry.w Obj59_Init	; 0
		offsetTableEntry.w Obj59_Main	; 2
; ===========================================================================
; loc_15CDA:
Obj59_Init:
	addq.b	#2,routine(a0)
; Zone checks
	cmpi.b	#aquatic_ruin_zone,(Current_Zone).w ; ARZ
	bne.s	.wz
	move.l	#Map_FreezeMan,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtNem_LeverSpring,0,0),art_tile(a0)
	bra.s	.cont
.wz:
	move.l	#Map_WoodMan,mappings(a0)
	move.w	#make_art_tile(ArtTile_ArtNem_Coconuts,0,0),art_tile(a0)
.cont:
	jsr		Adjust2PArtPointer
	move.b	#4,render_flags(a0)
	move.b	#$13,width_pixels(a0)
	move.b	#4,priority(a0)
; loc_15D02:
Obj59_Main:
	move.w	#$1B,d1
	move.w	#$10,d2
	move.w	#$10,d3
	move.w	x_pos(a0),d4
;	bsr.w	SolidObject
	jmp		Obj_DeleteBehindScreen
; ===========================================================================
; -------------------------------------------------------------------------------
; FreezeMan
; -------------------------------------------------------------------------------
Map_FreezeMan: BINCLUDE "mappings/sprite/Freezeman.bin"
	even
ArtNem_FreezeMan: BINCLUDE "art/nemesis/Freezeman.bin"
	even

; -------------------------------------------------------------------------------
; WoodMan
; -------------------------------------------------------------------------------
Map_WoodMan: BINCLUDE "mappings/sprite/Woodman.bin"
	even
ArtNem_WoodMan:	BINCLUDE "art/nemesis/Woodman.bin"
	even
