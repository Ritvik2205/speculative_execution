.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and ax, 19224
or al, 74
xor al, 99
cmovnp rdi, rbx
test dl, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 63
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
jmp .bb_0.2
.bb_0.2:
or sil, cl
test cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
cmovle bx, si
xor dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
