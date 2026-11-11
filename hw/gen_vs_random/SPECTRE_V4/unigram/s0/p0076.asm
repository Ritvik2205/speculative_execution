.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 22
and rcx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rcx]
test di, bx
adc esi, 80
bts rdi, 23
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
inc edi
sub dl, -16
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rbx, 31
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rsi
cmp cx, ax
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
bts rcx, 53
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 48
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rcx
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
cmp dl, 23
cmp cx, 0
sub dl, dl
mov rdx, rdi
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
sbb cx, 29
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 64
sub rbx, 101
bswap eax
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
or bl, bl
xor rbx, rax
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], dx
cmp cl, 107
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
inc cx
imul ecx, edi, 60
sbb dl, -106
xor dil, 117
add dl, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
