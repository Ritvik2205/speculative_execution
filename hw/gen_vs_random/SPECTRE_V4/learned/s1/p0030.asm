.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
cmovno ecx, edx
adc dl, bl
sub al, 26
test dil, -5
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
cmp rax, 2052654950
xor ax, 45
adc bl, dl
test rax, -269735774
and ax, -23308
and dl, 126
sub al, 26
and ax, 4
sbb bl, -79
mov bl, dl
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and ax, 16313
mov bl, dl
xor ax, 15671
sbb cl, 35
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
