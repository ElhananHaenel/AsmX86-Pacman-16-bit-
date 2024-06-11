;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc gost_d2

mov [potion_gost2],'j'

call defens2

	mov dh,[gosty2]
	mov dl,[gostx2]
	mov bx,0
	mov ax,0
	inc dh ;להוריד את הרוח
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

	 endp gost_d2
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------