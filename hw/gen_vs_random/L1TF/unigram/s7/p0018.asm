.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 71
cmovl rax, rax
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
btr esi, edi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
btr si, cx
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx], 72
sub dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rsi]
test sil, 29
add cl, 12 # instrumentation
cmovnb edx, ecx
and rax, -109
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
dec edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
