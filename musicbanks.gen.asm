; ------------------------------------------------------------------------------
; Music bank 1
; ------------------------------------------------------------------------------
SndMus1_Start:	startBank

Mus_WT2:	include "sound/music/Mega Man The Wily Wars/Wily Tower Stage 2.asm" ; $6A70 bytes
Mus_TFIVCountDown:	include "sound/music/Thunder Force IV/Count Down.asm" ; $1505 bytes

	finishBank

; ------------------------------------------------------------------------------
; Music bank 2
; ------------------------------------------------------------------------------
SndMus2_Start:	startBank

Mus_MetalSquad:	include "sound/music/Thunder Force IV/Metal Squad.asm" ; $6227 bytes
Mus_TanTanTaTaTaTan:	include "sound/music/Thunder Force IV/Tan Tan Ta Ta Ta Tan.asm" ; $1A17 bytes
Mus_2PResult:	BINCLUDE "sound/music/S2/Results screen 2p_cmp.bin" ; $3B4 bytes

	finishBank

; ------------------------------------------------------------------------------
; Music bank 3
; ------------------------------------------------------------------------------
SndMus3_Start:	startBank

Mus_DL:	include "sound/music/Ristar/Dancing Leaves.asm" ; $5B55 bytes
Mus_MM3Title:	include "sound/music/Mega Man 3/Title Loop.asm" ; $2262 bytes
Mus_HPZ:	BINCLUDE "sound/music/S2/HPZ_cmp.bin" ; $207 bytes

	finishBank

; ------------------------------------------------------------------------------
; Music bank 4
; ------------------------------------------------------------------------------
SndMus4_Start:	startBank

Mus_WM:	include "sound/music/Mega Man The Wily Wars/Mega Man 2/WoodMan.asm" ; $4600 bytes
Mus_DontGoOff:	include "sound/music/Thunder Force IV/Don't Go Off.asm" ; $2559 bytes
Mus_AllDayLong:	include "sound/music/Thunder Force III/The Wind Blew All Day Long.asm" ; $10A7 bytes
Mus_OOZ:	BINCLUDE "sound/music/S2/OOZ_cmp.bin" ; $3D5 bytes

	finishBank

; ------------------------------------------------------------------------------
; Music bank 5
; ------------------------------------------------------------------------------
SndMus5_Start:	startBank

Mus_MM3Boss:	include "sound/music/Mega Man The Wily Wars/Mega Man 3/Boss Theme.asm" ; $4479 bytes
Mus_NT:	include "sound/music/Pulseman/Neo Tokyo.asm" ; $21F8 bytes
Mus_Credits:	include "sound/music/S2/Credits.asm" ; $16E0 bytes
Mus_GameOver:	include "sound/music/S2/Game over.asm" ; $14F bytes
Mus_Countdown:	BINCLUDE "sound/music/S2/Drowning_cmp.bin" ; $11F bytes

	finishBank

; ------------------------------------------------------------------------------
; Music bank 6
; ------------------------------------------------------------------------------
SndMus6_Start:	startBank

Mus_UM:	include "sound/music/Ristar/Under Magma.asm" ; $3D17 bytes
Mus_SR:	include "sound/music/Ristar/Shooting Ristar.asm" ; $3C30 bytes
Mus_EGHZ:	BINCLUDE "sound/music/GHZ with EHZ voices_cmp.bin" ; $5BA bytes
Mus_Emerald:	BINCLUDE "sound/music/S2/Got emerald_cmp.bin" ; $CB bytes

	finishBank

; ------------------------------------------------------------------------------
; Music bank 7
; ------------------------------------------------------------------------------
SndMus7_Start:	startBank

Mus_CM:	include "sound/music/Mega Man & Bass/Cold Man.asm" ; $1E32 bytes
Mus_RM:	include "sound/music/Mega Man & Bass/Robot Museum.asm" ; $1DE1 bytes
Mus_SPASpecStag:	include "sound/music/Other/SPA Special Stage.asm" ; $14FF bytes
Mus_Phantom:	include "sound/music/Thunder Force IV/Phantom.asm" ; $BD0 bytes
Mus_WWGameSel:	include "sound/music/Mega Man The Wily Wars/Game Select.asm" ; $BBF bytes
Mus_Baka:	include "sound/music/Other/Beloved Tomboyish Girl.asm" ; $B24 bytes
Mus_S3DBSpecStage:	include "sound/music/S3DB/Special Stage.asm" ; $AB2 bytes
Mus_ExtraLife:	BINCLUDE "sound/music/Extra life_cmp.bin" ; $B7 bytes

	finishBank

; ------------------------------------------------------------------------------
; Music bank 8
; ------------------------------------------------------------------------------
SndMus8_Start:	startBank

Mus_GHZ:	BINCLUDE "sound/music/Mus81 - GHZ_cmp.bin" ; $5AA bytes
Mus_MR:	BINCLUDE "sound/music/Misty Rain-optimized_cmp.bin" ; $590 bytes
Mus_EHZ:	BINCLUDE "sound/music/S2/EHZ_cmp.bin" ; $518 bytes
Mus_Ending:	BINCLUDE "sound/music/S2/Ending_cmp.bin" ; $4E8 bytes
Mus_CNZ:	BINCLUDE "sound/music/S2/CNZ_cmp.bin" ; $4E1 bytes
Mus_Jungle:	BINCLUDE "sound/music/Stage 2 - Jungle_cmp.bin" ; $491 bytes
Mus_MCZ:	BINCLUDE "sound/music/S2/MCZ_cmp.bin" ; $428 bytes
Mus_MTZ:	BINCLUDE "sound/music/S2/MTZ_cmp.bin" ; $37D bytes
Mus_DEZ:	BINCLUDE "sound/music/S2/DEZ_cmp.bin" ; $37B bytes
Mus_HTZ:	BINCLUDE "sound/music/S2/HTZ_cmp.bin" ; $35E bytes
Mus_S3KEndLevel:	BINCLUDE "sound/music/Level Outro_cmp.bin" ; $351 bytes
Mus_WFZ:	BINCLUDE "sound/music/S2/WFZ_cmp.bin" ; $348 bytes
Mus_SCZ:	BINCLUDE "sound/music/S2/SCZ_cmp.bin" ; $326 bytes
Mus_ChoosePlayer:	BINCLUDE "sound/music/SMB2 Character Select_cmp.bin" ; $310 bytes

	finishBank

