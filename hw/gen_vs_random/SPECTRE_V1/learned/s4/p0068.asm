.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
or bl, sil
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
sbb bl, -41
lea rax, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea cx, qword ptr [rbx]
jl .bb_0.3
jmp .exit_0
.bb_0.3:
sub cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
