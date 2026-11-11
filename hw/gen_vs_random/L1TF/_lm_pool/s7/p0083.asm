.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
jmp .bb_0.1
.bb_0.1:
test dil, -126
test dl, bl
sub sil, -99
cmp cl, al
add sil, -61
btc bx, di
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and dil, dil
cmp al, 56
lea rdx, qword ptr [rax + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
