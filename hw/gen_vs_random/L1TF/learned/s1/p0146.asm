.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rcx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rcx]
xor al, cl
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and dl, al
jmp .bb_0.1
.bb_0.1:
test sil, 29
mov sil, bl
xor dl, 64
sbb esi, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
