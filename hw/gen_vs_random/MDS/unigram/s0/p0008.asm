.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and bl, cl
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
cmovns ebx, ebx
or bl, 73
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
btc rax, rdi
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovns edi, edi
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
btc eax, 65
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
and dl, -7
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
