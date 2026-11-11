.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sbb ecx, 80
and dl, -109
xchg dil, dl
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
adc sil, -77
add al, -72
sub rcx, 13
add al, -109
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
