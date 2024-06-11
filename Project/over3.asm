;--------------------------------------------------------------------------------------
; Begin Instructions 
;--------------------------------------------------------------------------------------
proc over3



mov al,[gosty3]
cmp al,[bally]
jne @@the_end
mov al,[gostx3]
cmp al,[ballx]

@@the_end:



 ret ; Return to O/S - Last instruction

	 endp over3