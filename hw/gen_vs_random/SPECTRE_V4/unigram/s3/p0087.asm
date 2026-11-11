.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rax, rbx
cmovnb rsi, rax
xor dil, al
add dl, 92 # instrumentation
cmovnl rsi, rax
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
cmovnle si, bx
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 30
and rdi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdi]
sub rax, rax
imul edx, edi, 94
movzx esi, dl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
sub ebx, 86
bts rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rcx
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
cmovnp ax, dx
test sil, 16
cmp ecx, 6
adc dil, -15
movzx edi, dil
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
test rax, -269735774
dec dl
and rsi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
btc rdx, rcx
test dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 5
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], si
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 74
sub si, ax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
