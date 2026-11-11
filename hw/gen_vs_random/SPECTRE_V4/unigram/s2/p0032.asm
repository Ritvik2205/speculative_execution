.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
neg edx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
add al, -79 # instrumentation
adc rax, 100
and rcx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 65
and sil, -84
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
xor rbx, rcx
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
sub dl, -16
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rax
bts dx, 26
mul dx
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 29
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 61
or al, al
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
add al, -7 # instrumentation
btc bx, cx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], di
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
xor cl, 13
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rsi
and si, -74
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edi
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
btc rdi, rcx
sub rbx, 101
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
cmovnp di, ax
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
cmovno rax, rcx
cmovnp ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
