.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 4
add al, sil
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 53
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
cmovz eax, edx
and rdi, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdi]
imul sil
adc al, cl
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
cmp cl, cl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 89
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
mul dl
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
sbb rdx, 7
mov rbx, rdi
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovns ebx, eax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 87
and rax, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
sub sil, cl
add di, -74
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 33
add rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
movzx rbx, si
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
cmp al, al
cmovb esi, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
