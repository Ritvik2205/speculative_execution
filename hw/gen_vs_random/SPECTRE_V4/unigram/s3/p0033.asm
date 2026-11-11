.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
test di, 41
movzx ebx, sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
imul bx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
btc rdi, 167
sbb ebx, 90
cmovz si, si
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], ecx
test dl, 19
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 93
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
mul cl
or dx, 86
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
cmovz edi, ebx
and rax, 78
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rax]
and rcx, -102
cmovnz edi, ecx
add cl, 122 # instrumentation
cmovz rax, rbx
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
dec ecx
cmp bl, dl
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
cmovb dx, dx
test al, 80
neg dl
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
or dl, 88
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
cmp rsi, 21
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
