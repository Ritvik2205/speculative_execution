.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, sil
cmovnb rsi, rdx
xchg ecx, ebx
add dil, 105
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
xor dl, -123
add dl, 45 # instrumentation
cmovbe rdi, rax
imul edx
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
mul bl
adc rsi, 82
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edi
xor cl, cl
cmp dl, bl
adc eax, 917540672
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 60
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
mov dil, sil
bts dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdi]
and edx, ebx
cmovbe ebx, eax
cmovnl di, ax
adc ecx, 55
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rax, rdx
sbb al, -39
test esi, -2111618709
cmovnbe rbx, rcx
dec edi
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
sub dl, 107
and dil, -23
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdx
sub cl, 18
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rsi]
cmovbe ebx, esi
btc ebx, edx
and ax, -603
and dil, dil
add ecx, 99
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
