.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and al, dil
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and sil, sil
and al, -23
sbb dil, al
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
and al, -23
add dil, -75
adc al, -82
and bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
