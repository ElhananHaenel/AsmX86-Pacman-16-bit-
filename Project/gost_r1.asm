

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc gost_r1
	
	mov [potion_gost],'h'
	
	call defens1
	
	mov dh,[gosty1]
	mov dl,[gostx1]
	mov bx,0
	mov ax,0
	inc dl;להזיז את הרוח ימינה
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,1
    mov cx,1
    int 10h
	
	
	mov [gostx1],dl
	mov [gosty1],dh
	
	
     ret ; Return to O/S - Last instruction

	 endp gost_r1
	 
	
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

