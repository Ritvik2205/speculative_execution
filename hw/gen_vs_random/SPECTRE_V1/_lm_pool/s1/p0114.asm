.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
test sil, -31
sub dl, bl
sbb cl, 105
xchg dil, cl
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 39
lea rax, qword ptr [rdx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
