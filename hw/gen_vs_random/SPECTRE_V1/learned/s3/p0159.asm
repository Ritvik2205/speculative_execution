.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, bl
and rdx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rdx]
sbb al, -112
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
sub al, cl
adc dl, 107
add al, -72
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
