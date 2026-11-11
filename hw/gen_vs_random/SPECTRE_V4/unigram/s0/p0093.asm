.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rax, rax, 16
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
cmovnz ecx, eax
mov al, dl
or esi, 32
btr rdx, 1
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
add sil, sil
and rdi, 45
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
mov dx, 24004
add dl, -12 # instrumentation
cmovp edi, esi
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 19
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
add ax, 6414
or rdi, rdi
movzx rdi, si
add cl, -122 # instrumentation
cmovp cx, cx
cmp dl, sil
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and al, 85
cmp dil, al
add ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
add cl, 111 # instrumentation
cmovnle si, ax
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
xor rcx, rdx
add dl, 87 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
cmovle rdi, rbx
sub sil, al
cmovnbe ebx, esi
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
mov esi, esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rsi
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
imul rdx, rdi
btr edi, edi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], eax
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
