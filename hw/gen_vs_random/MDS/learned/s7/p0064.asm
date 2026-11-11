.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
test ecx, -1843375753
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and ax, -12519
test al, sil
test rcx, -613256812
or sil, -49
jmp .bb_0.1
.bb_0.1:
test al, bl
jmp .bb_0.2
.bb_0.2:
test dl, 9
and dil, dil
test edx, -372470678
or al, 16
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
