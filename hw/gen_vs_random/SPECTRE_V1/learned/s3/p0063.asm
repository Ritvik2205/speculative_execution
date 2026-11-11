.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -66
sub rbx, -11
and sil, -55
sbb al, bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc sil, cl
adc ax, -27488
sbb edi, 19
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 81
lea si, qword ptr [rsi]
not si
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
