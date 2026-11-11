.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, ecx
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
xor bl, cl
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmovnb eax, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 69
movzx rax, cl
and rax, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rax]
cmp cl, 94
xor bx, 61
and cx, 17
add dil, al
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
sub bl, dl
sbb edi, 53
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 67
bswap edx
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 95
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 13
adc bl, dil
sub ebx, edx
or ax, dx
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], 24
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], cx
test eax, 1880179600
add rdx, rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], sil
add dl, 41
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
xchg edx, edi
bt esi, edi
and bl, cl
sbb sil, 108
test dl, al
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 51
sbb sil, bl
add bl, 63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
test sil, cl
test dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
