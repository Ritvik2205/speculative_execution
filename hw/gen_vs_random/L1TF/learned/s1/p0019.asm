.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
add dil, 88
xor cl, al
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb dl, cl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and sil, 93
xor al, cl
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
or rax, 699028911
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
