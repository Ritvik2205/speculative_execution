.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and bl, 15 # instrumentation
cmovb bx, di
and di, bx
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
or esi, ebx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
bt di, 52
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
or di, 1
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
xor ax, -6793
btc rax, 106
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
test cl, -123
cmovp ax, si
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
cmovns cx, bx
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
