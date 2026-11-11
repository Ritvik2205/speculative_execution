.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bl, dl
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
xor sil, 56
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and bl, cl
cmovz ebx, ebx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 64
cmp dl, 88
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 6
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi]
not cl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], di
test dl, dil
movsx ecx, ax
cmovle edx, edi
sbb rsi, -115
test rax, -344032571
imul bl
bts ebx, 22
or bx, -111
imul eax
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
bts rcx, 54
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
dec rcx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
cmp cl, dil
bts rsi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
cmovle bx, di
cmovnl cx, di
mov rdi, 18
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 58
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
xor sil, 56
xor sil, 56
adc eax, -1513455903
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add sil, dil
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
cmp bl, 13
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
