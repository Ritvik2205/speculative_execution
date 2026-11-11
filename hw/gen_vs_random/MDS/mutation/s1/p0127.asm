.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
cmovnbe rdx, rdx
cmovns rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
xor rax, -1499464454
and cl, cl
and dl, 120 # instrumentation
cmovnle ax, bx
cmovnle rdx, rbx
test al, al
xor al, 9
and ax, 31082
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
xor bl, -27
bt ax, bx
or eax, edx
test rax, 1214712583
and ecx, -104
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
