.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, al
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
cmp rbx, 54
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
test si, 74
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
add sil, -10 # instrumentation
cmovnbe esi, ecx
test edi, -1249897727
add bl, 38 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
test ax, di
test rbx, 13
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 92
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
imul rax, rdi
cmovp ecx, edx
sbb cl, 19
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 18
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 71
sub sil, sil
sbb esi, 85
imul rsi
sub dil, -10
add sil, 26
or bx, -111
sbb bl, al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
add bl, cl
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
imul rcx, rdx
not rax
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
imul dx, ax
cmp dil, dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
cmovnp edi, edi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
imul bl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
cmovo rbx, rbx
sbb ecx, esi
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
cmp dl, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
