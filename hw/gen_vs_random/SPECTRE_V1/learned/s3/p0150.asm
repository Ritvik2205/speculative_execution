.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
add al, -13
sub bl, cl
imul rdx, rcx, 51
lea rdx, qword ptr [rbx + rcx]
sbb al, dil
sbb sil, cl
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
