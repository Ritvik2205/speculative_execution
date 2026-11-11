.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
or al, 95
test al, bl
xor cl, al
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 76
and esi, 55
xor al, 59
xor cl, -54
movzx rsi, di
adc sil, 60
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 23
and al, -36
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ebx
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
test rbx, 4
xor cx, si
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 73
cmp rdx, 12
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
cmovnp rax, rbx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 21
sbb ebx, 33
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
movzx edx, dx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
add dl, dl
movzx ax, sil
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
adc eax, -79
mul ax
cmovnbe edx, esi
add dil, al
cmp al, al
add dl, 31 # instrumentation
cmovnl ax, ax
and cl, dil
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 16
xor sil, 56
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
neg rcx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
