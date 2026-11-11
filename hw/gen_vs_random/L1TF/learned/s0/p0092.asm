.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
xor dx, bx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
test dl, cl
or cl, -78
jmp .bb_0.1
.bb_0.1:
lea rsi, qword ptr [rdi + rax + 72]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
xor al, 38
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
xor ax, 30996
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
