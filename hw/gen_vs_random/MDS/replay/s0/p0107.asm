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
xor bl, -88
cmovnbe rdx, rdx
and ax, -16061
cmovnle rdx, rbx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
or bl, al
cmovns rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
test rax, -648054011
xor al, -26
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
