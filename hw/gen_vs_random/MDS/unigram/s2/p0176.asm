.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 90
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
xor sil, -15
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
bts rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
xor cx, -18
and al, al
cmovns rsi, rax
and dl, 72 # instrumentation
cmovz esi, eax
and rdx, rdx
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
