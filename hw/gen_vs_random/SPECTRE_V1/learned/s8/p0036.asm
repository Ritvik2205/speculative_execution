.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 32540
test al, -75
add sil, -68
xor cl, al
sbb dl, 127
sbb al, bl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dil
lea cx, qword ptr [rax]
sbb bl, dil
xor cx, 13
and rbx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
