.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 67
add bl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 64
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
bt ebx, 76
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 109
imul ebx, edi
add ecx, ebx
cmovbe cx, dx
or eax, 1470564945
xor al, cl
xor bl, dl
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
test cx, dx
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
cmovno ebx, esi
bswap edx
add al, 41 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 15
mov bx, ax
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or cl, 12
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dil
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], -25
add dl, al
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and ecx, 71
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 93
cmovnp esi, eax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
test dl, -125
xchg bl, bl
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi], 13
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
and rbx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rbx]
xor dil, sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
add al, 32 # instrumentation
adc rax, -324435035
xor ebx, -62
add dl, -74 # instrumentation
cmovnp rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
sbb dl, -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
