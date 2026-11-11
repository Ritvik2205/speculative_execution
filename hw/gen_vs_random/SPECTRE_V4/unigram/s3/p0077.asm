.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe si, dx
and rsi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rsi]
bswap eax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
cmovnp ax, cx
mov dl, sil
and rcx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 32
and al, sil
xor dx, 7
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 98
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -74
cmp al, 114
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
bts si, di
cmovle rcx, rsi
inc dl
add cl, 31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dil
test bl, 78
add al, 111 # instrumentation
cmovno eax, edx
sbb sil, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
imul sil
btr ax, si
movzx si, sil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ebx
test cl, -52
and edi, -102
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdx
cmovnz ax, cx
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
imul rcx, rcx
cmovnp esi, ebx
xor sil, sil
xor sil, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
