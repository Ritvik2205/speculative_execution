.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 1276549484
add al, 18
sbb sil, bl
or al, 19
sub al, dil
sub al, bl
test al, 84
add sil, 2
test rdi, -1846965753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
