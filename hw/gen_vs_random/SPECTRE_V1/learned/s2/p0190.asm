.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
sub dil, -32
add al, sil
xor sil, -33
bt eax, ebx
xchg bl, dl
movsx dx, cl
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
sbb ebx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
