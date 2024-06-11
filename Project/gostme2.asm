

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc gostme2
	
	push dx
	push cx
	push bx
	push ax

	;בדיקת נגיעת הכדור עם המיסגרת
	
	cmp [gostx2],0
	je @@gost_right
	cmp [gostx2],79
	je @@gost_left
	cmp [gosty2],0
	je @@gost_done
	cmp [gosty2],24
	jne @@the_end_1
	
	@@gost_up:
	call mes
	mov dh,[gosty2]
	mov dl,[gostx2]
	mov bx,0
	mov ax,0
	dec dh ;להעלןת את הרוח
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,9
    mov cx,1
    int 10h
	
	jmp @@begin
	
	@@gost_right:
	call mes
	mov dh,[gosty2]
	mov dl,[gostx2]
	mov bx,0
	mov ax,0
	inc dl;להזיז את הפקמן ימינה
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,9
    mov cx,1
    int 10h
	jmp @@begin
	
	@@gost_left:
	call mes
	mov dh,[gosty2]
	mov dl,[gostx2]
	mov bx,0
	mov ax,0
	dec dl;להזיז את הפקמן שמאלה
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,9
    mov cx,1
    int 10h
	jmp @@begin
	
	@@the_end_1:;הקפיצה גדולה מידי אז צריך לחתוך באמצע
	jmp @@the_end
	
	@@gost_done:
	call mes
	mov dh,[gosty2]
	mov dl,[gostx2]
	mov bx,0
	mov ax,0
    inc dh;להוריד את הפקמן
	mov ah,2
	int 10h
	
	mov al,234
	mov ah,9
	mov bh,0
    mov bl,9
    mov cx,1
    int 10h
	jmp @@begin
	
	
	@@begin:
	mov [gostx2],dl
	mov [gosty2],dh
	
	
	
	@@the_end:
	   
	   pop ax
	   pop bx
	   pop cx
	   pop dx
	   
     ret ; Return to O/S - Last instruction

	 
	 endp gostme2
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

