.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
not rdi
cmovnle ax, cx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
mov rcx, 4219775168754920203
btc rax, 64
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
adc dil, cl
add bl, 63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
cmovz edi, edx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 79
xchg edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 43
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 65
and edx, 43
cmovnbe rcx, rax
sbb sil, 108
bt ax, 59
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
sub dl, dl
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
neg dl
btr di, bx
and al, -36
test di, 99
or al, 95
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
bts ax, 82
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
or dx, 12
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
movzx ebx, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
xor dl, bl
xor ecx, esi
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
adc bl, 89
add ecx, 85
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 46
or dil, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
