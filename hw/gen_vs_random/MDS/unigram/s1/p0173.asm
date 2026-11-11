.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb esi, edi
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 2
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rax]
and al, -26 # instrumentation
cmovnp rsi, rax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 83
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and dil, cl
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 64
and cl, 102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 53
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
xor edi, edi
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
cmovnp si, cx
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rcx], dx
or cl, 10
xor cl, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
