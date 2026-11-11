.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not si
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 50
cmovnbe rsi, rdi
bts ebx, 22
test edi, -1249897727
cmovnp di, cx
bt ecx, edi
cmovp rsi, rbx
cmovs rdi, rbx
add al, -75 # instrumentation
adc al, 79
xchg rax, rdx
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
test sil, sil
cmovnle edi, esi
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
add al, -75 # instrumentation
adc al, 79
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
sub ebx, esi
sbb eax, 1081973675
sub dl, 43
mul edx
cmp bx, dx
add al, 122 # instrumentation
cmovns ecx, edx
add dl, 116 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
sub ebx, 77
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 17
or dx, bx
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
adc ecx, -12
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
mov rax, rcx
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rax
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rcx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
xor eax, -437098167
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
sub dl, al
cmovs ax, dx
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
