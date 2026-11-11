.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 12
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
xor rax, -1522567562
cmovnp rax, rdi
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 26
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
sbb sil, -11
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
cmovbe rbx, rcx
and dl, -104
cmp rcx, rdi
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and sil, -84
cmp rdi, 28
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
test rbx, rdi
btc rax, rbx
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
sbb rdx, -43
sub bl, 66
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
bt rax, 59
sbb cl, 12
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 75
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
or cx, dx
test dl, 114
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
test ebx, 86
bts ebx, edi
xor ax, 13329
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
