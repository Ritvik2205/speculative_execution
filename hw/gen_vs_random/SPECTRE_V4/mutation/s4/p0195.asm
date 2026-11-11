.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1772009889
inc rax
cmovp si, ax
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
mov ebx, ecx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and sil, -84
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -87
cmovnp ax, dx
cmovz edi, edx
imul eax, ebx, -12
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmp cl, dl
cmovnle si, di
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
test ax, ax
cmp rdi, 28
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
btc edx, 165
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
add bl, 42 # instrumentation
movsx rdx, bl
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
btr si, 114
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
neg rcx
or cl, cl
or edx, 1 # instrumentation
add al, 49 # instrumentation
adc dl, cl
dec cl
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
xor dl, bl
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
add al, 105 # instrumentation
cmovl esi, ecx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
bt si, 114
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
sub rax, 1914398062
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
adc cl, bl
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
movzx rax, di
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
mov edi, -1866088512
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
