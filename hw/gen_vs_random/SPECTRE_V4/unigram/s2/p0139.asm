.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
dec bl
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
cmovle esi, edi
add cl, -37 # instrumentation
adc ecx, 13
imul bx
or dil, 70
btc ax, bx
cmovp dx, di
xchg rax, rbx
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 85
bt esi, edx
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test cl, dl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe ebx, edx
test dl, 19
xor dil, 45
cmovnbe si, di
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
test esi, 89
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
sbb sil, 108
sub bl, dil
btc rdx, 26
imul rax, rsi
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rsi
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
add dl, dl
movzx edx, sil
bts ebx, edx
xor ax, si
cmovnle rbx, rbx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
or ebx, ecx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 541896200
and dil, 96
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
cmovnb ecx, eax
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
sub al, al
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
