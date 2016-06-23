print_hex:
pusha
mov cx,HEX_STR
add cx,1
mov bx,cx
add bx,4
;do{ ah=0x0f; ah&=dl; ah+="0"; dx>>=4; [bx]=ah; bx--; } while (bx>cx);bx--;
loop:
mov ah,0x0f
and ah,dl
add ah,"0"
shr dx,4
mov [bx],ah
dec bx
cmp bx,cx
;call print_string ;why does this break the program?
jg loop
sub bx,1
call print_string
popa
ret
