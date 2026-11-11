.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dx, si
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
btc edi, edx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
inc ecx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
cmovnle edx, ebx
cmovbe di, ax
sbb cx, cx
add bl, 71 # instrumentation
adc cx, dx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
add sil, sil
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
sub cl, -51
cmp sil, -100
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add bl, -18 # instrumentation
cmovs cx, ax
xchg rdi, rax
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
cmovnp ax, si
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
add al, 122 # instrumentation
cmovz si, ax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
test rax, -405021090
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
xchg al, al
imul eax
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
cmovle ax, ax
add ax, -18924
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
btr rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
cmovbe rdx, rcx
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
