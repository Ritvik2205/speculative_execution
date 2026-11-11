.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
add dl, -26 # instrumentation
btr edx, 30
and rdi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdi]
add cl, 122 # instrumentation
cmovz rax, rdx
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
bswap rdx
movzx ecx, dl
btc rdi, rcx
cmovns dx, bx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 81
movzx rdx, dil
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
or cl, al
cmp bl, 13
imul cl
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
test bl, dl
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
cmovl rdi, rax
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
movzx si, al
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 44
sbb dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
add cl, -75 # instrumentation
adc cl, 93
add bl, -71 # instrumentation
adc bl, cl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
inc edx
cmovs ebx, ecx
or dl, 88
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
add bl, 63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
adc dl, bl
imul rsi, rdx, 83
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 2
or cx, 4
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test cl, al
cmovle cx, bx
or cl, 87
sub rdi, rcx
sub bl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
