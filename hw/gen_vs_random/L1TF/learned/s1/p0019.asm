.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt bx, 76
xor al, 38
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
cmp al, 56
xchg esi, ebx
jmp .bb_0.2
.bb_0.2:
test dil, -126
test dx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
