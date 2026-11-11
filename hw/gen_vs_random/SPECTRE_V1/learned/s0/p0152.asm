.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -18
sbb al, 118
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and al, dil
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
sub cl, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 61
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
imul dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
