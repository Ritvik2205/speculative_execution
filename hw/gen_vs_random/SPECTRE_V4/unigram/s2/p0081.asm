.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
btc rax, rax
bts rcx, rdi
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
sub ebx, 50
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
xor dx, 7
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 27
imul rax, rax
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
test esi, -222751961
add al, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 22
sub al, sil
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
mov cl, -38
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
add cl, -62
or rcx, 84
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 18
cmovp rcx, rdi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rax
add rcx, rdi
cmp cl, 100
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
test rdx, -1074289902
cmovo cx, di
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], si
imul rcx, rdi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
bswap edx
xor rbx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
movsx esi, dil
cmovnp edx, edx
imul ax, dx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
or rcx, 92
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], edi
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 67
cmovns rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
