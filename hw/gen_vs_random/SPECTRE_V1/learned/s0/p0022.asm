.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -82
cmp rax, 1189904463
sub cl, sil
bts di, 230
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
test al, 34
test rcx, -1420345926
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
