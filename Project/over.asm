;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc over

mov al,[gosty1]
cmp al,[bally]
jne @@the_end
mov al,[gostx1]
cmp al,[ballx]
jmp @@the_end

mov al,[gosty2]
cmp al,[bally]
jne @@the_end
mov al,[gostx2]
cmp al,[ballx]

@@the_end:



 ret ; Return to O/S - Last instruction

	 endp over