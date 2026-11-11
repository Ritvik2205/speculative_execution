.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 2053
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], ebx
and sil, bl
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], -75
and si, ax
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
bts ax, si
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 39
or bl, dil
bt rdx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdi]
xor dil, bl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
cmovnbe ax, cx
btc cx, 104
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
