.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
sub sil, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, 80
mov bl, dl
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
