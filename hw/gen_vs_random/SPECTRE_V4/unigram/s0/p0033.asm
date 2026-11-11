.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsf dx, di
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
cmovo dx, ax
sub edi, eax
adc dl, 35
xor cl, 88
btr rdx, 43
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
or bl, al
mov edi, ecx
add ax, 6414
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
btr rax, rdx
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
test dl, -102
add dx, 59
imul eax, eax
cmp dl, 95
cmp sil, 127
cmovnbe rsi, rax
sbb dil, 86
cmovnle bx, cx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rcx]
xor rax, rbx
cmovo dx, si
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovo ax, bx
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
bswap esi
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 39
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
mov rcx, 5
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rax
add cl, 54 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
xor dil, dil
test sil, dl
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
xchg al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
