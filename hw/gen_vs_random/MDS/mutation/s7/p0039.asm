.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
and rbx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rcx
and al, -82 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
cmovz rbx, rdi
not esi
xor al, al
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
bt esi, 3
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
and al, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
cmovs rsi, rcx
cmovb esi, edx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and al, -83 # instrumentation
cmovnp rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
