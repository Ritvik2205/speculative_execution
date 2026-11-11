.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and dil, -22
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
test cl, dl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
sub dl, -78
and sil, 37
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
