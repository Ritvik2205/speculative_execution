.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
add bl, -75 # instrumentation
adc bl, 65
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 61
add dil, dil
adc al, bl
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
movzx di, al
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 36
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
neg dl
sbb sil, 108
sub ax, di
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
btc ax, 28
and ax, 35
adc cl, 86
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
add bl, -18 # instrumentation
mov rdx, rsi
imul rax, rdi
test edx, 573099753
cmp al, sil
and rdx, 97
cmp cl, sil
or bl, dil
and esi, 55
cmovnle dx, dx
cmp al, 114
or dil, 11
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 38
add dl, -94 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
test cl, dl
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 45
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 75
bswap ecx
add rcx, rdx
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 90
and ecx, 66
add dl, 31 # instrumentation
cmovnl dx, dx
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
