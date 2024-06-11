

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc movgos1
		push dx
	push cx
	push bx
	push ax
	
	mov al,[ballx]
	cmp [gostx1],al
	jb @@right
	cmp [gostx1],al
	ja @@left
	jmp @@potion_y
	
	@@right:
	call gost_r1
	call gostwa1
	call plase2g
	call walls
	jmp @@potion_y
	
	@@left:
	call gost_l1
	call gostwa1
	call plase2g
	call walls
	
	@@potion_y:
	mov al,[bally]
	cmp [gosty1],al
	ja @@up
	cmp [gosty1],al
	jb @@done
	jmp @@the_end
	
	@@up:
	call gost_u1
	call gostwa1
	call plase2g
	call walls
	jmp @@the_end
	
	@@done:
	call gost_d1
	call gostwa1
	call plase2g
	call walls
	
	@@the_end:
	
	
	
	pop ax
	   pop bx
	   pop cx
	   pop dx
	
     ret ; Return to O/S - Last instruction

	 endp movgos1
	 
	 gostx1 db 37
	 gosty1 db 11
	 potion_gost db 0
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

