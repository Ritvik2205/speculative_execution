.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
add bl, 33 # instrumentation
setnz bl
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
add cl, 103 # instrumentation
cmovno edi, ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
and rdx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdx], -25
mov rdx, 3609511260715352814
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
bswap rcx
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
