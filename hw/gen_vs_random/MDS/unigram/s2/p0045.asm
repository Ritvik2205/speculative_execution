.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and al, 66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
btc ecx, ebx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
cmovns rsi, rsi
and al, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovz cx, si
and dl, 8 # instrumentation
cmovle cx, si
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdi]
test cl, 54
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovno rbx, rax
and bl, 127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
