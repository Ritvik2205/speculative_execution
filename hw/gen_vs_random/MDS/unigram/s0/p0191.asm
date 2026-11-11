.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 38
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
cmovnb ebx, ecx
and ax, dx
or rbx, -72
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
cmovno rcx, rsi
and cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
test dil, bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
btr rbx, 63
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
test dil, bl
and bl, 15 # instrumentation
cmovb bx, di
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and al, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
xor al, bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
