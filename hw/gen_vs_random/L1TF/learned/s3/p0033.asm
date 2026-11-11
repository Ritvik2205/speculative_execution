.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 35
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], cx
test dil, -126
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
