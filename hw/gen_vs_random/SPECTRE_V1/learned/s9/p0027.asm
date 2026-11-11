.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
mov dl, cl
sub dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -95
sbb bl, cl
mov dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
