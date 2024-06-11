

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc movball
	
	 
	push dx
	push cx
	push bx
	push ax

	@@round_1:
	mov ah,1
	int 16h
	jz @@the_end_1
	
	
	
	mov ah,0
	int 16h
	
	
	cmp al,'u'
	je @@up
	cmp al,'j'
	je @@done_1
	cmp al,'h'
	je @@left_1
	cmp al,'k'
	jne @@the_end_1
	
	
	;ימינה
	mov [pozishen],al
	
	mov dh,[bally]
	mov bx,0
	mov dl,[ballx]
	mov ax,0
	mov ah,2
	int 10h
	
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,0
    mov cx,1
    int 10h
	
	inc dl
	mov ah,2
	int 10h
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	
	mov [ballx],dl 
	
    jmp @@the_end
	
	@@done_1:
	jmp @@done

	@@left_1:
	jmp @@left
	
	@@the_end_1:
    jmp @@the_end
	
  @@up:	;לעלות
  mov [pozishen],al
  
	mov dh,[bally]
	mov bx,0
	mov dl,[ballx]
	mov ax,0
	mov ah,2
	int 10h
	
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,0
    mov cx,1
    int 10h
	
	dec dh
	mov ah,2
	int 10h
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	
	mov [bally],dh
	jmp @@the_end
	
	
	
	@@done: ;לרדת
	mov [pozishen],al
	
	mov dh,[bally]
	mov bx,0
	mov dl,[ballx]
	mov ax,0
	mov ah,2
	int 10h
	
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,0
    mov cx,1
    int 10h
	
	inc dh
	mov ah,2
	int 10h
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	
	mov [bally],dh
	jmp @@the_end
	
	@@left: ;ללכת שמאלה
	mov [pozishen],al
	
	mov dh,[bally]
	mov bx,0
	mov dl,[ballx]
	mov ax,0
	mov ah,2
	int 10h
	
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,0
    mov cx,1
    int 10h
	
	dec dl
	mov ah,2
	int 10h
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	
	mov [ballx],dl
	jmp @@the_end
	
	@@the_end:
	cmp al,'e' ; לבדוק האם השחקן רוצה לצאת מהמישחק
	
	
	 pop ax
	   pop bx
	   pop cx
	   pop dx
	
     ret ; Return to O/S - Last instruction

	 ballx db 1
	 bally db 1
	 pozishen db 0
	 endp movball
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

