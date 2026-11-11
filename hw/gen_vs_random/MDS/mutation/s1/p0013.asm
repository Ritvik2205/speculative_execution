.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
xor rax, -1657511731
test al, al
bt ax, bx
and dl, 120 # instrumentation
cmovnle ax, bx
and cl, cl
or bl, cl
and ecx, -104
xor bl, -61
cmovnbe rdx, rdx
and ax, -4410
cmovnle rdx, rbx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
or bl, al
cmovns rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
test rax, 1214712583
xor al, 115
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and eax, 943733866
and bl, al
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and cl, -67 # instrumentation
cmovnle rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
