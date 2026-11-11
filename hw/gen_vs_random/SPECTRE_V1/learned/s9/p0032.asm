.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22629
sub cl, -47
add sil, 2
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
cmp bl, dl
test sil, 13
test dil, -116
xor dl, al
and bl, dil
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
