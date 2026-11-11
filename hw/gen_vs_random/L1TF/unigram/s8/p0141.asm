.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 54
xor dil, -42
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
add bl, -79 # instrumentation
cmovo di, ax
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
sbb cl, -11
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 79
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
lea edx, qword ptr [rdi + rax + 43]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
and sil, 93
sub rdi, 75
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
