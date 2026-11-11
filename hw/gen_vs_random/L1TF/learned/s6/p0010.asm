.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
add rsi, 51
not dil
xor dl, cl
test dil, -126
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and bl, bl
jmp .bb_0.1
.bb_0.1:
test al, -104
or al, dl
xor dil, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
