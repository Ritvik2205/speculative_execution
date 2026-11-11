.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -89
dec dl
cmovnle edx, eax
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
sub dx, 70
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
sbb dil, dil
cmovnle cx, bx
add al, 123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
cmovp di, si
cmp bx, cx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
imul eax, ebx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
and rcx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rcx]
neg sil
xor sil, 56
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add ecx, 88
and si, 68
cmp al, 19
sbb bl, 57
add rdi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 96
sbb al, -101
or ecx, 81
or bx, cx
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add edx, 9
bts ecx, edi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
bt eax, esi
not eax
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmp dl, al
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 56
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], ax
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
imul rbx, rdi
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 91
cmovs edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
