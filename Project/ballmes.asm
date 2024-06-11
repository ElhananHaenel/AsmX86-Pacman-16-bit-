

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc ballmes
	
	push dx
	push cx
	push bx
	push ax

	;בדיקת נגיעת הכדור עם המיסגרת
	
	cmp [ballx],0
	je @@ball_right
	cmp [ballx],79
	je @@ball_left
	cmp [bally],0
	je @@ball_done
	cmp [bally],24
	jne @@the_end_1
	
	@@ball_up:
	call mes
	mov dh,[bally]
	mov dl,[ballx]
	mov bx,0
	mov ax,0
	dec dh ;להעלןת את הפקמן
	mov ah,2
	int 10h
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	
	jmp @@begin
	
	@@ball_right:
	call mes
	mov dh,[bally]
	mov dl,[ballx]
	mov bx,0
	mov ax,0
	inc dl;להזיז את הפקמן ימינה
	mov ah,2
	int 10h
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	jmp @@begin
	
	@@ball_left:
	call mes
	mov dh,[bally]
	mov dl,[ballx]
	mov bx,0
	mov ax,0
	dec dl;להזיז את הפקמן שמאלה
	mov ah,2
	int 10h
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	jmp @@begin
	
	@@the_end_1:;הקפיצה גדולה מידי אז צריך לחתוך באמצע
	jmp @@the_end
	
	@@ball_done:
	call mes
	mov dh,[bally]
	mov dl,[ballx]
	mov bx,0
	mov ax,0
    inc dh;להוריד את הפקמן
	mov ah,2
	int 10h
	
	mov al,233
	mov ah,9
	mov bh,0
    mov bl,14
    mov cx,1
    int 10h
	jmp @@begin
	
	
	@@begin:
	mov [ballx],dl
	mov [bally],dh
	
	
	
	@@the_end:
	   
	   pop ax
	   pop bx
	   pop cx
	   pop dx
	   
     ret ; Return to O/S - Last instruction

	 
	 endp ballmes
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

