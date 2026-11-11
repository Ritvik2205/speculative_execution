.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
xor al, dil
sbb sil, -124
inc eax
cmp dil, 53
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
