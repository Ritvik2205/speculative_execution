.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -12492
or cl, 30
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
or bl, al
jmp .bb_0.1
.bb_0.1:
xor dil, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
