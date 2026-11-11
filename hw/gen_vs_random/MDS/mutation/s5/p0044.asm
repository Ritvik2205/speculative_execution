.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
xor rax, -270810088
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
cmovnbe rdx, rdx
xor bl, -102
xor al, 99
and ecx, -104
test rax, 337705873
or eax, edx
and dl, 120 # instrumentation
cmovnle ax, bx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
bt ax, bx
and cl, cl
test al, al
or bl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
and ax, -122
cmovns rdi, rsi
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
