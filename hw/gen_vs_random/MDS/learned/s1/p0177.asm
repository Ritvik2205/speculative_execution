.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
xor al, -26
test sil, dl
and ax, -122
test dil, -51
btr edx, ebx
and dil, cl
bt cx, di
and al, 49
and al, 84
and dil, 125
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
