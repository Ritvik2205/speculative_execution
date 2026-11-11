.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 71 # instrumentation
adc cx, dx
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
cmp sil, -100
inc ecx
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
cmovle ax, ax
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
test rax, -813666773
sub dx, si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
xchg rdi, rax
xchg al, al
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
cmovnp ax, si
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
add sil, sil
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
sbb cx, cx
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
btr rdx, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
cmovbe di, ax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
add bl, -18 # instrumentation
cmovs cx, ax
btc edi, edx
sub cl, -32
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
imul eax
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
add al, 122 # instrumentation
cmovz si, ax
cmovbe rdx, rcx
cmovnle edx, ebx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
add ax, 65
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
