.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, -101
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 66
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, bl
and bl, -55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
btr rdi, rsi
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
imul ebx, esi, 27
bts rdi, rsi
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
btr si, di
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
cmovz rbx, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
or cx, 94
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bt esi, edi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 62
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi], 44
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test bl, 24
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdi], si
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and cl, -81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rbx]
movsx rsi, di
add rdi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
cmovl rdi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
