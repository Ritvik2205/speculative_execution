.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], -68
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 119
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
add cl, -84 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
sub edx, edi
sbb cl, cl
and dx, si
and rcx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rcx]
xchg ecx, eax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
mov rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
cmovz bx, dx
and rax, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rax]
and rax, -779592432
mov edi, ecx
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rax
cmovbe di, ax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
add bl, -18 # instrumentation
cmovs cx, ax
btc edi, edx
sub cl, -73
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 109
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
add ax, 6414
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
