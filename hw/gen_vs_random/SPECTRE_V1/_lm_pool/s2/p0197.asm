.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, bx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sbb al, 118
sub dl, cl
sbb sil, dil
test dil, -116
adc bl, -73
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
sbb eax, -108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
