.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
movzx edi, si
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
dec al
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and al, dl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
or rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
cmovns rsi, rdx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
bts ecx, ebx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
imul rdx, rbx, -19
sub dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
add dl, 122 # instrumentation
cmovz dx, bx
add edx, 89
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -38
bt si, 114
inc cl
xor rax, -1522567562
bt rbx, rax
xor edx, ebx
cmovz edi, esi
xchg dx, si
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
bswap rcx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 85
btc rdx, rsi
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
mov rdi, -3495947874455269481
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
