.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 18
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
cmovnp edi, ecx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], sil
inc al
sub al, al
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
adc dl, 88
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 75
sub ax, si
or cl, al
add sil, al
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovs eax, edx
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], ax
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
btc eax, 62
add al, 17 # instrumentation
cmovnle eax, esi
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
mov sil, dil
mov rcx, 48
dec rax
test sil, dl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
or ax, 7381
cmovnle di, cx
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
or dil, -104
xor dil, dl
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 62
imul dx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
