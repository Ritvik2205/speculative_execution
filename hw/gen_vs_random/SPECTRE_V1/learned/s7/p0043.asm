.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
cmp eax, -563371897
jp .bb_0.2
jmp .exit_0
.bb_0.2:
lea ax, qword ptr [rdx + rsi]
sbb dl, dil
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
