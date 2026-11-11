.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, al
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
btc dx, ax
lea rdx, qword ptr [rbx + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], -31
lea rcx, qword ptr [rdi + rcx + 44]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and ecx, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
