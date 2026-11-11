.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
lea ax, qword ptr [rax + rbx]
or dil, sil
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
test ax, 22956
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
and rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
