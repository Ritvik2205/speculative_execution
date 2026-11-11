.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
lea rax, qword ptr [rdx + rdi + 80]
sub bl, al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -23
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
