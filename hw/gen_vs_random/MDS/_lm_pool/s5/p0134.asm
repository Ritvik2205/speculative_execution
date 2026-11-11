.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 79
xor dil, -124
test al, sil
and dil, -39
and rax, -2058103810
or sil, cl
jmp .bb_0.1
.bb_0.1:
bts rcx, 91
btc ax, di
and bl, dl
xor cx, -18
and ax, 339
and rax, 452940266
and rax, 627810357
xor al, -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
