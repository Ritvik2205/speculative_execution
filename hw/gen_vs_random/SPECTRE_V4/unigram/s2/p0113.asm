.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
add bx, 110
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdi
add ebx, eax
and al, -127
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
cmovno ecx, ebx
sbb esi, 5
cmovp di, ax
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
btc rcx, 14
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 87
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], bx
movzx eax, cl
bt edx, ebx
test edx, edi
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
or bl, sil
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 8
movzx bx, bl
imul cx, bx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, ebx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovns eax, esi
sub esi, 96
bts ebx, ebx
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], ax
or si, 0b1000000000000000 # instrumentation
bsr ax, si
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 66
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
neg cx
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
cmovnle ax, dx
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
cmovnbe eax, esi
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
or dx, 0b1000000000000000 # instrumentation
bsr cx, dx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cmovnbe rsi, rsi
test sil, al
cmovb eax, eax
sub rdx, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
