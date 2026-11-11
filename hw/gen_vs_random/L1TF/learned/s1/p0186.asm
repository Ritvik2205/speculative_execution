.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
or bl, dl
and dil, -82
and cl, 10
jmp .bb_0.1
.bb_0.1:
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
