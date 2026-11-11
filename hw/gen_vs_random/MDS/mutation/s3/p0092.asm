.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
btr esi, ebx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
cmovbe edi, edi
and dl, -1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and bl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and cl, 34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
btr bx, dx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rax
jmp .bb_0.1
.bb_0.1:
and al, 17 # instrumentation
cmovnp esi, edx
and cl, -103 # instrumentation
cmovns ecx, ecx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
