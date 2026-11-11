.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
cmovbe rax, rcx
mov esi, 1695134926
xor cl, -73
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 86
add bl, -18 # instrumentation
cmovs ax, cx
cmovb edi, ecx
add dl, bl
add cl, 9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rsi]
sbb ecx, ebx
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], -2
cmp al, sil
imul ecx, esi
and cl, dl
xor dl, -66
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 73
and rcx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rcx]
xchg rdx, rbx
not di
cmp dil, 101
add esi, 76
test edx, -38580719
add dl, 122 # instrumentation
cmovz dx, di
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
add bl, bl
test bl, 110
bswap rsi
add dl, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
or dil, al
cmp cl, bl
and rbx, rax
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
imul rdx, rdi
imul di
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
btr dx, 209
xor cl, bl
and sil, bl
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], cx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
mov dil, 31
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
