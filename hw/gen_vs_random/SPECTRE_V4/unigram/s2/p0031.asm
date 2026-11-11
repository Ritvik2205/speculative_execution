.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr bx, 42
mov al, sil
or dl, dil
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and dl, 24
sub sil, dil
or bx, -33
sub dl, sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
cmp rax, -1247892360
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rsi
adc rdx, -90
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 71
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 2
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
dec dil
add cl, 0 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
mov ecx, -405458789
sbb al, -3
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
movzx dx, dl
bswap eax
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
not dil
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rsi
cmovnb bx, si
bt esi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
btc rdi, 99
sbb rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
add al, -67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
cmovnbe rdi, rbx
xor cl, al
and al, sil
cmovbe rdi, rdx
neg dil
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 23
or ecx, 102
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
