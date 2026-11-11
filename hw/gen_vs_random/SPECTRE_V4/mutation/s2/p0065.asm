.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
cmovns rsi, rdx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
sub dl, cl
xor edx, ebx
btc rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
xchg dx, si
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
bt rbx, rax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
dec al
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
imul rdx, rbx, -19
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -38
or rsi, rsi
add dl, 122 # instrumentation
cmovz dx, bx
bt si, 18
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
mov rdi, -3495947874455269481
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
bswap rcx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
bts ecx, ebx
add edx, 89
movzx edi, si
inc cl
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
xor rax, 93
and al, dl
cmovz edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
