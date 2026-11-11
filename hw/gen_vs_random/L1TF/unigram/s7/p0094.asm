.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sub bl, -96
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdi]
btc ax, cx
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
or bl, dil
and dil, cl
and al, dl
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
imul esi, ecx
not cx
cmovbe si, si
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
