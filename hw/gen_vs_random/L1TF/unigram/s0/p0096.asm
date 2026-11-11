.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rcx]
lea ecx, qword ptr [rsi + rax + 29]
sub edx, esi
imul ax, bx, 17
btr rdi, rsi
cmovp eax, ebx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rsi]
or dil, dil
sub si, 83
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], -13
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
and rax, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
