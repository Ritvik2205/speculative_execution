.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
add bl, 65 # instrumentation
cmovnp si, dx
cmovz eax, ecx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 16
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
movzx esi, si
add dl, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
test edi, ecx
adc dl, 36
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 53
and al, sil
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 64
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 58
bt dx, 18
add al, 122 # instrumentation
cmovns ecx, eax
imul eax
and al, -127
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 94
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 72
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
neg eax
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 55
cmovnbe rbx, rcx
add rax, rsi
imul cl
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
mov sil, 11
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
cmovnb si, si
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 34
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
add bx, 110
bt ebx, edi
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb al, 32
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
