.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
xor cl, sil
jmp .bb_0.2
.bb_0.2:
and dil, dil
and dil, al
xor cl, sil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
test ax, 13284
adc al, -61
sbb al, cl
sbb al, -50
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
