.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, -1
bt di, 52
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
or bl, -54
test sil, sil
and al, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 93
bt rsi, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and dx, 3
or rbx, -72
cmovz edx, edx
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and cl, 122 # instrumentation
cmovl edi, edi
cmovno rbx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
