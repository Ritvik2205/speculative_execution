.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
add bl, -18 # instrumentation
cmovs cx, ax
btr rdx, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
imul eax
xchg al, al
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
xchg rdi, rax
sub cl, 78
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
add bl, 71 # instrumentation
adc cx, dx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
inc ecx
btc edi, edx
sbb cx, cx
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
sub dx, si
cmovnle edx, ebx
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
cmovnp ax, si
add al, 122 # instrumentation
cmovz si, ax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
add sil, sil
cmovbe di, ax
cmovle ax, ax
add ax, -18924
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
test rax, -1395313845
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
cmovbe rdx, rcx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
cmp sil, 113
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rdi
add bl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
