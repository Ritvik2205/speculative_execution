.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, dil
sbb ax, bx
and rcx, 43
and bl, dil
sbb dl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 15
jmp .bb_0.1
.bb_0.1:
add al, 31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 87
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 79
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
neg edi
add bl, 117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
lea bx, qword ptr [rsi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
