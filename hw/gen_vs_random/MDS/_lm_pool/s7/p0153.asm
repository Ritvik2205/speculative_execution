.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rbx, rbx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and ax, 13090
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
test cl, -113
and dl, cl
test cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
