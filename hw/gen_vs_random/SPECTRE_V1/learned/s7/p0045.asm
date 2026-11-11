.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
sbb eax, 1392087754
cmp esi, 13
xchg rdx, rsi
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 85
add cl, -127
adc bl, -76
xor cl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rdi + rax + 34]
jnbe .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
