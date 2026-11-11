.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, -121
cmovnb rdi, rdx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
not dx
movsx edx, dx
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
cmovbe cx, ax
bswap edi
adc eax, -983562873
and rcx, 0b1111111111111 # instrumentation
mul cx
and rdi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], -117
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
cmovno rcx, rdx
or ebx, -78
add cl, -75 # instrumentation
sbb esi, 59
imul edi, edi
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdx]
test bl, -29
bswap rcx
add edi, 78
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
add bl, 102 # instrumentation
cmovnp ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
cmovl rsi, rcx
and bl, -119
inc rsi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rbx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edi
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
bts ebx, ebx
dec dil
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
imul edi, edi
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
bt ecx, edx
xor dl, -123
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 0
mov rdi, -3495947874455269481
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
