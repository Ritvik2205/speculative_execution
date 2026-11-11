.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -21
cmp rax, 900122030
sub al, 63
or eax, -126
cmp dl, dil
or bl, sil
test ax, 19339
add rax, -845342150
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
