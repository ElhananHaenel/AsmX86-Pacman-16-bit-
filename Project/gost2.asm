

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc gost2
mov dh,11
	mov bx,0
	mov dl,39
	mov ax,0
	mov ah,2
	int 10h
	
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,9
    mov cx,1
    int 10h
	
	
	
     ret ; Return to O/S - Last instruction

	 endp gost2
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

