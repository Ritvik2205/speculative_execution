.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
btc rcx, rcx
test dil, -116
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
cmp bl, sil
sub al, dil
test dl, -36
sbb esi, 71
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
cmp cl, 85
and dl, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
