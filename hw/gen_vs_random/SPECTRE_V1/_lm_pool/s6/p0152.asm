.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
test sil, 13
sub dl, cl
xor dl, sil
lea cx, qword ptr [rbx + rax + 55]
sbb cl, bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and bl, 124
adc dl, -49
xor al, bl
sbb sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
