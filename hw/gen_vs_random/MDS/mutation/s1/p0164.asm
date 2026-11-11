.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -82 # instrumentation
cmovz edx, edi
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
cmovo ecx, edi
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
bt dx, ax
btc rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
jmp .bb_0.1
.bb_0.1:
and al, 17 # instrumentation
cmovnp esi, edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and cl, -103 # instrumentation
cmovns ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
