.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
adc cl, -19
or al, 19
sbb al, cl
add sil, -68
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
sbb cl, dl
adc dil, 54
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
sub cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
