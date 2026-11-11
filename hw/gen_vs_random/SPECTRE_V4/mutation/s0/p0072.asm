.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
add ax, -18924
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
cmp sil, 113
inc ecx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
cmovle ax, ax
add bl, -18 # instrumentation
cmovs cx, ax
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
btc edi, edx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
sub cl, 92
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
sub dx, si
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
cmovbe di, ax
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
cmovnp ax, si
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
xchg al, al
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
sbb cx, cx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
add bl, 71 # instrumentation
adc cx, dx
imul eax
cmovbe rdx, rcx
xchg rdi, rax
add al, 122 # instrumentation
cmovz si, ax
add sil, sil
test rax, -1395313845
cmovnle edx, ebx
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
