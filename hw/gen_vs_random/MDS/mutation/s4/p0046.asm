.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and al, -37
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and al, dl
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and al, dl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
test sil, dl
and sil, 65
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
cmovbe si, dx
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
and al, -38 # instrumentation
cmovp rax, rsi
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
