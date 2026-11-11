.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
imul dl
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], eax
bts bx, cx
cmovl cx, ax
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
xor dil, -37
lea ecx, qword ptr [rcx + rsi + 43]
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
sub rsi, 97
bt eax, edx
cmovnz bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
