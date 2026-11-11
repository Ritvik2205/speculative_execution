.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx si, sil
sub edi, edx
cmovs rdx, rbx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
or ebx, eax
dec rsi
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 32
add eax, ebx
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
test dl, 19
and si, 68
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
add al, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
cmovp edx, esi
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
cmp rbx, 77
add cl, -82 # instrumentation
sbb si, dx
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
add al, al
bt ecx, 14
bts edi, 167
cmp si, di
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and cl, al
cmp al, -23
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovb dx, dx
add al, 122 # instrumentation
cmovns esi, ebx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, eax
test esi, 34
sbb sil, 108
dec cx
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 45
imul cl
btc rax, 28
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
mul edx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dil
xor bx, 18
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
