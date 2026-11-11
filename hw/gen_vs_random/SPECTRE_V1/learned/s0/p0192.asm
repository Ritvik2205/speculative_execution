.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
xor sil, bl
lea cx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
adc dl, 80
cmp di, 50
test rdi, -1846965753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
