.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
cmovle rdx, rdi
sub sil, -36
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 58
add rax, 51
xor di, cx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 36
not eax
cmovz ecx, eax
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 21
cmovns cx, cx
add bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
xor bl, dil
or cx, 22
cmovnb ax, ax
sbb cl, 20
and rbx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rbx]
add rdi, 105
cmp dx, bx
bts rax, 157
sbb eax, -1688332460
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
cmovnp rsi, rsi
and bl, dil
and rsi, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rsi], 25
test eax, -544019457
xor cl, dil
cmovnl rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
cmp bl, 13
cmp ax, -15409
test ax, dx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb eax, 1081973675
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
