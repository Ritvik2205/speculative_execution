.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
test eax, -651442446
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
movzx rdx, di
neg dil
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rcx
sub sil, -35
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
or ecx, edi
and rsi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rsi]
sbb di, -105
and ecx, 71
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
bts bx, 42
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
or bl, al
cmovbe si, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
or rax, -387680856
xor cx, ax
cmp cl, 49
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
sub dl, -16
xor bl, -126
test rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
xor dil, dl
add sil, 54 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add esi, 46
cmovnle rdx, rdx
movsx rbx, bx
sub dl, sil
sbb dil, 92
cmovnle di, cx
bts eax, edi
bt eax, ebx
or eax, edi
and dl, bl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
neg al
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
