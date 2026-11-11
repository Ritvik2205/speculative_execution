.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
test esi, 60
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 88
cmovns cx, ax
and rdi, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and ecx, 23
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
sub dil, sil
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bt bx, 29
cmovnp rcx, rax
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 85
xor dil, al
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
cmovnb ecx, edx
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
and cl, al
cmovle rcx, rsi
btc ax, cx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
cmovnp di, bx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
cmovnb edx, edi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edi
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 34
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
test dl, al
sub dil, dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 48
or eax, edi
sub bl, sil
imul ecx, edx
not ebx
adc eax, -1513455903
cmovnp rax, rsi
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
bt edx, ecx
adc sil, 8
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
