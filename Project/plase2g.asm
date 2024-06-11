;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc plase2g

mov al,[gosty1]
cmp al,[gosty2]
jne @@round_2

mov al,[gostx1]
cmp al,[gostx2]
jne @@round_2


	cmp [potion_gost2],'u'
	je @@done
	cmp [potion_gost2],'j'
	je @@up
	cmp [potion_gost2],'h'
	je @@left
	cmp [potion_gost2],'k'
	je @@right
	
@@done:
	
	call gost_d2
	call gostwa2
	jmp @@round_2
	
@@up:
	
	call gost_u2
	call gostwa2
    jmp @@round_2
	
@@right:
	
	call gost_r2
	call gostwa2
	jmp @@round_2
	
	
@@left:
	
	call gost_l2
	call gostwa2
	jmp @@round_2
	
@@round_2:



	mov al,[gosty3]
	cmp al,[gosty2]
	jne @@round_3
	
	mov al,[gostx3]
	cmp al,[gostx2]
	jne @@round_3
	
	@@retern_gost:   ;בודק לאיזה כיוון הפקמן צריך לזוז
	cmp [potion_gost3],'u'
	je @@done3
	cmp [potion_gost3],'j'
	je @@up3
	cmp [potion_gost3],'h'
	je @@left3
	cmp [potion_gost3],'k'
	je @@right3
	
@@done3:
	
	call gost_d3
	call gostwa3
	jmp @@round_3
	
@@up3:
	
	call gost_u3
	call gostwa3
    jmp @@round_3
	
@@right3:
	
	call gost_r3
	call gostwa3
	jmp @@round_3
	
	
@@left3:
	
	call gost_l3
	call gostwa3
	jmp @@round_3
	

	@@round_3:

	mov al,[gosty3]
	cmp al,[gosty1]
	jne @@the_end
	
	mov al,[gostx3]
	cmp al,[gostx1]
	jne @@the_end
	
	
	cmp [potion_gost],'u'
	je @@done1
	cmp [potion_gost],'j'
	je @@up1
	cmp [potion_gost],'h'
	je @@left1
	cmp [potion_gost],'k'
	je @@right1
	
@@done1:
	
	call gost_d1
	call gostwa1
	jmp @@the_end
	
@@up1:
	
	call gost_u1
	call gostwa1
    jmp @@the_end
	
@@right1:
	
	call gost_r1
	call gostwa1
	jmp @@the_end
	
	
@@left1:
	
	call gost_l1
	call gostwa1
	jmp @@the_end
	
@@the_end:






 ret ; Return to O/S - Last instruction

	 endp plase2g