

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc gostwa3 ;בודק האם הפקמן נוגע בקירות
	
		push dx 
push cx
push bx
push ax
	
	cmp [gostx3],5
	je @@chek_y_pozishen_in_row5_1;קפיצה גדולה מידי
	cmp [gosty3],3
	je @@chek_x_pozishen_in_line5_1;קפיצה גדולה מידי
	cmp [gostx3],74
	je @@chek_y_pozishen_in_line74_1;קפיצה גדולה מידי
	cmp [gosty3],21
	je @@chek_x_pozishen_in_line21_1;קפיצה גדולה מידי
	cmp [gosty3],5
	je @@chek_x_pozishen_in_line5 
	cmp [gosty3],19
	je @@chek_x_pozishen_in_line5
	cmp [gostx3],7
	je @@chek_y_pozishen_in_row7
	cmp [gostx3],72
	je @@chek_y_pozishen_in_row72
	cmp [gosty3],12
	je @@chek_x_pozishen_in_line12
	cmp [gostx3],38
	je @@chek_y_pozishen_in_row38
	
	jmp @@the_end_1
	
@@chek_x_pozishen_in_line5: ;תכלת
	cmp [gostx3],15
	jb @@the_end_1_a
	cmp [gostx3],64
	ja @@the_end_1_a
	jmp @@retern_gost
	
	
@@chek_y_pozishen_in_row7:;כתום
	cmp [gosty3],7
	jb @@the_end_1_a
	cmp [gosty3],17
	ja @@the_end_1_a
	jmp @@retern_gost
	
@@chek_y_pozishen_in_row72:;כתום
	cmp [gosty3],7
	jb @@the_end_1_a
	cmp [gosty3],17
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
	cmp [gostx3],8
	jb @@the_end_1_a
	cmp [gostx3],72
	ja @@the_end_1_a
	cmp [gostx3],18
	jb @@retern_gost_1
	cmp [gostx3],30
	jb @@the_end_1_a
	cmp [gostx3],47
	jb @@retern_gost_1
	cmp [gostx3],62
	jb @@the_end_1_a
	jmp @@retern_gost_1
	
	@@the_end_1_a:
	jmp @@the_end_1
	
	
	
	@@chek_y_pozishen_in_row38: ;סגול אנכי
	cmp [gosty3],9
	jb @@the_end_1_a
	cmp [gosty3],15
	ja @@the_end_1_a
	jmp @@retern_gost
	
	@@retern_gost_1:
	jmp @@retern_gost
	
	@@chek_y_pozishen_in_row5:;ירוק שמאל אנכי
	cmp [gosty3],2
	jb @@the_end_1
	cmp [gosty3],22
	ja @@the_end_1
	cmp [gosty3],5
	jb @@retern_gost
	cmp [gosty3],20
	jb @@the_end_1
	jmp @@retern_gost
	
	@@chek_x_pozishen_in_line5_3:;ירוק למעלה אופקי
	cmp [gostx3],2
	jb @@the_end_1
	cmp [gostx3],77
	ja @@the_end_1
	cmp [gostx3],9
	jb @@retern_gost
	cmp [gostx3],71
	jb @@the_end_1
	jmp @@retern_gost
	
	@@chek_y_pozishen_in_line74:;ירוק ימין אנכי
	cmp [gosty3],2
	jb @@the_end_1
	cmp [gosty3],22
	ja @@the_end_1
	cmp [gosty3],5
	jb @@retern_gost
	cmp [gosty3],20
	jb @@the_end_1
	jmp @@retern_gost
	
	
	@@chek_x_pozishen_in_line21:;ירוק למטה אופקי
	cmp [gostx3],2
	jb @@the_end_1
	cmp [gostx3],77
	ja @@the_end_1
	cmp [gostx3],9
	jb @@retern_gost
	cmp [gostx3],71
	jb @@the_end_1
	jmp @@retern_gost
	
	@@the_end_1:
	jmp @@the_end
	
	
@@retern_gost:   ;בודק לאיזה כיוון הפקמן צריך לזוז
	cmp [potion_gost3],'u'
	je @@done
	cmp [potion_gost3],'j'
	je @@up
	cmp [potion_gost3],'h'
	je @@left
	cmp [potion_gost3],'k'
	je @@right
	
@@done:
	call walls
	call gost_d3
	jmp @@finish
	
@@up:
	call walls
	call gost_u3
    jmp @@finish
	
@@right:
	call walls
	call gost_r3
	jmp @@finish
	
	
@@left:
	call walls
	call gost_l3
	jmp @@finish
	
@@finish:
	mov [gostx3],dl
	mov [gosty3],dh
	
@@the_end:
	
	
	 pop ax
	   pop bx
	   pop cx
	   pop dx 
	
     ret ; Return to O/S - Last instruction

	 endp gostwa3