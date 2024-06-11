;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc counter
push ax 
push bx
push cx
push dx
push si

mov ax,0
mov al,[bally]
mov bx,80
mul bx

add al,[ballx]
mov bx,ax
lea si,[pointer]
mov cl,0
cmp [si+bx],cl
je @@the_end

mov [si+bx],cl
inc [counter1]


@@the_end:

mov dh,0
	mov bx,0
	mov dl,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov ax,[counter1]
	call PRINT_NUM_DEC



pop si	
pop dx
pop cx
pop bx
pop ax
	
	 ret ; Return to O/S - Last instruction

endp counter


;--------------------------------------------------------------------------------------
; PRINT_NUM_DEC 
;    Prints a 16 bit register to the screen in base 10
;    IN:  ax
;    OUT: None
;--------------------------------------------------------------------------------------
proc PRINT_NUM_DEC
   push bx
   mov  bx, 10
   call PRINT_NUM_BY_BASE
   pop  bx
   ret
endp


;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------