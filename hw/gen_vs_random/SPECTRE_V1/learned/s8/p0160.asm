.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, dl
lea cx, qword ptr [rsi]
sub al, bl
xor cl, bl
cmp bl, cl
sbb dl, cl
jmp .bb_0.1
.bb_0.1:
xor eax, 55
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
