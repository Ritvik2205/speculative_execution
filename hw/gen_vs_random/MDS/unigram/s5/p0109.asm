.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and esi, 37
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
or edx, edx
cmovz bx, ax
or al, al
and sil, -56
test dl, sil
cmovns esi, ecx
or cl, al
xor al, -89
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
