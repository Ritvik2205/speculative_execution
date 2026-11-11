.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 68
sbb rax, 1518549445
imul edx
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
movzx di, dl
cmp rbx, -66
neg rdi
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
cmovnp ebx, ecx
xor eax, eax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 119
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
bt si, ax
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
mov bl, al
neg di
cmovnb ebx, edx
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 6
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
cmovns di, ax
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmp al, al
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
sub ax, -1908
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
sub rsi, rdx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
mov esi, 1695134926
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], ebx
neg bx
not esi
xor ax, 20236
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
mov ebx, 51969593
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
