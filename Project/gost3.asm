

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc gost3
mov dh,23
	mov bx,0
	mov dl,1
	mov ax,0
	mov ah,2
	int 10h
	
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,11
    mov cx,1
    int 10h
	
	
	
     ret ; Return to O/S - Last instruction

	 endp gost3
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

