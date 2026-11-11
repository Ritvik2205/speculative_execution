.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
sbb al, 49
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
sbb bl, 79
add cl, -127
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sub ax, -15315
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
cmp sil, 25
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
