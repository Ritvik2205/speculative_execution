.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 92
btr rdx, rbx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
cmp sil, 113
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
cmovle ax, ax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
add al, 122 # instrumentation
cmovz si, ax
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
xchg rdi, rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
inc ecx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
sub cl, -73
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
cmovbe di, ax
add ax, 6694
add sil, sil
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
test rax, -405021090
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
add bl, 71 # instrumentation
adc cx, dx
xchg al, al
sbb cx, cx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
cmovnp ax, si
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
cmovbe rdx, rcx
cmovnle edx, ebx
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
sub dx, si
btc edi, edx
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
add bl, -18 # instrumentation
cmovs cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
