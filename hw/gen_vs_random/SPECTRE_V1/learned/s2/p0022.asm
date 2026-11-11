.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 10
and dil, -114
test rdi, -1846965753
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -65
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
