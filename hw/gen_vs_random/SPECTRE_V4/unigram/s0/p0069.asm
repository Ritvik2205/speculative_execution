.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rsi
adc dl, 78
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
xor dl, dl
imul si, cx, 7
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
sub al, 55
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
add al, -3
and rsi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
add rdi, rdi
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], sil
mov bl, cl
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 97
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
or edx, -83
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
bts ecx, edx
xor dl, -66
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 32
cmovnp bx, dx
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
sbb al, dl
add dil, -61
sbb al, al
movzx rbx, di
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
cmovnb si, cx
test edi, eax
mov bl, al
cmovns si, bx
cmovnl di, cx
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 41
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
add dil, 91 # instrumentation
adc dil, dl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 43
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
bts ax, di
add al, 32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 41
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
