.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rdx, si
adc eax, -1513455903
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and dil, cl
add cl, 106 # instrumentation
cmovnp rcx, rax
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
sbb al, 32
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 36
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
cmp sil, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 11
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
and sil, al
add edi, 11
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 86
cmp sil, 88
or al, 96
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
cmovb dx, dx
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
add cl, -32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
xor rcx, 75
not dl
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 7
adc ax, ax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
add dl, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
bswap esi
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
xchg bl, bl
and rbx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
add bl, al
cmp dl, 36
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rax
adc edi, 34
cmovs rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
