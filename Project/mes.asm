

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc mes ;מיסגרת המישחק
	

	
	mov dh,0 ;מיסגרת עליונה
	mov bx,0
	mov dl,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,4
    mov cx,80
    int 10h
	
	
	mov dh,24 ;מיסגרת תחתונה
	mov bx,0
	mov dl,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,4
    mov cx,80
    int 10h
	
	mov dh,0 ;מסגרות ימין ושמאל
	mov dl,0
	@@loop_1:
	mov bx,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,4
    mov cx,1
    int 10h
	
	inc dh
	cmp dh,25
	jne @@loop_1
	cmp dl,79
	je @@the_end
	mov dh,0
	mov dl,79
	jmp @@loop_1
	
	@@the_end:
	
     ret ; Return to O/S - Last instruction

	 endp mes
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

