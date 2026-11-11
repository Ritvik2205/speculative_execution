.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 51
add cl, -37 # instrumentation
adc ecx, 26
cmovs edi, esi
test cl, -89
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
bswap esi
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
dec rdx
cmovb eax, ecx
add al, 118
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
mul edx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
imul eax
and rcx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], ax
mov bx, -31043
and esi, 55
test dil, 48
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
xor rdx, 16
sbb edx, 37
or bx, 0b1000000000000000 # instrumentation
bsr di, bx
sub sil, -50
add si, 4
sbb rdi, 100
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
add sil, cl
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 66
btc rcx, rbx
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rbx], eax
add bl, -18 # instrumentation
mov rax, rsi
imul eax, edi, 71
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
cmp bl, 13
and dl, bl
add bl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
btr rax, rdx
add bx, 110
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
bts edx, 13
sub di, 71
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
movzx ecx, cl
cmovb eax, edx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
