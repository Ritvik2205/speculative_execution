.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, -12
cmovle cx, bx
setz cl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 37
mov dil, cl
or rcx, 63
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
or bx, 9
adc edx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
