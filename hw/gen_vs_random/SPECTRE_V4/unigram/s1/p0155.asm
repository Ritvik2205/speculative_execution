.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cx, ax
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdi
xor al, 118
btr bx, di
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
add cl, -118 # instrumentation
sbb rax, 57
xchg cx, di
bswap rcx
bt edi, 135
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], -21
bts ax, 155
movsx rdx, sil
add rdi, 111
sub al, 69
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rbx
movzx edx, cl
and si, -70
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 56
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 94
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
sbb bx, cx
add al, -112
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
cmp bl, sil
add bl, -74 # instrumentation
cmovnp rbx, rdx
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
sbb al, 54
test eax, 1947430392
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
mov esi, 1695134926
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
xor sil, 75
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
imul rsi, rdi, 44
add cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rax]
sub cl, -73
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
xor dl, -123
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
