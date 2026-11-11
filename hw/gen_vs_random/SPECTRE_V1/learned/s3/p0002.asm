.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 39
sbb rax, 342397759
sub dl, bl
adc dl, sil
and sil, dil
add al, dil
or rcx, rdx
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
