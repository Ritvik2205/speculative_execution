.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec al
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -34
movzx edi, si
sub dl, cl
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
and al, dl
imul rdx, rbx, -19
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 104
bt si, 18
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
xor rax, -117
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
or rsi, rsi
mov rdi, -7956777892145474940
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
bts ecx, ebx
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], ebx
cmovz edi, esi
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
xor edx, ebx
bt rbx, rax
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 123
add dl, 122 # instrumentation
cmovz dx, bx
btc rdx, rsi
xchg dx, si
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
add edx, 89
cmovns rsi, rdx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
inc cl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
bswap rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
