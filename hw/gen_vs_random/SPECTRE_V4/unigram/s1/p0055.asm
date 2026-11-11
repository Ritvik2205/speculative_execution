.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, 1479885278
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
xchg rcx, rcx
adc dl, 9
add dl, -91 # instrumentation
cmovl rdx, rcx
cmovno rax, rdi
cmovp eax, edi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
test cx, ax
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
or sil, -47
sub dil, -40
adc al, dl
sub si, si
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
movzx rbx, di
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
cmp cl, -105
test cl, dl
and rax, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
imul rbx, rsi
cmovz rbx, rcx
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
and sil, -84
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 4
xchg si, bx
mov esi, 1695134926
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdi
cmp ebx, ecx
btc eax, 62
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 97
cmp ax, 26170
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
xor rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
