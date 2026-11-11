.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
btc edx, 165
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
movzx rax, di
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
cmp cl, dl
dec cl
cmp rdi, 28
or cl, cl
bt si, 114
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
mov ebx, ecx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add al, 105 # instrumentation
cmovl esi, ecx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
add bl, 42 # instrumentation
movsx rdx, bl
cmovnp ax, dx
mov edi, 412386591
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
inc rax
sbb rbx, rcx
sub ax, 23
adc rax, 1873854064
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
xor ax, di
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
mul rbx
sbb rax, 475459025
and dl, bl
mov rax, -8100960678429780222
and rsi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rsi]
cmovle dx, bx
cmp cl, -80
xor di, dx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
cmovl bx, si
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
sub cl, -51
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
