.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -54
xor rax, -270810088
xor dil, -70
or dil, 12
and ax, -122
and dil, cl
jmp .bb_0.1
.bb_0.1:
test ecx, -1843375753
test rdx, 55
or rdi, 21
and ax, 31082
test al, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
