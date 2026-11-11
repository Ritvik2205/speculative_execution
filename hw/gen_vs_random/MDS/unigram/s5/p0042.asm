.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and al, 32 # instrumentation
cmovnbe eax, ecx
btc rax, 110
bt rax, rax
cmovns dx, cx
cmovp ax, si
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
btc edi, 230
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
cmovbe eax, ecx
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
or rbx, -77
cmovno rbx, rcx
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and dil, sil
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
