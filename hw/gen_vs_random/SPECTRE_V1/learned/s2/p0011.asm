.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
sbb dl, 127
xchg rdi, rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
cmp al, cl
sbb cl, dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
xor ax, 913
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
