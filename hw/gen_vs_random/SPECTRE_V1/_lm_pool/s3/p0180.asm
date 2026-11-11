.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
xor al, -89
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
sbb sil, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
cmp rcx, 73
sub rdi, 47
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
test rcx, -1420345926
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
