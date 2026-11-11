.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 53
and rax, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rax]
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 73254857
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
jbe .bb_0.2
jmp .exit_0
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
or sil, sil
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
and si, cx
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
xchg dil, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
