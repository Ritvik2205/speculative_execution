.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
sbb cl, 35
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
sub al, 127
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
test bl, dl
cmovnp edx, eax
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 3
inc al
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and ax, 27239
cmp cl, 49
add dl, 68 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
imul bx, cx, 15
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
cmovp rdx, rdi
inc ax
cmovnz rcx, rax
xor sil, dl
bswap eax
cmovnbe rcx, rbx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 68
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
or sil, dil
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 20
adc bx, 52
cmp dl, al
sub dl, bl
sbb ebx, -54
xchg eax, edi
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
add dil, 71 # instrumentation
cmovnle rsi, rdi
mov cl, -38
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
cmovnb di, di
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
adc al, dil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cmovns di, si
add rbx, rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
