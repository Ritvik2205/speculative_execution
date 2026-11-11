.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, sil
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -126
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 27
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
movzx rbx, dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
sbb si, 64
cmovz ebx, ebx
and dl, 46
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 40
mul rbx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
imul bx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
test ecx, 88
cmovnle dx, bx
add cl, 122 # instrumentation
cmovz rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 81
btc rcx, 65
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ecx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 10
mul rbx
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov edx, eax
xor dil, dl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 38
cmovb edi, ebx
xchg bx, cx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ecx
cmovnb ax, ax
cmovo rdi, rcx
cmovnbe edx, esi
cmovnl rdi, rbx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
or cl, al
cmovnbe eax, edi
add bl, dil
movzx ax, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
