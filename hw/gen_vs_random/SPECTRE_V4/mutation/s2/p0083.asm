.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
mov cl, bl
cmovz si, di
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rcx
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 7
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
cmovnz ecx, eax
imul ax, di
and ax, -23308
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 65
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
xchg esi, edx
or cl, cl
xor rax, 1049851782
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
and cx, di
adc rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdi]
movzx ecx, cl
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
or eax, -1779536330
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
xchg dl, bl
test bl, al
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
cmp edi, ebx
adc al, dl
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
bswap rax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
btc edi, esi
cmp al, 109
mov dl, bl
inc dil
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
sbb cl, cl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
