.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
cmovz cx, cx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
and cl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
and cx, -8
and rax, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdi]
bts bx, dx
cmovnle rdx, rax
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
or dl, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
