.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and si, 19
neg cl
lea di, qword ptr [rdi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and eax, 933895314
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and di, 73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
