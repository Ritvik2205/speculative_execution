.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
imul rbx, rax, 53
movsx rdx, al
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 59
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
movsx ebx, cx
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
cmovle rsi, rbx
imul rdi
sbb bl, 57
add edi, 11
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
add bl, cl
sub ecx, eax
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
test rbx, 12
cmovs ecx, ebx
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmovnb esi, ebx
sbb dil, 2
mov edx, ecx
xor bl, 93
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 58
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, -10 # instrumentation
mov dx, 22
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 26
cmovnp cx, cx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
sub dl, 43
not dx
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
or dl, 88
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 92
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
imul esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
movzx rax, cl
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
