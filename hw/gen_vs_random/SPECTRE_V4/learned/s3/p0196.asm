.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 0
sub dl, cl
sbb al, 70
and cl, 126
add al, sil
or dil, sil
test bl, al
and al, -124
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
cmp sil, -100
mov dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
