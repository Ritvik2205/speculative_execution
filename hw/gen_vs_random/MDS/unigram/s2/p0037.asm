.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
bts rbx, 25
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
cmovnp bx, dx
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
not al
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovnbe eax, ecx
and esi, 84
xor sil, 94
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and bl, 26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
cmovbe edx, ebx
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
cmovbe esi, edi
btr edi, 221
and dil, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
