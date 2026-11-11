.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 40 # instrumentation
btc rax, rax
xor al, dil
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
sub dil, -32
lea rdx, qword ptr [rcx + rsi + 38]
and dl, dil
add al, -65
cmovno di, cx
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
