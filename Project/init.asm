

;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
	proc init
	
mov ah,0
	mov al,3
	int 10h
	
	
	
     ret ; Return to O/S - Last instruction

	 endp init
;--------------------------------------------------------------------------------------
; End   Instructions 
;--------------------------------------------------------------------------------------

