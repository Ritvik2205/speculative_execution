.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
mov dil, sil
or edi, 22
test dl, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rdi + rdx + 18]
sbb rax, -1841833326
jmp .bb_0.3
.bb_0.3:
test bl, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
