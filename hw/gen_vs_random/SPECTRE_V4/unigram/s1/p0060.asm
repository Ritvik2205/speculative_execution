.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, -15653
sbb al, -47
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sub ecx, 94
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
test cx, 35
sub dil, bl
test al, bl
imul rbx
add cl, 8 # instrumentation
adc cl, dl
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovnl rdx, rdx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 13
and ax, 35
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
sub dil, dl
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
test cl, -89
test ebx, 1263899340
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 12
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
add bl, -115 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 80
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi]
movzx rax, cx
imul rdi
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
cmp rcx, 38
sbb dl, -99
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 37
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
mov al, 41
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
adc dl, 33
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 117
btc cx, 240
sbb cl, dil
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
imul rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
