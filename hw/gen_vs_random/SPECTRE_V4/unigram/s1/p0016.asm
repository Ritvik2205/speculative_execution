.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rdi, rax
test sil, 1
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rcx
and rbx, 12
cmovnb eax, ebx
sub ebx, 100
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rax
movzx dx, dl
add dl, -91 # instrumentation
cmovl rax, rax
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
add bl, al
movsx rsi, di
cmp rdx, -49
sbb rcx, rdi
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rax], si
cmovnp edx, eax
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
adc dil, 109
or esi, 32
movsx ebx, dil
cmovo dx, si
cmovnle rdx, rax
xor sil, cl
adc bl, -58
sub dl, bl
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 64
add al, -35 # instrumentation
mov sil, al
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
xchg edx, ecx
sub bl, al
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 19
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 98
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
xor cl, -15
inc cl
or dl, al
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdi
bswap ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
