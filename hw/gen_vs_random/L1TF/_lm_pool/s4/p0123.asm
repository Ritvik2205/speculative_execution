.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and bl, 89
and rdx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdx]
and dil, al
sub cl, 86
and sil, dl
test dil, -126
xor si, -50
test sil, 29
and ax, 37
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
