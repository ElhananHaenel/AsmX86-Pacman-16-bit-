

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc ball
mov dh,1
	mov bx,0
	mov dl,1
	mov ax,0
	mov ah,2
	int 10h
	
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	
	
	
     ret ; Return to O/S - Last instruction

	 endp ball
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

