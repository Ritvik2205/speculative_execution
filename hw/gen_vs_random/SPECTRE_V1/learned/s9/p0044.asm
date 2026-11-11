.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
sub al, -1
sub si, 32
lea cx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 42
jmp .bb_0.1
.bb_0.1:
test cl, -62
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
test al, 34
and cl, 86
lea rax, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
