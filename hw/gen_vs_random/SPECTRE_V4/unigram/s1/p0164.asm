.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
imul rsi, rbx, -126
movzx dx, sil
sbb ax, -30070
xor sil, dl
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
test bl, 87
cmovs di, dx
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
btr esi, 227
bt rdx, rax
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sbb edi, 107
sub esi, -10
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dil
and rdi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rdi
xor rsi, rbx
movzx eax, di
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 78
sub dl, sil
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
xor bx, -65
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
test al, 18
mov cl, 1
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 62
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ecx
dec dil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
bt esi, ecx
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
sbb ax, 7207
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
