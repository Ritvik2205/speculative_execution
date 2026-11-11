.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add dx, -90
xor ax, 25554
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
sub rax, -701741274
xor dil, 19
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
xchg edi, edx
sbb ebx, 21
cmp bx, 75
dec rdx
add al, dl
xor cl, dil
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
movzx ebx, dl
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
adc bl, 89
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
neg cx
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 90
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
btr di, ax
xchg ebx, eax
and rsi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rsi]
and dil, cl
mul rbx
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
btc dx, 16
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 3
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
or cx, 13
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
add bl, 63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
add al, 5
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
not eax
bts eax, ebx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 17
adc al, -58
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
