.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cbw
add dil, 90 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 78
sbb edx, 70
cmovl ebx, ecx
lea rdx, qword ptr [rax + rax + 4]
or di, cx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
xchg ecx, edi
cmovp dx, ax
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
cmovnp bx, si
sub ecx, 82
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
