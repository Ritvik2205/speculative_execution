.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
mul ax
or bx, si
xor bl, dil
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
add dx, -90
xchg esi, eax
adc ecx, -12
bt dx, 44
mov rdx, 29
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdx]
add bl, bl
cmovle ecx, eax
sub cl, 116
and eax, -37
cmovz ebx, edx
sbb dx, 68
cmovb cx, cx
movzx eax, dil
cmovb esi, ecx
sbb bl, al
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
imul rsi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
mov dl, cl
movsx eax, di
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
movzx rax, bx
or si, 38
cmovnle esi, edx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, esi
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
cmovns rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
not si
sub dl, al
add dl, 56 # instrumentation
cmovle rdi, rdx
mov sil, cl
or eax, esi
sbb bx, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
