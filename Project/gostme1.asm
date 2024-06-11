

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc gostme1
	
	push dx
	push cx
	push bx
	push ax

	;בדיקת נגיעת הכדור עם המיסגרת
	
	cmp [gostx1],0
	je @@gost_right
	cmp [gostx1],79
	je @@gost_left
	cmp [gosty1],0
	je @@gost_done
	cmp [gosty1],24
	jne @@the_end_1
	
	@@gost_up:
	call mes
	mov dh,[gosty1]
	mov dl,[gostx1]
	mov bx,0
	mov ax,0
	dec dh ;להעלןת את הרוח
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,1
    mov cx,1
    int 10h
	
	jmp @@begin
	
	@@gost_right:
	call mes
	mov dh,[gosty1]
	mov dl,[gostx1]
	mov bx,0
	mov ax,0
	inc dl;להזיז את הפקמן ימינה
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,1
    mov cx,1
    int 10h
	jmp @@begin
	
	@@gost_left:
	call mes
	mov dh,[gosty1]
	mov dl,[gostx1]
	mov bx,0
	mov ax,0
	dec dl;להזיז את הפקמן שמאלה
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,1
    mov cx,1
    int 10h
	jmp @@begin
	
	@@the_end_1:;הקפיצה גדולה מידי אז צריך לחתוך באמצע
	jmp @@the_end
	
	@@gost_done:
	call mes
	mov dh,[gosty1]
	mov dl,[gostx1]
	mov bx,0
	mov ax,0
    inc dh;להוריד את הפקמן
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,1
    mov cx,1
    int 10h
	jmp @@begin
	
	
	@@begin:
	mov [gostx1],dl
	mov [gosty1],dh
	
	
	
	@@the_end:
	   
	   pop ax
	   pop bx
	   pop cx
	   pop dx
	   
     ret ; Return to O/S - Last instruction

	 
	 endp gostme1
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

