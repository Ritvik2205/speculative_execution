.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, bx
test cl, -62
mov bl, cl
add cl, -127
sbb dil, -93
sub cl, -47
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
js .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
setz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
