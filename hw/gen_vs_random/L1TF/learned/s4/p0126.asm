.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 100
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test bl, 45
btc dx, si
jmp .bb_0.2
.bb_0.2:
or dil, dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
xor cl, dl
cmp cl, 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
