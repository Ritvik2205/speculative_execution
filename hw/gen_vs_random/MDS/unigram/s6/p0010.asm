.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
and rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
bt cx, si
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
btc rdi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
or al, bl
btc ax, ax
and dl, 68 # instrumentation
cmovns si, dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and dl, -73
cmovnl ebx, edi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
or rdi, -11
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
