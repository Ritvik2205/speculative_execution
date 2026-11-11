.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 8
xor rax, -91
cmovnp rdi, rdx
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
cmovnle ecx, ebx
btr si, 52
bts esi, 82
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
bts ax, dx
not bl
test bl, bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
cmovnbe ax, dx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
