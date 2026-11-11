.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 76
test al, bl
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
cmp sil, -11
or bl, dl
or al, sil
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
or al, -5
test cl, 47
btc bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
