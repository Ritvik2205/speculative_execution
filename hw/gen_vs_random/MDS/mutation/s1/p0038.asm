.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
and cl, cl
bt ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and dl, 120 # instrumentation
cmovnle ax, bx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
or bl, al
xor al, -89
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
test rax, -363019044
cmovnle rdx, rbx
cmovns rdi, rsi
and ax, 5001
xor bl, -27
and ecx, -104
test al, al
or eax, edx
xor rax, 459999114
cmovnbe rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
