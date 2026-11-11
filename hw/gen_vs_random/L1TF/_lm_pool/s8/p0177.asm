.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
jmp .bb_0.1
.bb_0.1:
test dl, 84
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
add ax, 116
jmp .bb_0.2
.bb_0.2:
test dil, -126
add dl, dil
xor sil, bl
and bl, 89
xor dil, bl
or rdi, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
