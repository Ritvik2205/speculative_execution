.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
test al, -99
lea rbx, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 7
test al, 34
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
sbb bl, 79
xchg rdi, rdx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
or ecx, 6
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
cmp cl, bl
and bl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
