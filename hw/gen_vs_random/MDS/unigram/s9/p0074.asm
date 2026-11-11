.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rsi, rbx
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and sil, bl
and dl, -73
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 11
xor bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and bl, -82 # instrumentation
cmovz ecx, esi
xor sil, dil
btc bx, di
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rsi]
cmovnz rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
