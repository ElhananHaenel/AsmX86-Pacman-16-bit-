;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc kredit

mov dh,12
	mov bx,0
	mov dl,0
	mov ax,0
	mov ah,2
	int 10h


	lea si, [my_string1]
call PRINT_STR
	
	
	mov ah, 86h
	mov cx, 50h
	mov dx, 86a0h
	int 15h

	mov ah,1
	int 16h
	
	 ret ; Return to O/S - Last instruction

	 endp kredit
	 
	 my_string1 db 'Thanks to my teachers: Dov ,Yair and Shaol for their help along the way',0
	 
;--------------------------------------------------------------------------------------
; PRINT_STR
;    Prints a string ending with ascii 0
;    IN:  si - address of string
;    OUT: None
;--------------------------------------------------------------------------------------
proc PRINT_STR
    push ax
    push si
    
@@CHAR_LOOP:
    lodsb
    or   al, al
    jz   @@EXIT
    PUTC al
    jmp  @@CHAR_LOOP

@@EXIT:
    pop  si
    pop  ax
    ret 
endp 
	 
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------