.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dil
lea si, qword ptr [rdi]
test cl, bl
lea dx, qword ptr [rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 92
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
