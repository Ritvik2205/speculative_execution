.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 28
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
sub sil, -18
sbb dil, sil
sbb dil, bl
test dl, -7
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
