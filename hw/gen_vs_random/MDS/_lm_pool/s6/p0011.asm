.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -12519
xor cl, 83
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and cx, -8
bts rdi, 130
jmp .bb_0.1
.bb_0.1:
test dl, 9
btc dx, 67
xor sil, al
test ax, -31596
test dl, 9
test bl, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
