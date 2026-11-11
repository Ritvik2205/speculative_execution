.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp di, -8
mov esi, 1695134926
cmovle bx, bx
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdi
sub ebx, 85
sbb dil, 78
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
cmp cl, dil
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi]
mov esi, 1115061743
add bl, -2 # instrumentation
cmovs rcx, rax
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rbx]
bswap rax
sbb bl, -75
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
xor bx, si
cmovnb esi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 12
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
not rax
mov ax, 31802
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
mov rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 61
xor dl, -123
or rax, -943474997
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
or sil, sil
movzx ax, cl
cmovnz edx, ebx
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
cmp cl, cl
add bl, 7 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
inc dx
or edi, -78
cmovno rsi, rdx
cmovle rbx, rdi
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 35
or dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
test esi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
