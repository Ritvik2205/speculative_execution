.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmp dil, dil
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
sub rbx, rbx
lea ax, qword ptr [rax + rdi + 28]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
sub al, 63
movsx eax, ax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
