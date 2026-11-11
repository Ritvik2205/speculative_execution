.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -82 # instrumentation
sbb dx, ax
cmovnp ecx, ecx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], al
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and dx, 1
adc al, 69
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
movzx eax, cl
xor si, bx
bts edx, edx
imul rsi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rsi]
cmp al, al
add edi, 11
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
cmovs eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
btc rbx, rdi
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 85
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 34
mul ax
and rcx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rcx]
or ebx, eax
xchg ax, si
sbb cl, cl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
add rax, rbx
imul bx
add rdx, rsi
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
xor al, cl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 6
dec rdi
add bl, -26 # instrumentation
btr ebx, 64
cmovz rax, rdx
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
