.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
sub bl, 17
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 33
mov cl, cl
cmovb ebx, edx
cmovp ecx, edx
inc ebx
cmovb eax, eax
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdi
or dx, ax
cmp dil, -124
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
xor dl, bl
add cl, 11
cmovp ebx, ebx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], dx
movsx rax, dx
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], bx
sub dil, al
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
cmovle cx, ax
add cl, 72 # instrumentation
cmovle cx, si
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
add edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
bswap rcx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 50
or ax, di
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
bswap rsi
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 80
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
imul ebx, edx, 11
xor sil, 56
and bl, al
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and si, 68
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
imul rdi, rbx
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
sbb edx, 39
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
cmovnz eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
