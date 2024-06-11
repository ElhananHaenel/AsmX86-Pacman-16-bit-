;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc gost_u3

mov [potion_gost3],'u'

call defens3

	mov dh,[gosty3]
	mov dl,[gostx3]
	mov bx,0
	mov ax,0
	dec dh ;להעלות את הרוח
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,11
    mov cx,1
    int 10h
	
	
		mov [gostx3],dl
	mov [gosty3],dh
	
	 ret ; Return to O/S - Last instruction

	 endp gost_u3
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------