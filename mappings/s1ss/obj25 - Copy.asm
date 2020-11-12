; ---------------------------------------------------------------------------
; Sprite mappings - rings
; ---------------------------------------------------------------------------
		dc.w byte_9FA2-Map_SSRing, byte_9FA8-Map_SSRing
		dc.w byte_9FAE-Map_SSRing, byte_9FB4-Map_SSRing
		dc.w byte_9FBA-Map_SSRing, byte_9FC0-Map_SSRing
		dc.w byte_9FC6-Map_SSRing, byte_9FCC-Map_SSRing
byte_9FA2:	dc.b 1
		dc.b $F8, 5, 0,	0, $F8
byte_9FA8:	dc.b 1
		dc.b $F8, 5, 0,	4, $F8
byte_9FAE:	dc.b 1
		dc.b $F8, 1, 0,	8, $FC
byte_9FB4:	dc.b 1
		dc.b $F8, 5, 8,	4, $F8
byte_9FBA:	dc.b 1
		dc.b $F8, 5, 0,	$A, $F8
byte_9FC0:	dc.b 1
		dc.b $F8, 5, $18, $A, $F8
byte_9FC6:	dc.b 1
		dc.b $F8, 5, 8,	$A, $F8
byte_9FCC:	dc.b 1
		dc.b $F8, 5, $10, $A, $F8
		even