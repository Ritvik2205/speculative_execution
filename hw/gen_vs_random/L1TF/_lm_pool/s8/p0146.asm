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
sub dil, 87
lea rdx, qword ptr [rcx + rsi + 81]
jmp .bb_0.1
.bb_0.1:
cmp dx, 87
jmp .bb_0.2
.bb_0.2:
and dl, 32 # instrumentation
cmovnbe edx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
