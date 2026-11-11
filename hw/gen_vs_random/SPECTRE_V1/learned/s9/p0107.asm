.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, bl
sbb cl, 105
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
sub edx, -63
sub al, -1
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
lea rsi, qword ptr [rax]
test al, -75
sbb cl, 105
lea rdi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
