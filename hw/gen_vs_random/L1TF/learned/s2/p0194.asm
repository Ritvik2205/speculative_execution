.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea si, qword ptr [rdx + rax]
and ax, 26813
sbb cl, -11
test al, -84
add al, 56
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax + rdi + 92]
cmp al, 56
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
test bx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
