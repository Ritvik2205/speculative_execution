.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
sbb rax, 62
sub dl, bl
adc dl, bl
and sil, dil
add al, sil
or rcx, rdx
test cl, al
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
