

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc gostwa1 ;בודק האם הפקמן נוגע בקירות
	
	push dx 
push cx
push bx
push ax
	
	cmp [gostx1],5
	je @@chek_y_pozishen_in_row5_1;קפיצה גדולה מידי
	cmp [gosty1],3
	je @@chek_x_pozishen_in_line5_1;קפיצה גדולה מידי
	cmp [gostx1],74
	je @@chek_y_pozishen_in_line74_1;קפיצה גדולה מידי
	cmp [gosty1],21
	je @@chek_x_pozishen_in_line21_1;קפיצה גדולה מידי
	cmp [gosty1],5
	je @@chek_x_pozishen_in_line5 
	cmp [gosty1],19
	je @@chek_x_pozishen_in_line5
	cmp [gostx1],7
	je @@chek_y_pozishen_in_row7
	cmp [gostx1],72
	je @@chek_y_pozishen_in_row72
	cmp [gosty1],12
	je @@chek_x_pozishen_in_line12
	cmp [gostx1],38
	je @@chek_y_pozishen_in_row38
	
	jmp @@the_end_1
	
@@chek_x_pozishen_in_line5: ;תכלת
	cmp [gostx1],15
	jb @@the_end_1_a
	cmp [gostx1],64
	ja @@the_end_1_a
	jmp @@retern_gost
	
	
@@chek_y_pozishen_in_row7:;כתום
	cmp [gosty1],7
	jb @@the_end_1_a
	cmp [gosty1],17
	ja @@the_end_1_a
	jmp @@retern_gost
	
@@chek_y_pozishen_in_row72:;כתום
	cmp [gosty1],7
	jb @@the_end_1_a
	cmp [gosty1],17
	ja @@the_end_1_a
	jmp @@retern_gost
	
	@@chek_y_pozishen_in_row5_1:
	jmp @@chek_y_pozishen_in_row5
	
	@@chek_x_pozishen_in_line5_1:
	jmp @@chek_x_pozishen_in_line5_3
	
 @@chek_y_pozishen_in_line74_1:
	jmp @@chek_y_pozishen_in_line74
	
	@@chek_x_pozishen_in_line21_1:
	jmp @@chek_x_pozishen_in_line21
	
@@chek_x_pozishen_in_line12:;כחולים וסגול אופקי
	cmp [gostx1],8
	jb @@the_end_1_a
	cmp [gostx1],72
	ja @@the_end_1_a
	cmp [gostx1],18
	jb @@retern_gost_1
	cmp [gostx1],30
	jb @@the_end_1_a
	cmp [gostx1],47
	jb @@retern_gost_1
	cmp [gostx1],62
	jb @@the_end_1_a
	jmp @@retern_gost_1
	
	@@the_end_1_a:
	jmp @@the_end_1
	
	
	
	@@chek_y_pozishen_in_row38: ;סגול אנכי
	cmp [gosty1],9
	jb @@the_end_1_a
	cmp [gosty1],15
	ja @@the_end_1_a
	jmp @@retern_gost
	
	@@retern_gost_1:
	jmp @@retern_gost
	
	@@chek_y_pozishen_in_row5:;ירוק שמאל אנכי
	cmp [gosty1],2
	jb @@the_end_1
	cmp [gosty1],22
	ja @@the_end_1
	cmp [gosty1],5
	jb @@retern_gost
	cmp [gosty1],20
	jb @@the_end_1
	jmp @@retern_gost
	
	@@chek_x_pozishen_in_line5_3:;ירוק למעלה אופקי
	cmp [gostx1],2
	jb @@the_end_1
	cmp [gostx1],77
	ja @@the_end_1
	cmp [gostx1],9
	jb @@retern_gost
	cmp [gostx1],71
	jb @@the_end_1
	jmp @@retern_gost
	
	@@chek_y_pozishen_in_line74:;ירוק ימין אנכי
	cmp [gosty1],2
	jb @@the_end_1
	cmp [gosty1],22
	ja @@the_end_1
	cmp [gosty1],5
	jb @@retern_gost
	cmp [gosty1],20
	jb @@the_end_1
	jmp @@retern_gost
	
	
	@@chek_x_pozishen_in_line21:;ירוק למטה אופקי
	cmp [gostx1],2
	jb @@the_end_1
	cmp [gostx1],77
	ja @@the_end_1
	cmp [gostx1],9
	jb @@retern_gost
	cmp [gostx1],71
	jb @@the_end_1
	jmp @@retern_gost
	
	@@the_end_1:
	jmp @@the_end
	
	
@@retern_gost:   ;בודק לאיזה כיוון הפקמן צריך לזוז
	cmp [potion_gost],'u'
	je @@done
	cmp [potion_gost],'j'
	je @@up
	cmp [potion_gost],'h'
	je @@left
	cmp [potion_gost],'k'
	je @@right
	
@@done:
	call walls
	call gost_d1
	jmp @@finish
	
@@up:
	call walls
	call gost_u1
    jmp @@finish
	
@@right:
	call walls
	call gost_r1
	jmp @@finish
	
	
@@left:
	call walls
	call gost_l1
	jmp @@finish
	
@@finish:
	mov [gostx1],dl
	mov [gosty1],dh
	
@@the_end:
	
	
	 pop ax
	   pop bx
	   pop cx
	   pop dx 
	
     ret ; Return to O/S - Last instruction

	 endp gostwa1