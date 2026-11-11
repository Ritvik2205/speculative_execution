.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -115 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 20
and dl, -7
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and dl, 116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
or dl, sil
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 47
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rax], bx
xor dil, 27
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
bt dx, di
xor cl, dil
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 44
and al, -37
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
