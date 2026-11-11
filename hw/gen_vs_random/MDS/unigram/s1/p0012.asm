.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
test cl, 67
xor al, -15
bts ebx, eax
and cl, al
jmp .bb_0.1
.bb_0.1:
cmovnb eax, eax
bts rdx, 255
test dl, cl
xor dl, -125
and sil, -49 # instrumentation
cmovno si, dx
cmovnz bx, di
and si, ax
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 11
xor dl, -68
test dil, -72
or bl, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
