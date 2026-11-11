.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
add al, -80
xchg eax, edx
test edx, -541774418
sub al, 9
or rax, -82
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
and ax, 7954
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
