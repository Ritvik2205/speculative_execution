.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
cmovp rax, rsi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and al, dl
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
test ebx, 245771113
xor dl, cl
and sil, -94
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and al, 126
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
