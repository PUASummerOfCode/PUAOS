[org 0x7c00]

mov bx,HELLO_MSG
call print_string

mov dx,0x1234
call print_hex

mov bx,GOODBYE_MSG
call print_string

jmp $

%include "print_string.asm"
%include "print_hex.asm"

HELLO_MSG:
dw 'Hello, World!',0

GOODBYE_MSG:
dw 'Goodbye!',0

HEX_STR:
dw '0x0000',0

times 510-($-$$) db 0
dw 0xaa55
