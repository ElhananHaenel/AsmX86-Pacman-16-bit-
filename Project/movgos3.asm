

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc movgos3
		push dx
	push cx
	push bx
	push ax
	
	mov al,[ballx]
	cmp [gostx3],al
	jb @@right
	cmp [gostx3],al
	ja @@left
	jmp @@potion_y
	
	@@right:
	call gost_r3
	call gostwa3
	call plase2g
	call walls
	jmp @@potion_y
	
	@@left:
	call gost_l3
	call gostwa3
	call plase2g
	call walls
	
	@@potion_y:
	mov al,[bally]
	cmp [gosty3],al
	ja @@up
	cmp [gosty3],al
	jb @@done
	jmp @@the_end
	
	@@up:
	call gost_u3
	call gostwa3
	call plase2g
	call walls
	jmp @@the_end
	
	@@done:
	call gost_d3
	call gostwa3
	call plase2g
	call walls
	
	@@the_end:
	
	
	
	pop ax
	   pop bx
	   pop cx
	   pop dx
	
     ret ; Return to O/S - Last instruction

	 endp movgos3
	 
	 gostx3 db 1
	 gosty3 db 23
	 potion_gost3 db 0
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

