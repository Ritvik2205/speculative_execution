.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
test dil, bl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
lea cx, qword ptr [rsi]
sbb dl, sil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
