; ==============================================================================================================
; DynWater - ROM effecient water palettes that load on the fly!
;
; Created by BunniDev
; Fixes, tweaks, and suggestions from Gemini0 and ProjectFM
;
; Created on August 10, 2021 10:00 PM PST
; Finalized on August 12, 2021, 08:01 AM PST
;
; Note this needs 2 free words of RAM for the addition and subtraction values
; I tried to make this as effecient as possible since it needs to run every frame or so
;
; To set this up place
;       bsr.w   loadWaterShift
; Somewhere in level initialization, and
;       bsr.w   updateWaterShift
; This somewhere in a routine that will run every frame
; ==============================================================================================================

; --------------------------------------------------
; Initial palette shift loading
; Only run this at level start!
; --------------------------------------------------

loadWaterShift:
		moveq	#0,d0
		move.b  (Current_Zone).w,d0   ; Thanks ProjectFM for figuring out this table loading stuff
		add.w   d0,d0
		add.w   d0,d0
		add.b   (Current_Act).w,d0
		add.w   d0,d0
		move.w	waterAddTable(pc,d0.w),d1	; Load the addition table into d1 relative to the zone and act
		move.w	d1,(waterAddValue).w
		move.w	waterSubTable(pc,d0.w),d1	; Load the subtraction table intod d1 relative to the zone and act
		move.w	d1,(waterSubValue).w
		bra.w	updateWaterShift	; This will actually update the water palette


; Table of color values to add to the palette (Make it more of the color)
waterAddTable: zoneOrderedTable 2,2
;							Act1  Act2
		zoneTableEntry.w	$000, $000 ; EHZ
		zoneTableEntry.w	$040, $040 ; Zone 1
		zoneTableEntry.w	$000, $000 ; WZ
		zoneTableEntry.w	$000, $000 ; Zone 3
		zoneTableEntry.w	$000, $000 ; MTZ
		zoneTableEntry.w	$000, $000 ; MTZ
		zoneTableEntry.w	$000, $000 ; WFZ
		zoneTableEntry.w	$000, $000 ; HTZ
		zoneTableEntry.w	$000, $000 ; HPZ
		zoneTableEntry.w	$000, $000 ; Zone 9
		zoneTableEntry.w	$000, $000 ; OOZ
		zoneTableEntry.w	$000, $000 ; MCZ
		zoneTableEntry.w	$000, $000 ; CNZ
		zoneTableEntry.w	$000, $000 ; CPZ
		zoneTableEntry.w	$000, $000 ; DEZ
		zoneTableEntry.w	$000, $000 ; ARZ
		zoneTableEntry.w	$000, $000 ; SCZ
		zoneTableEnd

; Table of color values to subtract from the palette (Make it less of the color)
waterSubTable: zoneOrderedTable 2,2
;							Act1  Act2
		zoneTableEntry.w	$000, $000 ; EHZ
		zoneTableEntry.w	$006, $006 ; Zone 1
		zoneTableEntry.w	$000, $000 ; WZ
		zoneTableEntry.w	$000, $000 ; Zone 3
		zoneTableEntry.w	$000, $000 ; MTZ
		zoneTableEntry.w	$000, $000 ; MTZ
		zoneTableEntry.w	$000, $000 ; WFZ
		zoneTableEntry.w	$000, $000 ; HTZ
		zoneTableEntry.w	$000, $000 ; HPZ
		zoneTableEntry.w	$000, $000 ; Zone 9
		zoneTableEntry.w	$000, $000 ; OOZ
		zoneTableEntry.w	$000, $000 ; MCZ
		zoneTableEntry.w	$000, $000 ; CNZ
		zoneTableEntry.w	$000, $000 ; CPZ
		zoneTableEntry.w	$000, $000 ; DEZ
		zoneTableEntry.w	$000, $000 ; ARZ
		zoneTableEntry.w	$000, $000 ; SCZ
		zoneTableEnd

; --------------------------------------------------
; Updating water palette
; Run this every frame (Necessary for palette cycles)
; --------------------------------------------------

