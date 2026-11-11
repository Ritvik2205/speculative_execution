.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
sbb cl, 105
sbb al, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 40
add dl, 47
sub dil, cl
adc al, bl
adc al, -92
and sil, 11
lea di, qword ptr [rbx]
bts cx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
