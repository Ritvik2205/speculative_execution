.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 72
cmp al, -23
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
movzx di, dil
adc dil, 81
adc bl, bl
btr edi, ebx
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, ax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
sub al, dl
xor eax, 181978569
mul rbx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
sub esi, ecx
btr bx, di
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
xchg rsi, rbx
sub rdx, 22
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
xor cl, dl
test rax, -331426050
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
add dil, 82
lea ecx, qword ptr [rbx]
imul rdi, rbx, 90
cmovno bx, bx
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
test rax, -344032571
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
bswap edi
xor dil, cl
add al, dil
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
