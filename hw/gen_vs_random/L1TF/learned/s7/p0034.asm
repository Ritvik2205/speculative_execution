.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
sub al, sil
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 49
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdx]
jmp .bb_0.2
.bb_0.2:
add dl, -52 # instrumentation
adc bx, 45
sub al, -47
btr di, si
jmp .bb_0.3
.bb_0.3:
cmovnp rax, rbx
mov dl, al
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
