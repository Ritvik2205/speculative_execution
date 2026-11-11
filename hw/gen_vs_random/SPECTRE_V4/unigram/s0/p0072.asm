.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
not dl
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
and rdx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdx]
or cx, cx
not rdx
dec al
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 29
and al, dil
sbb bl, sil
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
test bl, al
cmovnle dx, di
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
cmovbe edx, ebx
sbb di, -105
sbb di, -105
add rsi, 68
add cl, -122 # instrumentation
cmovp bx, bx
adc sil, -112
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
movsx edi, al
btr di, ax
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 2
bt dx, bx
movzx edx, bl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
add cl, -32 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
adc bl, 0
cmovz di, dx
or bl, bl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
add dl, -58 # instrumentation
xchg cx, si
mov ecx, eax
sub si, -92
sbb ecx, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
