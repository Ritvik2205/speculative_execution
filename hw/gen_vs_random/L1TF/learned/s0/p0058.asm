.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, cx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
sbb dl, -26
xor cl, sil
sbb al, sil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
jmp .bb_0.5
.bb_0.5:
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
