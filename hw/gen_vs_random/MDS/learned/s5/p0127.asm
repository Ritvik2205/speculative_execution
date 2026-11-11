.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and dl, dl
test cl, 91
and al, cl
and al, dl
or dl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
or ax, -7150
btr di, bx
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
test dl, 27
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
xor sil, dil
or rsi, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
