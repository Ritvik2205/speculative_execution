.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
or rbx, rsi
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor sil, dil
cmovz esi, edx
and dl, cl
cmovns bx, dx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
xor bx, 59
add al, -7 # instrumentation
btc dx, cx
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
sub di, 9
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
cmp al, 116
adc edx, -86
mov ax, bx
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
adc eax, 1019803307
and rax, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rax]
imul rsi, rax, 51
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], -27
or bl, bl
dec cl
mov esi, ebx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 73
and bx, 26
adc dl, 3
add rdx, rbx
and dx, -107
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
or di, 29
cmovl ax, si
dec dl
or rdx, rbx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmovp ecx, edi
sbb sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
