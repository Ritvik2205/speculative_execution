.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
xor dx, 7
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 98
add cl, cl
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
bt esi, 63
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
cmovb rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and ecx, eax
adc esi, 10
test eax, 1340292467
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
add cl, -32 # instrumentation
cmovp rcx, rsi
cmovbe dx, di
cmp eax, -1538116527
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 10
cmovnp rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bswap edx
mov sil, 26
add dil, cl
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
adc rbx, 60
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
add edi, 33
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
cmovnl ax, si
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
cmp dl, 23
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
btc eax, ecx
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
or dl, 71
xor dl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 24
cmovp ebx, ebx
add cx, 68
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi], 58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
