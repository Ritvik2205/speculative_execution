.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, bx
xor bl, -61
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
cmovnle rdx, rbx
cmovns rdi, rsi
test rax, 1978892575
xor rax, -404206377
and dl, 120 # instrumentation
cmovnle ax, bx
or bl, cl
or bl, al
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
or eax, edx
test al, al
xor al, 122
cmovnbe rdx, rdx
and ax, 31082
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
and cl, cl
and ecx, -104
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
