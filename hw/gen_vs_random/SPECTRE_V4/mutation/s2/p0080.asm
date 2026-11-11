.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
add al, 105 # instrumentation
cmovl esi, ecx
and sil, -84
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], -1014276215
btr si, 114
and rsi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
movzx rax, di
or edx, 1 # instrumentation
add al, 49 # instrumentation
adc dl, cl
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
cmovnp ax, dx
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
neg rcx
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
imul eax, ebx, -12
dec cl
mov edi, -1866088512
xor dl, bl
sub rax, -1066968986
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
inc rax
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
or cl, cl
mov ebx, ecx
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
cmp rdi, 28
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], -87
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
add bl, 42 # instrumentation
movsx rdx, bl
adc cl, bl
bt si, 18
cmovp si, ax
cmovnle si, di
test ax, ax
cmp cl, dl
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
and rcx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
btc edx, 165
cmovz edi, edx
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
