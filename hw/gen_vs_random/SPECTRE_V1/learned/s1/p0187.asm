.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
sbb al, -107
test bl, -8
lea di, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 54
setns bl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
mov al, sil
lea rdx, qword ptr [rdi + rsi + 23]
jmp .bb_0.1
.bb_0.1:
test al, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
