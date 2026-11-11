.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
sub al, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
test sil, 29
test dil, dil
sub al, -47
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rcx]
add cl, -123 # instrumentation
cmovnp rdx, rsi
add esi, -124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
