.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
xor rsi, 78
jmp .bb_0.1
.bb_0.1:
test bx, 30
sbb al, -50
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test al, -70
and ecx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
