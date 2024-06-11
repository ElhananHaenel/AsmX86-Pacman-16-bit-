

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc gost_r2
	
	mov [potion_gost2],'h'
	
	call defens2
	
	mov dh,[gosty2]
	mov dl,[gostx2]
	mov bx,0
	mov ax,0
	inc dl;להזיז את הרוח ימינה
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,9
    mov cx,1
    int 10h
	
	
	mov [gostx2],dl
	mov [gosty2],dh
	
	
     ret ; Return to O/S - Last instruction

	 endp gost_r2
	 
	
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

