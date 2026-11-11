.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
cmovo rax, rdi
add dil, -89 # instrumentation
sbb edi, edx
cmovnbe rax, rsi
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 10
test rbx, rsi
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ebx
cmovle dx, bx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 16
sbb ebx, 32
sbb cl, cl
mov sil, 38
xchg rax, rbx
btr rcx, 131
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
