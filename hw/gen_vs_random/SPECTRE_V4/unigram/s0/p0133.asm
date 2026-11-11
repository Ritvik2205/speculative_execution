.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
add rbx, rcx
cmovnb edi, eax
and rax, 30
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
mov dl, dil
and bl, sil
sub dl, dl
or dl, dil
xor edx, 93
xor si, bx
cmovnbe rdx, rax
xor eax, -437098167
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 40
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
cmovns si, si
xchg rax, rbx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
xor dl, 43
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edi
cmovns bx, bx
cmovnle cx, dx
xor si, 83
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
or cx, bx
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 96
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
not dx
or edx, edi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdx
adc rdx, 9
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add bl, -10 # instrumentation
cmovnbe ebx, edi
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
cmovz eax, edx
movzx edx, dx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
movzx edi, sil
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
