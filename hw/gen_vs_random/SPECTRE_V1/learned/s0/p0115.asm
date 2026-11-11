.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 23118
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
test al, -126
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
xchg bl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp eax, -563371897
cmovno cx, ax
add edx, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
