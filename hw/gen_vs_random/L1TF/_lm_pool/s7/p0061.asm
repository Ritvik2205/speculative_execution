.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
lea di, qword ptr [rcx]
test cl, 21
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
or bl, sil
lea rdx, qword ptr [rcx + rax + 86]
sbb esi, 67
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rsi
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
