.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
and cl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdi]
cmovnp si, bx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 123
bt ecx, edi
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 35
btc rcx, 34
jmp .bb_0.1
.bb_0.1:
and al, -68 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and al, 82
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and sil, 68 # instrumentation
cmovns bx, si
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
