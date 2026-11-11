.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc eax, 40
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and bl, 45 # instrumentation
cmovnb ax, cx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
or dl, dl
cmovnz cx, ax
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or ax, -6817
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rsi]
bts dx, si
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
cmovz eax, ecx
and dil, -39
and sil, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdx]
test dil, al
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
test sil, 17
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
