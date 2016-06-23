jmp short 0x65
nop
sar byte [si+0x7c00],1
mov es,ax
mov ds,ax
mov si,0x7c00
mov di,0x600
mov cx,0x200
cld
rep movsb
push ax
push word 0x61c
retf
sti
mov cx,0x4
mov bp,0x7be
cmp byte [bp+0x0],0x0
jl 0x34
jnz word 0x13b
add bp,byte +0x10
loop 0x23
int 0x18
mov [bp+0x0],dl
push bp
mov byte [bp+0x11],0x5
mov byte [bp+0x10],0x0
mov ah,0x41
mov bx,0x55aa
int 0x13
pop bp
jc 0x59
cmp bx,0xaa55
jnz 0x59
test cx,0x1
jz 0x59
inc byte [bp+0x10]
o32 add [bx+si+0x1],al
add [bx+si],al
add [bx+si],al
add [bx+si],al
db 0xff
cli
nop
nop
test dl,0x80
jz 0x72
test dl,0x70
jz 0x74
mov dl,0x80
jmp word 0x0:0x7c79
xor ax,ax
mov ds,ax
mov ss,ax
mov sp,0x2000
sti
mov al,[0x7c64]
cmp al,0xff
jz 0x8c
mov dl,al
push dx
mov bx,0x417
test byte [bx],0x3
jz 0x9b
mov si,0x7d88
call word 0x1b2
mov si,0x7c05
mov ah,0x41
mov bx,0x55aa
int 0x13
pop dx
push dx
jc 0xe6
cmp bx,0xaa55
jnz 0xe6
and cx,byte +0x1
jz 0xe6
xor ax,ax
mov [si+0x4],ax
inc ax
mov [si-0x1],al
mov [si+0x2],ax
mov word [si],0x10
mov ebx,[0x7c5c]
mov [si+0x8],ebx
mov ebx,[0x7c60]
mov [si+0xc],ebx
mov word [si+0x6],0x7000
mov ah,0x42
int 0x13
jc 0xe6
mov bx,0x7000
jmp short 0x15c
mov ah,0x8
int 0x13
jnc 0xf9
pop dx
test dl,dl
jnc word 0x1c3
mov si,0x7d93
jmp word 0x17b
movzx eax,dh
mov [si-0x1],ah
inc ax
mov [si+0x4],eax
movzx dx,cl
shl dx,byte 0x2
mov al,ch
mov ah,dh
inc ax
mov [si+0x8],ax
movzx ax,dl
shr al,byte 0x2
mov [si],eax
mov eax,[0x7c60]
or eax,eax
jnz 0x173
mov eax,[0x7c5c]
xor edx,edx
div dword [si]
mov cl,dl
xor dx,dx
div dword [si+0x4]
cmp ax,[si+0x8]
jnl 0x173
inc cl
mov ch,al
xor al,al
shr ax,byte 0x2
or cl,al
mov al,dl
pop dx
mov dh,al
mov bx,0x7000
mov es,bx
xor bx,bx
mov ax,0x201
int 0x13
jc 0x178
mov bx,es
pushaw
push ds
mov cx,0x100
mov ds,bx
xor si,si
mov di,0x8000
mov es,si
cld
rep movsw
pop ds
popaw
jmp word [0x7c5a]
mov si,0x7d8e
jmp short 0x17b
mov si,0x7d9d
call word 0x1b2
mov si,0x7da2
call word 0x1b2
int 0x18
jmp short 0x186
inc di
push dx
push bp
inc dx
and [bx+si],al
inc di
gs outsw
insw
add [bx+si+0x61],cl
jc 0x1fb
and [si+0x69],al
jnc 0x207
add [bp+si+0x65],dl
popaw
add [fs:bx+si],ah
inc bp
jc 0x218
outsw
jc 0x1b6
or al,[bx+si]
mov bx,0x1
mov ah,0xe
int 0x10
lodsb
cmp al,0x0
jnz 0x1ab
ret
xchg ax,bp
add al,0xa
add [bx+si],al
add [bx+si+0x2120],al
add [bx],al
fist word [bp+di]
or al,0x0
or [bx+si],al
add [bx+si],al
and [bp+di],al
add [bx+si],al
fist word [si]
or al,0x7
db 0xfe
db 0xff
inc word [bx+si]
sub [bp+di],al
add [bx+si],al
pushaw
mov cl,[0xfe00]
db 0xff
inc word [bp+di-0x2]
inc word [bx+si]
mov [di+0xe],cl
inc ax
dec word [si]
add dh,bh
db 0xff
dec word [bx]
db 0xfe
db 0xff
db 0xff
dec word [bx]
or ax,0xf91c
dec di
sub bx,[0xaa55]
