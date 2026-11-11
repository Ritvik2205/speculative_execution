.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rax], edx
test dl, al
and bx, 82
xor dl, -19
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
or al, al
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
or rcx, 54
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
test cl, bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
sbb dil, 53
test al, -7
xor dil, -3
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
