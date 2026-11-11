.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 28
sbb bl, cl
and cl, 73
lea eax, qword ptr [rcx + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
xor al, cl
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
