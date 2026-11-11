.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 80
imul ax, bx, 72
add bl, 39 # instrumentation
cmovo eax, edx
cmp dil, -78
add dl, 47
add dl, 95 # instrumentation
cmovnb rdx, rax
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -126
sbb esi, edx
lea rax, qword ptr [rsi + rsi + 5]
xor bl, -38
add bl, 52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
nop
sub dl, al
sbb al, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
