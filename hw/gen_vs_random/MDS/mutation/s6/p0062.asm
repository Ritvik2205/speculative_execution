.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
cmovnbe rdx, rdx
or bl, al
cmovnle rdx, rbx
test rax, 1000448998
test al, al
xor rax, 459999114
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
xor bl, 67
bt ax, bx
and cl, cl
or eax, edx
and ax, 19740
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
xor al, 99
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
cmovns rdi, rsi
and ecx, -104
or bl, cl
and dl, 120 # instrumentation
cmovnle ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
