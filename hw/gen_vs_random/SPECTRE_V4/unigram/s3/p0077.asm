.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo eax, edx
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
neg rsi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
btc rdx, 60
cmp ax, -15031
and dl, 94
cmovo di, ax
bts esi, edx
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and al, -36
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rax]
mov rdi, 44
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 19
add dl, bl
cmp ax, 23131
sbb bx, 35
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rbx], esi
sbb esi, 26
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], si
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
add sil, -75 # instrumentation
adc sil, 97
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
and rbx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rbx]
xchg edx, eax
and rsi, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rsi]
cmovp bx, ax
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 9
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 63
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 40
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
btc bx, 49
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 34
xchg esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
