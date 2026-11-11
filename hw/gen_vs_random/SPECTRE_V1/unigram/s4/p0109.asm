.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 92
lea edx, qword ptr [rdi + rdi]
mul dil
mov rdx, 3189408690989687296
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
cmovz eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rcx + rbx]
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
and si, 71
add rdi, 77
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
add bl, 112 # instrumentation
adc bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
add dl, -47 # instrumentation
sbb dil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
