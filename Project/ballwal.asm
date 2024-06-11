

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc ballwal ;בודק האם הפקמן נוגע בקירות
	cmp [ballx],5
	je @@chek_y_pozishen_in_row5_1;קפיצה גדולה מידי
	cmp [bally],3
	je @@chek_x_pozishen_in_line5_1;קפיצה גדולה מידי
	cmp [ballx],74
	je @@chek_y_pozishen_in_line74_1;קפיצה גדולה מידי
	cmp [bally],21
	je @@chek_x_pozishen_in_line21_1;קפיצה גדולה מידי
	cmp [bally],5
	je @@chek_x_pozishen_in_line5 
	cmp [bally],19
	je @@chek_x_pozishen_in_line5
	cmp [ballx],7
	je @@chek_y_pozishen_in_row7
	cmp [ballx],72
	je @@chek_y_pozishen_in_row72
	cmp [bally],12
	je @@chek_x_pozishen_in_line12
	cmp [ballx],38
	je @@chek_y_pozishen_in_row38
	
	jmp @@the_end_1
	
@@chek_x_pozishen_in_line5: ;תכלת
	cmp [ballx],15
	jb @@the_end_1_a
	cmp [ballx],64
	ja @@the_end_1_a
	jmp @@retern_pacmen
	
	
@@chek_y_pozishen_in_row7:;כתום
	cmp [bally],7
	jb @@the_end_1_a
	cmp [bally],17
	ja @@the_end_1_a
	jmp @@retern_pacmen
	
@@chek_y_pozishen_in_row72:;כתום
	cmp [bally],7
	jb @@the_end_1_a
	cmp [bally],17
	ja @@the_end_1_a
	jmp @@retern_pacmen
	
	@@chek_y_pozishen_in_row5_1:
	jmp @@chek_y_pozishen_in_row5
	
	@@chek_x_pozishen_in_line5_1:
	jmp @@chek_x_pozishen_in_line5_3
	
 @@chek_y_pozishen_in_line74_1:
	jmp @@chek_y_pozishen_in_line74
	
	@@chek_x_pozishen_in_line21_1:
	jmp @@chek_x_pozishen_in_line21
	
@@chek_x_pozishen_in_line12:;כחולים וסגול אופקי
	cmp [ballx],8
	jb @@the_end_1_a
	cmp [ballx],72
	ja @@the_end_1_a
	cmp [ballx],18
	jb @@retern_pacmen_1
	cmp [ballx],30
	jb @@the_end_1_a
	cmp [ballx],47
	jb @@retern_pacmen_1
	cmp [ballx],62
	jb @@the_end_1_a
	jmp @@retern_pacmen_1
	
	@@the_end_1_a:
	jmp @@the_end_1
	
	
	
	@@chek_y_pozishen_in_row38: ;סגול אנכי
	cmp [bally],9
	jb @@the_end_1_a
	cmp [bally],15
	ja @@the_end_1_a
	jmp @@retern_pacmen
	
	@@retern_pacmen_1:
	jmp @@retern_pacmen
	
	@@chek_y_pozishen_in_row5:;ירוק שמאל אנכי
	cmp [bally],2
	jb @@the_end_1
	cmp [bally],22
	ja @@the_end_1
	cmp [bally],5
	jb @@retern_pacmen
	cmp [bally],20
	jb @@the_end_1
	jmp @@retern_pacmen
	
	@@chek_x_pozishen_in_line5_3:;ירוק למעלה אופקי
	cmp [ballx],2
	jb @@the_end_1
	cmp [ballx],77
	ja @@the_end_1
	cmp [ballx],9
	jb @@retern_pacmen
	cmp [ballx],71
	jb @@the_end_1
	jmp @@retern_pacmen
	
	@@chek_y_pozishen_in_line74:;ירוק ימין אנכי
	cmp [bally],2
	jb @@the_end_1
	cmp [bally],22
	ja @@the_end_1
	cmp [bally],5
	jb @@retern_pacmen
	cmp [bally],20
	jb @@the_end_1
	jmp @@retern_pacmen
	
	
	@@chek_x_pozishen_in_line21:;ירוק למטה אופקי
	cmp [ballx],2
	jb @@the_end_1
	cmp [ballx],77
	ja @@the_end_1
	cmp [ballx],9
	jb @@retern_pacmen
	cmp [ballx],71
	jb @@the_end_1
	jmp @@retern_pacmen
	
	
	@@the_end_1:
	jmp @@the_end
	
	
@@retern_pacmen:   ;בודק לאיזה כיוון הפקמן צריך לזוז
	cmp [pozishen],'u'
	je @@done
	cmp [pozishen],'j'
	je @@up
	cmp [pozishen],'h'
	je @@right
	cmp [pozishen],'k'
	je @@left
	
@@done:
	call walls
	call done
	jmp @@finish
	
@@up:
	call walls
	call up
    jmp @@finish
	
@@right:
	call walls
	call right
	jmp @@finish
	
	
@@left:
	call walls
	call left
	jmp @@finish
	
@@finish:
	mov [ballx],dl
	mov [bally],dh
	
@@the_end:
	
     ret ; Return to O/S - Last instruction

	 endp ballwal
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

