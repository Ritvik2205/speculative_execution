.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
setp sil
sub cl, 86
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
not bl
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
cmp cl, sil
xor cl, 89
jl .bb_0.4
jmp .exit_0
.bb_0.4:
or dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
