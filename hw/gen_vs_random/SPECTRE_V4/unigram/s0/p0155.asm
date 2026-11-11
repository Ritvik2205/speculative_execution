.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, 1
cmovo rbx, rax
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
sub bx, 24
add rsi, rbx
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
add dl, -55 # instrumentation
cmovnbe eax, esi
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
add dl, 92 # instrumentation
cmovnl rdx, rcx
adc bl, 127
sub dil, -28
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test esi, -222751961
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rax]
mul rdi
bts di, 30
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
xor dil, -23
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
add cl, 42 # instrumentation
movsx rsi, cl
adc dl, bl
cmovnb ebx, edx
movsx esi, di
cmovnb ax, di
cmp rdi, 28
test eax, 1947430392
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 97
sbb dil, 84
imul esi, eax
add dl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsf ax, bx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 93
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
cmovnb eax, ecx
cmovno rsi, rbx
sub rcx, -99
cmp dl, bl
btc edi, 125
btr ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
