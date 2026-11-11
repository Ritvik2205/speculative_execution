.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dx, si
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
add bl, 71 # instrumentation
adc cx, dx
cmovbe rdx, rcx
inc ecx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
sub cl, -32
add ax, 65
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
cmp sil, -100
sbb cx, cx
btr rdx, rbx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add sil, sil
test rax, -269735774
xchg al, al
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
add bl, -18 # instrumentation
cmovs cx, ax
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
xchg rdi, rax
imul eax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
cmovnle edx, ebx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
btc edi, edx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 98
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
cmovbe di, ax
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
add al, 122 # instrumentation
cmovz si, ax
cmovnp ax, si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
cmovle ax, ax
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
