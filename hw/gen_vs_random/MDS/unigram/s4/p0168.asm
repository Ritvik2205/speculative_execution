.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
bts rbx, 17
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 94
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and cx, ax
and al, -56
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and dil, -2 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovnbe eax, esi
and di, si
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
cmovp rsi, rcx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 25
and al, -56
cmovnb edi, edi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
