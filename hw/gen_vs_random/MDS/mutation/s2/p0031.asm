.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
xor bl, -88
or bl, al
cmovnle rdx, rbx
xor rax, -1128378406
and ax, 19224
bt ax, bx
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
and ecx, -104
cmovns rdi, rsi
cmovnbe rdx, rdx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
and cl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
xor al, 9
test al, al
test rax, 1207043993
or bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and dl, 120 # instrumentation
cmovnle ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
