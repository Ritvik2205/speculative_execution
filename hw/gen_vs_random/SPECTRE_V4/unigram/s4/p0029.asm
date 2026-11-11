.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
imul rsi
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
movzx ecx, al
test eax, 1561062795
or dil, 45
cmovnp di, cx
btc si, 58
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
bts rdx, 34
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 75
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 92
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
add di, -74
imul dx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
mul rbx
cmp al, al
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 31
cmovnbe rbx, rsi
not bx
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rbx
cmovnb edx, edi
cmp al, bl
and rax, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rax]
test rdx, 23
and rdx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdx]
xor sil, al
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
cmp sil, 88
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and sil, cl
imul bl
adc rax, 1542637830
add bl, -18 # instrumentation
mov rbx, rsi
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 99
cmp rdi, 4
cmovnle bx, bx
test edx, 573099753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
