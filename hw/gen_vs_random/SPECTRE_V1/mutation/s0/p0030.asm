.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, dx
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
or eax, -1161451853
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
bt rbx, 244
jnl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 43 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -62
lea rax, qword ptr [rbx + rdx + 34714]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
test bl, -8
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rsi
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
bswap rcx
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], -25
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
mov rdx, 3189408690989687296
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
