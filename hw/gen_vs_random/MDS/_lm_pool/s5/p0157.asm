.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
btr dx, bx
and rax, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rax]
test al, 127
sbb al, 23
or si, -12
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rcx
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and cx, -2
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
or rbx, -77
btr ax, dx
test sil, cl
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
test sil, -96
xor cx, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
