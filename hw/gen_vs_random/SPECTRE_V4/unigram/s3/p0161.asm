.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bx, 110
cmovnz edi, ecx
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and cl, dl
bts esi, 241
and bl, cl
imul eax, ebx
cmovns ebx, edx
xor ebx, edi
dec rsi
add cl, 37
dec sil
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
test bl, sil
not dx
adc rsi, 12
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
neg al
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
add dl, -114 # instrumentation
cmovl di, bx
sub cl, 116
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdi]
cmp bx, 47
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovs ax, si
test dil, 75
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
xor dl, 61
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
imul rbx
movzx rbx, di
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
sbb ebx, 65
cmovnp dx, cx
xchg rax, rdx
and rsi, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], esi
add cl, 96
cmovnp ebx, ebx
xor sil, 56
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
add cl, -21 # instrumentation
adc rbx, 88
imul rdi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
