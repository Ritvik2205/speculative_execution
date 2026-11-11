.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 78
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and ax, 35
add cl, cl
cmovle ecx, ebx
btc eax, 46
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 42
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
cmovb eax, ecx
and rbx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rbx]
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 70
and rbx, 69
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
cmovo rax, rsi
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 47
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
inc eax
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
cmovnbe rdi, rbx
and sil, dl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 13
btc cx, 240
cmp al, dl
add ax, 28666
mul ax
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 77
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
cmovnbe rdi, rbx
cmp di, si
and rax, 2
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
xor dil, 89
add rdx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
