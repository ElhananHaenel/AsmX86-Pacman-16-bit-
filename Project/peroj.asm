;--------------------------------------------------------------------------------------
; GVAHIM 
; 
; Template program for .COM files 
;--------------------------------------------------------------------------------------


ideal
model tiny
include "c:\gvahim\gvahim.mac"
dataseg

;--------------------------------------------------------------------------------------
; Begin Data definitions
;--------------------------------------------------------------------------------------
counter1 dw 0
pointer db 2000 dup(1)


;--------------------------------------------------------------------------------------
; End   Data definitions 
;--------------------------------------------------------------------------------------


codeseg
org 100h
ENTRY: 

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	
	
	call init
	call kredit
	call point
	call mes
	call walls
	call gost1
	call gost2
	call gost3
	
	call ball
	
	mov cx,35564
	
	loop_1:
	call over
	jz exit
	call over2
	jz exit
	call over3
	jz exit
	call movball
	jz exit; לבדוק האם השחקן רוצה לצאת מהמישחק
	
	call ballmes
	call ballwal
	call counter
	
	
	cmp [counter1], 1579
	je exit
	loop loop_1
	
	call movgos1
	call gostme1
	call gostwa1
	
	call movgos2
	call gostme2
	call gostwa2
	
	call movgos3
	call gostme3
	call gostwa3
	
	
	
	
	
	mov cx,2000
	jmp loop_1
	
	exit:
	call init
	
	ret
	
      ; Return to O/S - Last instruction

;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

include "c:\gvahim\gvahim.asm"
include "mes.asm"
include "ball.asm"
include "movball.asm"
include "ballmes.asm"
include "walls.asm"
include "init.asm"
include "ballwal.asm"
include "done.asm"
include "up.asm"
include "left.asm"
include "right.asm"
include "point.asm"
include "counter.asm"
include "gost1.asm"
include "movgos1.asm"
include "gost_u1.asm"
include "gost_l1.asm"
include "gost_d1.asm"
include "gost_r1.asm"
include "gostme1.asm"
include "gostwa1.asm"
include "defens1.asm"
include "over.asm"
include "gost2.asm"
include "movgos2.asm"
include "gost_u2.asm"
include "gost_l2.asm"
include "gost_d2.asm"
include "gost_r2.asm"
include "gostme2.asm"
include "gostwa2.asm"
include "defens2.asm"
include "over2.asm"
include "gost3.asm"
include "movgos3.asm"
include "gost_u3.asm"
include "gost_l3.asm"
include "gost_d3.asm"
include "gost_r3.asm"
include "gostme3.asm"
include "gostwa3.asm"
include "defens3.asm"
include "over3.asm"
include "plase2g.asm"
include "kredit.asm"


end ENTRY
