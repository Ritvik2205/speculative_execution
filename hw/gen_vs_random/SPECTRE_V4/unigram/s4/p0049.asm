.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
mov sil, 62
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
sbb sil, sil
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 73
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 41
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 12
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -681182795
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 33
or bx, 0b1000000000000000 # instrumentation
bsr di, bx
neg eax
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and dl, sil
xor rdi, -72
cmovbe ecx, esi
and al, sil
and rcx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 92
or dil, sil
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
add edi, 71
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rsi
test eax, 1947430392
xor bx, 106
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
xor rbx, rax
add dl, 58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
cmp rax, -1070057082
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
adc dil, 112
btc rcx, rdx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
adc edi, -83
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
