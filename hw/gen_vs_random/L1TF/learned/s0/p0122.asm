.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
btc bx, di
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 51
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, dil
and edx, 83
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
or dl, cl
jmp .bb_0.4
.bb_0.4:
test dl, 84
xor dil, sil
xor cl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
