.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, 75
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
neg dl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
mov sil, 91
test edx, 573099753
inc edx
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
and al, -36
btc bx, 34
xor al, 56
bts edx, 48
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 98
cmp di, ax
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
test al, 80
not dx
cmp edx, 66
xor cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 62
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], esi
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
or si, ax
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 48
btc eax, 33
not dx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb dx, cx
cmp edx, 67
xor dx, 85
adc cx, cx
xor ax, 25554
imul esi, eax, 76
adc bl, 89
neg edx
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
xor sil, 56
cmovb edi, esi
cmp bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
