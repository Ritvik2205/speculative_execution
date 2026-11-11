.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, cx
sub al, sil
adc si, 6
sub bl, sil
and rax, -175411684
and sil, 52
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
test cl, -24
and dl, -109
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
