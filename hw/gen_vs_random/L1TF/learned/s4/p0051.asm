.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
setz bl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
add al, 56
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdx, 21
lea ecx, qword ptr [rsi]
xor al, 45
and sil, dl
or dil, -113
xor cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
