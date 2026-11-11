.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
cmovns rdi, rsi
xor rax, -773894210
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
or bl, cl
and dl, 120 # instrumentation
cmovnle ax, bx
cmovnbe rdx, rdx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
or bl, al
and ecx, -104
cmovnle rdx, rbx
xor al, 9
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and cl, cl
test al, al
xor bl, -102
and ax, 19740
bt ax, bx
test rax, -359674714
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
