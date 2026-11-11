.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
add dl, cl
adc ax, 24404
or cl, -62
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -120
sub dl, -48
xor ebx, 92
or dil, cl
movsx esi, cl
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
cmp di, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
