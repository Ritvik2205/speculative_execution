.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
cmp di, -78
and dl, dil
and bl, dil
test dil, -126
adc al, -103
and bl, dil
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rdx + rbx + 99]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
