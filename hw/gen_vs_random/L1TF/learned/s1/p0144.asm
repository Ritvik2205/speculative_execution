.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
test dil, -126
and di, 20
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
cmovbe ecx, edi
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
test dil, -126
sbb dil, cl
cmovle rax, rdx
sbb cl, -11
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
