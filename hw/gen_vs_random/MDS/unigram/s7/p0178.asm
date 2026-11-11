.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
bts ecx, 184
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
or si, si
btr rcx, 6
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
or esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 65
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 58
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and al, dil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
cmovnle rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
