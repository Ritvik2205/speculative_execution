.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmp dil, -124
cmovnbe rbx, rsi
add bl, 38 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
or bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
cmovl rax, rbx
xchg rcx, rbx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
test dl, cl
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
cmovns rbx, rax
sbb sil, 108
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 91
xchg edx, ebx
add sil, 26
cmovnle esi, edi
sub rdi, 67
add al, 122 # instrumentation
cmovns edx, ecx
sub si, dx
add cl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
add sil, sil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 66
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
movsx ebx, sil
not rax
dec dx
cmovnl rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 62
cmovnbe rdi, rax
test sil, sil
adc esi, 90
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
sbb cx, 71
imul rbx, rax, 50
or sil, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
