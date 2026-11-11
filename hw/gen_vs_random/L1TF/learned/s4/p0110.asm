.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdi]
xor dl, bl
jmp .bb_0.1
.bb_0.1:
and al, -68
jmp .bb_0.2
.bb_0.2:
and dil, -22
jmp .bb_0.3
.bb_0.3:
cmp cl, cl
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
