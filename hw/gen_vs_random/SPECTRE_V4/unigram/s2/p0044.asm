.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rdx]
adc rax, 1542637830
imul eax
imul bl
add bl, dl
xor dl, 53
btc di, dx
cmovnb eax, ecx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 91
and al, -36
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and sil, al
cmovnp ecx, ecx
or dl, 56
mul edx
neg al
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
cmp ebx, 30
cmovns bx, bx
cmovnbe dx, bx
or al, al
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
add bl, -26 # instrumentation
btr ebx, 43
xor esi, eax
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rax]
cmp al, sil
imul cl
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdi]
cmovle esi, edi
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
cmovz si, si
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], di
cmp bl, sil
cmovo edx, eax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
sbb cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
neg dl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
