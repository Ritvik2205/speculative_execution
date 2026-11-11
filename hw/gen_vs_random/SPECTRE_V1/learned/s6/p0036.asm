.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
sbb dil, -93
cmp al, bl
xchg rdx, rbx
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
test cl, -33
test dil, -116
inc esi
jmp .bb_0.2
.bb_0.2:
or al, 19
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
