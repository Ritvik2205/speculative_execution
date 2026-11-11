.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
and sil, dil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor bl, 67
and al, 106
xor dil, 8
or bl, dl
and bl, bl
not bl
or dil, cl
test cl, 91
xor dl, dil
test al, dl
and rsi, 20
or dl, cl
or al, -61
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
