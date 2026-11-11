.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt si, 114
cmovp edx, ebx
mov sil, bl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
sub cx, -114
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
or al, 27
bswap esi
movzx rcx, bx
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
sbb di, -105
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rdx, 84
cmovnb esi, ecx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
sub sil, -35
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 13
adc rax, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 19
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
test esi, esi
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rax]
cmp ebx, 80
add al, dl
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 81
or ax, -26182
mov sil, 3
cmovo esi, ecx
mov di, cx
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
btc rsi, 77
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
add al, sil
xor rax, 93
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
mov rdx, rax
or rax, -943474997
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
cmovno edx, edi
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 84
xor cx, -80
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
