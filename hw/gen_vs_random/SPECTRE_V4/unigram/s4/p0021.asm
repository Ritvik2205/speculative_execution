.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 43
xor al, sil
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
test dl, cl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 17
test cl, dl
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
mov rdx, rax
sub sil, dil
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 51
bt ebx, 228
cmovl rax, rcx
cmp bl, 13
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 47
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 58
cmovb bx, bx
bswap rdi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 90
cmovnbe rbx, rcx
mul cl
xor rbx, rdi
cmovnle rdi, rdi
btc rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
cmovnp rdx, rdi
test rdi, -1876639003
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmp bx, 12
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmp rcx, 47
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
imul sil
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
mul rbx
and rcx, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rcx]
mov cl, cl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 32
cmovz eax, eax
or al, sil
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
add rax, rsi
cmovnb ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
