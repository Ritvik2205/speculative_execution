.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 0
test cl, 91
and dl, al
jmp .bb_0.1
.bb_0.1:
xor dl, 40
xor cl, 24
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or bl, cl
and al, sil
jmp .bb_0.4
.bb_0.4:
and di, 99
xor al, dil
test al, 91
and rcx, -63
btc ax, 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
