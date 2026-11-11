.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
and cl, -111
xor sil, -15
test bl, 65
test rcx, -613256812
or rdi, -11
btc dx, cx
and al, 84
test cl, -18
and rdi, 9
test dl, 9
cmovnp rax, rdi
xor bl, -88
jmp .bb_0.1
.bb_0.1:
test al, sil
test eax, -1634766116
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
