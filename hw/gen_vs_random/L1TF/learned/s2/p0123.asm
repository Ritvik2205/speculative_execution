.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -46
mov sil, cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
sbb al, -4
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rax, qword ptr [rbx]
lea rax, qword ptr [rbx]
xchg rsi, rax
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
