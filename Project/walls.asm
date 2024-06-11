

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc walls ;קירות המשחק
	
	push ax 
push bx
push cx
push dx
    
	mov dh,5 ;קיר אופקי (כתום)
	mov bx,0
	mov dl,15
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,6
    mov cx,50
    int 10h
	
	
	
	mov dh,19;קיר אופקי (כתום)
	mov bx,0
	mov dl,15
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,6
    mov cx,50
    int 10h
	
	
	mov dh,7  ; קירות אנכיים (תכלת) 
	mov dl,7
	@@loop_1:
	mov bx,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,3
    mov cx,1
    int 10h
	
	inc dh
	cmp dh,18
	jne @@loop_1
	cmp dl,72
	je @@the_end
	mov dh,7
	mov dl,72
	jmp @@loop_1
	
	@@the_end:
	
	mov dh,12; קיר אופקי (סגול)
	mov bx,0
	mov dl,30
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,5
    mov cx,17
    int 10h
	
	mov dh,9  ;  קיר אנכי (סגול)
	mov dl,38
	@@loop_2:
	mov bx,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,5
    mov cx,1
    int 10h
	
	inc dh
	cmp dh,16
	jne @@loop_2
	
	
	mov dh,12;קיר שמאלי כחול
	mov bx,0
	mov dl,8
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,1
    mov cx,10
    int 10h
	
	mov dh,12;קיר ימני כחול
	mov bx,0
	mov dl,62
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,1
    mov cx,10
    int 10h
	
	
	mov dh,21;למטה אופקי ירוק שמאל
	mov bx,0
	mov dl,2
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,2
    mov cx,7
    int 10h
	
	mov dh,20  ;  למטה אנכי ירוק שמאל
	mov dl,5
	@@loop_3:
	mov bx,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,2
    mov cx,1
    int 10h
	
	inc dh
	cmp dh,23
	jne @@loop_3
	
	
	mov dh,21;למטה אופקי ירוק ימין
	mov bx,0
	mov dl,71
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,2
    mov cx,7
    int 10h
	
	mov dh,20  ;  למטה אנכי ירוק ימין
	mov dl,74
	@@loop_4:
	mov bx,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,2
    mov cx,1
    int 10h
	
	inc dh
	cmp dh,23
	jne @@loop_4
	
	
	mov dh,3;למעלה אופקי ירוק ימין
	mov bx,0
	mov dl,71
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,2
    mov cx,7
    int 10h
	
	mov dh,2  ;  למטה אנכי ירוק ימין
	mov dl,74
	@@loop_5:
	mov bx,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,2
    mov cx,1
    int 10h
	
	inc dh
	cmp dh,5
	jne @@loop_5
	
	mov dh,3;למעלה אופקי ירוק ימין
	mov bx,0
	mov dl,2
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,2
    mov cx,7
    int 10h
	
	mov dh,2 ;למעלה אופקי ירוק שמאל
	mov dl,5
	@@loop_6:
	mov bx,0
	mov ax,0
	mov ah,2
	int 10h
	
	mov al,219
	mov ah,9
	mov bh,0
    mov bl,2
    mov cx,1
    int 10h
	
	inc dh
	cmp dh,5
	jne @@loop_6
	
	
	 pop dx
	   pop cx
	   pop bx
	   pop ax
	
     ret ; Return to O/S - Last instruction

	 endp walls
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

