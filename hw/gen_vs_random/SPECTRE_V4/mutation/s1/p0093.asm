.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
add edx, 89
mov rdi, -7956777892145474940
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -38
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
dec al
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
bt rbx, rax
bswap rcx
xor edx, ebx
bts ecx, ebx
and al, dl
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
movzx edi, si
xor rax, -1522567562
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
add dl, 122 # instrumentation
cmovz dx, bx
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
inc cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
bt si, 18
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
cmovns rsi, rdx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
or rsi, rsi
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
imul rdx, rbx, -19
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
xchg dx, si
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
cmovz edi, esi
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
btc rdx, rsi
sub dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
