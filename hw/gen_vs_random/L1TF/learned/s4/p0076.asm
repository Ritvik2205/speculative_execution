.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
test dx, 34
inc dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
adc sil, 77
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
sbb rsi, 65
sub al, -3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
