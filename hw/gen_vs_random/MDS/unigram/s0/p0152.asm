.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
cmovnbe ax, dx
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rdi
cmovnbe eax, ecx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
xor bl, 2
cmovp ax, si
and al, 93
xor dil, bl
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 6
btc rcx, 71
cmovns ecx, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
and bx, di
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
or rcx, rdi
test eax, 758789512
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
