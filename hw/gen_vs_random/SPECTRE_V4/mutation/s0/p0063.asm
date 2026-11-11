.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
cmp eax, 512128713
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
adc ax, 17267
imul si, ax, -75
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmp eax, 89
sub sil, -35
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
btr rdx, rsi
mul dx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
cmovnbe edi, esi
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
bts rdi, 49
add bl, 54
cmovnbe eax, esi
cmp esi, -84
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
cmovo ax, dx
test dil, al
mov edi, 412386591
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bswap rdx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
movzx ecx, sil
and rsi, rdx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and cl, -118
cmp dx, 58
sbb cl, dil
cmp al, 114
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
xor bx, 106
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
bts ax, 155
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
sub cx, -114
or al, al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
