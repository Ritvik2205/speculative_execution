.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, -127
xor cl, 83
and rdi, 71
and bx, 24
xor ax, 23633
jmp .bb_0.1
.bb_0.1:
and al, 87
test bl, -14
jmp .bb_0.2
.bb_0.2:
xor si, 80
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and eax, -574348013
and sil, -56
xor rcx, -2
test sil, dil
or sil, dl
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
