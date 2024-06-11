

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc gostwa2 ;בודק האם הפקמן נוגע בקירות
	
		push dx 
push cx
push bx
push ax
	
	cmp [gostx2],5
	je @@chek_y_pozishen_in_row5_1;קפיצה גדולה מידי
	cmp [gosty2],3
	je @@chek_x_pozishen_in_line5_1;קפיצה גדולה מידי
	cmp [gostx2],74
	je @@chek_y_pozishen_in_line74_1;קפיצה גדולה מידי
	cmp [gosty2],21
	je @@chek_x_pozishen_in_line21_1;קפיצה גדולה מידי
	cmp [gosty2],5
	je @@chek_x_pozishen_in_line5 
	cmp [gosty2],19
	je @@chek_x_pozishen_in_line5
	cmp [gostx2],7
	je @@chek_y_pozishen_in_row7
	cmp [gostx2],72
	je @@chek_y_pozishen_in_row72
	cmp [gosty2],12
	je @@chek_x_pozishen_in_line12
	cmp [gostx2],38
	je @@chek_y_pozishen_in_row38
	
	jmp @@the_end_1
	
@@chek_x_pozishen_in_line5: ;תכלת
	cmp [gostx2],15
	jb @@the_end_1_a
	cmp [gostx2],64
	ja @@the_end_1_a
	jmp @@retern_gost
	
	
@@chek_y_pozishen_in_row7:;כתום
	cmp [gosty2],7
	jb @@the_end_1_a
	cmp [gosty2],17
	ja @@the_end_1_a
	jmp @@retern_gost
	
@@chek_y_pozishen_in_row72:;כתום
	cmp [gosty2],7
	jb @@the_end_1_a
	cmp [gosty2],17
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
	cmp [gostx2],8
	jb @@the_end_1_a
	cmp [gostx2],72
	ja @@the_end_1_a
	cmp [gostx2],18
	jb @@retern_gost_1
	cmp [gostx2],30
	jb @@the_end_1_a
	cmp [gostx2],47
	jb @@retern_gost_1
	cmp [gostx2],62
	jb @@the_end_1_a
	jmp @@retern_gost_1
	
	@@the_end_1_a:
	jmp @@the_end_1
	
	
	
	@@chek_y_pozishen_in_row38: ;סגול אנכי
	cmp [gosty2],9
	jb @@the_end_1_a
	cmp [gosty2],15
	ja @@the_end_1_a
	jmp @@retern_gost
	
	@@retern_gost_1:
	jmp @@retern_gost
	
	@@chek_y_pozishen_in_row5:;ירוק שמאל אנכי
	cmp [gosty2],2
	jb @@the_end_1
	cmp [gosty2],22
	ja @@the_end_1
	cmp [gosty2],5
	jb @@retern_gost
	cmp [gosty2],20
	jb @@the_end_1
	jmp @@retern_gost
	
	@@chek_x_pozishen_in_line5_3:;ירוק למעלה אופקי
	cmp [gostx2],2
	jb @@the_end_1
	cmp [gostx2],77
	ja @@the_end_1
	cmp [gostx2],9
	jb @@retern_gost
	cmp [gostx2],71
	jb @@the_end_1
	jmp @@retern_gost
	
	@@chek_y_pozishen_in_line74:;ירוק ימין אנכי
	cmp [gosty2],2
	jb @@the_end_1
	cmp [gosty2],22
	ja @@the_end_1
	cmp [gosty2],5
	jb @@retern_gost
	cmp [gosty2],20
	jb @@the_end_1
	jmp @@retern_gost
	
	
	@@chek_x_pozishen_in_line21:;ירוק למטה אופקי
	cmp [gostx2],2
	jb @@the_end_1
	cmp [gostx2],77
	ja @@the_end_1
	cmp [gostx2],9
	jb @@retern_gost
	cmp [gostx2],71
	jb @@the_end_1
	jmp @@retern_gost
	
	@@the_end_1:
	jmp @@the_end
	
	
@@retern_gost:   ;בודק לאיזה כיוון הפקמן צריך לזוז
	cmp [potion_gost2],'u'
	je @@done
	cmp [potion_gost2],'j'
	je @@up
	cmp [potion_gost2],'h'
	je @@left
	cmp [potion_gost2],'k'
	je @@right
	
@@done:
	call walls
	call gost_d2
	jmp @@finish
	
@@up:
	call walls
	call gost_u2
    jmp @@finish
	
@@right:
	call walls
	call gost_r2
	jmp @@finish
	
	
@@left:
	call walls
	call gost_l2
	jmp @@finish
	
@@finish:
	mov [gostx2],dl
	mov [gosty2],dh
	
@@the_end:
	
	
	 pop ax
	   pop bx
	   pop cx
	   pop dx 
	
     ret ; Return to O/S - Last instruction

	 endp gostwa2