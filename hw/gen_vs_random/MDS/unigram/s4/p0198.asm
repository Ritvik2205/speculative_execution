.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdx, 54
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 100
and dl, -87 # instrumentation
cmovo dx, cx
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdx]
btc rdx, 10
test sil, -55
and cl, -11 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
and bl, -120 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], di
btc bx, 104
btc cx, 115
and dl, -72 # instrumentation
not sil
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and cl, -127 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ecx
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
