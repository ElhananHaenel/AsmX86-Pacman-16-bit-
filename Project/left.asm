;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc left

	mov dh,[bally]
	mov dl,[ballx]
	mov bx,0
	mov ax,0
	dec dl;להזיז את הפקמן שמאלה
	mov ah,2
	int 10h
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	
	
	 ret ; Return to O/S - Last instruction

	 endp left
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------