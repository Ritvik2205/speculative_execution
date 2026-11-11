.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno bx, bx
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and bl, 20 # instrumentation
cmovo edx, esi
and bl, 65 # instrumentation
cmovnbe dx, bx
cmovz ecx, ecx
and cl, 49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
and sil, sil
cmovle edx, ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
cmovnp ax, bx
cmovo ax, cx
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
and al, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
btc ecx, eax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -57
and dl, 97 # instrumentation
cmovnp di, ax
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
