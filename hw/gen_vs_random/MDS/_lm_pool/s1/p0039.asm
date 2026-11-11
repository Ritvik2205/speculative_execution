.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
bts rdx, 200
and cx, -8
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
test sil, -55
test rdi, 77
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xor eax, 571592471
or rcx, 54
and cl, -19
or rax, -689609688
test al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
