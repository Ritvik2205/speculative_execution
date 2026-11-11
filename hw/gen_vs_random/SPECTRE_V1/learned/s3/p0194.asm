.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rdx
or dx, 53
and dil, -114
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
xor cl, 71
cmovle rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
