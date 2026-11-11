.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -103 # instrumentation
cmovbe bx, bx
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
test eax, -2032743474
xor bl, -5
jmp .bb_0.1
.bb_0.1:
imul rbx
jmp .bb_0.2
.bb_0.2:
and ax, 7954
and bl, 89
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
btc ax, bx
adc dl, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
