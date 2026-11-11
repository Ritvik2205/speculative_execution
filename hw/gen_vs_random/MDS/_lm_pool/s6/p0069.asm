.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
or bl, 127
and bx, 11
and dil, dl
and al, 14
xor cl, 24
xor cl, 15
or al, -61
and cl, sil
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and al, 75
or cl, 39
or rdx, -48
btc ax, 56
test al, dl
xor cl, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
