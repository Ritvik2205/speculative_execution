.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
inc eax
test cl, -24
cmp rsi, 53
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, -89
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
