.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
sub cl, -21
sub rdx, 7
sub dl, 71
sbb bl, bl
lea ax, qword ptr [rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
lea rax, qword ptr [rsi + rbx]
and dil, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
