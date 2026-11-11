.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, 12
sbb sil, dl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
sbb bl, 121
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
test dl, dl
btc rdx, 178
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
imul rdx, rsi
cmovbe bx, bx
imul sil
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
sub ebx, 21
cmovnbe eax, ecx
cmovl rcx, rax
cmp rdi, 28
adc ebx, -55
bt rax, 59
add al, 121 # instrumentation
movsx ecx, dx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
cmovb rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edx
cmovno rdi, rbx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and dil, 8
dec dl
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
or dl, 71
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov dl, cl
adc rbx, rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
adc al, 41
sbb cl, sil
add al, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], -15
sub eax, ebx
movzx si, sil
sub esi, edi
imul dx
xor cx, -80
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
