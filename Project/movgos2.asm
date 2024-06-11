

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc movgos2
		push dx
	push cx
	push bx
	push ax
	
	mov al,[ballx]
	cmp [gostx2],al
	jb @@right
	cmp [gostx2],al
	ja @@left
	jmp @@potion_y
	
	@@right:
	call gost_r2
	call gostwa2
	call plase2g
	call walls
	jmp @@potion_y
	
	@@left:
	call gost_l2
	call gostwa2
	call plase2g
	call walls
	
	@@potion_y:
	mov al,[bally]
	cmp [gosty2],al
	ja @@up
	cmp [gosty2],al
	jb @@done
	jmp @@the_end
	
	@@up:
	call gost_u2
	call gostwa2
	call plase2g
	call walls
	jmp @@the_end
	
	@@done:
	call gost_d2
	call gostwa2
	call plase2g
	call walls
	
	@@the_end:
	
	
	
	pop ax
	   pop bx
	   pop cx
	   pop dx
	
     ret ; Return to O/S - Last instruction

	 endp movgos2
	 
	 gostx2 db 39
	 gosty2 db 11
	 potion_gost2 db 0
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

