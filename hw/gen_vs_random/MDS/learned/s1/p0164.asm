.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 34
and cl, bl
btc dx, bx
or al, -61
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
test dx, ax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
test sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
