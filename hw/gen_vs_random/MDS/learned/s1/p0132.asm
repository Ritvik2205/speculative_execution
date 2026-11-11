.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or bl, 43
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and sil, -69
or rax, -141551502
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and ax, 19224
jmp .bb_0.1
.bb_0.1:
xor sil, -126
bts rdi, 130
test dil, -51
xor al, -4
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
