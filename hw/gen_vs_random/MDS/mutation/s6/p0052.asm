.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, al
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
xor bl, -61
cmovns rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
xor rax, -1128378406
or eax, edx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
and cl, cl
xor al, -89
and dl, 120 # instrumentation
cmovnle ax, bx
test al, al
test rax, 1978892575
bt ax, bx
or bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
cmovnle rdx, rbx
and ax, 31082
cmovnbe rdx, rdx
and ecx, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
