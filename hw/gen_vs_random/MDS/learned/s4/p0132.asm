.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor rbx, 89
or dil, al
and bl, dl
or dil, -78
test dil, sil
and cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
