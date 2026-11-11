.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 76
btc rdi, rcx
cmovbe dx, di
xor cl, -101
add cl, -96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
xor dl, cl
cmovbe rsi, rdi
not dil
imul si, ax, -75
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -2
sub di, 9
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
bswap ebx
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdx
bt rax, 59
or bl, bl
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 10
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rsi]
cmovl ax, cx
sbb edx, 56
cmp di, -8
btc rbx, rax
or ax, 11396
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], dx
adc ebx, -100
add al, 54 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
xor rdx, rax
mov ecx, esi
xor dil, 37
bts rbx, rdi
add al, -99 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
add cl, dil
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
btr si, si
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
add bl, -59
sub esi, eax
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], sil
cmovle dx, dx
add dx, 74
mov rdx, rax
btr rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
