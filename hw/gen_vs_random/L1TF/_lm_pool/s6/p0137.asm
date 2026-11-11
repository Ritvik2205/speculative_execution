.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
sbb al, dil
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test dil, -126
add eax, 109
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
jmp .bb_0.2
.bb_0.2:
cmp si, 11
xor al, 16
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
not bl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
add sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
