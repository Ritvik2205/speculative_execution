.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 34
cmovns si, cx
setb al
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
test sil, 29
xchg rsi, rdx
cmovnp ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
