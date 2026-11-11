.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
movsx esi, al
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
test cl, -52
sub dl, -16
and al, -118
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], si
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ecx
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
not rsi
or rax, rax
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
add dil, 87 # instrumentation
cmovz edx, edi
adc rsi, 82
test al, sil
inc sil
cmovno eax, ebx
and dl, 124
cmovl si, cx
cmovp ecx, edx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], di
sbb dx, 2
mov rbx, 62
cmovl dx, di
xor cl, -15
mov sil, dil
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
adc sil, -31
adc al, cl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 89
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
add dl, 122 # instrumentation
cmovz dx, cx
add dl, -4 # instrumentation
cmovp si, di
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
cmp bl, 12
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
mov bx, ax
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
adc cl, 6
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
movzx rax, dx
or dl, 1 # instrumentation
neg ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
