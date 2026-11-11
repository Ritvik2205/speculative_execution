.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, 57
test esi, 98
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add bl, -10 # instrumentation
mov bx, 27
cmovnb ecx, ebx
sub rbx, 26
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 51
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 71
not di
cmovnbe si, bx
and rsi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rsi]
test rdx, 99
cmovnbe rax, rbx
cmovns cx, cx
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 64
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], eax
add bl, -18 # instrumentation
mov rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 35
and bl, dil
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
test sil, al
and edi, 43
xor edi, esi
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
cmp al, dl
movsx ebx, di
mov rsi, 58
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 42
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
test sil, al
add cl, cl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
dec dil
and sil, -49
or ebx, 38
sub cl, bl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
sbb eax, 4
xor cl, cl
or cx, si
and ax, 35
test dil, dl
xchg ax, di
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
