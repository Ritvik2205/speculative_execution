.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle ecx, eax
neg sil
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
xor di, dx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
cmovnbe si, bx
or si, 0b1000000000000000 # instrumentation
bsf si, si
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
or bx, dx
xor rsi, rdi
movzx esi, dil
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
add dl, -32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rbx]
movzx rdx, ax
xor cl, -85
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
cmovnle eax, ebx
test dl, al
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
or ebx, edi
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
xor cl, cl
test esi, 52
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
sbb edx, 38
add al, -75 # instrumentation
adc al, 79
bts ecx, 3
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 75
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
add dl, -114 # instrumentation
cmovl si, ax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
add cl, 119 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
movsx rdx, cx
sbb al, bl
test rdi, -1876639003
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 75
movzx ebx, dil
mov sil, 83
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
cmovns ax, cx
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
