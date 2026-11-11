.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 17
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
or dl, 95
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 57
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 41
cmp rax, rdi
lea rsi, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
setnz dil
cmovnl bx, bx
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 15
imul si, ax, 36
mov rdx, -1012904117298842753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
