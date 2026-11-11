.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and sil, 11
sbb dil, bl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
adc dil, 69
sbb ecx, 5
jmp .bb_0.1
.bb_0.1:
add bl, cl
sbb rax, 342397759
jle .bb_0.2
jmp .exit_0
.bb_0.2:
sub ax, -15315
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
