.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb dx, bx
cmovnb dx, di
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
xor al, -28
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 90
cmovb rbx, rdi
add bl, 110 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
bt edx, edx
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
bts rax, 117
and rdi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdi]
cmovz si, dx
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
cmp sil, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
not rcx
xor al, 77
movzx eax, dl
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
