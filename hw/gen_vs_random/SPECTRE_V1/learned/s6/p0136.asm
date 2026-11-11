.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
add sil, -68
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 54
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], si
xchg dl, dil
sbb al, sil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sub dil, dil
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
