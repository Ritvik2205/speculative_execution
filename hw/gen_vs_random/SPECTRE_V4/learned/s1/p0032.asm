.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc al, bl
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
sbb rsi, rbx
mov dl, -34
and ax, 35
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
dec dl
neg cl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -57
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
xchg dl, dl
or al, 96
sub dl, 43
setnz al
or cl, cl
cmp cl, 31
bts rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
adc dil, 48
cmp dl, 100
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
imul si, bx, -16
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
cmp dx, di
adc dl, dl
xor bx, dx
btc ebx, 94
cmovp ax, bx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 11
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
test bl, 24
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 29
btc rsi, 140
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
xor ax, 25554
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
xor al, -2
or bl, al
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
bt ebx, 228
add bx, 110
xor eax, -164167056
cmovb ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
