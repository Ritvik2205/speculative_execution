.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
imul edi, eax
and rbx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rbx]
or cl, al
sbb sil, -124
xchg dl, sil
add rsi, 44
btr cx, 252
cmovbe edx, edx
cmp rcx, rcx
cmovnle edi, edx
cmovnbe esi, esi
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
xor bl, dil
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and al, -87
add al, -72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
add dl, 70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
xchg edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
imul edx
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
add bx, 97
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
cmp dil, 101
sub cl, al
imul di, cx
and rcx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rcx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
add dl, 45 # instrumentation
cmovbe rax, rsi
inc edi
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], di
mov bl, 29
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
test dil, 64
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
or rax, rax
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
add ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
