.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 21 # instrumentation
adc bx, 63
inc dil
test bl, 84
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
cmp cl, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
jmp .bb_0.2
.bb_0.2:
test dl, 84
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
