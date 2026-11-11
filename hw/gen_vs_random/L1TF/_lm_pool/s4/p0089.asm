.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
setp bl
xor al, 45
sub sil, -99
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, 86
xchg bl, cl
or ax, -18131
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
setb dil
seto dil
mov dil, 11
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and ax, 37
sbb sil, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
