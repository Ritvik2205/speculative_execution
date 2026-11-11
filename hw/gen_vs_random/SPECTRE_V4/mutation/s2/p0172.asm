.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
test dl, dl
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
sub ax, si
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
add dl, 31 # instrumentation
cmovnl cx, cx
cmp al, 70
cmp al, -52
movzx eax, ax
cmovnl si, ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
cmp edi, -104
imul bx
add dl, -39 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
adc bx, -89
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
add sil, 110
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
cmovnp rsi, rsi
test al, dl
cmp dil, dl
mov rdx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
test edi, -1249897727
movzx ebx, cl
and rsi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
imul rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
imul bl
add cl, -117 # instrumentation
cmovs rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
