;
; A simple boot sector
loop:
	jmp loop
times 510-($-$$) db 0

dw 0xaa55
