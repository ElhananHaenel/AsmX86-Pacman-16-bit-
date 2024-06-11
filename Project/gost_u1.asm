;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc gost_u1

mov [potion_gost],'u'

call defens1

	mov dh,[gosty1]
	mov dl,[gostx1]
	mov bx,0
	mov ax,0
	dec dh ;להעלות את הרוח
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

	 endp gost_u1
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------