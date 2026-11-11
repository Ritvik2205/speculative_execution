.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, cx
or al, bl
and si, -121
jmp .bb_0.1
.bb_0.1:
bt di, ax
test al, dil
jmp .bb_0.2
.bb_0.2:
or bl, -52
jmp .bb_0.3
.bb_0.3:
and dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
