.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi + rdi + 8444]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
cmp dil, -58
and dl, -109
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 77
sub al, cl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rdx + rax]
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
test cl, -120
lea rdx, qword ptr [rdx + rdi]
mov rsi, rdx
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
test rax, -1638758413
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
