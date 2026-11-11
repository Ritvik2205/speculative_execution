.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -68
sub dil, al
add dl, 47
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
lea dx, qword ptr [rsi + rcx]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and dil, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
