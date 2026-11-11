.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rbx + rdi]
and cl, sil
or rax, 1362710293
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rax + rdx + 42]
jmp .bb_0.2
.bb_0.2:
inc rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
