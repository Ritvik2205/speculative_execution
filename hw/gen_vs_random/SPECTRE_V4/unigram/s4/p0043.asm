.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
sbb ebx, -54
cmovnz edx, ebx
add bl, 122 # instrumentation
cmovz dx, bx
bt ax, 248
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and dl, -53
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
test sil, 68
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
cmovnz eax, esi
adc rax, 1682231791
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
cmp dx, 13
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 61
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 41
or al, 1 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test cl, -52
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
imul eax, esi
add cl, 35 # instrumentation
cmovnb rax, rbx
add al, -71 # instrumentation
cmovb rax, rdi
mov rbx, 23
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edi
sbb cx, 106
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
imul sil
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
