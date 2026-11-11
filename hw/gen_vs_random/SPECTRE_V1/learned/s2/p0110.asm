.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 107 # instrumentation
lea eax, qword ptr [rbx + rdx + 43]
lea cx, qword ptr [rax]
adc edx, 19
and al, -54
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
sub dl, 71
cmp bl, dil
xor rax, -1905683998
add al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
