.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 106 # instrumentation
cmovnp rdi, rsi
dec rbx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
xor sil, cl
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], bx
add dl, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
test esi, 83
and rbx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rbx]
movsx rsi, bl
cmovp rdi, rax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
cmovz esi, edx
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 23
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
or al, 96
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
cmovnbe rax, rsi
test ecx, 72
cmovnp esi, ecx
xchg ax, di
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
cmovnb si, si
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
add bl, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmp dl, dil
test bl, 0
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
not dl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, cx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
