.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ecx, edx
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
cmovle si, ax
or bl, dl
and cl, dl
test dl, 48
or rcx, -17
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
bt rsi, 4
and ax, 31082
cmovnle rdx, rbx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
or bl, al
cmovns rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 104
test rax, 337705873
xor al, 55
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