; Here's a list of registers to help you keep track of what is what
; a1 - Above water palette
; a2 - Underwater palette
; d0 - Red additional value
; d1 - Green additional value
; d2 - Blue additional value
; d3 - Red subtraction value
; d4 - Green subtraction value
; d5 - Blue subtraction value
; d6 - Loop value
; d7 - General register for storing color values temporarily

updateWaterShift:
		tst.w	(waterAddValue).w
		bne.s	.continue
		tst.w	(waterSubValue).w
		beq.w	waterShiftEnd

	.continue:
		lea     (Normal_palette).w,a1
		lea     (Underwater_palette).w,a2
		moveq   #$3F,d6 ; We're covering the entire palette, including the transparent colors because of MD's color 0
		move.w  (waterAddValue).w,d7
		move.w  d7,d0   ; Red addition value
		move.w  d7,d1   ; Green addition value
		move.w  d7,d2   ; Blue addition value
		and.w  #$00E,d0	; Get only the red value
		and.w  #$0E0,d1	; Get only the green value
		and.w  #$E00,d2	; Get only the blue value
		move.w  (waterSubValue).w,d7
		move.w  d7,d3	; Red subtraction value
		move.w  d7,d4	; Green subtraction value
		move.w  d7,d5	; Blue subtraction value
		and.w  #$00E,d3	; Get only the red value
		and.w  #$0E0,d4	; Get only the green value
		and.w  #$E00,d5	; Get only the blue value

	.redWhite:
		move.w  (a1),d7	; Move the current color we're working on from the normal palette into d0 (We don't want to modify the normal palette directly)
		andi.w  #$E,d7	; Get only the red value from that color
		add.w   d0,d7	; Add our desired additional red shift value
		cmpi.w  #$E,d7	; Check if it's already at the max red value
		bls.s   .redBlack	; If it's less than that, continue on
		moveq   #$E,d7	; If it is 0xE or higher, force it to be 0xE to prevent errors

	.redBlack:
		sub.w   d3,d7	; Subtract our desired subtractive red shift value
		bcc.s   .greenWhite	; If it's still above 0, continue on
		moveq   #0,d7	; If it's 0 or lower, force it to be 0 to prevent errors

	.greenWhite:
		move.w	d7,-(sp)	; We'll store our modified color values in the stack when we're done with them
		move.w  (a1),d7	; Set up the normal color again
		andi.w  #$E0,d7	; Get only the green value from that color
		add.w   d1,d7   ; Add the desired color shift to the palette
		cmpi.w  #$E0,d7	; Check if it's already at the max green value
		bls.s   .greenBlack	; If it's less than that, continue on
		move.w   #$E0,d7	; If it is 0xE or higher, force it to be 0xE to prevent errors

	.greenBlack:
		sub.w   d4,d7	; Subtract our desired subtractive green shift value
		bcc.s   .blueWhite	; If it's still above 0, contine on
		moveq   #0,d7	; If it's 0 or lower, force it to be 0 to prevent errors

	.blueWhite:
		add.w   d7,(sp)	; Add our green value to the modified color
		move.w  (a1)+,d7	; Set up the normal color again
		andi.w  #$E00,d7	; Get only the blue value from that color
		add.w   d2,d7	; Add our desired additional blue shift value
		cmpi.w  #$E00,d7	; Check if it's already at the max blue value
		bls.s   .blueBlack	; If it's less than that, continue on
		move.w  #$E00,d7	; If it is 0xE or heigher, force it to be 0xE to prevent errors

	.blueBlack:
		sub.w   d5,d7	; Subtract our desired subtractive blue shift value
		bcc.s   .updatePalette	; If it's still above 0, continue on
		moveq   #0,d7	; If it;s 0 or lower, force it to be 0 to prevent errors

	.updatePalette:
		add.w   (sp)+,d7	; This will add the now modified red and green values to the modified blue value in d7. It's kinda weird but it makes sense
		move.w  d7,(a2)+	; Now place our shifted color into the water palette and advance to the next entry.
		dbf	d6,.redWhite	; Loop until we fill the whole palette

waterShiftEnd:
		rts
; ==============================================================================================================