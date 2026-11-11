.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -126
sbb sil, 19
cmovnp bx, si
xor al, 89
test cl, 48
add dil, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
xor ebx, ecx
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], -1
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
