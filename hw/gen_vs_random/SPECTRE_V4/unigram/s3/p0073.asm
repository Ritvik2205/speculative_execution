.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and dx, 1
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
cmovnle ecx, edi
and al, sil
and bl, al
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 4
sbb al, dl
cmovb ebx, esi
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx], 43
sbb esi, 48
add bl, -72
add edx, 10
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
cmp bl, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
cmovnz dx, bx
add bl, 65 # instrumentation
cmovnp ax, si
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
test cx, ax
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rbx]
add dl, 12 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
cmovnbe rbx, rbx
cmp dl, 19
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
sub eax, -523763262
and rax, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rax]
mul rbx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
add dl, 110 # instrumentation
movsx si, dl
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
mul dl
cmovnb si, si
sbb dl, -99
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
