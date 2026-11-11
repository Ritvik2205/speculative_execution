.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ecx, edi
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], ax
test sil, -55
btr eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 50
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and dl, -75 # instrumentation
cmovp edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
or cl, al
or bl, 43
or rbx, -77
xor rax, rdx
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
