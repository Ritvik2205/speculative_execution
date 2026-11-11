.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 5
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
bts rdx, rbx
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
adc dx, 53
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], esi
add dl, 31 # instrumentation
cmovnl si, si
movzx rsi, di
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
imul rdi
neg edx
sub cl, -74
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rcx
test al, 66
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
add bl, -109 # instrumentation
sbb ebx, 44
cmovns rax, rbx
cmovnbe eax, edx
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
add cl, -37 # instrumentation
adc edx, 5
imul ebx, ecx, 43
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 44
adc al, bl
sbb bl, sil
xor dl, 26
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 45
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
test dil, dil
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
imul rdi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
adc dl, 86
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
and al, bl
test al, bl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xchg sil, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
test al, 66
cmovnb esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
