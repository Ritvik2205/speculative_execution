.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
xor rax, 20
or bl, dl
test sil, 29
or sil, dil
jmp .bb_0.1
.bb_0.1:
test dl, -37
lea rdi, qword ptr [rax + rdx + 62]
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
