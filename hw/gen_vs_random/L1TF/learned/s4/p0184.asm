.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 97
jmp .bb_0.1
.bb_0.1:
xor al, bl
sbb dl, -26
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rsi + rbx + 47]
test bl, 45
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
jp .bb_0.6
jmp .exit_0
.bb_0.6:
cmp dil, 20
lea rax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
