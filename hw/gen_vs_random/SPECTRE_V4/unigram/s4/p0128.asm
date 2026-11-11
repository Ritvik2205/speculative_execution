.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rbx
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
sub sil, -50
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
movzx di, al
test rdx, 74
xor rcx, rdi
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdx
add bl, bl
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
mov sil, sil
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
cmovs cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rbx]
test rax, -331426050
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
or cl, 79
mov cl, cl
test al, 80
add dl, 41
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 35
sub dil, dil
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 72
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdi]
cmovo rsi, rsi
neg cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
btc edx, 10
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 67
cmovle edx, ebx
btc esi, 9
and rdx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rdx], 6
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
bts ax, 85
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 64
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ecx
dec rdi
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 38
xor cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
