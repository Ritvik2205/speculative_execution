.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 3
lea rdx, qword ptr [rbx + rax + 15]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 45
cmp ax, -4865
jmp .bb_0.3
.bb_0.3:
and dl, 59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
xor dil, -42
jmp .bb_0.4
.bb_0.4:
or rbx, 18
jmp .bb_0.5
.bb_0.5:
cmovnp rax, rbx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
