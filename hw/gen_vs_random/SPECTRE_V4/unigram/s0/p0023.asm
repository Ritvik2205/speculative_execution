.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rax
mov sil, 3
xor edx, 22
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
cmovnl rcx, rdi
adc ebx, 66
and rax, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
and cl, -101
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 35
bswap rsi
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
cmovp rsi, rdx
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
xor esi, -112
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 15
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
cmovp rdx, rcx
not ax
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 65
sub bl, al
add dil, cl
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
add rsi, 68
and sil, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 57
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
mov dl, sil
bswap rbx
test cl, -119
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi], 9
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 97
xor si, -73
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], cl
cmovnbe rcx, rax
or rcx, 57
sbb dl, 75
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], ecx
xor dil, dil
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
