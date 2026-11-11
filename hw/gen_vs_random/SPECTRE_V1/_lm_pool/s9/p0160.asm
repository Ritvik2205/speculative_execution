.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], di
cmp eax, 100
and bx, -118
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
add eax, -1174744897
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, dl
sub al, bl
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
lea ax, qword ptr [rbx + rcx + 4]
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
