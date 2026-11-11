.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi], -31
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
test sil, 13
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, 58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rcx
xor cl, -40
xchg dl, al
sbb eax, 100
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
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
mov rdx, 3609511260715352814
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
