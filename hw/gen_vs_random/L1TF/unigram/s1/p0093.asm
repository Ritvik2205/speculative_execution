.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 3
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
imul rax, rcx, 27
and rsi, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rsi]
cmovle si, si
jmp .bb_0.1
.bb_0.1:
and cl, 88
dec cx
test sil, 47
test esi, 63
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
add dl, 15
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
xor al, dil
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
