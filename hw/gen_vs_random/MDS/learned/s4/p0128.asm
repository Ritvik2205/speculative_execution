.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 123 # instrumentation
cmovo dx, di
and sil, 74
xor al, 9
or dil, 12
jmp .bb_0.1
.bb_0.1:
lea esi, qword ptr [rax]
and ax, 5001
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test bl, -114
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
