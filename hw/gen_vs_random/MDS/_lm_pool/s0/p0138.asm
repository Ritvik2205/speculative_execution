.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
test al, 127
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
or al, cl
xor rdi, -9
test sil, 17
xor dl, -59
and cl, dil
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
