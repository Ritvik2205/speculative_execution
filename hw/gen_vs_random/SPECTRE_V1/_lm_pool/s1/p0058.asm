.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 3
xor cx, 32
sub cl, -21
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 42
test cl, -24
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
sbb al, 66
lea cx, qword ptr [rdx + rsi + 42]
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
