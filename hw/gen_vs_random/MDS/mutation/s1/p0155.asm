.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
or eax, edx
and ax, 31082
cmovnle rdx, rbx
test rax, 1207043993
xor bl, -102
xor al, 122
and ecx, -104
test al, al
and dl, 120 # instrumentation
cmovnle ax, bx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
or bl, cl
and cl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
xor rax, -91
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
cmovns rdi, rsi
bt ax, bx
or bl, al
cmovnbe rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
