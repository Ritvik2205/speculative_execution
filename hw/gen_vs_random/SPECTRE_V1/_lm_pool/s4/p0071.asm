.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sbb al, -114
and al, -54
sbb al, -14
lea ebx, qword ptr [rcx]
sbb sil, bl
test al, 84
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
sbb dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
