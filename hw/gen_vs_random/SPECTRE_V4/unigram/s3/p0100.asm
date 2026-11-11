.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb cl, -104
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 42
xor di, -43
sbb al, -101
cmovnbe ax, si
sub rdx, 22
or al, -71
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb ax, di
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
btc bx, ax
cmovnp esi, edx
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
bts edx, edx
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 60
cmp dl, 41
xor dx, ax
mov ecx, 67
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 44
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 81
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
cmovp ecx, eax
mul ax
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 69
inc ebx
bts rdi, 13
xor rbx, rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 82
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
cmovle rdi, rsi
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
xor sil, 56
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
neg bl
imul dx
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
dec bl
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
add di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
