.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ax, -20176
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
test esi, 1857129931
test al, 22
jmp .bb_0.1
.bb_0.1:
test al, 91
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or dl, cl
test rax, rsi
test rcx, -613256812
and bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
