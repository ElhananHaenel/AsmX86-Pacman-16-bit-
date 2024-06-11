;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc defens2


push ax 
push bx
push cx
push dx
push si

mov ax,0
mov al,[gosty2]
mov bx,80
mul bx

add al,[gostx2]
mov bx,ax
lea si,[pointer]
mov cl,0
cmp [si+bx],cl
je @@disppair
mov dh,[gosty2]
	mov bx,0
	mov dl,[gostx2]
	mov ax,0
	mov ah,2
	int 10h
	
	
	mov al,248
	mov ah,9
	mov bh,0
    mov bl,15
    mov cx,1
    int 10h

	jmp @@the_end
	
	
@@disppair:

mov dh,[gosty2]
	mov bx,0
	mov dl,[gostx2]
	mov ax,0
	mov ah,2
	int 10h
	
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,0
    mov cx,1
    int 10h



@@the_end:

pop si	
pop dx
pop cx
pop bx
pop ax

 ret ; Return to O/S - Last instruction

	 endp defens2