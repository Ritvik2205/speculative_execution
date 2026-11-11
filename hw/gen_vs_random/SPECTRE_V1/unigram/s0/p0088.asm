.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
lea rcx, qword ptr [rbx + rax + 49]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
add rax, 324518812
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], esi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdx]
cmovl si, ax
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add dl, -124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 16
cmovl di, ax
lea rdx, qword ptr [rdx]
lea rdi, qword ptr [rbx + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
