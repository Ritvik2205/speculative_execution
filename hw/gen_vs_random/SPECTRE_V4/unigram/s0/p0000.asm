.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg bx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
movzx ecx, al
sub cl, 116
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
movzx esi, al
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
add edi, 11
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
bt eax, 84
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 18
add dl, 100 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
cmovb eax, ebx
mov cl, 83
and bl, cl
add di, -74
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 43
imul rax, rdx
sub eax, -523763262
cmp esi, 34
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
cmovnbe ebx, esi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 6
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 16
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
xor al, dl
or sil, 1
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
mov esi, edx
mov dl, dl
inc eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 91
cmovp esi, esi
btc rbx, 78
and si, 68
movzx si, sil
cmovnbe rbx, rdi
bts esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], bx
xor dil, 64
not bx
add cl, 106 # instrumentation
cmovnp rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
