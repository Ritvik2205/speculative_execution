.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and esi, 77
add cl, dil
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
sbb al, 118
setp dl
and rax, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rax]
sub rdx, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
